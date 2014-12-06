/*
SQLyog Ultimate v9.63 
MySQL - 5.6.16 : Database - mvc
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mvc` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mvc`;

/*Table structure for table `corresponde` */

DROP TABLE IF EXISTS `corresponde`;

CREATE TABLE `corresponde` (
  `sipi` tinyint(1) DEFAULT NULL,
  `idp` int(11) DEFAULT NULL,
  `idr` int(11) DEFAULT NULL,
  KEY `idp` (`idp`),
  KEY `idr` (`idr`),
  CONSTRAINT `corresponde_ibfk_1` FOREIGN KEY (`idp`) REFERENCES `preguntas` (`idp`),
  CONSTRAINT `corresponde_ibfk_2` FOREIGN KEY (`idr`) REFERENCES `respuestas` (`idr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `corresponde` */

LOCK TABLES `corresponde` WRITE;

insert  into `corresponde`(`sipi`,`idp`,`idr`) values (1,1,1),(0,1,2),(0,1,3),(0,1,4),(1,2,5),(0,2,6),(0,2,7),(0,2,8),(1,3,9),(0,3,10),(0,3,11),(0,3,12),(1,4,13),(0,4,14),(0,4,15),(0,4,16),(1,5,17),(0,5,18),(0,5,19),(0,5,20),(1,6,21),(0,6,22),(0,6,23),(0,6,24),(1,7,25),(0,7,26),(0,7,27),(0,7,28),(1,8,29),(0,8,30),(0,8,31),(0,8,32),(1,9,33),(0,9,34),(0,9,35),(0,9,36),(1,10,37),(0,10,38),(0,10,39),(0,10,40),(1,11,41),(0,11,42),(0,11,43),(0,11,44),(1,12,45),(0,12,46),(0,12,47),(0,12,48),(1,13,49),(0,13,50),(0,13,51),(0,13,52),(1,14,53),(0,14,54),(0,14,55),(0,14,56),(1,15,57),(0,15,58),(0,15,59),(0,15,60),(1,16,61),(0,16,62),(0,16,63),(0,16,64),(1,17,65),(0,17,65),(0,17,67),(0,17,68),(1,18,69),(0,18,70),(0,18,71),(0,18,72),(1,19,73),(0,19,74),(0,19,75),(0,19,76),(1,20,77),(0,20,78),(0,20,79),(0,20,80);

UNLOCK TABLES;

/*Table structure for table `preguntas` */

DROP TABLE IF EXISTS `preguntas`;

CREATE TABLE `preguntas` (
  `idp` int(11) NOT NULL DEFAULT '0',
  `preguntas` varchar(74) DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `preguntas` */

LOCK TABLES `preguntas` WRITE;

insert  into `preguntas`(`idp`,`preguntas`,`tipo`) values (1,'¿Cuanto es 26 x 6?',2),(2,'¿Cuanto equivale 1 GB?',2),(3,'¿Que color es green en ingles?',2),(4,'¿Que numero es eight en ingles?',2),(5,'¿De que color es la casa azul?',2),(6,'¿Como se dice huevos en ingles?',2),(7,'¿Que significan las siglas CPU?',2),(8,'¿Como se dice arroz en ingles?',2),(9,'¿Cunanto es 20 - 26?',2),(10,'¿Cuanto es 2.3 + 2.2?',2),(11,'¿El CD  es un dispositivo de almacenamiento?',2),(12,'¿De que color es caballo blanco de napoleon?',2),(13,'¿Cuentas con edificio propio para estudiar?',2),(14,'¿A que empresa pertenece un carro bochito?',2),(15,'¿Que significan las siglas S.O en Informatica?',2),(16,'¿A que sistema operativo pertenece el logotipo de un pinguino?',2),(17,'¿La impresora es un dispositivo de:?',2),(18,'¿El leon es un animal carnivoro?',2),(19,'¿Los animales carnivoros comen?',2),(20,'¿Quien ha muerto mas veces en Dragon ball z?',2);

UNLOCK TABLES;

/*Table structure for table `respuestas` */

DROP TABLE IF EXISTS `respuestas`;

CREATE TABLE `respuestas` (
  `idr` int(11) NOT NULL DEFAULT '0',
  `respuesta` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`idr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `respuestas` */

LOCK TABLES `respuestas` WRITE;

insert  into `respuestas`(`idr`,`respuesta`) values (1,'156'),(2,'126'),(3,'86'),(4,'106'),(5,'1024 KB'),(6,'1000 KB'),(7,'512 MB'),(8,'256 MB'),(9,'verde'),(10,'azul'),(11,'rojo'),(12,'amarilo'),(13,'8'),(14,'7'),(15,'6'),(16,'5'),(17,'azul'),(18,'naranja'),(19,'blanco'),(20,'rosa'),(21,'eggs'),(22,'rice'),(23,'battle'),(24,'can'),(25,'Unidad Central de Procesamiento'),(26,'Unidades Culturales de Puebla'),(27,'Universidad del Centro de Puerto Rico'),(28,'Ninguna de las anteiores'),(29,'rice'),(30,'cheese'),(31,'snack'),(32,'eggs'),(33,'-6'),(34,'12'),(35,'3'),(36,'6'),(37,'4.5'),(38,'5'),(39,'5.5'),(40,'4.7'),(41,'si'),(42,'no'),(43,'ningunas de las anteriores'),(44,'ambas son corre'),(45,'blanco'),(46,'rojo'),(47,'negro'),(48,'azul'),(49,'si'),(50,'no'),(51,'aveces'),(52,'ninguna de las anteriores'),(53,'volkswagen'),(54,'ford'),(55,'chrysler'),(56,'chevrolet'),(57,'Sistema Operativo'),(58,'Sistemas Ortopedicos'),(59,'Sistema Computacional'),(60,'Sistemas Operativos Windows'),(61,'Linux'),(62,'Windows'),(63,'Android'),(64,'Ninguna de las anteriores'),(65,'Entrada'),(66,'Salida'),(67,'De una computadora'),(68,'Todas son correctas'),(69,'si'),(70,'no'),(71,'no se'),(72,'todas son correctas'),(73,'carne'),(74,'hierbas'),(75,'huevos'),(76,'ninguna de las anteriores'),(77,'crilin'),(78,'goku'),(79,'gohan'),(80,'milk');

UNLOCK TABLES;

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `matricula` int(9) NOT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `calif` smallint(6) DEFAULT NULL,
  `presento` tinyint(1) DEFAULT NULL,
  `estatus` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usuarios` */

LOCK TABLES `usuarios` WRITE;

insert  into `usuarios`(`matricula`,`nombre`,`password`,`calif`,`presento`,`estatus`) values (221110360,'Armando','12345',8,1,'1');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
