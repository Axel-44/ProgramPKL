-- phpMyAdmin SQL Dump
-- version 6.0.0-dev+20250901.4c34850c0b
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 21, 2025 at 04:52 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pklbkad`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint UNSIGNED NOT NULL,
  `log_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint UNSIGNED DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `batch_uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-08-26 00:56:59', '2025-08-26 00:56:59'),
(2, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-08-27 01:06:35', '2025-08-27 01:06:35'),
(3, 'default', 'Berita dengan judul \"adaa\" telah dibuat', 'App\\Models\\Berita', 'created', 2, 'App\\Models\\User', 1, '{\"attributes\": {\"type\": \"bkad\", \"title\": \"adaa\", \"content\": \"<p>adada</p>\"}}', NULL, '2025-08-27 02:21:04', '2025-08-27 02:21:04'),
(4, 'default', 'Berita dengan judul \"adaaada\" telah diubah', 'App\\Models\\Berita', 'updated', 2, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"adaa\"}, \"attributes\": {\"title\": \"adaaada\"}}', NULL, '2025-08-27 02:21:47', '2025-08-27 02:21:47'),
(5, 'default', 'Berita dengan judul \"adaaada\" telah dihapus', 'App\\Models\\Berita', 'deleted', 2, 'App\\Models\\User', 1, '{\"old\": {\"type\": \"bkad\", \"title\": \"adaaada\", \"content\": \"<p>adada</p>\"}}', NULL, '2025-08-27 02:22:12', '2025-08-27 02:22:12'),
(6, 'default', 'Banner dengan judul \"Woww\" telah dibuat', 'App\\Models\\Banner', 'created', 2, 'App\\Models\\User', 1, '{\"attributes\": {\"url\": null, \"title\": \"Woww\", \"is_active\": true, \"sort_order\": 0}}', NULL, '2025-08-27 02:53:01', '2025-08-27 02:53:01'),
(7, 'default', 'Berita dengan judul \"Cold Palmer\" telah dibuat', 'App\\Models\\Berita', 'created', 3, 'App\\Models\\User', 1, '{\"attributes\": {\"type\": \"kota_bogor\", \"title\": \"Cold Palmer\", \"content\": \"<p>Cold Palmer menggendong chelsea</p>\"}}', NULL, '2025-08-27 02:54:03', '2025-08-27 02:54:03'),
(8, 'default', 'Foto dengan judul \"yes\" telah dibuat', 'App\\Models\\Foto', 'created', 1, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"yes\", \"caption\": null}}', NULL, '2025-08-27 03:12:58', '2025-08-27 03:12:58'),
(9, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-08-27 06:32:10', '2025-08-27 06:32:10'),
(10, 'default', 'Berita dengan judul \"My Kisah\" telah dibuat', 'App\\Models\\Berita', 'created', 4, 'App\\Models\\User', 1, '{\"attributes\": {\"type\": \"bkad\", \"title\": \"My Kisah\", \"content\": \"<p>my kisah</p>\"}}', NULL, '2025-08-27 06:52:07', '2025-08-27 06:52:07'),
(11, 'default', 'Video dengan judul \"Dedi Mulyadi bongkar tempat wisata di Puncak!\" telah dibuat', 'App\\Models\\Video', 'created', 1, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"Dedi Mulyadi bongkar tempat wisata di Puncak!\", \"description\": null}}', NULL, '2025-08-27 07:54:09', '2025-08-27 07:54:09'),
(12, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-08-28 02:56:48', '2025-08-28 02:56:48'),
(13, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-08-28 06:52:40', '2025-08-28 06:52:40'),
(14, 'default', 'Dokumen \"Pergub Penjabaran APBD 2025 Jabar\" (Surat Edaran) telah dibuat', 'App\\Models\\Dokumen', 'created', 1, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"Pergub Penjabaran APBD 2025 Jabar\", \"kategori\": \"Surat Edaran\"}}', NULL, '2025-08-28 07:08:59', '2025-08-28 07:08:59'),
(15, 'default', 'Dokumen \"Keputusan Presiden No.68 Tahun 2001\" (Peraturan Walikota) telah dibuat', 'App\\Models\\Dokumen', 'created', 2, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"Keputusan Presiden No.68 Tahun 2001\", \"kategori\": \"Peraturan Walikota\"}}', NULL, '2025-08-28 07:09:57', '2025-08-28 07:09:57'),
(16, 'default', 'Dokumen \"Timeline PKL BKAD\" (Laporan Keuangan) telah dibuat', 'App\\Models\\Dokumen', 'created', 3, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"Timeline PKL BKAD\", \"kategori\": \"Laporan Keuangan\"}}', NULL, '2025-08-28 07:10:44', '2025-08-28 07:10:44'),
(17, 'default', 'Banner dengan judul \"Woww\" telah diubah', 'App\\Models\\Banner', 'updated', 2, 'App\\Models\\User', 1, '{\"old\": {\"is_active\": true}, \"attributes\": {\"is_active\": false}}', NULL, '2025-08-28 08:26:18', '2025-08-28 08:26:18'),
(18, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-08-29 01:14:02', '2025-08-29 01:14:02'),
(19, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-08-29 03:58:24', '2025-08-29 03:58:24'),
(20, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-01 01:16:14', '2025-09-01 01:16:14'),
(21, 'default', 'Foto dengan judul \"My Kisah\" telah dibuat', 'App\\Models\\Foto', 'created', 2, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"My Kisah\", \"caption\": null}}', NULL, '2025-09-01 02:33:45', '2025-09-01 02:33:45'),
(22, 'default', 'Foto dengan judul \"yes\" telah dihapus', 'App\\Models\\Foto', 'deleted', 1, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"yes\", \"caption\": null}}', NULL, '2025-09-01 02:47:41', '2025-09-01 02:47:41'),
(23, 'default', 'Foto dengan judul \"My Kisah\" telah dihapus', 'App\\Models\\Foto', 'deleted', 2, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"My Kisah\", \"caption\": null}}', NULL, '2025-09-01 02:47:48', '2025-09-01 02:47:48'),
(24, 'default', 'Foto dengan judul \"Bukankan ini My.....\" telah dibuat', 'App\\Models\\Foto', 'created', 3, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"Bukankan ini My.....\", \"caption\": null}}', NULL, '2025-09-01 02:48:09', '2025-09-01 02:48:09'),
(25, 'default', 'Foto dengan judul \"My\" telah dibuat', 'App\\Models\\Foto', 'created', 4, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"My\", \"caption\": null}}', NULL, '2025-09-01 03:06:37', '2025-09-01 03:06:37'),
(26, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-01 06:46:48', '2025-09-01 06:46:48'),
(27, 'default', 'Video dengan judul \"Dedi Mulyadi bongkar tempat wisata di Puncak!\" telah dihapus', 'App\\Models\\Video', 'deleted', 1, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"Dedi Mulyadi bongkar tempat wisata di Puncak!\", \"description\": null}}', NULL, '2025-09-01 06:55:08', '2025-09-01 06:55:08'),
(28, 'default', 'Video dengan judul \"Dedi Mulyadi bongkar tempat wisata di Puncak!\" telah dibuat', 'App\\Models\\Video', 'created', 2, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"Dedi Mulyadi bongkar tempat wisata di Puncak!\", \"description\": null}}', NULL, '2025-09-01 06:58:45', '2025-09-01 06:58:45'),
(29, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-01 07:38:58', '2025-09-01 07:38:58'),
(30, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-02 00:51:01', '2025-09-02 00:51:01'),
(31, 'default', 'Banner dengan judul \"Woww\" telah diubah', 'App\\Models\\Banner', 'updated', 2, 'App\\Models\\User', 1, '{\"old\": {\"is_active\": false}, \"attributes\": {\"is_active\": true}}', NULL, '2025-09-02 00:51:50', '2025-09-02 00:51:50'),
(32, 'default', 'Banner dengan judul \"Woww\" telah diubah', 'App\\Models\\Banner', 'updated', 2, 'App\\Models\\User', 1, '{\"old\": {\"is_active\": true}, \"attributes\": {\"is_active\": false}}', NULL, '2025-09-02 00:51:51', '2025-09-02 00:51:51'),
(33, 'default', 'Foto dengan judul \"My\" telah dihapus', 'App\\Models\\Foto', 'deleted', 4, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"My\", \"caption\": null}}', NULL, '2025-09-02 00:53:09', '2025-09-02 00:53:09'),
(34, 'default', 'Agenda \"Kunjungan Presiden\" telah dibuat', 'App\\Models\\Agenda', 'created', 1, 'App\\Models\\User', 1, '{\"attributes\": {\"waktu\": \"13:00\", \"lokasi\": \"Kantor BKAD Kota Bogor\", \"tanggal\": \"2025-09-11T17:00:00.000000Z\", \"nama_kegiatan\": \"Kunjungan Presiden\"}}', NULL, '2025-09-02 01:26:11', '2025-09-02 01:26:11'),
(35, 'default', 'Agenda \"Rapat Pendanaan\" telah dibuat', 'App\\Models\\Agenda', 'created', 2, 'App\\Models\\User', 1, '{\"attributes\": {\"waktu\": \"14:30\", \"lokasi\": \"Kantor BKAD Kota Bogor\", \"tanggal\": \"2025-09-04T17:00:00.000000Z\", \"nama_kegiatan\": \"Rapat Pendanaan\"}}', NULL, '2025-09-02 01:28:31', '2025-09-02 01:28:31'),
(36, 'default', 'Banner dengan judul \"Woww\" telah diubah', 'App\\Models\\Banner', 'updated', 2, 'App\\Models\\User', 1, '{\"old\": {\"is_active\": false}, \"attributes\": {\"is_active\": true}}', NULL, '2025-09-02 01:44:04', '2025-09-02 01:44:04'),
(37, 'default', 'Banner dengan judul \" Cold Palmer\" telah dibuat', 'App\\Models\\Banner', 'created', 3, 'App\\Models\\User', 1, '{\"attributes\": {\"url\": null, \"title\": \" Cold Palmer\", \"is_active\": true, \"sort_order\": 2}}', NULL, '2025-09-02 01:58:32', '2025-09-02 01:58:32'),
(38, 'default', 'Banner dengan judul \"Woww\" telah diubah', 'App\\Models\\Banner', 'updated', 2, 'App\\Models\\User', 1, '{\"old\": {\"sort_order\": 0}, \"attributes\": {\"sort_order\": 1}}', NULL, '2025-09-02 01:58:45', '2025-09-02 01:58:45'),
(39, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-02 06:20:11', '2025-09-02 06:20:11'),
(40, 'default', 'Banner dengan judul \" Cold Palmer\" telah dihapus', 'App\\Models\\Banner', 'deleted', 3, 'App\\Models\\User', 1, '{\"old\": {\"url\": null, \"title\": \" Cold Palmer\", \"is_active\": true, \"sort_order\": 2}}', NULL, '2025-09-02 07:08:05', '2025-09-02 07:08:05'),
(41, 'default', 'Banner dengan judul \"Tugu kujang\" telah dibuat', 'App\\Models\\Banner', 'created', 4, 'App\\Models\\User', 1, '{\"attributes\": {\"url\": null, \"title\": \"Tugu kujang\", \"is_active\": true, \"sort_order\": 0}}', NULL, '2025-09-02 07:09:00', '2025-09-02 07:09:00'),
(42, 'default', 'Banner dengan judul \"Tugu kujang\" telah diubah', 'App\\Models\\Banner', 'updated', 4, 'App\\Models\\User', 1, '{\"old\": {\"is_active\": true}, \"attributes\": {\"is_active\": false}}', NULL, '2025-09-02 07:10:43', '2025-09-02 07:10:43'),
(43, 'default', 'Banner dengan judul \"Tugu kujang\" telah diubah', 'App\\Models\\Banner', 'updated', 4, 'App\\Models\\User', 1, '{\"old\": {\"is_active\": false}, \"attributes\": {\"is_active\": true}}', NULL, '2025-09-02 07:10:45', '2025-09-02 07:10:45'),
(44, 'default', 'Berita dengan judul \"My Kisah\" telah diubah', 'App\\Models\\Berita', 'updated', 4, 'App\\Models\\User', 1, '{\"old\": {\"content\": \"<p>my kisah</p>\"}, \"attributes\": {\"content\": \"<p>Info Demo</p>\"}}', NULL, '2025-09-02 07:21:55', '2025-09-02 07:21:55'),
(45, 'default', 'Berita dengan judul \"My Kisah\" telah diubah', 'App\\Models\\Berita', 'updated', 4, 'App\\Models\\User', 1, '{\"old\": {\"content\": \"<p>Info Demo</p>\"}, \"attributes\": {\"content\": \"<p>🎙️ <strong>Narasi Demo DPR – “Indonesia (C)emas 2025”</strong></p><p></p><p><em>Di tengah hiruk-pikuk politik dan janji-janji yang tak kunjung ditepati, suara rakyat kembali menggema di depan Gedung DPR. Bukan sekadar teriakan, ini adalah panggilan nurani.</em></p><p></p><p>📍 <em>Senayan, Jakarta. Ribuan mahasiswa dari berbagai kampus berkumpul, mengenakan jas almamater, membawa spanduk, dan menyuarakan satu hal: perubahan.</em></p><p>🎓 <em>Aliansi BEM Seluruh Indonesia memimpin gerakan “Indonesia (C)emas 2025”, sebuah aksi lanjutan yang menolak politisasi sejarah, menuntut transparansi dalam pembahasan RUU, dan mendesak pengesahan RUU Perampasan Aset.</em></p><p>💬 <em>Orasi bergantian menggema dari mobil komando. Tuntutan mereka jelas: hentikan pemborosan uang rakyat, audit izin tambang, cabut tunjangan fantastis pejabat, dan reformasi menyeluruh di tubuh DPR dan aparat keamanan.</em></p><p>👥 <em>Tak hanya mahasiswa. Masyarakat sipil, aktivis perempuan, bahkan tokoh publik ikut turun ke jalan. Mereka membawa logistik, makanan, dan semangat solidaritas. Ini bukan sekadar demo—ini adalah gerakan moral.</em></p><p>🛑 <em>Meski sempat tertunda karena situasi keamanan, aksi tetap berlangsung tertib. Para peserta berjanji: “Kami tidak akan anarkis. Kami hanya ingin didengar.”</em></p><p></p><p><em>Di balik panasnya aspal dan dinginnya tembok parlemen, suara rakyat terus mengetuk pintu kekuasaan. Karena demokrasi bukan hanya soal pemilu—tapi tentang keberanian untuk bersuara.</em></p><p></p><p></p><p></p>\"}}', NULL, '2025-09-02 07:23:16', '2025-09-02 07:23:16'),
(46, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-03 01:10:46', '2025-09-03 01:10:46'),
(47, 'default', 'Agenda \"Rapat Pendanaan\" telah diubah', 'App\\Models\\Agenda', 'updated', 2, 'App\\Models\\User', 1, '{\"old\": {\"tanggal\": \"2025-09-04T17:00:00.000000Z\"}, \"attributes\": {\"tanggal\": \"2025-09-03T17:00:00.000000Z\"}}', NULL, '2025-09-03 02:03:13', '2025-09-03 02:03:13'),
(48, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-03 06:43:42', '2025-09-03 06:43:42'),
(49, 'default', 'Berita dengan judul \"My Kisah Part 2\" telah dibuat', 'App\\Models\\Berita', 'created', 5, 'App\\Models\\User', 1, '{\"attributes\": {\"type\": \"kota_bogor\", \"title\": \"My Kisah Part 2\", \"content\": \"<p>My Kisah part 2 disini saya dan teman saya bersama sama menaiki gunung yang ada pada roblox, disini kami sangat senagn sekali sampai sampai aku jungkir balik, lalu saat sudah diatas gunung kami pun mangabadikan memori ini bersama dengan cara berfoto bersama diatas gunung yang bernama gunung MT. RORAIMA, yang dimana ini sangat mudah sekali untuk didaki, bangkan untuk nenek saya pun ini mudah sekali, itu saja untuk berita my kisah part 2 saya. Terimakasih..........</p>\"}}', NULL, '2025-09-03 06:50:49', '2025-09-03 06:50:49'),
(50, 'default', 'Berita dengan judul \"My Kisah Part 3\" telah dibuat', 'App\\Models\\Berita', 'created', 6, 'App\\Models\\User', 1, '{\"attributes\": {\"type\": \"kota_bogor\", \"title\": \"My Kisah Part 3\", \"content\": \"<p>ini adalah my kisah part 3 yang sangat sangat memoriable</p>\"}}', NULL, '2025-09-03 06:52:33', '2025-09-03 06:52:33'),
(51, 'default', 'Berita dengan judul \"My Kisah Part 4\" telah dibuat', 'App\\Models\\Berita', 'created', 7, 'App\\Models\\User', 1, '{\"attributes\": {\"type\": \"kota_bogor\", \"title\": \"My Kisah Part 4\", \"content\": \"<p>ini adalah my kisah part 4, wowwwwww</p>\"}}', NULL, '2025-09-03 06:54:12', '2025-09-03 06:54:12'),
(52, 'default', 'Berita dengan judul \"My Kisah Part 5\" telah dibuat', 'App\\Models\\Berita', 'created', 8, 'App\\Models\\User', 1, '{\"attributes\": {\"type\": \"kota_bogor\", \"title\": \"My Kisah Part 5\", \"content\": \"<p>My Kisah Part 5, naik puncak gunung bersama teman temannnnn</p>\"}}', NULL, '2025-09-03 06:56:01', '2025-09-03 06:56:01'),
(53, 'default', 'Foto dengan judul \"Muncak Roblox\" telah dibuat', 'App\\Models\\Foto', 'created', 5, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"Muncak Roblox\", \"caption\": null}}', NULL, '2025-09-03 06:57:22', '2025-09-03 06:57:22'),
(54, 'default', 'Foto dengan judul \"Tembak tembakan di roblox\" telah dibuat', 'App\\Models\\Foto', 'created', 6, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"Tembak tembakan di roblox\", \"caption\": null}}', NULL, '2025-09-03 06:57:46', '2025-09-03 06:57:46'),
(55, 'default', 'Foto dengan judul \"Roblox di malam hari\" telah dibuat', 'App\\Models\\Foto', 'created', 7, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"Roblox di malam hari\", \"caption\": null}}', NULL, '2025-09-03 06:58:09', '2025-09-03 06:58:09'),
(56, 'default', 'Foto dengan judul \"Parkour di Roblox\" telah dibuat', 'App\\Models\\Foto', 'created', 8, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"Parkour di Roblox\", \"caption\": null}}', NULL, '2025-09-03 06:58:31', '2025-09-03 06:58:31'),
(57, 'default', 'Foto dengan judul \"Roblox Muncak\" telah dibuat', 'App\\Models\\Foto', 'created', 9, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"Roblox Muncak\", \"caption\": null}}', NULL, '2025-09-03 06:58:53', '2025-09-03 06:58:53'),
(58, 'default', 'Foto dengan judul \"Roblox gayaa\" telah dibuat', 'App\\Models\\Foto', 'created', 10, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"Roblox gayaa\", \"caption\": null}}', NULL, '2025-09-03 06:59:14', '2025-09-03 06:59:14'),
(59, 'default', 'Agenda \"layanan admistrasi pegawai \" telah dibuat', 'App\\Models\\Agenda', 'created', 3, 'App\\Models\\User', 1, '{\"attributes\": {\"waktu\": \"15:15\", \"lokasi\": \"Kantor BKAD kota Bogor\", \"tanggal\": \"2025-09-02T17:00:00.000000Z\", \"nama_kegiatan\": \"layanan admistrasi pegawai \"}}', NULL, '2025-09-03 07:15:53', '2025-09-03 07:15:53'),
(60, 'default', 'Agenda \"Apel pagi dan rekoniiasi pajak\" telah dibuat', 'App\\Models\\Agenda', 'created', 4, 'App\\Models\\User', 1, '{\"attributes\": {\"waktu\": \"07:30\", \"lokasi\": \"Kantor BKAD kota Bogor\", \"tanggal\": \"2025-09-02T17:00:00.000000Z\", \"nama_kegiatan\": \"Apel pagi dan rekoniiasi pajak\"}}', NULL, '2025-09-03 07:17:29', '2025-09-03 07:17:29'),
(61, 'default', 'Agenda \"penyusunan & pengelolaan APBD\" telah dibuat', 'App\\Models\\Agenda', 'created', 5, 'App\\Models\\User', 1, '{\"attributes\": {\"waktu\": \"13:22\", \"lokasi\": \"Kantor BKAD kota Bogor\", \"tanggal\": \"2025-09-02T17:00:00.000000Z\", \"nama_kegiatan\": \"penyusunan & pengelolaan APBD\"}}', NULL, '2025-09-03 07:18:40', '2025-09-03 07:18:40'),
(62, 'default', 'Video dengan judul \"esport\" telah dibuat', 'App\\Models\\Video', 'created', 3, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"esport\", \"description\": null}}', NULL, '2025-09-03 07:34:43', '2025-09-03 07:34:43'),
(63, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-03 12:54:29', '2025-09-03 12:54:29'),
(64, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-04 00:57:26', '2025-09-04 00:57:26'),
(65, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-04 02:04:40', '2025-09-04 02:04:40'),
(66, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-04 06:58:29', '2025-09-04 06:58:29'),
(67, 'default', 'Berita dengan judul \"Long Weekend, Ganjil Genap di Puncak Bogor Berlaku Besok hingga 7 September\" telah dibuat', 'App\\Models\\Berita', 'created', 9, 'App\\Models\\User', 1, '{\"attributes\": {\"type\": \"kota_bogor\", \"title\": \"Long Weekend, Ganjil Genap di Puncak Bogor Berlaku Besok hingga 7 September\", \"content\": \"<p>Polisi menyiapkan rekayasa lalu lintas (lalin) menyambut libur akhir pekan panjang atau long weekend di Jalan Raya Puncak, Bogor, Jawa Barat, besok. Rekayasa ganjil genap akan dimulai besok pagi.<br>&quot;Terkait cara dan sistem penanganannya itu dari Polres Bogor untuk pelaksanaan untuk Jumat, besok pagi dilaksanakan ganjil genap sampai di hari Minggu,&quot; kata KBO Satlantas Polres Bogor Iptu Ardian Novianto kepada wartawan, Kamis (4/9/2025).<br>Ardian menyebut selain ganjil genap, sistem satu arah atau one way juga akan dilaksanakan. One way dan ganjil genap disiapkan mulai besok hingga Minggu (7/9) nanti.<br>&quot;Terus terlepas ganjil genap itu ada one way yang akan dimulai besok juga sampai Minggu,&quot; ujarnya.<br>One way dilaksanakan secara situasional melihat volume kendaraan yang menuju ke Puncak. Apabila volume kendaraan melebihi kapasitas kendaraan di Puncak, maka one way akan dilaksanakan.<br>&quot;Kapasitas kurang lebih 80-100 ribu kendaraan. Kalau misal masih banyak kendaraan yang akan menuju Puncak, maka kita akan lakukan pengalihan tol,&quot; kata Ardian.<br>Tak hanya itu, pengalihan arus akan dilakukan di GT (Gerbang Tol) Ciawi. Kendaraan dari GT Ciawi menuju Puncak akan dialihkan menuju Caringin maupun Cigombong.<br>&quot;Sehingga tidak bisa menuju Puncak atau Ciawi agar kita alihkan ke jalur alternatif lain seperti Sukabumi yang akan Cianjur atau ke Bandung,&quot; pungkasnya.</p>\"}}', NULL, '2025-09-04 07:01:28', '2025-09-04 07:01:28'),
(68, 'default', 'Agenda \"layanan admistrasi pegawai \" telah diubah', 'App\\Models\\Agenda', 'updated', 3, 'App\\Models\\User', 1, '{\"old\": {\"tanggal\": \"2025-09-02T17:00:00.000000Z\"}, \"attributes\": {\"tanggal\": \"2025-09-04T17:00:00.000000Z\"}}', NULL, '2025-09-04 07:27:36', '2025-09-04 07:27:36'),
(69, 'default', 'Agenda \"penyusunan & pengelolaan APBD\" telah diubah', 'App\\Models\\Agenda', 'updated', 5, 'App\\Models\\User', 1, '{\"old\": {\"tanggal\": \"2025-09-02T17:00:00.000000Z\"}, \"attributes\": {\"tanggal\": \"2025-09-05T17:00:00.000000Z\"}}', NULL, '2025-09-04 07:28:30', '2025-09-04 07:28:30'),
(70, 'default', 'Agenda \"penyusunan & pengelolaan APBD\" telah diubah', 'App\\Models\\Agenda', 'updated', 5, 'App\\Models\\User', 1, '{\"old\": {\"tanggal\": \"2025-09-05T17:00:00.000000Z\"}, \"attributes\": {\"tanggal\": \"2025-09-02T17:00:00.000000Z\"}}', NULL, '2025-09-04 07:33:01', '2025-09-04 07:33:01'),
(71, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-05 15:52:01', '2025-09-05 15:52:01'),
(72, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-06 14:54:54', '2025-09-06 14:54:54'),
(73, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-07 05:10:34', '2025-09-07 05:10:34'),
(74, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-07 10:03:19', '2025-09-07 10:03:19'),
(75, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-07 12:09:41', '2025-09-07 12:09:41'),
(76, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-07 16:21:07', '2025-09-07 16:21:07'),
(77, 'default', 'Foto dengan judul \"Roblox gayaa\" telah dihapus', 'App\\Models\\Foto', 'deleted', 10, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"Roblox gayaa\", \"caption\": null}}', NULL, '2025-09-07 17:48:15', '2025-09-07 17:48:15'),
(78, 'default', 'Foto dengan judul \"Roblox Muncak\" telah dihapus', 'App\\Models\\Foto', 'deleted', 9, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"Roblox Muncak\", \"caption\": null}}', NULL, '2025-09-07 17:48:22', '2025-09-07 17:48:22'),
(79, 'default', 'Foto dengan judul \"Parkour di Roblox\" telah dihapus', 'App\\Models\\Foto', 'deleted', 8, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"Parkour di Roblox\", \"caption\": null}}', NULL, '2025-09-07 17:48:26', '2025-09-07 17:48:26'),
(80, 'default', 'Foto dengan judul \"Roblox di malam hari\" telah dihapus', 'App\\Models\\Foto', 'deleted', 7, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"Roblox di malam hari\", \"caption\": null}}', NULL, '2025-09-07 17:48:29', '2025-09-07 17:48:29'),
(81, 'default', 'Foto dengan judul \"Tembak tembakan di roblox\" telah dihapus', 'App\\Models\\Foto', 'deleted', 6, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"Tembak tembakan di roblox\", \"caption\": null}}', NULL, '2025-09-07 17:48:33', '2025-09-07 17:48:33'),
(82, 'default', 'Foto dengan judul \"Muncak Roblox\" telah dihapus', 'App\\Models\\Foto', 'deleted', 5, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"Muncak Roblox\", \"caption\": null}}', NULL, '2025-09-07 17:48:37', '2025-09-07 17:48:37'),
(83, 'default', 'Foto dengan judul \"Bukankan ini My.....\" telah dihapus', 'App\\Models\\Foto', 'deleted', 3, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"Bukankan ini My.....\", \"caption\": null}}', NULL, '2025-09-07 17:48:41', '2025-09-07 17:48:41'),
(84, 'default', 'Foto dengan judul \"BKAD Kota Bogor\" telah dibuat', 'App\\Models\\Foto', 'created', 11, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"BKAD Kota Bogor\", \"caption\": null}}', NULL, '2025-09-07 17:49:37', '2025-09-07 17:49:37'),
(85, 'default', 'Foto dengan judul \"Kegiatan BKAD\" telah dibuat', 'App\\Models\\Foto', 'created', 12, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"Kegiatan BKAD\", \"caption\": null}}', NULL, '2025-09-07 17:50:30', '2025-09-07 17:50:30'),
(86, 'default', 'Foto dengan judul \"Diskusi BKAD\" telah dibuat', 'App\\Models\\Foto', 'created', 13, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"Diskusi BKAD\", \"caption\": null}}', NULL, '2025-09-07 17:50:51', '2025-09-07 17:50:51'),
(87, 'default', 'Foto dengan judul \"Pelayanan BKAD\" telah dibuat', 'App\\Models\\Foto', 'created', 14, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"Pelayanan BKAD\", \"caption\": null}}', NULL, '2025-09-07 17:51:26', '2025-09-07 17:51:26'),
(88, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-08 01:51:29', '2025-09-08 01:51:29'),
(89, 'default', 'Agenda \"Apel pagi dan rekoniiasi pajak\" telah diubah', 'App\\Models\\Agenda', 'updated', 4, 'App\\Models\\User', 1, '{\"old\": {\"tanggal\": \"2025-09-02T17:00:00.000000Z\"}, \"attributes\": {\"tanggal\": \"2025-09-14T17:00:00.000000Z\"}}', NULL, '2025-09-08 01:59:19', '2025-09-08 01:59:19'),
(90, 'default', 'Dokumen \"Pergub Penjabaran APBD 2025 Jabar\" (Surat Edaran) telah dihapus', 'App\\Models\\Dokumen', 'deleted', 1, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"Pergub Penjabaran APBD 2025 Jabar\", \"kategori\": \"Surat Edaran\"}}', NULL, '2025-09-08 02:22:31', '2025-09-08 02:22:31'),
(91, 'default', 'Dokumen \"Keputusan Presiden No.68 Tahun 2001\" (Peraturan Walikota) telah dihapus', 'App\\Models\\Dokumen', 'deleted', 2, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"Keputusan Presiden No.68 Tahun 2001\", \"kategori\": \"Peraturan Walikota\"}}', NULL, '2025-09-08 02:22:35', '2025-09-08 02:22:35'),
(92, 'default', 'Dokumen \"Timeline PKL BKAD\" (Laporan Keuangan) telah dihapus', 'App\\Models\\Dokumen', 'deleted', 3, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"Timeline PKL BKAD\", \"kategori\": \"Laporan Keuangan\"}}', NULL, '2025-09-08 02:22:39', '2025-09-08 02:22:39'),
(93, 'default', 'Dokumen \"Perbup Bombana No.21 Tahun 2013\" (Peraturan Daerah (Perda)) telah dibuat', 'App\\Models\\Dokumen', 'created', 4, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"Perbup Bombana No.21 Tahun 2013\", \"kategori\": \"Peraturan Daerah (Perda)\"}}', NULL, '2025-09-08 02:27:20', '2025-09-08 02:27:20'),
(94, 'default', 'Dokumen \"Perbup Bombana No.21 Tahun 2013\" (Peraturan Daerah (Perda)) telah dihapus', 'App\\Models\\Dokumen', 'deleted', 4, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"Perbup Bombana No.21 Tahun 2013\", \"kategori\": \"Peraturan Daerah (Perda)\"}}', NULL, '2025-09-08 02:34:02', '2025-09-08 02:34:02'),
(95, 'default', 'Dokumen \"Perbup Bombana No.21 Tahun 2013\" (Peraturan Daerah (Perda)) telah dibuat', 'App\\Models\\Dokumen', 'created', 5, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"Perbup Bombana No.21 Tahun 2013\", \"kategori\": \"Peraturan Daerah (Perda)\"}}', NULL, '2025-09-08 02:34:26', '2025-09-08 02:34:26'),
(96, 'default', 'Dokumen \"Perbup Bombana No.21 Tahun 2013\" (Peraturan Daerah (Perda)) telah dihapus', 'App\\Models\\Dokumen', 'deleted', 5, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"Perbup Bombana No.21 Tahun 2013\", \"kategori\": \"Peraturan Daerah (Perda)\"}}', NULL, '2025-09-08 02:39:13', '2025-09-08 02:39:13'),
(97, 'default', 'Dokumen \"Perbup Bombana No.21 Tahun 2013\" (Peraturan Daerah (Perda)) telah dibuat', 'App\\Models\\Dokumen', 'created', 6, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"Perbup Bombana No.21 Tahun 2013\", \"kategori\": \"Peraturan Daerah (Perda)\"}}', NULL, '2025-09-08 02:39:35', '2025-09-08 02:39:35'),
(98, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-08 03:22:37', '2025-09-08 03:22:37'),
(99, 'default', 'Banner dengan judul \"Woww\" telah dihapus', 'App\\Models\\Banner', 'deleted', 2, 'App\\Models\\User', 1, '{\"old\": {\"url\": null, \"title\": \"Woww\", \"is_active\": true, \"sort_order\": 1}}', NULL, '2025-09-08 04:12:18', '2025-09-08 04:12:18'),
(100, 'default', 'Banner dengan judul \"KEBUN RAYA BOGOR\" telah dibuat', 'App\\Models\\Banner', 'created', 5, 'App\\Models\\User', 1, '{\"attributes\": {\"url\": null, \"title\": \"KEBUN RAYA BOGOR\", \"is_active\": true, \"sort_order\": 1}}', NULL, '2025-09-08 04:13:00', '2025-09-08 04:13:00'),
(101, 'default', 'Banner dengan judul \"BKAD\" telah dibuat', 'App\\Models\\Banner', 'created', 6, 'App\\Models\\User', 1, '{\"attributes\": {\"url\": null, \"title\": \"BKAD\", \"is_active\": true, \"sort_order\": 2}}', NULL, '2025-09-08 04:13:23', '2025-09-08 04:13:23'),
(102, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-08 06:49:37', '2025-09-08 06:49:37'),
(103, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-09 03:29:07', '2025-09-09 03:29:07'),
(104, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-10 00:57:36', '2025-09-10 00:57:36'),
(105, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-10 03:07:06', '2025-09-10 03:07:06'),
(106, 'default', 'Foto dengan judul \"Interior Auditorium BKAD Kota Bogor\" telah dibuat', 'App\\Models\\Foto', 'created', 15, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"Interior Auditorium BKAD Kota Bogor\", \"caption\": null}}', NULL, '2025-09-10 04:22:22', '2025-09-10 04:22:22'),
(107, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-10 07:01:24', '2025-09-10 07:01:24'),
(108, 'default', 'Foto dengan judul \"Jalin Silaturahmi\" telah dibuat', 'App\\Models\\Foto', 'created', 16, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"Jalin Silaturahmi\", \"caption\": null}}', NULL, '2025-09-10 07:02:41', '2025-09-10 07:02:41'),
(109, 'default', 'Foto dengan judul \"tugu Kujang Kota Bogor\" telah dibuat', 'App\\Models\\Foto', 'created', 17, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"tugu Kujang Kota Bogor\", \"caption\": null}}', NULL, '2025-09-10 07:03:19', '2025-09-10 07:03:19'),
(110, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-11 01:27:46', '2025-09-11 01:27:46'),
(111, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-11 20:41:03', '2025-09-11 20:41:03'),
(112, 'default', 'Dokumen \"Perbup Bombana No.21 Tahun 2013\" (Peraturan Daerah (Perda)) telah dihapus', 'App\\Models\\Dokumen', 'deleted', 6, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"Perbup Bombana No.21 Tahun 2013\", \"kategori\": \"Peraturan Daerah (Perda)\"}}', NULL, '2025-09-11 20:45:28', '2025-09-11 20:45:28'),
(113, 'default', 'Kategori Dokumen \"Umum\" telah di-buat', 'App\\Models\\KategoriDokumen', 'created', 1, 'App\\Models\\User', 1, '{\"attributes\": {\"nama_kategori\": \"Umum\"}}', NULL, '2025-09-11 20:57:34', '2025-09-11 20:57:34'),
(114, 'default', 'Kategori Dokumen \"Surat\" telah di-buat', 'App\\Models\\KategoriDokumen', 'created', 2, 'App\\Models\\User', 1, '{\"attributes\": {\"nama_kategori\": \"Surat\"}}', NULL, '2025-09-11 21:49:01', '2025-09-11 21:49:01'),
(115, 'default', 'Dokumen \"Surat Rekomendasi\" () telah dibuat', 'App\\Models\\Dokumen', 'created', 1, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"Surat Rekomendasi\", \"kategoriDokumen.nama_kategori\": \"Umum\"}}', NULL, '2025-09-11 21:55:24', '2025-09-11 21:55:24'),
(116, 'default', 'Dokumen \"Surat Rekomendasi\" () telah dihapus', 'App\\Models\\Dokumen', 'deleted', 1, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"Surat Rekomendasi\", \"kategoriDokumen.nama_kategori\": \"Umum\"}}', NULL, '2025-09-11 21:59:10', '2025-09-11 21:59:10'),
(117, 'default', 'Dokumen \"Surat Rekomendasi\" () telah dibuat', 'App\\Models\\Dokumen', 'created', 2, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"Surat Rekomendasi\", \"kategoriDokumen.nama_kategori\": \"Umum\"}}', NULL, '2025-09-11 22:01:41', '2025-09-11 22:01:41'),
(118, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-12 02:03:30', '2025-09-12 02:03:30'),
(119, 'default', 'Dokumen \"Surat Rekomendasi\" () telah dihapus', 'App\\Models\\Dokumen', 'deleted', 2, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"Surat Rekomendasi\", \"kategoriDokumen.nama_kategori\": \"Umum\"}}', NULL, '2025-09-12 02:14:28', '2025-09-12 02:14:28'),
(120, 'default', 'Dokumen \"Transkrip Nilai\" () telah dibuat', 'App\\Models\\Dokumen', 'created', 3, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"Transkrip Nilai\", \"kategoriDokumen.nama_kategori\": \"Surat\"}}', NULL, '2025-09-12 02:15:51', '2025-09-12 02:15:51'),
(121, 'default', 'Dokumen \"Transkrip Nilai\" () telah dihapus', 'App\\Models\\Dokumen', 'deleted', 3, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"Transkrip Nilai\", \"kategoriDokumen.nama_kategori\": \"Surat\"}}', NULL, '2025-09-12 02:16:14', '2025-09-12 02:16:14'),
(122, 'default', 'Kategori Dokumen \"Umum\" telah di-hapus', 'App\\Models\\KategoriDokumen', 'deleted', 1, 'App\\Models\\User', 1, '{\"old\": {\"nama_kategori\": \"Umum\"}}', NULL, '2025-09-12 02:16:47', '2025-09-12 02:16:47'),
(123, 'default', 'Kategori Dokumen \"Surat\" telah di-hapus', 'App\\Models\\KategoriDokumen', 'deleted', 2, 'App\\Models\\User', 1, '{\"old\": {\"nama_kategori\": \"Surat\"}}', NULL, '2025-09-12 02:16:52', '2025-09-12 02:16:52'),
(124, 'default', 'Kategori Dokumen \"Umum\" telah di-buat', 'App\\Models\\KategoriDokumen', 'created', 3, 'App\\Models\\User', 1, '{\"attributes\": {\"nama_kategori\": \"Umum\"}}', NULL, '2025-09-12 02:17:14', '2025-09-12 02:17:14'),
(125, 'default', 'Kategori Dokumen \"Pedoman RKA\" telah di-buat', 'App\\Models\\KategoriDokumen', 'created', 4, 'App\\Models\\User', 1, '{\"attributes\": {\"nama_kategori\": \"Pedoman RKA\"}}', NULL, '2025-09-12 02:17:30', '2025-09-12 02:17:30'),
(126, 'default', 'Kategori Dokumen \"IKU\" telah di-buat', 'App\\Models\\KategoriDokumen', 'created', 5, 'App\\Models\\User', 1, '{\"attributes\": {\"nama_kategori\": \"IKU\"}}', NULL, '2025-09-12 02:17:34', '2025-09-12 02:17:34'),
(127, 'default', 'Kategori Dokumen \"LAKIP\" telah di-buat', 'App\\Models\\KategoriDokumen', 'created', 6, 'App\\Models\\User', 1, '{\"attributes\": {\"nama_kategori\": \"LAKIP\"}}', NULL, '2025-09-12 02:17:43', '2025-09-12 02:17:43'),
(128, 'default', 'Kategori Dokumen \"RENJA\" telah di-buat', 'App\\Models\\KategoriDokumen', 'created', 7, 'App\\Models\\User', 1, '{\"attributes\": {\"nama_kategori\": \"RENJA\"}}', NULL, '2025-09-12 02:18:04', '2025-09-12 02:18:04'),
(129, 'default', 'Kategori Dokumen \"RENSTRA\" telah di-buat', 'App\\Models\\KategoriDokumen', 'created', 8, 'App\\Models\\User', 1, '{\"attributes\": {\"nama_kategori\": \"RENSTRA\"}}', NULL, '2025-09-12 02:18:15', '2025-09-12 02:18:15'),
(130, 'default', 'Kategori Dokumen \"APBD\" telah di-buat', 'App\\Models\\KategoriDokumen', 'created', 9, 'App\\Models\\User', 1, '{\"attributes\": {\"nama_kategori\": \"APBD\"}}', NULL, '2025-09-12 02:18:27', '2025-09-12 02:18:27'),
(131, 'default', 'Kategori Dokumen \"Program Kerja\" telah di-buat', 'App\\Models\\KategoriDokumen', 'created', 10, 'App\\Models\\User', 1, '{\"attributes\": {\"nama_kategori\": \"Program Kerja\"}}', NULL, '2025-09-12 02:18:33', '2025-09-12 02:18:33'),
(132, 'default', 'Kategori Dokumen \"Dasar Hukum\" telah di-buat', 'App\\Models\\KategoriDokumen', 'created', 11, 'App\\Models\\User', 1, '{\"attributes\": {\"nama_kategori\": \"Dasar Hukum\"}}', NULL, '2025-09-12 02:18:38', '2025-09-12 02:18:38'),
(133, 'default', 'Kategori Dokumen \"LKPD\" telah di-buat', 'App\\Models\\KategoriDokumen', 'created', 12, 'App\\Models\\User', 1, '{\"attributes\": {\"nama_kategori\": \"LKPD\"}}', NULL, '2025-09-12 02:18:42', '2025-09-12 02:18:42'),
(134, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-12 02:31:03', '2025-09-12 02:31:03'),
(135, 'default', 'Dokumen \"IKU BKAD\" () telah dibuat', 'App\\Models\\Dokumen', 'created', 4, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"IKU BKAD\", \"kategoriDokumen.nama_kategori\": \"IKU\"}}', NULL, '2025-09-12 02:38:06', '2025-09-12 02:38:06'),
(136, 'default', 'Dokumen \"bkad renja\" () telah dibuat', 'App\\Models\\Dokumen', 'created', 5, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"bkad renja\", \"kategoriDokumen.nama_kategori\": \"RENJA\"}}', NULL, '2025-09-12 02:41:40', '2025-09-12 02:41:40'),
(137, 'default', 'Dokumen \"IKU BKAD\" () telah dihapus', 'App\\Models\\Dokumen', 'deleted', 4, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"IKU BKAD\", \"kategoriDokumen.nama_kategori\": \"IKU\"}}', NULL, '2025-09-12 02:47:03', '2025-09-12 02:47:03'),
(138, 'default', 'Dokumen \"bkad renja\" () telah dihapus', 'App\\Models\\Dokumen', 'deleted', 5, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"bkad renja\", \"kategoriDokumen.nama_kategori\": \"RENJA\"}}', NULL, '2025-09-12 02:47:08', '2025-09-12 02:47:08'),
(139, 'default', 'Dokumen \"bkad renja\" () telah dibuat', 'App\\Models\\Dokumen', 'created', 6, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"bkad renja\", \"kategoriDokumen.nama_kategori\": \"RENJA\"}}', NULL, '2025-09-12 02:49:52', '2025-09-12 02:49:52'),
(140, 'default', 'Dokumen \"iku\" () telah dibuat', 'App\\Models\\Dokumen', 'created', 7, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"iku\", \"kategoriDokumen.nama_kategori\": \"IKU\"}}', NULL, '2025-09-12 02:51:19', '2025-09-12 02:51:19'),
(141, 'default', 'Dokumen \"lkip cover\" () telah dibuat', 'App\\Models\\Dokumen', 'created', 8, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"lkip cover\", \"kategoriDokumen.nama_kategori\": \"LAKIP\"}}', NULL, '2025-09-12 03:00:06', '2025-09-12 03:00:06'),
(142, 'default', 'Dokumen \"lkip cover\" () telah dihapus', 'App\\Models\\Dokumen', 'deleted', 8, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"lkip cover\", \"kategoriDokumen.nama_kategori\": \"LAKIP\"}}', NULL, '2025-09-12 03:08:11', '2025-09-12 03:08:11'),
(143, 'default', 'Dokumen \"LKIP BKAD NEW\" () telah dibuat', 'App\\Models\\Dokumen', 'created', 9, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"LKIP BKAD NEW\", \"kategoriDokumen.nama_kategori\": \"LAKIP\"}}', NULL, '2025-09-12 03:09:00', '2025-09-12 03:09:00'),
(144, 'default', 'Dokumen \"LKIP COVER\" () telah dibuat', 'App\\Models\\Dokumen', 'created', 10, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"LKIP COVER\", \"kategoriDokumen.nama_kategori\": \"LAKIP\"}}', NULL, '2025-09-12 03:09:41', '2025-09-12 03:09:41'),
(145, 'default', 'Dokumen \"LKIP\" () telah dibuat', 'App\\Models\\Dokumen', 'created', 11, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"LKIP\", \"kategoriDokumen.nama_kategori\": \"LAKIP\"}}', NULL, '2025-09-12 03:10:19', '2025-09-12 03:10:19'),
(146, 'default', 'Dokumen \"APBD\" () telah dibuat', 'App\\Models\\Dokumen', 'created', 12, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"APBD\", \"kategoriDokumen.nama_kategori\": \"APBD\"}}', NULL, '2025-09-12 03:13:17', '2025-09-12 03:13:17'),
(147, 'default', 'Dokumen \"BKAD_RENJA 2023\" () telah diubah', 'App\\Models\\Dokumen', 'updated', 6, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"bkad renja\"}, \"attributes\": {\"title\": \"BKAD_RENJA 2023\"}}', NULL, '2025-09-12 03:21:22', '2025-09-12 03:21:22'),
(148, 'default', 'Dokumen \"LRA APBD 2015\" () telah diubah', 'App\\Models\\Dokumen', 'updated', 12, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"APBD\"}, \"attributes\": {\"title\": \"LRA APBD 2015\"}}', NULL, '2025-09-12 03:22:25', '2025-09-12 03:22:25'),
(149, 'default', 'Dokumen \"iku\" () telah dihapus', 'App\\Models\\Dokumen', 'deleted', 7, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"iku\", \"kategoriDokumen.nama_kategori\": \"IKU\"}}', NULL, '2025-09-12 03:23:26', '2025-09-12 03:23:26'),
(150, 'default', 'Dokumen \"IKU BKAD 2022\" () telah dibuat', 'App\\Models\\Dokumen', 'created', 13, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"IKU BKAD 2022\", \"kategoriDokumen.nama_kategori\": \"IKU\"}}', NULL, '2025-09-12 03:24:04', '2025-09-12 03:24:04'),
(151, 'default', 'Dokumen \"IKU BKAD 2021\" () telah dibuat', 'App\\Models\\Dokumen', 'created', 14, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"IKU BKAD 2021\", \"kategoriDokumen.nama_kategori\": \"IKU\"}}', NULL, '2025-09-12 03:24:49', '2025-09-12 03:24:49'),
(152, 'default', 'Dokumen \"LKIP\" () telah dihapus', 'App\\Models\\Dokumen', 'deleted', 11, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"LKIP\", \"kategoriDokumen.nama_kategori\": \"LAKIP\"}}', NULL, '2025-09-12 03:25:55', '2025-09-12 03:25:55'),
(153, 'default', 'Dokumen \"LKIP COVER\" () telah dihapus', 'App\\Models\\Dokumen', 'deleted', 10, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"LKIP COVER\", \"kategoriDokumen.nama_kategori\": \"LAKIP\"}}', NULL, '2025-09-12 03:26:00', '2025-09-12 03:26:00'),
(154, 'default', 'Dokumen \"LKIP BKAD NEW\" () telah dihapus', 'App\\Models\\Dokumen', 'deleted', 9, 'App\\Models\\User', 1, '{\"old\": {\"title\": \"LKIP BKAD NEW\", \"kategoriDokumen.nama_kategori\": \"LAKIP\"}}', NULL, '2025-09-12 03:26:04', '2025-09-12 03:26:04'),
(155, 'default', 'Dokumen \"FIK_LKIP BKAD 2022\" () telah dibuat', 'App\\Models\\Dokumen', 'created', 15, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"FIK_LKIP BKAD 2022\", \"kategoriDokumen.nama_kategori\": \"LAKIP\"}}', NULL, '2025-09-12 03:26:51', '2025-09-12 03:26:51'),
(156, 'default', 'Dokumen \"LKIP 2022 COVER \" () telah dibuat', 'App\\Models\\Dokumen', 'created', 16, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"LKIP 2022 COVER \", \"kategoriDokumen.nama_kategori\": \"LAKIP\"}}', NULL, '2025-09-12 03:27:42', '2025-09-12 03:27:42'),
(157, 'default', 'Dokumen \"LKIP 2022\" () telah dibuat', 'App\\Models\\Dokumen', 'created', 17, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"LKIP 2022\", \"kategoriDokumen.nama_kategori\": \"LAKIP\"}}', NULL, '2025-09-12 03:29:46', '2025-09-12 03:29:46'),
(158, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-18 00:59:55', '2025-09-18 00:59:55'),
(159, 'default', 'Video \"Profil Badan Keuangan dan Aset Daerah Kota Bogor 2023\" telah dibuat', 'App\\Models\\Video', 'created', 4, 'App\\Models\\User', 1, '{\"attributes\": {\"type\": \"youtube\", \"title\": \"Profil Badan Keuangan dan Aset Daerah Kota Bogor 2023\", \"description\": null, \"youtube_url\": \"https://youtu.be/cPrFvULq8mM\"}}', NULL, '2025-09-18 01:28:23', '2025-09-18 01:28:23'),
(160, 'default', 'Video \"esport\" telah dihapus', 'App\\Models\\Video', 'deleted', 3, 'App\\Models\\User', 1, '{\"old\": {\"type\": \"file\", \"title\": \"esport\", \"description\": null, \"youtube_url\": null}}', NULL, '2025-09-18 02:40:53', '2025-09-18 02:40:53'),
(161, 'default', 'Video \"Dedi Mulyadi bongkar tempat wisata di Puncak!\" telah dihapus', 'App\\Models\\Video', 'deleted', 2, 'App\\Models\\User', 1, '{\"old\": {\"type\": \"file\", \"title\": \"Dedi Mulyadi bongkar tempat wisata di Puncak!\", \"description\": null, \"youtube_url\": null}}', NULL, '2025-09-18 02:40:57', '2025-09-18 02:40:57'),
(162, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-18 03:55:40', '2025-09-18 03:55:40'),
(163, 'default', 'Video \"profil bkad\" telah dibuat', 'App\\Models\\Video', 'created', 5, 'App\\Models\\User', 1, '{\"attributes\": {\"type\": \"youtube\", \"title\": \"profil bkad\", \"description\": null, \"youtube_url\": \"https://youtu.be/z9ZviBYXSp0?si=m-TsY984LA11R0Ki\"}}', NULL, '2025-09-18 03:58:31', '2025-09-18 03:58:31'),
(164, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-18 08:49:14', '2025-09-18 08:49:14'),
(165, 'default', 'Banner dengan judul \"Tugu kujang\" telah dihapus', 'App\\Models\\Banner', 'deleted', 4, 'App\\Models\\User', 1, '{\"old\": {\"url\": null, \"title\": \"Tugu kujang\", \"is_active\": true, \"sort_order\": 0}}', NULL, '2025-09-18 08:50:32', '2025-09-18 08:50:32'),
(166, 'default', 'Banner dengan judul \"BKAD\" telah dihapus', 'App\\Models\\Banner', 'deleted', 6, 'App\\Models\\User', 1, '{\"old\": {\"url\": null, \"title\": \"BKAD\", \"is_active\": true, \"sort_order\": 2}}', NULL, '2025-09-18 08:50:32', '2025-09-18 08:50:32'),
(167, 'default', 'Banner dengan judul \"banner 2\" telah dibuat', 'App\\Models\\Banner', 'created', 7, 'App\\Models\\User', 1, '{\"attributes\": {\"url\": null, \"title\": \"banner 2\", \"is_active\": true, \"sort_order\": 0}}', NULL, '2025-09-18 08:51:02', '2025-09-18 08:51:02'),
(168, 'default', 'Banner dengan judul \"banner 3\" telah dibuat', 'App\\Models\\Banner', 'created', 8, 'App\\Models\\User', 1, '{\"attributes\": {\"url\": null, \"title\": \"banner 3\", \"is_active\": true, \"sort_order\": 0}}', NULL, '2025-09-18 08:51:22', '2025-09-18 08:51:22'),
(169, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-19 01:08:45', '2025-09-19 01:08:45'),
(170, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-19 07:08:19', '2025-09-19 07:08:19'),
(171, 'default', 'Banner dengan judul \"banner 2\" telah diubah', 'App\\Models\\Banner', 'updated', 7, 'App\\Models\\User', 1, '{\"old\": {\"sort_order\": 0}, \"attributes\": {\"sort_order\": 3}}', NULL, '2025-09-19 07:10:17', '2025-09-19 07:10:17'),
(172, 'default', 'Banner dengan judul \"banner 2\" telah diubah', 'App\\Models\\Banner', 'updated', 7, 'App\\Models\\User', 1, '{\"old\": {\"is_active\": true}, \"attributes\": {\"is_active\": false}}', NULL, '2025-09-19 07:15:09', '2025-09-19 07:15:09'),
(173, 'default', 'Banner dengan judul \"banner 2\" telah dihapus', 'App\\Models\\Banner', 'deleted', 7, 'App\\Models\\User', 1, '{\"old\": {\"url\": null, \"title\": \"banner 2\", \"is_active\": false, \"sort_order\": 3}}', NULL, '2025-09-19 07:15:14', '2025-09-19 07:15:14'),
(174, 'default', 'Banner dengan judul \"Benner 3\" telah dibuat', 'App\\Models\\Banner', 'created', 9, 'App\\Models\\User', 1, '{\"attributes\": {\"url\": null, \"title\": \"Benner 3\", \"is_active\": true, \"sort_order\": 2}}', NULL, '2025-09-19 07:16:21', '2025-09-19 07:16:21'),
(175, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-22 04:29:32', '2025-09-22 04:29:32'),
(176, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-23 02:58:58', '2025-09-23 02:58:58'),
(177, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-24 07:52:23', '2025-09-24 07:52:23'),
(178, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-24 13:03:06', '2025-09-24 13:03:06'),
(179, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-25 00:54:08', '2025-09-25 00:54:08'),
(180, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-25 01:59:07', '2025-09-25 01:59:07'),
(181, 'default', 'Data staff dengan nama \"Axel\" telah ditambahkan', 'App\\Models\\Staff', 'created', 1, 'App\\Models\\User', 1, '{\"attributes\": {\"nama\": \"Axel\", \"jenis\": \"Struktural\", \"jabatan\": \"Ketua BKAD\", \"jenis_kelamin\": \"Laki-laki\"}}', NULL, '2025-09-25 02:31:08', '2025-09-25 02:31:08'),
(182, 'default', 'Data staff dengan nama \"Eka\" telah ditambahkan', 'App\\Models\\Staff', 'created', 2, 'App\\Models\\User', 1, '{\"attributes\": {\"nama\": \"Eka\", \"jenis\": \"JFT\", \"jabatan\": \"Sekbid\", \"jenis_kelamin\": \"Laki-laki\"}}', NULL, '2025-09-25 02:32:14', '2025-09-25 02:32:14'),
(183, 'default', 'Data staff dengan nama \"Siti\" telah ditambahkan', 'App\\Models\\Staff', 'created', 3, 'App\\Models\\User', 1, '{\"attributes\": {\"nama\": \"Siti\", \"jenis\": \"Pelaksana\", \"jabatan\": \"Sekda\", \"jenis_kelamin\": \"Perempuan\"}}', NULL, '2025-09-25 02:32:33', '2025-09-25 02:32:33'),
(184, 'default', 'Data staff dengan nama \"Afdhal\" telah ditambahkan', 'App\\Models\\Staff', 'created', 4, 'App\\Models\\User', 1, '{\"attributes\": {\"nama\": \"Afdhal\", \"jenis\": \"JFT\", \"jabatan\": \"Staff\", \"jenis_kelamin\": \"Laki-laki\"}}', NULL, '2025-09-25 02:33:20', '2025-09-25 02:33:20'),
(185, 'default', 'Data staff dengan nama \"Siti\" telah diubah', 'App\\Models\\Staff', 'updated', 3, 'App\\Models\\User', 1, '{\"old\": {\"jabatan\": \"Sekda\"}, \"attributes\": {\"jabatan\": \"Staff\"}}', NULL, '2025-09-25 02:33:51', '2025-09-25 02:33:51'),
(186, 'default', 'Data staff dengan nama \"Eka\" telah diubah', 'App\\Models\\Staff', 'updated', 2, 'App\\Models\\User', 1, '{\"old\": {\"jabatan\": \"Sekbid\"}, \"attributes\": {\"jabatan\": \"Staff\"}}', NULL, '2025-09-25 02:34:02', '2025-09-25 02:34:02'),
(187, 'default', 'Data staff dengan nama \"Axel\" telah diubah', 'App\\Models\\Staff', 'updated', 1, 'App\\Models\\User', 1, '{\"old\": {\"jabatan\": \"Ketua BKAD\"}, \"attributes\": {\"jabatan\": \"Staff\"}}', NULL, '2025-09-25 02:34:15', '2025-09-25 02:34:15'),
(188, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-25 06:48:55', '2025-09-25 06:48:55'),
(189, 'default', 'Agenda \"Apel pagi dan rekoniiasi pajak\" telah diubah', 'App\\Models\\Agenda', 'updated', 4, 'App\\Models\\User', 1, '{\"old\": {\"tanggal\": \"2025-09-14T17:00:00.000000Z\"}, \"attributes\": {\"tanggal\": \"2025-09-28T17:00:00.000000Z\"}}', NULL, '2025-09-25 06:50:57', '2025-09-25 06:50:57'),
(190, 'default', 'Pejabat \"RUDY MASHUDI ,ST. , MP.\" di struktur organisasi telah di-tambahkan', 'App\\Models\\StrukturOrganisasi', 'created', 1, 'App\\Models\\User', 1, '{\"attributes\": {\"nama\": \"RUDY MASHUDI ,ST. , MP.\", \"jabatan\": \"Kepala BKAD Kota Bogor\", \"parent.nama\": null}}', NULL, '2025-09-25 07:21:35', '2025-09-25 07:21:35'),
(191, 'default', 'Pejabat \"EVANDY DAHNI, S.H. , M.H.\" di struktur organisasi telah di-tambahkan', 'App\\Models\\StrukturOrganisasi', 'created', 2, 'App\\Models\\User', 1, '{\"attributes\": {\"nama\": \"EVANDY DAHNI, S.H. , M.H.\", \"jabatan\": \"Sekertaris Badan Keuangan Kota Bogor\", \"parent.nama\": \"RUDY MASHUDI ,ST. , MP.\"}}', NULL, '2025-09-25 07:23:53', '2025-09-25 07:23:53');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(192, 'default', 'Pejabat \"KARNASENANDA S.E , M.AP, M Agr\" di struktur organisasi telah di-tambahkan', 'App\\Models\\StrukturOrganisasi', 'created', 3, 'App\\Models\\User', 1, '{\"attributes\": {\"nama\": \"KARNASENANDA S.E , M.AP, M Agr\", \"jabatan\": \"Kepala Bidang Anggaran\", \"parent.nama\": \"RUDY MASHUDI ,ST. , MP.\"}}', NULL, '2025-09-25 07:25:50', '2025-09-25 07:25:50'),
(193, 'default', 'Pejabat \"ACHMAD SUWANDI S.E\" di struktur organisasi telah di-tambahkan', 'App\\Models\\StrukturOrganisasi', 'created', 4, 'App\\Models\\User', 1, '{\"attributes\": {\"nama\": \"ACHMAD SUWANDI S.E\", \"jabatan\": \"Kepala Bidang Penatausahaan\", \"parent.nama\": \"RUDY MASHUDI ,ST. , MP.\"}}', NULL, '2025-09-25 07:26:24', '2025-09-25 07:26:24'),
(194, 'default', 'Pejabat \"AGIH PRIBADI KUSUMAH, S.E , M.Si\" di struktur organisasi telah di-tambahkan', 'App\\Models\\StrukturOrganisasi', 'created', 5, 'App\\Models\\User', 1, '{\"attributes\": {\"nama\": \"AGIH PRIBADI KUSUMAH, S.E , M.Si\", \"jabatan\": \"Kepala Bidang Pengelolaan Barang Milik\", \"parent.nama\": \"RUDY MASHUDI ,ST. , MP.\"}}', NULL, '2025-09-25 07:26:54', '2025-09-25 07:26:54'),
(195, 'default', 'Pejabat \"WAHYU SUDIYANTO, SE, M.Si\" di struktur organisasi telah di-tambahkan', 'App\\Models\\StrukturOrganisasi', 'created', 6, 'App\\Models\\User', 1, '{\"attributes\": {\"nama\": \"WAHYU SUDIYANTO, SE, M.Si\", \"jabatan\": \"Kasubag Umum dan Kepegawaian\", \"parent.nama\": \"EVANDY DAHNI, S.H. , M.H.\"}}', NULL, '2025-09-25 07:27:31', '2025-09-25 07:27:31'),
(196, 'default', 'Pejabat \"BOY FERRY ALFIANDRI, S.Si\" di struktur organisasi telah di-tambahkan', 'App\\Models\\StrukturOrganisasi', 'created', 7, 'App\\Models\\User', 1, '{\"attributes\": {\"nama\": \"BOY FERRY ALFIANDRI, S.Si\", \"jabatan\": \"Kasubid Kebijakan Anggaran\", \"parent.nama\": \"KARNASENANDA S.E , M.AP, M Agr\"}}', NULL, '2025-09-25 07:28:06', '2025-09-25 07:28:06'),
(197, 'default', 'Pejabat \"ANDI RAHMAN S. Sos, M.A\" di struktur organisasi telah di-tambahkan', 'App\\Models\\StrukturOrganisasi', 'created', 8, 'App\\Models\\User', 1, '{\"attributes\": {\"nama\": \"ANDI RAHMAN S. Sos, M.A\", \"jabatan\": \"Kasubid Penetapan Kebijakan\", \"parent.nama\": \"KARNASENANDA S.E , M.AP, M Agr\"}}', NULL, '2025-09-25 07:28:37', '2025-09-25 07:28:37'),
(198, 'default', 'Pejabat \"SAMSI LUTFI, S.E .\" di struktur organisasi telah di-tambahkan', 'App\\Models\\StrukturOrganisasi', 'created', 9, 'App\\Models\\User', 1, '{\"attributes\": {\"nama\": \"SAMSI LUTFI, S.E .\", \"jabatan\": \"Kasubid Pengelolaan Perbendaharaan\", \"parent.nama\": \"ACHMAD SUWANDI S.E\"}}', NULL, '2025-09-25 07:29:27', '2025-09-25 07:29:27'),
(199, 'default', 'Pejabat \"DINI ANDRIANI, S.I.P .\" di struktur organisasi telah di-tambahkan', 'App\\Models\\StrukturOrganisasi', 'created', 10, 'App\\Models\\User', 1, '{\"attributes\": {\"nama\": \"DINI ANDRIANI, S.I.P .\", \"jabatan\": \"Kasubid Akutansi dan Pelaporan\", \"parent.nama\": \"ACHMAD SUWANDI S.E\"}}', NULL, '2025-09-25 07:29:58', '2025-09-25 07:29:58'),
(200, 'default', 'Pejabat \"DANI DARMAWAN, S.Ip\" di struktur organisasi telah di-tambahkan', 'App\\Models\\StrukturOrganisasi', 'created', 11, 'App\\Models\\User', 1, '{\"attributes\": {\"nama\": \"DANI DARMAWAN, S.Ip\", \"jabatan\": \"Plt. Kasubid Perencanaan Barang Milik Daerah\", \"parent.nama\": \"AGIH PRIBADI KUSUMAH, S.E , M.Si\"}}', NULL, '2025-09-25 07:30:31', '2025-09-25 07:30:31'),
(201, 'default', 'Pejabat \"MEGA CITRA ARIFANI S. IP., M.Tr.I.P\" di struktur organisasi telah di-tambahkan', 'App\\Models\\StrukturOrganisasi', 'created', 12, 'App\\Models\\User', 1, '{\"attributes\": {\"nama\": \"MEGA CITRA ARIFANI S. IP., M.Tr.I.P\", \"jabatan\": \"Kasubid Pengguna Pemanfaatan, Pemindahtanganan, Pemusnahaan, Pengamanan dan Penghapusan Barang Milik Daerah\", \"parent.nama\": \"AGIH PRIBADI KUSUMAH, S.E , M.Si\"}}', NULL, '2025-09-25 07:30:58', '2025-09-25 07:30:58'),
(202, 'default', 'Pejabat \"DINI ANDRIANI, S.I.P .\" di struktur organisasi telah di-tambahkan', 'App\\Models\\StrukturOrganisasi', 'created', 13, 'App\\Models\\User', 1, '{\"attributes\": {\"nama\": \"DINI ANDRIANI, S.I.P .\", \"jabatan\": \"Kasubid Akutansi dan Pelaporan\", \"parent.nama\": \"EVANDY DAHNI, S.H. , M.H.\"}}', NULL, '2025-09-25 08:25:41', '2025-09-25 08:25:41'),
(203, 'default', 'Pejabat \"SAMSI LUTFI, S.E .\" di struktur organisasi telah di-tambahkan', 'App\\Models\\StrukturOrganisasi', 'created', 14, 'App\\Models\\User', 1, '{\"attributes\": {\"nama\": \"SAMSI LUTFI, S.E .\", \"jabatan\": \"Kasubid Pengelolaan Perbendaharaan\", \"parent.nama\": \"WAHYU SUDIYANTO, SE, M.Si\"}}', NULL, '2025-09-25 08:27:31', '2025-09-25 08:27:31'),
(204, 'default', 'Pejabat \"BOY FERRY ALFIANDRI, S.Si\" di struktur organisasi telah di-tambahkan', 'App\\Models\\StrukturOrganisasi', 'created', 15, 'App\\Models\\User', 1, '{\"attributes\": {\"nama\": \"BOY FERRY ALFIANDRI, S.Si\", \"jabatan\": \"Kasubid Kebijakan Anggaran\", \"parent.nama\": \"SAMSI LUTFI, S.E .\"}}', NULL, '2025-09-25 08:28:38', '2025-09-25 08:28:38'),
(205, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-25 12:13:49', '2025-09-25 12:13:49'),
(206, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-26 00:54:35', '2025-09-26 00:54:35'),
(207, 'default', 'Dokumen \"berita acara hasil penawaran\" () telah dibuat', 'App\\Models\\Dokumen', 'created', 18, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"berita acara hasil penawaran\", \"kategoriDokumen.nama_kategori\": \"Umum\"}}', NULL, '2025-09-26 01:54:32', '2025-09-26 01:54:32'),
(208, 'default', 'Dokumen \"Penerimaan pegawai non PNS BKAD \" () telah dibuat', 'App\\Models\\Dokumen', 'created', 19, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"Penerimaan pegawai non PNS BKAD \", \"kategoriDokumen.nama_kategori\": \"Umum\"}}', NULL, '2025-09-26 01:57:21', '2025-09-26 01:57:21'),
(209, 'default', 'Berita dengan judul \"Cold Palmer\" telah dihapus', 'App\\Models\\Berita', 'deleted', 3, 'App\\Models\\User', 1, '{\"old\": {\"type\": \"kota_bogor\", \"title\": \"Cold Palmer\", \"content\": \"<p>Cold Palmer menggendong chelsea</p>\"}}', NULL, '2025-09-26 02:02:31', '2025-09-26 02:02:31'),
(210, 'default', 'Berita dengan judul \"My Kisah\" telah dihapus', 'App\\Models\\Berita', 'deleted', 4, 'App\\Models\\User', 1, '{\"old\": {\"type\": \"bkad\", \"title\": \"My Kisah\", \"content\": \"<p>🎙️ <strong>Narasi Demo DPR – “Indonesia (C)emas 2025”</strong></p><p></p><p><em>Di tengah hiruk-pikuk politik dan janji-janji yang tak kunjung ditepati, suara rakyat kembali menggema di depan Gedung DPR. Bukan sekadar teriakan, ini adalah panggilan nurani.</em></p><p></p><p>📍 <em>Senayan, Jakarta. Ribuan mahasiswa dari berbagai kampus berkumpul, mengenakan jas almamater, membawa spanduk, dan menyuarakan satu hal: perubahan.</em></p><p>🎓 <em>Aliansi BEM Seluruh Indonesia memimpin gerakan “Indonesia (C)emas 2025”, sebuah aksi lanjutan yang menolak politisasi sejarah, menuntut transparansi dalam pembahasan RUU, dan mendesak pengesahan RUU Perampasan Aset.</em></p><p>💬 <em>Orasi bergantian menggema dari mobil komando. Tuntutan mereka jelas: hentikan pemborosan uang rakyat, audit izin tambang, cabut tunjangan fantastis pejabat, dan reformasi menyeluruh di tubuh DPR dan aparat keamanan.</em></p><p>👥 <em>Tak hanya mahasiswa. Masyarakat sipil, aktivis perempuan, bahkan tokoh publik ikut turun ke jalan. Mereka membawa logistik, makanan, dan semangat solidaritas. Ini bukan sekadar demo—ini adalah gerakan moral.</em></p><p>🛑 <em>Meski sempat tertunda karena situasi keamanan, aksi tetap berlangsung tertib. Para peserta berjanji: “Kami tidak akan anarkis. Kami hanya ingin didengar.”</em></p><p></p><p><em>Di balik panasnya aspal dan dinginnya tembok parlemen, suara rakyat terus mengetuk pintu kekuasaan. Karena demokrasi bukan hanya soal pemilu—tapi tentang keberanian untuk bersuara.</em></p><p></p><p></p><p></p>\"}}', NULL, '2025-09-26 02:02:39', '2025-09-26 02:02:39'),
(211, 'default', 'Berita dengan judul \"My Kisah Part 2\" telah dihapus', 'App\\Models\\Berita', 'deleted', 5, 'App\\Models\\User', 1, '{\"old\": {\"type\": \"kota_bogor\", \"title\": \"My Kisah Part 2\", \"content\": \"<p>My Kisah part 2 disini saya dan teman saya bersama sama menaiki gunung yang ada pada roblox, disini kami sangat senagn sekali sampai sampai aku jungkir balik, lalu saat sudah diatas gunung kami pun mangabadikan memori ini bersama dengan cara berfoto bersama diatas gunung yang bernama gunung MT. RORAIMA, yang dimana ini sangat mudah sekali untuk didaki, bangkan untuk nenek saya pun ini mudah sekali, itu saja untuk berita my kisah part 2 saya. Terimakasih..........</p>\"}}', NULL, '2025-09-26 02:02:44', '2025-09-26 02:02:44'),
(212, 'default', 'Berita dengan judul \"My Kisah Part 3\" telah dihapus', 'App\\Models\\Berita', 'deleted', 6, 'App\\Models\\User', 1, '{\"old\": {\"type\": \"kota_bogor\", \"title\": \"My Kisah Part 3\", \"content\": \"<p>ini adalah my kisah part 3 yang sangat sangat memoriable</p>\"}}', NULL, '2025-09-26 02:02:49', '2025-09-26 02:02:49'),
(213, 'default', 'Berita dengan judul \"My Kisah Part 4\" telah dihapus', 'App\\Models\\Berita', 'deleted', 7, 'App\\Models\\User', 1, '{\"old\": {\"type\": \"kota_bogor\", \"title\": \"My Kisah Part 4\", \"content\": \"<p>ini adalah my kisah part 4, wowwwwww</p>\"}}', NULL, '2025-09-26 02:02:54', '2025-09-26 02:02:54'),
(214, 'default', 'Berita dengan judul \"My Kisah Part 5\" telah dihapus', 'App\\Models\\Berita', 'deleted', 8, 'App\\Models\\User', 1, '{\"old\": {\"type\": \"kota_bogor\", \"title\": \"My Kisah Part 5\", \"content\": \"<p>My Kisah Part 5, naik puncak gunung bersama teman temannnnn</p>\"}}', NULL, '2025-09-26 02:02:59', '2025-09-26 02:02:59'),
(215, 'default', 'Berita dengan judul \"Long Weekend, Ganjil Genap di Puncak Bogor Berlaku Besok hingga 7 September\" telah dihapus', 'App\\Models\\Berita', 'deleted', 9, 'App\\Models\\User', 1, '{\"old\": {\"type\": \"kota_bogor\", \"title\": \"Long Weekend, Ganjil Genap di Puncak Bogor Berlaku Besok hingga 7 September\", \"content\": \"<p>Polisi menyiapkan rekayasa lalu lintas (lalin) menyambut libur akhir pekan panjang atau long weekend di Jalan Raya Puncak, Bogor, Jawa Barat, besok. Rekayasa ganjil genap akan dimulai besok pagi.<br>&quot;Terkait cara dan sistem penanganannya itu dari Polres Bogor untuk pelaksanaan untuk Jumat, besok pagi dilaksanakan ganjil genap sampai di hari Minggu,&quot; kata KBO Satlantas Polres Bogor Iptu Ardian Novianto kepada wartawan, Kamis (4/9/2025).<br>Ardian menyebut selain ganjil genap, sistem satu arah atau one way juga akan dilaksanakan. One way dan ganjil genap disiapkan mulai besok hingga Minggu (7/9) nanti.<br>&quot;Terus terlepas ganjil genap itu ada one way yang akan dimulai besok juga sampai Minggu,&quot; ujarnya.<br>One way dilaksanakan secara situasional melihat volume kendaraan yang menuju ke Puncak. Apabila volume kendaraan melebihi kapasitas kendaraan di Puncak, maka one way akan dilaksanakan.<br>&quot;Kapasitas kurang lebih 80-100 ribu kendaraan. Kalau misal masih banyak kendaraan yang akan menuju Puncak, maka kita akan lakukan pengalihan tol,&quot; kata Ardian.<br>Tak hanya itu, pengalihan arus akan dilakukan di GT (Gerbang Tol) Ciawi. Kendaraan dari GT Ciawi menuju Puncak akan dialihkan menuju Caringin maupun Cigombong.<br>&quot;Sehingga tidak bisa menuju Puncak atau Ciawi agar kita alihkan ke jalur alternatif lain seperti Sukabumi yang akan Cianjur atau ke Bandung,&quot; pungkasnya.</p>\"}}', NULL, '2025-09-26 02:03:04', '2025-09-26 02:03:04'),
(216, 'default', 'Berita dengan judul \"Dedie Rachim Targetkan Kota Bogor Menuju Zero New Stunting\" telah dibuat', 'App\\Models\\Berita', 'created', 10, 'App\\Models\\User', 1, '{\"attributes\": {\"type\": \"kota_bogor\", \"title\": \"Dedie Rachim Targetkan Kota Bogor Menuju Zero New Stunting\", \"content\": \"<p>Wali Kota Bogor, Dedie A. Rachim hadiri Rembuk Stunting tingkat Kota Bogor yang digelar Hotel Royal Bogor, pada Rabu, 24 September 2025. Dalam kesempatan ini, Dedie Rachim menargetkan Kota Bogor menunju zero new stunting.</p><p>“Jadi hari ini kita melaksanakan rembuk stunting. Tujuannya adalah menjadikan Kota Bogor menuju zero new stunting. Tidak boleh ada lagi tambahan kasus baru stunting, itu target kita,” ujarnya.</p>\"}}', NULL, '2025-09-26 02:07:51', '2025-09-26 02:07:51'),
(217, 'default', 'Berita dengan judul \"Bapenda Kota Bogor Gencarkan Operasi Sisir PBB-P2, Targetkan Penerimaan Rp35 Miliar\" telah dibuat', 'App\\Models\\Berita', 'created', 11, 'App\\Models\\User', 1, '{\"attributes\": {\"type\": \"kota_bogor\", \"title\": \"Bapenda Kota Bogor Gencarkan Operasi Sisir PBB-P2, Targetkan Penerimaan Rp35 Miliar\", \"content\": \"<p><strong>Badan Pendapatan Daerah (Bapenda) Kota Bogor bersama pengurus RT dan RW menggelar Operasi Sisir Pajak Bumi dan Bangunan Perdesaan dan Perkotaan (PBB-P2). Kegiatan ini dilakukan secara door-to-door ke rumah warga sebagai upaya meningkatkan pemenuhan pajak sekaligus optimalisasi Pendapatan Asli Daerah (PAD).</strong></p><p><strong>Sekretaris Bapenda Kota Bogor,   <a target=\\\"_blank\\\" rel=\\\"noopener\\\" href=\\\"https://www.google.com/search?sca_esv=558dd4a087cc4d90&amp;cs=0&amp;q=Tyas+Ajeng+Fitriani+Prihandari%2C+SP%2C+M.Si&amp;sa=X&amp;ved=2ahUKEwiMn7us_POPAxUf8TgGHTC3GO4QxccNegQIAxAB&amp;mstk=AUtExfALmw8px8yP0ZR0BKLLViwWa_4Octw-sXYSW8nlAF98KFuB8uG6h0MFzeBZhAelo2ndBC11wB9FiKRhXmGT3VwO74jWLYXyAbH5bsKv_eva1dzwaeDGKTorwlE9Jj2xuXi34NJ3ARwpLySE5RfnZ7DWB10T_CBOl0RCSFMiC74mmSqWmFV_-b6l_O8b0E-bPv0p&amp;csui=3\\\" class=\\\"DTlJ6d\\\">Tyas Ajeng Fitriani Prihandari</a> , mengungkapkan bahwa semakin meningkatnya propaganda masyarakat untuk berhenti membayar pajak belakangan ini turut berdampak pada tingkat kepercayaan.</strong></p>\"}}', NULL, '2025-09-26 02:11:23', '2025-09-26 02:11:23'),
(218, 'default', 'Berita dengan judul \"Dedie Rachim Tanamkan Semangat Juang untuk Siswa-siswi di SMPN 4\" telah dibuat', 'App\\Models\\Berita', 'created', 12, 'App\\Models\\User', 1, '{\"attributes\": {\"type\": \"kota_bogor\", \"title\": \"Dedie Rachim Tanamkan Semangat Juang untuk Siswa-siswi di SMPN 4\", \"content\": \"<p><strong>Peringatan Hari Ulang Tahun (HUT) ke-66 SMPN 4 Kota Bogor dilaksanakan dengan penuh semangat optimisme dengan menampilkan berbagai penampilan seni, kreasi, tari, dan budaya dari para siswa-siswi.</strong></p><p style=\\\"text-align: justify;\\\"><strong>Kehadiran Wali Kota Bogor, Dedie A. Rachim disambut antusias oleh para murid serta penampilan tarian tradisional dan lengser.</strong></p><p style=\\\"text-align: justify;\\\"><strong>Sejalan dengan tema Mewujudkan Generasi Unggul yang Berkarakter dan Berprestasi, Dedie Rachim membakar semangat para siswa-siswi untuk memiliki pondasi, semangat juang serta menjadi pribadi yang berkarakter dengan kedisiplinan yang tinggi.</strong></p>\"}}', NULL, '2025-09-26 02:13:51', '2025-09-26 02:13:51'),
(219, 'default', 'Berita dengan judul \"Hari Perhubungan Nasional, Komitmen Kota Bogor Perkuat Penataan Transportasi\" telah dibuat', 'App\\Models\\Berita', 'created', 13, 'App\\Models\\User', 1, '{\"attributes\": {\"type\": \"kota_bogor\", \"title\": \"Hari Perhubungan Nasional, Komitmen Kota Bogor Perkuat Penataan Transportasi\", \"content\": \"<p><a target=\\\"_blank\\\" rel=\\\"noopener noreferrer nofollow\\\" href=\\\"http://Kabarindoraya.com\\\">Kabarindoraya.com</a> | Bogor - Sejalan dengan arahan Menteri Perhubungan (Menhub), Dudy Purwagandhi yang dibacakan dalam Upacara Hari Perhubungan Nasional Tingkat Kota Bogor Tahun 2025 di Plaza Balai Kota Bogor, Rabu (24/9/2025). Kota Bogor terus konsisten melakukan transformasi angkutan umum.</p>\"}}', NULL, '2025-09-26 02:16:52', '2025-09-26 02:16:52'),
(220, 'default', 'Berita dengan judul \"Kota BogorKodim 0606/Kota Bogor dan PT Adev Bagikan Ribuan Paket Sembako untuk Warga\" telah dibuat', 'App\\Models\\Berita', 'created', 14, 'App\\Models\\User', 1, '{\"attributes\": {\"type\": \"kota_bogor\", \"title\": \"Kota BogorKodim 0606/Kota Bogor dan PT Adev Bagikan Ribuan Paket Sembako untuk Warga\", \"content\": \"<p><a target=\\\"_blank\\\" rel=\\\"noopener noreferrer nofollow\\\" href=\\\"http://BOGOR-KITA.com\\\">BOGOR-KITA.com</a>, BOGOR – Dalam rangka memperingati Hari Ulang Tahun (HUT) Ke-80 Tentara Nasional Indonesia (TNI), Kodim 0606/Kota Bogor bekerja sama dengan PT Adev Natural Indonesia dan Baitulmal Tazkia membagikan ribuan paket sembako di Aula Makodim, Kecamatan Bogor Tengah, pada Kamis (25/9/2025).</p>\"}}', NULL, '2025-09-26 02:20:28', '2025-09-26 02:20:28'),
(221, 'default', 'Berita dengan judul \"Lewat Penghapusan Barang Milik Daerah, BKAD Kota Bogor Berhasil Kumpulkan Uang Rp2 Miliar untuk PAD\" telah dibuat', 'App\\Models\\Berita', 'created', 15, 'App\\Models\\User', 1, '{\"attributes\": {\"type\": \"bkad\", \"title\": \"Lewat Penghapusan Barang Milik Daerah, BKAD Kota Bogor Berhasil Kumpulkan Uang Rp2 Miliar untuk PAD\", \"content\": \"<p>BKAD Kota Bogor saat melakukan sosialisasi menu penghapusan aset daerah</p>\"}}', NULL, '2025-09-26 02:24:39', '2025-09-26 02:24:39'),
(222, 'default', 'Pejabat \"DINI ANDRIANI, S.I.P .\" di struktur organisasi telah di-hapus', 'App\\Models\\StrukturOrganisasi', 'deleted', 13, 'App\\Models\\User', 1, '{\"old\": {\"nama\": \"DINI ANDRIANI, S.I.P .\", \"jabatan\": \"Kasubid Akutansi dan Pelaporan\", \"parent.nama\": \"EVANDY DAHNI, S.H. , M.H.\"}}', NULL, '2025-09-26 02:26:10', '2025-09-26 02:26:10'),
(223, 'default', 'Pejabat \"SAMSI LUTFI, S.E .\" di struktur organisasi telah di-hapus', 'App\\Models\\StrukturOrganisasi', 'deleted', 14, 'App\\Models\\User', 1, '{\"old\": {\"nama\": \"SAMSI LUTFI, S.E .\", \"jabatan\": \"Kasubid Pengelolaan Perbendaharaan\", \"parent.nama\": \"WAHYU SUDIYANTO, SE, M.Si\"}}', NULL, '2025-09-26 02:26:36', '2025-09-26 02:26:36'),
(224, 'default', 'Pejabat \"BOY FERRY ALFIANDRI, S.Si\" di struktur organisasi telah di-hapus', 'App\\Models\\StrukturOrganisasi', 'deleted', 15, 'App\\Models\\User', 1, '{\"old\": {\"nama\": \"BOY FERRY ALFIANDRI, S.Si\", \"jabatan\": \"Kasubid Kebijakan Anggaran\", \"parent.nama\": \"SAMSI LUTFI, S.E .\"}}', NULL, '2025-09-26 02:27:15', '2025-09-26 02:27:15'),
(225, 'default', 'Berita dengan judul \"Denny Mulyadi Terpilih Jadi Sekda Kota Bogor, Ungguli Dua Kandidat Lain  Artikel ini telah tayang di Kompas.com dengan judul \"Denny Mulyadi Terpilih Jadi Sekda Kota Bogor, Ungguli Dua Kandidat Lain\" telah dibuat', 'App\\Models\\Berita', 'created', 16, 'App\\Models\\User', 1, '{\"attributes\": {\"type\": \"bkad\", \"title\": \"Denny Mulyadi Terpilih Jadi Sekda Kota Bogor, Ungguli Dua Kandidat Lain  Artikel ini telah tayang di Kompas.com dengan judul \\\"Denny Mulyadi Terpilih Jadi Sekda Kota Bogor, Ungguli Dua Kandidat Lain\", \"content\": \"<p>BOGOR, <a target=\\\"_blank\\\" rel=\\\"noopener noreferrer nofollow\\\" href=\\\"http://KOMPAS.com\\\">KOMPAS.com</a> - Kepala Badan Keuangan dan Aset Daerah (BKAD) Kota Bogor Denny Mulyadi resmi terpilih sebagai Sekretaris Daerah (Sekda) Kota Bogor setelah menjalani proses seleksi selama satu bulan. Denny berhasil mengungguli dua kandidat lainnya, yaitu Kepala Dinas Kesehatan (Dinkes) Sri Nowo Retno dan Asisten Pemerintahan dan Kesejahteraan Rakyat (Aspemkesra) Eko Prabowo. Pengumuman terpilihnya Denny Mulyadi disampaikan oleh Wali Kota Bogor, Dedie Rachim, di Balai Kota Bogor pada Selasa malam, 17 Juni 2025.<br></p>\"}}', NULL, '2025-09-26 02:30:56', '2025-09-26 02:30:56'),
(226, 'default', 'Berita dengan judul \"Mantan Kepala BKAD Denny Mulyadi Terpilih Jadi Sekda Kota Bogor\" telah dibuat', 'App\\Models\\Berita', 'created', 17, 'App\\Models\\User', 1, '{\"attributes\": {\"type\": \"bkad\", \"title\": \"Mantan Kepala BKAD Denny Mulyadi Terpilih Jadi Sekda Kota Bogor\", \"content\": \"<p><a target=\\\"_blank\\\" rel=\\\"noopener noreferrer nofollow\\\" href=\\\"http://Kabarindoraya.com\\\">Kabarindoraya.com</a> | Bogor - Wali Kota Bogor, Dedie A. Rachim menyampaiakan hasil seleksi Sekretaris Daerah (Sekda) Kota Bogor dari hasil proses asesmen terhadap tiga kandidat calon.</p><p>Ketiganya yakni Kepala Badan Keuangan dan Aset Daerah (BKAD), Denny Mulyadi, Kepala Dinas Kesehatan (Dinkes), Sri Nowo Retno, dan Asisten Pemerintahan dan Kesejahteraan Rakyat (Aspemkesra), Eko Prabowo.</p>\"}}', NULL, '2025-09-26 02:35:25', '2025-09-26 02:35:25'),
(227, 'default', 'Berita dengan judul \"BKAD Gelar Sosialisasi UU Nomor 7 Tahun 2021 Tentang Perpajakan\" telah dibuat', 'App\\Models\\Berita', 'created', 18, 'App\\Models\\User', 1, '{\"attributes\": {\"type\": \"bkad\", \"title\": \"BKAD Gelar Sosialisasi UU Nomor 7 Tahun 2021 Tentang Perpajakan\", \"content\": \"<p><strong>Badan Keuangan dan Aset Daerah (BKAD) Kota Bogor menggelar sosialisasi bendahara pengeluaran di Hotel Ibis Bogor Raya, Jalan Golf Estate, Danau Bogor Raya, Kota Bogor, Kamis (19/5/2022).</strong></p><p style=\\\"text-align: justify;\\\"><strong>Kegiatan sosialisasi yang dibuka Sekretaris Daerah (Sekda) Kota Bogor, Syarifah Sofiah dan dihadiri seluruh bendahara pengeluaran OPD ini terkait update peraturan terbaru Undang-Undang Nomor 7 Tahun 2021 Harmonisasi Peraturan Perpajakan.</strong></p>\"}}', NULL, '2025-09-26 02:37:42', '2025-09-26 02:37:42'),
(228, 'default', 'Berita dengan judul \"Kota BogorBKAD Kota Bogor Target Rampungkan Digitalisasi Aset 2022\" telah dibuat', 'App\\Models\\Berita', 'created', 19, 'App\\Models\\User', 1, '{\"attributes\": {\"type\": \"bkad\", \"title\": \"Kota BogorBKAD Kota Bogor Target Rampungkan Digitalisasi Aset 2022\", \"content\": \"<p>Badan Keuangan dan Aset Daerah (BKAD) Kota Bogor melakukan program digitalisasi aset daerah yang ditargetkan rampung tahun 2022 mendatang.</p><p>Saat ini program digitalisasi tersebut dalam tahap input data dari Organisasi Perangkat Daerah (OPD) se-Kota Bogor dan Barang Milik Daerah (BMD) yang sudah menggunakan barcode, sehingga bisa dicek secara online oleh Aparatur Sipil Negara (ASN) bahkan masyarakat Kota Bogor.</p>\"}}', NULL, '2025-09-26 02:39:45', '2025-09-26 02:39:45'),
(229, 'default', 'Dokumen \"Perwali Renstra Bkad 2019-2024\" () telah dibuat', 'App\\Models\\Dokumen', 'created', 20, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"Perwali Renstra Bkad 2019-2024\", \"kategoriDokumen.nama_kategori\": \"RENSTRA\"}}', NULL, '2025-09-26 02:45:15', '2025-09-26 02:45:15'),
(230, 'default', 'Dokumen \"pengumuman lelang_eks shangrilla\" () telah dibuat', 'App\\Models\\Dokumen', 'created', 21, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"pengumuman lelang_eks shangrilla\", \"kategoriDokumen.nama_kategori\": \"Umum\"}}', NULL, '2025-09-26 02:51:20', '2025-09-26 02:51:20'),
(231, 'default', 'Dokumen \"Pengumuman_LELANG_mobil pemadam_scrap\" () telah dibuat', 'App\\Models\\Dokumen', 'created', 22, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"Pengumuman_LELANG_mobil pemadam_scrap\", \"kategoriDokumen.nama_kategori\": \"Umum\"}}', NULL, '2025-09-26 02:54:06', '2025-09-26 02:54:06'),
(232, 'default', 'Dokumen \"Pengumuman Pelelangan BMD\" () telah dibuat', 'App\\Models\\Dokumen', 'created', 23, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"Pengumuman Pelelangan BMD\", \"kategoriDokumen.nama_kategori\": \"Umum\"}}', NULL, '2025-09-26 02:56:14', '2025-09-26 02:56:14'),
(233, 'default', 'Dokumen \"Laporan perubahan saldo anggaran lebih\" () telah dibuat', 'App\\Models\\Dokumen', 'created', 24, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"Laporan perubahan saldo anggaran lebih\", \"kategoriDokumen.nama_kategori\": \"Umum\"}}', NULL, '2025-09-26 03:04:17', '2025-09-26 03:04:17'),
(234, 'default', 'Dokumen \"LAK 2015\" () telah dibuat', 'App\\Models\\Dokumen', 'created', 25, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"LAK 2015\", \"kategoriDokumen.nama_kategori\": \"Umum\"}}', NULL, '2025-09-26 03:05:07', '2025-09-26 03:05:07'),
(235, 'default', 'Dokumen \"Neraca 2015\" () telah dibuat', 'App\\Models\\Dokumen', 'created', 26, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"Neraca 2015\", \"kategoriDokumen.nama_kategori\": \"Umum\"}}', NULL, '2025-09-26 03:08:45', '2025-09-26 03:08:45'),
(236, 'default', 'Dokumen \"PK BKAD 2022-compressed\" () telah dibuat', 'App\\Models\\Dokumen', 'created', 27, 'App\\Models\\User', 1, '{\"attributes\": {\"title\": \"PK BKAD 2022-compressed\", \"kategoriDokumen.nama_kategori\": \"Umum\"}}', NULL, '2025-09-26 03:14:48', '2025-09-26 03:14:48'),
(237, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-26 03:54:59', '2025-09-26 03:54:59'),
(238, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-09-26 06:40:14', '2025-09-26 06:40:14'),
(239, 'default', 'Pejabat \"AGIH PRIBADI KUSUMAH, S.E , M.Si\" di struktur organisasi telah di-ubah', 'App\\Models\\StrukturOrganisasi', 'updated', 5, 'App\\Models\\User', 1, '{\"old\": {\"jabatan\": \"Kepala Bidang Pengelolaan Barang Milik\"}, \"attributes\": {\"jabatan\": \"Kepala Bidang Pengelolaan Barang Milik Daerah\"}}', NULL, '2025-09-26 07:58:25', '2025-09-26 07:58:25'),
(240, 'default', 'Agenda \"Rapat\" telah dibuat', 'App\\Models\\Agenda', 'created', 6, 'App\\Models\\User', 1, '{\"attributes\": {\"waktu\": \"08:00\", \"lokasi\": \"Ka\", \"tanggal\": \"2025-09-28T17:00:00.000000Z\", \"nama_kegiatan\": \"Rapat\"}}', NULL, '2025-09-26 08:51:55', '2025-09-26 08:51:55'),
(241, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-10-01 02:06:28', '2025-10-01 02:06:28'),
(242, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-10-01 11:00:01', '2025-10-01 11:00:01'),
(243, 'default', 'Pejabat \"RUDY MASHUDI, ST. , MP.\" di struktur organisasi telah di-tambahkan', 'App\\Models\\StrukturOrganisasi', 'created', 16, 'App\\Models\\User', 1, '{\"attributes\": {\"nama\": \"RUDY MASHUDI, ST. , MP.\", \"jabatan\": \"KEPALA BKAD KOTA BOGOR\", \"parent.nama\": null}}', NULL, '2025-10-01 11:40:27', '2025-10-01 11:40:27'),
(244, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-10-02 03:21:40', '2025-10-02 03:21:40'),
(245, 'default', 'Pejabat \"RUDY MASHUDI, ST. , MP.\" di struktur organisasi telah di-hapus', 'App\\Models\\StrukturOrganisasi', 'deleted', 16, 'App\\Models\\User', 1, '{\"old\": {\"nama\": \"RUDY MASHUDI, ST. , MP.\", \"jabatan\": \"KEPALA BKAD KOTA BOGOR\", \"parent.nama\": null}}', NULL, '2025-10-02 03:22:39', '2025-10-02 03:22:39'),
(246, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-10-04 16:15:59', '2025-10-04 16:15:59'),
(247, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-10-09 01:38:01', '2025-10-09 01:38:01'),
(248, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-10-14 02:24:55', '2025-10-14 02:24:55'),
(249, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-10-15 03:16:35', '2025-10-15 03:16:35'),
(250, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-10-20 02:12:39', '2025-10-20 02:12:39'),
(251, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-10-20 02:35:46', '2025-10-20 02:35:46'),
(252, 'default', 'Berhasil Login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-10-20 03:42:06', '2025-10-20 03:42:06');

-- --------------------------------------------------------

--
-- Table structure for table `agendas`
--

CREATE TABLE `agendas` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_kegiatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agendas`
--

