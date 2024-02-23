CREATE DATABASE  IF NOT EXISTS `belajar` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `belajar`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: belajar
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categori`
--

DROP TABLE IF EXISTS `categori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categori` (
  `categori_id` int NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `status` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`categori_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `categori_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categori`
--

LOCK TABLES `categori` WRITE;
/*!40000 ALTER TABLE `categori` DISABLE KEYS */;
INSERT INTO `categori` VALUES (1,'B201','panadol','obat sakit kepala','ready','ada',2),(2,'B202','kalpanax','obat kurap','ready','ada',NULL),(3,'B203','kataplan','obat sakit gigi','ada','ada',NULL),(4,'B204','minyak kayu putih','herbal','ada','ada',NULL),(5,'B205','aqua','air mineral','ada','ada',NULL);
/*!40000 ALTER TABLE `categori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `products_id` int NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext,
  `photo` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `cetegori_id` int DEFAULT NULL,
  PRIMARY KEY (`products_id`),
  KEY `user_id` (`user_id`),
  KEY `cetegori_id` (`cetegori_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`cetegori_id`) REFERENCES `categori` (`categori_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'A201','Dispektan','obat antibodi','ada','20000','200',10000,'ready',NULL,NULL),(2,'A202','handsanitaizer','antiseptik','ada','2111','100',30000,'ready',NULL,NULL),(3,'A203','Vitamin C','suplment','ada','40002','2500',12000,'ready',NULL,NULL),(4,'A204','Sakatoic ABC','suplement','ada','441312','4111',5000,'ready',NULL,NULL),(5,'A205','Betadine','obat cair','ada','5123121','112',22222,'ready',NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `addres` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ramuwil@gmail.com','ramu will sandra','dewa1234','Jl. Kubang','admin','aktif','2024-02-23 13:21:01','2024-02-23 13:21:01'),(2,'aswar@gmail.com','aswar karim','dewa1234','Jl. lobak','staff','aktif','2024-02-23 13:21:01','2024-02-23 13:21:01'),(3,'indah@gmail.com','Indah Willa Putri','dewa1234','Jl. licah','staff','aktif','2024-02-23 13:21:01','2024-02-23 13:21:01'),(4,'sarah@gmail.com','Saraf afanie','dewa1234','Jl. legodol','staff','aktif','2024-02-23 13:21:01','2024-02-23 13:21:01'),(5,'rehan@gmail.com','Rehan abiputra','dewa1234','Jl. angodak','staff','aktif','2024-02-23 13:21:01','2024-02-23 13:21:01');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-23 23:07:25

-- TUGAS SQL Left JOIN QUEry
select categori.name,products.products_id 
from categori left join products on categori.categori_id = products.products_id 
order by categori.name
----------------------------------
select users.email,products.products_id  
from users left join products on users.user_id = products.products_id  
order by users.email 
------------------------------------
select users.nama,products.products_id  
from users left join products on users.user_id = products.products_id  
order by users.nama 
