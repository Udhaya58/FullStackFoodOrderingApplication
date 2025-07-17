-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: demo
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `contactsph` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin@gmail.com','$2a$10$r0vixcEGkrJQKupSqMeKkObrQqOLRRCrdaSp807hoqQroDIERQFPa','ADMIN','Admin',NULL),(2,'admin@gmail.com','$2a$10$8IheULhHaeezRL05Fzhtde8YFfnmSrXA70dQbTEGnhtuttxMl6RiG','ADMIN','udhaya',NULL),(3,'admin@gmail.com','$2a$10$8sPWx5imuw4azJEgvugHPuM2aIWS91nUmyIrRFZIUyY9X9nd1B81i','ADMIN','udhaya',NULL),(4,'admin@gmail.com','$2a$10$izLhOOso247e9mcphNFe/uUVZVdmOa2XwcQgG.JqCbW018IjTV7om','ADMIN','udhaya',NULL),(5,'dhanush@gmail.com','$2a$10$PR.QSI7.jpL2SJwu8Qm.MebNSQNJ.GIHIejnb35RZDJ.rmnqNvLCi','ADMIN','dhanush',NULL),(6,'res11@gmail.com','$2a$10$l2uNNMoTVrzxA31fNLKfsO8NUNBjjfcT.sH1u7bJRIS/zY2ZftyJm','ADMIN','Ramya Shree G',NULL),(7,'admin2003@gmail.com','$2a$10$10CVM.XqxzVZ0RI0FczQ8eeFpnEjf9Lrofw5JVry4LsKf49/Bajcm','ADMIN','admin11',NULL);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `totalprice` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK9emlp6m95v5er2bcqkjsw48he` (`user_id`),
  CONSTRAINT `FKl70asp4l4w0jmbm1tqyofho4o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (2,35,0),(3,37,0);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_item`
--

