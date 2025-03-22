-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: db_aliaga
-- ------------------------------------------------------
-- Server version	8.0.41-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `carousel`
--

DROP TABLE IF EXISTS `carousel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carousel` (
  `id_carousel` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `text` varchar(550) NOT NULL,
  `picture` varchar(200) DEFAULT NULL,
  `root` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_carousel`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carousel`
--

LOCK TABLES `carousel` WRITE;
/*!40000 ALTER TABLE `carousel` DISABLE KEYS */;
/*!40000 ALTER TABLE `carousel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `content` (
  `id_content` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `text` varchar(550) NOT NULL,
  `picture` varchar(200) DEFAULT NULL,
  `type` int DEFAULT NULL,
  `root` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_content`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES (5,'Estructura mecánica ','Estructura mecánica con un diseño robusto y eficaz en el control de sierpe de los avellanos. La labor de aplicación de herbicidas de contacto requiere de una barra sin oscilaciones para evitar generar daños a los avellanos. Al mismo tiempo, una barra mecánicamente estable, permite otros dos beneficios, en primer lugar, asegura un porcentaje de aplicación cercano al 100 % y en segundo lograr velocidades de aplicación que garanticen cubrir fácilmente 15 hectáreas por día.','9539b0d6-06dc-47cf-bd8a-7647afcb29ae.png',1,NULL),(22,'Raluen','Especialidad en fumigación y distribuidores oficiales de IMPAC y KUBOTA en Chillan y Alrededores.','c63bf3fe-db0c-457d-bffb-ed9b3231e702.png',2,NULL),(24,'Post-Venta','El presente es más importante que el pasado, por lo tanto, es fundamental que las barras Legionario estén trabajando diariamente. Sabemos que las plantaciones abarcan una gran cantidad de hectáreas y que el sierpe no espera, es por eso que nuestra empresa garantiza repuestos y servicios de post venta. \r\nEl sistema de control es diseñado y ensamblado por la empresa, esto garantiza soluciones rápidas y de bajo costo. \r\n','11ca45d7-2e7d-4ab0-9fd0-104d7347d5bd.png',1,NULL),(25,'Extras','Las barras Legionario, tanto en el modelo fijo como en el modelo hidráulico), tienen la capacidad de ser plegadas, lo cual facilita el transporte y almacenamiento una vez terminada la faena. Los modelos hidráulicos permiten una fácil regulación especialmente en plantaciones con camellón.','327a86b4-6c33-4f0e-8cf1-31f8eaf65591.png',1,NULL);
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id_product` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `text` varchar(500) NOT NULL,
  `price` varchar(45) DEFAULT NULL,
  `picture` varchar(200) DEFAULT NULL,
  `type` int DEFAULT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (16,'Barra Fija',' Ideal para terrenos planos y sin camellón.','532','65647fa9-b46d-43e5-83eb-9f3e5dc6b0f8.png',1),(17,'Barra Hidráulica','Ajusta la altura vertical para terrenos con camellón y pendientes','65','658ecab5-cfa9-4ba5-be20-66f61cc3dcc3.png',1),(35,'Barra Moto','Ideal para terrenos planos y sin camellón','503','8e762e5e-82b7-4c2f-b9a6-ba0fac1eb186.png',1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_copy1`
--

DROP TABLE IF EXISTS `products_copy1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_copy1` (
  `id_carousel` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `text` varchar(550) NOT NULL,
  `picture` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_carousel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_copy1`
--

LOCK TABLES `products_copy1` WRITE;
/*!40000 ALTER TABLE `products_copy1` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_copy1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int unsigned NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('--0aYPBNFyDS3UEhpU2zy_sr4GeWJH8W',1742617914,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('-LDNHGfH-y6SDHDUfEIP6GbSQAaM6W0t',1742642214,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('0SSbQPRP79UkPe6ft7MuvsvmZk05yQev',1742617888,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('1OFlBHz-05akw665yygkuuP-sx8OL79H',1742678879,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('1u1EOVSybN3eVGzgpPuKf9Iy04vPkr0S',1742617910,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{\"message\":[\"No se ha eliminado la imagen. Error:Error: Error: ENOENT: no such file or directory, unlink \'/home/legionariov1/src/public/uploads/vid/9539b0d6-06dc-47cf-bd8a-7647afcb29ae.png\'\"]}}'),('2TsfqtXg6OjXKVZ4YWr8bB1yhVgaWS54',1742617894,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('3sKGLEQ9cwKgRU1FH4nhUzLvZoy0uksm',1742617905,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{\"message\":[\"No se ha eliminado la imagen. Error:Error: Error: ENOENT: no such file or directory, unlink \'/home/legionariov1/src/public/uploads/vid/327a86b4-6c33-4f0e-8cf1-31f8eaf65591.png\'\"]}}'),('4JFHohArrTvOI_QpVffFpd0lMh1KUdjJ',1742641119,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('4usJRIC7u9zm807nnoLzRyF6ioqKeegg',1742667253,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('4zq0bM95YWok_l2j6pl-_fijkmY-1VGG',1742671182,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('5S_B-F9ul_7Om1AXajrKakEU09JRjswb',1742636208,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('5f_ofeKhw1pknSlXqFTP00MS2yFsm2QL',1742669957,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('68PEwwlsRlTXRgCH66w7IA1ZwVb_MLZW',1742609677,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('6ADcFtj_eBLOT8xhMJNbzJIJX2hOJnoa',1742623945,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('7PNjGMmBBVkuBj-SHqNC8pyZqChpc2_K',1742684794,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('7jkPF-WLM6E776WIlSGkX-EzbGQc_2Uu',1742631245,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('8VJjAbVI_KwMIYuY2zN8zG0IDSmd-qli',1742621193,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('8igYQ-hHImHyzfYTlmbobmCcQiOZIxwB',1742667253,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('8mZ8I5K8QbOFpZD2JsAUsoFMmHMlIvF2',1742683324,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('8uxcLu7rRyVdNhPgB4tLc_N3XPTR_nfU',1742664591,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('9JGZrs4Ecgq92HqZdFn_f0ckKlWxCGxt',1742617897,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{\"message\":[\"No se ha eliminado la imagen. Error:Error: Error: ENOENT: no such file or directory, unlink \'/home/legionariov1/src/public/uploads/vid/11ca45d7-2e7d-4ab0-9fd0-104d7347d5bd.png\'\"]}}'),('9b40P56jbBMlwdOg_ywE5WZUdgFKd6Fm',1742680735,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('9bpxuxxPnUjRo1-c3jZktU0tVR6DQb5U',1742621196,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('A3ipmLcMQCmicf7gGF3xNyiIuZIp5odA',1742609689,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('BCAPQezfA276W8Q-bxtOUTExS3ji0OHE',1742633920,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('B_isdWFrAbQAkRtpqYyH71PLONhnwlhX',1742641117,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('BrijhYi0LkwuUUtJKFCZ0bsTUIDo5208',1742667254,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('CC1WuE7xFwoXoDBI9UpnQzGFvt8vxXlH',1742641121,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('CDE-dxOxz0g0Fp7n0FtsvPbJf_SXWL6S',1742670007,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('CjA3eLFiJyBbpUzuu80BlGnbHD0gEJ3S',1742623962,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('CqTxVAdegePcD86WqvUZPxzDsJkcZiMB',1742638264,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('Cxv4wtVv_B4MIUNLxUPN7iyywMyOvRBp',1742654367,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('Cz57fssYLOlRnB60lJFahYqU9_E9wDe-',1742641613,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('D_9CMJnxTcyPOKmJNu4CqrIOMGfkeBgc',1742607046,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('Dd-c4pq9j978UA4epeGAzzDPvXJ7_oSo',1742617873,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('E-pKBTgOw9tiPZyveBlFN0dOb00o1Y73',1742635442,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('EYd39A_kTgdnb3zLRVv8iNc5-dUSsCW2',1742638267,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('E_Qvi_Bfi_dXrnPk5zNAqnEpTP19-OGe',1742617908,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('Er389DjZZZ1w-PEmXkEXEupKZJJJXuv0',1742684949,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('GE-71_zb-jspC3iuFHgbRQVBmivrgv7c',1742621196,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('GNfSnpK9g6m568Z00QeoskFA4MXLVw2X',1742608100,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('HVQjmVTd3BFY0j8cU0raKq9rSgV2QErc',1742655886,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('HWfyR7p2QujXcAEvjNHbEFkKoH0aE7uS',1742624343,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('HYQXHd43QTKfORmXXOvg2oFpIjXQHPV1',1742667179,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('Hlj9V3DXXDM3gNQK9lw0yfAm3UISxCFy',1742643535,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('IM_CjOWMs08Tos0nR0FZpKe_Lk-436NR',1742628285,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('ISYk4AR_DcNlnayVCoO9bNkDOjnN40PQ',1742684795,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('ItxS4eFZCO13RDnrf7MM3GSnVfSbW0eU',1742629290,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('JPQlViYHoUrUa4bWJgJWJeTuM3-VI3XM',1742630839,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('K4X5gIEIhwcg7rVO7O0dBoXfApT3i5EX',1742609687,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('K5G4nVkXRF0C_afFTxxcgaoPZvOao9eK',1742636398,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('KA5CO4jnXEJl0HPi86hUMhvNyprUugMm',1742635452,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('KSyrbiJ5WTanf3R0mVs0peCY6m_MaS69',1742660516,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('L40s7E9I9xWfqHOKasWsLe-6Z5G65nU2',1742647623,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('Lw4-WKXKrOauWVqaMTR5FHOb6IHYDeSI',1742664007,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('MQE4TfXFzm4q31XQ7rFd-w6DNBh3T5gN',1742638268,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('MtbdsnAz7jBIFOdFKnmpGzkz_GVctAQi',1742641122,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('Mvd4EIFuDKs0xgLoKHQpMYqGYiWVXyA2',1742671221,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('NEsBfYUDqQYo6JdQiPBft7he_-qfqoqK',1742628527,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('NFXJTsYNH1kIL0uW5jqHZQohnW9Ein6E',1742636852,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('NJ4lWqwqonPUbAjbTUWwUn3WzQeww3Un',1742633929,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('NNe84GyT4_Oq2R-Reih9m35-PHWaLmAc',1742617891,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('NrzOEn2jyhFu_L260_AjfsgjVi79-I4x',1742637380,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('OBDhkjt5-MSMDLf2HAbNvYAxCxl4L1W8',1742671180,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('OUVfXhuj1mnZK-fK6OCDoY_k0XqA7Cyk',1742671220,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('Ody7B7Lwdr7C5HzHsJqJkrpgOmY5KMrb',1742601434,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('OyuRxGgWpDvClXwqN6w4agMiDDI7t1Aq',1742631181,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('QOjGqQhscS1aJ3WvolXQmE-1zHd_N0Ds',1742644138,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('QR4fAR6EBF1qEqYFxGdU1gdI7HcmDISG',1742624928,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('RpJoPBtlnGfQ5BrB9EZT27FpOiPdQQ2v',1742644135,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('SZBzWn7bwvCR5oVFz7bkyGFTdpLxsp8W',1742618918,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('Squ2GsCuQC0sKzUxBYEKgAiF86Tw3DUS',1742638267,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('TG1VajNUmKjWVaCJCCSmY6w1iR4nt1h6',1742666542,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('UBtTeu5OYpvZqGV9MMoiz7GXlXntb3zx',1742623129,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('UV35roFJzZMcWSno3Q1wfHqPfTBGU64_',1742621192,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('VHFTF1d93Jv4a0MVduib5dvBKiJweWM6',1742617911,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('WOKBwX5hT_C9Bx6QNWstG96YLNN_T852',1742623945,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('X6otSXRB0316trSEDgyYSe5VQYsHzsR_',1742650351,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('X7QmRqq4wBA92eHidHU-y59T1qmkEyK4',1742657093,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('XCaI5fNAL9MeM9t_2d5ZtL593dq_UDHW',1742623310,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('XUVcarbItMp-8_Y3ZILBPejopdkdwV9e',1742604025,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('XZa6ku3yYImw_5EzZuxRry45UfEwYJVZ',1742683450,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('Xj62YRHfSS5Z9OqaxdYckDDjqkHCc09-',1742641615,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('Y-_dSZVTOzYTK2VxlyjD9__mo4vH8s43',1742667254,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('YrSvIgihy-BVZz2TmOaD23UJ61fBK432',1742672041,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('ZC0FMnnvABbjE5XL0YlkUNOo7IXc7vTu',1742667254,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('ZZmMtJmKG_IdvjSuAkXdFbSj1LEiG5u1',1742633929,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('ZcnIHqUg0fawaIq469R-w5Km5I10s6Gl',1742621197,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('_ISMOBanIDKnZF4ptUx2SQjTI-ZTNWm5',1742623052,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('_Olhhd4jrYAYLBaf2JBeD3IH8Py_6ZYd',1742609681,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('_xZu7jYnlk6zut1tos1mCEMqsTvOI9rb',1742659688,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('a3EjgcPHuK4unfh-k5Q62FW37wD0Ja9c',1742652341,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('a57ECB1aqztC0d6wECoGjAGvQIYodPfg',1742603311,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('aNDQT26XfBC1gu1ObSGnf7DFRnwVhiau',1742609684,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('aaoZD0ZpefTXYCqToG7ESL7qubpfpXFP',1742630834,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('bSk-xypPQnGbBg1MInTdGhr5EMMBZFjw',1742684795,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('cJ6BxbqCa0v_JKGj9bqeuP5p7y-hJg_A',1742617901,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('cLOpOWCXbuTwIgr5Ue3tv5ppMbx1JIHM',1742631180,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('cMxK4awj0UPMrSP9tv_mq2FsRsawEzgz',1742636399,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('ckbqEx8to6sKK8r1CsVCNlFfSF9Gy_EU',1742683323,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('czinkxKb3GupKEmwApUW2h_VpbKS_-SL',1742621197,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('dQh1LOhKDeu34aB5EQZSZLuRgOKMErjX',1742646114,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('dYs7RBYod4PTqBKL4yDK96YIsoRDhCAi',1742651846,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('d_mteT80wVXpEadvjU7GQDmiuQ5qp7YY',1742683338,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('dhfb-x1D7kV-bhFXjCaeelWGr8Id24tM',1742627733,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('duHi1RYcZXqPaJzRTCCbCLGaccdtlWwG',1742653602,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('eGbjmLTvWjiiKybPpE3b3B2dOD2NfGDI',1742683373,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('eSOYVd9zPHCWwMPsan5SuPodcXdn5nUl',1742684794,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('exEclWp5GZGdtSyqlk1zMQfr7C1V7LbL',1742667254,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('gFHp7sqwabr3xSbjUgmWaI_vlhj3X6Xn',1742644052,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('gbeJXBcT837ioHNgBIxeWuuki-R031yT',1742651161,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('gre8-j91RTWu-VujuwdFzSCljW-doYdY',1742647375,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('gvN2e7AtwcMsVOozNRjdsxYajtsJ8sMn',1742672205,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('gzQTM2iXeNVmNJbzgeHxUYEejV43yDo4',1742639633,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('hWT1MR4A7TOKnFjAa7IE87AerjQfk0cG',1742684793,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('huU34zWWJPzKvuqbnT5URxWGfkifapLB',1742648583,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('i59uSac803j01fe6KMjZ45qhXFZ3pfbJ',1742667254,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('iEdHhqni-f2OuNxaYRk9d3X68r5Q8fF5',1742623985,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('iJe4CerZIAatFDVLaMk6jqYuawOu_n5h',1742636977,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('isE-XYejRrYZ1KifH-0qlWG6t6kyLqy_',1742651779,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('kA8VMtg7eQvSW0qwEUFfB6KkGr-0MGkw',1742652667,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('kCh3UGYPTti_IcUIYEsFezYvOoB2KcRJ',1742641578,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('khMr9aq9J37gfhLJ3uIOevMxVfmroCtT',1742635112,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('kpL5eTd_wDPE3w5grMLxKn0Gnqt5IbQ5',1742638264,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('lJqka9ies3Dnllsiea4aaFpKpBUei-ie',1742641614,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('lK-qna1_hper1ST2ansHvpbdhpQuKuJ7',1742651863,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('lKbur4iQGZj0FXr1_p_PDf_mCKWN6dbu',1742639488,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('li0QVXSK6QhwEPXTsOHTO6k7olgKHPfj',1742684748,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('lu4piIdY7vMl6XxTgMqxV0siHf6eIfYV',1742642219,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('mEh6_7wGbKRC12lPQ7kLOVOSeb37fOjJ',1742651694,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('mrvRPqVFVOtMUPpyQ5gzuhlxASNz7gT6',1742672041,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('nEtdu7gVun-FuPbibSgoWxzYBCg6qI5x',1742666666,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('nG2STLmvHctw0i8akJ4utJW_bZ4Mi8zm',1742683322,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('nS3kBpSkBaRvLpowvZ7LQCqfrSqYcveR',1742656721,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('ngp53pQ0k7R_0grEZb8dpdcvmEyjWJnD',1742685676,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('nukO-6a-bFCBRs9vUTumI_WRwCuBQhkh',1742639628,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('oi53GITWLYqqOEpaKeKA2DKbCi05XV80',1742609688,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('owg5nW6ThZeAHWfGMJw4L4GwRWcoXdEw',1742629351,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('pVPhrAKu6y25J_LXKY0Y70K5J6kxf4Al',1742671222,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('pfBqiAe_0DxgwsxfpwSkjkOhvv5-TZ6l',1742675288,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('prde0exwNd0wrD--ScUul4HTTwsJm3gI',1742627690,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('q2K9k9GrN19RktEZQkdB7jVEx3csbAIP',1742644824,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('q9jFnwNl4wK7UbxNofSp2dBLq0ygI_O-',1742683343,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('qPCDcWGoIyXPprNG2J5fVClBFjaLnRRg',1742604106,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('qSOn8Y8QvAje7hMtZ49JNwiw-MVUlgAZ',1742633928,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('qstpGdVuECWSmH7nAFPYClUNJrwmt5NL',1742640961,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('rEIiwB_5O1e-lH9rFbY_71M6Q29Fs3Gz',1742623052,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('rIcqF-HuToc-GI9vfI1Fz2YFhOAIGD4h',1742667253,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('r_RknnOG34oz89o5LCelujfvKFMaLJyg',1742679948,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('sMwwxosw8AsegsyDxNpSjX4RUy0eNjAW',1742605728,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('sUJMErJORWFET7NT7ghTaKV74cul0bm7',1742665733,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('sgySLdq-ZMtJFw_DKgIgEfJVSUn73RI2',1742684749,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('u3ZWjXxLU_TZy2LKxyMeiaXvd9RPY5_8',1742625635,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('u9EVhZazLTRpNZAgKRp2wQgau6p1TsGQ',1742621192,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('uExMsFI2koNNLZ9xd3wc_hsrBf3jq0KL',1742631095,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('uJQmTiHLP2_CoBgnQy3s1XVdyPVutpBd',1742679944,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('uRwlXyGajMwG7Jw83Ujs4yoCI8S_pcJF',1742617907,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('v4LV77Ign41m4KQhMhg_YWno5lZKsqeU',1742685335,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('vRMLNVlYdiErUo28EIeOhqXPo87FEeHo',1742620266,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('vxRPOxQuUIZJPk0JhD39mNF126uWLVyo',1742631166,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('w2t5Hsdvwd5RMunLC_7_CBpTYC4KhF7n',1742609686,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('wD3_InlXq_vnSBKjD8G5tXyHcxjbj4te',1742644856,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('wD5UdlRye7HNTEVtwxnFhpdUlaSgKeje',1742647442,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('wLYM9fPmalFevo5SJJz7UregTZtZB8at',1742645692,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('x--8CCmmqKt3tOulq8VWz4FIwdwo5BI_',1742671710,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('xFvwS0rdjw-3BSCqzotl1fZaAegeUjQ2',1742601926,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('xKDj_ELVjJ_XqLT8M4I39n91aKXu_YIO',1742673272,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('xlPQEL0087CEQ3NcptoEz-ju6NcUxhUT',1742621195,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('xmBuC0uMfvDAwVNWpKZA_n3NG_zHfpUO',1742623962,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('yH_U5wi7j81kTNz70wwZhMaTeM0gApUH',1742627592,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('yaLbn6q0dy6Hvrd5Y3B7Ss_L7fM4E6JO',1742636395,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('ybXVhrPYtvGqXzq5g3J9wMeHnqpWYotU',1742618920,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('yq_-uZlUM2KU-VFpnAhcwQK6fSCY8ah4',1742607049,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('zJp0cJGNMVCgJTytPjeN3h4t74J6fmDJ',1742684732,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table1`
--

DROP TABLE IF EXISTS `table1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table1` (
  `id_product` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `text` varchar(45) NOT NULL,
  `price` varchar(45) DEFAULT NULL,
  `picture` varchar(200) DEFAULT NULL,
  `table1col` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table1`
--

LOCK TABLES `table1` WRITE;
/*!40000 ALTER TABLE `table1` DISABLE KEYS */;
/*!40000 ALTER TABLE `table1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(85) NOT NULL,
  `password` varchar(200) NOT NULL,
  `user` varchar(45) NOT NULL,
  `type` int NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Patricio','$2b$10$AbFE4/XDUAb2aePtUx48keQdCYj3GCaaP7/3OpAUkp3krMFRPmGvu','pgaisse',1,NULL),(2,'Rodrigo Aliaga','$2b$10$mF19yBpLrrKpqXujoST61um3eluCjtZCAcspx7TVIPEVlm/BdzVye','roaliaga09',1,'roaliaga09@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videos` (
  `id_video` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `text` varchar(500) NOT NULL,
  `picture` varchar(200) DEFAULT NULL,
  `type` int DEFAULT NULL,
  PRIMARY KEY (`id_video`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (4,'Legionario','Aplicación en avellanos Multieje','1741856628919.mp4',2);
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-21 23:21:35
