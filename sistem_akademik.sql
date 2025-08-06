-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2024 at 04:44 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi_guru`
--

CREATE TABLE `absensi_guru` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `guru_id` int(11) NOT NULL,
  `kehadiran_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `generator_data`
--

CREATE TABLE `generator_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `generator_data`
--

INSERT INTO `generator_data` (`id`, `data`, `created_at`, `updated_at`) VALUES
(1, '{\"X     1\":{\"Senin\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Sahrun, M.Pd\",\"namaMapel\":\"BP\",\"kelompok\":\"A\",\"code\":\"43a\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Wahyudi Barmawi, S.S., M.AP\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"32u\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Wardi Saleh, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"24m\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"28o\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"36q\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Nur Farida, S.Pd\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"33p\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Husain Hamsah, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"27q\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Suhaimi Hi. Husen, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"38s\"}],\"Selasa\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Anisa\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"44j\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Wa Ode Asmawati, S.pd\",\"namaMapel\":\"Sejarah\",\"kelompok\":\"A\",\"code\":\"5t\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Nairia Bobi, S.Pd\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"42u\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"10h\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"37k\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Nursinah Umasangadji, S,pd\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"1h\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Darwin Nurdin, M.pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"6l\"}],\"Rabu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Sakina Badar, S.Pdi\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"40h\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Wa Ode Marniati, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"11o\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"37k\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"23w\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Sahrun, M.Pd\",\"namaMapel\":\"BP\",\"kelompok\":\"A\",\"code\":\"43a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"25r\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Wahyudi Barmawi, S.S., M.AP\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"32u\"}],\"Kamis\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"37k\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Bakri Zen, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"14h\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Wahyudi Barmawi, S.S., M.AP\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"32u\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Zainab, S.Pd\",\"namaMapel\":\"Mulok\",\"kelompok\":\"A\",\"code\":\"31z\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"28o\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Bakri Zen, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"14h\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Surtina Makmun, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"35w\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Wa Ode Marniati, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"11o\"}],\"Jum\'at\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"15l\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"23w\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"22v\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Rafli Tempola, M.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"13k\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"28o\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Husain Hamsah, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"27q\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"}],\"Sabtu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Suhaimi Hi. Husen, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"38s\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Suriana Masini, S.Pdi\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"29x\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Karmila Paputungan, S.pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"4i\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Bakri Zen, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"14h\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"25r\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"28o\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"37k\"}]},\"X     2\":{\"Senin\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Sahrun, M.Pd\",\"namaMapel\":\"BP\",\"kelompok\":\"A\",\"code\":\"43a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Nairia Bobi, S.Pd\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"42u\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Jufri M. Nur, SE\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"21x\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Darwin Nurdin, M.pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"6l\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Rini Agriani F. Tomayto, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"39n\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Suhaimi Hi. Husen, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"38s\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Wa Ode Asmawati, S.pd\",\"namaMapel\":\"Sejarah\",\"kelompok\":\"A\",\"code\":\"5t\"}],\"Selasa\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"15l\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"28o\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Wa Ode Marniati, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"11o\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"15l\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"23w\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"23w\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Wa Ode Asmawati, S.pd\",\"namaMapel\":\"Sejarah\",\"kelompok\":\"A\",\"code\":\"5t\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Rina Sahamrin, S.Pd\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"19x\"}],\"Rabu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Wa Ode Asmawati, S.pd\",\"namaMapel\":\"Sejarah\",\"kelompok\":\"A\",\"code\":\"5t\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"3j\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Wahyudi Barmawi, S.S., M.AP\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"32u\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Fitria Majid, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"16m\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"25r\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Rina Sahamrin, S.Pd\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"19x\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Rini Agriani F. Tomayto, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"39n\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Bakri Zen, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"14h\"}],\"Kamis\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Husain Hamsah, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"27q\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Zainab, S.Pd\",\"namaMapel\":\"Mulok\",\"kelompok\":\"A\",\"code\":\"31z\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Husain Hamsah, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"27q\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Nur Farida, S.Pd\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"33p\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"25r\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"12s\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Wardi Saleh, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"24m\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Anisa\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"44j\"}],\"Jum\'at\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"28o\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"12s\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"15l\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Sahrun, M.Pd\",\"namaMapel\":\"BP\",\"kelompok\":\"A\",\"code\":\"43a\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Marwati, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"22v\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Karmila Paputungan, S.pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"4i\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Sahrun, M.Pd\",\"namaMapel\":\"BP\",\"kelompok\":\"A\",\"code\":\"43a\"}],\"Sabtu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"22v\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Suriana Masini, S.Pdi\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"29x\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Nursinah Umasangadji, S,pd\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"1h\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Nur Farida, S.Pd\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"33p\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Nurlela Adam, S.Pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"20i\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Rini Agriani F. Tomayto, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"39n\"}]},\"X     3\":{\"Senin\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Marwati, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Suhaimi Hi. Husen, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"38s\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"23w\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"34k\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Wa Ode Asmawati, S.pd\",\"namaMapel\":\"Sejarah\",\"kelompok\":\"A\",\"code\":\"5t\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Wardi Saleh, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"24m\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"22v\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Fitria Majid, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"16m\"}],\"Selasa\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Karmila Paputungan, S.pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"4i\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Karmila Paputungan, S.pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"4i\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"3j\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Nurlela Adam, S.Pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"20i\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Surtina Makmun, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"35w\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"22v\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Suhaimi Hi. Husen, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"38s\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"37k\"}],\"Rabu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Kalam Abd. Kahar, S.Kom\",\"namaMapel\":\"Tik\",\"kelompok\":\"A\",\"code\":\"41y\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Husain Hamsah, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"27q\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"37k\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Jufri M. Nur, SE\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"21x\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Anisa\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"44j\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"37k\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"23w\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Jufri M. Nur, SE\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"21x\"}],\"Kamis\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"22v\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Sariman Hamjah, S.Pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"26j\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Surtina Makmun, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"35w\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Anisa\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"44j\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Bakri Zen, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"14h\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"23w\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Karmila Paputungan, S.pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"4i\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"36q\"}],\"Jum\'at\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"10h\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Bakri Zen, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"14h\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Nursinah Umasangadji, S,pd\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"1h\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Wa Ode Marniati, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"11o\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Husain Hamsah, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"27q\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Wahyudi Barmawi, S.S., M.AP\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"32u\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Mujahid, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"17l\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Nur Farida, S.Pd\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"33p\"}],\"Sabtu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"25r\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"25r\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"3j\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"23w\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"15l\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Wardi Saleh, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"24m\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"25r\"}]},\"X     4\":{\"Senin\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Sariman Hamjah, S.Pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"26j\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Sariman Hamjah, S.Pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"26j\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Wa Ode Marniati, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"11o\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"15l\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Rini Agriani F. Tomayto, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"39n\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Anisa\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"44j\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Rina Sahamrin, S.Pd\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"19x\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Wahyudi Barmawi, S.S., M.AP\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"32u\"}],\"Selasa\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Zainab, S.Pd\",\"namaMapel\":\"Mulok\",\"kelompok\":\"A\",\"code\":\"31z\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Suhaimi Hi. Husen, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"38s\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"36q\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Nur Farida, S.Pd\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"33p\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Jufri M. Nur, SE\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"21x\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Wa Ode Marniati, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"11o\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"28o\"}],\"Rabu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"36q\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"3j\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Sahrun, M.Pd\",\"namaMapel\":\"BP\",\"kelompok\":\"A\",\"code\":\"43a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Wa Ode Asmawati, S.pd\",\"namaMapel\":\"Sejarah\",\"kelompok\":\"A\",\"code\":\"5t\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"}],\"Kamis\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"12s\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Mujahid, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"17l\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Sariman Hamjah, S.Pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"26j\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Marwati, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"9q\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"3j\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"}],\"Jum\'at\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Anisa\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"44j\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Rina Sahamrin, S.Pd\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"19x\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Zainab, S.Pd\",\"namaMapel\":\"Mulok\",\"kelompok\":\"A\",\"code\":\"31z\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"37k\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Darwin Nurdin, M.pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"6l\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Sakina Badar, S.Pdi\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"40h\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Marwati, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Wardi Saleh, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"24m\"}],\"Sabtu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Sakina Badar, S.Pdi\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"40h\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Darwin Nurdin, M.pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"6l\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"34k\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Nairia Bobi, S.Pd\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"42u\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"34k\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Marwati, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Wa Ode Marniati, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"11o\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"}]},\"X    5\":{\"Senin\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Wardi Saleh, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"24m\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"9q\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Jufri M. Nur, SE\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"21x\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Wahyudi Barmawi, S.S., M.AP\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"32u\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Wa Ode Marniati, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"11o\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"37k\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"12s\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"22v\"}],\"Selasa\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Rini Agriani F. Tomayto, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"39n\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Fitria Majid, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"16m\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"15l\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Sahrun, M.Pd\",\"namaMapel\":\"BP\",\"kelompok\":\"A\",\"code\":\"43a\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Anisa\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"44j\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"36q\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"25r\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Jufri M. Nur, SE\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"21x\"}],\"Rabu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Husain Hamsah, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"27q\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Kalam Abd. Kahar, S.Kom\",\"namaMapel\":\"Tik\",\"kelompok\":\"A\",\"code\":\"41y\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"37k\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Kalam Abd. Kahar, S.Kom\",\"namaMapel\":\"Tik\",\"kelompok\":\"A\",\"code\":\"41y\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Kalam Abd. Kahar, S.Kom\",\"namaMapel\":\"Tik\",\"kelompok\":\"A\",\"code\":\"41y\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Suriana Masini, S.Pdi\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"29x\"}],\"Kamis\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Nurlela Adam, S.Pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"20i\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Karmila Paputungan, S.pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"4i\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Darwin Nurdin, M.pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"6l\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Jufri M. Nur, SE\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"21x\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Karmila Paputungan, S.pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"4i\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Wa Ode Asmawati, S.pd\",\"namaMapel\":\"Sejarah\",\"kelompok\":\"A\",\"code\":\"5t\"}],\"Jum\'at\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Darwin Nurdin, M.pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"6l\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"25r\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Anisa\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"44j\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Jufri M. Nur, SE\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"21x\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"34k\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"15l\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"}],\"Sabtu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Nur Farida, S.Pd\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"33p\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Sahrun, M.Pd\",\"namaMapel\":\"BP\",\"kelompok\":\"A\",\"code\":\"43a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Zainab, S.Pd\",\"namaMapel\":\"Mulok\",\"kelompok\":\"A\",\"code\":\"31z\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Zainab, S.Pd\",\"namaMapel\":\"Mulok\",\"kelompok\":\"A\",\"code\":\"31z\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Surtina Makmun, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"35w\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"9q\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Fitria Majid, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"16m\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"}]},\"X    6\":{\"Senin\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"18r\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Nurlela Adam, S.Pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"20i\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Rina Sahamrin, S.Pd\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"19x\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Rina Sahamrin, S.Pd\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"19x\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"23w\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Nur Farida, S.Pd\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"33p\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Rini Agriani F. Tomayto, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"39n\"}],\"Selasa\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"28o\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Wa Ode Marniati, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"11o\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Suhaimi Hi. Husen, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"38s\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"36q\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Anisa\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"44j\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Kalam Abd. Kahar, S.Kom\",\"namaMapel\":\"Tik\",\"kelompok\":\"A\",\"code\":\"41y\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Suriana Masini, S.Pdi\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"29x\"}],\"Rabu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Bakri Zen, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"14h\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"15l\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Fitria Majid, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"16m\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Husain Hamsah, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"27q\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"9q\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Mujahid, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"17l\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"10h\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"22v\"}],\"Kamis\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Sakina Badar, S.Pdi\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"40h\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Wardi Saleh, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"24m\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"15l\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"15l\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Sakina Badar, S.Pdi\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"40h\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Sariman Hamjah, S.Pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"26j\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Nairia Bobi, S.Pd\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"42u\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Sakina Badar, S.Pdi\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"40h\"}],\"Jum\'at\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Husain Hamsah, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"27q\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Suriana Masini, S.Pdi\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"29x\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"10h\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"18r\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Kalam Abd. Kahar, S.Kom\",\"namaMapel\":\"Tik\",\"kelompok\":\"A\",\"code\":\"41y\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Rafli Tempola, M.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"13k\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Surtina Makmun, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"35w\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Sakina Badar, S.Pdi\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"40h\"}],\"Sabtu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"23w\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"9q\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Wa Ode Asmawati, S.pd\",\"namaMapel\":\"Sejarah\",\"kelompok\":\"A\",\"code\":\"5t\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"28o\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Karmila Paputungan, S.pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"4i\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Darwin Nurdin, M.pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"6l\"}]},\"X    7\":{\"Senin\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Wa Ode Asmawati, S.pd\",\"namaMapel\":\"Sejarah\",\"kelompok\":\"A\",\"code\":\"5t\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Sakina Badar, S.Pdi\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"40h\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Rina Sahamrin, S.Pd\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"19x\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"15l\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"18r\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Jufri M. Nur, SE\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"21x\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Suriana Masini, S.Pdi\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"29x\"}],\"Selasa\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"18r\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Surtina Makmun, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"35w\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Sariman Hamjah, S.Pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"26j\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Marwati, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Rina Sahamrin, S.Pd\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"19x\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Karmila Paputungan, S.pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"4i\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Rafli Tempola, M.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"13k\"}],\"Rabu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"22v\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"22v\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"28o\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Wa Ode Marniati, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"11o\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"36q\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Wardi Saleh, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"24m\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"34k\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Suhaimi Hi. Husen, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"38s\"}],\"Kamis\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"36q\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Rini Agriani F. Tomayto, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"39n\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Nairia Bobi, S.Pd\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"42u\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Rina Sahamrin, S.Pd\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"19x\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Wahyudi Barmawi, S.S., M.AP\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"32u\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"25r\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Marwati, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"}],\"Jum\'at\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"12s\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Fitria Majid, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"16m\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Nurlela Adam, S.Pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"20i\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"9q\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Suriana Masini, S.Pdi\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"29x\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Rafli Tempola, M.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"13k\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"34k\"}],\"Sabtu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Kalam Abd. Kahar, S.Kom\",\"namaMapel\":\"Tik\",\"kelompok\":\"A\",\"code\":\"41y\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Anisa\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"44j\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Sakina Badar, S.Pdi\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"40h\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Jufri M. Nur, SE\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"21x\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"22v\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Rina Sahamrin, S.Pd\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"19x\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"10h\"}]},\"X    8\":{\"Senin\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"28o\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"23w\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Wahyudi Barmawi, S.S., M.AP\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"32u\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Kalam Abd. Kahar, S.Kom\",\"namaMapel\":\"Tik\",\"kelompok\":\"A\",\"code\":\"41y\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Surtina Makmun, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"35w\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Nursinah Umasangadji, S,pd\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"1h\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"28o\"}],\"Selasa\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"9q\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"28o\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Jufri M. Nur, SE\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"21x\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Mujahid, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"17l\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Suhaimi Hi. Husen, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"38s\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"15l\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Mujahid, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"17l\"}],\"Rabu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"3j\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Marwati, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Rini Agriani F. Tomayto, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"39n\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"12s\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"10h\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Anisa\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"44j\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"9q\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"12s\"}],\"Kamis\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Suhaimi Hi. Husen, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"38s\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Nur Farida, S.Pd\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"33p\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Zainab, S.Pd\",\"namaMapel\":\"Mulok\",\"kelompok\":\"A\",\"code\":\"31z\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"34k\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Fitria Majid, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"16m\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Bakri Zen, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"14h\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Wahyudi Barmawi, S.S., M.AP\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"32u\"}],\"Jum\'at\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Rini Agriani F. Tomayto, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"39n\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"9q\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Suhaimi Hi. Husen, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"38s\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Suriana Masini, S.Pdi\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"29x\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"10h\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Nur Farida, S.Pd\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"33p\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Jufri M. Nur, SE\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"21x\"}],\"Sabtu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"12s\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"23w\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"10h\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Wahyudi Barmawi, S.S., M.AP\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"32u\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Sahrun, M.Pd\",\"namaMapel\":\"BP\",\"kelompok\":\"A\",\"code\":\"43a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Wahyudi Barmawi, S.S., M.AP\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"32u\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"}]},\"XI MIA 1\":{\"Senin\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Nurlela Adam, S.Pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"20i\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"12s\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Zainab, S.Pd\",\"namaMapel\":\"Mulok\",\"kelompok\":\"A\",\"code\":\"31z\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"12s\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Husain Hamsah, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"27q\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Zainab, S.Pd\",\"namaMapel\":\"Mulok\",\"kelompok\":\"A\",\"code\":\"31z\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Nursinah Umasangadji, S,pd\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"1h\"}],\"Selasa\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Surtina Makmun, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"35w\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Sakina Badar, S.Pdi\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"40h\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"37k\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Nursinah Umasangadji, S,pd\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"1h\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"12s\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"28o\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"9q\"}],\"Rabu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"37k\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Rina Sahamrin, S.Pd\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"19x\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Sahrun, M.Pd\",\"namaMapel\":\"BP\",\"kelompok\":\"A\",\"code\":\"43a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Rafli Tempola, M.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"13k\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"25r\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Wardi Saleh, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"24m\"}],\"Kamis\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"10h\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"36q\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"10h\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Wahyudi Barmawi, S.S., M.AP\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"32u\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Karmila Paputungan, S.pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"4i\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"9q\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Sakina Badar, S.Pdi\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"40h\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Suhaimi Hi. Husen, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"38s\"}],\"Jum\'at\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Sahrun, M.Pd\",\"namaMapel\":\"BP\",\"kelompok\":\"A\",\"code\":\"43a\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Nurlela Adam, S.Pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"20i\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"3j\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Nairia Bobi, S.Pd\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"42u\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Jufri M. Nur, SE\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"21x\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Marwati, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Darwin Nurdin, M.pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"6l\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"10h\"}],\"Sabtu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"37k\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Mujahid, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"17l\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Kalam Abd. Kahar, S.Kom\",\"namaMapel\":\"Tik\",\"kelompok\":\"A\",\"code\":\"41y\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"34k\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"23w\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Rafli Tempola, M.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"13k\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Karmila Paputungan, S.pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"4i\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Nursinah Umasangadji, S,pd\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"1h\"}]},\"XI MIA 2\":{\"Senin\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Surtina Makmun, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"35w\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Nurlela Adam, S.Pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"20i\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Surtina Makmun, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"35w\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Jufri M. Nur, SE\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"21x\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Bakri Zen, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"14h\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"23w\"}],\"Selasa\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Wahyudi Barmawi, S.S., M.AP\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"32u\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Marwati, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Kalam Abd. Kahar, S.Kom\",\"namaMapel\":\"Tik\",\"kelompok\":\"A\",\"code\":\"41y\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Suhaimi Hi. Husen, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"38s\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Wardi Saleh, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"24m\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"3j\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"22v\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"18r\"}],\"Rabu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"15l\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"25r\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"18r\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Wahyudi Barmawi, S.S., M.AP\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"32u\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Wa Ode Marniati, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"11o\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"28o\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Bakri Zen, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"14h\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"23w\"}],\"Kamis\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"18r\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Suriana Masini, S.Pdi\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"29x\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Bakri Zen, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"14h\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Sakina Badar, S.Pdi\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"40h\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Nairia Bobi, S.Pd\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"42u\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Suriana Masini, S.Pdi\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"29x\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"10h\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Sariman Hamjah, S.Pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"26j\"}],\"Jum\'at\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Sakina Badar, S.Pdi\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"40h\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Rini Agriani F. Tomayto, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"39n\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"25r\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"37k\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Karmila Paputungan, S.pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"4i\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Rini Agriani F. Tomayto, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"39n\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Marwati, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"}],\"Sabtu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"28o\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Suhaimi Hi. Husen, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"38s\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"25r\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Nurlela Adam, S.Pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"20i\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Suriana Masini, S.Pdi\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"29x\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Mujahid, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"17l\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"3j\"}]},\"XI MIA 3\":{\"Senin\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Rini Agriani F. Tomayto, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"39n\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Darwin Nurdin, M.pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"6l\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"9q\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Wa Ode Asmawati, S.pd\",\"namaMapel\":\"Sejarah\",\"kelompok\":\"A\",\"code\":\"5t\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"37k\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"}],\"Selasa\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Sakina Badar, S.Pdi\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"40h\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"3j\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"18r\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Wa Ode Marniati, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"11o\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Marwati, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"36q\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"}],\"Rabu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Nur Farida, S.Pd\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"33p\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"9q\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"15l\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"23w\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Fitria Majid, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"16m\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"12s\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"12s\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"34k\"}],\"Kamis\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Marwati, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"12s\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Suhaimi Hi. Husen, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"38s\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"3j\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Marwati, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Darwin Nurdin, M.pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"6l\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"37k\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"34k\"}],\"Jum\'at\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"23w\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Jufri M. Nur, SE\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"21x\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Wardi Saleh, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"24m\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"36q\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Fitria Majid, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"16m\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Darwin Nurdin, M.pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"6l\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Anisa\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"44j\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"18r\"}],\"Sabtu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"10h\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"12s\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Wardi Saleh, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"24m\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Rafli Tempola, M.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"13k\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"36q\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Zainab, S.Pd\",\"namaMapel\":\"Mulok\",\"kelompok\":\"A\",\"code\":\"31z\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Husain Hamsah, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"27q\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"18r\"}]},\"XI MIA 4\":{\"Senin\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Nairia Bobi, S.Pd\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"42u\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Nur Farida, S.Pd\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"33p\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Karmila Paputungan, S.pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"4i\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Fitria Majid, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"16m\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"9q\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Wa Ode Asmawati, S.pd\",\"namaMapel\":\"Sejarah\",\"kelompok\":\"A\",\"code\":\"5t\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"36q\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Sahrun, M.Pd\",\"namaMapel\":\"BP\",\"kelompok\":\"A\",\"code\":\"43a\"}],\"Selasa\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Wa Ode Asmawati, S.pd\",\"namaMapel\":\"Sejarah\",\"kelompok\":\"A\",\"code\":\"5t\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Husain Hamsah, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"27q\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Nur Farida, S.Pd\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"33p\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Kalam Abd. Kahar, S.Kom\",\"namaMapel\":\"Tik\",\"kelompok\":\"A\",\"code\":\"41y\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Fitria Majid, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"16m\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Sariman Hamjah, S.Pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"26j\"}],\"Rabu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Jufri M. Nur, SE\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"21x\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"37k\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Karmila Paputungan, S.pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"4i\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"18r\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Karmila Paputungan, S.pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"4i\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Sariman Hamjah, S.Pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"26j\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Mujahid, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"17l\"}],\"Kamis\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Darwin Nurdin, M.pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"6l\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Husain Hamsah, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"27q\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Suriana Masini, S.Pdi\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"29x\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Nairia Bobi, S.Pd\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"42u\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Wardi Saleh, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"24m\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Suhaimi Hi. Husen, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"38s\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Fitria Majid, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"16m\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Marwati, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"}],\"Jum\'at\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Suriana Masini, S.Pdi\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"29x\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Rafli Tempola, M.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"13k\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Wa Ode Marniati, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"11o\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Nur Farida, S.Pd\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"33p\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"12s\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Sariman Hamjah, S.Pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"26j\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Jufri M. Nur, SE\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"21x\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Mujahid, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"17l\"}],\"Sabtu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"34k\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Sariman Hamjah, S.Pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"26j\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Husain Hamsah, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"27q\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"25r\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"18r\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Marwati, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Nairia Bobi, S.Pd\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"42u\"}]},\"XI MIA 5\":{\"Senin\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"22v\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Wa Ode Asmawati, S.pd\",\"namaMapel\":\"Sejarah\",\"kelompok\":\"A\",\"code\":\"5t\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"3j\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"36q\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Sakina Badar, S.Pdi\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"40h\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"9q\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"}],\"Selasa\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"3j\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Rafli Tempola, M.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"13k\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"9q\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Wa Ode Asmawati, S.pd\",\"namaMapel\":\"Sejarah\",\"kelompok\":\"A\",\"code\":\"5t\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"34k\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Karmila Paputungan, S.pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"4i\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"34k\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Nur Farida, S.Pd\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"33p\"}],\"Rabu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Anisa\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"44j\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"10h\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Husain Hamsah, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"27q\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"9q\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Suhaimi Hi. Husen, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"38s\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Suhaimi Hi. Husen, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"38s\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"10h\"}],\"Kamis\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Nairia Bobi, S.Pd\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"42u\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"18r\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Sahrun, M.Pd\",\"namaMapel\":\"BP\",\"kelompok\":\"A\",\"code\":\"43a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"25r\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"10h\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"18r\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Suhaimi Hi. Husen, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"38s\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"22v\"}],\"Jum\'at\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Bakri Zen, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"14h\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"28o\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"34k\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Fitria Majid, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"16m\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"3j\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Nurlela Adam, S.Pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"20i\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Wa Ode Asmawati, S.pd\",\"namaMapel\":\"Sejarah\",\"kelompok\":\"A\",\"code\":\"5t\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Anisa\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"44j\"}],\"Sabtu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Karmila Paputungan, S.pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"4i\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Rina Sahamrin, S.Pd\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"19x\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Rina Sahamrin, S.Pd\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"19x\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Wardi Saleh, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"24m\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Nur Farida, S.Pd\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"33p\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Kalam Abd. Kahar, S.Kom\",\"namaMapel\":\"Tik\",\"kelompok\":\"A\",\"code\":\"41y\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Sariman Hamjah, S.Pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"26j\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"12s\"}]},\"XI IIS 1\":{\"Senin\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Kalam Abd. Kahar, S.Kom\",\"namaMapel\":\"Tik\",\"kelompok\":\"A\",\"code\":\"41y\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"36q\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"25r\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"25r\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Zainab, S.Pd\",\"namaMapel\":\"Mulok\",\"kelompok\":\"A\",\"code\":\"31z\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"37k\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"10h\"}],\"Selasa\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Darwin Nurdin, M.pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"6l\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Zainab, S.Pd\",\"namaMapel\":\"Mulok\",\"kelompok\":\"A\",\"code\":\"31z\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Jufri M. Nur, SE\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"21x\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Anisa\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"44j\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"18r\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Wahyudi Barmawi, S.S., M.AP\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"32u\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Wa Ode Marniati, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"11o\"}],\"Rabu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Surtina Makmun, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"35w\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Surtina Makmun, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"35w\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Wa Ode Asmawati, S.pd\",\"namaMapel\":\"Sejarah\",\"kelompok\":\"A\",\"code\":\"5t\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Anisa\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"44j\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"34k\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"23w\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Suriana Masini, S.Pdi\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"29x\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Nursinah Umasangadji, S,pd\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"1h\"}],\"Kamis\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Sariman Hamjah, S.Pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"26j\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Kalam Abd. Kahar, S.Kom\",\"namaMapel\":\"Tik\",\"kelompok\":\"A\",\"code\":\"41y\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Wardi Saleh, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"24m\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Sahrun, M.Pd\",\"namaMapel\":\"BP\",\"kelompok\":\"A\",\"code\":\"43a\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Fitria Majid, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"16m\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Rafli Tempola, M.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"13k\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Rafli Tempola, M.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"13k\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Wardi Saleh, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"24m\"}],\"Jum\'at\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Nursinah Umasangadji, S,pd\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"1h\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Surtina Makmun, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"35w\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"28o\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Rini Agriani F. Tomayto, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"39n\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"34k\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Anisa\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"44j\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"18r\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Wa Ode Asmawati, S.pd\",\"namaMapel\":\"Sejarah\",\"kelompok\":\"A\",\"code\":\"5t\"}],\"Sabtu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Wa Ode Marniati, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"11o\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"15l\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Rina Sahamrin, S.Pd\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"19x\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"23w\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"22v\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Surtina Makmun, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"35w\"}]},\"XI IIS 2\":{\"Senin\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"23w\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Karmila Paputungan, S.pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"4i\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Suhaimi Hi. Husen, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"38s\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Mujahid, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"17l\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Nairia Bobi, S.Pd\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"42u\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Fitria Majid, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"16m\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Rini Agriani F. Tomayto, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"39n\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Wa Ode Marniati, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"11o\"}],\"Selasa\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Jufri M. Nur, SE\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"21x\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Darwin Nurdin, M.pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"6l\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"37k\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Sariman Hamjah, S.Pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"26j\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Sahrun, M.Pd\",\"namaMapel\":\"BP\",\"kelompok\":\"A\",\"code\":\"43a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Nairia Bobi, S.Pd\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"42u\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Wardi Saleh, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"24m\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Fitria Majid, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"16m\"}],\"Rabu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Rini Agriani F. Tomayto, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"39n\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"3j\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"36q\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Nursinah Umasangadji, S,pd\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"1h\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"22v\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Wa Ode Marniati, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"11o\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Nairia Bobi, S.Pd\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"42u\"}],\"Kamis\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Nur Farida, S.Pd\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"33p\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Nurlela Adam, S.Pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"20i\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Karmila Paputungan, S.pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"4i\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Sariman Hamjah, S.Pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"26j\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"18r\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"15l\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Nurlela Adam, S.Pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"20i\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"3j\"}],\"Jum\'at\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Karmila Paputungan, S.pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"4i\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Surtina Makmun, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"35w\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"12s\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Sakina Badar, S.Pdi\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"40h\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"37k\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"22v\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Sariman Hamjah, S.Pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"26j\"}],\"Sabtu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Wa Ode Marniati, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"11o\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Sakina Badar, S.Pdi\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"40h\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"36q\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"9q\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Wa Ode Marniati, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"11o\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"34k\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Sahrun, M.Pd\",\"namaMapel\":\"BP\",\"kelompok\":\"A\",\"code\":\"43a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Suriana Masini, S.Pdi\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"29x\"}]},\"XI IIS 3\":{\"Senin\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"25r\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Suriana Masini, S.Pdi\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"29x\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Surtina Makmun, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"35w\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"18r\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"23w\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Suhaimi Hi. Husen, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"38s\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"18r\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Darwin Nurdin, M.pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"6l\"}],\"Selasa\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Sariman Hamjah, S.Pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"26j\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Nairia Bobi, S.Pd\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"42u\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Nur Farida, S.Pd\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"33p\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"18r\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Rini Agriani F. Tomayto, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"39n\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Wa Ode Marniati, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"11o\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"12s\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"25r\"}],\"Rabu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Rina Sahamrin, S.Pd\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"19x\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Suhaimi Hi. Husen, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"38s\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Zainab, S.Pd\",\"namaMapel\":\"Mulok\",\"kelompok\":\"A\",\"code\":\"31z\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"28o\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Surtina Makmun, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"35w\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Rafli Tempola, M.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"13k\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Marwati, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Karmila Paputungan, S.pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"4i\"}],\"Kamis\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Zainab, S.Pd\",\"namaMapel\":\"Mulok\",\"kelompok\":\"A\",\"code\":\"31z\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Rina Sahamrin, S.Pd\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"19x\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Nursinah Umasangadji, S,pd\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"1h\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Surtina Makmun, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"35w\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Zainab, S.Pd\",\"namaMapel\":\"Mulok\",\"kelompok\":\"A\",\"code\":\"31z\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Rini Agriani F. Tomayto, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"39n\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Zainab, S.Pd\",\"namaMapel\":\"Mulok\",\"kelompok\":\"A\",\"code\":\"31z\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Bakri Zen, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"14h\"}],\"Jum\'at\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Kalam Abd. Kahar, S.Kom\",\"namaMapel\":\"Tik\",\"kelompok\":\"A\",\"code\":\"41y\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Wa Ode Marniati, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"11o\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Wahyudi Barmawi, S.S., M.AP\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"32u\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Anisa\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"44j\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"28o\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Kalam Abd. Kahar, S.Kom\",\"namaMapel\":\"Tik\",\"kelompok\":\"A\",\"code\":\"41y\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"12s\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"12s\"}],\"Sabtu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Mujahid, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"17l\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"36q\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"15l\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"28o\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"3j\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"15l\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Suriana Masini, S.Pdi\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"29x\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"22v\"}]},\"XII MIA 1\":{\"Senin\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Sakina Badar, S.Pdi\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"40h\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Wardi Saleh, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"24m\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Fitria Majid, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"16m\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Nursinah Umasangadji, S,pd\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"1h\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"28o\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Nurlela Adam, S.Pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"20i\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Husain Hamsah, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"27q\"}],\"Selasa\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Nurlela Adam, S.Pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"20i\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Sahrun, M.Pd\",\"namaMapel\":\"BP\",\"kelompok\":\"A\",\"code\":\"43a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Darwin Nurdin, M.pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"6l\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Nairia Bobi, S.Pd\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"42u\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"25r\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"10h\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"9q\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Nurlela Adam, S.Pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"20i\"}],\"Rabu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Wa Ode Marniati, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"11o\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Nursinah Umasangadji, S,pd\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"1h\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Nurlela Adam, S.Pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"20i\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"34k\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"3j\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Sakina Badar, S.Pdi\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"40h\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Husain Hamsah, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"27q\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Darwin Nurdin, M.pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"6l\"}],\"Kamis\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Rini Agriani F. Tomayto, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"39n\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Surtina Makmun, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"35w\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"3j\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Karmila Paputungan, S.pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"4i\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Sariman Hamjah, S.Pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"26j\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Zainab, S.Pd\",\"namaMapel\":\"Mulok\",\"kelompok\":\"A\",\"code\":\"31z\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Rini Agriani F. Tomayto, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"39n\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"37k\"}],\"Jum\'at\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"25r\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"25r\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"34k\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"22v\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"25r\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Fitria Majid, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"16m\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Husain Hamsah, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"27q\"}],\"Sabtu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Wardi Saleh, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"24m\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"34k\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Bakri Zen, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"14h\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Fitria Majid, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"16m\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Nairia Bobi, S.Pd\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"42u\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Nursinah Umasangadji, S,pd\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"1h\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"36q\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Nur Farida, S.Pd\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"33p\"}]},\"XII MIA 2\":{\"Senin\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"36q\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Darwin Nurdin, M.pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"6l\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Fitria Majid, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"16m\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Mujahid, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"17l\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"9q\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"12s\"}],\"Selasa\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Mujahid, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"17l\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"22v\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"34k\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Fitria Majid, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"16m\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Sakina Badar, S.Pdi\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"40h\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Nairia Bobi, S.Pd\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"42u\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Karmila Paputungan, S.pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"4i\"}],\"Rabu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Nurlela Adam, S.Pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"20i\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Darwin Nurdin, M.pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"6l\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Surtina Makmun, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"35w\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Bakri Zen, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"14h\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Mujahid, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"17l\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"10h\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Sahrun, M.Pd\",\"namaMapel\":\"BP\",\"kelompok\":\"A\",\"code\":\"43a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Sakina Badar, S.Pdi\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"40h\"}],\"Kamis\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"37k\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Marwati, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Wa Ode Asmawati, S.pd\",\"namaMapel\":\"Sejarah\",\"kelompok\":\"A\",\"code\":\"5t\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Anisa\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"44j\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Kalam Abd. Kahar, S.Kom\",\"namaMapel\":\"Tik\",\"kelompok\":\"A\",\"code\":\"41y\"}],\"Jum\'at\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Zainab, S.Pd\",\"namaMapel\":\"Mulok\",\"kelompok\":\"A\",\"code\":\"31z\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Sahrun, M.Pd\",\"namaMapel\":\"BP\",\"kelompok\":\"A\",\"code\":\"43a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"36q\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Sariman Hamjah, S.Pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"26j\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Husain Hamsah, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"27q\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Surtina Makmun, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"35w\"}],\"Sabtu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"3j\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Marwati, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Fitria Majid, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"16m\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Nursinah Umasangadji, S,pd\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"1h\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Wa Ode Asmawati, S.pd\",\"namaMapel\":\"Sejarah\",\"kelompok\":\"A\",\"code\":\"5t\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Surtina Makmun, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"35w\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Anisa\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"44j\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Anisa\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"44j\"}]},\"XII MIA 3\":{\"Senin\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Mujahid, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"17l\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Kalam Abd. Kahar, S.Kom\",\"namaMapel\":\"Tik\",\"kelompok\":\"A\",\"code\":\"41y\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Sahrun, M.Pd\",\"namaMapel\":\"BP\",\"kelompok\":\"A\",\"code\":\"43a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Anisa\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"44j\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"28o\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"25r\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"3j\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Kalam Abd. Kahar, S.Kom\",\"namaMapel\":\"Tik\",\"kelompok\":\"A\",\"code\":\"41y\"}],\"Selasa\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Bakri Zen, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"14h\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"15l\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Mujahid, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"17l\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Husain Hamsah, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"27q\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Nairia Bobi, S.Pd\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"42u\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Nur Farida, S.Pd\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"33p\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Surtina Makmun, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"35w\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Anisa\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"44j\"}],\"Rabu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Fitria Majid, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"16m\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"28o\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Nairia Bobi, S.Pd\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"42u\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Mujahid, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"17l\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Rina Sahamrin, S.Pd\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"19x\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"9q\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Sakina Badar, S.Pdi\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"40h\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Anisa\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"44j\"}],\"Kamis\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Rafli Tempola, M.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"13k\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"34k\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Nurlela Adam, S.Pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"20i\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"10h\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Wa Ode Marniati, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"11o\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Jufri M. Nur, SE\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"21x\"}],\"Jum\'at\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"22v\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"37k\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Sakina Badar, S.Pdi\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"40h\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Suhaimi Hi. Husen, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"38s\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Wahyudi Barmawi, S.S., M.AP\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"32u\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Nairia Bobi, S.Pd\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"42u\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Nur Farida, S.Pd\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"33p\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Rafli Tempola, M.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"13k\"}],\"Sabtu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"15l\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Nurlela Adam, S.Pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"20i\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Sariman Hamjah, S.Pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"26j\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"18r\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Nurlela Adam, S.Pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"20i\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"9q\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Marwati, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"}]},\"XII MIA 4\":{\"Senin\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"15l\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"10h\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"37k\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Bakri Zen, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"14h\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Bakri Zen, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"14h\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"15l\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Mujahid, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"17l\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Nurlela Adam, S.Pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"20i\"}],\"Selasa\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Rina Sahamrin, S.Pd\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"19x\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Nursinah Umasangadji, S,pd\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"1h\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Sahrun, M.Pd\",\"namaMapel\":\"BP\",\"kelompok\":\"A\",\"code\":\"43a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"22v\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Husain Hamsah, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"27q\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Suriana Masini, S.Pdi\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"29x\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"3j\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"34k\"}],\"Rabu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Suriana Masini, S.Pdi\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"29x\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Wa Ode Marniati, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"11o\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Suhaimi Hi. Husen, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"38s\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"18r\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Nairia Bobi, S.Pd\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"42u\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"}],\"Kamis\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Fitria Majid, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"16m\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Rina Sahamrin, S.Pd\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"19x\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Nur Farida, S.Pd\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"33p\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"22v\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"23w\"}],\"Jum\'at\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"18r\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"23w\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Rafli Tempola, M.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"13k\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Nairia Bobi, S.Pd\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"42u\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"23w\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Sakina Badar, S.Pdi\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"40h\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"28o\"}],\"Sabtu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"9q\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"10h\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Jufri M. Nur, SE\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"21x\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"18r\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"10h\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"37k\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"34k\"}]},\"XII MIA 5\":{\"Senin\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Husain Hamsah, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"27q\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"25r\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Marwati, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Suhaimi Hi. Husen, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"38s\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Mujahid, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"17l\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"10h\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Sakina Badar, S.Pdi\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"40h\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Sariman Hamjah, S.Pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"26j\"}],\"Selasa\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Nursinah Umasangadji, S,pd\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"1h\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"12s\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Surtina Makmun, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"35w\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Wa Ode Marniati, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"11o\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Mujahid, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"17l\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"36q\"}],\"Rabu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"28o\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Wardi Saleh, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"24m\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"9q\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Marwati, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Sakina Badar, S.Pdi\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"40h\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Darwin Nurdin, M.pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"6l\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Wa Ode Marniati, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"11o\"}],\"Kamis\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Rina Sahamrin, S.Pd\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"19x\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Sahrun, M.Pd\",\"namaMapel\":\"BP\",\"kelompok\":\"A\",\"code\":\"43a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Rafli Tempola, M.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"13k\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"36q\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Anisa\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"44j\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"22v\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Wa Ode Asmawati, S.pd\",\"namaMapel\":\"Sejarah\",\"kelompok\":\"A\",\"code\":\"5t\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Darwin Nurdin, M.pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"6l\"}],\"Jum\'at\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Suhaimi Hi. Husen, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"38s\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Sariman Hamjah, S.Pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"26j\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"9q\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"3j\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Rina Sahamrin, S.Pd\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"19x\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Nairia Bobi, S.Pd\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"42u\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Bakri Zen, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"14h\"}],\"Sabtu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Nurlela Adam, S.Pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"20i\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"37k\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"18r\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Wa Ode Asmawati, S.pd\",\"namaMapel\":\"Sejarah\",\"kelompok\":\"A\",\"code\":\"5t\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Mujahid, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"17l\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Sariman Hamjah, S.Pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"26j\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Rafli Tempola, M.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"13k\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"15l\"}]},\"XII IIS 1\":{\"Senin\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"3j\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Rina Sahamrin, S.Pd\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"19x\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Husain Hamsah, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"27q\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"3j\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"22v\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Rina Sahamrin, S.Pd\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"19x\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"34k\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"37k\"}],\"Selasa\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"34k\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Nur Farida, S.Pd\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"33p\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"23w\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Darwin Nurdin, M.pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"6l\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Kalam Abd. Kahar, S.Kom\",\"namaMapel\":\"Tik\",\"kelompok\":\"A\",\"code\":\"41y\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"9q\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Nursinah Umasangadji, S,pd\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"1h\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Marwati, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"}],\"Rabu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Wardi Saleh, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"24m\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Bakri Zen, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"14h\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Darwin Nurdin, M.pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"6l\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"15l\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Kalam Abd. Kahar, S.Kom\",\"namaMapel\":\"Tik\",\"kelompok\":\"A\",\"code\":\"41y\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"15l\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Rina Sahamrin, S.Pd\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"19x\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"9q\"}],\"Kamis\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Kalam Abd. Kahar, S.Kom\",\"namaMapel\":\"Tik\",\"kelompok\":\"A\",\"code\":\"41y\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"8p\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"30n\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"28o\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"15l\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Jufri M. Nur, SE\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"21x\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"3j\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Mujahid, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"17l\"}],\"Jum\'at\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Sariman Hamjah, S.Pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"26j\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"22v\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Suriana Masini, S.Pdi\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"29x\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"15l\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Surtina Makmun, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"35w\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Fitria Majid, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"16m\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Sahrun, M.Pd\",\"namaMapel\":\"BP\",\"kelompok\":\"A\",\"code\":\"43a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"37k\"}],\"Sabtu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Sahrun, M.Pd\",\"namaMapel\":\"BP\",\"kelompok\":\"A\",\"code\":\"43a\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Zainab, S.Pd\",\"namaMapel\":\"Mulok\",\"kelompok\":\"A\",\"code\":\"31z\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"28o\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Suhaimi Hi. Husen, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"38s\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"22v\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Sakina Badar, S.Pdi\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"40h\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Wardi Saleh, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"24m\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"36q\"}]},\"XII IIS 2\":{\"Senin\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Wahyudi Barmawi, S.S., M.AP\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"32u\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"3j\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Suriana Masini, S.Pdi\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"29x\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Nurlela Adam, S.Pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"20i\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Marwati, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Rafli Tempola, M.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"13k\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Sariman Hamjah, S.Pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"26j\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Rafli Tempola, M.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"13k\"}],\"Selasa\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"10h\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Wahyudi Barmawi, S.S., M.AP\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"32u\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Rini Agriani F. Tomayto, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"39n\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Rina Sahamrin, S.Pd\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"19x\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Marwati, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"23w\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"12s\"}],\"Rabu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Darwin Nurdin, M.pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"6l\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Nairia Bobi, S.Pd\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"42u\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Wardi Saleh, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"24m\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Suriana Masini, S.Pdi\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"29x\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"12s\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"34k\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Wahyudi Barmawi, S.S., M.AP\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"32u\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Surtina Makmun, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"35w\"}],\"Kamis\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Karmila Paputungan, S.pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"4i\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"23w\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"22v\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Wa Ode Marniati, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"11o\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"36q\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Husain Hamsah, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"27q\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Nur Farida, S.Pd\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"33p\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"12s\"}],\"Jum\'at\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Nurlela Adam, S.Pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"20i\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Darwin Nurdin, M.pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"6l\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"12s\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Rina Sahamrin, S.Pd\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"19x\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Mujahid, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"17l\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"36q\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Zainab, S.Pd\",\"namaMapel\":\"Mulok\",\"kelompok\":\"A\",\"code\":\"31z\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Wahyudi Barmawi, S.S., M.AP\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"32u\"}],\"Sabtu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Marwati, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Karmila Paputungan, S.pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"4i\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Mujahid, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"17l\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Abd. Rahman Puasa, S.pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"2s\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Rini Agriani F. Tomayto, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"39n\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"12s\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Nur Farida, S.Pd\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"33p\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Sakina Badar, S.Pdi\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"40h\"}]}}', '2024-11-11 01:03:26', '2024-11-11 01:03:26');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_card` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_guru` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `kode` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jk` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmp_lahir` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `id_card`, `nip`, `nama_guru`, `mapel_id`, `kode`, `jk`, `telp`, `tmp_lahir`, `tgl_lahir`, `foto`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '00001', '196507311990022002', 'Nursinah Umasangadji, S,pd', 8, '001', 'P', '080000001', 'Kawata', '1965-07-31', 'uploads/guru/23171022042020_female.jpg', '2024-04-15 12:06:27', '2024-04-15 12:06:27', NULL),
(2, '00002', '197605142005011011', 'Abd. Rahman Puasa, S.pd', 19, '002', 'L', NULL, 'Goji', NULL, 'uploads/guru/35251431012020_male.jpg', '2024-04-15 12:08:17', '2024-04-15 12:48:05', NULL),
(3, '00003', '198005222006041022', 'Riswan A. Siraju, M.pd', 10, '003', 'L', '080000003', 'Kayoa', NULL, 'uploads/guru/35251431012020_male.jpg', '2024-04-15 12:10:38', '2024-04-15 12:10:38', NULL),
(4, '00004', '197610122005012013', 'Karmila Paputungan, S.pd', 9, '004', 'P', '080004', 'Ambang', NULL, 'uploads/guru/23171022042020_female.jpg', '2024-04-15 12:13:44', '2024-04-15 12:13:44', NULL),
(5, '00005', '197509012005012013', 'Wa Ode Asmawati, S.pd', 20, '005', 'P', NULL, NULL, NULL, 'uploads/guru/23171022042020_female.jpg', '2024-04-15 12:16:21', '2024-04-15 12:16:21', NULL),
(6, '00006', '197704212005011013', 'Darwin Nurdin, M.pd', 12, '006', 'L', NULL, NULL, NULL, 'uploads/guru/35251431012020_male.jpg', '2024-04-15 12:17:51', '2024-04-15 12:17:51', NULL),
(7, '00007', '197507042005022004', 'Marwati, M.pd', 10, '007', 'P', NULL, NULL, NULL, 'uploads/guru/23171022042020_female.jpg', '2024-04-15 12:20:38', '2024-04-15 12:20:38', NULL),
(8, '00008', '197504042006042026', 'Masia Lapenampo, S.Ag', 16, '008', 'P', NULL, NULL, NULL, 'uploads/guru/23171022042020_female.jpg', '2024-04-15 12:21:44', '2024-04-15 12:21:44', NULL),
(9, '00009', '197906282006042019', 'Sukarsi Talib, S.Pd', 17, '009', 'P', NULL, NULL, NULL, 'uploads/guru/57381011112024_anime-wallpaper-7628310_1280.jpg', '2024-04-15 12:24:23', '2024-11-11 02:38:57', NULL),
(10, '00010', '197606293007012021', 'Wiwik Wahyuningsih, S.Ag', 8, '010', 'P', NULL, NULL, NULL, 'uploads/guru/23171022042020_female.jpg', '2024-04-15 12:25:48', '2024-04-15 12:25:48', NULL),
(11, '00011', '197011222006042007', 'Wa Ode Marniati, S.Pd', 15, '011', 'P', NULL, NULL, NULL, 'uploads/guru/23171022042020_female.jpg', '2024-04-15 12:27:36', '2024-04-15 12:27:36', NULL),
(12, '00012', '197802122007011025', 'Rahmat Djalil, S.Pd', 19, '012', 'L', NULL, NULL, NULL, 'uploads/guru/35251431012020_male.jpg', '2024-04-15 12:28:48', '2024-04-15 12:28:48', NULL),
(13, '00013', '198802162023211017', 'Rafli Tempola, M.Pd', 11, '013', 'L', NULL, NULL, NULL, 'uploads/guru/35251431012020_male.jpg', '2024-04-15 12:30:01', '2024-04-15 12:30:01', NULL),
(14, '00014', '196905252007011042', 'Bakri Zen, S.Ag', 8, '014', 'L', NULL, NULL, NULL, 'uploads/guru/35251431012020_male.jpg', '2024-04-15 12:30:36', '2024-04-15 12:30:36', NULL),
(15, '00015', '198205062009032001', 'Rahmi Daeyani Soeraidy, S.Pd', 12, '015', 'P', NULL, NULL, NULL, 'uploads/guru/23171022042020_female.jpg', '2024-04-15 12:32:02', '2024-04-15 12:32:02', NULL),
(16, '00016', '198207272008042004', 'Fitria Majid, S.Pd', 13, '016', 'P', NULL, NULL, NULL, 'uploads/guru/23171022042020_female.jpg', '2024-04-15 12:32:58', '2024-04-15 12:32:58', NULL),
(17, '00017', '199006282019031004', 'Mujahid, S.Pd', 12, '017', 'L', NULL, NULL, NULL, 'uploads/guru/35251431012020_male.jpg', '2024-04-15 12:34:26', '2024-04-15 12:34:26', NULL),
(18, '00018', '199102082019032002', 'Sarina La Efendi, S.Pd', 18, '018', 'P', NULL, NULL, NULL, 'uploads/guru/23171022042020_female.jpg', '2024-04-15 12:36:02', '2024-04-15 12:36:02', NULL),
(19, '00019', '198205202022212025', 'Rina Sahamrin, S.Pd', 24, '019', 'P', NULL, NULL, NULL, 'uploads/guru/23171022042020_female.jpg', '2024-04-15 12:37:49', '2024-04-15 12:37:49', NULL),
(20, '00020', '198206302022212016', 'Nurlela Adam, S.Pd', 9, '020', 'P', NULL, NULL, NULL, 'uploads/guru/23171022042020_female.jpg', '2024-04-15 12:39:00', '2024-04-15 12:39:00', NULL),
(21, '00021', '197708062022211001', 'Jufri M. Nur, SE', 24, '021', 'L', NULL, NULL, NULL, 'uploads/guru/35251431012020_male.jpg', '2024-04-15 12:40:03', '2024-04-15 12:40:03', NULL),
(22, '00022', '198207062022211008', 'Samad HI Yusuf, S.Pd', 22, '022', 'L', NULL, NULL, NULL, 'uploads/guru/35251431012020_male.jpg', '2024-04-15 12:42:14', '2024-04-15 12:42:14', NULL),
(23, '00023', NULL, 'Mulyati Rahman, S.Pd', 23, '023', 'P', NULL, NULL, NULL, 'uploads/guru/23171022042020_female.jpg', '2024-04-15 12:43:41', '2024-04-15 12:43:41', NULL),
(24, '00024', '198802162023211017', 'Wardi Saleh, S.Pd', 13, '024', 'L', NULL, NULL, NULL, 'uploads/guru/35251431012020_male.jpg', '2024-04-15 12:44:56', '2024-04-15 12:44:56', NULL),
(25, '00025', '198911052023211012', 'Husen Umar, S.Pd', 18, '025', 'L', NULL, NULL, NULL, 'uploads/guru/35251431012020_male.jpg', '2024-04-15 12:46:12', '2024-04-15 12:46:12', NULL),
(26, '00026', '198603102023211016', 'Sariman Hamjah, S.Pd', 10, '026', 'L', NULL, NULL, NULL, 'uploads/guru/35251431012020_male.jpg', '2024-04-15 12:48:38', '2024-04-15 12:48:38', NULL),
(27, '00027', '199101192023211027', 'Husain Hamsah, S.Pd', 17, '027', 'L', NULL, NULL, NULL, 'uploads/guru/35251431012020_male.jpg', '2024-04-15 12:49:45', '2024-04-15 12:49:45', NULL),
(28, '00028', NULL, 'Ardi M. Robo, S.Pd', 15, '028', 'L', NULL, NULL, NULL, 'uploads/guru/35251431012020_male.jpg', '2024-04-15 12:50:36', '2024-04-15 12:50:36', NULL),
(29, '00029', NULL, 'Suriana Masini, S.Pdi', 24, '029', 'P', NULL, NULL, NULL, 'uploads/guru/23171022042020_female.jpg', '2024-04-15 12:51:25', '2024-04-15 12:51:25', NULL),
(30, '00030', NULL, 'Faisal Abd. Rahman, S.Pd', 14, '030', 'L', NULL, NULL, NULL, 'uploads/guru/35251431012020_male.jpg', '2024-04-15 12:52:20', '2024-04-15 12:52:20', NULL),
(31, '00031', NULL, 'Zainab, S.Pd', 26, '031', 'P', NULL, NULL, NULL, 'uploads/guru/23171022042020_female.jpg', '2024-04-15 12:53:08', '2024-04-15 12:53:08', NULL),
(32, '00032', '198802162023211017', 'Wahyudi Barmawi, S.S., M.AP', 21, '032', 'L', NULL, NULL, NULL, 'uploads/guru/35251431012020_male.jpg', '2024-04-15 12:54:04', '2024-04-15 12:54:04', NULL),
(33, '00033', '199411212023212027', 'Nur Farida, S.Pd', 16, '033', 'P', NULL, NULL, NULL, 'uploads/guru/23171022042020_female.jpg', '2024-04-15 12:55:24', '2024-04-15 12:55:24', NULL),
(34, '00034', NULL, 'Fahima Salim, S.Pd', 11, '034', 'P', NULL, NULL, NULL, 'uploads/guru/23171022042020_female.jpg', '2024-04-15 12:57:01', '2024-04-15 12:57:01', NULL),
(35, '00035', NULL, 'Surtina Makmun, S.Pd', 23, '035', 'P', NULL, NULL, NULL, 'uploads/guru/23171022042020_female.jpg', '2024-04-15 12:57:58', '2024-04-15 12:57:58', NULL),
(36, '00036', '199406162023212055', 'Haryati Ajudin, S.Pd', 17, '036', 'P', NULL, NULL, NULL, 'uploads/guru/23171022042020_female.jpg', '2024-04-15 12:59:00', '2024-04-15 12:59:00', NULL),
(37, '00037', '199109022023212042', 'Juraida Ishak, S.Pd', 11, '037', 'P', NULL, NULL, NULL, 'uploads/guru/23171022042020_female.jpg', '2024-04-15 13:01:24', '2024-04-15 13:01:24', NULL),
(38, '00038', NULL, 'Suhaimi Hi. Husen, S.Pd', 19, '038', 'P', NULL, NULL, NULL, 'uploads/guru/23171022042020_female.jpg', '2024-04-15 13:02:25', '2024-04-15 13:02:25', NULL),
(39, '00039', NULL, 'Rini Agriani F. Tomayto, S.Pd', 14, '039', 'P', NULL, NULL, NULL, 'uploads/guru/23171022042020_female.jpg', '2024-04-15 13:03:25', '2024-04-15 13:03:25', NULL),
(40, '00040', NULL, 'Sakina Badar, S.Pdi', 8, '040', 'P', NULL, NULL, NULL, 'uploads/guru/23171022042020_female.jpg', '2024-04-15 13:04:43', '2024-04-15 13:04:43', NULL),
(41, '00041', NULL, 'Kalam Abd. Kahar, S.Kom', 25, '041', 'L', NULL, NULL, NULL, 'uploads/guru/35251431012020_male.jpg', '2024-04-15 13:06:30', '2024-04-15 13:06:30', NULL),
(42, '00042', NULL, 'Nairia Bobi, S.Pd', 21, '042', 'P', NULL, NULL, NULL, 'uploads/guru/23171022042020_female.jpg', '2024-04-15 13:07:31', '2024-04-15 13:07:31', NULL),
(43, '00043', NULL, 'Sahrun, M.Pd', 27, '043', 'L', NULL, NULL, NULL, 'uploads/guru/35251431012020_male.jpg', '2024-04-15 13:09:34', '2024-04-15 13:09:34', NULL),
(44, '00044', '123456', 'Anisa', 10, 'BI0', 'P', '083874731480', 'Sukabumi', '2024-06-13', 'uploads/guru/13141413062024_photo_2024-06-05_16-02-14.jpg', '2024-06-13 07:14:13', '2024-06-13 07:14:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hari`
--

