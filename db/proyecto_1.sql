-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: proyecto_1
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.17-MariaDB

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` int(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `primary` int(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Motos',1,'2021-06-17 17:54:25','2021-06-17 14:54:25'),(2,'UTV',2,'2021-06-17 17:54:25','2021-06-17 14:54:25'),(3,'Cuatriciclos',3,'2021-06-17 17:54:25','2021-06-17 14:54:25');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `texto_comentario` varchar(250) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `comentarios_ibfk_1_idx` (`producto_id`),
  CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` VALUES (1,44,82,'hola','0000-00-00','2021-06-27 15:57:10','2021-06-27 15:57:10'),(41,1,86,'Gran moto, super recomendable','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(42,13,87,'Se me rompió a la primera vez que lo meti en el agua, una vergüenza!','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(43,16,86,'Muy buen producto ','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(44,1,88,'Un disparate el precio, estan locos','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(45,13,82,'Muy bueno!','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(46,14,87,'Tremenda oferta, muy buena la pagina ','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(47,15,83,'Hacen envíos a todo el país?','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(48,16,90,'Que robo...','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(49,1,84,'Gran producto','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(50,13,81,'¿Aceptan tarjeta de debito?','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(51,14,87,'Lo recomiendo','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(52,15,99,'10 puntos el tramite','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(53,16,82,'Gran servicio','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(54,1,89,'Super recomendable, me encanto','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(55,13,86,'Un disparate el precio','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(56,14,93,'Que buena variedad de productos','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(57,15,82,'Gran página','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(58,16,81,'Excelente mantenimiento de la página','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(59,13,91,'Muy buena usabilidad del sitio web','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(60,1,99,'Mejoren la rapidez de la página','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(61,13,95,'Muy recomendable','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(62,16,99,'Para más información?','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(63,14,93,'Tienen alguna sucursal para ver el producto en persona?','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(64,16,92,'Hacen envíos a Mendoza?','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(65,1,85,'Tienen garantía?','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(66,13,81,'Se ven muy buenos','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(67,14,93,'Muy buen trabajo de marketing','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(68,16,96,'Mejoren los precios','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(69,15,91,'Aceptan efectivo?','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(70,1,83,'Aceptan cambio de motos?','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(71,14,96,'Cuales son los métodos de pago?','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(72,16,88,'Con que empresa de envios trabajan','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(73,13,83,'Puedo retirarla en el lugar?','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(74,1,91,'Gran precio en relación al mercado','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(75,14,97,'una locura los precios!','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(76,15,99,'Muy buenos productos','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(77,16,88,'Sigo creyendo que es el mejor lugar de venta para deportes extremos','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(78,14,89,'Muy bueno!','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(79,15,96,'Terrible oferta!','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(80,15,83,'Muy bueno en todo sentido','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(81,1,86,'Gran moto, super recomendable','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(82,13,87,'Se me rompió a la primera vez que lo meti en el agua, una vergüenza!','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(83,16,86,'Muy buen producto ','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(84,1,88,'Un disparate el precio, estan locos','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(85,13,82,'Muy bueno!','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(86,14,87,'Tremenda oferta, muy buena la pagina ','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(87,15,83,'Hacen envíos a todo el país?','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(88,16,90,'Que robo...','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(89,1,84,'Gran producto','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(90,13,81,'¿Aceptan tarjeta de debito?','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(91,14,87,'Lo recomiendo','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(92,15,99,'10 puntos el tramite','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(93,16,82,'Gran servicio','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(94,1,89,'Super recomendable, me encanto','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(95,13,86,'Un disparate el precio','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(96,14,93,'Que buena variedad de productos','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(97,15,82,'Gran página','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(98,16,81,'Excelente mantenimiento de la página','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(99,13,91,'Muy buena usabilidad del sitio web','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(100,1,99,'Mejoren la rapidez de la página','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(101,13,95,'Muy recomendable','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(102,16,99,'Para más información?','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(103,14,93,'Tienen alguna sucursal para ver el producto en persona?','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(104,16,92,'Hacen envíos a Mendoza?','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(105,1,85,'Tienen garantía?','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(106,13,81,'Se ven muy buenos','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(107,14,93,'Muy buen trabajo de marketing','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(108,16,96,'Mejoren los precios','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(109,15,91,'Aceptan efectivo?','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(110,1,83,'Aceptan cambio de motos?','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(111,14,96,'Cuales son los métodos de pago?','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(112,16,88,'Con que empresa de envios trabajan','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(113,13,83,'Puedo retirarla en el lugar?','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(114,1,91,'Gran precio en relación al mercado','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(115,14,97,'una locura los precios!','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(116,15,99,'Muy buenos productos','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(117,16,88,'Sigo creyendo que es el mejor lugar de venta para deportes extremos','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(118,14,89,'Muy bueno!','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(119,15,96,'Terrible oferta!','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(120,15,83,'Muy bueno en todo sentido','2021-04-26','2021-06-17 17:55:38','2021-06-17 14:55:38'),(121,44,82,'este cuatriciclo es malisimo','0000-00-00','2021-06-27 15:58:22','2021-06-27 15:58:22'),(122,44,83,'Hola','0000-00-00','2021-06-27 18:41:36','2021-06-27 18:41:36'),(123,44,82,'hola','0000-00-00','2021-06-27 18:44:45','2021-06-27 18:44:45'),(124,44,83,'muy lento el tiempo de respuesta','0000-00-00','2021-06-27 18:46:30','2021-06-27 18:46:30'),(125,44,99,'muy buena moto','0000-00-00','2021-06-27 18:57:35','2021-06-27 18:57:35'),(126,44,113,'Tremenda Moto!','0000-00-00','2021-06-27 18:58:36','2021-06-27 18:58:36');
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria_id` int(100) NOT NULL,
  `usuario_id` int(100) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `fecha_de_publicacion` date NOT NULL,
  `URL` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `categoria_id` (`categoria_id`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (81,2,13,'Motomel Pitbull 200',307,'2021-04-15','https://motos0km.com.ar/models/motomel-pitbull-200-gallery-ff0000-020180511103557.jpg','Cuatriciclo ideal para jovenes. Apto para cualquier tipo de superficie.','2021-06-17 17:55:11','2021-06-21 11:49:26'),(82,1,1,'Zanella G-Force 250',631,'2021-04-15','https://zanella.com.ar/wp-content/uploads/2016/09/Force250II_rojo.png','Cuatriciclo familiar para usar en la playa. Mucha potencia y comodidad','2021-06-17 17:55:11','2021-06-17 15:26:33'),(83,2,1,'UTV Gamma Z-Force 550',988,'2021-04-15','https://http2.mlstatic.com/D_NQ_NP_825525-MLU25461645119_032017-O.jpg','UTV esencial para unas vacaciones en familia. Todo terreno y con mucha potencia.','2021-06-17 17:55:11','2021-06-17 15:26:33'),(84,1,14,'UTV Maverick Polaris Rzr',871,'2021-04-15','https://http2.mlstatic.com/D_NQ_NP_696533-MLA45412240517_042021-O.jpg','Disfruta de la velocidad con este Polaris Rzr. Unico en su clase.','2021-06-17 17:55:11','2021-06-21 11:49:26'),(85,2,15,'Honda CRF 2021',691,'2021-04-15','https://www.moto1pro.com/sites/default/files/fotosprincipales/01_304137_2021_honda_crf450r.jpg','Si queres velocidad esta es la moto ideal.','2021-06-17 17:55:11','2021-06-21 11:49:26'),(86,1,15,'Beta Racing 250X',247,'2021-04-15','https://www.formulamoto.es/wp-content/uploads/2020/06/gama-beta-enduro-2021-8_g.jpg','Moto de carreras para que puedas competir a otra velocidad','2021-06-17 17:55:11','2021-06-21 11:49:26'),(87,3,14,'Yamaha Raptor 700',788,'2021-04-15','https://http2.mlstatic.com/D_NQ_NP_825537-MLA43077513610_082020-O.jpg','Cuatriciclo diseñado para disfrutar de los medanos','2021-06-17 17:55:11','2021-06-21 11:49:26'),(88,2,14,'Yamaha YZF R1 M\r\n',938,'2021-04-15','https://www.motofichas.com/images/cache/01-yamaha-yzf-r1-2020-perfil-azul-739-a.jpg','La mejor moto para disfrutar de la velocidad en la calle','2021-06-17 17:55:11','2021-06-21 11:49:26'),(89,3,1,'Honda Tornado xr250',640,'2021-04-15','https://lh3.googleusercontent.com/proxy/DPszxY-3ZA9Me_Dj7-D8eOaxYQEpsY-jah5bARPql2LbTG_NDhqbs01fIBB6GQIkMLZP4kfBKvmVYjSRy1ibCvWXPWI4gbyN2cUjh6tXC7ac0aA','Moto perfecta para que disfrutes con tus amigos.','2021-06-17 17:55:11','2021-06-17 15:26:33'),(90,1,13,'UTV Honda pioneer 700',550,'2021-04-15','https://powersports.honda.com/sxs/recutility/-/media/products/family/pioneer-700/trims/trim-main/pioneer-700/2021/2021-pioneer-700-olive-650x380.png','El UTV ideal para que tus hijos paseen con sus amigos por la playa.','2021-06-17 17:55:11','2021-06-21 11:49:26'),(91,2,13,'Motomel Pitbull 200',307,'2021-04-15','https://motos0km.com.ar/models/motomel-pitbull-200-gallery-ff0000-020180511103557.jpg','Cuatriciclo ideal para jovenes. Apto para cualquier tipo de superficie.','2021-06-17 17:55:11','2021-06-21 11:49:26'),(92,1,1,'Zanella G-Force 250',631,'2021-04-15','https://motos0km.com.ar/models/motomel-pitbull-200-gallery-ff0000-020180511103557.jpg','Cuatriciclo familiar para usar en la playa. Mucha potencia y comodidad','2021-06-17 17:55:11','2021-06-17 15:26:33'),(93,2,1,'UTV Gamma Z-Force 550',988,'2021-04-15','https://http2.mlstatic.com/D_NQ_NP_825525-MLU25461645119_032017-O.jpg','UTV esencial para unas vacaciones en familia. Todo terreno y con mucha potencia.','2021-06-17 17:55:11','2021-06-17 15:26:33'),(94,1,13,'UTV Maverick Polaris Rzr',871,'2021-04-15','https://http2.mlstatic.com/D_NQ_NP_696533-MLA45412240517_042021-O.jpg','Disfruta de la velocidad con este Polaris Rzr. Unico en su clase.','2021-06-17 17:55:11','2021-06-21 11:49:26'),(95,2,14,'Honda CRF 2021',691,'2021-04-15','https://www.moto1pro.com/sites/default/files/fotosprincipales/01_304137_2021_honda_crf450r.jpg','Si queres velocidad esta es la moto ideal.','2021-06-17 17:55:11','2021-06-21 11:49:26'),(96,1,14,'Beta Racing 250X',247,'2021-04-15','https://www.formulamoto.es/wp-content/uploads/2020/06/gama-beta-enduro-2021-8_g.jpg','Moto de carreras para que puedas competir a otra velocidad','2021-06-17 17:55:11','2021-06-21 11:49:26'),(97,3,15,'Yamaha Raptor 700',788,'2021-04-15','https://http2.mlstatic.com/D_NQ_NP_825537-MLA43077513610_082020-O.jpg','Cuatriciclo diseñado para disfrutar de los medanos','2021-06-17 17:55:11','2021-06-21 11:49:26'),(98,2,14,'Yamaha YZF R1 M\r\n',938,'2021-04-15','https://www.motofichas.com/images/cache/01-yamaha-yzf-r1-2020-perfil-azul-739-a.jpg','La mejor moto para disfrutar de la velocidad en la calle','2021-06-17 17:55:11','2021-06-21 11:49:26'),(99,3,1,'Honda Tornado xr250',640,'2021-04-15','https://lh3.googleusercontent.com/proxy/DPszxY-3ZA9Me_Dj7-D8eOaxYQEpsY-jah5bARPql2LbTG_NDhqbs01fIBB6GQIkMLZP4kfBKvmVYjSRy1ibCvWXPWI4gbyN2cUjh6tXC7ac0aA','Moto perfecta para que disfrutes con tus amigos.','2021-06-17 17:55:11','2021-06-17 15:26:33'),(100,1,13,'UTV Honda pioneer 700',550,'2021-04-15','https://powersports.honda.com/sxs/recutility/-/media/products/family/pioneer-700/trims/trim-main/pioneer-700/2021/2021-pioneer-700-olive-650x380.png','El UTV ideal para que tus hijos paseen con sus amigos por la playa.','2021-06-17 17:55:11','2021-06-21 11:49:26'),(113,2,44,'Moto De Batu',124555,'0000-00-00','https://www.maseramotos.com.ar/web/sites/default/files/publico/styles/prd_0992/public/Producto/252_1.jpg?itok=vEGPtwJd','NANna','2021-06-27 18:58:25','2021-06-27 18:58:25');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `fecha_de_nacimiento` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Carlos','Alvear','2012-07-01','cdealvear@udesa.edu.ar','11 2593-9999','carlos123','2021-06-15 21:24:47','2021-06-15 18:24:47'),(13,'Bautista','Saud','2006-01-02','bsaud@udesa.edu.ar','11 1234-5678','bautista123','2021-06-15 21:24:47','2021-06-15 18:24:47'),(14,'Tiago','Palladino','2001-01-01','tpalladino@udesa.edu.ar','11 1234-5678','tiago123','2021-06-15 21:24:47','2021-06-15 18:24:47'),(15,'Macarena','Armijo','2001-01-01','marmijo@digitalhouse.com','11 1234-5678','maca123','2021-06-15 21:24:47','2021-06-15 18:24:47'),(16,'Daniel ','Funtes','2001-01-01','dfuentes@digitalhouse.com','11 1234-5678','dani123','2021-06-15 21:24:47','2021-06-15 18:24:47'),(17,'','','0000-00-00','johndoe@furious.com','','$2a$10$W7WvvtCx','2021-06-15 21:25:25','2021-06-15 21:25:25'),(18,'juan','lopez','2002-04-22','juan@lopez.com','12345','$2a$10$35oNebBL','2021-06-15 21:34:50','2021-06-15 21:34:50'),(19,'Tiago','Palladino','2002-04-22','tiagopalladino22@gmail.com','9115873909','$2a$10$sU5iVSXr','2021-06-16 18:58:53','2021-06-16 18:58:53'),(20,'Tiago','Palladino','2002-04-22','nealerargco@gmail.com','+541558739095','$2a$10$svT5Din3','2021-06-16 19:22:30','2021-06-16 19:22:30'),(21,'Tomas','Pepino','4443-03-12','pep@guardiola.com','1234456677','$2a$10$a.Hk4x.i','2021-06-16 19:34:33','2021-06-16 19:34:33'),(22,'Hola','Como','4555-03-12','hola@como.com','1234567','$2a$10$UQd8.OiY','2021-06-16 19:35:49','2021-06-16 19:35:49'),(23,'pepo','bernardo','3322-03-12','pepo@mourinho.com','1234567','$2a$10$Grpa95wK','2021-06-16 19:36:59','2021-06-16 19:36:59'),(24,'','','0000-00-00','','','$2a$10$I.TPJFZ6','2021-06-16 20:46:54','2021-06-16 20:46:54'),(25,'Marton','Palladino','2121-12-12','tiago@gmail.com','9115873909','$2a$10$EzkRPmw1','2021-06-16 20:47:30','2021-06-16 20:47:30'),(26,'Alo','Hola','5222-04-23','bebe@seque.con','tigono','$2a$10$fADsGY7U','2021-06-16 20:50:36','2021-06-16 20:50:36'),(27,'Ab','do','2002-04-22','mi@nal.com','12345','$2a$10$dXTiNCGyuqDsjioWb0y7tOO7PsZuMSLeY6Z3tcjRayiSrLydOV3Om','2021-06-16 21:02:31','2021-06-16 21:02:31'),(28,'J','K','2002-03-22','j@k.com','1234456677','$2a$10$Xsn0lZcr7RQfd/F99ple9upSOL2BcE0r1F2UhF77ePM3lJFucthe2','2021-06-17 01:47:32','2021-06-17 01:47:32'),(29,'hola','hola','2002-04-22','hol@hola.com','hola','$2a$10$WcexIcgTu9PYlcWw1Vv8Ouobg.dPaZSTtFiiqCJSFao96To0qJ.Me','2021-06-17 01:49:28','2021-06-17 01:49:28'),(30,'Tiago','Palladino','2002-04-22','tiagopalladino22@gmail.com','9115873909','$2a$10$pAjNneMRuODAvcb0fw7Ppeb5r47XaY9mAMgi4NLwg0e7fauszELsq','2021-06-17 02:10:38','2021-06-17 02:10:38'),(31,'Hola','Hola','0000-00-00','','','$2a$10$A3lvlzNEMkBHIdYkB5Ls/OZocBHDUkzADhrej2.7.XLaaGckDFQ0.','2021-06-17 02:12:04','2021-06-17 02:12:04'),(32,'Hola','Hola','2002-04-22','hola@carlos.com','123456','$2a$10$FfcL1pYz/q6a6GaM2xV7Te08G2mWQgDD0X5YzSVI1r5zIUiY.tgn2','2021-06-17 02:12:29','2021-06-17 02:12:29'),(33,'Hola','','0000-00-00','','','','2021-06-17 16:33:18','2021-06-17 16:33:18'),(34,'Hola','Palladino','2002-04-22','hola@palladino.com','1234','$2a$10$Pn8fOMDBbSAMolAiAu9aSOUZJEncGHEokipntWtL761X9vwFgZMLm','2021-06-21 18:06:36','2021-06-21 18:06:36'),(35,'tiago','tiago','2002-04-22','tiago@tiago.com','tiago','$2a$10$lIVyZBfzoBbKZqgThPXpmOISo9s03hl8ZXfZcoM8.o64G6UhzHOI6','2021-06-24 02:04:42','2021-06-24 02:04:42'),(36,'tiago','tiago','2002-04-22','tiago@tiago.com','tiago','$2a$10$/G3Xms4dXk83PjuC3dAnZ.a03nfaLrkQN3NKLZGoj8DhdZSiPWbX2','2021-06-24 02:06:42','2021-06-24 02:06:42'),(37,'tiago','tiago','2002-04-22','tiago@tiago.com','tiago','$2a$10$KArsLMk/qHWooO0EeYaJbesYQO3ViQt1zQUQD2i/Ff34zFy3kqE7a','2021-06-24 02:06:51','2021-06-24 02:06:51'),(38,'tiago','tiago','2002-04-22','tiago@tiago.com','tiago','$2a$10$4qFbk.UWnQ8Hndo.4q0gguPyhEJ2.3.pLiOj3kzADiPfJ4g3VnJM.','2021-06-24 02:07:08','2021-06-24 02:07:08'),(39,'carlos','carlos','1211-03-21','carlos@carlos.com','carlos','$2a$10$vmfQsiV8CXw2D5A4UCaufuB5qx0EOs5B7NtB2UlHVKFymkN5Ql0f6','2021-06-24 02:08:39','2021-06-24 02:08:39'),(40,'carlos','carlos','1211-03-21','carlos@carlos.com','carlos','$2a$10$/NXJgpMLb4.YWZh5OyaEW.0Z0VMOQSfg1PLEwYcU5SqmbWmlvcVwy','2021-06-24 02:09:14','2021-06-24 02:09:14'),(41,'carlos','carlos','1211-03-21','carlos@carlos.com','carlos','$2a$10$Ws2zHIlWH6cqqVbL1cQaZeC/3naDv221tSh5ubJTwzEQur0LSaK7a','2021-06-24 02:10:37','2021-06-24 02:10:37'),(42,'carlos','carlos','1211-03-21','carlos@carlos.com','carlos','$2a$10$fsVcZyKtsL0ol0b74oLaKOj527pNgsgUytn4b1S3TPA2UxoDOV/rS','2021-06-24 02:17:01','2021-06-24 02:17:01'),(43,'carlos','carlos','1211-03-21','carlos@carlos.com','carlos','$2a$10$ddKaMQJvATEjWYswWV1mPeEXLvs8AUtojGnCLbbcBsNXkiW7fU9OK','2021-06-24 02:17:35','2021-06-24 02:17:35'),(44,'batu','batu','0022-02-22','batu@batu.com','batu','$2a$10$reU4VYgiqCr1zeCjcUe7GOqLq51NwjwV4j7CxFxpWjBp9DlZIN0eC','2021-06-24 02:19:58','2021-06-24 02:19:58'),(45,'batu','batu','0022-02-22','batu@batu.com','batu','$2a$10$asi0RuTYwf7IGAWGUrM7yevULI73jXnsFMlARxx48ceeUQaLBsgtO','2021-06-24 02:21:22','2021-06-24 02:21:22'),(46,'batu','batu','0022-02-22','batu@batu.com','batu','$2a$10$Vrl2yif5PwPuFNYGJ1WCZehsW/uk6rrUgZgq1H5oEhFfY3zqTZzPS','2021-06-24 02:21:34','2021-06-24 02:21:34'),(47,'batu','batu','0022-02-22','batu@batu.com','batu','$2a$10$wzZnyLZO/W40hD93BdDN1.S0zti/jhjoWroWRzYCV814Mg.c0F9XG','2021-06-24 02:21:37','2021-06-24 02:21:37'),(48,'batu','batu','0022-02-22','batu@batu.com','batu','$2a$10$qa9Zq9dpZctYzFoexhxNJegkvY0FLMpTLSwltCLBRYFn5g9zcXeS.','2021-06-24 02:22:24','2021-06-24 02:22:24'),(49,'carlote','','0000-00-00','','','$2a$10$XPcfrI.Hgb86779FcQErNupiPQHQ31NtO6Q8HmP5SU3.lXG1E9eWe','2021-06-24 17:44:01','2021-06-24 19:05:28'),(50,'batun','','0000-00-00','','','$2a$10$JRjLb1N.Dmc6JJqt7Xlrce32o5KMBUWmtrwfM.Tn2hySWR5PepMtW','2021-06-24 18:33:19','2021-06-24 18:33:19'),(51,'Batun','Batun','2112-12-22','','','$2a$10$4nXcIGcOTMI9XaCy91JGreqU.dM8Bb8859VaplGxdZxZ2/znw0GJi','2021-06-24 18:33:44','2021-06-24 18:33:44'),(52,'carlote','carlote','2222-02-22','carlote@carlote.com','carlote','$2a$10$93NyrbvnUmFQWkIZBOfCseIDdvW7aTpTrb2349Cv9FY/IdsMdglym','2021-06-24 18:38:00','2021-06-24 18:38:00');
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

-- Dump completed on 2021-06-27 16:01:00
