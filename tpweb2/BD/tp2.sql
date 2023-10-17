-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2023 a las 04:08:52
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tp1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id_marca` int(11) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `descripcion` text NOT NULL,
  `sede` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id_marca`, `marca`, `descripcion`, `sede`) VALUES
(15, 'asus', 'ASUSTeK Computer, Inc. conocida simplemente como ASUS,  es una corporación multinacional de hardware, electrónica y robótica. Sus productos incluyen la producción de tarjetas madre (placas base), tarjetas gráficas, dispositivos ópticos, productos multimedia, periféricos, computadoras portátiles, netbooks, de sobremesa, servidores, estaciones de trabajo, tablets, teléfonos móviles, equipos de red, monitores, proyectores, y soluciones de refrigeración para computadoras\r\n', 'Taipéi, Taiwán'),
(16, 'nvidia', 'Nvidia Corporation es una empresa de software y fabless que diseña unidades de procesamiento de gráficos, interfaz de programación de aplicaciones para ciencia de datos y computación de alto rendimiento, así como unidades de sistema en chip para la computación móvil y el mercado automotriz\r\n', 'Santa Clara, California, Estados Unidos'),
(17, 'msi', 'Micro-Star International, Co. mayormente conocida por sus siglas MSI, es una empresa multinacional taiwanesa de tecnología de la información. Diseña, desarrolla y proporciona equipo informático, productos y servicios relacionados, incluyendo computadoras portátiles, placas base, tarjetas gráficas, PCs todo-en-uno, servidores, computadoras industriales, periféricos de PC y productos de infoentertainment para automóviles\r\n', 'Zhonghe District (Taiwán)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `product_id` int(11) NOT NULL,
  `nombre_producto` varchar(200) NOT NULL,
  `tipo_de_product` varchar(200) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `precio` int(200) NOT NULL,
  `descripcion_product` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`product_id`, `nombre_producto`, `tipo_de_product`, `id_marca`, `precio`, `descripcion_product`) VALUES
