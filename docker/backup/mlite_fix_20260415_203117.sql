-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: mlite
-- ------------------------------------------------------
-- Server version	5.7.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mlite_settings`
--

DROP TABLE IF EXISTS `mlite_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mlite_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(100) NOT NULL,
  `field` varchar(100) NOT NULL,
  `value` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `module` (`module`,`field`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mlite_settings`
--

LOCK TABLES `mlite_settings` WRITE;
/*!40000 ALTER TABLE `mlite_settings` DISABLE KEYS */;
INSERT INTO `mlite_settings` VALUES (1,'settings','logo','uploads/settings/logo.png'),(2,'settings','nama_instansi','RS Masa Kini'),(3,'settings','alamat','Jl. Perintis Kemerdekaan 45'),(4,'settings','kota','Barabai'),(5,'settings','propinsi','Kalimantan Selatan'),(6,'settings','nomor_telepon','0812345678'),(7,'settings','email','info@mlite.org'),(8,'settings','website','https://mlite.org'),(9,'settings','ppk_bpjs','010101'),(10,'settings','footer','Copyright {?=date(\"Y\")?} &copy; by drg. F. Basoro. All rights reserved.'),(11,'settings','homepage','main'),(12,'settings','igd',''),(13,'settings','laboratorium',''),(14,'settings','pj_laboratorium',''),(15,'settings','radiologi',''),(16,'settings','pj_radiologi',''),(17,'settings','dokter_ralan_per_dokter','false'),(18,'settings','cekstatusbayar','false'),(19,'settings','ceklimit','false'),(20,'settings','notif_presensi','true'),(21,'settings','responsivevoice','false'),(22,'settings','waapitoken','-'),(23,'settings','waapiphonenumber','-'),(24,'settings','BpjsApiUrl','https://new-api.bpjs-kesehatan.go.id:8080/new-vclaim-rest/'),(25,'settings','BpjsConsID',''),(26,'settings','BpjsSecretKey',''),(27,'settings','vClaimVersion','1'),(28,'settings','timezone','Asia/Krasnoyarsk'),(29,'settings','theme','default'),(30,'settings','theme_admin','cerulean'),(31,'settings','admin_mode','simple'),(32,'settings','input_kasir','tidak'),(33,'settings','editor','wysiwyg'),(34,'settings','version','2021-01-01 00:00:01'),(35,'settings','update_check','0'),(36,'settings','update_changelog',''),(37,'settings','update_version','0'),(38,'settings','license',''),(39,'farmasi','deporalan','-'),(40,'farmasi','igd','-'),(41,'farmasi','deporanap','-'),(42,'farmasi','gudang','-');
/*!40000 ALTER TABLE `mlite_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mlite_modules`
--

DROP TABLE IF EXISTS `mlite_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mlite_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dir` text,
  `sequence` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mlite_modules`
--

LOCK TABLES `mlite_modules` WRITE;
/*!40000 ALTER TABLE `mlite_modules` DISABLE KEYS */;
INSERT INTO `mlite_modules` VALUES (1,'settings','9'),(2,'dashboard','0'),(3,'master','1'),(4,'pasien','2'),(5,'rawat_jalan','3'),(6,'kasir_rawat_jalan','4'),(7,'kepegawaian','5'),(8,'farmasi','6'),(9,'users','8'),(10,'modules','7');
/*!40000 ALTER TABLE `mlite_modules` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-15 13:31:17
