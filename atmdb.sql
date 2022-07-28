-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: atmmgtdb
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `help`
--

DROP TABLE IF EXISTS `help`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `mobileno` varchar(45) DEFAULT NULL,
  `message` varchar(445) DEFAULT NULL,
  `createdby` varchar(45) DEFAULT NULL,
  `modifiedby` varchar(45) DEFAULT NULL,
  `createddatetime` timestamp NULL DEFAULT NULL,
  `modifieddatetime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help`
--

LOCK TABLES `help` WRITE;
/*!40000 ALTER TABLE `help` DISABLE KEYS */;
INSERT INTO `help` VALUES (1,'test@test.com','9999999999','Withdraw money failed','root','root','2022-05-22 11:45:16','2022-05-22 11:45:16'),(2,'test9@test.com','9999999999','Deposit failed','root','root','2022-05-23 05:45:03','2022-05-23 05:45:03');
/*!40000 ALTER TABLE `help` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `accountno` varchar(245) DEFAULT NULL,
  `name` varchar(245) DEFAULT NULL,
  `mobileno` varchar(245) DEFAULT NULL,
  `amount` bigint DEFAULT NULL,
  `totalamount` bigint DEFAULT NULL,
  `createdby` varchar(245) DEFAULT NULL,
  `modifiedby` varchar(245) DEFAULT NULL,
  `createddatetime` timestamp NULL DEFAULT NULL,
  `modifieddatetime` timestamp NULL DEFAULT NULL,
  `transactiontype` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,'40503321','Test','9999999999',192000,192000,'test@test.com','test@test.com','2022-05-21 16:07:59',NULL,'Deposit'),(2,'40503321','Test','9999999999',1,384000,'test@test.com','test@test.com','2022-05-21 16:11:18',NULL,'Deposit'),(3,'40503321','Test','9999999999',0,768000,'test@test.com','test@test.com','2022-05-21 16:15:26',NULL,'Deposit'),(4,'40503321','Test','9999999999',20,20,'test@test.com','test@test.com','2022-05-21 16:19:04',NULL,'Deposit'),(5,'40503321','Test','9999999999',2000,1536020,'test@test.com','test@test.com','2022-05-21 16:20:43',NULL,'Deposit'),(6,'40503321','Test','9999999999',1,1538021,'test@test.com','test@test.com','2022-05-21 16:22:47',NULL,'Deposit'),(7,'40503321','Test','9999999999',1,1538022,'test@test.com','test@test.com','2022-05-21 16:27:39',NULL,'Deposit'),(8,'40503321','Test','9999999999',1,1538020,'test@test.com','test@test.com','2022-05-21 16:45:31',NULL,'Withdraw'),(9,'40503321','Test','9999999999',2000,1536020,'test@test.com','test@test.com','2022-05-22 05:08:30',NULL,'Withdraw'),(10,'40503312','TestTwo','8888888888',500,500,'test2@test.com','test2@test.com','2022-05-22 05:16:48',NULL,'Deposit'),(11,'40503312','TestTwo','8888888888',501,-1,'test2@test.com','test2@test.com','2022-05-22 10:47:16',NULL,'Withdraw'),(12,'40503312','TestTwo','8888888888',100,600,'test2@test.com','test2@test.com','2022-05-22 10:47:29',NULL,'Deposit'),(13,'40503312','TestTwo','8888888888',10,89,'test2@test.com','test2@test.com','2022-05-22 10:48:55',NULL,'Withdraw'),(14,'40503321','Test','9999999999',1000,1535020,'test@test.com','test@test.com','2022-05-23 05:49:06',NULL,'Withdraw');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `firstname` varchar(245) DEFAULT NULL,
  `lastname` varchar(245) DEFAULT NULL,
  `accountno` varchar(245) DEFAULT NULL,
  `pin` int DEFAULT NULL,
  `login` varchar(245) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `mobileno` varchar(245) DEFAULT NULL,
  `gender` varchar(245) DEFAULT NULL,
  `roleid` bigint DEFAULT NULL,
  `rolename` varchar(245) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `createdby` varchar(245) DEFAULT NULL,
  `createddatetime` timestamp NULL DEFAULT NULL,
  `modifiedby` varchar(245) DEFAULT NULL,
  `modifieddatetime` timestamp NULL DEFAULT NULL,
  `balance` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Admin','Admin','1234567891',1234,'admin@admin.com','1994-10-02 00:00:00','888888888','Female',1,'Admin','1',NULL,NULL,NULL,NULL,NULL),(2,'Test','Test','40503321',2333,'test@test.com','1994-10-02 00:00:00','9999999999','Female',2,'User','1','test@test.com','2022-05-23 05:49:06','test@test.com','2022-05-23 05:49:06',1535020),(3,'TestTwo','TestTwo','40503312',9098,'test2@test.com','1993-10-02 00:00:00','8888888888','Male',2,'User','1','test2@test.com','2022-05-22 10:48:55','test2@test.com','2022-05-22 10:48:55',89);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-23 11:23:45
