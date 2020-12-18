-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: album
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `track`
--

DROP TABLE IF EXISTS `track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `track` (
  `id` int NOT NULL AUTO_INCREMENT,
  `album_id` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `track_number` int DEFAULT NULL,
  `duration` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track`
--

LOCK TABLES `track` WRITE;
/*!40000 ALTER TABLE `track` DISABLE KEYS */;
INSERT INTO `track` VALUES (1,1,'Bright Lights Big City',1,320),(2,1,'Night Life',2,344),(3,1,'Basin Street Blues',5,296),(4,1,'Caldonia',3,205),(5,1,'Stardust',4,308),(6,1,'Georgia On My Mind',6,280),(7,1,'Rainy Day Blues',7,343),(8,1,'My Bucket\'s Got A Hole In It',8,296),(9,1,'Ain\'t Nobody\'s Business',9,447),(10,1,'That\'s All',10,368),(14,11,'Johnny B. Goode',1,285),(15,11,'Lover Man',2,185),(16,11,'Blue Suede xShoes',3,266),(17,11,'Voodoo Chile',4,469),(18,11,'The Queen',5,160),(19,11,'Sgt. Pepper\'s Lonely Hearts Club Band',6,76),(20,11,'Little Wing',7,194),(21,11,'Red House',8,786),(22,12,'Drive My Car',1,150),(23,12,'Norwegian Wood (This Bird Has Flown)',2,125),(24,12,'You Won\'t See Me',3,202),(25,12,'Nowhere Man',4,164),(26,12,'Think for Yourself',5,139),(27,12,'The Word',6,163),(28,12,'Michelle',7,162),(29,12,'What Goes On',8,170),(30,12,'Girl',9,153),(31,12,'I\'m Looking Through You',10,147),(32,12,'In My Life',11,147),(33,12,'Wait',12,136),(34,12,'If I Needed Someone',13,143),(35,12,'Run for Your Life',14,138),(37,13,'Birds of Fire',1,350),(38,13,'Miles Beyond',2,287),(39,13,'Celestial Terrestrial Commuters',3,174),(40,13,'Sapphire Bullets of Pure Love',4,24),(41,13,'Thousand Island Park',5,203),(42,13,'Hope',6,119),(43,13,'One Word',7,597),(44,13,'Sanctuary',8,305),(45,13,'Open Country Joy',9,236),(46,13,'Resolution',10,129),(50,16,'Good Morning Little Schoolgirl',1,285),(51,16,'It\'s My Own Fault',2,734),(52,16,'Jumpin\' Jack Flash',3,266),(53,16,'Rock And Roll Medley',4,406),(54,16,'Mean Town Blues',5,539),(55,16,'Johnny B. Goode',6,202),(56,17,'Don\'t Eat the Yellow Snow',1,127),(57,17,'Nanook Rubs It',2,278),(58,17,'St. Alfonzo\'s Pancake Breakfast',3,110),(59,17,'Father O\'Blivion',4,138),(60,17,'Cosmik Debris',5,254),(61,17,'Excentrifugal Forz',6,93),(62,17,'Apostrophe',7,350),(63,17,'Uncle Remus',8,164),(64,17,'Stink-Foot',9,393),(65,18,'So What',1,565),(66,18,'Freddy Freeloader',2,589),(67,18,'Blue in Green',3,338),(68,18,'All Blues',4,696),(69,18,'Flamenco Sketches',5,566),(70,11,'Fake Track',9,549);
/*!40000 ALTER TABLE `track` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-18  4:59:32
