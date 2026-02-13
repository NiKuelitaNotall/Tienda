-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2026 a las 18:20:36
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direcciones_envio`
--

CREATE TABLE `direcciones_envio` (
  `id` int(11) NOT NULL,
  `nombre_receptor` varchar(255) NOT NULL,
  `calle_numero` varchar(255) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `codigo_postal` varchar(20) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `direcciones_envio`
--

INSERT INTO `direcciones_envio` (`id`, `nombre_receptor`, `calle_numero`, `ciudad`, `codigo_postal`, `fecha_registro`) VALUES
(2, 'ana belen hernandez Maximino ', 'duraznos #12 nicolas romero', 'estado de mexico', '06155', '2026-01-21 17:23:18'),
(3, 'ailen hernandez calderon', 'duraznos #12 nicolas romero', 'estado de mexico', '15068', '2026-01-21 17:38:57'),
(4, 'ailen hernandez calderon', 'duraznos #12 nicolas romero', 'estado de mexico', '15068', '2026-01-21 17:41:54'),
(5, 'ailen hernandez calderon', 'duraznos #12 nicolas romero', 'estado de mexico', '15068', '2026-01-21 17:50:23'),
(6, 'julgsdghser', 'sdfhsdgsdgsdfgsdhsf', 'sdryrywgs', '454815', '2026-01-22 17:41:55'),
(7, 'julgsdghser', 'sdfhsdgsdgsdfgsdhsf', 'sdryrywgs', '454815', '2026-01-22 17:42:10'),
(8, 'julgsdghser', 'sdfhsdgsdgsdfgsdhsf', 'sdryrywgs', '454815', '2026-01-22 17:42:10'),
(9, 'luz garcia', 'flores san juan papalo', 'estado de oaxaca', '89452', '2026-01-22 17:46:04'),
(10, 'luz garcia', 'flores san juan papalo', 'estado de oaxaca', '89452', '2026-01-22 17:46:05'),
(11, 'luz garcia', 'flores san juan papalo', 'estado de oaxaca', '89452', '2026-01-22 17:47:23'),
(12, 'luz garcia', 'flores san juan papalo', 'estado de oaxaca', '89452', '2026-01-22 17:47:24'),
(13, 'luz Garcia ', 'cedros s/n san juan tlihuaca', 'estado de oaxaca ', '78945', '2026-01-22 18:50:16'),
(14, 'luz Garcia ', 'cedros s/n san juan tlihuaca', 'estado de oaxaca ', '78945', '2026-01-22 18:50:16'),
(15, 'amy ', 'buena vista oaxaca', 'estado de oaxaca', '89453', '2026-01-22 18:58:18'),
(16, 'fernanda vargas', 'girasoles encinos #15', 'ciudad de mexico', '56897', '2026-01-22 19:04:35'),
(17, 'fernanda vargas', 'girasoles encinos #15', 'ciudad de mexico', '56897', '2026-01-22 19:06:24'),
(18, 'fernanda vargas', 'girasoles encinos #15', 'Estado de Oaxaca', '87431', '2026-01-22 19:14:01'),
(19, 'Carlos Roberto Hernandez', 'Cantaros2 San Juan Tlihuaca Nicolas Romero', 'Estado de México', '15935', '2026-01-22 19:20:13'),
(20, 'Carlos Roberto Hernandez', 'Cantaros2 San Juan Tlihuaca Nicolas Romero', 'Estado de México', '15935', '2026-01-22 19:27:10'),
(21, 'Carlos Roberto Hernandez', 'Cantaros2 San Juan Tlihuaca Nicolas Romero', 'Estado de México', '15935', '2026-01-22 19:45:07'),
(22, 'luz garcia', 'flores san juan papalo', 'estado de oaxaca', '48975', '2026-01-22 20:09:39'),
(23, 'luz garcia', 'flores san juan papalo', 'estado de oaxaca', '78945', '2026-01-22 22:39:58'),
(24, 'luz garcia', 'flores san juan papalo', 'estado de oaxaca', '78945', '2026-01-22 22:40:08'),
(25, 'luz garcia', 'flores san juan papalo', 'estado de oaxaca', '78945', '2026-01-22 22:40:09'),
(26, 'luz garcia', 'flores san juan papalo', 'estado de oaxaca', '78945', '2026-01-22 22:40:12'),
(27, 'luz garcia', 'flores san juan papalo', 'estado de oaxaca', '78945', '2026-01-22 22:40:12'),
(28, 'ana belen hernandez Maximino ', 'asdga', 'asdga', '78945', '2026-01-22 22:40:50'),
(29, 'ana belen hernandez Maximino ', 'asdga', 'asdga', '78945', '2026-01-22 22:40:51'),
(30, 'Sandoval', 'San Pablo', 'Ciudad de México', '56620', '2026-01-22 22:59:51'),
(31, 'Sandoval', 'San Pablo', 'Ciudad de México', '56620', '2026-01-23 16:22:07'),
(32, 'Sandoval', 'San Pablo', 'Ciudad de México', '56620', '2026-01-23 16:22:16'),
(33, 'Sandoval', 'San Pablo', 'Ciudad de México', '56620', '2026-01-23 16:32:13'),
(34, 'ana belen hernandez Maximino ', 'asdga', 'asdga', 'asdg', '2026-01-28 16:13:29'),
(35, 'ana belen hernandez Maximino ', 'asdga', 'asdga', 'asdg', '2026-01-28 16:13:34'),
(36, 'ana belen hernandez Maximino ', 'asdga', 'asdga', 'asdg', '2026-01-28 16:13:37'),
(37, 'ana belen hernandez Maximino ', 'asdga', 'asdga', 'asdg', '2026-01-28 16:13:37'),
(38, 'ana belen hernandez Maximino ', 'asdga', 'asdga', 'asdg', '2026-01-28 16:13:37'),
(39, 'ana belen hernandez Maximino ', 'asdga', 'asdga', 'asdg', '2026-01-28 16:13:38'),
(40, 'ana belen hernandez Maximino ', 'asdga', 'asdga', 'asdg', '2026-01-28 16:13:55'),
(41, 'ana belen hernandez Maximino ', 'asdga', 'asdga', 'asdg', '2026-01-28 16:13:55'),
(42, 'ana belen hernandez Maximino ', 'asdga', 'asdga', 'asdg', '2026-01-28 16:13:55'),
(43, 'ana belen hernandez Maximino ', 'asdga', 'asdga', 'asdg', '2026-01-28 16:13:57'),
(44, 'ana belen hernandez Maximino ', 'asdga', 'asdga', 'asdg', '2026-01-28 16:13:57'),
(45, 'ana belen hernandez Maximino ', 'asdga', 'asdga', 'asdg', '2026-01-28 16:17:20'),
(46, 'ana belen hernandez Maximino ', 'asdga', 'asdga', 'asdg', '2026-01-28 16:24:35'),
(47, 'ana belen hernandez Maximino ', 'duraznos#12nicolas romero', 'estado de mexico', '56869', '2026-01-28 17:16:18'),
(48, 'ana belen hernandez Maximino ', 'duraznos#12nicolas romero', 'estado de mexico', '56869', '2026-01-28 17:16:24'),
(49, 'Ana Belen Hernandez Maximino', 'Duraznos#12 Nicolas Romero', 'Estado de Oaxaca', '06155', '2026-01-28 18:15:14'),
(50, 'Ana Belen Hernandez Maximino', 'Duraznos#12 Nicolas Romero', 'Estado de Oaxaca', '06155', '2026-01-28 18:15:23'),
(51, 'Ana Belen Hernandez Maximino', 'Duraznos#12 Nicolas Romero', 'Estado de Oaxaca', '06155', '2026-01-28 18:15:24'),
(52, 'Laura Morón', 'Av. palomas 11', 'Tlalmalpo ', '56700', '2026-01-28 21:38:41'),
(53, 'Laura Morón', 'Av. palomas 11', 'Tlalmalpo ', '56700', '2026-01-28 21:38:45'),
(54, 'Laura Morón', 'Av. palomas 11', 'Tlalmalpo ', '56700', '2026-01-28 21:38:46'),
(55, 'Laura Morón', 'Av. palomas 11', 'Tlalmalpo ', '56700', '2026-01-28 21:38:51'),
(56, 'Laura Morón', 'Av. palomas 11', 'Tlalmalpo ', '56700', '2026-01-28 21:38:51'),
(57, 'Laura Morón', 'Av. palomas 11', 'Tlalmalpo ', '56700', '2026-01-28 21:39:21'),
(58, 'Laura Morón', 'Av. palomas 11', 'Tlalmalpo ', '56700', '2026-01-28 21:39:21'),
(59, 'Laura Morón', 'Av. palomas 11', 'Tlalmalpo ', '56700', '2026-01-28 21:39:43'),
(60, 'Laura Morón', 'Av. palomas 11', 'Tlalmalpo ', '56700', '2026-01-28 21:39:43'),
(61, 'Ana Belen Hernandez Maximino', 'Duraznos #12 Nicolas Romero', 'Estado de México', '20089', '2026-01-29 19:07:39'),
(62, 'Ana Belen Hernandez Maximino', 'Duraznos #12 Nicolas Romero', 'Estado de México', '20089', '2026-01-29 19:07:40'),
(63, 'Ana Belen Hernandez Maximino', 'Duraznos #12 Nicolas Romero', 'Estado de México', '20089', '2026-01-29 19:07:49'),
(64, 'Ana Belen Hernandez Maximino', 'Duraznos #12 Nicolas Romero', 'Estado de México', '20089', '2026-01-29 19:07:49'),
(65, 'Ana Belen Hernandez Maximino', 'Duraznos #12 Nicolas Romero', 'Estado de México', '20089', '2026-01-29 19:09:03'),
(66, 'Ana Belen Hernandez Maximino', 'Duraznos #12 Nicolas Romero', 'Estado de México', '20089', '2026-01-29 19:09:03'),
(67, 'Ana Belen Hernandez Maximino', 'Duraznos #12 Nicolas Romero', 'Estado de México', '20089', '2026-01-29 19:09:08'),
(68, 'Ana Belen Hernandez Maximino', 'Duraznos #12 Nicolas Romero', 'Estado de México', '20089', '2026-01-29 19:09:08'),
(69, 'Ana Belen Hernandez Maximino', 'Duraznos #12 Nicolas Romero', 'Estado de México', '20089', '2026-01-29 19:09:34'),
(70, 'Ana Belen Hernandez Maximino', 'Duraznos #12 Nicolas Romero', 'Estado de México', '20089', '2026-01-29 19:09:35'),
(71, 'Ana Belen Hernandez Maximino', 'Duraznos #12 Nicolas Romero', 'Estado de México', '20089', '2026-01-29 19:09:40'),
(72, 'Ana Belen Hernandez Maximino', 'Duraznos #12 Nicolas Romero', 'Estado de México', '20089', '2026-01-29 19:09:41'),
(73, 'Ana Belen Hernandez Maximino', 'Duraznos #12 Nicolas Romero', 'Estado de México', '20089', '2026-01-29 19:10:14'),
(74, 'Ana Belen Hernandez Maximino', 'Duraznos #12 Nicolas Romero', 'Estado de México', '20089', '2026-01-29 19:10:14'),
(75, 'Ana Belen Hernandez Maximino', 'Duraznos #12 Nicolas Romero', 'Estado de México', '20089', '2026-01-29 19:11:20'),
(76, 'Ana Belen Hernandez Maximino', 'Duraznos #12 Nicolas Romero', 'Estado de México', '20089', '2026-01-29 19:11:31'),
(77, 'Ana Belen Hernandez Maximino', 'Duraznos #12 Nicolas Romero', 'Estado de México', '20089', '2026-01-29 19:11:32'),
(78, 'Ana Belen Hernandez Maximino', 'Duraznos #12 Nicolas Romero', 'Estado de México', '20089', '2026-01-30 15:57:30'),
(79, 'Ana Belen Hernandez Maximino', 'Duraznos #12 Nicolas Romero', 'Estado de México', '20089', '2026-01-30 15:57:35'),
(80, 'Ana Belen Hernandez Maximino', 'Duraznos #12 Nicolas Romero', 'Estado de México', '20089', '2026-01-30 15:57:35'),
(81, 'Ana Belen Hernandez Maximino', 'Duraznos #12 Nicolas Romero', 'Estado de México', '20081', '2026-01-30 16:59:07'),
(82, 'Ana Belen Hernandez Maximino', 'Duraznos #12 Nicolas Romero', 'Estado de México', '20081', '2026-01-30 16:59:11'),
(83, 'Ana Belen Hernandez Maximino', 'Duraznos #12 Nicolas Romero', 'Estado de México', '20081', '2026-01-30 16:59:11'),
(84, 'Ana Belen Hernandez Maximino', 'Duraznos #12 Nicolas Romero', 'Estado de México', '78945', '2026-01-30 17:02:32'),
(85, 'Ana Belen Hernandez Maximino', 'Duraznos #12 Nicolas Romero', 'Estado de México', '45687', '2026-01-30 17:05:59'),
(86, 'Sandoval', 'San Pablo', 'Estado de México', '45678', '2026-01-30 17:12:16'),
(87, 'damian juarez ', 'san pedro sochiapam cuicatlan ', 'Oaxaca', '09084', '2026-01-30 17:25:58'),
(88, 'Gorge Juarez', 'san pedro sochiapam cuicatlan ', 'Oaxaca', '45892', '2026-01-30 17:31:00'),
(89, '', '', '', '', '2026-02-03 19:42:39'),
(90, '', '', '', '', '2026-02-03 19:44:52'),
(91, 'ana belen hernandez Maximino ', 'asdga', 'Estado de México', '+459987', '2026-02-03 19:49:44'),
(92, 'ana belen hernandez Maximino ', 'asdga', 'Estado de México', '56789', '2026-02-03 19:50:00'),
(93, 'ana belen hernandez Maximino ', 'asdga', 'Estado de México', '56789', '2026-02-03 19:50:00'),
(94, 'ailen hernandez calderon', 'asdga', 'Estado de México', '06153', '2026-02-03 19:51:51'),
(95, 'ailen hernandez calderon', 'asdga', 'Estado de México', '06153', '2026-02-03 19:51:52'),
(96, 'Ana Belen Hernandez Maximino', 'flores san juan papalo', 'estado de oaxaca', '73519', '2026-02-03 19:52:49'),
(97, 'Ana Belen Hernandez Maximino', 'flores san juan papalo', 'estado de oaxaca', '73519', '2026-02-03 19:52:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `stock` int(11) DEFAULT 10
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `imagen`, `stock`) VALUES
(1, 'Collar Artesanal', 150.00, 'collar.jpg', 10),
(2, 'Pulsera de Hilo', 85.00, 'pulsera.jpg', 5),
(3, 'Aretes Küelita', 120.00, 'aretes.jpg', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tienda_envios`
--

CREATE TABLE `tienda_envios` (
  `nombre_receptor` varchar(50) NOT NULL,
  `calle_numero` varchar(20) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `odigo_postal` int(5) NOT NULL,
  `referencias` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `direcciones_envio`
--
ALTER TABLE `direcciones_envio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `direcciones_envio`
--
ALTER TABLE `direcciones_envio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
