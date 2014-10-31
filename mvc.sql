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

/*Table structure for table `calificar` */

DROP TABLE IF EXISTS `calificar`;

CREATE TABLE `calificar` (
  `id_c` int(11) DEFAULT NULL,
  `id_p` int(11) DEFAULT NULL,
  `id_r` int(11) DEFAULT NULL,
  KEY `id_p` (`id_p`),
  KEY `id_r` (`id_r`),
  CONSTRAINT `id_p` FOREIGN KEY (`id_p`) REFERENCES `preguntas` (`id_p`),
  CONSTRAINT `id_r` FOREIGN KEY (`id_r`) REFERENCES `respuestas` (`id_r`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `calificar` */

LOCK TABLES `calificar` WRITE;

UNLOCK TABLES;

/*Table structure for table `preguntas` */

DROP TABLE IF EXISTS `preguntas`;

CREATE TABLE `preguntas` (
  `id_p` int(11) NOT NULL AUTO_INCREMENT,
  `preguntas` varchar(100) DEFAULT NULL,
  `respuesta` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_p`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `preguntas` */

LOCK TABLES `preguntas` WRITE;

insert  into `preguntas`(`id_p`,`preguntas`,`respuesta`) values (1,'¿Que numero es mayor a 8?','1'),(2,'¿Primer color de la bandera de México?','2'),(3,'¿Segundo color de la bandera de México?','1'),(4,'¿Tercer color de la bandera de México?','2'),(5,'¿Cuanto es 10 + 10?','1'),(6,'¿Lugar donde esta la UTVT?','2'),(7,'¿Cuentas con cafetería en la Universidad?','1'),(8,'¿Cual es el nombre de tu Director de carrera?','2'),(9,'¿El resultado de 100/20 es:?','1'),(10,'¿La resta de 400-150 es:?','2'),(11,'¿La multiplicacion de 20*3 es:?','1');

UNLOCK TABLES;

/*Table structure for table `respuestas` */

DROP TABLE IF EXISTS `respuestas`;

CREATE TABLE `respuestas` (
  `id_r` int(11) NOT NULL,
  `respuesta` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_r`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `respuestas` */

LOCK TABLES `respuestas` WRITE;

UNLOCK TABLES;

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id_u` int(11) NOT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `calif` smallint(6) DEFAULT NULL,
  `presento` tinyint(1) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_u`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usuarios` */

LOCK TABLES `usuarios` WRITE;

insert  into `usuarios`(`id_u`,`nombre`,`password`,`calif`,`presento`,`status`) values (1,'armando','12345',NULL,NULL,1);

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