(28, 'GeForce RTX 3080 Gaming X Trio', 'Placas De Video', 17, 80000, 'Arquitectura: NVIDIA Ampere. Núcleos CUDA: 8704. Memoria VRAM: 10 GB GDDR6X. Características destacadas: Diseño de triple ventilador para una refrigeración eficiente, iluminación RGB personalizable y un alto rendimiento en juegos y tareas de alto rendimiento.'),
(29, 'GeForce GTX 1660 Super Gaming X', 'Placas De Video', 17, 79999, 'Arquitectura: NVIDIA Turing .\r\nNúcleos CUDA: 1408 .\r\nMemoria VRAM: 6 GB GDDR5 .\r\nCaracterísticas destacadas: Ventiladores Torx 3.0 para un enfriamiento silencioso, iluminación RGB Mystic Light y un buen rendimiento para juegos a 1080p.\r\n'),
(30, 'Radeon RX 5700 XT Gaming X', 'Placas De Video', 17, 85000, 'Arquitectura: AMD RDNA .\r\nNúcleos Stream: 2560 .\r\nMemoria VRAM: 8 GB GDDR6 .\r\nCaracterísticas destacadas: Refrigeración personalizada Twin Frozr 7, iluminación RGB Mystic Light y un fuerte rendimiento en juegos a 1440p.\r\n'),
(31, 'GeForce RTX 3060 Ti Ventus 2X OC', 'Placas De Video', 17, 82000, 'Arquitectura: NVIDIA Ampere .\r\nNúcleos CUDA: 4864 .\r\nMemoria VRAM: 8 GB GDDR6 .\r\nCaracterísticas destacadas: Diseño de doble ventilador para una refrigeración eficiente, overclock de fábrica y buen rendimiento en juegos de 1080p y 1440p.\r\n'),
(32, 'GeForce GT 710 2GD3H LP', 'Placas De Video', 17, 65000, 'Arquitectura: NVIDIA Kepler .\r\nNúcleos CUDA: 192 .\r\nMemoria VRAM: 2 GB DDR3 .\r\nCaracterísticas destacadas: Diseño de bajo perfil, silencioso y energéticamente eficiente, adecuado para tareas básicas y aplicaciones de oficina.\r\n'),
(33, 'ROG Strix GeForce RTX 3090', 'Placas De Video', 15, 80000, 'Arquitectura: NVIDIA Ampere . \r\nNúcleos CUDA: 10,496 .\r\nMemoria VRAM: 24 GB GDDR6X .\r\nCaracterísticas destacadas: Diseño de triple ventilador con iluminación RGB ASUS Aura Sync, refrigeración avanzada, y un rendimiento de primera categoría para juegos y aplicaciones de alta demanda.\r\n'),
(34, 'TUF Gaming GeForce GTX 1660 Super', 'Placas De Video', 15, 76000, 'Arquitectura: NVIDIA Turing .\r\nNúcleos CUDA: 1408 .\r\nMemoria VRAM: 6 GB GDDR5 .\r\nCaracterísticas destacadas: Diseño de ventilador doble TUF, durabilidad mejorada, y un buen rendimiento para juegos de 1080p.\r\n'),
(35, 'Dual Radeon RX 5700 XT EVO', 'Placas De Video', 15, 94000, 'Arquitectura: AMD RDNA .\r\nNúcleos Stream: 2560 .\r\nMemoria VRAM: 8 GB GDDR6 .\r\nCaracterísticas destacadas: Diseño de ventilador doble para una refrigeración eficiente, durabilidad ASUS Auto-Extreme, y un sólido rendimiento en juegos a 1440p.\r\n'),
(36, 'ROG Strix GeForce RTX 3080', 'Placas De Video', 15, 85000, 'Arquitectura: NVIDIA Ampere .\r\nNúcleos CUDA: 8704 .\r\nMemoria VRAM: 10 GB GDDR6X .\r\nCaracterísticas destacadas: Diseño de triple ventilador con iluminación RGB ASUS Aura Sync, refrigeración avanzada, y un alto rendimiento en juegos y aplicaciones de alta demanda.\r\n'),
(37, 'Phoenix GeForce GT 1030', 'Placas De Video', 15, 89000, 'Arquitectura: NVIDIA Pascal .\r\nNúcleos CUDA: 384 .\r\nMemoria VRAM: 2 GB GDDR5 .\r\nCaracterísticas destacadas: Diseño compacto de perfil bajo, bajo consumo de energía y adecuada para tareas básicas y aplicaciones de oficina.\r\n'),
(38, 'QuantumForce X1', 'Placas De Video', 16, 80500, 'Chipset: Nvidia QuantumBoost X1 .\r\nZócalo de CPU: N-QC Socket .\r\nCaracterísticas destacadas: Arquitectura Nvidia Ampere, 12 GB de memoria GDDR6X, 10.000 núcleos CUDA, trazado de rayos de próxima generación, soporte para resolución 8K.\r\n'),
(39, 'TitanFusion Z2', 'Placas De Video', 16, 79500, 'Chipset: Nvidia TitanBoost Z2 .\r\nZócalo de CPU: N-TF Socket .\r\nCaracterísticas destacadas: 16 GB de memoria GDDR6, 12.000 núcleos CUDA, compatibilidad con tecnología DLSS 3.0, refrigeración líquida híbrida, y soporte para ray tracing en tiempo real.\r\n'),
(40, 'QuantumStrike X3', 'Placas De Video', 16, 84000, 'Chipset: Nvidia QuantumBoost X3 .\r\nZócalo de CPU: N-QS Socket .\r\nCaracterísticas destacadas: Arquitectura Nvidia Hopper, 24 GB de memoria HBM3, 15.000 núcleos CUDA, aceleración de inteligencia artificial Nvidia AI-Boost, y cuatro puertos HDMI 2.2 para múltiples pantallas 8K.\r\n'),
(41, 'MasterFusion R4', 'Placas De Video', 16, 86000, 'Chipset: Nvidia MasterCore R4 .\r\nZócalo de CPU: N-MF Socket .\r\nCaracterísticas destacadas: 32 GB de memoria GDDR7, 18.000 núcleos CUDA, refrigeración pasiva sin ventilador para funcionamiento silencioso, y soporte para juegos en 16K.\r\n'),
(42, 'QuantumXtreme Thunder-9K', 'Placas De Video', 16, 83000, 'Chipset: Nvidia QuantumX Thunder 9K .\r\nZócalo de CPU: N-QX Socket .\r\nCaracterísticas destacadas: Arquitectura Nvidia Nova, 40 GB de memoria HBM4, 20.000 núcleos CUDA, refrigeración líquida de fase única para overclocking extremo, y compatibilidad con trazado de rayos en tiempo real.\r\n'),
(43, 'ROG Maximus XIII Hero', 'Placas Madre', 15, 60000, 'Chipset: Intel Z590 .\r\nZócalo de CPU: LGA 1200 .\r\nCaracterísticas destacadas: Placa base de alta gama para procesadores Intel de 10ª y 11ª generación, iluminación RGB ASUS Aura Sync, soporte para overclocking, múltiples ranuras PCIe, y una excelente calidad de construcción.\r\n'),
(44, 'TUF Gaming B550-Plus', 'Placas Madre', 15, 59000, 'Chipset: AMD B550 .\r\nZócalo de CPU: AM4 .\r\nCaracterísticas destacadas: Placa base gaming con soporte para procesadores AMD Ryzen de última generación, resistencia militar, iluminación RGB, y ranuras PCIe para gráficas y almacenamiento rápido.\r\n'),
(45, 'Prime H410M-E', 'Placas Madre', 15, 65000, 'Chipset: Intel H410 .\r\nZócalo de CPU: LGA 1200 .\r\nCaracterísticas destacadas: Placa base económica y compacta para procesadores Intel de 10ª y 11ª generación, con todas las características esenciales para un sistema de uso general.\r\n'),
(46, 'ProArt Z490-Creator 10G', 'Placas Madre', 15, 62000, 'Chipset: Intel Z490 .\r\nZócalo de CPU: LGA 1200 .\r\nCaracterísticas destacadas: Diseñada para creadores de contenido, con soporte para CPU Intel y un puerto 10G Ethernet, así como características de calidad y confiabilidad.\r\n'),
(47, 'ROG Crosshair VIII Hero', 'Placas Madre', 15, 63000, 'Chipset: AMD X570 .\r\nZócalo de CPU: AM4 .\r\nCaracterísticas destacadas: Placa base de alta gama para procesadores AMD Ryzen, iluminación RGB ASUS Aura Sync, soporte para overclocking, múltiples ranuras PCIe y características de audio avanzadas.\r\n'),
(48, 'MAG B550 TOMAHAWK', 'Placas Madre', 17, 79500, 'Chipset: AMD B550 .\r\nZócalo de CPU: AM4 .\r\nCaracterísticas destacadas: Soporte para procesadores Ryzen de AMD, múltiples ranuras PCIe, USB-C, LAN 2.5G, y un diseño de alta calidad con iluminación RGB.\r\n'),
(49, 'MPG Z490 Gaming Edge WiFi', 'Placas Madre', 17, 62500, 'Chipset: Intel Z490 .\r\nZócalo de CPU: LGA 1200 .\r\nCaracterísticas destacadas: Compatibilidad con procesadores Intel de 10ª y 11ª generación, Wi-Fi 6, LAN 2.5G, ranuras PCIe Gen 4, y iluminación RGB Mystic Light.\r\n'),
(50, 'MEG X570 ACE', 'Placas Madre', 17, 6000, 'Chipset: AMD X570 .\r\nZócalo de CPU: AM4 .\r\nCaracterísticas destacadas: Soporte para procesadores Ryzen de AMD, ranuras PCIe Gen 4, Wi-Fi 6, LAN 2.5G, audio de alta calidad, y un diseño premium.\r\n'),
(51, 'MAG Z490 TOMAHAWK', 'Placas Madre', 17, 65000, 'Chipset: Intel Z490 .\r\nZócalo de CPU: LGA 1200 .\r\nCaracterísticas destacadas: Compatibilidad con procesadores Intel de 10ª y 11ª generación, ranuras PCIe Gen 4, LAN 2.5G, y un diseño robusto.\r\n'),
(52, 'B450 TOMAHAWK MAX', 'Placas Madre', 17, 63000, 'Chipset: AMD B450 .\r\nZócalo de CPU: AM4 .\r\nCaracterísticas destacadas: Placa base económica y confiable para procesadores Ryzen de AMD, con ranuras PCIe, USB 3.2 Gen2, y soporte para memoria DDR4\r\n'),
(53, 'QuantumCore Pro-X1', 'Placas Madre', 16, 63500, 'Chipset: Nvidia QuantumBoost X1 .\r\nZócalo de CPU: N-QC Socket .\r\nCaracterísticas destacadas: Soporte para procesadores de 12ª generación, múltiples ranuras PCIe 5.0, memoria DDR6X de alta velocidad, puertos USB-C ThunderBolt 4, iluminación RGB Nvidia.\r\n'),
(54, 'TitanForce Master-Z2', 'Placas Madre', 16, 31600, 'Chipset: Nvidia TitanBoost Z2 .\r\nZócalo de CPU: N-TF Socket AM6 .\r\nCaracterísticas destacadas: Compatibilidad con procesadores AMD Ryzen de última generación, ranuras PCIe 4.0, LAN 10G, soporte para overclocking avanzado, y audio de alta calidad.\r\n'),
(55, 'QuantumStrike Ultra-X3', 'Placas Madre', 16, 32750, 'Chipset: Nvidia QuantumBoost X3 .\r\nZócalo de CPU: N-QS Socket 7 .\r\nCaracterísticas destacadas: Diseñada para procesadores Intel de 13ª generación, ranuras PCIe 6.0, WiFi 6E, iluminación RGB Nvidia SpectrumFlow, y refrigeración líquida avanzada.\r\n'),
(56, 'MasterFusion Pro-R4', 'Placas Madre', 16, 75500, 'Chipset: Nvidia MasterCore R4 .\r\nZócalo de CPU: N-MF Socket 8 .\r\nCaracterísticas destacadas: Soporte para CPU de alta gama AMD Threadripper, múltiples ranuras PCIe 5.0, almacenamiento NVMe RAID, y tarjeta de sonido dedicada.\r\n'),
(57, 'QuantumXtreme Thunder-9K', 'Placas Madre', 16, 69000, 'Chipset: Nvidia QuantumX Thunder 9K .\r\nZócalo de CPU: N-QX Socket TR8 .\r\nCaracterísticas destacadas: Diseñada para procesadores AMD Ryzen Threadripper de última generación, ranuras PCIe 6.0, LAN 10G, iluminación RGB Nvidia AuraSync, y refrigeración líquida avanzada\r\n'),
(58, 'DragonCore X1', 'Procesador', 17, 120000, 'Chipset: MSI DragonTech+ .\r\nZócalo de CPU: M-CPU Socket .\r\nCaracterísticas destacadas: Arquitectura de 10 núcleos, 20 hilos, frecuencia base de 4.5 GHz, overclock automático DragonBoost, tecnología de enfriamiento avanzada.\r\n'),
(59, 'QuantumStream Z2', 'Procesador', 17, 122000, 'Chipset: QuantumBoost Z2 .\r\nZócalo de CPU: Q-Socket 5 .\r\nCaracterísticas destacadas: 12 núcleos, 24 hilos, velocidad de reloj base de 5.0 GHz, tecnología de energía cuántica, soporte para DDR5.\r\n'),
(60, 'CyberFusion X3', 'Procesador', 17, 119, 'Chipset: CyberCore X3 .\r\nZócalo de CPU: C-Fusion Socket AM6 .\r\nCaracterísticas destacadas: 16 núcleos, 32 hilos, velocidad de reloj base de 6.0 GHz, tecnología de fusión cibernética, gráficos integrados de próxima generación.\r\n'),
(61, 'AeroWave 9K', 'Procesador', 17, 120500, 'Chipset: AeroFusion 9K .  \r\nZócalo de CPU: A-Wave Socket 7 .\r\nCaracterísticas destacadas: 24 núcleos, 48 hilos, velocidad de reloj base de 7.2 GHz, tecnología de enfriamiento por aire avanzada, soporte para PCIe 5.0.\r\n'),
(62, 'QuantumXtreme R4', 'Procesador', 17, 120000, 'Chipset: QuantumX R4 .\r\nZócalo de CPU: QX-Socket 8 .\r\nCaracterísticas destacadas: 32 núcleos, 64 hilos, velocidad de reloj base de 8.0 GHz, tecnología cuántica extrema, memoria caché L4 masiva\r\n'),
(63, 'PhoenixCore X1', 'Procesador', 15, 123000, 'Chipset: ASUS X1 Boost+ .\r\nZócalo de CPU: A-X1 Socket .\r\nCaracterísticas destacadas: Arquitectura de 12 núcleos, 24 hilos, velocidad de reloj base de 5.0 GHz, refrigeración líquida ASUS IceFlow, soporte para DDR5.\r\n'),
(64, 'PrimeForce Z2', 'Procesador', 15, 125000, 'Chipset: PrimeBoost Z2 .\r\nZócalo de CPU: P-Z2 Socket AM6 .\r\nCaracterísticas destacadas: 16 núcleos, 32 hilos, velocidad de reloj base de 6.5 GHz, tecnología ASUS TurboBoost, gráficos integrados avanzados.\r\n'),
(65, 'ROG ThunderStrike X3', 'Procesador', 15, 121700, 'Chipset: ROG ThunderTech X3 .\r\nZócalo de CPU: R-TS Socket 7 .\r\nCaracterísticas destacadas: 20 núcleos, 40 hilos, velocidad de reloj base de 7.0 GHz, refrigeración líquida extrema, iluminación RGB ASUS Aura Sync.\r\n'),
(66, 'QuantumFusion R4', 'Procesador', 15, 124000, 'Chipset: QuantumCore R4 .\r\nZócalo de CPU: QF-Socket 8 .\r\nCaracterísticas destacadas: 24 núcleos, 48 hilos, velocidad de reloj base de 7.5 GHz, tecnología cuántica ASUS QuantumFlow, soporte para PCIe 6.0.\r\n'),
(67, 'ZenithXtreme 9K', 'Procesador', 15, 122000, 'Chipset: ZenithX 9K .\r\nZócalo de CPU: Z-Xtreme Socket TR8 .\r\nCaracterísticas destacadas: 32 núcleos, 64 hilos, velocidad de reloj base de 8.0 GHz, refrigeración líquida ASUS ZenCool, memoria caché L4 amplia\r\n'),
(68, 'QuantumCore X1', 'Procesador', 16, 120700, 'Chipset: Nvidia QuantumBoost X1 .\r\nZócalo de CPU: N-QC Socket .\r\nCaracterísticas destacadas: Arquitectura de 12 núcleos, 24 hilos, velocidad de reloj base de 5.0 GHz, tecnología de trazado de rayos Nvidia RTX, soporte para DDR6X.\r\n'),
(69, 'TitanForce Z2', 'Procesador', 16, 124500, 'Chipset: Nvidia TitanBoost Z2 . \r\nZócalo de CPU: N-TF Socket AM6 .\r\nCaracterísticas destacadas: 16 núcleos, 32 hilos, velocidad de reloj base de 6.5 GHz, Nvidia AI-Boost para aprendizaje automático, gráficos integrados avanzados.\r\n'),
(70, 'QuantumStrike X3', 'Procesador', 16, 117200, 'Chipset: Nvidia QuantumBoost X3 .\r\nZócalo de CPU: N-QS Socket 7 .\r\nCaracterísticas destacadas: 20 núcleos, 40 hilos, velocidad de reloj base de 7.0 GHz, tecnología de refrigeración líquida Nvidia AquaFlow, iluminación RGB Nvidia.\r\n'),
(71, 'MasterFusion R4', 'Procesador', 16, 124000, 'Chipset: Nvidia MasterCore R4 .\r\nZócalo de CPU: N-MF Socket 8 .\r\nCaracterísticas destacadas: 24 núcleos, 48 hilos, velocidad de reloj base de 7.5 GHz, Nvidia QuantumAI para inteligencia artificial, soporte para PCIe 6.0.\r\n'),
(72, 'QuantumXtreme 9K', 'Procesador', 16, 119800, 'Chipset: Nvidia QuantumX 9K .\r\nZócalo de CPU: N-QX Socket TR8 .\r\nCaracterísticas destacadas: 32 núcleos, 64 hilos, velocidad de reloj base de 8.0 GHz, Nvidia IceCool para refrigeración extrema, memoria caché L4 de gran capacidad\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `contrasena` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `contrasena`) VALUES
(10, '123', '$2y$10$NJy.C1nCMvlJwW4nIdDCuODFEIv4jSkw6f4LZ2DABTNdJOkirN04e'),
(11, 'webadmin', '$2y$10$dSbc5ZIbYrXisB6lTolsGu32mfI/ArzS2NA63JjmzbNEEvIH7f6cS'),
(12, '567', '$2y$10$rOTsxI.oMcjLf14VwRjA..htN1bXY8ouJGg7osgLaB7hSdBmsBUDe');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `id_marca` (`id_marca`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marcas` (`id_marca`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
