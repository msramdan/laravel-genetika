-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2023 at 07:08 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_akademik_sekolah`
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
(1, '00001', '19210052', 'Umrah maharani', 1, '001', 'P', '085398503495', 'Pinrang', '2001-05-10', 'uploads/guru/23171022042020_female.jpg', '2023-05-15 02:33:02', '2023-05-15 02:33:02', NULL);

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
(5, 'Jum\'at', '2023-05-15 02:12:09', '2023-05-15 02:12:09');

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
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `ruang_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id`, `hari_id`, `kelas_id`, `mapel_id`, `guru_id`, `jam_mulai`, `jam_selesai`, `ruang_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, 1, '08:00:00', '09:00:00', 1, '2023-05-15 02:37:31', '2023-05-15 02:37:31', NULL);

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
(1, 'CONTO01', 4, 1, '2023-05-15 02:35:20', '2023-05-15 02:35:20', NULL);

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
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id`, `nama_mapel`, `paket_id`, `kelompok`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Matematika', 9, 'A', '2023-05-15 02:16:32', '2023-05-15 02:16:32', NULL),
(2, 'Geografi', 9, 'A', '2023-05-15 02:21:47', '2023-05-15 02:21:47', NULL);

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
(18, '2020_04_07_094355_create_sikap_table', 1);

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
(1, 1, 70, NULL, NULL, NULL, NULL, '2023-05-15 02:33:02', '2023-05-15 02:33:02');

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
(1, 'Bisnis kontruksi dan Properti', '2023-05-15 02:12:10', '2023-05-15 02:12:10'),
(2, 'Desain Permodelan dan Informasi Bangunan', '2023-05-15 02:12:10', '2023-05-15 02:12:10'),
(3, 'Elektronika Industri', '2023-05-15 02:12:10', '2023-05-15 02:12:10'),
(4, 'Otomasi Industri', '2023-05-15 02:12:10', '2023-05-15 02:12:10'),
(5, 'Teknik Pemesinan', '2023-05-15 02:12:10', '2023-05-15 02:12:10'),
(6, 'Teknik dan Bisnis Sepeda Motor', '2023-05-15 02:12:10', '2023-05-15 02:12:10'),
(7, 'Rekayasa Perangkat Lunak', '2023-05-15 02:12:10', '2023-05-15 02:12:10'),
(8, 'Teknik Pengelasan', '2023-05-15 02:12:10', '2023-05-15 02:12:10');

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
(1, '19210053', '19210053', 'Azzur Gifari', 'L', '082195767864', 'Ambon', '2002-02-01', 'uploads/siswa/52471919042020_male.jpg', 1, '2023-05-15 02:36:23', '2023-05-15 02:41:08', '2023-05-15 02:41:08');

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
  `role` enum('Admin','Guru','Siswa','Orang Tua') COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$l09N1BjpGTQ2nmJUCwM6gOdGCV8V37Bd8O.WwZfPctgWotJGTv7ga', 'Admin', NULL, NULL, NULL, '2023-05-15 02:12:13', '2023-05-15 02:12:13', NULL);

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
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hari`
--
ALTER TABLE `hari`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kehadiran`
--
ALTER TABLE `kehadiran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ulangan`
--
ALTER TABLE `ulangan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