CREATE TABLE `hari` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_hari` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hari`
--

INSERT INTO `hari` (`id`, `nama_hari`, `created_at`, `updated_at`) VALUES
(1, 'Senin', '2023-05-15 02:12:09', '2023-05-15 02:12:09'),
(2, 'Selasa', '2023-05-15 02:12:09', '2023-05-15 02:12:09'),
(3, 'Rabu', '2023-05-15 02:12:09', '2023-05-15 02:12:09'),
(4, 'Kamis', '2023-05-15 02:12:09', '2023-05-15 02:12:09'),
(5, 'Jum\'at', '2023-05-15 02:12:09', '2023-05-15 02:12:09'),
(6, 'Sabtu', '2023-05-15 02:12:09', '2023-05-15 02:12:09');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hari_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `jam_mulai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_selesai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruang_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id`, `hari_id`, `kelas_id`, `mapel_id`, `guru_id`, `jam_mulai`, `jam_selesai`, `ruang_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 27, 43, '07:15', '08:00', NULL, NULL, NULL, NULL),
(2, 1, 1, 21, 32, '08:00', '08:45', NULL, NULL, NULL, NULL),
(3, 1, 1, 13, 24, '08:45', '09:30', NULL, NULL, NULL, NULL),
(4, 1, 1, 15, 28, '09:30', '10:15', NULL, NULL, NULL, NULL),
(5, 1, 1, 17, 36, '10:30', '11:15', NULL, NULL, NULL, NULL),
(6, 1, 1, 16, 33, '11:15', '12:00', NULL, NULL, NULL, NULL),
(7, 1, 1, 17, 27, '12:00', '12:45', NULL, NULL, NULL, NULL),
(8, 1, 1, 19, 38, '12:45', '13:30', NULL, NULL, NULL, NULL),
(9, 2, 1, 10, 44, '07:15', '08:00', NULL, NULL, NULL, NULL),
(10, 2, 1, 20, 5, '08:00', '08:45', NULL, NULL, NULL, NULL),
(11, 2, 1, 21, 42, '08:45', '09:30', NULL, NULL, NULL, NULL),
(12, 2, 1, 8, 10, '09:30', '10:15', NULL, NULL, NULL, NULL),
(13, 2, 1, 11, 37, '10:30', '11:15', NULL, NULL, NULL, NULL),
(14, 2, 1, 8, 1, '11:15', '12:00', NULL, NULL, NULL, NULL),
(15, 2, 1, 16, 8, '12:00', '12:45', NULL, NULL, NULL, NULL),
(16, 2, 1, 12, 6, '12:45', '13:30', NULL, NULL, NULL, NULL),
(17, 3, 1, 8, 40, '07:15', '08:00', NULL, NULL, NULL, NULL),
(18, 3, 1, 15, 11, '08:00', '08:45', NULL, NULL, NULL, NULL),
(19, 3, 1, 14, 30, '08:45', '09:30', NULL, NULL, NULL, NULL),
(20, 3, 1, 11, 37, '09:30', '10:15', NULL, NULL, NULL, NULL),
(21, 3, 1, 23, 23, '10:30', '11:15', NULL, NULL, NULL, NULL),
(22, 3, 1, 27, 43, '11:15', '12:00', NULL, NULL, NULL, NULL),
(23, 3, 1, 18, 25, '12:00', '12:45', NULL, NULL, NULL, NULL),
(24, 3, 1, 21, 32, '12:45', '13:30', NULL, NULL, NULL, NULL),
(25, 4, 1, 11, 37, '07:15', '08:00', NULL, NULL, NULL, NULL),
(26, 4, 1, 8, 14, '08:00', '08:45', NULL, NULL, NULL, NULL),
(27, 4, 1, 21, 32, '08:45', '09:30', NULL, NULL, NULL, NULL),
(28, 4, 1, 26, 31, '09:30', '10:15', NULL, NULL, NULL, NULL),
(29, 4, 1, 15, 28, '10:30', '11:15', NULL, NULL, NULL, NULL),
(30, 4, 1, 8, 14, '11:15', '12:00', NULL, NULL, NULL, NULL),
(31, 4, 1, 23, 35, '12:00', '12:45', NULL, NULL, NULL, NULL),
(32, 4, 1, 15, 11, '12:45', '13:30', NULL, NULL, NULL, NULL),
(33, 5, 1, 14, 30, '07:15', '08:00', NULL, NULL, NULL, NULL),
(34, 5, 1, 12, 15, '08:00', '08:45', NULL, NULL, NULL, NULL),
(35, 5, 1, 23, 23, '08:45', '09:30', NULL, NULL, NULL, NULL),
(36, 5, 1, 22, 22, '09:30', '10:15', NULL, NULL, NULL, NULL),
(37, 5, 1, 11, 13, '10:30', '11:15', NULL, NULL, NULL, NULL),
(38, 5, 1, 15, 28, '11:15', '12:00', NULL, NULL, NULL, NULL),
(39, 5, 1, 17, 27, '12:00', '12:45', NULL, NULL, NULL, NULL),
(40, 5, 1, 19, 2, '12:45', '13:30', NULL, NULL, NULL, NULL),
(41, 6, 1, 19, 38, '07:15', '08:00', NULL, NULL, NULL, NULL),
(42, 6, 1, 24, 29, '08:00', '08:45', NULL, NULL, NULL, NULL),
(43, 6, 1, 16, 8, '08:45', '09:30', NULL, NULL, NULL, NULL),
(44, 6, 1, 9, 4, '09:30', '10:15', NULL, NULL, NULL, NULL),
(45, 6, 1, 8, 14, '10:30', '11:15', NULL, NULL, NULL, NULL),
(46, 6, 1, 18, 25, '11:15', '12:00', NULL, NULL, NULL, NULL),
(47, 6, 1, 15, 28, '12:00', '12:45', NULL, NULL, NULL, NULL),
(48, 6, 1, 11, 37, '12:45', '13:30', NULL, NULL, NULL, NULL),
(49, 1, 2, 19, 2, '07:15', '08:00', NULL, NULL, NULL, NULL),
(50, 1, 2, 27, 43, '08:00', '08:45', NULL, NULL, NULL, NULL),
(51, 1, 2, 21, 42, '08:45', '09:30', NULL, NULL, NULL, NULL),
(52, 1, 2, 24, 21, '09:30', '10:15', NULL, NULL, NULL, NULL),
(53, 1, 2, 12, 6, '10:30', '11:15', NULL, NULL, NULL, NULL),
(54, 1, 2, 14, 39, '11:15', '12:00', NULL, NULL, NULL, NULL),
(55, 1, 2, 19, 38, '12:00', '12:45', NULL, NULL, NULL, NULL),
(56, 1, 2, 20, 5, '12:45', '13:30', NULL, NULL, NULL, NULL),
(57, 2, 2, 12, 15, '07:15', '08:00', NULL, NULL, NULL, NULL),
(58, 2, 2, 15, 28, '08:00', '08:45', NULL, NULL, NULL, NULL),
(59, 2, 2, 15, 11, '08:45', '09:30', NULL, NULL, NULL, NULL),
(60, 2, 2, 12, 15, '09:30', '10:15', NULL, NULL, NULL, NULL),
(61, 2, 2, 23, 23, '10:30', '11:15', NULL, NULL, NULL, NULL),
(62, 2, 2, 23, 23, '11:15', '12:00', NULL, NULL, NULL, NULL),
(63, 2, 2, 20, 5, '12:00', '12:45', NULL, NULL, NULL, NULL),
(64, 2, 2, 24, 19, '12:45', '13:30', NULL, NULL, NULL, NULL),
(65, 3, 2, 20, 5, '07:15', '08:00', NULL, NULL, NULL, NULL),
(66, 3, 2, 10, 3, '08:00', '08:45', NULL, NULL, NULL, NULL),
(67, 3, 2, 21, 32, '08:45', '09:30', NULL, NULL, NULL, NULL),
(68, 3, 2, 13, 16, '09:30', '10:15', NULL, NULL, NULL, NULL),
(69, 3, 2, 18, 25, '10:30', '11:15', NULL, NULL, NULL, NULL),
(70, 3, 2, 24, 19, '11:15', '12:00', NULL, NULL, NULL, NULL),
(71, 3, 2, 14, 39, '12:00', '12:45', NULL, NULL, NULL, NULL),
(72, 3, 2, 8, 14, '12:45', '13:30', NULL, NULL, NULL, NULL),
(73, 4, 2, 17, 27, '07:15', '08:00', NULL, NULL, NULL, NULL),
(74, 4, 2, 26, 31, '08:00', '08:45', NULL, NULL, NULL, NULL),
(75, 4, 2, 17, 27, '08:45', '09:30', NULL, NULL, NULL, NULL),
(76, 4, 2, 16, 33, '09:30', '10:15', NULL, NULL, NULL, NULL),
(77, 4, 2, 18, 25, '10:30', '11:15', NULL, NULL, NULL, NULL),
(78, 4, 2, 19, 12, '11:15', '12:00', NULL, NULL, NULL, NULL),
(79, 4, 2, 13, 24, '12:00', '12:45', NULL, NULL, NULL, NULL),
(80, 4, 2, 10, 44, '12:45', '13:30', NULL, NULL, NULL, NULL),
(81, 5, 2, 15, 28, '07:15', '08:00', NULL, NULL, NULL, NULL),
(82, 5, 2, 19, 12, '08:00', '08:45', NULL, NULL, NULL, NULL),
(83, 5, 2, 12, 15, '08:45', '09:30', NULL, NULL, NULL, NULL),
(84, 5, 2, 27, 43, '09:30', '10:15', NULL, NULL, NULL, NULL),
(85, 5, 2, 10, 7, '10:30', '11:15', NULL, NULL, NULL, NULL),
(86, 5, 2, 22, 22, '11:15', '12:00', NULL, NULL, NULL, NULL),
(87, 5, 2, 9, 4, '12:00', '12:45', NULL, NULL, NULL, NULL),
(88, 5, 2, 27, 43, '12:45', '13:30', NULL, NULL, NULL, NULL),
(89, 6, 2, 16, 8, '07:15', '08:00', NULL, NULL, NULL, NULL),
(90, 6, 2, 19, 2, '08:00', '08:45', NULL, NULL, NULL, NULL),
(91, 6, 2, 22, 22, '08:45', '09:30', NULL, NULL, NULL, NULL),
(92, 6, 2, 24, 29, '09:30', '10:15', NULL, NULL, NULL, NULL),
(93, 6, 2, 8, 1, '10:30', '11:15', NULL, NULL, NULL, NULL),
(94, 6, 2, 16, 33, '11:15', '12:00', NULL, NULL, NULL, NULL),
(95, 6, 2, 9, 20, '12:00', '12:45', NULL, NULL, NULL, NULL),
(96, 6, 2, 14, 39, '12:45', '13:30', NULL, NULL, NULL, NULL),
(97, 1, 3, 10, 7, '07:15', '08:00', NULL, NULL, NULL, NULL),
(98, 1, 3, 19, 38, '08:00', '08:45', NULL, NULL, NULL, NULL),
(99, 1, 3, 23, 23, '08:45', '09:30', NULL, NULL, NULL, NULL),
(100, 1, 3, 11, 34, '09:30', '10:15', NULL, NULL, NULL, NULL),
(101, 1, 3, 20, 5, '10:30', '11:15', NULL, NULL, NULL, NULL),
(102, 1, 3, 13, 24, '11:15', '12:00', NULL, NULL, NULL, NULL),
(103, 1, 3, 22, 22, '12:00', '12:45', NULL, NULL, NULL, NULL),
(104, 1, 3, 13, 16, '12:45', '13:30', NULL, NULL, NULL, NULL),
(105, 2, 3, 9, 4, '07:15', '08:00', NULL, NULL, NULL, NULL),
(106, 2, 3, 9, 4, '08:00', '08:45', NULL, NULL, NULL, NULL),
(107, 2, 3, 10, 3, '08:45', '09:30', NULL, NULL, NULL, NULL),
(108, 2, 3, 9, 20, '09:30', '10:15', NULL, NULL, NULL, NULL),
(109, 2, 3, 23, 35, '10:30', '11:15', NULL, NULL, NULL, NULL),
(110, 2, 3, 22, 22, '11:15', '12:00', NULL, NULL, NULL, NULL),
(111, 2, 3, 19, 38, '12:00', '12:45', NULL, NULL, NULL, NULL),
(112, 2, 3, 11, 37, '12:45', '13:30', NULL, NULL, NULL, NULL),
(113, 3, 3, 25, 41, '07:15', '08:00', NULL, NULL, NULL, NULL),
(114, 3, 3, 17, 27, '08:00', '08:45', NULL, NULL, NULL, NULL),
(115, 3, 3, 11, 37, '08:45', '09:30', NULL, NULL, NULL, NULL),
(116, 3, 3, 24, 21, '09:30', '10:15', NULL, NULL, NULL, NULL),
(117, 3, 3, 10, 44, '10:30', '11:15', NULL, NULL, NULL, NULL),
(118, 3, 3, 11, 37, '11:15', '12:00', NULL, NULL, NULL, NULL),
(119, 3, 3, 23, 23, '12:00', '12:45', NULL, NULL, NULL, NULL),
(120, 3, 3, 24, 21, '12:45', '13:30', NULL, NULL, NULL, NULL),
(121, 4, 3, 22, 22, '07:15', '08:00', NULL, NULL, NULL, NULL),
(122, 4, 3, 10, 26, '08:00', '08:45', NULL, NULL, NULL, NULL),
(123, 4, 3, 23, 35, '08:45', '09:30', NULL, NULL, NULL, NULL),
(124, 4, 3, 10, 44, '09:30', '10:15', NULL, NULL, NULL, NULL),
(125, 4, 3, 8, 14, '10:30', '11:15', NULL, NULL, NULL, NULL),
(126, 4, 3, 23, 23, '11:15', '12:00', NULL, NULL, NULL, NULL),
(127, 4, 3, 9, 4, '12:00', '12:45', NULL, NULL, NULL, NULL),
(128, 4, 3, 17, 36, '12:45', '13:30', NULL, NULL, NULL, NULL),
(129, 5, 3, 8, 10, '07:15', '08:00', NULL, NULL, NULL, NULL),
(130, 5, 3, 8, 14, '08:00', '08:45', NULL, NULL, NULL, NULL),
(131, 5, 3, 8, 1, '08:45', '09:30', NULL, NULL, NULL, NULL),
(132, 5, 3, 15, 11, '09:30', '10:15', NULL, NULL, NULL, NULL),
(133, 5, 3, 17, 27, '10:30', '11:15', NULL, NULL, NULL, NULL),
(134, 5, 3, 21, 32, '11:15', '12:00', NULL, NULL, NULL, NULL),
(135, 5, 3, 12, 17, '12:00', '12:45', NULL, NULL, NULL, NULL),
(136, 5, 3, 16, 33, '12:45', '13:30', NULL, NULL, NULL, NULL),
(137, 6, 3, 18, 25, '07:15', '08:00', NULL, NULL, NULL, NULL),
(138, 6, 3, 18, 25, '08:00', '08:45', NULL, NULL, NULL, NULL),
(139, 6, 3, 10, 3, '08:45', '09:30', NULL, NULL, NULL, NULL),
(140, 6, 3, 23, 23, '09:30', '10:15', NULL, NULL, NULL, NULL),
(141, 6, 3, 12, 15, '10:30', '11:15', NULL, NULL, NULL, NULL),
(142, 6, 3, 13, 24, '11:15', '12:00', NULL, NULL, NULL, NULL),
(143, 6, 3, 19, 2, '12:00', '12:45', NULL, NULL, NULL, NULL),
(144, 6, 3, 18, 25, '12:45', '13:30', NULL, NULL, NULL, NULL),
(145, 1, 4, 10, 26, '07:15', '08:00', NULL, NULL, NULL, NULL),
(146, 1, 4, 10, 26, '08:00', '08:45', NULL, NULL, NULL, NULL),
(147, 1, 4, 15, 11, '08:45', '09:30', NULL, NULL, NULL, NULL),
(148, 1, 4, 12, 15, '09:30', '10:15', NULL, NULL, NULL, NULL),
(149, 1, 4, 14, 39, '10:30', '11:15', NULL, NULL, NULL, NULL),
(150, 1, 4, 10, 44, '11:15', '12:00', NULL, NULL, NULL, NULL),
(151, 1, 4, 24, 19, '12:00', '12:45', NULL, NULL, NULL, NULL),
(152, 1, 4, 21, 32, '12:45', '13:30', NULL, NULL, NULL, NULL),
(153, 2, 4, 26, 31, '07:15', '08:00', NULL, NULL, NULL, NULL),
(154, 2, 4, 19, 38, '08:00', '08:45', NULL, NULL, NULL, NULL),
(155, 2, 4, 17, 36, '08:45', '09:30', NULL, NULL, NULL, NULL),
(156, 2, 4, 16, 33, '09:30', '10:15', NULL, NULL, NULL, NULL),
(157, 2, 4, 24, 21, '10:30', '11:15', NULL, NULL, NULL, NULL),
(158, 2, 4, 16, 8, '11:15', '12:00', NULL, NULL, NULL, NULL),
(159, 2, 4, 15, 11, '12:00', '12:45', NULL, NULL, NULL, NULL),
(160, 2, 4, 15, 28, '12:45', '13:30', NULL, NULL, NULL, NULL),
(161, 3, 4, 16, 8, '07:15', '08:00', NULL, NULL, NULL, NULL),
(162, 3, 4, 14, 30, '08:00', '08:45', NULL, NULL, NULL, NULL),
(163, 3, 4, 17, 36, '08:45', '09:30', NULL, NULL, NULL, NULL),
(164, 3, 4, 10, 3, '09:30', '10:15', NULL, NULL, NULL, NULL),
(165, 3, 4, 27, 43, '10:30', '11:15', NULL, NULL, NULL, NULL),
(166, 3, 4, 14, 30, '11:15', '12:00', NULL, NULL, NULL, NULL),
(167, 3, 4, 20, 5, '12:00', '12:45', NULL, NULL, NULL, NULL),
(168, 3, 4, 19, 2, '12:45', '13:30', NULL, NULL, NULL, NULL),
(169, 4, 4, 19, 12, '07:15', '08:00', NULL, NULL, NULL, NULL),
(170, 4, 4, 12, 17, '08:00', '08:45', NULL, NULL, NULL, NULL),
(171, 4, 4, 10, 26, '08:45', '09:30', NULL, NULL, NULL, NULL),
(172, 4, 4, 10, 7, '09:30', '10:15', NULL, NULL, NULL, NULL),
(173, 4, 4, 17, 9, '10:30', '11:15', NULL, NULL, NULL, NULL),
(174, 4, 4, 10, 3, '11:15', '12:00', NULL, NULL, NULL, NULL),
(175, 4, 4, 16, 8, '12:00', '12:45', NULL, NULL, NULL, NULL),
(176, 4, 4, 16, 8, '12:45', '13:30', NULL, NULL, NULL, NULL),
(177, 5, 4, 10, 44, '07:15', '08:00', NULL, NULL, NULL, NULL),
(178, 5, 4, 24, 19, '08:00', '08:45', NULL, NULL, NULL, NULL),
(179, 5, 4, 26, 31, '08:45', '09:30', NULL, NULL, NULL, NULL),
(180, 5, 4, 11, 37, '09:30', '10:15', NULL, NULL, NULL, NULL),
(181, 5, 4, 12, 6, '10:30', '11:15', NULL, NULL, NULL, NULL),
(182, 5, 4, 8, 40, '11:15', '12:00', NULL, NULL, NULL, NULL),
(183, 5, 4, 10, 7, '12:00', '12:45', NULL, NULL, NULL, NULL),
(184, 5, 4, 13, 24, '12:45', '13:30', NULL, NULL, NULL, NULL),
(185, 6, 4, 8, 40, '07:15', '08:00', NULL, NULL, NULL, NULL),
(186, 6, 4, 12, 6, '08:00', '08:45', NULL, NULL, NULL, NULL),
(187, 6, 4, 11, 34, '08:45', '09:30', NULL, NULL, NULL, NULL),
(188, 6, 4, 21, 42, '09:30', '10:15', NULL, NULL, NULL, NULL),
(189, 6, 4, 11, 34, '10:30', '11:15', NULL, NULL, NULL, NULL),
(190, 6, 4, 10, 7, '11:15', '12:00', NULL, NULL, NULL, NULL),
(191, 6, 4, 15, 11, '12:00', '12:45', NULL, NULL, NULL, NULL),
(192, 6, 4, 16, 8, '12:45', '13:30', NULL, NULL, NULL, NULL),
(193, 1, 5, 13, 24, '07:15', '08:00', NULL, NULL, NULL, NULL),
(194, 1, 5, 17, 9, '08:00', '08:45', NULL, NULL, NULL, NULL),
(195, 1, 5, 24, 21, '08:45', '09:30', NULL, NULL, NULL, NULL),
(196, 1, 5, 21, 32, '09:30', '10:15', NULL, NULL, NULL, NULL),
(197, 1, 5, 15, 11, '10:30', '11:15', NULL, NULL, NULL, NULL),
(198, 1, 5, 11, 37, '11:15', '12:00', NULL, NULL, NULL, NULL),
(199, 1, 5, 19, 12, '12:00', '12:45', NULL, NULL, NULL, NULL),
(200, 1, 5, 22, 22, '12:45', '13:30', NULL, NULL, NULL, NULL),
(201, 2, 5, 14, 39, '07:15', '08:00', NULL, NULL, NULL, NULL),
(202, 2, 5, 13, 16, '08:00', '08:45', NULL, NULL, NULL, NULL),
(203, 2, 5, 12, 15, '08:45', '09:30', NULL, NULL, NULL, NULL),
(204, 2, 5, 27, 43, '09:30', '10:15', NULL, NULL, NULL, NULL),
(205, 2, 5, 10, 44, '10:30', '11:15', NULL, NULL, NULL, NULL),
(206, 2, 5, 17, 36, '11:15', '12:00', NULL, NULL, NULL, NULL),
(207, 2, 5, 18, 25, '12:00', '12:45', NULL, NULL, NULL, NULL),
(208, 2, 5, 24, 21, '12:45', '13:30', NULL, NULL, NULL, NULL),
(209, 3, 5, 17, 27, '07:15', '08:00', NULL, NULL, NULL, NULL),
(210, 3, 5, 25, 41, '08:00', '08:45', NULL, NULL, NULL, NULL),
(211, 3, 5, 16, 8, '08:45', '09:30', NULL, NULL, NULL, NULL),
(212, 3, 5, 19, 2, '09:30', '10:15', NULL, NULL, NULL, NULL),
(213, 3, 5, 11, 37, '10:30', '11:15', NULL, NULL, NULL, NULL),
(214, 3, 5, 25, 41, '11:15', '12:00', NULL, NULL, NULL, NULL),
(215, 3, 5, 25, 41, '12:00', '12:45', NULL, NULL, NULL, NULL),
(216, 3, 5, 24, 29, '12:45', '13:30', NULL, NULL, NULL, NULL),
(217, 4, 5, 9, 20, '07:15', '08:00', NULL, NULL, NULL, NULL),
(218, 4, 5, 9, 4, '08:00', '08:45', NULL, NULL, NULL, NULL),
(219, 4, 5, 12, 6, '08:45', '09:30', NULL, NULL, NULL, NULL),
(220, 4, 5, 19, 2, '09:30', '10:15', NULL, NULL, NULL, NULL),
(221, 4, 5, 24, 21, '10:30', '11:15', NULL, NULL, NULL, NULL),
(222, 4, 5, 9, 4, '11:15', '12:00', NULL, NULL, NULL, NULL),
(223, 4, 5, 14, 30, '12:00', '12:45', NULL, NULL, NULL, NULL),
(224, 4, 5, 20, 5, '12:45', '13:30', NULL, NULL, NULL, NULL),
(225, 5, 5, 12, 6, '07:15', '08:00', NULL, NULL, NULL, NULL),
(226, 5, 5, 18, 25, '08:00', '08:45', NULL, NULL, NULL, NULL),
(227, 5, 5, 10, 44, '08:45', '09:30', NULL, NULL, NULL, NULL),
(228, 5, 5, 24, 21, '09:30', '10:15', NULL, NULL, NULL, NULL),
(229, 5, 5, 19, 2, '10:30', '11:15', NULL, NULL, NULL, NULL),
(230, 5, 5, 11, 34, '11:15', '12:00', NULL, NULL, NULL, NULL),
(231, 5, 5, 12, 15, '12:00', '12:45', NULL, NULL, NULL, NULL),
(232, 5, 5, 16, 8, '12:45', '13:30', NULL, NULL, NULL, NULL),
(233, 6, 5, 16, 33, '07:15', '08:00', NULL, NULL, NULL, NULL),
(234, 6, 5, 27, 43, '08:00', '08:45', NULL, NULL, NULL, NULL),
(235, 6, 5, 26, 31, '08:45', '09:30', NULL, NULL, NULL, NULL),
(236, 6, 5, 26, 31, '09:30', '10:15', NULL, NULL, NULL, NULL),
(237, 6, 5, 23, 35, '10:30', '11:15', NULL, NULL, NULL, NULL),
(238, 6, 5, 17, 9, '11:15', '12:00', NULL, NULL, NULL, NULL),
(239, 6, 5, 13, 16, '12:00', '12:45', NULL, NULL, NULL, NULL),
(240, 6, 5, 14, 30, '12:45', '13:30', NULL, NULL, NULL, NULL),
(241, 1, 6, 18, 18, '07:15', '08:00', NULL, NULL, NULL, NULL),
(242, 1, 6, 9, 20, '08:00', '08:45', NULL, NULL, NULL, NULL),
(243, 1, 6, 16, 8, '08:45', '09:30', NULL, NULL, NULL, NULL),
(244, 1, 6, 24, 19, '09:30', '10:15', NULL, NULL, NULL, NULL),
(245, 1, 6, 24, 19, '10:30', '11:15', NULL, NULL, NULL, NULL),
(246, 1, 6, 23, 23, '11:15', '12:00', NULL, NULL, NULL, NULL),
(247, 1, 6, 16, 33, '12:00', '12:45', NULL, NULL, NULL, NULL),
(248, 1, 6, 14, 39, '12:45', '13:30', NULL, NULL, NULL, NULL),
(249, 2, 6, 15, 28, '07:15', '08:00', NULL, NULL, NULL, NULL),
(250, 2, 6, 15, 11, '08:00', '08:45', NULL, NULL, NULL, NULL),
(251, 2, 6, 19, 38, '08:45', '09:30', NULL, NULL, NULL, NULL),
(252, 2, 6, 17, 36, '09:30', '10:15', NULL, NULL, NULL, NULL),
(253, 2, 6, 14, 30, '10:30', '11:15', NULL, NULL, NULL, NULL),
(254, 2, 6, 10, 44, '11:15', '12:00', NULL, NULL, NULL, NULL),
(255, 2, 6, 25, 41, '12:00', '12:45', NULL, NULL, NULL, NULL),
(256, 2, 6, 24, 29, '12:45', '13:30', NULL, NULL, NULL, NULL),
(257, 3, 6, 8, 14, '07:15', '08:00', NULL, NULL, NULL, NULL),
(258, 3, 6, 12, 15, '08:00', '08:45', NULL, NULL, NULL, NULL),
(259, 3, 6, 13, 16, '08:45', '09:30', NULL, NULL, NULL, NULL),
(260, 3, 6, 17, 27, '09:30', '10:15', NULL, NULL, NULL, NULL),
(261, 3, 6, 17, 9, '10:30', '11:15', NULL, NULL, NULL, NULL),
(262, 3, 6, 12, 17, '11:15', '12:00', NULL, NULL, NULL, NULL),
(263, 3, 6, 8, 10, '12:00', '12:45', NULL, NULL, NULL, NULL),
(264, 3, 6, 22, 22, '12:45', '13:30', NULL, NULL, NULL, NULL),
(265, 4, 6, 8, 40, '07:15', '08:00', NULL, NULL, NULL, NULL),
(266, 4, 6, 13, 24, '08:00', '08:45', NULL, NULL, NULL, NULL),
(267, 4, 6, 12, 15, '08:45', '09:30', NULL, NULL, NULL, NULL),
(268, 4, 6, 12, 15, '09:30', '10:15', NULL, NULL, NULL, NULL),
(269, 4, 6, 8, 40, '10:30', '11:15', NULL, NULL, NULL, NULL),
(270, 4, 6, 10, 26, '11:15', '12:00', NULL, NULL, NULL, NULL),
(271, 4, 6, 21, 42, '12:00', '12:45', NULL, NULL, NULL, NULL),
(272, 4, 6, 8, 40, '12:45', '13:30', NULL, NULL, NULL, NULL),
(273, 5, 6, 17, 27, '07:15', '08:00', NULL, NULL, NULL, NULL),
(274, 5, 6, 24, 29, '08:00', '08:45', NULL, NULL, NULL, NULL),
(275, 5, 6, 8, 10, '08:45', '09:30', NULL, NULL, NULL, NULL),
(276, 5, 6, 18, 18, '09:30', '10:15', NULL, NULL, NULL, NULL),
(277, 5, 6, 25, 41, '10:30', '11:15', NULL, NULL, NULL, NULL),
(278, 5, 6, 11, 13, '11:15', '12:00', NULL, NULL, NULL, NULL),
(279, 5, 6, 23, 35, '12:00', '12:45', NULL, NULL, NULL, NULL),
(280, 5, 6, 8, 40, '12:45', '13:30', NULL, NULL, NULL, NULL),
(281, 6, 6, 23, 23, '07:15', '08:00', NULL, NULL, NULL, NULL),
(282, 6, 6, 17, 9, '08:00', '08:45', NULL, NULL, NULL, NULL),
(283, 6, 6, 20, 5, '08:45', '09:30', NULL, NULL, NULL, NULL),
(284, 6, 6, 14, 30, '09:30', '10:15', NULL, NULL, NULL, NULL),
(285, 6, 6, 15, 28, '10:30', '11:15', NULL, NULL, NULL, NULL),
(286, 6, 6, 9, 4, '11:15', '12:00', NULL, NULL, NULL, NULL),
(287, 6, 6, 14, 30, '12:00', '12:45', NULL, NULL, NULL, NULL),
(288, 6, 6, 12, 6, '12:45', '13:30', NULL, NULL, NULL, NULL),
(289, 1, 7, 20, 5, '07:15', '08:00', NULL, NULL, NULL, NULL),
(290, 1, 7, 8, 40, '08:00', '08:45', NULL, NULL, NULL, NULL),
(291, 1, 7, 24, 19, '08:45', '09:30', NULL, NULL, NULL, NULL),
(292, 1, 7, 19, 2, '09:30', '10:15', NULL, NULL, NULL, NULL),
(293, 1, 7, 12, 15, '10:30', '11:15', NULL, NULL, NULL, NULL),
(294, 1, 7, 18, 18, '11:15', '12:00', NULL, NULL, NULL, NULL),
(295, 1, 7, 24, 21, '12:00', '12:45', NULL, NULL, NULL, NULL),
(296, 1, 7, 24, 29, '12:45', '13:30', NULL, NULL, NULL, NULL),
(297, 2, 7, 18, 18, '07:15', '08:00', NULL, NULL, NULL, NULL),
(298, 2, 7, 23, 35, '08:00', '08:45', NULL, NULL, NULL, NULL),
(299, 2, 7, 10, 26, '08:45', '09:30', NULL, NULL, NULL, NULL),
(300, 2, 7, 10, 7, '09:30', '10:15', NULL, NULL, NULL, NULL),
(301, 2, 7, 19, 2, '10:30', '11:15', NULL, NULL, NULL, NULL),
(302, 2, 7, 24, 19, '11:15', '12:00', NULL, NULL, NULL, NULL),
(303, 2, 7, 9, 4, '12:00', '12:45', NULL, NULL, NULL, NULL),
(304, 2, 7, 11, 13, '12:45', '13:30', NULL, NULL, NULL, NULL),
(305, 3, 7, 22, 22, '07:15', '08:00', NULL, NULL, NULL, NULL),
(306, 3, 7, 22, 22, '08:00', '08:45', NULL, NULL, NULL, NULL),
(307, 3, 7, 15, 28, '08:45', '09:30', NULL, NULL, NULL, NULL),
(308, 3, 7, 15, 11, '09:30', '10:15', NULL, NULL, NULL, NULL),
(309, 3, 7, 17, 36, '10:30', '11:15', NULL, NULL, NULL, NULL),
(310, 3, 7, 13, 24, '11:15', '12:00', NULL, NULL, NULL, NULL),
(311, 3, 7, 11, 34, '12:00', '12:45', NULL, NULL, NULL, NULL),
(312, 3, 7, 19, 38, '12:45', '13:30', NULL, NULL, NULL, NULL),
(313, 4, 7, 17, 36, '07:15', '08:00', NULL, NULL, NULL, NULL),
(314, 4, 7, 14, 39, '08:00', '08:45', NULL, NULL, NULL, NULL),
(315, 4, 7, 21, 42, '08:45', '09:30', NULL, NULL, NULL, NULL),
(316, 4, 7, 24, 19, '09:30', '10:15', NULL, NULL, NULL, NULL),
(317, 4, 7, 21, 32, '10:30', '11:15', NULL, NULL, NULL, NULL),
(318, 4, 7, 18, 25, '11:15', '12:00', NULL, NULL, NULL, NULL),
(319, 4, 7, 10, 7, '12:00', '12:45', NULL, NULL, NULL, NULL),
(320, 4, 7, 14, 30, '12:45', '13:30', NULL, NULL, NULL, NULL),
(321, 5, 7, 19, 12, '07:15', '08:00', NULL, NULL, NULL, NULL),
(322, 5, 7, 13, 16, '08:00', '08:45', NULL, NULL, NULL, NULL),
(323, 5, 7, 9, 20, '08:45', '09:30', NULL, NULL, NULL, NULL),
(324, 5, 7, 17, 9, '09:30', '10:15', NULL, NULL, NULL, NULL),
(325, 5, 7, 24, 29, '10:30', '11:15', NULL, NULL, NULL, NULL),
(326, 5, 7, 14, 30, '11:15', '12:00', NULL, NULL, NULL, NULL),
(327, 5, 7, 11, 13, '12:00', '12:45', NULL, NULL, NULL, NULL),
(328, 5, 7, 11, 34, '12:45', '13:30', NULL, NULL, NULL, NULL),
(329, 6, 7, 25, 41, '07:15', '08:00', NULL, NULL, NULL, NULL),
(330, 6, 7, 14, 30, '08:00', '08:45', NULL, NULL, NULL, NULL),
(331, 6, 7, 10, 44, '08:45', '09:30', NULL, NULL, NULL, NULL),
(332, 6, 7, 8, 40, '09:30', '10:15', NULL, NULL, NULL, NULL),
(333, 6, 7, 24, 21, '10:30', '11:15', NULL, NULL, NULL, NULL),
(334, 6, 7, 22, 22, '11:15', '12:00', NULL, NULL, NULL, NULL),
(335, 6, 7, 24, 19, '12:00', '12:45', NULL, NULL, NULL, NULL),
(336, 6, 7, 8, 10, '12:45', '13:30', NULL, NULL, NULL, NULL),
(337, 1, 8, 15, 28, '07:15', '08:00', NULL, NULL, NULL, NULL),
(338, 1, 8, 23, 23, '08:00', '08:45', NULL, NULL, NULL, NULL),
(339, 1, 8, 21, 32, '08:45', '09:30', NULL, NULL, NULL, NULL),
(340, 1, 8, 25, 41, '09:30', '10:15', NULL, NULL, NULL, NULL),
(341, 1, 8, 23, 35, '10:30', '11:15', NULL, NULL, NULL, NULL),
(342, 1, 8, 8, 1, '11:15', '12:00', NULL, NULL, NULL, NULL),
(343, 1, 8, 16, 8, '12:00', '12:45', NULL, NULL, NULL, NULL),
(344, 1, 8, 15, 28, '12:45', '13:30', NULL, NULL, NULL, NULL),
(345, 2, 8, 19, 2, '07:15', '08:00', NULL, NULL, NULL, NULL),
(346, 2, 8, 17, 9, '08:00', '08:45', NULL, NULL, NULL, NULL),
(347, 2, 8, 15, 28, '08:45', '09:30', NULL, NULL, NULL, NULL),
(348, 2, 8, 24, 21, '09:30', '10:15', NULL, NULL, NULL, NULL),
(349, 2, 8, 12, 17, '10:30', '11:15', NULL, NULL, NULL, NULL),
(350, 2, 8, 19, 38, '11:15', '12:00', NULL, NULL, NULL, NULL),
(351, 2, 8, 12, 15, '12:00', '12:45', NULL, NULL, NULL, NULL),
(352, 2, 8, 12, 17, '12:45', '13:30', NULL, NULL, NULL, NULL),
(353, 3, 8, 10, 3, '07:15', '08:00', NULL, NULL, NULL, NULL),
(354, 3, 8, 10, 7, '08:00', '08:45', NULL, NULL, NULL, NULL),
(355, 3, 8, 14, 39, '08:45', '09:30', NULL, NULL, NULL, NULL),
(356, 3, 8, 19, 12, '09:30', '10:15', NULL, NULL, NULL, NULL),
(357, 3, 8, 8, 10, '10:30', '11:15', NULL, NULL, NULL, NULL),
(358, 3, 8, 10, 44, '11:15', '12:00', NULL, NULL, NULL, NULL),
(359, 3, 8, 17, 9, '12:00', '12:45', NULL, NULL, NULL, NULL),
(360, 3, 8, 19, 12, '12:45', '13:30', NULL, NULL, NULL, NULL),
(361, 4, 8, 19, 38, '07:15', '08:00', NULL, NULL, NULL, NULL),
(362, 4, 8, 16, 33, '08:00', '08:45', NULL, NULL, NULL, NULL),
(363, 4, 8, 26, 31, '08:45', '09:30', NULL, NULL, NULL, NULL),
(364, 4, 8, 11, 34, '09:30', '10:15', NULL, NULL, NULL, NULL),
(365, 4, 8, 14, 30, '10:30', '11:15', NULL, NULL, NULL, NULL),
(366, 4, 8, 13, 16, '11:15', '12:00', NULL, NULL, NULL, NULL),
(367, 4, 8, 8, 14, '12:00', '12:45', NULL, NULL, NULL, NULL),
(368, 4, 8, 21, 32, '12:45', '13:30', NULL, NULL, NULL, NULL),
(369, 5, 8, 14, 39, '07:15', '08:00', NULL, NULL, NULL, NULL),
(370, 5, 8, 17, 9, '08:00', '08:45', NULL, NULL, NULL, NULL),
(371, 5, 8, 19, 38, '08:45', '09:30', NULL, NULL, NULL, NULL),
(372, 5, 8, 24, 29, '09:30', '10:15', NULL, NULL, NULL, NULL),
(373, 5, 8, 8, 10, '10:30', '11:15', NULL, NULL, NULL, NULL),
(374, 5, 8, 16, 33, '11:15', '12:00', NULL, NULL, NULL, NULL),
(375, 5, 8, 16, 8, '12:00', '12:45', NULL, NULL, NULL, NULL),
(376, 5, 8, 24, 21, '12:45', '13:30', NULL, NULL, NULL, NULL),
(377, 6, 8, 19, 12, '07:15', '08:00', NULL, NULL, NULL, NULL),
(378, 6, 8, 23, 23, '08:00', '08:45', NULL, NULL, NULL, NULL),
(379, 6, 8, 8, 10, '08:45', '09:30', NULL, NULL, NULL, NULL),
(380, 6, 8, 21, 32, '09:30', '10:15', NULL, NULL, NULL, NULL),
(381, 6, 8, 14, 30, '10:30', '11:15', NULL, NULL, NULL, NULL),
(382, 6, 8, 27, 43, '11:15', '12:00', NULL, NULL, NULL, NULL),
(383, 6, 8, 21, 32, '12:00', '12:45', NULL, NULL, NULL, NULL),
(384, 6, 8, 19, 2, '12:45', '13:30', NULL, NULL, NULL, NULL),
(385, 1, 9, 9, 20, '07:15', '08:00', NULL, NULL, NULL, NULL),
(386, 1, 9, 19, 12, '08:00', '08:45', NULL, NULL, NULL, NULL),
(387, 1, 9, 26, 31, '08:45', '09:30', NULL, NULL, NULL, NULL),
(388, 1, 9, 19, 12, '09:30', '10:15', NULL, NULL, NULL, NULL),
(389, 1, 9, 14, 30, '10:30', '11:15', NULL, NULL, NULL, NULL),
(390, 1, 9, 17, 27, '11:15', '12:00', NULL, NULL, NULL, NULL),
(391, 1, 9, 26, 31, '12:00', '12:45', NULL, NULL, NULL, NULL),
(392, 1, 9, 8, 1, '12:45', '13:30', NULL, NULL, NULL, NULL),
(393, 2, 9, 23, 35, '07:15', '08:00', NULL, NULL, NULL, NULL),
(394, 2, 9, 8, 40, '08:00', '08:45', NULL, NULL, NULL, NULL),
(395, 2, 9, 19, 2, '08:45', '09:30', NULL, NULL, NULL, NULL),
(396, 2, 9, 11, 37, '09:30', '10:15', NULL, NULL, NULL, NULL),
(397, 2, 9, 8, 1, '10:30', '11:15', NULL, NULL, NULL, NULL),
(398, 2, 9, 19, 12, '11:15', '12:00', NULL, NULL, NULL, NULL),
(399, 2, 9, 15, 28, '12:00', '12:45', NULL, NULL, NULL, NULL),
(400, 2, 9, 17, 9, '12:45', '13:30', NULL, NULL, NULL, NULL),
(401, 3, 9, 11, 37, '07:15', '08:00', NULL, NULL, NULL, NULL),
(402, 3, 9, 24, 19, '08:00', '08:45', NULL, NULL, NULL, NULL),
(403, 3, 9, 27, 43, '08:45', '09:30', NULL, NULL, NULL, NULL),
(404, 3, 9, 16, 8, '09:30', '10:15', NULL, NULL, NULL, NULL),
(405, 3, 9, 11, 13, '10:30', '11:15', NULL, NULL, NULL, NULL),
(406, 3, 9, 18, 25, '11:15', '12:00', NULL, NULL, NULL, NULL),
(407, 3, 9, 16, 8, '12:00', '12:45', NULL, NULL, NULL, NULL),
(408, 3, 9, 13, 24, '12:45', '13:30', NULL, NULL, NULL, NULL),
(409, 4, 9, 8, 10, '07:15', '08:00', NULL, NULL, NULL, NULL),
(410, 4, 9, 17, 36, '08:00', '08:45', NULL, NULL, NULL, NULL),
(411, 4, 9, 8, 10, '08:45', '09:30', NULL, NULL, NULL, NULL),
(412, 4, 9, 21, 32, '09:30', '10:15', NULL, NULL, NULL, NULL),
(413, 4, 9, 9, 4, '10:30', '11:15', NULL, NULL, NULL, NULL),
(414, 4, 9, 17, 9, '11:15', '12:00', NULL, NULL, NULL, NULL),
(415, 4, 9, 8, 40, '12:00', '12:45', NULL, NULL, NULL, NULL),
(416, 4, 9, 19, 38, '12:45', '13:30', NULL, NULL, NULL, NULL),
(417, 5, 9, 27, 43, '07:15', '08:00', NULL, NULL, NULL, NULL),
(418, 5, 9, 9, 20, '08:00', '08:45', NULL, NULL, NULL, NULL),
(419, 5, 9, 10, 3, '08:45', '09:30', NULL, NULL, NULL, NULL),
(420, 5, 9, 21, 42, '09:30', '10:15', NULL, NULL, NULL, NULL),
(421, 5, 9, 24, 21, '10:30', '11:15', NULL, NULL, NULL, NULL),
(422, 5, 9, 10, 7, '11:15', '12:00', NULL, NULL, NULL, NULL),
(423, 5, 9, 12, 6, '12:00', '12:45', NULL, NULL, NULL, NULL),
(424, 5, 9, 8, 10, '12:45', '13:30', NULL, NULL, NULL, NULL),
(425, 6, 9, 11, 37, '07:15', '08:00', NULL, NULL, NULL, NULL),
(426, 6, 9, 12, 17, '08:00', '08:45', NULL, NULL, NULL, NULL),
(427, 6, 9, 25, 41, '08:45', '09:30', NULL, NULL, NULL, NULL),
(428, 6, 9, 11, 34, '09:30', '10:15', NULL, NULL, NULL, NULL),
(429, 6, 9, 23, 23, '10:30', '11:15', NULL, NULL, NULL, NULL),
(430, 6, 9, 11, 13, '11:15', '12:00', NULL, NULL, NULL, NULL),
(431, 6, 9, 9, 4, '12:00', '12:45', NULL, NULL, NULL, NULL),
(432, 6, 9, 8, 1, '12:45', '13:30', NULL, NULL, NULL, NULL),
(433, 1, 10, 23, 35, '07:15', '08:00', NULL, NULL, NULL, NULL),
(434, 1, 10, 19, 2, '08:00', '08:45', NULL, NULL, NULL, NULL),
(435, 1, 10, 9, 20, '08:45', '09:30', NULL, NULL, NULL, NULL),
(436, 1, 10, 23, 35, '09:30', '10:15', NULL, NULL, NULL, NULL),
(437, 1, 10, 24, 21, '10:30', '11:15', NULL, NULL, NULL, NULL),
(438, 1, 10, 16, 8, '11:15', '12:00', NULL, NULL, NULL, NULL),
(439, 1, 10, 8, 14, '12:00', '12:45', NULL, NULL, NULL, NULL),
(440, 1, 10, 23, 23, '12:45', '13:30', NULL, NULL, NULL, NULL),
(441, 2, 10, 21, 32, '07:15', '08:00', NULL, NULL, NULL, NULL),
(442, 2, 10, 10, 7, '08:00', '08:45', NULL, NULL, NULL, NULL),
(443, 2, 10, 25, 41, '08:45', '09:30', NULL, NULL, NULL, NULL),
(444, 2, 10, 19, 38, '09:30', '10:15', NULL, NULL, NULL, NULL),
(445, 2, 10, 13, 24, '10:30', '11:15', NULL, NULL, NULL, NULL),
(446, 2, 10, 10, 3, '11:15', '12:00', NULL, NULL, NULL, NULL),
(447, 2, 10, 22, 22, '12:00', '12:45', NULL, NULL, NULL, NULL),
(448, 2, 10, 18, 18, '12:45', '13:30', NULL, NULL, NULL, NULL),
(449, 3, 10, 12, 15, '07:15', '08:00', NULL, NULL, NULL, NULL),
(450, 3, 10, 18, 25, '08:00', '08:45', NULL, NULL, NULL, NULL),
(451, 3, 10, 18, 18, '08:45', '09:30', NULL, NULL, NULL, NULL),
(452, 3, 10, 21, 32, '09:30', '10:15', NULL, NULL, NULL, NULL),
(453, 3, 10, 15, 11, '10:30', '11:15', NULL, NULL, NULL, NULL),
(454, 3, 10, 15, 28, '11:15', '12:00', NULL, NULL, NULL, NULL),
(455, 3, 10, 8, 14, '12:00', '12:45', NULL, NULL, NULL, NULL),
(456, 3, 10, 23, 23, '12:45', '13:30', NULL, NULL, NULL, NULL),
(457, 4, 10, 18, 18, '07:15', '08:00', NULL, NULL, NULL, NULL),
(458, 4, 10, 24, 29, '08:00', '08:45', NULL, NULL, NULL, NULL),
(459, 4, 10, 8, 14, '08:45', '09:30', NULL, NULL, NULL, NULL),
(460, 4, 10, 8, 40, '09:30', '10:15', NULL, NULL, NULL, NULL),
(461, 4, 10, 21, 42, '10:30', '11:15', NULL, NULL, NULL, NULL),
(462, 4, 10, 24, 29, '11:15', '12:00', NULL, NULL, NULL, NULL),
(463, 4, 10, 8, 10, '12:00', '12:45', NULL, NULL, NULL, NULL),
(464, 4, 10, 10, 26, '12:45', '13:30', NULL, NULL, NULL, NULL),
(465, 5, 10, 8, 40, '07:15', '08:00', NULL, NULL, NULL, NULL),
(466, 5, 10, 14, 39, '08:00', '08:45', NULL, NULL, NULL, NULL),
(467, 5, 10, 16, 8, '08:45', '09:30', NULL, NULL, NULL, NULL),
(468, 5, 10, 18, 25, '09:30', '10:15', NULL, NULL, NULL, NULL),
(469, 5, 10, 11, 37, '10:30', '11:15', NULL, NULL, NULL, NULL),
(470, 5, 10, 9, 4, '11:15', '12:00', NULL, NULL, NULL, NULL),
(471, 5, 10, 14, 39, '12:00', '12:45', NULL, NULL, NULL, NULL),
(472, 5, 10, 10, 7, '12:45', '13:30', NULL, NULL, NULL, NULL),
(473, 6, 10, 15, 28, '07:15', '08:00', NULL, NULL, NULL, NULL),
(474, 6, 10, 19, 38, '08:00', '08:45', NULL, NULL, NULL, NULL),
(475, 6, 10, 18, 25, '08:45', '09:30', NULL, NULL, NULL, NULL),
(476, 6, 10, 9, 20, '09:30', '10:15', NULL, NULL, NULL, NULL),
(477, 6, 10, 24, 29, '10:30', '11:15', NULL, NULL, NULL, NULL),
(478, 6, 10, 14, 30, '11:15', '12:00', NULL, NULL, NULL, NULL),
(479, 6, 10, 12, 17, '12:00', '12:45', NULL, NULL, NULL, NULL),
(480, 6, 10, 10, 3, '12:45', '13:30', NULL, NULL, NULL, NULL),
(481, 1, 11, 14, 39, '07:15', '08:00', NULL, NULL, NULL, NULL),
(482, 1, 11, 12, 6, '08:00', '08:45', NULL, NULL, NULL, NULL),
(483, 1, 11, 17, 9, '08:45', '09:30', NULL, NULL, NULL, NULL),
(484, 1, 11, 20, 5, '09:30', '10:15', NULL, NULL, NULL, NULL),
(485, 1, 11, 11, 37, '10:30', '11:15', NULL, NULL, NULL, NULL),
(486, 1, 11, 14, 30, '11:15', '12:00', NULL, NULL, NULL, NULL),
(487, 1, 11, 14, 30, '12:00', '12:45', NULL, NULL, NULL, NULL),
(488, 1, 11, 16, 8, '12:45', '13:30', NULL, NULL, NULL, NULL),
(489, 2, 11, 8, 40, '07:15', '08:00', NULL, NULL, NULL, NULL),
(490, 2, 11, 10, 3, '08:00', '08:45', NULL, NULL, NULL, NULL),
(491, 2, 11, 18, 18, '08:45', '09:30', NULL, NULL, NULL, NULL),
(492, 2, 11, 15, 11, '09:30', '10:15', NULL, NULL, NULL, NULL),
(493, 2, 11, 10, 7, '10:30', '11:15', NULL, NULL, NULL, NULL),
(494, 2, 11, 14, 30, '11:15', '12:00', NULL, NULL, NULL, NULL),
(495, 2, 11, 17, 36, '12:00', '12:45', NULL, NULL, NULL, NULL),
(496, 2, 11, 19, 2, '12:45', '13:30', NULL, NULL, NULL, NULL),
(497, 3, 11, 16, 33, '07:15', '08:00', NULL, NULL, NULL, NULL),
(498, 3, 11, 17, 9, '08:00', '08:45', NULL, NULL, NULL, NULL),
(499, 3, 11, 12, 15, '08:45', '09:30', NULL, NULL, NULL, NULL),
(500, 3, 11, 23, 23, '09:30', '10:15', NULL, NULL, NULL, NULL),
(501, 3, 11, 13, 16, '10:30', '11:15', NULL, NULL, NULL, NULL),
(502, 3, 11, 19, 12, '11:15', '12:00', NULL, NULL, NULL, NULL),
(503, 3, 11, 19, 12, '12:00', '12:45', NULL, NULL, NULL, NULL),
(504, 3, 11, 11, 34, '12:45', '13:30', NULL, NULL, NULL, NULL),
(505, 4, 11, 10, 7, '07:15', '08:00', NULL, NULL, NULL, NULL),
(506, 4, 11, 19, 12, '08:00', '08:45', NULL, NULL, NULL, NULL),
(507, 4, 11, 19, 38, '08:45', '09:30', NULL, NULL, NULL, NULL),
(508, 4, 11, 10, 3, '09:30', '10:15', NULL, NULL, NULL, NULL),
(509, 4, 11, 10, 7, '10:30', '11:15', NULL, NULL, NULL, NULL),
(510, 4, 11, 12, 6, '11:15', '12:00', NULL, NULL, NULL, NULL),
(511, 4, 11, 11, 37, '12:00', '12:45', NULL, NULL, NULL, NULL),
(512, 4, 11, 11, 34, '12:45', '13:30', NULL, NULL, NULL, NULL),
(513, 5, 11, 23, 23, '07:15', '08:00', NULL, NULL, NULL, NULL),
(514, 5, 11, 24, 21, '08:00', '08:45', NULL, NULL, NULL, NULL),
(515, 5, 11, 13, 24, '08:45', '09:30', NULL, NULL, NULL, NULL),
(516, 5, 11, 17, 36, '09:30', '10:15', NULL, NULL, NULL, NULL),
(517, 5, 11, 13, 16, '10:30', '11:15', NULL, NULL, NULL, NULL),
(518, 5, 11, 12, 6, '11:15', '12:00', NULL, NULL, NULL, NULL),
(519, 5, 11, 10, 44, '12:00', '12:45', NULL, NULL, NULL, NULL),
(520, 5, 11, 18, 18, '12:45', '13:30', NULL, NULL, NULL, NULL),
(521, 6, 11, 8, 10, '07:15', '08:00', NULL, NULL, NULL, NULL),
(522, 6, 11, 19, 12, '08:00', '08:45', NULL, NULL, NULL, NULL),
(523, 6, 11, 13, 24, '08:45', '09:30', NULL, NULL, NULL, NULL),
(524, 6, 11, 11, 13, '09:30', '10:15', NULL, NULL, NULL, NULL),
(525, 6, 11, 17, 36, '10:30', '11:15', NULL, NULL, NULL, NULL),
(526, 6, 11, 26, 31, '11:15', '12:00', NULL, NULL, NULL, NULL),
(527, 6, 11, 17, 27, '12:00', '12:45', NULL, NULL, NULL, NULL),
(528, 6, 11, 18, 18, '12:45', '13:30', NULL, NULL, NULL, NULL),
(529, 1, 12, 21, 42, '07:15', '08:00', NULL, NULL, NULL, NULL),
(530, 1, 12, 16, 33, '08:00', '08:45', NULL, NULL, NULL, NULL),
(531, 1, 12, 9, 4, '08:45', '09:30', NULL, NULL, NULL, NULL),
(532, 1, 12, 13, 16, '09:30', '10:15', NULL, NULL, NULL, NULL),
(533, 1, 12, 17, 9, '10:30', '11:15', NULL, NULL, NULL, NULL),
(534, 1, 12, 20, 5, '11:15', '12:00', NULL, NULL, NULL, NULL),
(535, 1, 12, 17, 36, '12:00', '12:45', NULL, NULL, NULL, NULL),
(536, 1, 12, 27, 43, '12:45', '13:30', NULL, NULL, NULL, NULL),
(537, 2, 12, 20, 5, '07:15', '08:00', NULL, NULL, NULL, NULL),
(538, 2, 12, 17, 27, '08:00', '08:45', NULL, NULL, NULL, NULL),
(539, 2, 12, 14, 30, '08:45', '09:30', NULL, NULL, NULL, NULL),
(540, 2, 12, 14, 30, '09:30', '10:15', NULL, NULL, NULL, NULL),
(541, 2, 12, 16, 33, '10:30', '11:15', NULL, NULL, NULL, NULL),
(542, 2, 12, 25, 41, '11:15', '12:00', NULL, NULL, NULL, NULL),
(543, 2, 12, 13, 16, '12:00', '12:45', NULL, NULL, NULL, NULL),
(544, 2, 12, 10, 26, '12:45', '13:30', NULL, NULL, NULL, NULL),
(545, 3, 12, 24, 21, '07:15', '08:00', NULL, NULL, NULL, NULL),
(546, 3, 12, 11, 37, '08:00', '08:45', NULL, NULL, NULL, NULL),
(547, 3, 12, 9, 4, '08:45', '09:30', NULL, NULL, NULL, NULL),
(548, 3, 12, 18, 18, '09:30', '10:15', NULL, NULL, NULL, NULL),
(549, 3, 12, 16, 8, '10:30', '11:15', NULL, NULL, NULL, NULL),
(550, 3, 12, 9, 4, '11:15', '12:00', NULL, NULL, NULL, NULL),
(551, 3, 12, 10, 26, '12:00', '12:45', NULL, NULL, NULL, NULL),
(552, 3, 12, 12, 17, '12:45', '13:30', NULL, NULL, NULL, NULL),
(553, 4, 12, 12, 6, '07:15', '08:00', NULL, NULL, NULL, NULL),
(554, 4, 12, 17, 27, '08:00', '08:45', NULL, NULL, NULL, NULL),
(555, 4, 12, 24, 29, '08:45', '09:30', NULL, NULL, NULL, NULL),
(556, 4, 12, 21, 42, '09:30', '10:15', NULL, NULL, NULL, NULL),
(557, 4, 12, 13, 24, '10:30', '11:15', NULL, NULL, NULL, NULL),
(558, 4, 12, 19, 38, '11:15', '12:00', NULL, NULL, NULL, NULL),
(559, 4, 12, 13, 16, '12:00', '12:45', NULL, NULL, NULL, NULL),
(560, 4, 12, 10, 7, '12:45', '13:30', NULL, NULL, NULL, NULL),
(561, 5, 12, 24, 29, '07:15', '08:00', NULL, NULL, NULL, NULL),
(562, 5, 12, 11, 13, '08:00', '08:45', NULL, NULL, NULL, NULL),
(563, 5, 12, 15, 11, '08:45', '09:30', NULL, NULL, NULL, NULL),
(564, 5, 12, 16, 33, '09:30', '10:15', NULL, NULL, NULL, NULL),
(565, 5, 12, 19, 12, '10:30', '11:15', NULL, NULL, NULL, NULL),
(566, 5, 12, 10, 26, '11:15', '12:00', NULL, NULL, NULL, NULL),
(567, 5, 12, 24, 21, '12:00', '12:45', NULL, NULL, NULL, NULL),
(568, 5, 12, 12, 17, '12:45', '13:30', NULL, NULL, NULL, NULL),
(569, 6, 12, 11, 34, '07:15', '08:00', NULL, NULL, NULL, NULL),
(570, 6, 12, 10, 26, '08:00', '08:45', NULL, NULL, NULL, NULL),
(571, 6, 12, 14, 30, '08:45', '09:30', NULL, NULL, NULL, NULL),
(572, 6, 12, 17, 27, '09:30', '10:15', NULL, NULL, NULL, NULL),
(573, 6, 12, 18, 25, '10:30', '11:15', NULL, NULL, NULL, NULL),
(574, 6, 12, 18, 18, '11:15', '12:00', NULL, NULL, NULL, NULL),
(575, 6, 12, 10, 7, '12:00', '12:45', NULL, NULL, NULL, NULL),
(576, 6, 12, 21, 42, '12:45', '13:30', NULL, NULL, NULL, NULL),
(577, 1, 13, 22, 22, '07:15', '08:00', NULL, NULL, NULL, NULL),
(578, 1, 13, 20, 5, '08:00', '08:45', NULL, NULL, NULL, NULL),
(579, 1, 13, 10, 3, '08:45', '09:30', NULL, NULL, NULL, NULL),
(580, 1, 13, 17, 36, '09:30', '10:15', NULL, NULL, NULL, NULL),
(581, 1, 13, 8, 40, '10:30', '11:15', NULL, NULL, NULL, NULL),
(582, 1, 13, 17, 9, '11:15', '12:00', NULL, NULL, NULL, NULL),
(583, 1, 13, 19, 2, '12:00', '12:45', NULL, NULL, NULL, NULL),
(584, 1, 13, 19, 2, '12:45', '13:30', NULL, NULL, NULL, NULL),
(585, 2, 13, 10, 3, '07:15', '08:00', NULL, NULL, NULL, NULL),
(586, 2, 13, 11, 13, '08:00', '08:45', NULL, NULL, NULL, NULL),
(587, 2, 13, 17, 9, '08:45', '09:30', NULL, NULL, NULL, NULL),
(588, 2, 13, 20, 5, '09:30', '10:15', NULL, NULL, NULL, NULL),
(589, 2, 13, 11, 34, '10:30', '11:15', NULL, NULL, NULL, NULL),
(590, 2, 13, 9, 4, '11:15', '12:00', NULL, NULL, NULL, NULL),
(591, 2, 13, 11, 34, '12:00', '12:45', NULL, NULL, NULL, NULL),
(592, 2, 13, 16, 33, '12:45', '13:30', NULL, NULL, NULL, NULL),
(593, 3, 13, 10, 44, '07:15', '08:00', NULL, NULL, NULL, NULL),
(594, 3, 13, 8, 10, '08:00', '08:45', NULL, NULL, NULL, NULL),
(595, 3, 13, 17, 27, '08:45', '09:30', NULL, NULL, NULL, NULL),
(596, 3, 13, 17, 9, '09:30', '10:15', NULL, NULL, NULL, NULL),
(597, 3, 13, 19, 38, '10:30', '11:15', NULL, NULL, NULL, NULL),
(598, 3, 13, 19, 38, '11:15', '12:00', NULL, NULL, NULL, NULL),
(599, 3, 13, 19, 2, '12:00', '12:45', NULL, NULL, NULL, NULL),
(600, 3, 13, 8, 10, '12:45', '13:30', NULL, NULL, NULL, NULL),
(601, 4, 13, 21, 42, '07:15', '08:00', NULL, NULL, NULL, NULL),
(602, 4, 13, 18, 18, '08:00', '08:45', NULL, NULL, NULL, NULL),
(603, 4, 13, 27, 43, '08:45', '09:30', NULL, NULL, NULL, NULL),
(604, 4, 13, 18, 25, '09:30', '10:15', NULL, NULL, NULL, NULL),
(605, 4, 13, 8, 10, '10:30', '11:15', NULL, NULL, NULL, NULL),
(606, 4, 13, 18, 18, '11:15', '12:00', NULL, NULL, NULL, NULL),
(607, 4, 13, 19, 38, '12:00', '12:45', NULL, NULL, NULL, NULL),
(608, 4, 13, 22, 22, '12:45', '13:30', NULL, NULL, NULL, NULL),
(609, 5, 13, 8, 14, '07:15', '08:00', NULL, NULL, NULL, NULL),
(610, 5, 13, 15, 28, '08:00', '08:45', NULL, NULL, NULL, NULL),
(611, 5, 13, 11, 34, '08:45', '09:30', NULL, NULL, NULL, NULL),
(612, 5, 13, 13, 16, '09:30', '10:15', NULL, NULL, NULL, NULL),
(613, 5, 13, 10, 3, '10:30', '11:15', NULL, NULL, NULL, NULL),
(614, 5, 13, 9, 20, '11:15', '12:00', NULL, NULL, NULL, NULL),
(615, 5, 13, 20, 5, '12:00', '12:45', NULL, NULL, NULL, NULL),
(616, 5, 13, 10, 44, '12:45', '13:30', NULL, NULL, NULL, NULL),
(617, 6, 13, 9, 4, '07:15', '08:00', NULL, NULL, NULL, NULL),
(618, 6, 13, 24, 19, '08:00', '08:45', NULL, NULL, NULL, NULL),
(619, 6, 13, 24, 19, '08:45', '09:30', NULL, NULL, NULL, NULL),
(620, 6, 13, 13, 24, '09:30', '10:15', NULL, NULL, NULL, NULL),
(621, 6, 13, 16, 33, '10:30', '11:15', NULL, NULL, NULL, NULL),
(622, 6, 13, 25, 41, '11:15', '12:00', NULL, NULL, NULL, NULL),
(623, 6, 13, 10, 26, '12:00', '12:45', NULL, NULL, NULL, NULL),
(624, 6, 13, 19, 12, '12:45', '13:30', NULL, NULL, NULL, NULL),
(625, 1, 14, 25, 41, '07:15', '08:00', NULL, NULL, NULL, NULL),
(626, 1, 14, 17, 36, '08:00', '08:45', NULL, NULL, NULL, NULL),
(627, 1, 14, 18, 25, '08:45', '09:30', NULL, NULL, NULL, NULL),
(628, 1, 14, 18, 25, '09:30', '10:15', NULL, NULL, NULL, NULL),
(629, 1, 14, 26, 31, '10:30', '11:15', NULL, NULL, NULL, NULL),
(630, 1, 14, 19, 2, '11:15', '12:00', NULL, NULL, NULL, NULL),
(631, 1, 14, 11, 37, '12:00', '12:45', NULL, NULL, NULL, NULL),
(632, 1, 14, 8, 10, '12:45', '13:30', NULL, NULL, NULL, NULL),
(633, 2, 14, 12, 6, '07:15', '08:00', NULL, NULL, NULL, NULL),
(634, 2, 14, 26, 31, '08:00', '08:45', NULL, NULL, NULL, NULL),
(635, 2, 14, 24, 21, '08:45', '09:30', NULL, NULL, NULL, NULL),
(636, 2, 14, 10, 44, '09:30', '10:15', NULL, NULL, NULL, NULL),
(637, 2, 14, 16, 8, '10:30', '11:15', NULL, NULL, NULL, NULL),
(638, 2, 14, 18, 18, '11:15', '12:00', NULL, NULL, NULL, NULL),
(639, 2, 14, 21, 32, '12:00', '12:45', NULL, NULL, NULL, NULL),
(640, 2, 14, 15, 11, '12:45', '13:30', NULL, NULL, NULL, NULL),
(641, 3, 14, 23, 35, '07:15', '08:00', NULL, NULL, NULL, NULL),
(642, 3, 14, 23, 35, '08:00', '08:45', NULL, NULL, NULL, NULL),
(643, 3, 14, 20, 5, '08:45', '09:30', NULL, NULL, NULL, NULL),
(644, 3, 14, 10, 44, '09:30', '10:15', NULL, NULL, NULL, NULL),
(645, 3, 14, 11, 34, '10:30', '11:15', NULL, NULL, NULL, NULL),
(646, 3, 14, 23, 23, '11:15', '12:00', NULL, NULL, NULL, NULL),
(647, 3, 14, 24, 29, '12:00', '12:45', NULL, NULL, NULL, NULL),
(648, 3, 14, 8, 1, '12:45', '13:30', NULL, NULL, NULL, NULL),
(649, 4, 14, 10, 26, '07:15', '08:00', NULL, NULL, NULL, NULL),
(650, 4, 14, 25, 41, '08:00', '08:45', NULL, NULL, NULL, NULL),
(651, 4, 14, 13, 24, '08:45', '09:30', NULL, NULL, NULL, NULL),
(652, 4, 14, 27, 43, '09:30', '10:15', NULL, NULL, NULL, NULL),
(653, 4, 14, 13, 16, '10:30', '11:15', NULL, NULL, NULL, NULL),
(654, 4, 14, 11, 13, '11:15', '12:00', NULL, NULL, NULL, NULL),
(655, 4, 14, 11, 13, '12:00', '12:45', NULL, NULL, NULL, NULL),
(656, 4, 14, 13, 24, '12:45', '13:30', NULL, NULL, NULL, NULL),
(657, 5, 14, 8, 1, '07:15', '08:00', NULL, NULL, NULL, NULL),
(658, 5, 14, 23, 35, '08:00', '08:45', NULL, NULL, NULL, NULL),
(659, 5, 14, 15, 28, '08:45', '09:30', NULL, NULL, NULL, NULL),
(660, 5, 14, 14, 39, '09:30', '10:15', NULL, NULL, NULL, NULL),
(661, 5, 14, 11, 34, '10:30', '11:15', NULL, NULL, NULL, NULL),
(662, 5, 14, 10, 44, '11:15', '12:00', NULL, NULL, NULL, NULL),
(663, 5, 14, 18, 18, '12:00', '12:45', NULL, NULL, NULL, NULL),
(664, 5, 14, 20, 5, '12:45', '13:30', NULL, NULL, NULL, NULL),
(665, 6, 14, 14, 30, '07:15', '08:00', NULL, NULL, NULL, NULL),
(666, 6, 14, 16, 8, '08:00', '08:45', NULL, NULL, NULL, NULL),
(667, 6, 14, 15, 11, '08:45', '09:30', NULL, NULL, NULL, NULL),
(668, 6, 14, 12, 15, '09:30', '10:15', NULL, NULL, NULL, NULL),
(669, 6, 14, 24, 19, '10:30', '11:15', NULL, NULL, NULL, NULL),
(670, 6, 14, 23, 23, '11:15', '12:00', NULL, NULL, NULL, NULL),
(671, 6, 14, 22, 22, '12:00', '12:45', NULL, NULL, NULL, NULL),
(672, 6, 14, 23, 35, '12:45', '13:30', NULL, NULL, NULL, NULL),
(673, 1, 15, 23, 23, '07:15', '08:00', NULL, NULL, NULL, NULL),
(674, 1, 15, 9, 4, '08:00', '08:45', NULL, NULL, NULL, NULL),
(675, 1, 15, 19, 38, '08:45', '09:30', NULL, NULL, NULL, NULL),
(676, 1, 15, 12, 17, '09:30', '10:15', NULL, NULL, NULL, NULL),
(677, 1, 15, 21, 42, '10:30', '11:15', NULL, NULL, NULL, NULL),
(678, 1, 15, 13, 16, '11:15', '12:00', NULL, NULL, NULL, NULL),
(679, 1, 15, 14, 39, '12:00', '12:45', NULL, NULL, NULL, NULL),
(680, 1, 15, 15, 11, '12:45', '13:30', NULL, NULL, NULL, NULL),
(681, 2, 15, 24, 21, '07:15', '08:00', NULL, NULL, NULL, NULL),
(682, 2, 15, 12, 6, '08:00', '08:45', NULL, NULL, NULL, NULL),
(683, 2, 15, 11, 37, '08:45', '09:30', NULL, NULL, NULL, NULL),
(684, 2, 15, 10, 26, '09:30', '10:15', NULL, NULL, NULL, NULL),
(685, 2, 15, 27, 43, '10:30', '11:15', NULL, NULL, NULL, NULL),
(686, 2, 15, 21, 42, '11:15', '12:00', NULL, NULL, NULL, NULL),
(687, 2, 15, 13, 24, '12:00', '12:45', NULL, NULL, NULL, NULL),
(688, 2, 15, 13, 16, '12:45', '13:30', NULL, NULL, NULL, NULL),
(689, 3, 15, 14, 30, '07:15', '08:00', NULL, NULL, NULL, NULL),
(690, 3, 15, 14, 39, '08:00', '08:45', NULL, NULL, NULL, NULL),
(691, 3, 15, 10, 3, '08:45', '09:30', NULL, NULL, NULL, NULL),
(692, 3, 15, 17, 36, '09:30', '10:15', NULL, NULL, NULL, NULL),
(693, 3, 15, 8, 1, '10:30', '11:15', NULL, NULL, NULL, NULL),
(694, 3, 15, 22, 22, '11:15', '12:00', NULL, NULL, NULL, NULL),
(695, 3, 15, 15, 11, '12:00', '12:45', NULL, NULL, NULL, NULL),
(696, 3, 15, 21, 42, '12:45', '13:30', NULL, NULL, NULL, NULL),
(697, 4, 15, 16, 33, '07:15', '08:00', NULL, NULL, NULL, NULL),
(698, 4, 15, 9, 20, '08:00', '08:45', NULL, NULL, NULL, NULL),
(699, 4, 15, 9, 4, '08:45', '09:30', NULL, NULL, NULL, NULL),
(700, 4, 15, 10, 26, '09:30', '10:15', NULL, NULL, NULL, NULL),
(701, 4, 15, 18, 18, '10:30', '11:15', NULL, NULL, NULL, NULL),
(702, 4, 15, 12, 15, '11:15', '12:00', NULL, NULL, NULL, NULL),
(703, 4, 15, 9, 20, '12:00', '12:45', NULL, NULL, NULL, NULL),
(704, 4, 15, 10, 3, '12:45', '13:30', NULL, NULL, NULL, NULL),
(705, 5, 15, 9, 4, '07:15', '08:00', NULL, NULL, NULL, NULL),
(706, 5, 15, 14, 30, '08:00', '08:45', NULL, NULL, NULL, NULL),
(707, 5, 15, 23, 35, '08:45', '09:30', NULL, NULL, NULL, NULL),
(708, 5, 15, 19, 12, '09:30', '10:15', NULL, NULL, NULL, NULL),
(709, 5, 15, 8, 40, '10:30', '11:15', NULL, NULL, NULL, NULL),
(710, 5, 15, 11, 37, '11:15', '12:00', NULL, NULL, NULL, NULL),
(711, 5, 15, 22, 22, '12:00', '12:45', NULL, NULL, NULL, NULL),
(712, 5, 15, 10, 26, '12:45', '13:30', NULL, NULL, NULL, NULL),
(713, 6, 15, 15, 11, '07:15', '08:00', NULL, NULL, NULL, NULL),
(714, 6, 15, 8, 40, '08:00', '08:45', NULL, NULL, NULL, NULL),
(715, 6, 15, 17, 36, '08:45', '09:30', NULL, NULL, NULL, NULL),
(716, 6, 15, 17, 9, '09:30', '10:15', NULL, NULL, NULL, NULL),
(717, 6, 15, 15, 11, '10:30', '11:15', NULL, NULL, NULL, NULL),
(718, 6, 15, 11, 34, '11:15', '12:00', NULL, NULL, NULL, NULL),
(719, 6, 15, 27, 43, '12:00', '12:45', NULL, NULL, NULL, NULL),
(720, 6, 15, 24, 29, '12:45', '13:30', NULL, NULL, NULL, NULL),
(721, 1, 16, 18, 25, '07:15', '08:00', NULL, NULL, NULL, NULL),
(722, 1, 16, 24, 29, '08:00', '08:45', NULL, NULL, NULL, NULL),
(723, 1, 16, 23, 35, '08:45', '09:30', NULL, NULL, NULL, NULL),
(724, 1, 16, 18, 18, '09:30', '10:15', NULL, NULL, NULL, NULL),
(725, 1, 16, 23, 23, '10:30', '11:15', NULL, NULL, NULL, NULL),
(726, 1, 16, 19, 38, '11:15', '12:00', NULL, NULL, NULL, NULL),
(727, 1, 16, 18, 18, '12:00', '12:45', NULL, NULL, NULL, NULL),
(728, 1, 16, 12, 6, '12:45', '13:30', NULL, NULL, NULL, NULL),
(729, 2, 16, 10, 26, '07:15', '08:00', NULL, NULL, NULL, NULL),
(730, 2, 16, 21, 42, '08:00', '08:45', NULL, NULL, NULL, NULL),
(731, 2, 16, 16, 33, '08:45', '09:30', NULL, NULL, NULL, NULL),
(732, 2, 16, 18, 18, '09:30', '10:15', NULL, NULL, NULL, NULL),
(733, 2, 16, 14, 39, '10:30', '11:15', NULL, NULL, NULL, NULL),
(734, 2, 16, 15, 11, '11:15', '12:00', NULL, NULL, NULL, NULL),
(735, 2, 16, 19, 12, '12:00', '12:45', NULL, NULL, NULL, NULL),
(736, 2, 16, 18, 25, '12:45', '13:30', NULL, NULL, NULL, NULL),
(737, 3, 16, 24, 19, '07:15', '08:00', NULL, NULL, NULL, NULL),
(738, 3, 16, 19, 38, '08:00', '08:45', NULL, NULL, NULL, NULL),
(739, 3, 16, 26, 31, '08:45', '09:30', NULL, NULL, NULL, NULL),
(740, 3, 16, 15, 28, '09:30', '10:15', NULL, NULL, NULL, NULL),
(741, 3, 16, 23, 35, '10:30', '11:15', NULL, NULL, NULL, NULL),
(742, 3, 16, 11, 13, '11:15', '12:00', NULL, NULL, NULL, NULL),
(743, 3, 16, 10, 7, '12:00', '12:45', NULL, NULL, NULL, NULL),
(744, 3, 16, 9, 4, '12:45', '13:30', NULL, NULL, NULL, NULL),
(745, 4, 16, 26, 31, '07:15', '08:00', NULL, NULL, NULL, NULL),
(746, 4, 16, 24, 19, '08:00', '08:45', NULL, NULL, NULL, NULL),
(747, 4, 16, 8, 1, '08:45', '09:30', NULL, NULL, NULL, NULL),
(748, 4, 16, 23, 35, '09:30', '10:15', NULL, NULL, NULL, NULL),
(749, 4, 16, 26, 31, '10:30', '11:15', NULL, NULL, NULL, NULL),
(750, 4, 16, 14, 39, '11:15', '12:00', NULL, NULL, NULL, NULL),
(751, 4, 16, 26, 31, '12:00', '12:45', NULL, NULL, NULL, NULL),
(752, 4, 16, 8, 14, '12:45', '13:30', NULL, NULL, NULL, NULL),
(753, 5, 16, 25, 41, '07:15', '08:00', NULL, NULL, NULL, NULL),
(754, 5, 16, 15, 11, '08:00', '08:45', NULL, NULL, NULL, NULL),
(755, 5, 16, 21, 32, '08:45', '09:30', NULL, NULL, NULL, NULL),
(756, 5, 16, 10, 44, '09:30', '10:15', NULL, NULL, NULL, NULL),
(757, 5, 16, 15, 28, '10:30', '11:15', NULL, NULL, NULL, NULL),
(758, 5, 16, 25, 41, '11:15', '12:00', NULL, NULL, NULL, NULL),
(759, 5, 16, 19, 12, '12:00', '12:45', NULL, NULL, NULL, NULL),
(760, 5, 16, 19, 12, '12:45', '13:30', NULL, NULL, NULL, NULL),
(761, 6, 16, 12, 17, '07:15', '08:00', NULL, NULL, NULL, NULL),
(762, 6, 16, 17, 36, '08:00', '08:45', NULL, NULL, NULL, NULL),
(763, 6, 16, 12, 15, '08:45', '09:30', NULL, NULL, NULL, NULL),
(764, 6, 16, 15, 28, '09:30', '10:15', NULL, NULL, NULL, NULL),
(765, 6, 16, 10, 3, '10:30', '11:15', NULL, NULL, NULL, NULL),
(766, 6, 16, 12, 15, '11:15', '12:00', NULL, NULL, NULL, NULL),
(767, 6, 16, 24, 29, '12:00', '12:45', NULL, NULL, NULL, NULL),
(768, 6, 16, 22, 22, '12:45', '13:30', NULL, NULL, NULL, NULL),
(769, 1, 17, 8, 40, '07:15', '08:00', NULL, NULL, NULL, NULL),
(770, 1, 17, 13, 24, '08:00', '08:45', NULL, NULL, NULL, NULL),
(771, 1, 17, 13, 16, '08:45', '09:30', NULL, NULL, NULL, NULL),
(772, 1, 17, 8, 1, '09:30', '10:15', NULL, NULL, NULL, NULL),
(773, 1, 17, 16, 8, '10:30', '11:15', NULL, NULL, NULL, NULL),
(774, 1, 17, 15, 28, '11:15', '12:00', NULL, NULL, NULL, NULL),
(775, 1, 17, 9, 20, '12:00', '12:45', NULL, NULL, NULL, NULL),
(776, 1, 17, 17, 27, '12:45', '13:30', NULL, NULL, NULL, NULL),
(777, 2, 17, 9, 20, '07:15', '08:00', NULL, NULL, NULL, NULL),
(778, 2, 17, 27, 43, '08:00', '08:45', NULL, NULL, NULL, NULL),
(779, 2, 17, 12, 6, '08:45', '09:30', NULL, NULL, NULL, NULL),
(780, 2, 17, 21, 42, '09:30', '10:15', NULL, NULL, NULL, NULL),
(781, 2, 17, 18, 25, '10:30', '11:15', NULL, NULL, NULL, NULL),
(782, 2, 17, 8, 10, '11:15', '12:00', NULL, NULL, NULL, NULL),
(783, 2, 17, 17, 9, '12:00', '12:45', NULL, NULL, NULL, NULL),
(784, 2, 17, 9, 20, '12:45', '13:30', NULL, NULL, NULL, NULL),
(785, 3, 17, 15, 11, '07:15', '08:00', NULL, NULL, NULL, NULL),
(786, 3, 17, 8, 1, '08:00', '08:45', NULL, NULL, NULL, NULL),
(787, 3, 17, 9, 20, '08:45', '09:30', NULL, NULL, NULL, NULL),
(788, 3, 17, 11, 34, '09:30', '10:15', NULL, NULL, NULL, NULL),
(789, 3, 17, 10, 3, '10:30', '11:15', NULL, NULL, NULL, NULL),
(790, 3, 17, 8, 40, '11:15', '12:00', NULL, NULL, NULL, NULL),
(791, 3, 17, 17, 27, '12:00', '12:45', NULL, NULL, NULL, NULL),
(792, 3, 17, 12, 6, '12:45', '13:30', NULL, NULL, NULL, NULL),
(793, 4, 17, 14, 39, '07:15', '08:00', NULL, NULL, NULL, NULL),
(794, 4, 17, 23, 35, '08:00', '08:45', NULL, NULL, NULL, NULL),
(795, 4, 17, 10, 3, '08:45', '09:30', NULL, NULL, NULL, NULL),
(796, 4, 17, 9, 4, '09:30', '10:15', NULL, NULL, NULL, NULL),
(797, 4, 17, 10, 26, '10:30', '11:15', NULL, NULL, NULL, NULL),
(798, 4, 17, 26, 31, '11:15', '12:00', NULL, NULL, NULL, NULL),
(799, 4, 17, 14, 39, '12:00', '12:45', NULL, NULL, NULL, NULL),
(800, 4, 17, 11, 37, '12:45', '13:30', NULL, NULL, NULL, NULL),
(801, 5, 17, 18, 25, '07:15', '08:00', NULL, NULL, NULL, NULL),
(802, 5, 17, 16, 8, '08:00', '08:45', NULL, NULL, NULL, NULL),
(803, 5, 17, 18, 25, '08:45', '09:30', NULL, NULL, NULL, NULL),
(804, 5, 17, 11, 34, '09:30', '10:15', NULL, NULL, NULL, NULL),
(805, 5, 17, 22, 22, '10:30', '11:15', NULL, NULL, NULL, NULL),
(806, 5, 17, 18, 25, '11:15', '12:00', NULL, NULL, NULL, NULL),
(807, 5, 17, 13, 16, '12:00', '12:45', NULL, NULL, NULL, NULL),
(808, 5, 17, 17, 27, '12:45', '13:30', NULL, NULL, NULL, NULL),
(809, 6, 17, 13, 24, '07:15', '08:00', NULL, NULL, NULL, NULL),
(810, 6, 17, 11, 34, '08:00', '08:45', NULL, NULL, NULL, NULL),
(811, 6, 17, 8, 14, '08:45', '09:30', NULL, NULL, NULL, NULL),
(812, 6, 17, 13, 16, '09:30', '10:15', NULL, NULL, NULL, NULL),
(813, 6, 17, 21, 42, '10:30', '11:15', NULL, NULL, NULL, NULL),
(814, 6, 17, 8, 1, '11:15', '12:00', NULL, NULL, NULL, NULL),
(815, 6, 17, 17, 36, '12:00', '12:45', NULL, NULL, NULL, NULL),
(816, 6, 17, 16, 33, '12:45', '13:30', NULL, NULL, NULL, NULL);
INSERT INTO `jadwal` (`id`, `hari_id`, `kelas_id`, `mapel_id`, `guru_id`, `jam_mulai`, `jam_selesai`, `ruang_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(817, 1, 18, 17, 36, '07:15', '08:00', NULL, NULL, NULL, NULL),
(818, 1, 18, 16, 8, '08:00', '08:45', NULL, NULL, NULL, NULL),
(819, 1, 18, 19, 2, '08:45', '09:30', NULL, NULL, NULL, NULL),
(820, 1, 18, 12, 6, '09:30', '10:15', NULL, NULL, NULL, NULL),
(821, 1, 18, 13, 16, '10:30', '11:15', NULL, NULL, NULL, NULL),
(822, 1, 18, 12, 17, '11:15', '12:00', NULL, NULL, NULL, NULL),
(823, 1, 18, 17, 9, '12:00', '12:45', NULL, NULL, NULL, NULL),
(824, 1, 18, 19, 12, '12:45', '13:30', NULL, NULL, NULL, NULL),
(825, 2, 18, 12, 17, '07:15', '08:00', NULL, NULL, NULL, NULL),
(826, 2, 18, 14, 30, '08:00', '08:45', NULL, NULL, NULL, NULL),
(827, 2, 18, 22, 22, '08:45', '09:30', NULL, NULL, NULL, NULL),
(828, 2, 18, 11, 34, '09:30', '10:15', NULL, NULL, NULL, NULL),
(829, 2, 18, 13, 16, '10:30', '11:15', NULL, NULL, NULL, NULL),
(830, 2, 18, 8, 40, '11:15', '12:00', NULL, NULL, NULL, NULL),
(831, 2, 18, 21, 42, '12:00', '12:45', NULL, NULL, NULL, NULL),
(832, 2, 18, 9, 4, '12:45', '13:30', NULL, NULL, NULL, NULL),
(833, 3, 18, 9, 20, '07:15', '08:00', NULL, NULL, NULL, NULL),
(834, 3, 18, 12, 6, '08:00', '08:45', NULL, NULL, NULL, NULL),
(835, 3, 18, 23, 35, '08:45', '09:30', NULL, NULL, NULL, NULL),
(836, 3, 18, 8, 14, '09:30', '10:15', NULL, NULL, NULL, NULL),
(837, 3, 18, 12, 17, '10:30', '11:15', NULL, NULL, NULL, NULL),
(838, 3, 18, 8, 10, '11:15', '12:00', NULL, NULL, NULL, NULL),
(839, 3, 18, 27, 43, '12:00', '12:45', NULL, NULL, NULL, NULL),
(840, 3, 18, 8, 40, '12:45', '13:30', NULL, NULL, NULL, NULL),
(841, 4, 18, 16, 8, '07:15', '08:00', NULL, NULL, NULL, NULL),
(842, 4, 18, 11, 37, '08:00', '08:45', NULL, NULL, NULL, NULL),
(843, 4, 18, 10, 7, '08:45', '09:30', NULL, NULL, NULL, NULL),
(844, 4, 18, 16, 8, '09:30', '10:15', NULL, NULL, NULL, NULL),
(845, 4, 18, 20, 5, '10:30', '11:15', NULL, NULL, NULL, NULL),
(846, 4, 18, 19, 2, '11:15', '12:00', NULL, NULL, NULL, NULL),
(847, 4, 18, 10, 44, '12:00', '12:45', NULL, NULL, NULL, NULL),
(848, 4, 18, 25, 41, '12:45', '13:30', NULL, NULL, NULL, NULL),
(849, 5, 18, 26, 31, '07:15', '08:00', NULL, NULL, NULL, NULL),
(850, 5, 18, 27, 43, '08:00', '08:45', NULL, NULL, NULL, NULL),
(851, 5, 18, 17, 36, '08:45', '09:30', NULL, NULL, NULL, NULL),
(852, 5, 18, 10, 26, '09:30', '10:15', NULL, NULL, NULL, NULL),
(853, 5, 18, 16, 8, '10:30', '11:15', NULL, NULL, NULL, NULL),
(854, 5, 18, 17, 27, '11:15', '12:00', NULL, NULL, NULL, NULL),
(855, 5, 18, 14, 30, '12:00', '12:45', NULL, NULL, NULL, NULL),
(856, 5, 18, 23, 35, '12:45', '13:30', NULL, NULL, NULL, NULL),
(857, 6, 18, 10, 3, '07:15', '08:00', NULL, NULL, NULL, NULL),
(858, 6, 18, 10, 7, '08:00', '08:45', NULL, NULL, NULL, NULL),
(859, 6, 18, 13, 16, '08:45', '09:30', NULL, NULL, NULL, NULL),
(860, 6, 18, 8, 1, '09:30', '10:15', NULL, NULL, NULL, NULL),
(861, 6, 18, 20, 5, '10:30', '11:15', NULL, NULL, NULL, NULL),
(862, 6, 18, 23, 35, '11:15', '12:00', NULL, NULL, NULL, NULL),
(863, 6, 18, 10, 44, '12:00', '12:45', NULL, NULL, NULL, NULL),
(864, 6, 18, 10, 44, '12:45', '13:30', NULL, NULL, NULL, NULL),
(865, 1, 19, 12, 17, '07:15', '08:00', NULL, NULL, NULL, NULL),
(866, 1, 19, 25, 41, '08:00', '08:45', NULL, NULL, NULL, NULL),
(867, 1, 19, 27, 43, '08:45', '09:30', NULL, NULL, NULL, NULL),
(868, 1, 19, 10, 44, '09:30', '10:15', NULL, NULL, NULL, NULL),
(869, 1, 19, 15, 28, '10:30', '11:15', NULL, NULL, NULL, NULL),
(870, 1, 19, 18, 25, '11:15', '12:00', NULL, NULL, NULL, NULL),
(871, 1, 19, 10, 3, '12:00', '12:45', NULL, NULL, NULL, NULL),
(872, 1, 19, 25, 41, '12:45', '13:30', NULL, NULL, NULL, NULL),
(873, 2, 19, 8, 14, '07:15', '08:00', NULL, NULL, NULL, NULL),
(874, 2, 19, 12, 15, '08:00', '08:45', NULL, NULL, NULL, NULL),
(875, 2, 19, 12, 17, '08:45', '09:30', NULL, NULL, NULL, NULL),
(876, 2, 19, 17, 27, '09:30', '10:15', NULL, NULL, NULL, NULL),
(877, 2, 19, 21, 42, '10:30', '11:15', NULL, NULL, NULL, NULL),
(878, 2, 19, 16, 33, '11:15', '12:00', NULL, NULL, NULL, NULL),
(879, 2, 19, 23, 35, '12:00', '12:45', NULL, NULL, NULL, NULL),
(880, 2, 19, 10, 44, '12:45', '13:30', NULL, NULL, NULL, NULL),
(881, 3, 19, 13, 16, '07:15', '08:00', NULL, NULL, NULL, NULL),
(882, 3, 19, 15, 28, '08:00', '08:45', NULL, NULL, NULL, NULL),
(883, 3, 19, 21, 42, '08:45', '09:30', NULL, NULL, NULL, NULL),
(884, 3, 19, 12, 17, '09:30', '10:15', NULL, NULL, NULL, NULL),
(885, 3, 19, 24, 19, '10:30', '11:15', NULL, NULL, NULL, NULL),
(886, 3, 19, 17, 9, '11:15', '12:00', NULL, NULL, NULL, NULL),
(887, 3, 19, 8, 40, '12:00', '12:45', NULL, NULL, NULL, NULL),
(888, 3, 19, 10, 44, '12:45', '13:30', NULL, NULL, NULL, NULL),
(889, 4, 19, 11, 13, '07:15', '08:00', NULL, NULL, NULL, NULL),
(890, 4, 19, 19, 2, '08:00', '08:45', NULL, NULL, NULL, NULL),
(891, 4, 19, 11, 34, '08:45', '09:30', NULL, NULL, NULL, NULL),
(892, 4, 19, 9, 20, '09:30', '10:15', NULL, NULL, NULL, NULL),
(893, 4, 19, 19, 2, '10:30', '11:15', NULL, NULL, NULL, NULL),
(894, 4, 19, 8, 10, '11:15', '12:00', NULL, NULL, NULL, NULL),
(895, 4, 19, 15, 11, '12:00', '12:45', NULL, NULL, NULL, NULL),
(896, 4, 19, 24, 21, '12:45', '13:30', NULL, NULL, NULL, NULL),
(897, 5, 19, 22, 22, '07:15', '08:00', NULL, NULL, NULL, NULL),
(898, 5, 19, 11, 37, '08:00', '08:45', NULL, NULL, NULL, NULL),
(899, 5, 19, 8, 40, '08:45', '09:30', NULL, NULL, NULL, NULL),
(900, 5, 19, 19, 38, '09:30', '10:15', NULL, NULL, NULL, NULL),
(901, 5, 19, 21, 32, '10:30', '11:15', NULL, NULL, NULL, NULL),
(902, 5, 19, 21, 42, '11:15', '12:00', NULL, NULL, NULL, NULL),
(903, 5, 19, 16, 33, '12:00', '12:45', NULL, NULL, NULL, NULL),
(904, 5, 19, 11, 13, '12:45', '13:30', NULL, NULL, NULL, NULL),
(905, 6, 19, 12, 15, '07:15', '08:00', NULL, NULL, NULL, NULL),
(906, 6, 19, 9, 20, '08:00', '08:45', NULL, NULL, NULL, NULL),
(907, 6, 19, 10, 26, '08:45', '09:30', NULL, NULL, NULL, NULL),
(908, 6, 19, 18, 18, '09:30', '10:15', NULL, NULL, NULL, NULL),
(909, 6, 19, 9, 20, '10:30', '11:15', NULL, NULL, NULL, NULL),
(910, 6, 19, 19, 2, '11:15', '12:00', NULL, NULL, NULL, NULL),
(911, 6, 19, 17, 9, '12:00', '12:45', NULL, NULL, NULL, NULL),
(912, 6, 19, 10, 7, '12:45', '13:30', NULL, NULL, NULL, NULL),
(913, 1, 20, 12, 15, '07:15', '08:00', NULL, NULL, NULL, NULL),
(914, 1, 20, 8, 10, '08:00', '08:45', NULL, NULL, NULL, NULL),
(915, 1, 20, 11, 37, '08:45', '09:30', NULL, NULL, NULL, NULL),
(916, 1, 20, 8, 14, '09:30', '10:15', NULL, NULL, NULL, NULL),
(917, 1, 20, 8, 14, '10:30', '11:15', NULL, NULL, NULL, NULL),
(918, 1, 20, 12, 15, '11:15', '12:00', NULL, NULL, NULL, NULL),
(919, 1, 20, 12, 17, '12:00', '12:45', NULL, NULL, NULL, NULL),
(920, 1, 20, 9, 20, '12:45', '13:30', NULL, NULL, NULL, NULL),
(921, 2, 20, 24, 19, '07:15', '08:00', NULL, NULL, NULL, NULL),
(922, 2, 20, 8, 1, '08:00', '08:45', NULL, NULL, NULL, NULL),
(923, 2, 20, 27, 43, '08:45', '09:30', NULL, NULL, NULL, NULL),
(924, 2, 20, 22, 22, '09:30', '10:15', NULL, NULL, NULL, NULL),
(925, 2, 20, 17, 27, '10:30', '11:15', NULL, NULL, NULL, NULL),
(926, 2, 20, 24, 29, '11:15', '12:00', NULL, NULL, NULL, NULL),
(927, 2, 20, 10, 3, '12:00', '12:45', NULL, NULL, NULL, NULL),
(928, 2, 20, 11, 34, '12:45', '13:30', NULL, NULL, NULL, NULL),
(929, 3, 20, 24, 29, '07:15', '08:00', NULL, NULL, NULL, NULL),
(930, 3, 20, 16, 8, '08:00', '08:45', NULL, NULL, NULL, NULL),
(931, 3, 20, 15, 11, '08:45', '09:30', NULL, NULL, NULL, NULL),
(932, 3, 20, 19, 38, '09:30', '10:15', NULL, NULL, NULL, NULL),
(933, 3, 20, 18, 18, '10:30', '11:15', NULL, NULL, NULL, NULL),
(934, 3, 20, 21, 42, '11:15', '12:00', NULL, NULL, NULL, NULL),
(935, 3, 20, 14, 30, '12:00', '12:45', NULL, NULL, NULL, NULL),
(936, 3, 20, 16, 8, '12:45', '13:30', NULL, NULL, NULL, NULL),
(937, 4, 20, 14, 30, '07:15', '08:00', NULL, NULL, NULL, NULL),
(938, 4, 20, 13, 16, '08:00', '08:45', NULL, NULL, NULL, NULL),
(939, 4, 20, 24, 19, '08:45', '09:30', NULL, NULL, NULL, NULL),
(940, 4, 20, 14, 30, '09:30', '10:15', NULL, NULL, NULL, NULL),
(941, 4, 20, 16, 33, '10:30', '11:15', NULL, NULL, NULL, NULL),
(942, 4, 20, 16, 8, '11:15', '12:00', NULL, NULL, NULL, NULL),
(943, 4, 20, 22, 22, '12:00', '12:45', NULL, NULL, NULL, NULL),
(944, 4, 20, 23, 23, '12:45', '13:30', NULL, NULL, NULL, NULL),
(945, 5, 20, 18, 18, '07:15', '08:00', NULL, NULL, NULL, NULL),
(946, 5, 20, 23, 23, '08:00', '08:45', NULL, NULL, NULL, NULL),
(947, 5, 20, 19, 2, '08:45', '09:30', NULL, NULL, NULL, NULL),
(948, 5, 20, 11, 13, '09:30', '10:15', NULL, NULL, NULL, NULL),
(949, 5, 20, 21, 42, '10:30', '11:15', NULL, NULL, NULL, NULL),
(950, 5, 20, 23, 23, '11:15', '12:00', NULL, NULL, NULL, NULL),
(951, 5, 20, 8, 40, '12:00', '12:45', NULL, NULL, NULL, NULL),
(952, 5, 20, 15, 28, '12:45', '13:30', NULL, NULL, NULL, NULL),
(953, 6, 20, 17, 9, '07:15', '08:00', NULL, NULL, NULL, NULL),
(954, 6, 20, 8, 10, '08:00', '08:45', NULL, NULL, NULL, NULL),
(955, 6, 20, 19, 2, '08:45', '09:30', NULL, NULL, NULL, NULL),
(956, 6, 20, 24, 21, '09:30', '10:15', NULL, NULL, NULL, NULL),
(957, 6, 20, 18, 18, '10:30', '11:15', NULL, NULL, NULL, NULL),
(958, 6, 20, 8, 10, '11:15', '12:00', NULL, NULL, NULL, NULL),
(959, 6, 20, 11, 37, '12:00', '12:45', NULL, NULL, NULL, NULL),
(960, 6, 20, 11, 34, '12:45', '13:30', NULL, NULL, NULL, NULL),
(961, 1, 21, 17, 27, '07:15', '08:00', NULL, NULL, NULL, NULL),
(962, 1, 21, 18, 25, '08:00', '08:45', NULL, NULL, NULL, NULL),
(963, 1, 21, 10, 7, '08:45', '09:30', NULL, NULL, NULL, NULL),
(964, 1, 21, 19, 38, '09:30', '10:15', NULL, NULL, NULL, NULL),
(965, 1, 21, 12, 17, '10:30', '11:15', NULL, NULL, NULL, NULL),
(966, 1, 21, 8, 10, '11:15', '12:00', NULL, NULL, NULL, NULL),
(967, 1, 21, 8, 40, '12:00', '12:45', NULL, NULL, NULL, NULL),
(968, 1, 21, 10, 26, '12:45', '13:30', NULL, NULL, NULL, NULL),
(969, 2, 21, 8, 1, '07:15', '08:00', NULL, NULL, NULL, NULL),
(970, 2, 21, 19, 12, '08:00', '08:45', NULL, NULL, NULL, NULL),
(971, 2, 21, 23, 35, '08:45', '09:30', NULL, NULL, NULL, NULL),
(972, 2, 21, 19, 2, '09:30', '10:15', NULL, NULL, NULL, NULL),
(973, 2, 21, 15, 11, '10:30', '11:15', NULL, NULL, NULL, NULL),
(974, 2, 21, 19, 2, '11:15', '12:00', NULL, NULL, NULL, NULL),
(975, 2, 21, 12, 17, '12:00', '12:45', NULL, NULL, NULL, NULL),
(976, 2, 21, 17, 36, '12:45', '13:30', NULL, NULL, NULL, NULL),
(977, 3, 21, 15, 28, '07:15', '08:00', NULL, NULL, NULL, NULL),
(978, 3, 21, 13, 24, '08:00', '08:45', NULL, NULL, NULL, NULL),
(979, 3, 21, 17, 9, '08:45', '09:30', NULL, NULL, NULL, NULL),
(980, 3, 21, 10, 7, '09:30', '10:15', NULL, NULL, NULL, NULL),
(981, 3, 21, 8, 40, '10:30', '11:15', NULL, NULL, NULL, NULL),
(982, 3, 21, 19, 2, '11:15', '12:00', NULL, NULL, NULL, NULL),
(983, 3, 21, 12, 6, '12:00', '12:45', NULL, NULL, NULL, NULL),
(984, 3, 21, 15, 11, '12:45', '13:30', NULL, NULL, NULL, NULL),
(985, 4, 21, 24, 19, '07:15', '08:00', NULL, NULL, NULL, NULL),
(986, 4, 21, 27, 43, '08:00', '08:45', NULL, NULL, NULL, NULL),
(987, 4, 21, 11, 13, '08:45', '09:30', NULL, NULL, NULL, NULL),
(988, 4, 21, 17, 36, '09:30', '10:15', NULL, NULL, NULL, NULL),
(989, 4, 21, 10, 44, '10:30', '11:15', NULL, NULL, NULL, NULL),
(990, 4, 21, 22, 22, '11:15', '12:00', NULL, NULL, NULL, NULL),
(991, 4, 21, 20, 5, '12:00', '12:45', NULL, NULL, NULL, NULL),
(992, 4, 21, 12, 6, '12:45', '13:30', NULL, NULL, NULL, NULL),
(993, 5, 21, 19, 38, '07:15', '08:00', NULL, NULL, NULL, NULL),
(994, 5, 21, 10, 26, '08:00', '08:45', NULL, NULL, NULL, NULL),
(995, 5, 21, 17, 9, '08:45', '09:30', NULL, NULL, NULL, NULL),
(996, 5, 21, 10, 3, '09:30', '10:15', NULL, NULL, NULL, NULL),
(997, 5, 21, 24, 19, '10:30', '11:15', NULL, NULL, NULL, NULL),
(998, 5, 21, 16, 8, '11:15', '12:00', NULL, NULL, NULL, NULL),
(999, 5, 21, 21, 42, '12:00', '12:45', NULL, NULL, NULL, NULL),
(1000, 5, 21, 8, 14, '12:45', '13:30', NULL, NULL, NULL, NULL),
(1001, 6, 21, 9, 20, '07:15', '08:00', NULL, NULL, NULL, NULL),
(1002, 6, 21, 11, 37, '08:00', '08:45', NULL, NULL, NULL, NULL),
(1003, 6, 21, 18, 18, '08:45', '09:30', NULL, NULL, NULL, NULL),
(1004, 6, 21, 20, 5, '09:30', '10:15', NULL, NULL, NULL, NULL),
(1005, 6, 21, 12, 17, '10:30', '11:15', NULL, NULL, NULL, NULL),
(1006, 6, 21, 10, 26, '11:15', '12:00', NULL, NULL, NULL, NULL),
(1007, 6, 21, 11, 13, '12:00', '12:45', NULL, NULL, NULL, NULL),
(1008, 6, 21, 12, 15, '12:45', '13:30', NULL, NULL, NULL, NULL),
(1009, 1, 22, 10, 3, '07:15', '08:00', NULL, NULL, NULL, NULL),
(1010, 1, 22, 24, 19, '08:00', '08:45', NULL, NULL, NULL, NULL),
(1011, 1, 22, 17, 27, '08:45', '09:30', NULL, NULL, NULL, NULL),
(1012, 1, 22, 10, 3, '09:30', '10:15', NULL, NULL, NULL, NULL),
(1013, 1, 22, 22, 22, '10:30', '11:15', NULL, NULL, NULL, NULL),
(1014, 1, 22, 24, 19, '11:15', '12:00', NULL, NULL, NULL, NULL),
(1015, 1, 22, 11, 34, '12:00', '12:45', NULL, NULL, NULL, NULL),
(1016, 1, 22, 11, 37, '12:45', '13:30', NULL, NULL, NULL, NULL),
(1017, 2, 22, 11, 34, '07:15', '08:00', NULL, NULL, NULL, NULL),
(1018, 2, 22, 16, 33, '08:00', '08:45', NULL, NULL, NULL, NULL),
(1019, 2, 22, 23, 23, '08:45', '09:30', NULL, NULL, NULL, NULL),
(1020, 2, 22, 12, 6, '09:30', '10:15', NULL, NULL, NULL, NULL),
(1021, 2, 22, 25, 41, '10:30', '11:15', NULL, NULL, NULL, NULL),
(1022, 2, 22, 17, 9, '11:15', '12:00', NULL, NULL, NULL, NULL),
(1023, 2, 22, 8, 1, '12:00', '12:45', NULL, NULL, NULL, NULL),
(1024, 2, 22, 10, 7, '12:45', '13:30', NULL, NULL, NULL, NULL),
(1025, 3, 22, 13, 24, '07:15', '08:00', NULL, NULL, NULL, NULL),
(1026, 3, 22, 8, 14, '08:00', '08:45', NULL, NULL, NULL, NULL),
(1027, 3, 22, 12, 6, '08:45', '09:30', NULL, NULL, NULL, NULL),
(1028, 3, 22, 12, 15, '09:30', '10:15', NULL, NULL, NULL, NULL),
(1029, 3, 22, 25, 41, '10:30', '11:15', NULL, NULL, NULL, NULL),
(1030, 3, 22, 12, 15, '11:15', '12:00', NULL, NULL, NULL, NULL),
(1031, 3, 22, 24, 19, '12:00', '12:45', NULL, NULL, NULL, NULL),
(1032, 3, 22, 17, 9, '12:45', '13:30', NULL, NULL, NULL, NULL),
(1033, 4, 22, 25, 41, '07:15', '08:00', NULL, NULL, NULL, NULL),
(1034, 4, 22, 16, 8, '08:00', '08:45', NULL, NULL, NULL, NULL),
(1035, 4, 22, 14, 30, '08:45', '09:30', NULL, NULL, NULL, NULL),
(1036, 4, 22, 15, 28, '09:30', '10:15', NULL, NULL, NULL, NULL),
(1037, 4, 22, 12, 15, '10:30', '11:15', NULL, NULL, NULL, NULL),
(1038, 4, 22, 24, 21, '11:15', '12:00', NULL, NULL, NULL, NULL),
(1039, 4, 22, 10, 3, '12:00', '12:45', NULL, NULL, NULL, NULL),
(1040, 4, 22, 12, 17, '12:45', '13:30', NULL, NULL, NULL, NULL),
(1041, 5, 22, 10, 26, '07:15', '08:00', NULL, NULL, NULL, NULL),
(1042, 5, 22, 22, 22, '08:00', '08:45', NULL, NULL, NULL, NULL),
(1043, 5, 22, 24, 29, '08:45', '09:30', NULL, NULL, NULL, NULL),
(1044, 5, 22, 12, 15, '09:30', '10:15', NULL, NULL, NULL, NULL),
(1045, 5, 22, 23, 35, '10:30', '11:15', NULL, NULL, NULL, NULL),
(1046, 5, 22, 13, 16, '11:15', '12:00', NULL, NULL, NULL, NULL),
(1047, 5, 22, 27, 43, '12:00', '12:45', NULL, NULL, NULL, NULL),
(1048, 5, 22, 11, 37, '12:45', '13:30', NULL, NULL, NULL, NULL),
(1049, 6, 22, 27, 43, '07:15', '08:00', NULL, NULL, NULL, NULL),
(1050, 6, 22, 26, 31, '08:00', '08:45', NULL, NULL, NULL, NULL),
(1051, 6, 22, 15, 28, '08:45', '09:30', NULL, NULL, NULL, NULL),
(1052, 6, 22, 19, 38, '09:30', '10:15', NULL, NULL, NULL, NULL),
(1053, 6, 22, 22, 22, '10:30', '11:15', NULL, NULL, NULL, NULL),
(1054, 6, 22, 8, 40, '11:15', '12:00', NULL, NULL, NULL, NULL),
(1055, 6, 22, 13, 24, '12:00', '12:45', NULL, NULL, NULL, NULL),
(1056, 6, 22, 17, 36, '12:45', '13:30', NULL, NULL, NULL, NULL),
(1057, 1, 23, 21, 32, '07:15', '08:00', NULL, NULL, NULL, NULL),
(1058, 1, 23, 10, 3, '08:00', '08:45', NULL, NULL, NULL, NULL),
(1059, 1, 23, 24, 29, '08:45', '09:30', NULL, NULL, NULL, NULL),
(1060, 1, 23, 9, 20, '09:30', '10:15', NULL, NULL, NULL, NULL),
(1061, 1, 23, 10, 7, '10:30', '11:15', NULL, NULL, NULL, NULL),
(1062, 1, 23, 11, 13, '11:15', '12:00', NULL, NULL, NULL, NULL),
(1063, 1, 23, 10, 26, '12:00', '12:45', NULL, NULL, NULL, NULL),
(1064, 1, 23, 11, 13, '12:45', '13:30', NULL, NULL, NULL, NULL),
(1065, 2, 23, 8, 10, '07:15', '08:00', NULL, NULL, NULL, NULL),
(1066, 2, 23, 19, 2, '08:00', '08:45', NULL, NULL, NULL, NULL),
(1067, 2, 23, 21, 32, '08:45', '09:30', NULL, NULL, NULL, NULL),
(1068, 2, 23, 14, 39, '09:30', '10:15', NULL, NULL, NULL, NULL),
(1069, 2, 23, 24, 19, '10:30', '11:15', NULL, NULL, NULL, NULL),
(1070, 2, 23, 10, 7, '11:15', '12:00', NULL, NULL, NULL, NULL),
(1071, 2, 23, 23, 23, '12:00', '12:45', NULL, NULL, NULL, NULL),
(1072, 2, 23, 19, 12, '12:45', '13:30', NULL, NULL, NULL, NULL),
(1073, 3, 23, 12, 6, '07:15', '08:00', NULL, NULL, NULL, NULL),
(1074, 3, 23, 21, 42, '08:00', '08:45', NULL, NULL, NULL, NULL),
(1075, 3, 23, 13, 24, '08:45', '09:30', NULL, NULL, NULL, NULL),
(1076, 3, 23, 24, 29, '09:30', '10:15', NULL, NULL, NULL, NULL),
(1077, 3, 23, 19, 12, '10:30', '11:15', NULL, NULL, NULL, NULL),
(1078, 3, 23, 11, 34, '11:15', '12:00', NULL, NULL, NULL, NULL),
(1079, 3, 23, 21, 32, '12:00', '12:45', NULL, NULL, NULL, NULL),
(1080, 3, 23, 23, 35, '12:45', '13:30', NULL, NULL, NULL, NULL),
(1081, 4, 23, 9, 4, '07:15', '08:00', NULL, NULL, NULL, NULL),
(1082, 4, 23, 23, 23, '08:00', '08:45', NULL, NULL, NULL, NULL),
(1083, 4, 23, 22, 22, '08:45', '09:30', NULL, NULL, NULL, NULL),
(1084, 4, 23, 15, 11, '09:30', '10:15', NULL, NULL, NULL, NULL),
(1085, 4, 23, 17, 36, '10:30', '11:15', NULL, NULL, NULL, NULL),
(1086, 4, 23, 17, 27, '11:15', '12:00', NULL, NULL, NULL, NULL),
(1087, 4, 23, 16, 33, '12:00', '12:45', NULL, NULL, NULL, NULL),
(1088, 4, 23, 19, 12, '12:45', '13:30', NULL, NULL, NULL, NULL),
(1089, 5, 23, 9, 20, '07:15', '08:00', NULL, NULL, NULL, NULL),
(1090, 5, 23, 12, 6, '08:00', '08:45', NULL, NULL, NULL, NULL),
(1091, 5, 23, 19, 12, '08:45', '09:30', NULL, NULL, NULL, NULL),
(1092, 5, 23, 24, 19, '09:30', '10:15', NULL, NULL, NULL, NULL),
(1093, 5, 23, 12, 17, '10:30', '11:15', NULL, NULL, NULL, NULL),
(1094, 5, 23, 17, 36, '11:15', '12:00', NULL, NULL, NULL, NULL),
(1095, 5, 23, 26, 31, '12:00', '12:45', NULL, NULL, NULL, NULL),
(1096, 5, 23, 21, 32, '12:45', '13:30', NULL, NULL, NULL, NULL),
(1097, 6, 23, 10, 7, '07:15', '08:00', NULL, NULL, NULL, NULL),
(1098, 6, 23, 9, 4, '08:00', '08:45', NULL, NULL, NULL, NULL),
(1099, 6, 23, 12, 17, '08:45', '09:30', NULL, NULL, NULL, NULL),
(1100, 6, 23, 19, 2, '09:30', '10:15', NULL, NULL, NULL, NULL),
(1101, 6, 23, 14, 39, '10:30', '11:15', NULL, NULL, NULL, NULL),
(1102, 6, 23, 19, 12, '11:15', '12:00', NULL, NULL, NULL, NULL),
(1103, 6, 23, 16, 33, '12:00', '12:45', NULL, NULL, NULL, NULL),
(1104, 6, 23, 8, 40, '12:45', '13:30', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jam_ajar`
--

CREATE TABLE `jam_ajar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jam_ajar`
--

INSERT INTO `jam_ajar` (`id`, `date`, `created_at`, `updated_at`) VALUES
(1, '07:15-08:00', '2024-03-27 03:41:57', '2024-03-27 03:41:57'),
(2, '08:00-08:45', '2024-03-27 03:41:57', '2024-03-27 03:41:57'),
(3, '08:45-09:30', '2024-03-27 03:41:57', '2024-03-27 03:41:57'),
(4, '09:30-10:15', '2024-03-27 03:41:57', '2024-03-27 03:41:57'),
(5, '10:30-11:15', '2024-03-27 03:41:57', '2024-03-27 03:41:57'),
(6, '11:15-12:00', '2024-03-27 03:41:57', '2024-03-27 03:41:57'),
(7, '12:00-12:45', '2024-03-27 03:41:57', '2024-03-27 03:41:57'),
(8, '12:45-13:30', '2024-03-27 03:41:57', '2024-03-27 03:41:57');

-- --------------------------------------------------------

--
-- Table structure for table `jam_ajar_old`
--

CREATE TABLE `jam_ajar_old` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jam_ajar_old`
--

INSERT INTO `jam_ajar_old` (`id`, `date`, `created_at`, `updated_at`) VALUES
(1, '08:00-08:45', '2024-03-27 03:41:57', '2024-03-27 03:41:57'),
(2, '08:45-09:30', '2024-03-27 03:41:57', '2024-03-27 03:41:57'),
(3, '09:30-10:15', '2024-03-27 03:41:57', '2024-03-27 03:41:57'),
(4, '10:15-11:00', '2024-03-27 03:41:57', '2024-03-27 03:41:57'),
(5, '11:15-12:00', '2024-03-27 03:41:57', '2024-03-27 03:41:57'),
(6, '12:00-12:45', '2024-03-27 03:41:57', '2024-03-27 03:41:57'),
(7, '12:45-13:30', '2024-03-27 03:41:57', '2024-03-27 03:41:57'),
(8, '13:30-14:10', '2024-03-27 03:41:57', '2024-03-27 03:41:57');

-- --------------------------------------------------------

--
-- Table structure for table `kehadiran`
--

CREATE TABLE `kehadiran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ket` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kehadiran`
--

INSERT INTO `kehadiran` (`id`, `ket`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Hadir', '3C0', '2023-05-15 02:12:09', '2023-05-15 02:12:09'),
(2, 'Izin', '0CF', '2023-05-15 02:12:09', '2023-05-15 02:12:09'),
(3, 'Bertugas Keluar', 'F90', '2023-05-15 02:12:09', '2023-05-15 02:12:09'),
(4, 'Sakit', 'FF0', '2023-05-15 02:12:09', '2023-05-15 02:12:09'),
(5, 'Terlambat', '7F0', '2023-05-15 02:12:09', '2023-05-15 02:12:09'),
(6, 'Tanpa Keterangan', 'F00', '2023-05-15 02:12:09', '2023-05-15 02:12:09');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kelas` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paket_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama_kelas`, `paket_id`, `guru_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'X     1', 3, 9, '2024-10-02 07:23:09', '2024-10-02 07:23:09', NULL),
(2, 'X     2', 3, 11, '2024-10-02 07:23:35', '2024-10-02 07:23:35', NULL),
(3, 'X     3', 3, 23, '2024-10-02 07:23:51', '2024-10-02 07:23:51', NULL),
(4, 'X     4', 3, 22, '2024-10-02 07:24:12', '2024-10-02 07:24:12', NULL),
(5, 'X    5', 3, 6, '2024-10-02 07:24:30', '2024-10-02 07:24:30', NULL),
(6, 'X    6', 3, 7, '2024-10-02 07:24:51', '2024-10-02 07:24:51', NULL),
(7, 'X    7', 3, 13, '2024-10-02 07:25:41', '2024-10-02 07:25:41', NULL),
(8, 'X    8', 3, 20, '2024-10-02 07:26:07', '2024-10-02 07:26:07', NULL),
(9, 'XI MIA 1', 1, 19, '2024-10-02 07:26:36', '2024-10-02 07:26:36', NULL),
(10, 'XI MIA 2', 1, 8, '2024-10-02 07:27:07', '2024-10-02 07:27:07', NULL),
(11, 'XI MIA 3', 1, 16, '2024-10-02 07:27:25', '2024-10-02 07:27:25', NULL),
(12, 'XI MIA 4', 1, 24, '2024-10-02 07:27:52', '2024-10-02 07:27:52', NULL),
(13, 'XI MIA 5', 1, 15, '2024-10-02 07:28:13', '2024-10-02 07:28:13', NULL),
(14, 'XI IIS 1', 2, 14, '2024-10-02 07:28:34', '2024-10-02 07:28:34', NULL),
(15, 'XI IIS 2', 2, 21, '2024-10-02 07:28:55', '2024-10-02 07:28:55', NULL),
(16, 'XI IIS 3', 2, 17, '2024-10-02 07:29:22', '2024-10-02 07:29:22', NULL),
(17, 'XII MIA 1', 1, 12, '2024-10-02 07:29:50', '2024-10-02 07:29:50', NULL),
(18, 'XII MIA 2', 1, 18, '2024-10-02 07:30:08', '2024-10-02 07:30:08', NULL),
(19, 'XII MIA 3', 1, 10, '2024-10-02 07:30:26', '2024-10-02 07:30:26', NULL),
(20, 'XII MIA 4', 1, 5, '2024-10-02 07:30:55', '2024-10-02 07:30:55', NULL),
(21, 'XII MIA 5', 1, 25, '2024-10-02 07:36:02', '2024-10-02 07:36:02', NULL),
(22, 'XII IIS 1', 2, 26, '2024-10-02 07:36:25', '2024-10-02 07:36:25', NULL),
(23, 'XII IIS 2', 2, 27, '2024-10-02 07:37:06', '2024-10-02 07:37:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_mapel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paket_id` int(11) NOT NULL,
  `kelompok` enum('A','B','C') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `hour_weekly` int(11) NOT NULL DEFAULT 0,
  `max_session` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id`, `nama_mapel`, `paket_id`, `kelompok`, `created_at`, `updated_at`, `deleted_at`, `hour_weekly`, `max_session`) VALUES
(8, 'Pendidikan Agama Islam', 9, 'A', '2024-04-15 11:50:09', '2024-04-15 11:50:20', NULL, 14, 4),
(9, 'PKN', 9, 'A', '2024-04-15 11:52:29', '2024-04-15 11:52:29', NULL, 8, 2),
(10, 'Bahasa Indonesia', 9, 'A', '2024-04-15 11:53:37', '2024-04-15 11:53:50', NULL, 14, 4),
(11, 'Bahasa Inggris', 9, 'A', '2024-04-15 11:54:19', '2024-04-15 11:54:19', NULL, 10, 2),
(12, 'Matematika', 9, 'A', '2024-04-15 11:55:00', '2024-04-15 11:55:00', NULL, 10, 2),
(13, 'Matematika Peminatan', 9, 'B', '2024-04-15 11:55:59', '2024-04-15 12:33:14', NULL, 7, 2),
(14, 'Geografi', 9, 'A', '2024-04-15 11:56:29', '2024-04-15 11:56:29', NULL, 10, 2),
(15, 'Ekonomi', 9, 'A', '2024-04-15 11:56:51', '2024-04-15 11:56:51', NULL, 8, 2),
(16, 'Sosiologi', 9, 'A', '2024-04-15 11:57:23', '2024-04-15 11:57:23', NULL, 8, 2),
(17, 'Fisika', 9, 'A', '2024-04-15 11:57:56', '2024-04-15 11:57:56', NULL, 10, 2),
(18, 'Kimia', 9, 'A', '2024-04-15 11:58:16', '2024-04-15 11:58:16', NULL, 9, 2),
(19, 'Biologi', 9, 'A', '2024-04-15 11:58:39', '2024-04-15 11:58:39', NULL, 8, 2),
(20, 'Sejarah', 9, 'A', '2024-04-15 11:59:01', '2024-04-15 11:59:01', NULL, 10, 2),
(21, 'Sejarah Peminatan', 9, 'B', '2024-04-15 11:59:27', '2024-04-15 11:59:27', NULL, 6, 1),
(22, 'Penjaskes', 9, 'A', '2024-04-15 11:59:51', '2024-04-15 11:59:51', NULL, 5, 2),
(23, 'Seni Budaya', 9, 'A', '2024-04-15 12:00:17', '2024-04-15 12:00:17', NULL, 6, 2),
(24, 'Prakarya', 9, 'A', '2024-04-15 12:00:43', '2024-04-15 12:00:43', NULL, 6, 1),
(25, 'Tik', 9, 'A', '2024-04-15 12:01:04', '2024-04-15 12:01:04', NULL, 7, 2),
(26, 'Mulok', 9, 'A', '2024-04-15 12:01:30', '2024-04-15 12:01:30', NULL, 6, 1),
(27, 'BP', 9, 'A', '2024-04-15 13:08:32', '2024-04-15 13:08:32', NULL, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_03_12_092809_create_hari_table', 1),
(5, '2020_03_12_092854_create_guru_table', 1),
(6, '2020_03_12_092926_create_absensi_guru_table', 1),
(7, '2020_03_12_092941_create_jadwal_table', 1),
(8, '2020_03_12_092953_create_kehadiran_table', 1),
(9, '2020_03_12_093010_create_kelas_table', 1),
(10, '2020_03_12_093018_create_mapel_table', 1),
(11, '2020_03_12_093027_create_nilai_table', 1),
(12, '2020_03_12_093036_create_paket_table', 1),
(13, '2020_03_12_093050_create_pengumuman_table', 1),
(14, '2020_03_12_093102_create_rapot_table', 1),
(15, '2020_03_12_093117_create_ruang_table', 1),
(16, '2020_03_12_093130_create_siswa_table', 1),
(17, '2020_03_16_102220_create_ulangan_table', 1),
(18, '2020_04_07_094355_create_sikap_table', 1),
(19, '2024_03_21_170525_add_max_weekly_and_hour_on_mapel', 2),
(20, '2024_03_27_103002_create_jam_ajar', 3),
(21, '2024_03_28_201558_create_generator_data', 4);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `guru_id` int(11) NOT NULL,
  `kkm` int(11) NOT NULL DEFAULT 70,
  `deskripsi_a` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi_b` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi_c` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi_d` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id`, `guru_id`, `kkm`, `deskripsi_a`, `deskripsi_b`, `deskripsi_c`, `deskripsi_d`, `created_at`, `updated_at`) VALUES
(1, 1, 70, NULL, NULL, NULL, NULL, '2023-05-15 02:33:02', '2023-05-15 02:33:02'),
(2, 49, 70, 'oke', 'oke 2', 'oke 3', 'oke 4', '2024-06-13 07:14:13', '2024-06-13 11:46:07');

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ket` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`id`, `ket`, `created_at`, `updated_at`) VALUES
(1, 'MIA', '2023-05-15 02:12:10', '2023-05-15 02:12:10'),
(2, 'IIS', '2023-05-15 02:12:10', '2023-05-15 02:12:10'),
(3, 'X', '2023-05-15 02:12:10', '2023-05-15 02:12:10');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `opsi` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `opsi`, `isi`, `created_at`, `updated_at`) VALUES
(1, 'pengumuman', 'pengumuman', '2023-05-15 02:12:09', '2023-05-15 02:12:09');

