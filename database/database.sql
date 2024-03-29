-- MariaDB dump 10.19-11.3.2-MariaDB, for osx10.19 (arm64)
--
-- Host: 127.0.0.1    Database: sistem_akademik_sekolah
-- ------------------------------------------------------
-- Server version	11.3.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `absensi_guru`
--

DROP TABLE IF EXISTS `absensi_guru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `absensi_guru` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `guru_id` int(11) NOT NULL,
  `kehadiran_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `absensi_guru`
--

/*!40000 ALTER TABLE `absensi_guru` DISABLE KEYS */;
/*!40000 ALTER TABLE `absensi_guru` ENABLE KEYS */;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

--
-- Table structure for table `generator_data`
--

DROP TABLE IF EXISTS `generator_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generator_data` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`data`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generator_data`
--

/*!40000 ALTER TABLE `generator_data` DISABLE KEYS */;
INSERT INTO `generator_data` VALUES
(1,'{\"Kelas 1\":{\"Senin\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Selasa\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Rabu\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Kamis\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]},\"Kelas 2\":{\"Senin\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Selasa\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Rabu\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Kamis\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Jum\'at\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]}}','2024-03-28 16:36:22','2024-03-28 16:36:22'),
(2,'{\"Kelas 1\":{\"Senin\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Selasa\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Rabu\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Kamis\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Jum\'at\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]},\"Kelas 2\":{\"Senin\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Selasa\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Rabu\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Kamis\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]}}','2024-03-28 21:12:39','2024-03-28 21:12:39'),
(3,'{\"Kelas 1\":{\"Senin\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Selasa\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Rabu\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Kamis\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]},\"Kelas 2\":{\"Senin\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Selasa\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Rabu\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Kamis\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]}}','2024-03-28 21:13:09','2024-03-28 21:13:09'),
(4,'{\"Kelas 1\":{\"Senin\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Selasa\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Rabu\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Kamis\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]},\"Kelas 2\":{\"Senin\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Selasa\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Rabu\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Kamis\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]}}','2024-03-28 21:32:19','2024-03-28 21:32:19'),
(5,'{\"Kelas 1\":{\"Senin\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Selasa\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Rabu\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Kamis\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]},\"Kelas 2\":{\"Senin\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Selasa\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Rabu\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Kamis\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]}}','2024-03-28 22:05:37','2024-03-28 22:05:37'),
(6,'{\"Kelas 1\":{\"Senin\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Selasa\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Rabu\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Kamis\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]},\"Kelas 2\":{\"Senin\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Selasa\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Rabu\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Kamis\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]}}','2024-03-28 22:09:25','2024-03-28 22:09:25'),
(7,'{\"Kelas 1\":{\"Senin\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Selasa\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Rabu\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Kamis\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]},\"Kelas 2\":{\"Senin\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Selasa\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Rabu\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Kamis\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]}}','2024-03-28 22:11:51','2024-03-28 22:11:51'),
(8,'{\"Kelas 1\":{\"Senin\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Selasa\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Rabu\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Kamis\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]},\"Kelas 2\":{\"Senin\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Selasa\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Rabu\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Kamis\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]}}','2024-03-28 22:52:31','2024-03-28 22:52:31'),
(9,'{\"Kelas 1\":{\"Senin\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Selasa\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Rabu\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Kamis\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]},\"Kelas 2\":{\"Senin\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Selasa\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Rabu\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Kamis\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]}}','2024-03-28 22:52:34','2024-03-28 22:52:34'),
(10,'{\"Kelas 1\":{\"Senin\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Selasa\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Rabu\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Kamis\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Jum\'at\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]},\"Kelas 2\":{\"Senin\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Selasa\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Rabu\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Kamis\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]}}','2024-03-28 22:53:03','2024-03-28 22:53:03'),
(11,'{\"Kelas 1\":{\"Senin\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"}],\"Selasa\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Rabu\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Kamis\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Jum\'at\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]},\"Kelas 2\":{\"Senin\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Selasa\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Rabu\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Kamis\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Jum\'at\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]}}','2024-03-29 13:46:37','2024-03-29 13:46:37');
/*!40000 ALTER TABLE `generator_data` ENABLE KEYS */;

--
-- Table structure for table `guru`
--

DROP TABLE IF EXISTS `guru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guru` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_card` varchar(10) NOT NULL,
  `nip` varchar(30) DEFAULT NULL,
  `nama_guru` varchar(50) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `kode` varchar(5) DEFAULT NULL,
  `jk` enum('L','P') NOT NULL,
  `telp` varchar(15) DEFAULT NULL,
  `tmp_lahir` varchar(50) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guru`
--

/*!40000 ALTER TABLE `guru` DISABLE KEYS */;
INSERT INTO `guru` VALUES
(1,'00001','19210052','Umrah maharani',1,'001','P','085398503495','Pinrang','2001-05-10','uploads/guru/23171022042020_female.jpg','2023-05-15 02:33:02','2023-05-15 02:33:02',NULL),
(2,'00001','19210052','Alex Sip',2,'001','L','085398503495','Pinrang','2001-05-10','uploads/guru/23171022042020_female.jpg','2023-05-15 02:33:02','2023-05-15 02:33:02',NULL),
(3,'00002','19210053','Sardi S. Ag',4,'002','L',NULL,NULL,NULL,'uploads/guru/23171022042020_female.jpg',NULL,NULL,NULL),
(4,'00003','19210054','Mawardi S. Pd',3,'003','L',NULL,NULL,NULL,'uploads/guru/23171022042020_female.jpg',NULL,NULL,NULL);
/*!40000 ALTER TABLE `guru` ENABLE KEYS */;

--
-- Table structure for table `hari`
--

DROP TABLE IF EXISTS `hari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hari` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_hari` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hari`
--

/*!40000 ALTER TABLE `hari` DISABLE KEYS */;
INSERT INTO `hari` VALUES
(1,'Senin','2023-05-15 02:12:09','2023-05-15 02:12:09'),
(2,'Selasa','2023-05-15 02:12:09','2023-05-15 02:12:09'),
(3,'Rabu','2023-05-15 02:12:09','2023-05-15 02:12:09'),
(4,'Kamis','2023-05-15 02:12:09','2023-05-15 02:12:09'),
(5,'Jum\'at','2023-05-15 02:12:09','2023-05-15 02:12:09');
/*!40000 ALTER TABLE `hari` ENABLE KEYS */;

--
-- Table structure for table `jadwal`
--

DROP TABLE IF EXISTS `jadwal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jadwal` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hari_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `ruang_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jadwal`
--

/*!40000 ALTER TABLE `jadwal` DISABLE KEYS */;
INSERT INTO `jadwal` VALUES
(1,1,1,1,1,'08:00:00','09:00:00',1,'2023-05-15 02:37:31','2023-05-15 02:37:31',NULL);
/*!40000 ALTER TABLE `jadwal` ENABLE KEYS */;

--
-- Table structure for table `jam_ajar`
--

DROP TABLE IF EXISTS `jam_ajar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jam_ajar` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jam_ajar`
--

