-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: dbprestamo
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `caja`
--

DROP TABLE IF EXISTS `caja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caja` (
  `caja_id` int(11) NOT NULL AUTO_INCREMENT,
  `caja_descripcion` varchar(100) DEFAULT NULL,
  `caja_monto_inicial` float DEFAULT NULL,
  `caja_monto_ingreso` float DEFAULT NULL,
  `caja_prestamo` float DEFAULT NULL,
  `caja_f_apertura` date DEFAULT NULL,
  `caja_f_cierre` date DEFAULT NULL,
  `caja__monto_egreso` float DEFAULT NULL,
  `caja_monto_total` float DEFAULT NULL,
  `caja_estado` varchar(50) DEFAULT NULL,
  `caja_hora_apertura` time DEFAULT NULL,
  `caja_hora_cierre` time DEFAULT NULL,
  `caja_count_prestamo` varchar(100) DEFAULT NULL,
  `caja_count_ingreso` varchar(100) DEFAULT NULL,
  `caja_count_egreso` varchar(100) DEFAULT NULL,
  `caja_correo` varchar(100) DEFAULT NULL,
  `caja_interes` float DEFAULT NULL,
  PRIMARY KEY (`caja_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caja`
--

LOCK TABLES `caja` WRITE;
/*!40000 ALTER TABLE `caja` DISABLE KEYS */;
INSERT INTO `caja` VALUES (4,'Apertura de Caja',78000,2000,19000,'2025-06-25','2025-06-26',0,82750,'CERRADO','07:31:22','17:04:26','2','1','0',NULL,2750),(5,'Apertura de Caja',8000,NULL,NULL,'2025-07-01',NULL,NULL,NULL,'VIGENTE','18:45:21',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `caja` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TG_CERRAR_MOVI_INGRESO` BEFORE UPDATE ON `caja` FOR EACH ROW BEGIN



UPDATE movimientos SET

movi_caja= 'CERRADO'

where movi_caja='VIGENTE';

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `cliente_id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente_nombres` varchar(255) DEFAULT NULL,
  `cliente_dni` varchar(50) DEFAULT NULL,
  `cliente_cel` varchar(20) DEFAULT NULL,
  `cliente_estado_prestamo` varchar(50) DEFAULT NULL,
  `cliente_direccion` varchar(255) DEFAULT NULL,
  `cliente_obs` varchar(255) DEFAULT NULL,
  `cliente_correo` varchar(255) DEFAULT NULL,
  `cliente_estatus` varchar(255) DEFAULT NULL,
  `cliente_cant_prestamo` char(10) DEFAULT NULL,
  `cliente_refe` varchar(255) DEFAULT NULL,
  `cliente_cel_refe` varchar(20) DEFAULT NULL,
  `cliente_empresa_laboral` varchar(255) DEFAULT NULL,
  `cliente_cargo_laboral` varchar(255) DEFAULT NULL,
  `cliente_tel_laboral` varchar(50) DEFAULT NULL,
  `cliente_dir_laboral` varchar(255) DEFAULT NULL,
  `cliente_refe_per_dir` varchar(255) DEFAULT NULL,
  `cliente_refe_fami_nombre` varchar(255) DEFAULT NULL,
  `cliente_refe_fami_cel` varchar(50) DEFAULT NULL,
  `cliente_refe_fami_dir` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cliente_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Gunner','2810512850003D','86595453','DISPONIBLE','Leon-Nicaragua',NULL,'ferchojoshua@gmail.com','1',NULL,'yohoma ','76543098',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Eliut','281051283000f','86595453','con prestamo','del chinchunte hacia abajo',NULL,'prueba@yahoo,com','1',NULL,'pablo cortez','98765432',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Ricardo','23445670909','45678990','con prestamo','Leon-Nicaragua',NULL,'joshua@gmail.com','1',NULL,'Edwin','989879878',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Eunice Carvajal','2890923550003r','67549034','con prestamo','Leon-Nicaragua  hacia alla',NULL,'ferchojoshua@gmail.com','1',NULL,'fernando Azulejo','89675432',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `confi_id` int(11) NOT NULL AUTO_INCREMENT,
  `confi_razon` varchar(255) DEFAULT NULL,
  `confi_ruc` varchar(40) DEFAULT NULL,
  `confi_direccion` varchar(255) DEFAULT NULL,
  `confi_correlativo` varchar(8) DEFAULT NULL,
  `config_correo` varchar(50) DEFAULT NULL,
  `config_celular` varchar(50) DEFAULT NULL,
  `config_moneda` varchar(3) DEFAULT NULL,
  `config_logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`confi_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'PRESTAMOS NICA','1020304050','Leon-Nicaragua','00000004','ferchojoshua@gmail.com','922804671','C$','logo_empresa_1751607343.png');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forma_pago`
--

DROP TABLE IF EXISTS `forma_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forma_pago` (
  `fpago_id` int(11) NOT NULL AUTO_INCREMENT,
  `fpago_descripcion` varchar(255) DEFAULT NULL,
  `valor` char(10) DEFAULT NULL,
  `aplica_dias` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`fpago_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forma_pago`
--

LOCK TABLES `forma_pago` WRITE;
/*!40000 ALTER TABLE `forma_pago` DISABLE KEYS */;
INSERT INTO `forma_pago` VALUES (1,'Diario','1','1'),(2,'Semanal','7','1'),(3,'Quincenal','15','1'),(4,'Mensual','1','0'),(5,'Bimestral','2','0'),(6,'Semestrual','6','0'),(7,'Anual','1','0');
/*!40000 ALTER TABLE `forma_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulos`
--

DROP TABLE IF EXISTS `modulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modulos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modulo` varchar(255) DEFAULT NULL,
  `padre_id` int(11) DEFAULT NULL,
  `vista` varchar(50) DEFAULT NULL,
  `icon_menu` varchar(50) DEFAULT NULL,
  `orden` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulos`
--

LOCK TABLES `modulos` WRITE;
/*!40000 ALTER TABLE `modulos` DISABLE KEYS */;
INSERT INTO `modulos` VALUES (1,'DashBoard',0,'dashboard.php','fas fa-tachometer-alt',0),(10,'Reportes',0,'','fas fa-chart-line',15),(11,'Empresa',0,'configuracion.php','fas fa-landmark',9),(12,'Usuarios',14,'usuario.php','far fa-user',13),(13,'Modulos y Perfiles',14,'modulos_perfiles.php','fas fa-tablet-alt',14),(14,'Mantenimiento',0,NULL,'fas fa-cogs',12),(24,'Clientes',0,'cliente.php','fas fa-id-card',4),(25,'Moneda',0,'moneda.php','fas fa-dollar-sign',10),(29,'Prestamos',0,'','fas fa-landmark',5),(34,'Solicitud/Prestamo',29,'prestamo.php','far fa-circle',6),(35,'Listado Prestamos',29,'administrar_prestamos.php','far fa-circle',7),(36,'Aprobar S/P',29,'aprobacion.php','far fa-circle',8),(37,'Por Cliente',10,'reporte_cliente.php','far fa-circle',16),(38,'Cuotas Pagadas',10,'reporte_cuotas_pagadas.php','far fa-circle',17),(39,'Caja',0,'','fas fa-cash-register',1),(40,'Aperturar Caja',39,'caja.php','far fa-circle',2),(41,'Ingresos / Egre',39,'ingresos.php','far fa-circle',3),(43,'Pivot',10,'reportes.php','far fa-circle',18),(47,'Backup',0,'index_backup.php','fas fa-database',11),(48,'Clientes Morosos',10,'reporte_mora.php','fas fa-exclamation-triangle',NULL),(49,'Recuperaci├│n',10,'reporte_recuperacion.php','fas fa-hand-holding-usd',NULL);
/*!40000 ALTER TABLE `modulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moneda`
--

DROP TABLE IF EXISTS `moneda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moneda` (
  `moneda_id` int(11) NOT NULL AUTO_INCREMENT,
  `moneda_nombre` varchar(10) DEFAULT NULL,
  `moneda_abrevia` varchar(10) DEFAULT NULL,
  `moneda_simbolo` varchar(10) DEFAULT NULL,
  `moneda_Descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`moneda_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moneda`
--

LOCK TABLES `moneda` WRITE;
/*!40000 ALTER TABLE `moneda` DISABLE KEYS */;
INSERT INTO `moneda` VALUES (1,'Cordoba','NIO','C$','Cordoba Nicaraguense'),(2,'Dolar amer','USD','$','Dolar');
/*!40000 ALTER TABLE `moneda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimientos`
--

DROP TABLE IF EXISTS `movimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimientos` (
  `movimientos_id` int(11) NOT NULL AUTO_INCREMENT,
  `movi_tipo` varchar(100) DEFAULT NULL,
  `movi_descripcion` varchar(255) DEFAULT NULL,
  `movi_monto` float DEFAULT NULL,
  `movi_fecha` datetime DEFAULT NULL,
  `movi_caja` varchar(100) DEFAULT NULL,
  `caja_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`movimientos_id`) USING BTREE,
  KEY `caja_id` (`caja_id`) USING BTREE,
  CONSTRAINT `movimientos_ibfk_1` FOREIGN KEY (`caja_id`) REFERENCES `caja` (`caja_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientos`
--

LOCK TABLES `movimientos` WRITE;
/*!40000 ALTER TABLE `movimientos` DISABLE KEYS */;
INSERT INTO `movimientos` VALUES (2,'INGRESO','CANCELACIONES',2000,'2025-06-25 07:54:22','CERRADO',4),(3,'INGRESO','recuperacion',8000000,'2025-07-01 18:49:48','VIGENTE',5);
/*!40000 ALTER TABLE `movimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_modulo`
--

DROP TABLE IF EXISTS `perfil_modulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil_modulo` (
  `idperfil_modulo` int(11) NOT NULL AUTO_INCREMENT,
  `id_perfil` int(11) NOT NULL,
  `id_modulo` int(11) NOT NULL,
  `vista_inicio` tinyint(4) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idperfil_modulo`) USING BTREE,
  KEY `id_perfil` (`id_perfil`) USING BTREE,
  KEY `id_modulo` (`id_modulo`) USING BTREE,
  CONSTRAINT `perfil_modulo_ibfk_1` FOREIGN KEY (`id_perfil`) REFERENCES `perfiles` (`id_perfil`),
  CONSTRAINT `perfil_modulo_ibfk_2` FOREIGN KEY (`id_modulo`) REFERENCES `modulos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=461 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_modulo`
--

LOCK TABLES `perfil_modulo` WRITE;
/*!40000 ALTER TABLE `perfil_modulo` DISABLE KEYS */;
INSERT INTO `perfil_modulo` VALUES (174,1,13,0,1),(412,1,1,1,1),(413,1,40,0,1),(414,1,39,0,1),(415,1,41,0,1),(416,1,24,0,1),(417,1,34,0,1),(418,1,29,0,1),(419,1,35,0,1),(420,1,36,0,1),(421,1,11,0,1),(422,1,25,0,1),(423,1,12,0,1),(424,1,14,0,1),(425,1,37,0,1),(426,1,10,0,1),(427,1,38,0,1),(428,1,43,0,1),(429,1,47,0,1),(442,3,39,0,1),(443,3,40,1,1),(444,3,41,0,1),(445,3,24,0,1),(453,2,24,1,1),(454,2,34,0,1),(455,2,29,0,1),(456,2,35,0,1),(457,2,37,0,1),(458,2,10,0,1),(459,1,48,0,1),(460,1,49,0,1);
/*!40000 ALTER TABLE `perfil_modulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfiles`
--

DROP TABLE IF EXISTS `perfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfiles` (
  `id_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_perfil`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfiles`
--

LOCK TABLES `perfiles` WRITE;
/*!40000 ALTER TABLE `perfiles` DISABLE KEYS */;
INSERT INTO `perfiles` VALUES (1,'Administrador',1),(2,'Colector',1),(3,'Caja',1);
/*!40000 ALTER TABLE `perfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamo_cabecera`
--

DROP TABLE IF EXISTS `prestamo_cabecera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prestamo_cabecera` (
  `pres_id` int(11) NOT NULL AUTO_INCREMENT,
  `nro_prestamo` varchar(8) NOT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `pres_monto` decimal(18,2) DEFAULT NULL,
  `pres_cuotas` char(10) DEFAULT NULL,
  `pres_interes` decimal(18,2) DEFAULT NULL,
  `fpago_id` int(11) DEFAULT NULL,
  `moneda_id` int(11) DEFAULT NULL,
  `pres_f_emision` date DEFAULT NULL,
  `pres_monto_cuota` decimal(18,2) DEFAULT NULL,
  `pres_monto_interes` decimal(18,2) DEFAULT NULL,
  `pres_monto_total` decimal(18,2) DEFAULT NULL,
  `pres_estado` varchar(255) DEFAULT NULL,
  `pres_estatus` char(10) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `pres_aprobacion` varchar(20) DEFAULT NULL,
  `pres_cuotas_pagadas` varchar(10) DEFAULT NULL,
  `pres_monto_restante` decimal(18,2) DEFAULT NULL,
  `pres_cuotas_restante` varchar(10) DEFAULT NULL,
  `pres_fecha_registro` date DEFAULT NULL,
  `pres_estado_caja` varchar(50) DEFAULT NULL,
  `caja_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pres_id`,`nro_prestamo`) USING BTREE,
  KEY `cliente_id` (`cliente_id`) USING BTREE,
  KEY `fpago_id` (`fpago_id`) USING BTREE,
  KEY `moneda_id` (`moneda_id`) USING BTREE,
  KEY `nro_prestamo` (`nro_prestamo`) USING BTREE,
  KEY `caja_id` (`caja_id`) USING BTREE,
  CONSTRAINT `prestamo_cabecera_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`cliente_id`),
  CONSTRAINT `prestamo_cabecera_ibfk_2` FOREIGN KEY (`fpago_id`) REFERENCES `forma_pago` (`fpago_id`),
  CONSTRAINT `prestamo_cabecera_ibfk_3` FOREIGN KEY (`moneda_id`) REFERENCES `moneda` (`moneda_id`),
  CONSTRAINT `prestamo_cabecera_ibfk_4` FOREIGN KEY (`caja_id`) REFERENCES `caja` (`caja_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamo_cabecera`
--

LOCK TABLES `prestamo_cabecera` WRITE;
/*!40000 ALTER TABLE `prestamo_cabecera` DISABLE KEYS */;
INSERT INTO `prestamo_cabecera` VALUES (9,'00000002',6,17000.00,'12',15.00,2,1,'2025-06-26',1629.17,2550.00,19550.00,'Pendiente','1',1,'aprobado','1',17921.00,'11','2025-06-25','VIGENTE',4),(10,'00000003',7,2000.00,'24',10.00,4,2,'2025-07-26',91.67,200.00,2200.00,'Pendiente','1',1,'aprobado','0',NULL,'24','2025-06-26','VIGENTE',4),(11,'00000004',8,20600.00,'12',4.00,4,1,'2025-07-01',1785.33,824.00,21424.00,'Pendiente','1',1,'aprobado','1',19639.00,'11','2025-07-01','VIGENTE',5);
/*!40000 ALTER TABLE `prestamo_cabecera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamo_detalle`
--

DROP TABLE IF EXISTS `prestamo_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prestamo_detalle` (
  `pdetalle_id` int(11) NOT NULL AUTO_INCREMENT,
  `nro_prestamo` varchar(8) NOT NULL,
  `pdetalle_nro_cuota` varchar(8) NOT NULL,
  `pdetalle_monto_cuota` decimal(18,2) DEFAULT NULL,
  `pdetalle_fecha` datetime DEFAULT NULL,
  `pdetalle_estado_cuota` varchar(100) DEFAULT NULL,
  `pdetalle_fecha_registro` timestamp NULL DEFAULT NULL,
  `pdetalle_saldo_cuota` decimal(18,2) DEFAULT NULL,
  `pdetalle_cant_cuota_pagada` varchar(10) DEFAULT NULL,
  `pdetalle_liquidar` varchar(10) DEFAULT NULL,
  `pdetalle_monto_liquidar` varchar(10) DEFAULT NULL,
  `pdetalle_caja` varchar(255) DEFAULT NULL,
  `pdetalle_aprobacion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pdetalle_id`,`nro_prestamo`) USING BTREE,
  KEY `nro_prestamo` (`nro_prestamo`) USING BTREE,
  CONSTRAINT `prestamo_detalle_ibfk_1` FOREIGN KEY (`nro_prestamo`) REFERENCES `prestamo_cabecera` (`nro_prestamo`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamo_detalle`
--

LOCK TABLES `prestamo_detalle` WRITE;
/*!40000 ALTER TABLE `prestamo_detalle` DISABLE KEYS */;
INSERT INTO `prestamo_detalle` VALUES (29,'00000002','1',1629.17,'2025-06-26 00:00:00','pagada','2025-06-25 13:55:55',17920.83,'11','0',NULL,'VIGENTE','aprobado'),(30,'00000002','2',1629.17,'2025-07-03 00:00:00','pendiente',NULL,1629.17,NULL,'0',NULL,'VIGENTE','aprobado'),(31,'00000002','3',1629.17,'2025-07-10 00:00:00','pendiente',NULL,1629.17,NULL,'0',NULL,'VIGENTE','aprobado'),(32,'00000002','4',1629.17,'2025-07-17 00:00:00','pendiente',NULL,1629.17,NULL,'0',NULL,'VIGENTE','aprobado'),(33,'00000002','5',1629.17,'2025-07-24 00:00:00','pendiente',NULL,1629.17,NULL,'0',NULL,'VIGENTE','aprobado'),(34,'00000002','6',1629.17,'2025-07-31 00:00:00','pendiente',NULL,1629.17,NULL,'0',NULL,'VIGENTE','aprobado'),(35,'00000002','7',1629.17,'2025-08-07 00:00:00','pendiente',NULL,1629.17,NULL,'0',NULL,'VIGENTE','aprobado'),(36,'00000002','8',1629.17,'2025-08-14 00:00:00','pendiente',NULL,1629.17,NULL,'0',NULL,'VIGENTE','aprobado'),(37,'00000002','9',1629.17,'2025-08-21 00:00:00','pendiente',NULL,1629.17,NULL,'0',NULL,'VIGENTE','aprobado'),(38,'00000002','10',1629.17,'2025-08-28 00:00:00','pendiente',NULL,1629.17,NULL,'0',NULL,'VIGENTE','aprobado'),(39,'00000002','11',1629.17,'2025-09-04 00:00:00','pendiente',NULL,1629.17,NULL,'0',NULL,'VIGENTE','aprobado'),(40,'00000002','12',1629.17,'2025-09-11 00:00:00','pendiente',NULL,1629.17,NULL,'0',NULL,'VIGENTE','aprobado'),(41,'00000003','1',91.67,'2025-07-26 00:00:00','pendiente',NULL,91.67,NULL,'0',NULL,'VIGENTE','aprobado'),(42,'00000003','2',91.67,'2025-08-26 00:00:00','pendiente',NULL,91.67,NULL,'0',NULL,'VIGENTE','aprobado'),(43,'00000003','3',91.67,'2025-09-26 00:00:00','pendiente',NULL,91.67,NULL,'0',NULL,'VIGENTE','aprobado'),(44,'00000003','4',91.67,'2025-10-26 00:00:00','pendiente',NULL,91.67,NULL,'0',NULL,'VIGENTE','aprobado'),(45,'00000003','5',91.67,'2025-11-26 00:00:00','pendiente',NULL,91.67,NULL,'0',NULL,'VIGENTE','aprobado'),(46,'00000003','6',91.67,'2025-12-26 00:00:00','pendiente',NULL,91.67,NULL,'0',NULL,'VIGENTE','aprobado'),(47,'00000003','7',91.67,'2026-01-26 00:00:00','pendiente',NULL,91.67,NULL,'0',NULL,'VIGENTE','aprobado'),(48,'00000003','8',91.67,'2026-02-26 00:00:00','pendiente',NULL,91.67,NULL,'0',NULL,'VIGENTE','aprobado'),(49,'00000003','9',91.67,'2026-03-26 00:00:00','pendiente',NULL,91.67,NULL,'0',NULL,'VIGENTE','aprobado'),(50,'00000003','10',91.67,'2026-04-26 00:00:00','pendiente',NULL,91.67,NULL,'0',NULL,'VIGENTE','aprobado'),(51,'00000003','11',91.67,'2026-05-26 00:00:00','pendiente',NULL,91.67,NULL,'0',NULL,'VIGENTE','aprobado'),(52,'00000003','12',91.67,'2026-06-26 00:00:00','pendiente',NULL,91.67,NULL,'0',NULL,'VIGENTE','aprobado'),(53,'00000003','13',91.67,'2026-07-26 00:00:00','pendiente',NULL,91.67,NULL,'0',NULL,'VIGENTE','aprobado'),(54,'00000003','14',91.67,'2026-08-26 00:00:00','pendiente',NULL,91.67,NULL,'0',NULL,'VIGENTE','aprobado'),(55,'00000003','15',91.67,'2026-09-26 00:00:00','pendiente',NULL,91.67,NULL,'0',NULL,'VIGENTE','aprobado'),(56,'00000003','16',91.67,'2026-10-26 00:00:00','pendiente',NULL,91.67,NULL,'0',NULL,'VIGENTE','aprobado'),(57,'00000003','17',91.67,'2026-11-26 00:00:00','pendiente',NULL,91.67,NULL,'0',NULL,'VIGENTE','aprobado'),(58,'00000003','18',91.67,'2026-12-26 00:00:00','pendiente',NULL,91.67,NULL,'0',NULL,'VIGENTE','aprobado'),(59,'00000003','19',91.67,'2027-01-26 00:00:00','pendiente',NULL,91.67,NULL,'0',NULL,'VIGENTE','aprobado'),(60,'00000003','20',91.67,'2027-02-26 00:00:00','pendiente',NULL,91.67,NULL,'0',NULL,'VIGENTE','aprobado'),(61,'00000003','21',91.67,'2027-03-26 00:00:00','pendiente',NULL,91.67,NULL,'0',NULL,'VIGENTE','aprobado'),(62,'00000003','22',91.67,'2027-04-26 00:00:00','pendiente',NULL,91.67,NULL,'0',NULL,'VIGENTE','aprobado'),(63,'00000003','23',91.67,'2027-05-26 00:00:00','pendiente',NULL,91.67,NULL,'0',NULL,'VIGENTE','aprobado'),(64,'00000003','24',91.67,'2027-06-26 00:00:00','pendiente',NULL,91.67,NULL,'0',NULL,'VIGENTE','aprobado'),(65,'00000004','1',1785.33,'2025-07-01 00:00:00','pagada','2025-07-02 01:04:35',19638.67,'11','0',NULL,'VIGENTE','aprobado'),(66,'00000004','2',1785.33,'2025-08-01 00:00:00','pendiente',NULL,1785.33,NULL,'0',NULL,'VIGENTE','aprobado'),(67,'00000004','3',1785.33,'2025-09-01 00:00:00','pendiente',NULL,1785.33,NULL,'0',NULL,'VIGENTE','aprobado'),(68,'00000004','4',1785.33,'2025-10-01 00:00:00','pendiente',NULL,1785.33,NULL,'0',NULL,'VIGENTE','aprobado'),(69,'00000004','5',1785.33,'2025-11-01 00:00:00','pendiente',NULL,1785.33,NULL,'0',NULL,'VIGENTE','aprobado'),(70,'00000004','6',1785.33,'2025-12-01 00:00:00','pendiente',NULL,1785.33,NULL,'0',NULL,'VIGENTE','aprobado'),(71,'00000004','7',1785.33,'2026-01-01 00:00:00','pendiente',NULL,1785.33,NULL,'0',NULL,'VIGENTE','aprobado'),(72,'00000004','8',1785.33,'2026-02-01 00:00:00','pendiente',NULL,1785.33,NULL,'0',NULL,'VIGENTE','aprobado'),(73,'00000004','9',1785.33,'2026-03-01 00:00:00','pendiente',NULL,1785.33,NULL,'0',NULL,'VIGENTE','aprobado'),(74,'00000004','10',1785.33,'2026-04-01 00:00:00','pendiente',NULL,1785.33,NULL,'0',NULL,'VIGENTE','aprobado'),(75,'00000004','11',1785.33,'2026-05-01 00:00:00','pendiente',NULL,1785.33,NULL,'0',NULL,'VIGENTE','aprobado'),(76,'00000004','12',1785.33,'2026-06-01 00:00:00','pendiente',NULL,1785.33,NULL,'0',NULL,'VIGENTE','aprobado');
/*!40000 ALTER TABLE `prestamo_detalle` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tg_montocuota_detalle` AFTER UPDATE ON `prestamo_detalle` FOR EACH ROW BEGIN



/*DECLARE MONTOTOTAL INT;

DECLARE MONTOCUOTA INT;



SET MONTOTOTAL:=(select pres_monto_total from prestamo_cabecera where nro_prestamo = prestamo);

SET MONTOCUOTA:=(select SUM(pdetalle_monto_cuota) from prestamo_detalle where nro_prestamo = prestamo AND pdetalle_estado_cuota = 'pagada' );





	UPDATE prestamo_detalle SET 

	 pdetalle_saldo_cuota = @MONTOTOTAL -  @MONTOCUOTA

	where nro_prestamo = new.nro_prestamo

  and pdetalle_nro_cuota = new.pdetalle_monto_cuota;*/





END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tg_can_cuotas_cabecera` AFTER UPDATE ON `prestamo_detalle` FOR EACH ROW BEGIN

DECLARE CUOTA INT;

SET CUOTA:=(select count(*) from prestamo_detalle where nro_prestamo = new.nro_prestamo and pdetalle_estado_cuota = 'pagada' );



        UPDATE prestamo_cabecera SET

	pres_cuotas_pagadas = CUOTA

	WHERE nro_prestamo = new.nro_prestamo;



END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tg_monto_restante` AFTER UPDATE ON `prestamo_detalle` FOR EACH ROW BEGIN

DECLARE MONTO INT;

SET MONTO:=(select SUM(pdetalle_monto_cuota) from prestamo_detalle where nro_prestamo = new.nro_prestamo AND pdetalle_estado_cuota = 'pagada' );





  UPDATE prestamo_cabecera SET

	pres_monto_restante = pres_monto_total - MONTO

	WHERE nro_prestamo = new.nro_prestamo;



END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tg_cuotas_restante` AFTER UPDATE ON `prestamo_detalle` FOR EACH ROW BEGIN

DECLARE CANTCUOTA INT;

SET CANTCUOTA:=(select count(pdetalle_estado_cuota) from prestamo_detalle where nro_prestamo = new.nro_prestamo AND pdetalle_estado_cuota = 'pagada');





  UPDATE prestamo_cabecera SET

	pres_cuotas_restante = pres_cuotas - CANTCUOTA

	WHERE nro_prestamo = new.nro_prestamo;



END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `referencias`
--

DROP TABLE IF EXISTS `referencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referencias` (
  `refe_id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente_id` int(11) DEFAULT NULL,
  `refe_personal` varchar(255) DEFAULT NULL,
  `refe_cel_per` varchar(20) DEFAULT NULL,
  `refe_familiar` varchar(255) DEFAULT NULL,
  `refe_cel_fami` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`refe_id`) USING BTREE,
  KEY `cliente_id` (`cliente_id`) USING BTREE,
  CONSTRAINT `referencias_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`cliente_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referencias`
--

LOCK TABLES `referencias` WRITE;
/*!40000 ALTER TABLE `referencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `referencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rol` (
  `rol_id` int(11) NOT NULL,
  `nombre_rol` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'Administrador'),(2,'Prestamista');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(100) DEFAULT NULL,
  `apellido_usuario` varchar(100) DEFAULT NULL,
  `usuario` varchar(100) NOT NULL,
  `clave` text NOT NULL,
  `id_perfil_usuario` int(11) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`) USING BTREE,
  KEY `id_perfil_usuario` (`id_perfil_usuario`) USING BTREE,
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_perfil_usuario`) REFERENCES `perfiles` (`id_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Gunner','Bento','Gunner','$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq',1,1),(2,'Colector','numero uno','Cuno','$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq',2,1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-04  0:09:59
