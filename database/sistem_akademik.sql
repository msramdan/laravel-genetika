-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 29 Mar 2024 pada 14.24
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
(1, '{\"Kelas 1\":{\"Senin\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Selasa\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Rabu\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Kamis\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]},\"Kelas 2\":{\"Senin\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Selasa\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Rabu\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Kamis\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Jum\'at\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]}}', '2024-03-28 16:36:22', '2024-03-28 16:36:22'),
(2, '{\"Kelas 1\":{\"Senin\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Selasa\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Rabu\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Kamis\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Jum\'at\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]},\"Kelas 2\":{\"Senin\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Selasa\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Rabu\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Kamis\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]}}', '2024-03-28 21:12:39', '2024-03-28 21:12:39'),
(3, '{\"Kelas 1\":{\"Senin\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Selasa\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Rabu\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Kamis\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]},\"Kelas 2\":{\"Senin\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Selasa\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Rabu\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Kamis\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]}}', '2024-03-28 21:13:09', '2024-03-28 21:13:09'),
(4, '{\"Kelas 1\":{\"Senin\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Selasa\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Rabu\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Kamis\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]},\"Kelas 2\":{\"Senin\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Selasa\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Rabu\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:30-14:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Kamis\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"07:00-08:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:30-10:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:00-11:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:30-14:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]}}', '2024-03-28 21:32:19', '2024-03-28 21:32:19'),
(5, '{\"Kelas 1\":{\"Senin\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Selasa\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Rabu\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Kamis\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]},\"Kelas 2\":{\"Senin\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Selasa\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Rabu\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Kamis\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]}}', '2024-03-28 22:05:37', '2024-03-28 22:05:37'),
(6, '{\"Kelas 1\":{\"Senin\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Selasa\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Rabu\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Kamis\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]},\"Kelas 2\":{\"Senin\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Selasa\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Rabu\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Kamis\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"07:00-08:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Apel Pagi\"},{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:00-11:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":\"Istirahat\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]}}', '2024-03-28 22:09:25', '2024-03-28 22:09:25'),
(7, '{\"Kelas 1\":{\"Senin\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Selasa\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Rabu\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Kamis\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]},\"Kelas 2\":{\"Senin\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Selasa\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Rabu\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Kamis\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]}}', '2024-03-28 22:11:51', '2024-03-28 22:11:51');
INSERT INTO `generator_data` (`id`, `data`, `created_at`, `updated_at`) VALUES
(8, '{\"Kelas 1\":{\"Senin\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Selasa\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Rabu\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Kamis\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]},\"Kelas 2\":{\"Senin\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Selasa\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Rabu\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Kamis\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]}}', '2024-03-28 22:52:31', '2024-03-28 22:52:31'),
(9, '{\"Kelas 1\":{\"Senin\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Selasa\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Rabu\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Kamis\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]},\"Kelas 2\":{\"Senin\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Selasa\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Rabu\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Kamis\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]}}', '2024-03-28 22:52:34', '2024-03-28 22:52:34'),
(10, '{\"Kelas 1\":{\"Senin\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Selasa\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Rabu\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Kamis\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Jum\'at\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]},\"Kelas 2\":{\"Senin\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Selasa\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Rabu\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Kamis\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]}}', '2024-03-28 22:53:03', '2024-03-28 22:53:03'),
(11, '{\"Kelas 1\":{\"Senin\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"}],\"Selasa\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Rabu\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Kamis\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Jum\'at\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]},\"Kelas 2\":{\"Senin\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Selasa\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Rabu\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Kamis\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Jum\'at\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]}}', '2024-03-29 13:46:37', '2024-03-29 13:46:37'),
(12, '{\"Kelas 1\":{\"Senin\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"}],\"Selasa\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"}],\"Rabu\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Kamis\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Jum\'at\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}]},\"Kelas 2\":{\"Senin\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Selasa\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"}],\"Rabu\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"}],\"Kamis\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Jum\'at\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}]}}', '2024-03-29 14:00:52', '2024-03-29 14:00:52');
INSERT INTO `generator_data` (`id`, `data`, `created_at`, `updated_at`) VALUES
(13, '{\"Kelas 1\":{\"Senin\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"}],\"Selasa\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"}],\"Rabu\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Kamis\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Jum\'at\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}]},\"Kelas 2\":{\"Senin\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"}],\"Selasa\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}],\"Rabu\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"}],\"Kamis\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Jum\'at\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"}]},\"KELAS 3\":{\"Senin\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Selasa\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Mawardi S. Pd\",\"namaMapel\":\"Olahraga\",\"kelompok\":\"A\",\"code\":\"4c\"}],\"Rabu\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"}],\"Kamis\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"08:45-09:30\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"09:30-10:15\",\"guru\":\"Umrah maharani\",\"namaMapel\":\"Matematika\",\"kelompok\":\"A\",\"code\":\"1a\"},{\"jamAjar\":\"10:15-11:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"11:15-12:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"12:00-12:45\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"12:45-13:30\",\"guru\":\"Sardi S. Ag\",\"namaMapel\":\"Agama\",\"kelompok\":\"A\",\"code\":\"3d\"},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}],\"Jum\'at\":[{\"jamAjar\":\"08:00-08:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"08:45-09:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"09:30-10:15\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"10:15-11:00\",\"guru\":\"Alex Sip\",\"namaMapel\":\"Geografi\",\"kelompok\":\"A\",\"code\":\"2b\"},{\"jamAjar\":\"11:15-12:00\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:00-12:45\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"12:45-13:30\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null},{\"jamAjar\":\"13:30-14:10\",\"guru\":null,\"namaMapel\":null,\"kelompok\":null,\"code\":null}]}}', '2024-03-29 14:03:40', '2024-03-29 14:03:40');

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
(1, '00001', '19210052', 'Umrah maharani', 1, '001', 'P', '085398503495', 'Pinrang', '2001-05-10', 'uploads/guru/23171022042020_female.jpg', '2023-05-15 02:33:02', '2023-05-15 02:33:02', NULL),
(2, '00001', '19210052', 'Alex Sip', 2, '001', 'L', '085398503495', 'Pinrang', '2001-05-10', 'uploads/guru/23171022042020_female.jpg', '2023-05-15 02:33:02', '2023-05-15 02:33:02', NULL),
(3, '00002', '19210053', 'Sardi S. Ag', 4, '002', 'L', NULL, NULL, NULL, 'uploads/guru/23171022042020_female.jpg', NULL, NULL, NULL),
(4, '00003', '19210054', 'Mawardi S. Pd', 3, '003', 'L', NULL, NULL, NULL, 'uploads/guru/23171022042020_female.jpg', NULL, NULL, NULL);

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
(5, 'Jum\'at', '2023-05-15 02:12:09', '2023-05-15 02:12:09');

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
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `ruang_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id`, `hari_id`, `kelas_id`, `mapel_id`, `guru_id`, `jam_mulai`, `jam_selesai`, `ruang_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, 1, '08:00:00', '09:00:00', 1, '2023-05-15 02:37:31', '2023-05-15 02:37:31', NULL);

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
(1, 'Kelas 1', 4, 1, '2023-05-15 02:35:20', '2023-05-15 02:35:20', NULL),
(2, 'Kelas 2', 4, 1, '2023-05-15 02:35:20', '2023-05-15 02:35:20', NULL),
(3, 'KELAS 3', 1, 2, '2024-03-29 14:03:29', '2024-03-29 14:03:29', NULL);

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
(1, 'Matematika', 9, 'A', '2023-05-15 02:16:32', '2023-05-15 02:16:32', NULL, 12, 2),
(2, 'Geografi', 9, 'A', '2023-05-15 02:21:47', '2023-05-15 02:21:47', NULL, 16, 2),
(3, 'Olahraga', 9, 'A', NULL, NULL, NULL, 4, 4),
(4, 'Agama', 9, 'A', NULL, NULL, NULL, 8, 2),
(7, 'IPS', 9, 'A', '2024-03-29 14:22:03', '2024-03-29 14:23:12', NULL, 16, 3);

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
(1, 1, 70, NULL, NULL, NULL, NULL, '2023-05-15 02:33:02', '2023-05-15 02:33:02');

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
(1, '19210053', '19210053', 'Azzur Gifari', 'L', '082195767864', 'Ambon', '2002-02-01', 'uploads/siswa/52471919042020_male.jpg', 1, '2023-05-15 02:36:23', '2023-05-15 02:41:08', '2023-05-15 02:41:08');

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
  `role` enum('Admin','Guru','Siswa','Kepala Sekolah') COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$UP6xIgaLX1qNGS6MjGbMFusgtog1EdMinv9UMNluDF7uCKaV.8G2q', 'Admin', NULL, NULL, NULL, '2023-05-15 02:12:13', '2023-05-15 02:12:13', NULL);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `hari`
--
ALTER TABLE `hari`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jam_ajar`
--
ALTER TABLE `jam_ajar`
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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `ulangan`
--
ALTER TABLE `ulangan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
