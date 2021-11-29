-- MySQL dump 10.14  Distrib 5.5.60-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: codo_cron
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Current Database: `codo_cron`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `codo_cron` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `codo_cron`;

--
-- Table structure for table `apscheduler_jobs`
--

DROP TABLE IF EXISTS `apscheduler_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apscheduler_jobs` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `next_run_time` double DEFAULT NULL,
  `job_state` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_apscheduler_jobs_next_run_time` (`next_run_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apscheduler_jobs`
--

LOCK TABLES `apscheduler_jobs` WRITE;
/*!40000 ALTER TABLE `apscheduler_jobs` DISABLE KEYS */;
INSERT INTO `apscheduler_jobs` VALUES ('ls_test',NULL,'���\0\0\0\0\0\0}�(�version�K�id��ls_test��func��\Zcron.applications:exec_cmd��trigger��apscheduler.triggers.cron��CronTrigger���)��}�(hK�timezone��pytz��_p���(�\rAsia/Shanghai�M�qK\0�LMT�t�R��\nstart_date�N�end_date�N�fields�]�(� apscheduler.triggers.cron.fields��	BaseField���)��}�(�name��year��\nis_default���expressions�]��%apscheduler.triggers.cron.expressions��\rAllExpression���)��}��step�Nsbaubh�\nMonthField���)��}�(h�month�h�h ]�h$)��}�h\'Nsbaubh�DayOfMonthField���)��}�(h�day�h�h ]�h$)��}�h\'Nsbaubh�	WeekField���)��}�(h�week�h�h ]�h$)��}�h\'Nsbaubh�DayOfWeekField���)��}�(h�day_of_week�h�h ]�h$)��}�h\'Nsbaubh\Z)��}�(h�hour�h�h ]�h\"�RangeExpression���)��}�(h\'N�first�K�last�Kubaubh\Z)��}�(h�minute�h�h ]�h$)��}�h\'Ksbaubh\Z)��}�(h�second�h�h ]�hM)��}�(h\'NhPK\nhQK\nubaube�jitter�Nub�executor��default��args�)�kwargs�}�(�cmd��\nls -l /tmp��job_id�huh�exec_cmd��misfire_grace_time�K�coalesce���\rmax_instances�K�\rnext_run_time�Nu.');
/*!40000 ALTER TABLE `apscheduler_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_log`
--

DROP TABLE IF EXISTS `cron_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cron_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `task_cmd` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `task_log` text COLLATE utf8mb4_unicode_ci,
  `exec_time` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1336 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_log`
--

LOCK TABLES `cron_log` WRITE;
/*!40000 ALTER TABLE `cron_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cron_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-17 11:08:24