/*!40000 ALTER TABLE `jam_ajar` DISABLE KEYS */;
INSERT INTO `jam_ajar` VALUES
(1,'08:00-08:45','2024-03-27 03:41:57','2024-03-27 03:41:57'),
(2,'08:45-09:30','2024-03-27 03:41:57','2024-03-27 03:41:57'),
(3,'09:30-10:15','2024-03-27 03:41:57','2024-03-27 03:41:57'),
(4,'10:15-11:00','2024-03-27 03:41:57','2024-03-27 03:41:57'),
(5,'11:15-12:00','2024-03-27 03:41:57','2024-03-27 03:41:57'),
(6,'12:00-12:45','2024-03-27 03:41:57','2024-03-27 03:41:57'),
(7,'12:45-13:30','2024-03-27 03:41:57','2024-03-27 03:41:57'),
(8,'13:30-14:10','2024-03-27 03:41:57','2024-03-27 03:41:57');
/*!40000 ALTER TABLE `jam_ajar` ENABLE KEYS */;

--
-- Table structure for table `kehadiran`
--

DROP TABLE IF EXISTS `kehadiran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kehadiran` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ket` varchar(30) NOT NULL,
  `color` varchar(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kehadiran`
--

/*!40000 ALTER TABLE `kehadiran` DISABLE KEYS */;
INSERT INTO `kehadiran` VALUES
(1,'Hadir','3C0','2023-05-15 02:12:09','2023-05-15 02:12:09'),
(2,'Izin','0CF','2023-05-15 02:12:09','2023-05-15 02:12:09'),
(3,'Bertugas Keluar','F90','2023-05-15 02:12:09','2023-05-15 02:12:09'),
(4,'Sakit','FF0','2023-05-15 02:12:09','2023-05-15 02:12:09'),
(5,'Terlambat','7F0','2023-05-15 02:12:09','2023-05-15 02:12:09'),
(6,'Tanpa Keterangan','F00','2023-05-15 02:12:09','2023-05-15 02:12:09');
/*!40000 ALTER TABLE `kehadiran` ENABLE KEYS */;

