-- MySQL dump 10.13  Distrib 8.4.6, for Win64 (x86_64)
--
-- Host: localhost    Database: btl_web_db
-- ------------------------------------------------------
-- Server version	8.4.6

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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text,
  `cover_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Khóa học Quizizz','quizzi','Hướng dẫn tạo bài trắc nghiệm tương tác cho lớp học.','https://images.unsplash.com/photo-1606326608606-aa0b62935f2b?q=80&w=600&auto=format&fit=crop','2026-06-03 08:44:29','2026-06-03 08:44:29',NULL),(2,'Khóa học Kahoot','kahoot','Nền tảng học tập dựa trên trò chơi.','https://images.unsplash.com/photo-1516321497487-e288fb19713f?q=80&w=600&auto=format&fit=crop','2026-06-03 08:44:29','2026-06-03 08:44:29',NULL),(3,'Google Classroom','google_classroom','Công cụ quản lý lớp học trực tuyến hiệu quả của Google.','https://images.unsplash.com/photo-1503676260728-1c00da094a0b?q=80&w=600&auto=format&fit=crop','2026-06-03 08:44:29','2026-06-03 08:44:29',NULL),(4,'Articulate 360','articulate_360','Phần mềm soạn bài giảng E-Learning chuyên nghiệp.','https://images.unsplash.com/photo-1531403009284-440f080d1e12?q=80&w=600&auto=format&fit=crop','2026-06-03 08:44:29','2026-06-03 08:44:29',NULL),(5,'Lập trình C','lap-trinh-c','Hướng dẫn lập trình cơ bản về ngôn ngữ C','/images/lap-trinh-c.jpg','2026-06-03 09:53:52','2026-06-03 09:55:25','2026-06-03 09:55:25');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollments`
--