INSERT INTO `agendas` (`id`, `nama_kegiatan`, `tanggal`, `waktu`, `lokasi`, `created_at`, `updated_at`) VALUES
(1, 'Kunjungan Presiden', '2025-09-12', '13:00:00', 'Kantor BKAD Kota Bogor', '2025-09-02 01:26:11', '2025-09-02 01:26:11'),
(2, 'Rapat Pendanaan', '2025-09-04', '14:30:00', 'Kantor BKAD Kota Bogor', '2025-09-02 01:28:31', '2025-09-03 02:03:13'),
(3, 'layanan admistrasi pegawai ', '2025-09-05', '15:15:00', 'Kantor BKAD kota Bogor', '2025-09-03 07:15:53', '2025-09-04 07:27:36'),
(4, 'Apel pagi dan rekoniiasi pajak', '2025-09-29', '07:30:00', 'Kantor BKAD kota Bogor', '2025-09-03 07:17:29', '2025-09-25 06:50:57'),
(5, 'penyusunan & pengelolaan APBD', '2025-09-03', '13:22:00', 'Kantor BKAD kota Bogor', '2025-09-03 07:18:40', '2025-09-04 07:33:01'),
(6, 'Rapat', '2025-09-29', '08:00:00', 'Ka', '2025-09-26 08:51:55', '2025-09-26 08:51:55');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `image`, `url`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(5, 'KEBUN RAYA BOGOR', 'banners/01K4KRDXKHR249K13NY2NBBYA9.jpg', NULL, 1, 1, '2025-09-08 04:13:00', '2025-09-08 04:13:00'),
(8, 'banner 3', 'banners/01K5E0AT5C8Z3473QQMGB1D47B.png', NULL, 1, 0, '2025-09-18 08:51:22', '2025-09-18 08:51:22'),
(9, 'Benner 3', 'banners/01K5GD9J9K6FJH2YVHWKW9V4VR.jpg', NULL, 1, 2, '2025-09-19 07:16:21', '2025-09-19 07:16:21');