-- --------------------------------------------------------

--
-- Table structure for table `rapot`
--

CREATE TABLE `rapot` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `p_nilai` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_predikat` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_nilai` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_predikat` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_deskripsi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rapot`
--

INSERT INTO `rapot` (`id`, `siswa_id`, `kelas_id`, `guru_id`, `mapel_id`, `p_nilai`, `p_predikat`, `p_deskripsi`, `k_nilai`, `k_predikat`, `k_deskripsi`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 49, 10, '12', 'D', 'oke 4', '80', 'C', 'oke 3', '2024-06-13 11:46:25', '2024-06-13 11:47:17');

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE `ruang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_ruang` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`id`, `nama_ruang`, `created_at`, `updated_at`) VALUES
(1, 'Ruang 01', '2023-05-15 02:12:10', '2023-05-15 02:12:10'),
(2, 'Ruang 02', '2023-05-15 02:12:10', '2023-05-15 02:12:10'),
(3, 'Ruang 03', '2023-05-15 02:12:10', '2023-05-15 02:12:10'),
(4, 'Ruang 04', '2023-05-15 02:12:10', '2023-05-15 02:12:10'),
(5, 'Ruang 05', '2023-05-15 02:12:11', '2023-05-15 02:12:11'),
(6, 'Ruang 06', '2023-05-15 02:12:11', '2023-05-15 02:12:11'),
(7, 'Ruang 07', '2023-05-15 02:12:11', '2023-05-15 02:12:11'),
(8, 'Ruang 08', '2023-05-15 02:12:11', '2023-05-15 02:12:11'),
(9, 'Ruang 09', '2023-05-15 02:12:11', '2023-05-15 02:12:11'),
(10, 'Ruang 10', '2023-05-15 02:12:11', '2023-05-15 02:12:11'),
(11, 'Ruang 11', '2023-05-15 02:12:11', '2023-05-15 02:12:11'),
(12, 'Ruang 12', '2023-05-15 02:12:11', '2023-05-15 02:12:11'),
(13, 'Ruang 13', '2023-05-15 02:12:11', '2023-05-15 02:12:11'),
(14, 'Ruang 14', '2023-05-15 02:12:11', '2023-05-15 02:12:11'),
(15, 'Ruang 15', '2023-05-15 02:12:11', '2023-05-15 02:12:11'),
(16, 'Ruang 16', '2023-05-15 02:12:11', '2023-05-15 02:12:11'),
(17, 'Ruang 17', '2023-05-15 02:12:11', '2023-05-15 02:12:11'),
(18, 'Ruang 18', '2023-05-15 02:12:11', '2023-05-15 02:12:11'),
(19, 'Ruang 19', '2023-05-15 02:12:11', '2023-05-15 02:12:11'),
(20, 'Ruang 20', '2023-05-15 02:12:11', '2023-05-15 02:12:11'),
(21, 'Ruang 21', '2023-05-15 02:12:12', '2023-05-15 02:12:12'),
(22, 'Ruang 22', '2023-05-15 02:12:12', '2023-05-15 02:12:12'),
(23, 'Ruang 23', '2023-05-15 02:12:12', '2023-05-15 02:12:12'),
(24, 'Ruang 24', '2023-05-15 02:12:12', '2023-05-15 02:12:12'),
(25, 'Ruang 25', '2023-05-15 02:12:12', '2023-05-15 02:12:12'),
(26, 'Ruang 26', '2023-05-15 02:12:12', '2023-05-15 02:12:12'),
(27, 'Ruang 27', '2023-05-15 02:12:12', '2023-05-15 02:12:12'),
(28, 'Ruang 28', '2023-05-15 02:12:12', '2023-05-15 02:12:12'),
(29, 'Ruang 29', '2023-05-15 02:12:12', '2023-05-15 02:12:12'),
(30, 'Ruang 30', '2023-05-15 02:12:12', '2023-05-15 02:12:12'),
(31, 'Ruang 31', '2023-05-15 02:12:12', '2023-05-15 02:12:12'),
(32, 'Ruang 32', '2023-05-15 02:12:13', '2023-05-15 02:12:13'),
(33, 'Ruang 33', '2023-05-15 02:12:13', '2023-05-15 02:12:13'),
(34, 'Ruang 34', '2023-05-15 02:12:13', '2023-05-15 02:12:13'),
(35, 'Ruang 35', '2023-05-15 02:12:13', '2023-05-15 02:12:13'),
(36, 'Ruang 36', '2023-05-15 02:12:13', '2023-05-15 02:12:13'),
(37, 'Ruang 37', '2023-05-15 02:12:13', '2023-05-15 02:12:13'),
(38, 'Ruang 38', '2023-05-15 02:12:13', '2023-05-15 02:12:13'),
(39, 'Ruang 39', '2023-05-15 02:12:13', '2023-05-15 02:12:13'),
(40, 'Ruang 40', '2023-05-15 02:12:13', '2023-05-15 02:12:13');