DROP TABLE IF EXISTS `enrollments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `course_id` int NOT NULL,
  `last_accessed_lesson_id` int DEFAULT NULL,
  `enrolled_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `course_id` (`course_id`),
  KEY `last_accessed_lesson_id` (`last_accessed_lesson_id`),
  CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `enrollments_ibfk_3` FOREIGN KEY (`last_accessed_lesson_id`) REFERENCES `lessons` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollments`
--

LOCK TABLES `enrollments` WRITE;
/*!40000 ALTER TABLE `enrollments` DISABLE KEYS */;
INSERT INTO `enrollments` VALUES (1,3,1,NULL,'2026-06-04 08:53:38'),(2,4,3,NULL,'2026-06-04 09:39:49'),(3,4,4,NULL,'2026-06-04 09:39:49'),(4,4,5,NULL,'2026-06-04 09:39:49'),(5,5,5,NULL,'2026-06-04 09:39:49'),(6,5,4,NULL,'2026-06-04 09:39:49'),(7,5,3,NULL,'2026-06-04 09:39:49'),(8,6,3,NULL,'2026-06-04 09:39:49'),(9,7,3,NULL,'2026-06-04 09:39:49'),(10,7,4,NULL,'2026-06-04 09:39:49'),(11,7,2,NULL,'2026-06-04 09:39:49'),(12,8,5,NULL,'2026-06-04 09:39:49'),(13,8,4,NULL,'2026-06-04 09:39:49'),(14,9,1,NULL,'2026-06-04 09:39:49'),(15,9,4,NULL,'2026-06-04 09:39:49'),(16,10,1,NULL,'2026-06-04 09:39:49'),(17,10,2,NULL,'2026-06-04 09:39:49'),(18,10,5,NULL,'2026-06-04 09:39:49'),(19,11,4,NULL,'2026-06-04 09:39:49'),(20,11,1,NULL,'2026-06-04 09:39:49'),(21,12,3,NULL,'2026-06-04 09:39:49'),(22,13,1,NULL,'2026-06-04 09:39:49'),(23,13,2,NULL,'2026-06-04 09:39:49'),(24,13,3,NULL,'2026-06-04 09:39:49'),(25,14,4,NULL,'2026-06-04 09:39:49'),(26,15,2,NULL,'2026-06-04 09:39:49'),(27,16,4,NULL,'2026-06-04 09:39:49'),(28,16,1,NULL,'2026-06-04 09:39:49'),(29,17,5,NULL,'2026-06-04 09:39:49'),(30,17,1,NULL,'2026-06-04 09:39:49'),(31,17,2,NULL,'2026-06-04 09:39:49'),(32,18,5,NULL,'2026-06-04 09:39:49'),(33,18,4,NULL,'2026-06-04 09:39:49'),(34,19,1,NULL,'2026-06-04 09:39:49'),(35,19,2,NULL,'2026-06-04 09:39:49'),(36,19,4,NULL,'2026-06-04 09:39:49'),(37,20,4,NULL,'2026-06-04 09:39:49'),(38,21,4,NULL,'2026-06-04 09:39:49'),(39,22,4,NULL,'2026-06-04 09:39:49'),(40,23,1,NULL,'2026-06-04 09:39:49'),(41,23,4,NULL,'2026-06-04 09:39:49'),(42,24,3,NULL,'2026-06-04 09:39:49'),(43,24,4,NULL,'2026-06-04 09:39:49'),(44,24,5,NULL,'2026-06-04 09:39:49'),(45,25,1,NULL,'2026-06-04 09:39:49'),(46,26,1,NULL,'2026-06-04 09:39:49'),(47,27,4,NULL,'2026-06-04 09:39:49'),(48,27,1,NULL,'2026-06-04 09:39:49'),(49,28,2,NULL,'2026-06-04 09:39:49'),(50,28,1,NULL,'2026-06-04 09:39:49'),(51,28,5,NULL,'2026-06-04 09:39:49'),(52,29,1,NULL,'2026-06-04 09:39:49'),(53,29,2,NULL,'2026-06-04 09:39:49'),(54,29,4,NULL,'2026-06-04 09:39:49'),(55,30,3,NULL,'2026-06-04 09:39:49'),(56,31,5,NULL,'2026-06-04 09:39:49'),(57,32,2,NULL,'2026-06-04 09:39:49'),(58,33,3,NULL,'2026-06-04 09:39:49'),(59,34,5,NULL,'2026-06-04 09:39:49'),(60,35,4,NULL,'2026-06-04 09:39:49'),(61,36,4,NULL,'2026-06-04 09:39:49'),(62,36,2,NULL,'2026-06-04 09:39:49'),(63,37,5,NULL,'2026-06-04 09:39:49'),(64,37,3,NULL,'2026-06-04 09:39:49'),(65,37,4,NULL,'2026-06-04 09:39:49'),(66,38,3,NULL,'2026-06-04 09:39:49'),(67,38,2,NULL,'2026-06-04 09:39:49'),(68,38,1,NULL,'2026-06-04 09:39:50'),(69,39,4,NULL,'2026-06-04 09:39:50'),(70,40,1,NULL,'2026-06-04 09:39:50'),(71,41,2,NULL,'2026-06-04 09:39:50'),(72,42,1,NULL,'2026-06-04 09:39:50'),(73,42,3,NULL,'2026-06-04 09:39:50'),(74,43,3,NULL,'2026-06-04 09:39:50'),(75,44,3,NULL,'2026-06-04 09:39:50'),(76,44,2,NULL,'2026-06-04 09:39:50'),(77,45,1,NULL,'2026-06-04 09:39:50'),(78,45,3,NULL,'2026-06-04 09:39:50'),(79,46,5,NULL,'2026-06-04 09:39:50'),(80,46,4,NULL,'2026-06-04 09:39:50'),(81,46,3,NULL,'2026-06-04 09:39:50'),(82,47,1,NULL,'2026-06-04 09:39:50'),(83,48,1,NULL,'2026-06-04 09:39:50'),(84,48,2,NULL,'2026-06-04 09:39:50'),(85,48,5,NULL,'2026-06-04 09:39:50'),(86,49,3,NULL,'2026-06-04 09:39:50'),(87,50,4,NULL,'2026-06-04 09:39:50'),(88,50,1,NULL,'2026-06-04 09:39:50'),(89,50,5,NULL,'2026-06-04 09:39:50'),(90,51,1,NULL,'2026-06-04 09:39:50'),(91,52,4,NULL,'2026-06-04 09:39:50'),(92,53,3,NULL,'2026-06-04 09:39:50'),(93,53,2,NULL,'2026-06-04 09:39:52'),(94,1,1,NULL,'2026-06-05 01:54:14');
/*!40000 ALTER TABLE `enrollments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson_completions`
--

DROP TABLE IF EXISTS `lesson_completions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson_completions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `lesson_id` int NOT NULL,
  `completed_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `lesson_id` (`lesson_id`),
  CONSTRAINT `lesson_completions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `lesson_completions_ibfk_2` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson_completions`
--

LOCK TABLES `lesson_completions` WRITE;
/*!40000 ALTER TABLE `lesson_completions` DISABLE KEYS */;
INSERT INTO `lesson_completions` VALUES (1,3,1,'2026-06-04 09:02:55'),(2,3,3,'2026-06-04 09:05:23'),(3,4,12,'2026-06-04 09:40:40'),(4,4,13,'2026-06-04 09:40:40'),(5,4,18,'2026-06-04 09:40:40'),(6,4,19,'2026-06-04 09:40:40'),(7,4,20,'2026-06-04 09:40:40'),(8,5,12,'2026-06-04 09:40:40'),(9,5,13,'2026-06-04 09:40:40'),(10,5,14,'2026-06-04 09:40:40'),(11,5,15,'2026-06-04 09:40:40'),(12,5,16,'2026-06-04 09:40:40'),(13,6,12,'2026-06-04 09:40:40'),(14,6,13,'2026-06-04 09:40:40'),(15,6,14,'2026-06-04 09:40:40'),(16,6,15,'2026-06-04 09:40:40'),(17,6,16,'2026-06-04 09:40:40'),(18,6,17,'2026-06-04 09:40:40'),(19,7,12,'2026-06-04 09:40:40'),(20,7,13,'2026-06-04 09:40:40'),(21,7,18,'2026-06-04 09:40:40'),(22,7,19,'2026-06-04 09:40:40'),(23,7,20,'2026-06-04 09:40:40'),(24,7,21,'2026-06-04 09:40:40'),(25,7,22,'2026-06-04 09:40:41'),(26,8,18,'2026-06-04 09:40:41'),(27,8,19,'2026-06-04 09:40:41'),(28,8,20,'2026-06-04 09:40:41'),(29,9,1,'2026-06-04 09:40:41'),(30,9,2,'2026-06-04 09:40:41'),(31,9,18,'2026-06-04 09:40:41'),(32,9,19,'2026-06-04 09:40:41'),(33,9,20,'2026-06-04 09:40:41'),(34,10,1,'2026-06-04 09:40:41'),(35,10,2,'2026-06-04 09:40:41'),(36,10,3,'2026-06-04 09:40:41'),(37,10,4,'2026-06-04 09:40:41'),(38,10,5,'2026-06-04 09:40:41'),(39,10,6,'2026-06-04 09:40:41'),(40,10,7,'2026-06-04 09:40:41'),(41,10,8,'2026-06-04 09:40:41'),(42,11,18,'2026-06-04 09:40:41'),(43,11,19,'2026-06-04 09:40:41'),(44,11,20,'2026-06-04 09:40:41'),(45,11,1,'2026-06-04 09:40:41'),(46,11,2,'2026-06-04 09:40:41'),(47,11,3,'2026-06-04 09:40:41'),(48,11,4,'2026-06-04 09:40:41'),(49,11,5,'2026-06-04 09:40:41'),(50,11,6,'2026-06-04 09:40:41'),(51,11,7,'2026-06-04 09:40:41'),(52,11,8,'2026-06-04 09:40:41'),(53,13,1,'2026-06-04 09:40:41'),(54,13,2,'2026-06-04 09:40:41'),(55,13,3,'2026-06-04 09:40:41'),(56,13,11,'2026-06-04 09:40:41'),(57,13,12,'2026-06-04 09:40:41'),(58,13,13,'2026-06-04 09:40:41'),(59,13,14,'2026-06-04 09:40:41'),(60,14,18,'2026-06-04 09:40:41'),(61,14,19,'2026-06-04 09:40:41'),(62,15,11,'2026-06-04 09:40:41'),(63,16,18,'2026-06-04 09:40:41'),(64,16,1,'2026-06-04 09:40:41'),(65,16,2,'2026-06-04 09:40:41'),(66,16,3,'2026-06-04 09:40:41'),(67,16,4,'2026-06-04 09:40:41'),(68,17,1,'2026-06-04 09:40:41'),(69,17,2,'2026-06-04 09:40:41'),(70,17,3,'2026-06-04 09:40:41'),(71,17,4,'2026-06-04 09:40:41'),(72,17,11,'2026-06-04 09:40:41'),(73,18,18,'2026-06-04 09:40:41'),(74,18,19,'2026-06-04 09:40:41'),(75,18,20,'2026-06-04 09:40:41'),(76,19,1,'2026-06-04 09:40:41'),(77,19,2,'2026-06-04 09:40:41'),(78,19,3,'2026-06-04 09:40:41'),(79,19,4,'2026-06-04 09:40:41'),(80,19,5,'2026-06-04 09:40:41'),(81,19,6,'2026-06-04 09:40:41'),(82,19,7,'2026-06-04 09:40:41'),(83,19,8,'2026-06-04 09:40:41'),(84,19,18,'2026-06-04 09:40:41'),(85,19,19,'2026-06-04 09:40:41'),(86,19,20,'2026-06-04 09:40:41'),(87,20,18,'2026-06-04 09:40:41'),(88,20,19,'2026-06-04 09:40:41'),(89,20,20,'2026-06-04 09:40:41'),(90,20,21,'2026-06-04 09:40:41'),(91,21,18,'2026-06-04 09:40:41'),(92,21,19,'2026-06-04 09:40:41'),(93,21,20,'2026-06-04 09:40:41'),(94,22,18,'2026-06-04 09:40:41'),(95,22,19,'2026-06-04 09:40:42'),(96,22,20,'2026-06-04 09:40:42'),(97,22,21,'2026-06-04 09:40:42'),(98,23,1,'2026-06-04 09:40:42'),(99,23,2,'2026-06-04 09:40:42'),(100,23,18,'2026-06-04 09:40:42'),(101,24,12,'2026-06-04 09:40:42'),(102,24,13,'2026-06-04 09:40:42'),(103,24,14,'2026-06-04 09:40:42'),(104,24,15,'2026-06-04 09:40:42'),(105,24,18,'2026-06-04 09:40:42'),(106,25,1,'2026-06-04 09:40:42'),(107,27,18,'2026-06-04 09:40:42'),(108,27,19,'2026-06-04 09:40:42'),(109,27,20,'2026-06-04 09:40:42'),(110,27,21,'2026-06-04 09:40:42'),(111,27,22,'2026-06-04 09:40:42'),(112,27,1,'2026-06-04 09:40:42'),(113,27,2,'2026-06-04 09:40:42'),(114,27,3,'2026-06-04 09:40:42'),(115,27,4,'2026-06-04 09:40:42'),(116,28,1,'2026-06-04 09:40:42'),(117,28,2,'2026-06-04 09:40:42'),(118,28,3,'2026-06-04 09:40:42'),(119,28,4,'2026-06-04 09:40:42'),(120,28,5,'2026-06-04 09:40:42'),(121,28,6,'2026-06-04 09:40:42'),(122,29,1,'2026-06-04 09:40:42'),(123,29,2,'2026-06-04 09:40:42'),(124,29,3,'2026-06-04 09:40:42'),(125,29,11,'2026-06-04 09:40:42'),(126,29,18,'2026-06-04 09:40:42'),(127,29,19,'2026-06-04 09:40:42'),(128,29,20,'2026-06-04 09:40:42'),(129,29,21,'2026-06-04 09:40:42'),(130,29,22,'2026-06-04 09:40:42'),(131,30,12,'2026-06-04 09:40:42'),(132,30,13,'2026-06-04 09:40:42'),(133,30,14,'2026-06-04 09:40:42'),(134,30,15,'2026-06-04 09:40:42'),(135,30,16,'2026-06-04 09:40:42'),(136,32,11,'2026-06-04 09:40:42'),(137,33,12,'2026-06-04 09:40:42'),(138,33,13,'2026-06-04 09:40:42'),(139,35,18,'2026-06-04 09:40:42'),(140,35,19,'2026-06-04 09:40:42'),(141,35,20,'2026-06-04 09:40:42'),(142,36,18,'2026-06-04 09:40:42'),(143,36,19,'2026-06-04 09:40:42'),(144,36,11,'2026-06-04 09:40:42'),(145,37,18,'2026-06-04 09:40:42'),(146,37,19,'2026-06-04 09:40:42'),(147,37,20,'2026-06-04 09:40:42'),(148,38,12,'2026-06-04 09:40:42'),(149,38,13,'2026-06-04 09:40:42'),(150,38,14,'2026-06-04 09:40:42'),(151,38,15,'2026-06-04 09:40:42'),(152,38,1,'2026-06-04 09:40:42'),(153,38,2,'2026-06-04 09:40:42'),(154,39,18,'2026-06-04 09:40:42'),(155,39,19,'2026-06-04 09:40:42'),(156,42,1,'2026-06-04 09:40:42'),(157,42,2,'2026-06-04 09:40:42'),(158,42,3,'2026-06-04 09:40:42'),(159,42,4,'2026-06-04 09:40:42'),(160,42,5,'2026-06-04 09:40:42'),(161,42,6,'2026-06-04 09:40:42'),(162,42,7,'2026-06-04 09:40:43'),(163,42,8,'2026-06-04 09:40:43'),(164,42,9,'2026-06-04 09:40:43'),(165,42,10,'2026-06-04 09:40:43'),(166,42,12,'2026-06-04 09:40:43'),(167,42,13,'2026-06-04 09:40:43'),(168,42,14,'2026-06-04 09:40:43'),(169,42,15,'2026-06-04 09:40:43'),(170,43,12,'2026-06-04 09:40:43'),(171,44,12,'2026-06-04 09:40:43'),(172,44,13,'2026-06-04 09:40:43'),(173,44,11,'2026-06-04 09:40:43'),(174,45,1,'2026-06-04 09:40:43'),(175,45,2,'2026-06-04 09:40:43'),(176,45,3,'2026-06-04 09:40:43'),(177,45,4,'2026-06-04 09:40:43'),(178,45,5,'2026-06-04 09:40:43'),(179,46,12,'2026-06-04 09:40:43'),(180,46,13,'2026-06-04 09:40:43'),(181,46,14,'2026-06-04 09:40:43'),(182,46,15,'2026-06-04 09:40:43'),(183,46,16,'2026-06-04 09:40:43'),(184,47,1,'2026-06-04 09:40:43'),(185,47,2,'2026-06-04 09:40:43'),(186,47,3,'2026-06-04 09:40:43'),(187,47,4,'2026-06-04 09:40:43'),(188,47,5,'2026-06-04 09:40:43'),(189,47,6,'2026-06-04 09:40:43'),(190,47,7,'2026-06-04 09:40:43'),(191,47,8,'2026-06-04 09:40:43'),(192,47,9,'2026-06-04 09:40:43'),(193,47,10,'2026-06-04 09:40:43'),(194,48,1,'2026-06-04 09:40:43'),(195,48,2,'2026-06-04 09:40:43'),(196,49,12,'2026-06-04 09:40:43'),(197,49,13,'2026-06-04 09:40:43'),(198,49,14,'2026-06-04 09:40:43'),(199,49,15,'2026-06-04 09:40:43'),(200,49,16,'2026-06-04 09:40:43'),(201,49,17,'2026-06-04 09:40:43'),(202,50,18,'2026-06-04 09:40:43'),(203,50,19,'2026-06-04 09:40:43'),(204,50,1,'2026-06-04 09:40:43'),(205,50,2,'2026-06-04 09:40:43'),(206,50,3,'2026-06-04 09:40:43'),(207,50,4,'2026-06-04 09:40:43'),(208,50,5,'2026-06-04 09:40:43'),(209,51,1,'2026-06-04 09:40:43'),(210,51,2,'2026-06-04 09:40:43'),(211,51,3,'2026-06-04 09:40:43'),(212,51,4,'2026-06-04 09:40:43'),(213,51,5,'2026-06-04 09:40:43'),(214,51,6,'2026-06-04 09:40:43'),(215,51,7,'2026-06-04 09:40:43'),(216,52,18,'2026-06-04 09:40:43'),(217,52,19,'2026-06-04 09:40:43'),(218,52,20,'2026-06-04 09:40:43'),(219,52,21,'2026-06-04 09:40:43'),(220,53,12,'2026-06-04 09:40:43'),(221,53,13,'2026-06-04 09:40:43'),(222,53,14,'2026-06-04 09:40:43'),(223,1,1,'2026-06-05 01:54:21'),(224,1,6,'2026-06-05 01:54:26');
/*!40000 ALTER TABLE `lesson_completions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `lesson_order` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `lessons_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons`
--