-- --------------------------------------------------------

--
-- Table structure for table `banner_popups`
--

CREATE TABLE `banner_popups` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_popups`
--

INSERT INTO `banner_popups` (`id`, `title`, `image`, `url`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Maklumat Pelayanan', 'banner-popups/01K5ZHWYK3Y24Z99EVK7GMNGFP.jpg', NULL, 1, 1, '2025-09-25 04:25:27', '2025-09-25 04:25:27'),
(2, 'Dedi Mulyadi', 'banner-popups/01K5ZJVGKZ2WP61CBS6E278TYT.png', NULL, 1, 2, '2025-09-25 04:42:09', '2025-09-25 04:42:09');

-- --------------------------------------------------------

--
-- Table structure for table `beritas`
--

CREATE TABLE `beritas` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beritas`
--

INSERT INTO `beritas` (`id`, `title`, `slug`, `type`, `content`, `image`, `published_at`, `created_at`, `updated_at`) VALUES
(10, 'Dedie Rachim Targetkan Kota Bogor Menuju Zero New Stunting', 'dedie-rachim-targetkan-kota-bogor-menuju-zero-new-stunting', 'kota_bogor', '<p>Wali Kota Bogor, Dedie A. Rachim hadiri Rembuk Stunting tingkat Kota Bogor yang digelar Hotel Royal Bogor, pada Rabu, 24 September 2025. Dalam kesempatan ini, Dedie Rachim menargetkan Kota Bogor menunju zero new stunting.</p><p>“Jadi hari ini kita melaksanakan rembuk stunting. Tujuannya adalah menjadikan Kota Bogor menuju zero new stunting. Tidak boleh ada lagi tambahan kasus baru stunting, itu target kita,” ujarnya.</p>', 'berita/01K61WDPABQG6P0EY3Z5N06EVZ.webp', '2025-09-26 02:07:11', '2025-09-26 02:07:51', '2025-09-26 02:07:51'),
(11, 'Bapenda Kota Bogor Gencarkan Operasi Sisir PBB-P2, Targetkan Penerimaan Rp35 Miliar', 'bapenda-kota-bogor-gencarkan-operasi-sisir-pbb-p2-targetkan-penerimaan-rp35-miliar', 'kota_bogor', '<p><strong>Badan Pendapatan Daerah (Bapenda) Kota Bogor bersama pengurus RT dan RW menggelar Operasi Sisir Pajak Bumi dan Bangunan Perdesaan dan Perkotaan (PBB-P2). Kegiatan ini dilakukan secara door-to-door ke rumah warga sebagai upaya meningkatkan pemenuhan pajak sekaligus optimalisasi Pendapatan Asli Daerah (PAD).</strong></p><p><strong>Sekretaris Bapenda Kota Bogor,   <a target=\"_blank\" rel=\"noopener\" href=\"https://www.google.com/search?sca_esv=558dd4a087cc4d90&amp;cs=0&amp;q=Tyas+Ajeng+Fitriani+Prihandari%2C+SP%2C+M.Si&amp;sa=X&amp;ved=2ahUKEwiMn7us_POPAxUf8TgGHTC3GO4QxccNegQIAxAB&amp;mstk=AUtExfALmw8px8yP0ZR0BKLLViwWa_4Octw-sXYSW8nlAF98KFuB8uG6h0MFzeBZhAelo2ndBC11wB9FiKRhXmGT3VwO74jWLYXyAbH5bsKv_eva1dzwaeDGKTorwlE9Jj2xuXi34NJ3ARwpLySE5RfnZ7DWB10T_CBOl0RCSFMiC74mmSqWmFV_-b6l_O8b0E-bPv0p&amp;csui=3\" class=\"DTlJ6d\">Tyas Ajeng Fitriani Prihandari</a> , mengungkapkan bahwa semakin meningkatnya propaganda masyarakat untuk berhenti membayar pajak belakangan ini turut berdampak pada tingkat kepercayaan.</strong></p>', 'berita/01K61WM63W46MR308BPP7NJJC4.jpeg', '2025-09-26 02:10:21', '2025-09-26 02:11:23', '2025-09-26 02:11:23'),
(12, 'Dedie Rachim Tanamkan Semangat Juang untuk Siswa-siswi di SMPN 4', 'dedie-rachim-tanamkan-semangat-juang-untuk-siswa-siswi-di-smpn-4', 'kota_bogor', '<p><strong>Peringatan Hari Ulang Tahun (HUT) ke-66 SMPN 4 Kota Bogor dilaksanakan dengan penuh semangat optimisme dengan menampilkan berbagai penampilan seni, kreasi, tari, dan budaya dari para siswa-siswi.</strong></p><p style=\"text-align: justify;\"><strong>Kehadiran Wali Kota Bogor, Dedie A. Rachim disambut antusias oleh para murid serta penampilan tarian tradisional dan lengser.</strong></p><p style=\"text-align: justify;\"><strong>Sejalan dengan tema Mewujudkan Generasi Unggul yang Berkarakter dan Berprestasi, Dedie Rachim membakar semangat para siswa-siswi untuk memiliki pondasi, semangat juang serta menjadi pribadi yang berkarakter dengan kedisiplinan yang tinggi.</strong></p>', 'berita/01K61WRP8BGVB2B1K7DS4YGF42.jpg', '2025-09-26 02:13:10', '2025-09-26 02:13:51', '2025-09-26 02:13:51'),
(13, 'Hari Perhubungan Nasional, Komitmen Kota Bogor Perkuat Penataan Transportasi', 'hari-perhubungan-nasional-komitmen-kota-bogor-perkuat-penataan-transportasi', 'kota_bogor', '<p><a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"http://Kabarindoraya.com\">Kabarindoraya.com</a> | Bogor - Sejalan dengan arahan Menteri Perhubungan (Menhub), Dudy Purwagandhi yang dibacakan dalam Upacara Hari Perhubungan Nasional Tingkat Kota Bogor Tahun 2025 di Plaza Balai Kota Bogor, Rabu (24/9/2025). Kota Bogor terus konsisten melakukan transformasi angkutan umum.</p>', 'berita/01K61WY757VAQ4K7CMDQ5F2JB1.webp', '2025-09-26 02:15:57', '2025-09-26 02:16:52', '2025-09-26 02:16:52'),
(14, 'Kota BogorKodim 0606/Kota Bogor dan PT Adev Bagikan Ribuan Paket Sembako untuk Warga', 'kota-bogorkodim-0606kota-bogor-dan-pt-adev-bagikan-ribuan-paket-sembako-untuk-warga', 'kota_bogor', '<p><a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"http://BOGOR-KITA.com\">BOGOR-KITA.com</a>, BOGOR – Dalam rangka memperingati Hari Ulang Tahun (HUT) Ke-80 Tentara Nasional Indonesia (TNI), Kodim 0606/Kota Bogor bekerja sama dengan PT Adev Natural Indonesia dan Baitulmal Tazkia membagikan ribuan paket sembako di Aula Makodim, Kecamatan Bogor Tengah, pada Kamis (25/9/2025).</p>', 'berita/01K61X4T5DA23CRVJFKKZ6NG3Y.jpg', '2025-09-26 02:18:53', '2025-09-26 02:20:28', '2025-09-26 02:20:28'),
(15, 'Lewat Penghapusan Barang Milik Daerah, BKAD Kota Bogor Berhasil Kumpulkan Uang Rp2 Miliar untuk PAD', 'lewat-penghapusan-barang-milik-daerah-bkad-kota-bogor-berhasil-kumpulkan-uang-rp2-miliar-untuk-pad', 'bkad', '<p>BKAD Kota Bogor saat melakukan sosialisasi menu penghapusan aset daerah</p>', 'berita/01K61XCEMPDQ3CDA95PV5RJYK1.webp', '2025-09-26 02:21:50', '2025-09-26 02:24:39', '2025-09-26 02:24:39'),
(16, 'Denny Mulyadi Terpilih Jadi Sekda Kota Bogor, Ungguli Dua Kandidat Lain  Artikel ini telah tayang di Kompas.com dengan judul \"Denny Mulyadi Terpilih Jadi Sekda Kota Bogor, Ungguli Dua Kandidat Lain', 'denny-mulyadi-terpilih-jadi-sekda-kota-bogor-ungguli-dua-kandidat-lain-artikel-ini-telah-tayang-di-kompascom-dengan-judul-denny-mulyadi-terpilih-jadi-sekda-kota-bogor-ungguli-dua-kandidat-lain', 'bkad', '<p>BOGOR, <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"http://KOMPAS.com\">KOMPAS.com</a> - Kepala Badan Keuangan dan Aset Daerah (BKAD) Kota Bogor Denny Mulyadi resmi terpilih sebagai Sekretaris Daerah (Sekda) Kota Bogor setelah menjalani proses seleksi selama satu bulan. Denny berhasil mengungguli dua kandidat lainnya, yaitu Kepala Dinas Kesehatan (Dinkes) Sri Nowo Retno dan Asisten Pemerintahan dan Kesejahteraan Rakyat (Aspemkesra) Eko Prabowo. Pengumuman terpilihnya Denny Mulyadi disampaikan oleh Wali Kota Bogor, Dedie Rachim, di Balai Kota Bogor pada Selasa malam, 17 Juni 2025.<br></p>', 'berita/01K61XQYXYB885ZP2CP51GK96Z.jpeg', '2025-09-26 02:29:22', '2025-09-26 02:30:56', '2025-09-26 02:30:56'),
(17, 'Mantan Kepala BKAD Denny Mulyadi Terpilih Jadi Sekda Kota Bogor', 'mantan-kepala-bkad-denny-mulyadi-terpilih-jadi-sekda-kota-bogor', 'bkad', '<p><a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"http://Kabarindoraya.com\">Kabarindoraya.com</a> | Bogor - Wali Kota Bogor, Dedie A. Rachim menyampaiakan hasil seleksi Sekretaris Daerah (Sekda) Kota Bogor dari hasil proses asesmen terhadap tiga kandidat calon.</p><p>Ketiganya yakni Kepala Badan Keuangan dan Aset Daerah (BKAD), Denny Mulyadi, Kepala Dinas Kesehatan (Dinkes), Sri Nowo Retno, dan Asisten Pemerintahan dan Kesejahteraan Rakyat (Aspemkesra), Eko Prabowo.</p>', 'berita/01K61Y06AKEJ2WNT6GTJPW25WP.webp', '2025-09-26 02:34:53', '2025-09-26 02:35:25', '2025-09-26 02:35:25'),
(18, 'BKAD Gelar Sosialisasi UU Nomor 7 Tahun 2021 Tentang Perpajakan', 'bkad-gelar-sosialisasi-uu-nomor-7-tahun-2021-tentang-perpajakan', 'bkad', '<p><strong>Badan Keuangan dan Aset Daerah (BKAD) Kota Bogor menggelar sosialisasi bendahara pengeluaran di Hotel Ibis Bogor Raya, Jalan Golf Estate, Danau Bogor Raya, Kota Bogor, Kamis (19/5/2022).</strong></p><p style=\"text-align: justify;\"><strong>Kegiatan sosialisasi yang dibuka Sekretaris Daerah (Sekda) Kota Bogor, Syarifah Sofiah dan dihadiri seluruh bendahara pengeluaran OPD ini terkait update peraturan terbaru Undang-Undang Nomor 7 Tahun 2021 Harmonisasi Peraturan Perpajakan.</strong></p>', 'berita/01K61Y4BM9AKRCN9AHGQ97BF98.jpg', '2025-09-26 02:37:05', '2025-09-26 02:37:42', '2025-09-26 02:37:42'),
(19, 'Kota BogorBKAD Kota Bogor Target Rampungkan Digitalisasi Aset 2022', 'kota-bogorbkad-kota-bogor-target-rampungkan-digitalisasi-aset-2022', 'bkad', '<p>Badan Keuangan dan Aset Daerah (BKAD) Kota Bogor melakukan program digitalisasi aset daerah yang ditargetkan rampung tahun 2022 mendatang.</p><p>Saat ini program digitalisasi tersebut dalam tahap input data dari Organisasi Perangkat Daerah (OPD) se-Kota Bogor dan Barang Milik Daerah (BMD) yang sudah menggunakan barcode, sehingga bisa dicek secara online oleh Aparatur Sipil Negara (ASN) bahkan masyarakat Kota Bogor.</p>', 'berita/01K61Y83GM6795JSWVJAT16F2H.jpg', '2025-09-26 02:38:54', '2025-09-26 02:39:45', '2025-09-26 02:39:45');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dokumens`
--

CREATE TABLE `dokumens` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` year DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_dokumen_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dokumens`
--

INSERT INTO `dokumens` (`id`, `title`, `tahun`, `file_path`, `kategori_dokumen_id`, `created_at`, `updated_at`) VALUES
(6, 'BKAD_RENJA 2023', '2023', 'dokumen/renja/01K4XX8JJPKBRWQHDRTM2WQ0BV.pdf', 7, '2025-09-12 02:49:52', '2025-09-12 03:21:22'),
(12, 'LRA APBD 2015', '2015', 'dokumen/apbd/01K4XYKENXY4N5A094YX2TXYG3.pdf', 9, '2025-09-12 03:13:17', '2025-09-12 03:22:25'),
(13, 'IKU BKAD 2022', '2022', 'dokumen/iku/01K4XZ76JJQJCZ6JVNSRN9C913.pdf', 5, '2025-09-12 03:24:04', '2025-09-12 03:24:04'),
(14, 'IKU BKAD 2021', '2021', 'dokumen/iku/01K4XZ8J2F8E0VXW07N6PSCNY5.pdf', 5, '2025-09-12 03:24:49', '2025-09-12 03:24:49'),
(15, 'FIK_LKIP BKAD 2022', '2022', 'dokumen/lakip/01K4XZC9H9KXAS4DSRRX91PM61.pdf', 6, '2025-09-12 03:26:51', '2025-09-12 03:26:51'),
(16, 'LKIP 2022 COVER ', '2022', 'dokumen/lakip/01K4XZDV1E3JQNWZD1VBGPFPNA.pdf', 6, '2025-09-12 03:27:42', '2025-09-12 03:27:42'),
(17, 'LKIP 2022', '2022', 'dokumen/lakip/01K4XZHMYGEC80PS08RG3H4KDW.pdf', 6, '2025-09-12 03:29:46', '2025-09-12 03:29:46'),
(18, 'berita acara hasil penawaran', '2022', 'dokumen/umum/01K61VNA5C8PQ97NCEG9GNR1QN.pdf', 3, '2025-09-26 01:54:32', '2025-09-26 01:54:32'),
(19, 'Penerimaan pegawai non PNS BKAD ', '2022', 'dokumen/umum/01K61VTFT31NBCX3PKNJSEEPGT.pdf', 3, '2025-09-26 01:57:21', '2025-09-26 01:57:21'),
(20, 'Perwali Renstra Bkad 2019-2024', '2024', 'dokumen/renstra/01K61YJ6AH02EM62H70T2QYS39.pdf', 8, '2025-09-26 02:45:15', '2025-09-26 02:45:15'),
(21, 'pengumuman lelang_eks shangrilla', '2023', 'dokumen/umum/01K61YXAG3HCZEPKS1VB42JAQX.pdf', 3, '2025-09-26 02:51:20', '2025-09-26 02:51:20'),
(22, 'Pengumuman_LELANG_mobil pemadam_scrap', '2023', 'dokumen/umum/01K61Z2CVHFWSYVNMXP80B6QYJ.pdf', 3, '2025-09-26 02:54:06', '2025-09-26 02:54:06'),
(23, 'Pengumuman Pelelangan BMD', '2022', 'dokumen/umum/01K61Z698T7TF0VMEM9MPS4H3N.pdf', 3, '2025-09-26 02:56:14', '2025-09-26 02:56:14'),
(24, 'Laporan perubahan saldo anggaran lebih', '2015', 'dokumen/umum/01K61ZN1R8QWFWDWPYF3EYS417.pdf', 3, '2025-09-26 03:04:17', '2025-09-26 03:04:17'),
(25, 'LAK 2015', '2015', 'dokumen/umum/01K61ZPJJSS14YKJ8JN05JNG3X.pdf', 3, '2025-09-26 03:05:07', '2025-09-26 03:05:07'),
(26, 'Neraca 2015', '2015', 'dokumen/umum/01K61ZX70D61VTJ7HP7J76S34F.pdf', 3, '2025-09-26 03:08:45', '2025-09-26 03:08:45'),
(27, 'PK BKAD 2022-compressed', '2022', 'dokumen/umum/01K62089772FFNDXJPNVH91VAP.pdf', 3, '2025-09-26 03:14:48', '2025-09-26 03:14:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fotos`
--