-- --------------------------------------------------------

--
-- Table structure for table `sikap`
--

CREATE TABLE `sikap` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `sikap_1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sikap_2` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sikap_3` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_induk` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_siswa` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmp_lahir` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `no_induk`, `nis`, `nama_siswa`, `jk`, `telp`, `tmp_lahir`, `tgl_lahir`, `foto`, `kelas_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, '19210053', '19210053', 'Azzur Gifari', 'L', '082195767864', 'Ambon', '2002-02-01', 'uploads/siswa/52260911112024_AI-gigapixel.jpg', 1, '2024-11-11 01:26:52', '2024-11-11 01:26:52', NULL),
(5, '19210054', '19210053', 'Umrah Maharani', 'P', '085398540398', 'Pinrang', '2001-05-10', 'uploads/siswa/14331011112024_girl-8435340_1280.png', 4, '2024-11-11 02:33:14', '2024-11-11 02:33:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ulangan`
--

CREATE TABLE `ulangan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `ulha_1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ulha_2` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uts` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ulha_3` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uas` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ulangan`
--

INSERT INTO `ulangan` (`id`, `siswa_id`, `kelas_id`, `guru_id`, `mapel_id`, `ulha_1`, `ulha_2`, `uts`, `ulha_3`, `uas`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 49, 10, '12', '12', '13', '12', '12', '2024-06-13 11:46:25', '2024-06-13 11:46:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('Admin','Guru','Siswa','Kepala Sekolah') COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_induk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `no_induk`, `id_card`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$UP6xIgaLX1qNGS6MjGbMFusgtog1EdMinv9UMNluDF7uCKaV.8G2q', 'Admin', NULL, NULL, NULL, '2023-05-15 02:12:13', '2023-05-15 02:12:13', NULL),
(2, 'Sardi S. Ag', 'guru@gmail.com', NULL, '$2y$10$UP6xIgaLX1qNGS6MjGbMFusgtog1EdMinv9UMNluDF7uCKaV.8G2q', 'Guru', NULL, '00002', NULL, '2024-04-02 16:36:19', '2024-04-02 16:36:19', NULL),
(4, 'kepalasekolah', 'kepsek@gmail.com', NULL, '$2y$10$jV3.1pkfpdqUKA0KikoUBexvz30XnNULjuXK9h57AHebyTVrPgA5S', 'Kepala Sekolah', NULL, NULL, NULL, '2024-04-18 05:08:50', '2024-04-18 05:08:50', NULL),
(5, 'Anisa', 'anisa@gmail.com', NULL, '$2y$10$0WX/lb05AOA/vCkq9KPL.efwYqG/hN6Guiz8Sw4ffPWwtz98GkEx6', 'Guru', NULL, '00044', NULL, '2024-06-13 07:15:34', '2024-11-11 01:33:48', '2024-11-11 01:33:48'),
(6, 'azzur gifari', 'azzur@gmail.com', NULL, '$2y$10$g8RoV9zKBDlQv7pFjaWT3O4aYjjEEo/ug1sZFhcHmg/1z00/upwjC', 'Siswa', '19210053', NULL, NULL, '2024-11-11 01:27:52', '2024-11-11 01:27:52', NULL),
(7, 'Sukarsi Talib, S.Pd', 'sukarsi@gmail.com', NULL, '$2y$10$qYgNUgnTPkABQzldHZMR6.Y3rYnL8TlXMF6nR4glt9jKErqoTliTO', 'Guru', NULL, '00009', '6cSka2vPSPVFyubXowrW8JraBueqPBZS1h7UM0Pdi854m7MlRAxe1Fz27HMV', '2024-11-11 02:28:13', '2024-11-11 02:28:13', NULL),
(8, 'umrah maharani', 'umrah@gmail.com', NULL, '$2y$10$4NekhHHGTkXOm0gp9Z.yc.VyYbUwzQ9VtFPlaw0/bD0VfnAf3VAXq', 'Siswa', '19210054', NULL, NULL, '2024-11-11 02:35:09', '2024-11-11 02:35:09', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi_guru`
--
ALTER TABLE `absensi_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generator_data`
--
ALTER TABLE `generator_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hari`
--
ALTER TABLE `hari`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jam_ajar`
--
ALTER TABLE `jam_ajar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jam_ajar_old`
--
ALTER TABLE `jam_ajar_old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rapot`
--
ALTER TABLE `rapot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sikap`
--
ALTER TABLE `sikap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ulangan`
--
ALTER TABLE `ulangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi_guru`
--
ALTER TABLE `absensi_guru`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `generator_data`
--
ALTER TABLE `generator_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `hari`
--
ALTER TABLE `hari`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1105;

--
-- AUTO_INCREMENT for table `jam_ajar`
--
ALTER TABLE `jam_ajar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jam_ajar_old`
--
ALTER TABLE `jam_ajar_old`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kehadiran`
--
ALTER TABLE `kehadiran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rapot`
--
ALTER TABLE `rapot`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ruang`
--
ALTER TABLE `ruang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `sikap`
--
ALTER TABLE `sikap`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ulangan`
--
ALTER TABLE `ulangan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