LOCK TABLES `lessons` WRITE;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
INSERT INTO `lessons` VALUES (1,1,1,' Hướng dẫn nhập 1 file PowerPoint có sẵn lên Quizizz bài kết thúc khóa học','https://www.youtube.com/watch?v=rwFcdak754k','3:43','2026-06-03 20:17:05','2026-06-03 20:22:48',NULL),(2,1,3,' Hướng dẫn cách đọc Báo cáo trên Quizizz Biết ngay câu nào cả lớp làm sai nhiều nhất','https://www.youtube.com/embed/GmVBOnJkKKc?si=Nah2REbnsQhG2lBo','4:29','2026-06-03 20:18:17','2026-06-03 20:22:58',NULL),(3,1,2,' Hướng dẫn tạo slide bài giảng Quizizz Lessons tương tự PowerPoint','https://www.youtube.com/watch?v=GmVBOnJkKKc','3:43','2026-06-03 20:19:00','2026-06-03 20:20:46',NULL),(4,1,4,' Hướng dẫn tạo Quizizz Cho học sinh làm bài bằng mã QR giấy Lớp không có máy tính vẫn chơi được','https://www.youtube.com/watch?v=ri-Dj85ptzM','6:48','2026-06-03 20:21:13','2026-06-03 20:21:13',NULL),(5,1,5,' Hướng dẫn giao bài tập về nhà trên phần mềm Quizizz gửi cho phụ huynh qua Zalo','https://www.youtube.com/watch?v=vENEL73oCiI','7:17','2026-06-03 20:22:14','2026-06-03 20:22:14',NULL),(6,1,6,' Hướng dẫn tạo và cài đặt học trực tiếp trên lớp với Quizizz','https://www.youtube.com/watch?v=XzfrBwUxzS4','5:34','2026-06-04 09:23:35','2026-06-04 09:23:35',NULL),(7,1,7,' Hướng dẫn sử dụng AI Quizizz tạo câu hỏi từ đường link website, video','https://www.youtube.com/watch?v=WL9f35ZDEac','3:15','2026-06-04 09:23:55','2026-06-04 09:23:55',NULL),(8,1,8,'Hướng dẫn sử dụng AI Quizizz Tự động tạo câu hỏi từ một đoạn văn bản tóm tắt','https://www.youtube.com/watch?v=_CfQ9BUPpaU','2:38','2026-06-04 09:24:14','2026-06-04 09:24:14',NULL),(9,1,9,' Hướng dẫn sao chép câu hỏi từ đề thi của người khác trong 10 giây trên Quizizz','https://www.youtube.com/watch?v=nzlufTZodNA','5:08','2026-06-04 09:24:31','2026-06-04 09:24:31',NULL),(10,1,10,'Hướng dẫn tùy chỉnh thời gian suy nghĩ và điểm số cho từng câu hỏi riêng biệt trên Quizizz','https://www.youtube.com/watch?v=1wD98D377oM','1:06','2026-06-04 09:24:56','2026-06-04 09:24:56',NULL),(11,2,1,' KAHOOT! Hướng dẫn CHI TIẾT về thiết kế TRÒ CHƠI KAHOOT','https://www.youtube.com/watch?v=kqe0a1299G0','18:05','2026-06-04 09:28:29','2026-06-04 09:28:29',NULL),(12,3,1,' Hướng dẫn chi tiết cách tạo lớp học trong Google Classroom','https://www.youtube.com/watch?v=zKAqr3gMOWw','9:21','2026-06-04 09:29:44','2026-06-04 09:29:44',NULL),(13,3,2,' Hướng dẫn phụ huynh học sinh đăng nhập Classroom','https://www.youtube.com/watch?v=4mtFRDAmIjQ','5:14','2026-06-04 09:30:04','2026-06-04 09:30:04',NULL),(14,3,3,' Cách chia sẻ màn hình và trình bày bảng trắng trên google Classroom','https://www.youtube.com/watch?v=YZd5yJ9uHCE','10:24','2026-06-04 09:30:24','2026-06-04 09:30:24',NULL),(15,3,4,' Hướng dẫn học sinh sử dụng các tính năng cơ bản trong Google Classroom','https://www.youtube.com/watch?v=DSuapWd9W8U','5:09','2026-06-04 09:30:43','2026-06-04 09:30:43',NULL),(16,3,5,' Hướng dẫn phụ huynh học sinh nộp bài tập cho con trên Google Classroom','https://www.youtube.com/watch?v=mmHy1MweFVs','5:16','2026-06-04 09:31:01','2026-06-04 09:31:01',NULL),(17,3,6,' Hướng dẫn giáo viên cách giao bài tập trên Google Classroom','https://www.youtube.com/watch?v=q2VEm57lDYg','5:12','2026-06-04 09:31:17','2026-06-04 09:31:17',NULL),(18,4,1,'Bài 1. Giới thiệu giao diện Story view','https://www.youtube.com/watch?v=2qPK3Pg00nw','8:46','2026-06-04 09:32:11','2026-06-04 09:32:11',NULL),(19,4,2,'Bài 2: Giới thiệu giao diện Slide view','https://www.youtube.com/watch?v=59vq7kgaJTY','9:11','2026-06-04 09:32:33','2026-06-04 09:32:33',NULL),(20,4,3,'Bài 3: Điều chỉnh tỉ lệ slide| Phần 1','https://www.youtube.com/watch?v=IL3pcSC0ESc','6:01','2026-06-04 09:32:56','2026-06-04 09:32:56',NULL),(21,4,4,'Bài 3 (Phần 2): Cài đặt thông số trong PLAYER','https://www.youtube.com/watch?v=wcrjtLUdaT0','21:25','2026-06-04 09:33:22','2026-06-04 09:33:22',NULL),(22,4,5,' Bài 4: Thao tác trong tab Home và Format','https://www.youtube.com/watch?v=uIlYhPJ88mQ','8:12','2026-06-04 09:33:51','2026-06-04 09:33:51',NULL);
/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('student','admin') DEFAULT 'student',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@gmail.com','$2b$10$jHx7TTBXObSUEpuFGOqdoOT8OuSFGmCHbVlLOOn8VKatzkhdf0P0a','admin','2026-06-03 08:51:32',NULL),(2,'aaaa','abcd@gmailc.om','$2b$10$uRiXG9AQBTAtjgSNo7aV5uHPnyJKw0tqogAXibgbfxYD3JbQn6fVm','admin','2026-06-03 09:50:18',NULL),(3,'user','user@gmail.com','$2b$10$IHIo4d/An4kdL1O8sxeU5.Y/tCIAfEy5rRpgaXTHc5fIK0ilntRPa','student','2026-06-03 20:55:22',NULL),(4,'Ngô Quang Long','sv1@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(5,'Bùi Minh Hương','sv2@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(6,'Phan Hữu Đạt','sv3@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(7,'Dương Minh Cường','sv4@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(8,'Đỗ Thanh Hùng','sv5@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(9,'Hoàng Tuấn Cường','sv6@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(10,'Võ Ngọc Đạt','sv7@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(11,'Trần Thu Đạt','sv8@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(12,'Vũ Hữu Phương','sv9@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(13,'Lê Hải Tâm','sv10@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(14,'Đặng Ngọc Thành','sv11@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(15,'Huỳnh Mai Hải','sv12@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(16,'Trần Xuân Hoa','sv13@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(17,'Phạm Văn Thành','sv14@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(18,'Nguyễn Quang Phương','sv15@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(19,'Đỗ Xuân Yến','sv16@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(20,'Hồ Tuấn Yến','sv17@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(21,'Huỳnh Minh Hương','sv18@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(22,'Vũ Minh Yến','sv19@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(23,'Phan Hải Sơn','sv20@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(24,'Đặng Quang Sơn','sv21@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(25,'Huỳnh Thùy Thành','sv22@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(26,'Hoàng Mai Hùng','sv23@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(27,'Bùi Quang Cường','sv24@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(28,'Hồ Hải Bình','sv25@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(29,'Lê Đức Tâm','sv26@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(30,'Hoàng Mai My','sv27@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(31,'Ngô Tuấn Hùng','sv28@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(32,'Huỳnh Thanh My','sv29@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(33,'Bùi Xuân Tâm','sv30@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(34,'Võ Tuấn Hải','sv31@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(35,'Lê Tuấn Khoa','sv32@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(36,'Nguyễn Đức Anh','sv33@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(37,'Hoàng Ngọc Thảo','sv34@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(38,'Ngô Hữu Thành','sv35@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(39,'Đặng Thị Trang','sv36@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(40,'Huỳnh Thanh Tùng','sv37@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(41,'Lê Hồng Sơn','sv38@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(42,'Đỗ Văn Thảo','sv39@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(43,'Dương Hải Cường','sv40@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(44,'Đỗ Anh Thảo','sv41@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(45,'Huỳnh Hồng Phương','sv42@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(46,'Vũ Thanh Hương','sv43@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(47,'Trần Hồng Hoa','sv44@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(48,'Bùi Quang Hiếu','sv45@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(49,'Phan Thị Anh','sv46@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(50,'Đặng Anh Sơn','sv47@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(51,'Hồ Tuấn My','sv48@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(52,'Phạm Hải Cường','sv49@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL),(53,'Lý Hải My','sv50@hust.edu.vn','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxep68nV4EzEqC9yq','student','2026-06-04 09:37:58',NULL);
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

-- Dump completed on 2026-06-06 23:39:15
