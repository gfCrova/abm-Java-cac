
DROP TABLE IF EXISTS `producto`;

CREATE TABLE `producto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `modelo` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `precio` float NOT NULL,
  `fecha_creacion` date NOT NULL,
  `imagen` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `codigo` varchar(7) COLLATE utf8mb4_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

SELECT * FROM `producto`;

LOCK TABLES `producto` WRITE;

INSERT INTO `producto` VALUES (1,'Microprocesador', 'Intel I5 10400', 35000, '2022-12-20','varchar','1013'),
(2,'Fuente de Alimentación', 'Gygabyte 600W', 125646, '2022-12-20','','201'),
(3,'Placa de Video', 'Nvidia EVGA RTX 3080 TI', 499000, '2022-12-21','','14'),
(4,'Memoria RAM', 'Kingston DDR4 16GB', 22190,'2022-12-22','','5'),
(5,'Teclado', 'HyperX Mecánico Alloy Origins', 32342, '2022-12-22','','387'),
(6,'Disco Sólido', 'Kingston 1TB', 23123, '2022-12-14','','23'),
(7,'Monitor', 'Samsung F24T35 LED 24"', 62500, '2022-12-22','','1321'),
(8,'Motherboard', 'Asus X570 Amd', 53123, '2022-12-23','','2103');

UNLOCK TABLES;