
DROP TABLE IF EXISTS `producto`;

CREATE TABLE `producto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `precio` float NOT NULL,
  `fecha_creacion` date NOT NULL,
  `imagen` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `codigo` varchar(7) COLLATE utf8mb4_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

SELECT * FROM `producto`;

LOCK TABLES `producto` WRITE;

INSERT INTO `producto` VALUES (1,'Monopatín Eléctrico xiaomi',100000,'2022-02-02','varchar','101'),
(2,'Bicicleta Ducati R28',125646,'2022-12-12','','201'),
(3,'Dragon Ball vol2 Ivrea',1000,'2022-12-14','','404'),
(4,'Dragon Ball vol1 Ivrea',1000,'2022-12-14','','405'),
(5,'asdf',3234230,'2022-12-14','','sadfa'),
(6,'Monopatín Eléctrico xiaomi 2',123123,'2022-12-14','','123');

UNLOCK TABLES;