--
-- Table structure for table `kelas`
--

DROP TABLE IF EXISTS `kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kelas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(50) NOT NULL,
  `paket_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kelas`
--

/*!40000 ALTER TABLE `kelas` DISABLE KEYS */;
INSERT INTO `kelas` VALUES
(1,'Kelas 1',4,1,'2023-05-15 02:35:20','2023-05-15 02:35:20',NULL),
(2,'Kelas 2',4,1,'2023-05-15 02:35:20','2023-05-15 02:35:20',NULL);
/*!40000 ALTER TABLE `kelas` ENABLE KEYS */;

--
-- Table structure for table `mapel`
--

DROP TABLE IF EXISTS `mapel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapel` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_mapel` varchar(50) NOT NULL,
  `paket_id` int(11) NOT NULL,
  `kelompok` enum('A','B','C') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `hour_weekly` int(11) NOT NULL DEFAULT 0,
  `max_session` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapel`
--

/*!40000 ALTER TABLE `mapel` DISABLE KEYS */;
INSERT INTO `mapel` VALUES
(1,'Matematika',9,'A','2023-05-15 02:16:32','2023-05-15 02:16:32',NULL,12,2),
(2,'Geografi',9,'A','2023-05-15 02:21:47','2023-05-15 02:21:47',NULL,16,2),
(3,'Olahraga',9,'A',NULL,NULL,NULL,4,4),
(4,'Agama',9,'A',NULL,NULL,NULL,8,2);
/*!40000 ALTER TABLE `mapel` ENABLE KEYS */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2020_03_12_092809_create_hari_table',1),
(5,'2020_03_12_092854_create_guru_table',1),
(6,'2020_03_12_092926_create_absensi_guru_table',1),
(7,'2020_03_12_092941_create_jadwal_table',1),
(8,'2020_03_12_092953_create_kehadiran_table',1),
(9,'2020_03_12_093010_create_kelas_table',1),
(10,'2020_03_12_093018_create_mapel_table',1),
(11,'2020_03_12_093027_create_nilai_table',1),
(12,'2020_03_12_093036_create_paket_table',1),
(13,'2020_03_12_093050_create_pengumuman_table',1),
(14,'2020_03_12_093102_create_rapot_table',1),
(15,'2020_03_12_093117_create_ruang_table',1),
(16,'2020_03_12_093130_create_siswa_table',1),
(17,'2020_03_16_102220_create_ulangan_table',1),
(18,'2020_04_07_094355_create_sikap_table',1),
(19,'2024_03_21_170525_add_max_weekly_and_hour_on_mapel',2),
(20,'2024_03_27_103002_create_jam_ajar',3),
(21,'2024_03_28_201558_create_generator_data',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

--
-- Table structure for table `nilai`
--

DROP TABLE IF EXISTS `nilai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nilai` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `guru_id` int(11) NOT NULL,
  `kkm` int(11) NOT NULL DEFAULT 70,
  `deskripsi_a` text DEFAULT NULL,
  `deskripsi_b` text DEFAULT NULL,
  `deskripsi_c` text DEFAULT NULL,
  `deskripsi_d` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nilai`
--

/*!40000 ALTER TABLE `nilai` DISABLE KEYS */;
INSERT INTO `nilai` VALUES
(1,1,70,NULL,NULL,NULL,NULL,'2023-05-15 02:33:02','2023-05-15 02:33:02');
/*!40000 ALTER TABLE `nilai` ENABLE KEYS */;

--
-- Table structure for table `paket`
--

DROP TABLE IF EXISTS `paket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paket` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ket` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paket`
--