CREATE TABLE `fotos` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fotos`
--

INSERT INTO `fotos` (`id`, `title`, `file_path`, `caption`, `created_at`, `updated_at`) VALUES
(11, 'BKAD Kota Bogor', 'photos/01K4JMRF7DKH352AY3BZRCJAYH.jpg', NULL, '2025-09-07 17:49:37', '2025-09-07 17:49:37'),
(12, 'Kegiatan BKAD', 'photos/01K4JMT3D9FGQ29YGBNJN7HCZ8.jpeg', NULL, '2025-09-07 17:50:30', '2025-09-07 17:50:30'),
(13, 'Diskusi BKAD', 'photos/01K4JMTQMY1176MGPYJMZ4Y63E.jpeg', NULL, '2025-09-07 17:50:51', '2025-09-07 17:50:51'),
(14, 'Pelayanan BKAD', 'photos/01K4JMVSXP0R2QKG2PWYM1E5TW.jpeg', NULL, '2025-09-07 17:51:26', '2025-09-07 17:51:26'),
(15, 'Interior Auditorium BKAD Kota Bogor', 'photos/01K4RXRGR74P105XEFS6HSDC67.jpg', NULL, '2025-09-10 04:22:22', '2025-09-10 04:22:22'),
(16, 'Jalin Silaturahmi', 'photos/01K4S6Y1ZDBT17DZZKGAVT5VEY.jpg', NULL, '2025-09-10 07:02:41', '2025-09-10 07:02:41'),
(17, 'tugu Kujang Kota Bogor', 'photos/01K4S6Z6SGD4J9R436Z52DPW63.jpeg', NULL, '2025-09-10 07:03:19', '2025-09-10 07:03:19');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_dokumens`
--

