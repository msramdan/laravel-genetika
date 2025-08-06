-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 10 Nov 2024 pada 22.57
-- Versi server: 8.0.30
-- Versi PHP: 7.4.19

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
-- Struktur dari tabel `absensi_guru`
--

CREATE TABLE `absensi_guru` (
  `id` bigint UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `guru_id` int NOT NULL,
  `kehadiran_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `generator_data`
--

CREATE TABLE `generator_data` (
  `id` bigint UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

--
-- Dumping data untuk tabel `generator_data`
--

INSERT INTO `generator_data` (`id`, `data`, `created_at`, `updated_at`) VALUES
(1, '{\"Kelas 1\":{\"Senin\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"17s\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Zainab, S.Pd\",\"namaMapel\":\"Mulok\",\"kelompok\":\"A\",\"code\":\"36z\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Wa Ode Marniati, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"16o\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"27v\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Nursinah Umasangadji, S,pd\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"5h\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Sakina Badar, S.Pdi\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"45h\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"39k\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Sahrun, M.Pd\",\"namaMapel\":\"BP\",\"kelompok\":\"A\",\"code\":\"48a\"}],\"Selasa\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"15h\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Mujahid, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"22l\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"14q\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Wa Ode Asmawati, S.pd\",\"namaMapel\":\"Sejarah\",\"kelompok\":\"A\",\"code\":\"9t\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"28w\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Nairia Bobi, S.Pd\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"47u\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Karmila Paputungan, S.pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"8i\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Sariman Hamjah, S.Pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"31j\"}],\"Rabu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Nur Farida, S.Pd\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"38p\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Wa Ode Asmawati, S.pd\",\"namaMapel\":\"Sejarah\",\"kelompok\":\"A\",\"code\":\"9t\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Sahrun, M.Pd\",\"namaMapel\":\"BP\",\"kelompok\":\"A\",\"code\":\"48a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Mujahid, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"22l\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Darwin Nurdin, M.pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"10l\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Karmila Paputungan, S.pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"8i\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Rina Sahamrin, S.Pd\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"24x\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"30r\"}],\"Kamis\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Bakri Zen, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"19h\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Rafli Tempola, M.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"18k\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"15h\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"23r\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Fitria Majid, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"21m\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"27v\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"23r\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Kalam Abd. Kahar, S.Kom\",\"namaMapel\":\"Tik\",\"kelompok\":\"A\",\"code\":\"46y\"}],\"Jum\'at\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Zainab, S.Pd\",\"namaMapel\":\"Mulok\",\"kelompok\":\"A\",\"code\":\"36z\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"35n\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Bakri Zen, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"19h\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Rini Agriani F. Tomayto, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"44n\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"23r\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"28w\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Karmila Paputungan, S.pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"8i\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"35n\"}],\"Sabtu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Surtina Makmun, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"40w\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"39k\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Anisa\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"49j\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"27v\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"13p\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"28w\"}]},\"Kelas 2\":{\"Senin\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Nurlela Adam, S.Pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"25i\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Zainab, S.Pd\",\"namaMapel\":\"Mulok\",\"kelompok\":\"A\",\"code\":\"36z\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Jufri M. Nur, SE\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"26x\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Rini Agriani F. Tomayto, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"44n\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Suriana Masini, S.Pdi\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"34x\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Samad HI Yusuf, S.Pd\",\"namaMapel\":\"Penjaskes\",\"kelompok\":\"A\",\"code\":\"27v\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"30r\"}],\"Selasa\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"14q\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Nairia Bobi, S.Pd\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"47u\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Rafli Tempola, M.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"18k\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Suriana Masini, S.Pdi\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"34x\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Bakri Zen, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"19h\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Suhaimi Hi. Husen, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"43s\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Masia Lapenampo, S.Ag\",\"namaMapel\":\"Sosiologi\",\"kelompok\":\"A\",\"code\":\"13p\"}],\"Rabu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Mujahid, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"22l\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Rafli Tempola, M.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"18k\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"15h\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Wardi Saleh, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"29m\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"42k\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Wahyudi Barmawi, S.S., M.AP\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"37u\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Surtina Makmun, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"40w\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"39k\"}],\"Kamis\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"30r\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Sariman Hamjah, S.Pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"31j\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"20l\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Sahrun, M.Pd\",\"namaMapel\":\"BP\",\"kelompok\":\"A\",\"code\":\"48a\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Nursinah Umasangadji, S,pd\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"5h\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Mujahid, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"22l\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Wa Ode Marniati, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"16o\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"17s\"}],\"Jum\'at\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Jufri M. Nur, SE\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"26x\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Anisa\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"49j\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Suriana Masini, S.Pdi\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"34x\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"41q\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"35n\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Riswan A. Siraju, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"7j\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Wardi Saleh, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"29m\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Anisa\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"49j\"}],\"Sabtu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Bakri Zen, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"19h\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"42k\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Marwati, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"12j\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Darwin Nurdin, M.pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"10l\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Kalam Abd. Kahar, S.Kom\",\"namaMapel\":\"Tik\",\"kelompok\":\"A\",\"code\":\"46y\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Darwin Nurdin, M.pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"10l\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Faisal Abd. Rahman, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"35n\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"39k\"}]},\"KELAS 3\":{\"Senin\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"28w\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Rina Sahamrin, S.Pd\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"24x\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"39k\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Rina Sahamrin, S.Pd\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"24x\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Wa Ode Asmawati, S.pd\",\"namaMapel\":\"Sejarah\",\"kelompok\":\"A\",\"code\":\"9t\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Wahyudi Barmawi, S.S., M.AP\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"37u\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"23r\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"41q\"}],\"Selasa\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Fitria Majid, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"21m\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Husen Umar, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"30r\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"41q\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"33o\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Nairia Bobi, S.Pd\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"47u\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"17s\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Wardi Saleh, S.Pd\",\"namaMapel\":\"Matematika Peminatan\",\"kelompok\":\"B\",\"code\":\"29m\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Rini Agriani F. Tomayto, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"44n\"}],\"Rabu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Juraida Ishak, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"42k\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Marwati, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"12j\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"41q\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Bakri Zen, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"19h\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Suhaimi Hi. Husen, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"43s\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"33o\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Bakri Zen, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"19h\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Sukarsi Talib, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"14q\"}],\"Kamis\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Haryati Ajudin, S.Pd\",\"namaMapel\":\"Fisika\",\"kelompok\":\"A\",\"code\":\"41q\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Sahrun, M.Pd\",\"namaMapel\":\"BP\",\"kelompok\":\"A\",\"code\":\"48a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Bakri Zen, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"19h\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Kalam Abd. Kahar, S.Kom\",\"namaMapel\":\"Tik\",\"kelompok\":\"A\",\"code\":\"46y\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"39k\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"15h\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Ardi M. Robo, S.Pd\",\"namaMapel\":\"Ekonomi\",\"kelompok\":\"A\",\"code\":\"33o\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Mulyati Rahman, S.Pd\",\"namaMapel\":\"Seni Budaya\",\"kelompok\":\"A\",\"code\":\"28w\"}],\"Jum\'at\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Rini Agriani F. Tomayto, S.Pd\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"44n\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Rafli Tempola, M.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"18k\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"17s\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Nursinah Umasangadji, S,pd\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"5h\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Karmila Paputungan, S.pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"8i\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Rahmat Djalil, S.Pd\",\"namaMapel\":\"Biologi\",\"kelompok\":\"A\",\"code\":\"17s\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Sariman Hamjah, S.Pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"31j\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Nurlela Adam, S.Pd\",\"namaMapel\":\"PKN\",\"kelompok\":\"A\",\"code\":\"25i\"}],\"Sabtu\":[{\"jamAjar\":\"07:15-08:00\",\"guru\":\"Wahyudi Barmawi, S.S., M.AP\",\"namaMapel\":\"Sejarah Peminatan\",\"kelompok\":\"B\",\"code\":\"37u\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Sarina La Efendi, S.Pd\",\"namaMapel\":\"Kimia\",\"kelompok\":\"A\",\"code\":\"23r\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Jufri M. Nur, SE\",\"namaMapel\":\"Prakarya\",\"kelompok\":\"A\",\"code\":\"26x\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Wiwik Wahyuningsih, S.Ag\",\"namaMapel\":\"Pendidikan Agama Islam\",\"kelompok\":\"A\",\"code\":\"15h\"},{\"jamAjar\":\"10:30-11:15\",\"guru\":\"Marwati, M.pd\",\"namaMapel\":\"Bahasa Indonesia\",\"kelompok\":\"A\",\"code\":\"12j\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Rahmi Daeyani Soeraidy, S.Pd\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"20l\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Fahima Salim, S.Pd\",\"namaMapel\":\"Bahasa Inggris\",\"kelompok\":\"A\",\"code\":\"39k\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Wa Ode Asmawati, S.pd\",\"namaMapel\":\"Sejarah\",\"kelompok\":\"A\",\"code\":\"9t\"}]}}', '2024-11-10 12:56:31', '2024-11-10 12:56:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id` bigint UNSIGNED NOT NULL,
  `id_card` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_guru` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mapel_id` int NOT NULL,
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
-- Dumping data untuk tabel `guru`
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
(9, '00009', '197906282006042019', 'Sukarsi Talib, S.Pd', 17, '009', 'P', NULL, NULL, NULL, 'uploads/guru/23171022042020_female.jpg', '2024-04-15 12:24:23', '2024-04-15 12:24:23', NULL),
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
-- Struktur dari tabel `hari`
--

CREATE TABLE `hari` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_hari` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `hari`
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
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id` bigint UNSIGNED NOT NULL,
  `hari_id` int NOT NULL,
  `kelas_id` int NOT NULL,
  `mapel_id` int NOT NULL,
  `guru_id` int NOT NULL,
  `jam_mulai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_selesai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruang_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id`, `hari_id`, `kelas_id`, `mapel_id`, `guru_id`, `jam_mulai`, `jam_selesai`, `ruang_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 19, 17, '07:15', '08:00', NULL, NULL, NULL, NULL),
(2, 1, 1, 26, 36, '08:00', '08:45', NULL, NULL, NULL, NULL),
(3, 1, 1, 15, 16, '08:45', '09:30', NULL, NULL, NULL, NULL),
(4, 1, 1, 22, 27, '09:30', '10:15', NULL, NULL, NULL, NULL),
(5, 1, 1, 8, 5, '10:30', '11:15', NULL, NULL, NULL, NULL),
(6, 1, 1, 8, 45, '11:15', '12:00', NULL, NULL, NULL, NULL),
(7, 1, 1, 11, 39, '12:00', '12:45', NULL, NULL, NULL, NULL),
(8, 1, 1, 27, 48, '12:45', '13:30', NULL, NULL, NULL, NULL),
(9, 2, 1, 8, 15, '07:15', '08:00', NULL, NULL, NULL, NULL),
(10, 2, 1, 12, 22, '08:00', '08:45', NULL, NULL, NULL, NULL),
(11, 2, 1, 17, 14, '08:45', '09:30', NULL, NULL, NULL, NULL),
(12, 2, 1, 20, 9, '09:30', '10:15', NULL, NULL, NULL, NULL),
(13, 2, 1, 23, 28, '10:30', '11:15', NULL, NULL, NULL, NULL),
(14, 2, 1, 21, 47, '11:15', '12:00', NULL, NULL, NULL, NULL),
(15, 2, 1, 9, 8, '12:00', '12:45', NULL, NULL, NULL, NULL),
(16, 2, 1, 10, 31, '12:45', '13:30', NULL, NULL, NULL, NULL),
(17, 3, 1, 16, 38, '07:15', '08:00', NULL, NULL, NULL, NULL),
(18, 3, 1, 20, 9, '08:00', '08:45', NULL, NULL, NULL, NULL),
(19, 3, 1, 27, 48, '08:45', '09:30', NULL, NULL, NULL, NULL),
(20, 3, 1, 12, 22, '09:30', '10:15', NULL, NULL, NULL, NULL),
(21, 3, 1, 12, 10, '10:30', '11:15', NULL, NULL, NULL, NULL),
(22, 3, 1, 9, 8, '11:15', '12:00', NULL, NULL, NULL, NULL),
(23, 3, 1, 24, 24, '12:00', '12:45', NULL, NULL, NULL, NULL),
(24, 3, 1, 18, 30, '12:45', '13:30', NULL, NULL, NULL, NULL),
(25, 4, 1, 8, 19, '07:15', '08:00', NULL, NULL, NULL, NULL),
(26, 4, 1, 11, 18, '08:00', '08:45', NULL, NULL, NULL, NULL),
(27, 4, 1, 8, 15, '08:45', '09:30', NULL, NULL, NULL, NULL),
(28, 4, 1, 18, 23, '09:30', '10:15', NULL, NULL, NULL, NULL),
(29, 4, 1, 13, 21, '10:30', '11:15', NULL, NULL, NULL, NULL),
(30, 4, 1, 22, 27, '11:15', '12:00', NULL, NULL, NULL, NULL),
(31, 4, 1, 18, 23, '12:00', '12:45', NULL, NULL, NULL, NULL),
(32, 4, 1, 25, 46, '12:45', '13:30', NULL, NULL, NULL, NULL),
(33, 5, 1, 26, 36, '07:15', '08:00', NULL, NULL, NULL, NULL),
(34, 5, 1, 14, 35, '08:00', '08:45', NULL, NULL, NULL, NULL),
(35, 5, 1, 8, 19, '08:45', '09:30', NULL, NULL, NULL, NULL),
(36, 5, 1, 14, 44, '09:30', '10:15', NULL, NULL, NULL, NULL),
(37, 5, 1, 18, 23, '10:30', '11:15', NULL, NULL, NULL, NULL),
(38, 5, 1, 23, 28, '11:15', '12:00', NULL, NULL, NULL, NULL),
(39, 5, 1, 9, 8, '12:00', '12:45', NULL, NULL, NULL, NULL),
(40, 5, 1, 14, 35, '12:45', '13:30', NULL, NULL, NULL, NULL),
(41, 6, 1, 23, 40, '07:15', '08:00', NULL, NULL, NULL, NULL),
(42, 6, 1, 10, 7, '08:00', '08:45', NULL, NULL, NULL, NULL),
(43, 6, 1, 11, 39, '08:45', '09:30', NULL, NULL, NULL, NULL),
(44, 6, 1, 10, 49, '09:30', '10:15', NULL, NULL, NULL, NULL),
(45, 6, 1, 10, 7, '10:30', '11:15', NULL, NULL, NULL, NULL),
(46, 6, 1, 22, 27, '11:15', '12:00', NULL, NULL, NULL, NULL),
(47, 6, 1, 16, 13, '12:00', '12:45', NULL, NULL, NULL, NULL),
(48, 6, 1, 23, 28, '12:45', '13:30', NULL, NULL, NULL, NULL),
(49, 1, 2, 10, 7, '07:15', '08:00', NULL, NULL, NULL, NULL),
(50, 1, 2, 9, 25, '08:00', '08:45', NULL, NULL, NULL, NULL),
(51, 1, 2, 26, 36, '08:45', '09:30', NULL, NULL, NULL, NULL),
(52, 1, 2, 24, 26, '09:30', '10:15', NULL, NULL, NULL, NULL),
(53, 1, 2, 14, 44, '10:30', '11:15', NULL, NULL, NULL, NULL),
(54, 1, 2, 24, 34, '11:15', '12:00', NULL, NULL, NULL, NULL),
(55, 1, 2, 22, 27, '12:00', '12:45', NULL, NULL, NULL, NULL),
(56, 1, 2, 18, 30, '12:45', '13:30', NULL, NULL, NULL, NULL),
(57, 2, 2, 17, 14, '07:15', '08:00', NULL, NULL, NULL, NULL),
(58, 2, 2, 10, 7, '08:00', '08:45', NULL, NULL, NULL, NULL),
(59, 2, 2, 21, 47, '08:45', '09:30', NULL, NULL, NULL, NULL),
(60, 2, 2, 11, 18, '09:30', '10:15', NULL, NULL, NULL, NULL),
(61, 2, 2, 24, 34, '10:30', '11:15', NULL, NULL, NULL, NULL),
(62, 2, 2, 8, 19, '11:15', '12:00', NULL, NULL, NULL, NULL),
(63, 2, 2, 19, 43, '12:00', '12:45', NULL, NULL, NULL, NULL),
(64, 2, 2, 16, 13, '12:45', '13:30', NULL, NULL, NULL, NULL),
(65, 3, 2, 12, 22, '07:15', '08:00', NULL, NULL, NULL, NULL),
(66, 3, 2, 11, 18, '08:00', '08:45', NULL, NULL, NULL, NULL),
(67, 3, 2, 8, 15, '08:45', '09:30', NULL, NULL, NULL, NULL),
(68, 3, 2, 13, 29, '09:30', '10:15', NULL, NULL, NULL, NULL),
(69, 3, 2, 11, 42, '10:30', '11:15', NULL, NULL, NULL, NULL),
(70, 3, 2, 21, 37, '11:15', '12:00', NULL, NULL, NULL, NULL),
(71, 3, 2, 23, 40, '12:00', '12:45', NULL, NULL, NULL, NULL),
(72, 3, 2, 11, 39, '12:45', '13:30', NULL, NULL, NULL, NULL),
(73, 4, 2, 18, 30, '07:15', '08:00', NULL, NULL, NULL, NULL),
(74, 4, 2, 10, 31, '08:00', '08:45', NULL, NULL, NULL, NULL),
(75, 4, 2, 12, 20, '08:45', '09:30', NULL, NULL, NULL, NULL),
(76, 4, 2, 27, 48, '09:30', '10:15', NULL, NULL, NULL, NULL),
(77, 4, 2, 8, 5, '10:30', '11:15', NULL, NULL, NULL, NULL),
(78, 4, 2, 12, 22, '11:15', '12:00', NULL, NULL, NULL, NULL),
(79, 4, 2, 15, 16, '12:00', '12:45', NULL, NULL, NULL, NULL),
(80, 4, 2, 19, 17, '12:45', '13:30', NULL, NULL, NULL, NULL),
(81, 5, 2, 24, 26, '07:15', '08:00', NULL, NULL, NULL, NULL),
(82, 5, 2, 10, 49, '08:00', '08:45', NULL, NULL, NULL, NULL),
(83, 5, 2, 24, 34, '08:45', '09:30', NULL, NULL, NULL, NULL),
(84, 5, 2, 17, 41, '09:30', '10:15', NULL, NULL, NULL, NULL),
(85, 5, 2, 14, 35, '10:30', '11:15', NULL, NULL, NULL, NULL),
(86, 5, 2, 10, 7, '11:15', '12:00', NULL, NULL, NULL, NULL),
(87, 5, 2, 13, 29, '12:00', '12:45', NULL, NULL, NULL, NULL),
(88, 5, 2, 10, 49, '12:45', '13:30', NULL, NULL, NULL, NULL),
(89, 6, 2, 8, 19, '07:15', '08:00', NULL, NULL, NULL, NULL),
(90, 6, 2, 11, 42, '08:00', '08:45', NULL, NULL, NULL, NULL),
(91, 6, 2, 10, 12, '08:45', '09:30', NULL, NULL, NULL, NULL),
(92, 6, 2, 12, 10, '09:30', '10:15', NULL, NULL, NULL, NULL),
(93, 6, 2, 25, 46, '10:30', '11:15', NULL, NULL, NULL, NULL),
(94, 6, 2, 12, 10, '11:15', '12:00', NULL, NULL, NULL, NULL),
(95, 6, 2, 14, 35, '12:00', '12:45', NULL, NULL, NULL, NULL),
(96, 6, 2, 11, 39, '12:45', '13:30', NULL, NULL, NULL, NULL),
(97, 1, 3, 23, 28, '07:15', '08:00', NULL, NULL, NULL, NULL),
(98, 1, 3, 24, 24, '08:00', '08:45', NULL, NULL, NULL, NULL),
(99, 1, 3, 11, 39, '08:45', '09:30', NULL, NULL, NULL, NULL),
(100, 1, 3, 24, 24, '09:30', '10:15', NULL, NULL, NULL, NULL),
(101, 1, 3, 20, 9, '10:30', '11:15', NULL, NULL, NULL, NULL),
(102, 1, 3, 21, 37, '11:15', '12:00', NULL, NULL, NULL, NULL),
(103, 1, 3, 18, 23, '12:00', '12:45', NULL, NULL, NULL, NULL),
(104, 1, 3, 17, 41, '12:45', '13:30', NULL, NULL, NULL, NULL),
(105, 2, 3, 13, 21, '07:15', '08:00', NULL, NULL, NULL, NULL),
(106, 2, 3, 18, 30, '08:00', '08:45', NULL, NULL, NULL, NULL),
(107, 2, 3, 17, 41, '08:45', '09:30', NULL, NULL, NULL, NULL),
(108, 2, 3, 15, 33, '09:30', '10:15', NULL, NULL, NULL, NULL),
(109, 2, 3, 21, 47, '10:30', '11:15', NULL, NULL, NULL, NULL),
(110, 2, 3, 19, 17, '11:15', '12:00', NULL, NULL, NULL, NULL),
(111, 2, 3, 13, 29, '12:00', '12:45', NULL, NULL, NULL, NULL),
(112, 2, 3, 14, 44, '12:45', '13:30', NULL, NULL, NULL, NULL),
(113, 3, 3, 11, 42, '07:15', '08:00', NULL, NULL, NULL, NULL),
(114, 3, 3, 10, 12, '08:00', '08:45', NULL, NULL, NULL, NULL),
(115, 3, 3, 17, 41, '08:45', '09:30', NULL, NULL, NULL, NULL),
(116, 3, 3, 8, 19, '09:30', '10:15', NULL, NULL, NULL, NULL),
(117, 3, 3, 19, 43, '10:30', '11:15', NULL, NULL, NULL, NULL),
(118, 3, 3, 15, 33, '11:15', '12:00', NULL, NULL, NULL, NULL),
(119, 3, 3, 8, 19, '12:00', '12:45', NULL, NULL, NULL, NULL),
(120, 3, 3, 17, 14, '12:45', '13:30', NULL, NULL, NULL, NULL),
(121, 4, 3, 17, 41, '07:15', '08:00', NULL, NULL, NULL, NULL),
(122, 4, 3, 27, 48, '08:00', '08:45', NULL, NULL, NULL, NULL),
(123, 4, 3, 8, 19, '08:45', '09:30', NULL, NULL, NULL, NULL),
(124, 4, 3, 25, 46, '09:30', '10:15', NULL, NULL, NULL, NULL),
(125, 4, 3, 11, 39, '10:30', '11:15', NULL, NULL, NULL, NULL),
(126, 4, 3, 8, 15, '11:15', '12:00', NULL, NULL, NULL, NULL),
(127, 4, 3, 15, 33, '12:00', '12:45', NULL, NULL, NULL, NULL),
(128, 4, 3, 23, 28, '12:45', '13:30', NULL, NULL, NULL, NULL),
(129, 5, 3, 14, 44, '07:15', '08:00', NULL, NULL, NULL, NULL),
(130, 5, 3, 11, 18, '08:00', '08:45', NULL, NULL, NULL, NULL),
(131, 5, 3, 19, 17, '08:45', '09:30', NULL, NULL, NULL, NULL),
(132, 5, 3, 8, 5, '09:30', '10:15', NULL, NULL, NULL, NULL),
(133, 5, 3, 9, 8, '10:30', '11:15', NULL, NULL, NULL, NULL),
(134, 5, 3, 19, 17, '11:15', '12:00', NULL, NULL, NULL, NULL),
(135, 5, 3, 10, 31, '12:00', '12:45', NULL, NULL, NULL, NULL),
(136, 5, 3, 9, 25, '12:45', '13:30', NULL, NULL, NULL, NULL),
(137, 6, 3, 21, 37, '07:15', '08:00', NULL, NULL, NULL, NULL),
(138, 6, 3, 18, 23, '08:00', '08:45', NULL, NULL, NULL, NULL),
(139, 6, 3, 24, 26, '08:45', '09:30', NULL, NULL, NULL, NULL),
(140, 6, 3, 8, 15, '09:30', '10:15', NULL, NULL, NULL, NULL),
(141, 6, 3, 10, 12, '10:30', '11:15', NULL, NULL, NULL, NULL),
(142, 6, 3, 12, 20, '11:15', '12:00', NULL, NULL, NULL, NULL),
(143, 6, 3, 11, 39, '12:00', '12:45', NULL, NULL, NULL, NULL),
(144, 6, 3, 20, 9, '12:45', '13:30', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jam_ajar`
--

CREATE TABLE `jam_ajar` (
  `id` bigint UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jam_ajar`
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
-- Struktur dari tabel `jam_ajar_old`
--

CREATE TABLE `jam_ajar_old` (
  `id` bigint UNSIGNED NOT NULL,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jam_ajar_old`
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
-- Struktur dari tabel `kehadiran`
--

CREATE TABLE `kehadiran` (
  `id` bigint UNSIGNED NOT NULL,
  `ket` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kehadiran`
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
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_kelas` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paket_id` int NOT NULL,
  `guru_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kelas`
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
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_mapel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paket_id` int NOT NULL,
  `kelompok` enum('A','B','C') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `hour_weekly` int NOT NULL DEFAULT '0',
  `max_session` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id`, `nama_mapel`, `paket_id`, `kelompok`, `created_at`, `updated_at`, `deleted_at`, `hour_weekly`, `max_session`) VALUES
(1, 'Matematika', 9, 'A', '2023-05-14 19:16:32', '2024-04-15 11:42:47', '2024-04-15 11:42:47', 12, 2),
(2, 'Geografi', 9, 'A', '2023-05-14 19:21:47', '2024-04-15 11:42:42', '2024-04-15 11:42:42', 16, 2),
(3, 'Olahraga', 9, 'A', NULL, '2024-04-15 11:42:49', '2024-04-15 11:42:49', 4, 4),
(4, 'Agama', 9, 'A', NULL, '2024-04-15 11:42:40', '2024-04-15 11:42:40', 8, 2),
(7, 'IPS', 9, 'A', '2024-03-29 07:22:03', '2024-04-15 11:42:45', '2024-04-15 11:42:45', 16, 3),
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
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
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id` bigint UNSIGNED NOT NULL,
  `guru_id` int NOT NULL,
  `kkm` int NOT NULL DEFAULT '70',
  `deskripsi_a` text COLLATE utf8mb4_unicode_ci,
  `deskripsi_b` text COLLATE utf8mb4_unicode_ci,
  `deskripsi_c` text COLLATE utf8mb4_unicode_ci,
  `deskripsi_d` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id`, `guru_id`, `kkm`, `deskripsi_a`, `deskripsi_b`, `deskripsi_c`, `deskripsi_d`, `created_at`, `updated_at`) VALUES
(1, 1, 70, NULL, NULL, NULL, NULL, '2023-05-15 02:33:02', '2023-05-15 02:33:02'),
(2, 49, 70, 'oke', 'oke 2', 'oke 3', 'oke 4', '2024-06-13 07:14:13', '2024-06-13 11:46:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket`
--

CREATE TABLE `paket` (
  `id` bigint UNSIGNED NOT NULL,
  `ket` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `paket`
--

INSERT INTO `paket` (`id`, `ket`, `created_at`, `updated_at`) VALUES
(1, 'MIA', '2023-05-15 02:12:10', '2023-05-15 02:12:10'),
(2, 'IIS', '2023-05-15 02:12:10', '2023-05-15 02:12:10'),
(3, 'X', '2023-05-15 02:12:10', '2023-05-15 02:12:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` bigint UNSIGNED NOT NULL,
  `opsi` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `opsi`, `isi`, `created_at`, `updated_at`) VALUES
(1, 'pengumuman', 'pengumuman', '2023-05-15 02:12:09', '2023-05-15 02:12:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rapot`
--

CREATE TABLE `rapot` (
  `id` bigint UNSIGNED NOT NULL,
  `siswa_id` int NOT NULL,
  `kelas_id` int NOT NULL,
  `guru_id` int NOT NULL,
  `mapel_id` int NOT NULL,
  `p_nilai` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_predikat` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_nilai` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_predikat` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_deskripsi` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rapot`
--

INSERT INTO `rapot` (`id`, `siswa_id`, `kelas_id`, `guru_id`, `mapel_id`, `p_nilai`, `p_predikat`, `p_deskripsi`, `k_nilai`, `k_predikat`, `k_deskripsi`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 49, 10, '12', 'D', 'oke 4', '80', 'C', 'oke 3', '2024-06-13 11:46:25', '2024-06-13 11:47:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang`
--

CREATE TABLE `ruang` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_ruang` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ruang`
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
-- Struktur dari tabel `sikap`
--

CREATE TABLE `sikap` (
  `id` bigint UNSIGNED NOT NULL,
  `siswa_id` int NOT NULL,
  `kelas_id` int NOT NULL,
  `guru_id` int NOT NULL,
  `mapel_id` int NOT NULL,
  `sikap_1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sikap_2` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sikap_3` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint UNSIGNED NOT NULL,
  `no_induk` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_siswa` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmp_lahir` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `no_induk`, `nis`, `nama_siswa`, `jk`, `telp`, `tmp_lahir`, `tgl_lahir`, `foto`, `kelas_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '19210053', '19210053', 'Azzur Gifari', 'L', '082195767864', 'Ambon', '2002-02-01', 'uploads/siswa/52471919042020_male.jpg', 1, '2023-05-15 02:36:23', '2023-05-15 02:41:08', '2023-05-15 02:41:08'),
(2, '9090', '117117', 'Ramdan', 'L', '083874731480', 'Sukabumi', '2024-04-02', 'uploads/siswa/13482302042024_a3zGPkSYhP5DCIeaY8BYqYHAjjpuIuD2PObM47sy.png', 1, '2024-04-02 16:48:13', '2024-04-02 16:48:13', NULL),
(3, '342424', '12321423', 'Abyan', 'L', '083874731480', 'Sukabumi', '2024-06-13', 'uploads/siswa/52471919042020_male.jpg', 2, '2024-06-13 11:43:23', '2024-06-13 11:43:23', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ulangan`
--

CREATE TABLE `ulangan` (
  `id` bigint UNSIGNED NOT NULL,
  `siswa_id` int NOT NULL,
  `kelas_id` int NOT NULL,
  `guru_id` int NOT NULL,
  `mapel_id` int NOT NULL,
  `ulha_1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ulha_2` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uts` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ulha_3` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uas` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ulangan`
--

INSERT INTO `ulangan` (`id`, `siswa_id`, `kelas_id`, `guru_id`, `mapel_id`, `ulha_1`, `ulha_2`, `uts`, `ulha_3`, `uas`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 49, 10, '12', '12', '13', '12', '12', '2024-06-13 11:46:25', '2024-06-13 11:46:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('Admin','Guru','Siswa','Kepala Sekolah') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_induk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `no_induk`, `id_card`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$UP6xIgaLX1qNGS6MjGbMFusgtog1EdMinv9UMNluDF7uCKaV.8G2q', 'Admin', NULL, NULL, NULL, '2023-05-15 02:12:13', '2023-05-15 02:12:13', NULL),
(2, 'Sardi S. Ag', 'guru@gmail.com', NULL, '$2y$10$UP6xIgaLX1qNGS6MjGbMFusgtog1EdMinv9UMNluDF7uCKaV.8G2q', 'Guru', NULL, '00002', NULL, '2024-04-02 16:36:19', '2024-04-02 16:36:19', NULL),
(3, 'ramdan', 'siswa@gmail.com', NULL, '$2y$10$tFL5pod34WNlbaOgoFMOluUiM0nKz7g/0Wc9cjugciE63CDkpYQoe', 'Siswa', '9090', NULL, NULL, '2024-04-02 16:48:42', '2024-04-02 16:48:42', NULL),
(4, 'kepalasekolah', 'kepsek@gmail.com', NULL, '$2y$10$jV3.1pkfpdqUKA0KikoUBexvz30XnNULjuXK9h57AHebyTVrPgA5S', 'Kepala Sekolah', NULL, NULL, NULL, '2024-04-18 05:08:50', '2024-04-18 05:08:50', NULL),
(5, 'Anisa', 'anisa@gmail.com', NULL, '$2y$10$0WX/lb05AOA/vCkq9KPL.efwYqG/hN6Guiz8Sw4ffPWwtz98GkEx6', 'Guru', NULL, '00044', NULL, '2024-06-13 07:15:34', '2024-06-13 07:15:34', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absensi_guru`
--
ALTER TABLE `absensi_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `generator_data`
--
ALTER TABLE `generator_data`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hari`
--
ALTER TABLE `hari`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jam_ajar`
--
ALTER TABLE `jam_ajar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jam_ajar_old`
--
ALTER TABLE `jam_ajar_old`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rapot`
--
ALTER TABLE `rapot`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sikap`
--
ALTER TABLE `sikap`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ulangan`
--
ALTER TABLE `ulangan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absensi_guru`
--
ALTER TABLE `absensi_guru`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `generator_data`
--
ALTER TABLE `generator_data`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `hari`
--
ALTER TABLE `hari`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT untuk tabel `jam_ajar`
--
ALTER TABLE `jam_ajar`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `jam_ajar_old`
--
ALTER TABLE `jam_ajar_old`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `kehadiran`
--
ALTER TABLE `kehadiran`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `paket`
--
ALTER TABLE `paket`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `rapot`
--
ALTER TABLE `rapot`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `ruang`
--
ALTER TABLE `ruang`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `sikap`
--
ALTER TABLE `sikap`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `ulangan`
--
ALTER TABLE `ulangan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