/*!40000 ALTER TABLE `paket` DISABLE KEYS */;
INSERT INTO `paket` VALUES
(1,'Bisnis kontruksi dan Properti','2023-05-15 02:12:10','2023-05-15 02:12:10'),
(2,'Desain Permodelan dan Informasi Bangunan','2023-05-15 02:12:10','2023-05-15 02:12:10'),
(3,'Elektronika Industri','2023-05-15 02:12:10','2023-05-15 02:12:10'),
(4,'Otomasi Industri','2023-05-15 02:12:10','2023-05-15 02:12:10'),
(5,'Teknik Pemesinan','2023-05-15 02:12:10','2023-05-15 02:12:10'),
(6,'Teknik dan Bisnis Sepeda Motor','2023-05-15 02:12:10','2023-05-15 02:12:10'),
(7,'Rekayasa Perangkat Lunak','2023-05-15 02:12:10','2023-05-15 02:12:10'),
(8,'Teknik Pengelasan','2023-05-15 02:12:10','2023-05-15 02:12:10');
/*!40000 ALTER TABLE `paket` ENABLE KEYS */;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

--
-- Table structure for table `pengumuman`
--

DROP TABLE IF EXISTS `pengumuman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pengumuman` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `opsi` varchar(32) NOT NULL,
  `isi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengumuman`
--

/*!40000 ALTER TABLE `pengumuman` DISABLE KEYS */;
INSERT INTO `pengumuman` VALUES
(1,'pengumuman','pengumuman','2023-05-15 02:12:09','2023-05-15 02:12:09');
/*!40000 ALTER TABLE `pengumuman` ENABLE KEYS */;

--
-- Table structure for table `rapot`
--