CREATE TABLE `kategori_dokumens` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_dokumens`
--

INSERT INTO `kategori_dokumens` (`id`, `nama_kategori`, `slug`, `created_at`, `updated_at`) VALUES
(3, 'Umum', 'umum', '2025-09-12 02:17:14', '2025-09-12 02:17:14'),
(4, 'Pedoman RKA', 'pedoman-rka', '2025-09-12 02:17:30', '2025-09-12 02:17:30'),
(5, 'IKU', 'iku', '2025-09-12 02:17:34', '2025-09-12 02:17:34'),
(6, 'LAKIP', 'lakip', '2025-09-12 02:17:43', '2025-09-12 02:17:43'),
(7, 'RENJA', 'renja', '2025-09-12 02:18:03', '2025-09-12 02:18:03'),
(8, 'RENSTRA', 'renstra', '2025-09-12 02:18:15', '2025-09-12 02:18:15'),
(9, 'APBD', 'apbd', '2025-09-12 02:18:27', '2025-09-12 02:18:27'),
(10, 'Program Kerja', 'program-kerja', '2025-09-12 02:18:33', '2025-09-12 02:18:33'),
(11, 'Dasar Hukum', 'dasar-hukum', '2025-09-12 02:18:38', '2025-09-12 02:18:38'),
(12, 'LKPD', 'lkpd', '2025-09-12 02:18:42', '2025-09-12 02:18:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_08_24_221234_create_sections_table', 1),
(5, '2025_08_25_022358_create_activity_log_table', 2),
(6, '2025_08_25_022359_add_event_column_to_activity_log_table', 2),
(7, '2025_08_25_022400_add_batch_uuid_column_to_activity_log_table', 2),
(8, '2025_08_25_125308_create_dokumens_table', 3),
(9, '2025_08_25_141953_create_dokumens_table', 4),
(10, '2025_08_25_144629_create_dokumens_table', 5),
(11, '2025_08_26_081217_create_documents_table', 6),
(12, '2025_08_26_083527_create_dokumen_table', 7),
(13, '2025_08_26_092119_create_beritas_table', 8),
(14, '2025_08_27_081010_create_beritas_table', 9),
(15, '2025_08_27_093632_create_banners_table', 10),
(16, '2025_08_27_100608_create_fotos_table', 11),
(17, '2025_08_27_101416_create_videos_table', 12),
(18, '2025_08_28_135549_create_kategori_dokumens_table', 13),
(19, '2025_08_28_135929_create_dokumens_table', 14),
(20, '2025_09_01_135003_add_thumbnail_path_to_videos_table', 15),
(21, '2025_09_02_081751_create_agendas_table', 16),
(22, '2025_09_12_034241_create_kategori_dokumens_table', 17),
(23, '2025_09_28_135929_create_dokumens_table', 18),
(24, '2025_09_18_081052_add_type_and_youtube_url_to_videos_table', 19),
(25, '2025_09_25_090858_create_staff_table', 20),
(26, '2025_09_25_110541_create_banner_popups_table', 21),
(27, '2025_09_25_140720_create_struktur_organisasis_table', 22);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_as` enum('JUMBOTRON','ABOUT') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('fZQKLRvInwhO0DL0QlRHKR3iAUT1LPSnkGMn6ANC', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoibXpBWVJyQkJNOEwyUVhUb1ZvMWN4dUFhUDNxOUNOYnM0SUFhOWxnZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkQ2dYLmxhZlphRGRtaUhWaTRKejZzTzQ3c29jM0lGYW1oelRpMTJ5SWNveloveDZscWVHaUMiO3M6NjoidGFibGVzIjthOjI6e3M6NDA6IjBjNzc1OGExYTlhZGFlNTQxYmJlMTcwZjIwNzFmZGQzX2NvbHVtbnMiO2E6Mzp7aTowO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJjcmVhdGVkX2F0IjtzOjU6ImxhYmVsIjtzOjU6Ildha3R1IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMToiZGVzY3JpcHRpb24iO3M6NToibGFiZWwiO3M6OToiQWt0aXZpdGFzIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMToiY2F1c2VyLm5hbWUiO3M6NToibGFiZWwiO3M6NDoiVXNlciI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO319czo0MDoiODJjNzUyNDRkZTAzNzA0ZTYzOTZjNTFlODg0MDBhYTFfY29sdW1ucyI7YTo0OntpOjA7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NToiaW1hZ2UiO3M6NToibGFiZWwiO3M6NjoiR2FtYmFyIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo1OiJ0aXRsZSI7czo1OiJsYWJlbCI7czo1OiJKdWR1bCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjI7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NDoidHlwZSI7czo1OiJsYWJlbCI7czo4OiJLYXRlZ29yaSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjM7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTI6InB1Ymxpc2hlZF9hdCI7czo1OiJsYWJlbCI7czoxNDoiVGFuZ2dhbCBVcGxvYWQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9fX19', 1760932535),
('QVKEkUStSGfA27ZGchhpGrfusyMrGdVHXGaJ4sP7', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiWG5rQnJDZkEwSzZGc1luMmpqYzV4OFQ1aXM0WlBDMlZUWHozaTFmSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkQ2dYLmxhZlphRGRtaUhWaTRKejZzTzQ3c29jM0lGYW1oelRpMTJ5SWNveloveDZscWVHaUMiO3M6NjoidGFibGVzIjthOjE6e3M6NDA6IjBjNzc1OGExYTlhZGFlNTQxYmJlMTcwZjIwNzFmZGQzX2NvbHVtbnMiO2E6Mzp7aTowO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJjcmVhdGVkX2F0IjtzOjU6ImxhYmVsIjtzOjU6Ildha3R1IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMToiZGVzY3JpcHRpb24iO3M6NToibGFiZWwiO3M6OToiQWt0aXZpdGFzIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMToiY2F1c2VyLm5hbWUiO3M6NToibGFiZWwiO3M6NDoiVXNlciI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO319fX0=', 1760926370),
('V0WuPVh9t1wWdTrxrG6hgeGalpIuxVTiHkmzw9sL', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiYUNUVkM5TFRKS2dTWk9zMlY3eEdVWWhMSjBpN1kwTGJQY1BqSWFUZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkQ2dYLmxhZlphRGRtaUhWaTRKejZzTzQ3c29jM0lGYW1oelRpMTJ5SWNveloveDZscWVHaUMiO3M6NjoidGFibGVzIjthOjI6e3M6NDA6IjBjNzc1OGExYTlhZGFlNTQxYmJlMTcwZjIwNzFmZGQzX2NvbHVtbnMiO2E6Mzp7aTowO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJjcmVhdGVkX2F0IjtzOjU6ImxhYmVsIjtzOjU6Ildha3R1IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMToiZGVzY3JpcHRpb24iO3M6NToibGFiZWwiO3M6OToiQWt0aXZpdGFzIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMToiY2F1c2VyLm5hbWUiO3M6NToibGFiZWwiO3M6NDoiVXNlciI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO319czo0MDoiODJjNzUyNDRkZTAzNzA0ZTYzOTZjNTFlODg0MDBhYTFfY29sdW1ucyI7YTo0OntpOjA7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NToiaW1hZ2UiO3M6NToibGFiZWwiO3M6NjoiR2FtYmFyIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo1OiJ0aXRsZSI7czo1OiJsYWJlbCI7czo1OiJKdWR1bCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjI7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NDoidHlwZSI7czo1OiJsYWJlbCI7czo4OiJLYXRlZ29yaSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjM7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTI6InB1Ymxpc2hlZF9hdCI7czo1OiJsYWJlbCI7czoxNDoiVGFuZ2dhbCBVcGxvYWQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9fX19', 1760930610);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `nama`, `jenis_kelamin`, `jenis`, `jabatan`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Axel', 'Laki-laki', 'Struktural', 'Staff', NULL, '2025-09-25 02:31:07', '2025-09-25 02:34:15'),
(2, 'Eka', 'Laki-laki', 'JFT', 'Staff', NULL, '2025-09-25 02:32:14', '2025-09-25 02:34:02'),
(3, 'Siti', 'Perempuan', 'Pelaksana', 'Staff', 'staff-photos/01K5ZBS3NYZC6G9XVJ4PX8B4VK.png', '2025-09-25 02:32:33', '2025-09-25 02:38:30'),
(4, 'Afdhal', 'Laki-laki', 'JFT', 'Staff', NULL, '2025-09-25 02:33:20', '2025-09-25 02:33:20');

-- --------------------------------------------------------

--
-- Table structure for table `struktur_organisasis`
--

CREATE TABLE `struktur_organisasis` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `struktur_organisasis`
--

INSERT INTO `struktur_organisasis` (`id`, `nama`, `jabatan`, `gambar`, `parent_id`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'RUDY MASHUDI ,ST. , MP.', 'Kepala BKAD Kota Bogor', 'struktur-organisasi/01K5ZVZE1PJGY9MG9MHE75VX9D.jpeg', NULL, 0, '2025-09-25 07:21:35', '2025-09-25 07:21:35'),
(2, 'EVANDY DAHNI, S.H. , M.H.', 'Sekertaris Badan Keuangan Kota Bogor', 'struktur-organisasi/01K5ZW3N4PZTN3HYWHM7CXDVGW.jpeg', 1, 0, '2025-09-25 07:23:53', '2025-09-25 07:23:53'),
(3, 'KARNASENANDA S.E , M.AP, M Agr', 'Kepala Bidang Anggaran', 'struktur-organisasi/01K5ZW77S9NGYRMF0Y7VWZ9RYP.jpeg', 1, 0, '2025-09-25 07:25:50', '2025-09-25 07:25:50'),
(4, 'ACHMAD SUWANDI S.E', 'Kepala Bidang Penatausahaan', 'struktur-organisasi/01K5ZW88BD7SWYCE2YZBSV0G5R.jpeg', 1, 0, '2025-09-25 07:26:24', '2025-09-25 07:26:24'),
(5, 'AGIH PRIBADI KUSUMAH, S.E , M.Si', 'Kepala Bidang Pengelolaan Barang Milik Daerah', 'struktur-organisasi/01K5ZW95PXFA1E8EZDFGPCWJ9Y.jpeg', 1, 0, '2025-09-25 07:26:54', '2025-09-26 07:58:25'),
(6, 'WAHYU SUDIYANTO, SE, M.Si', 'Kasubag Umum dan Kepegawaian', 'struktur-organisasi/01K5ZWAAH21TYBZR9X7K971315.jpeg', 2, 0, '2025-09-25 07:27:31', '2025-09-25 07:27:31'),
(7, 'BOY FERRY ALFIANDRI, S.Si', 'Kasubid Kebijakan Anggaran', 'struktur-organisasi/01K5ZWBCRS2AFPJ0EQBKXRVCAM.jpeg', 3, 0, '2025-09-25 07:28:06', '2025-09-25 07:28:06'),
(8, 'ANDI RAHMAN S. Sos, M.A', 'Kasubid Penetapan Kebijakan', 'struktur-organisasi/01K5ZWCA9A2AZQNWEJDJ4Y402N.jpeg', 3, 0, '2025-09-25 07:28:37', '2025-09-25 07:28:37'),
(9, 'SAMSI LUTFI, S.E .', 'Kasubid Pengelolaan Perbendaharaan', 'struktur-organisasi/01K5ZWDVET2D3XJMZ1PJSFAMKE.jpeg', 4, 0, '2025-09-25 07:29:27', '2025-09-25 07:29:27'),
(10, 'DINI ANDRIANI, S.I.P .', 'Kasubid Akutansi dan Pelaporan', 'struktur-organisasi/01K5ZWET5G5TMD9V045HGM9DVV.jpeg', 4, 0, '2025-09-25 07:29:58', '2025-09-25 07:29:58'),
(11, 'DANI DARMAWAN, S.Ip', 'Plt. Kasubid Perencanaan Barang Milik Daerah', 'struktur-organisasi/01K5ZWFT8YXXPS9ZGX6Z1Q16X0.jpeg', 5, 0, '2025-09-25 07:30:31', '2025-09-25 07:30:31'),
(12, 'MEGA CITRA ARIFANI S. IP., M.Tr.I.P', 'Kasubid Pengguna Pemanfaatan, Pemindahtanganan, Pemusnahaan, Pengamanan dan Penghapusan Barang Milik Daerah', 'struktur-organisasi/01K5ZWGKX3XJHSPD99KPSH60HA.jpeg', 5, 0, '2025-09-25 07:30:58', '2025-09-25 07:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$12$CgX.lafZaDdmiHVi4Jz6sO47soc3IFamhzTi12yIcozZ/x6lqeGiC', NULL, '2025-08-24 19:14:50', '2025-08-24 19:14:50');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'file',
  `youtube_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `type`, `youtube_url`, `file_path`, `thumbnail_path`, `description`, `created_at`, `updated_at`) VALUES
(4, 'Profil Badan Keuangan dan Aset Daerah Kota Bogor 2023', 'youtube', 'https://youtu.be/cPrFvULq8mM', NULL, NULL, NULL, '2025-09-18 01:28:22', '2025-09-18 01:28:22'),
(5, 'profil bkad', 'youtube', 'https://youtu.be/z9ZviBYXSp0?si=m-TsY984LA11R0Ki', NULL, NULL, NULL, '2025-09-18 03:58:31', '2025-09-18 03:58:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `agendas`
--
ALTER TABLE `agendas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_popups`
--
ALTER TABLE `banner_popups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beritas`
--
ALTER TABLE `beritas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `beritas_slug_unique` (`slug`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `dokumens`
--
ALTER TABLE `dokumens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dokumens_kategori_dokumen_id_foreign` (`kategori_dokumen_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_dokumens`
--
ALTER TABLE `kategori_dokumens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kategori_dokumens_slug_unique` (`slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `struktur_organisasis`
--
ALTER TABLE `struktur_organisasis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `struktur_organisasis_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `agendas`
--
ALTER TABLE `agendas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `banner_popups`
--
ALTER TABLE `banner_popups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `beritas`
--
ALTER TABLE `beritas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `dokumens`
--
ALTER TABLE `dokumens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_dokumens`
--
ALTER TABLE `kategori_dokumens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `struktur_organisasis`
--
ALTER TABLE `struktur_organisasis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dokumens`
--
ALTER TABLE `dokumens`
  ADD CONSTRAINT `dokumens_kategori_dokumen_id_foreign` FOREIGN KEY (`kategori_dokumen_id`) REFERENCES `kategori_dokumens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `struktur_organisasis`
--
ALTER TABLE `struktur_organisasis`
  ADD CONSTRAINT `struktur_organisasis_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `struktur_organisasis` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
