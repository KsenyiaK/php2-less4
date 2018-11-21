-- MySQL dump 10.13  Distrib 5.6.37, for osx10.6 (i386)
--
-- Host: localhost    Database: geekbrains2
-- ------------------------------------------------------
-- Server version	5.6.37

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
-- Table structure for table `Autor_Book`
--

DROP TABLE IF EXISTS `Autor_Book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Autor_Book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `autorId` int(11) DEFAULT NULL,
  `bookId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Autor_Book`
--

LOCK TABLES `Autor_Book` WRITE;
/*!40000 ALTER TABLE `Autor_Book` DISABLE KEYS */;
INSERT INTO `Autor_Book` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,3),(5,5,3),(6,6,4),(7,7,5),(8,8,5),(9,1,6);
/*!40000 ALTER TABLE `Autor_Book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Autors`
--

DROP TABLE IF EXISTS `Autors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Autors` (
  `autorId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `surname` varchar(500) DEFAULT NULL,
  `middlename` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`autorId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Autors`
--

LOCK TABLES `Autors` WRITE;
/*!40000 ALTER TABLE `Autors` DISABLE KEYS */;
INSERT INTO `Autors` VALUES (1,'Александр','Пушкин','Сергеевич'),(2,'Джесс','Чедвик',NULL),(3,'Тодд','Снайдер',NULL),(4,'Адам','Фримен',NULL),(5,'Джозеф','С. Ратц',NULL),(6,'Макс','Фрай',NULL),(7,'Сергей','Лукъяненко',NULL),(8,'Александр','Громов',NULL);
/*!40000 ALTER TABLE `Autors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Books`
--

DROP TABLE IF EXISTS `Books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Books` (
  `bookId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `pageCount` int(4) DEFAULT NULL,
  PRIMARY KEY (`bookId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Books`
--

LOCK TABLES `Books` WRITE;
/*!40000 ALTER TABLE `Books` DISABLE KEYS */;
INSERT INTO `Books` VALUES (1,'Золотые сказки',128),(2,'ASP.NET MVC 4',432),(3,'LINQ. Язык интегрированных запросов',656),(4,'Сказки Старого Вильнюса',480),(5,'Реверс',352),(6,'Евгений Онегин',200);
/*!40000 ALTER TABLE `Books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) DEFAULT NULL,
  `secondname` varchar(50) DEFAULT NULL,
  `adress` varchar(256) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES (1,'Александр','Иванов','Ленинский проспект 68 - 34, Москва 119296','+7-920-123-45-67'),(2,'Дмитрий','Петров','Хавская 3 - 128, Москва 115162','+7-495-123-45-67'),(6,'Елена','Козлова','Тамбовская - 47, Санкт-Петербург 192007','+7-920-765-43-21');
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Orders` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `bookId` int(11) DEFAULT NULL,
  `dateOrder` datetime DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (1,1,1,'2013-04-18 14:56:00'),(2,2,2,'2013-04-18 14:56:00'),(3,2,3,'2013-04-18 14:56:00'),(4,1,4,'2013-04-18 14:56:00'),(5,1,5,'2013-04-18 14:56:00'),(6,6,1,'2013-04-18 14:56:00'),(7,6,2,'2013-04-18 14:56:00');
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-23 11:57:05
