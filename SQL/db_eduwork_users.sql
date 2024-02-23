-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_eduwork
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `addres` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ramu','ramuwil@gmail.com',821690045,'laki-laki','Jl. Sariwangi'),(2,'anwar','anwar@gmail.com',82121212,'laki-laki','Jl.teh pucuk'),(3,'mira','mira@gmail.com',81212231,'perempuan','Jl.teh botol'),(4,'shinta','shinta@gmail.com',81341223,'perempuan','Jl.sosro'),(5,'rahman','rahman@gmail.com',81414512,'laki-laki','Jl.abadi'),(6,'bagas','bagas@gmail.com',81641231,'laki-laki','Jl.telaga'),(7,'agus','agus@gmail.com',81515121,'laki-laki','Jl.cempaka'),(8,'dayat','dayat@gmail.com',81123121,'laki-laki','Jl.cempedak'),(9,'fatimeh','fatimeh@gmail.com',851515677,'perempuan','Jl.sudarso'),(10,'wella','wella@gmail.com',89988212,'perempuan','Jl.anggur'),(11,'lisa','lisa@gmail.com',894441214,'perempuan','Jl.ambush'),(12,'semprul','semprul@gmail.com',89121341,'laki-laki','Jl.alowish'),(13,'alif','alif@gmail.com',89211312,'laki-laki','Jl.todak'),(14,'sahat','sahat@gmail.com',89314121,'laki-laki','Jl.todakilin'),(15,'jamet','jamet@gmail.com',222131,'laki-laki','Jl.dengkul'),(16,'anggi','anggi@gmail.com',21314121,'perempuan','Jl.saripati'),(17,'dilla','dilla@gmail.com',12525342,'perempuan','Jl.sarilamak'),(18,'rehan','rehan@gmail.com',123141551,'laki-laki','Jl.sepat'),(19,'risky','risky@gmail.com',98881231,'laki-laki','Jl.alpokat'),(20,'anita','anita@gmail.com',21455156,'perempuan','Jl.lobak'),(21,'indah','indah@gmail.com',214155661,'perempuan','Jl.lapeterin'),(22,'denny','denny@gmail.com',833312123,'laki-laki','Jl.ambasador'),(23,'kangen','kangen@gmail.com',815555512,'laki-laki','Jl.jomblo'),(24,'nasrul','nasrul@gmail.com',867676234,'laki-laki','Jl.ulek'),(25,'lincah','lincah@gmail.com',111231412,'laki-laki','Jl.belut'),(26,'rahmi','rahmi@gmail.com',211223334,'perempuan','Jl.teratai'),(27,'fina','fina@gmail.com',777732324,'perempuan','Jl.pelita'),(28,'iksan','iksan@gmail.com',89986544,'laki-laki','Jl.bukit'),(29,'surya','surya@gmail.com',734512131,'laki-laki','Jl.megalodon'),(30,'adelian','adelian@gmail.com',652242342,'laki-laki','Jl.takicuah');
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

-- Dump completed on 2024-02-23 11:30:16
/*TUGAS ALIAS*/
select nama as nama_lengkap from users;
select phone as no_telepone from users;
select addres as alamat from user;
select nama as nama_lengkap, phone as no_telepone, addres as alamat from users;
select nama, concat (phone,',',addres) as kontak from users;