DROP TABLE IF EXISTS `rapot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rapot` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `siswa_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `p_nilai` varchar(5) NOT NULL,
  `p_predikat` varchar(5) NOT NULL,
  `p_deskripsi` text NOT NULL,
  `k_nilai` varchar(5) DEFAULT NULL,
  `k_predikat` varchar(5) DEFAULT NULL,
  `k_deskripsi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rapot`
--

/*!40000 ALTER TABLE `rapot` DISABLE KEYS */;
/*!40000 ALTER TABLE `rapot` ENABLE KEYS */;

--
-- Table structure for table `ruang`
--

DROP TABLE IF EXISTS `ruang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ruang` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_ruang` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruang`
--

/*!40000 ALTER TABLE `ruang` DISABLE KEYS */;
INSERT INTO `ruang` VALUES
(1,'Ruang 01','2023-05-15 02:12:10','2023-05-15 02:12:10'),
(2,'Ruang 02','2023-05-15 02:12:10','2023-05-15 02:12:10'),
(3,'Ruang 03','2023-05-15 02:12:10','2023-05-15 02:12:10'),
(4,'Ruang 04','2023-05-15 02:12:10','2023-05-15 02:12:10'),
(5,'Ruang 05','2023-05-15 02:12:11','2023-05-15 02:12:11'),
(6,'Ruang 06','2023-05-15 02:12:11','2023-05-15 02:12:11'),
(7,'Ruang 07','2023-05-15 02:12:11','2023-05-15 02:12:11'),
(8,'Ruang 08','2023-05-15 02:12:11','2023-05-15 02:12:11'),
(9,'Ruang 09','2023-05-15 02:12:11','2023-05-15 02:12:11'),
(10,'Ruang 10','2023-05-15 02:12:11','2023-05-15 02:12:11'),
(11,'Ruang 11','2023-05-15 02:12:11','2023-05-15 02:12:11'),
(12,'Ruang 12','2023-05-15 02:12:11','2023-05-15 02:12:11'),
(13,'Ruang 13','2023-05-15 02:12:11','2023-05-15 02:12:11'),
(14,'Ruang 14','2023-05-15 02:12:11','2023-05-15 02:12:11'),
(15,'Ruang 15','2023-05-15 02:12:11','2023-05-15 02:12:11'),
(16,'Ruang 16','2023-05-15 02:12:11','2023-05-15 02:12:11'),
(17,'Ruang 17','2023-05-15 02:12:11','2023-05-15 02:12:11'),
(18,'Ruang 18','2023-05-15 02:12:11','2023-05-15 02:12:11'),
(19,'Ruang 19','2023-05-15 02:12:11','2023-05-15 02:12:11'),
(20,'Ruang 20','2023-05-15 02:12:11','2023-05-15 02:12:11'),
(21,'Ruang 21','2023-05-15 02:12:12','2023-05-15 02:12:12'),
(22,'Ruang 22','2023-05-15 02:12:12','2023-05-15 02:12:12'),
(23,'Ruang 23','2023-05-15 02:12:12','2023-05-15 02:12:12'),
(24,'Ruang 24','2023-05-15 02:12:12','2023-05-15 02:12:12'),
(25,'Ruang 25','2023-05-15 02:12:12','2023-05-15 02:12:12'),
(26,'Ruang 26','2023-05-15 02:12:12','2023-05-15 02:12:12'),
(27,'Ruang 27','2023-05-15 02:12:12','2023-05-15 02:12:12'),
(28,'Ruang 28','2023-05-15 02:12:12','2023-05-15 02:12:12'),
(29,'Ruang 29','2023-05-15 02:12:12','2023-05-15 02:12:12'),
(30,'Ruang 30','2023-05-15 02:12:12','2023-05-15 02:12:12'),
(31,'Ruang 31','2023-05-15 02:12:12','2023-05-15 02:12:12'),
(32,'Ruang 32','2023-05-15 02:12:13','2023-05-15 02:12:13'),
(33,'Ruang 33','2023-05-15 02:12:13','2023-05-15 02:12:13'),
(34,'Ruang 34','2023-05-15 02:12:13','2023-05-15 02:12:13'),
(35,'Ruang 35','2023-05-15 02:12:13','2023-05-15 02:12:13'),
(36,'Ruang 36','2023-05-15 02:12:13','2023-05-15 02:12:13'),
(37,'Ruang 37','2023-05-15 02:12:13','2023-05-15 02:12:13'),
(38,'Ruang 38','2023-05-15 02:12:13','2023-05-15 02:12:13'),
(39,'Ruang 39','2023-05-15 02:12:13','2023-05-15 02:12:13'),
(40,'Ruang 40','2023-05-15 02:12:13','2023-05-15 02:12:13');
/*!40000 ALTER TABLE `ruang` ENABLE KEYS */;

--
-- Table structure for table `sikap`
--

DROP TABLE IF EXISTS `sikap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sikap` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `siswa_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `sikap_1` varchar(5) DEFAULT NULL,
  `sikap_2` varchar(5) DEFAULT NULL,
  `sikap_3` varchar(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sikap`
--

/*!40000 ALTER TABLE `sikap` DISABLE KEYS */;
/*!40000 ALTER TABLE `sikap` ENABLE KEYS */;

--
-- Table structure for table `siswa`
--

DROP TABLE IF EXISTS `siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siswa` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `no_induk` varchar(30) NOT NULL,
  `nis` varchar(30) DEFAULT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `telp` varchar(15) DEFAULT NULL,
  `tmp_lahir` varchar(50) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `foto` varchar(255) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siswa`
--

/*!40000 ALTER TABLE `siswa` DISABLE KEYS */;
INSERT INTO `siswa` VALUES
(1,'19210053','19210053','Azzur Gifari','L','082195767864','Ambon','2002-02-01','uploads/siswa/52471919042020_male.jpg',1,'2023-05-15 02:36:23','2023-05-15 02:41:08','2023-05-15 02:41:08');
/*!40000 ALTER TABLE `siswa` ENABLE KEYS */;

--
-- Table structure for table `ulangan`
--

DROP TABLE IF EXISTS `ulangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ulangan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `siswa_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `ulha_1` varchar(5) DEFAULT NULL,
  `ulha_2` varchar(5) DEFAULT NULL,
  `uts` varchar(5) DEFAULT NULL,
  `ulha_3` varchar(5) DEFAULT NULL,
  `uas` varchar(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ulangan`
--

/*!40000 ALTER TABLE `ulangan` DISABLE KEYS */;
/*!40000 ALTER TABLE `ulangan` ENABLE KEYS */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('Admin','Guru','Siswa','Orang Tua') NOT NULL,
  `no_induk` varchar(255) DEFAULT NULL,
  `id_card` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'Admin','admin@gmail.com',NULL,'$2y$10$kzKt5yb1EcA/m1ciL1hiUe3P19R0mwY3fSgUtPt9lRCYZbrjfZ/oK','Admin',NULL,NULL,NULL,'2023-05-15 02:12:13','2023-05-15 02:12:13',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

--
-- Dumping routines for database 'sistem_akademik_sekolah'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-29 20:48:04