DROP TABLE IF EXISTS `cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` double DEFAULT NULL,
  `quantity` int NOT NULL,
  `cart_id` int DEFAULT NULL,
  `menu_id` int DEFAULT NULL,
  `orders_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1uobyhgl1wvgt1jpccia8xxs3` (`cart_id`),
  KEY `FKpcv0bm5di40xdnacpjrxn39bl` (`menu_id`),
  KEY `FK32rp53kjrx5sf55fvsspo5nk1` (`orders_id`),
  CONSTRAINT `FK1uobyhgl1wvgt1jpccia8xxs3` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  CONSTRAINT `FK32rp53kjrx5sf55fvsspo5nk1` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `FKpcv0bm5di40xdnacpjrxn39bl` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_item`
--

LOCK TABLES `cart_item` WRITE;
/*!40000 ALTER TABLE `cart_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` enum('STARTERS','MAIN_COURSE','DESSERTS','BEVERAGES','SNACKS','SALADS','SOUPS') DEFAULT NULL,
  `available` bit(1) DEFAULT NULL,
  `available_time` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `dietary_type` enum('VEG','NONVEG') DEFAULT NULL,
  `key_inged` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nutritonal_info` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `tasteinfo` enum('SWEET','SPICY_LIGHT','SPICY_FULL','MILD','SALTY','SOUR') DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `restaurant_id` int DEFAULT NULL,
  `nutrional_info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKblwdtxevpl4mrds8a12q0ohu6` (`restaurant_id`),
  CONSTRAINT `FKblwdtxevpl4mrds8a12q0ohu6` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (25,'MAIN_COURSE',_binary '','ALL_DAY','A rich and creamy tomato-based curry with tender chicken, spiced with Indian herbs and finished with butter','NONVEG','Chicken,Butter','Butter Chicken 11',NULL,250,'SPICY_LIGHT','https://bigoven-res.cloudinary.com/image/upload/t_recipe-1280/indian-butter-chicken-8.jpg',14,'400g for serving  11'),(27,'DESSERTS',_binary '','ALL_DAY','Rich and fudgy chocolate squares with a gooey center and a crisp top — best served warm.','VEG','Cocoa powder, dark chocolate, flour, eggs, sugar, butter','Chocolate Brownie',NULL,80,'SWEET','https://images.slurrp.com/prod/articles/1m5e86yy5vl.webp',14,'100 kcal per serving'),(28,'SNACKS',_binary '','LUNCH','Crispy triangular pastry filled with spicy potato and peas. Perfect tea-time snack.','NONVEG','Maida (flour), potatoes, peas, green chili, spices.','Samosa',NULL,25,'SPICY_LIGHT','https://foodiewish.com/wp-content/uploads/2020/03/Samosa-foodiewish.jpg',14,'100 kcal per serving'),(29,'STARTERS',_binary '','ALL_DAY','Grilled cubes of marinated cottage cheese with spices.','VEG','Paneer, yogurt, ginger-garlic paste, garam masala, chili powder, bell peppers, onion.','Paneer Tikka',NULL,250,'SPICY_LIGHT','https://i0.wp.com/vegecravings.com/wp-content/uploads/2018/04/Paneer-Tikka-Recipe-Step-By-Step-Instructions.jpg?fit=2324%2C1944&quality=30&strip=all&ssl=1',16,'350 kcal per serving'),(30,'MAIN_COURSE',_binary '','ALL_DAY','fresh burger','VEG','bread ,chicken','Burger',NULL,250,'SPICY_LIGHT','https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg',14,'350 g per serving'),(31,'STARTERS',_binary '','ALL_DAY','chicken cji','NONVEG','chivken','chicken briyani',NULL,200,'SPICY_LIGHT','https://bigoven-res.cloudinary.com/image/upload/t_recipe-1280/indian-butter-chicken-8.jpg',14,'400g for serving  sss');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` double DEFAULT NULL,
  `quantity` int NOT NULL,
  `cart_id` int DEFAULT NULL,
  `menu_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `orders_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkgu3wv2n7r2shg2wbvc4nsu7l` (`cart_id`),
  KEY `FKi610j9rwndv2jcwrgyo89q2es` (`menu_id`),
  KEY `FKt4dc2r9nbvbujrljv3e23iibt` (`order_id`),
  KEY `FKea29bb770t1s99pp2ngvhgwnt` (`orders_id`),
  CONSTRAINT `FKea29bb770t1s99pp2ngvhgwnt` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `FKi610j9rwndv2jcwrgyo89q2es` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`),
  CONSTRAINT `FKkgu3wv2n7r2shg2wbvc4nsu7l` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  CONSTRAINT `FKt4dc2r9nbvbujrljv3e23iibt` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (9,750,3,NULL,29,NULL,20);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_time` datetime(6) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `restaurant_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKi7hgjxhw21nei3xgpe4nnpenh` (`restaurant_id`),
  KEY `FKel9kyl84ego2otj2accfd8mr7` (`user_id`),
  CONSTRAINT `FKel9kyl84ego2otj2accfd8mr7` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKi7hgjxhw21nei3xgpe4nnpenh` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (20,'2025-07-15 20:45:17.432557','CASH_ON_DELIVERY','udhay,chennai','CANCELLED',750,16,35);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contact` bigint DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `contactsph` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (14,NULL,'res1@gmail.com',NULL,'A M Briyani','$2a$10$aAQbgN2.LvAy9j1P6PefL.1u/hkOyUD3VqccfBk9rOSbWKlKPVZTe','RESTAURANT',NULL),(15,NULL,'udhayakavin2003@gmail.com',NULL,'admin','$2a$10$C3opbJCoBYIKbxl8TJ9T1e7ysTvQPLgbk94sSRWFIIVceQjrOQ5ga','RESTAURANT',NULL),(16,9566986506,'res2@gmail.com',NULL,'Vel\'s Restaurant','$2a$10$rtBFY4dqfk26EgwycnUEy.UNZ3KNqsT1It/L6RVBlek.nUzD5QKKG','RESTAURANT',NULL),(17,9942865113,'user5@gmail.com',NULL,'user5','$2a$10$jCaUuelcInEHXCGL.Avf/u/mIi5jjN.LhhJCxSEnROr7o1wAi9KiS','RESTAURANT',NULL),(18,9566986500,'home@gmail.com',NULL,'home food','$2a$10$Sbn60ikb9QMMbXQBA96s/udjE.RS1CEQR4EvP7wflwYtjdxhJQ/R2','RESTAURANT',NULL),(21,9566986506,'user11@gmail.com',NULL,'user6@gmail.com','$2a$10$ZWHwD7AyOM4iu3AIJ1wxgOXyXOnLYaFH0r.pXIXpcbQawxesJO7Ye','RESTAURANT',NULL);
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_orders`
--

DROP TABLE IF EXISTS `restaurant_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant_orders` (
  `restaurant_id` int NOT NULL,
  `orders_id` int NOT NULL,
  UNIQUE KEY `UKd1dqp0i886vmn4ue9eggj0d8j` (`orders_id`),
  KEY `FK21jwpdt4b37ymv5nkjjte0seg` (`restaurant_id`),
  CONSTRAINT `FK21jwpdt4b37ymv5nkjjte0seg` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_orders`
--

LOCK TABLES `restaurant_orders` WRITE;
/*!40000 ALTER TABLE `restaurant_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `restaurant_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contact` bigint DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `cart_id` int DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `contactsph` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK47dq8urpj337d3o65l3fsjph3` (`cart_id`),
  CONSTRAINT `FKtqa69bib34k2c0jhe7afqsao6` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (35,'user1@gmail.com','user1','$2a$10$nGQ4NRww7dqYeUocpV8wnuvVJzrPbcqVIGwlh0S6f/5elmS41Rzpe',9566986506,NULL,NULL,'USER',NULL),(36,'user4@gmail.com','user4','$2a$10$ttxlGA.5T65hJi2zgeyv6uNq0S1lI4pIT7M61/EiN3LL/PpeUdRFG',9942865113,NULL,NULL,'USER',NULL),(37,'user5@gmail.com','user5','$2a$10$hTU2zPhWgErWrFf4l3GcTuZrd51Zv4ECtNYC7TeGinnvPenjfzXMO',9566986506,NULL,NULL,'USER',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_orders`
--

DROP TABLE IF EXISTS `user_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_orders` (
  `user_id` int NOT NULL,
  `orders_id` int NOT NULL,
  UNIQUE KEY `UKoqipapb9ox7fhui5n2ttp9ab4` (`orders_id`),
  KEY `FKkuspr37yv513ga1okogyxrb7m` (`user_id`),
  CONSTRAINT `FK3yq31b5hsh40vprb3spflxaob` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `FKkuspr37yv513ga1okogyxrb7m` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_orders`
--

LOCK TABLES `user_orders` WRITE;
/*!40000 ALTER TABLE `user_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-17  9:36:25
