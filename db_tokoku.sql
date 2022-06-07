-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jun 2022 pada 19.49
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tokoku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_activation_attempts`
--

INSERT INTO `auth_activation_attempts` (`id`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '998903f7bbbf226bae585c8ea10dafbe', '2022-05-15 20:29:09'),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'ad6884c76263e28d190ccfda37b09bc1', '2022-05-16 01:35:21'),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'e6e6082fe17fdf981dffc88bfd322d41', '2022-05-16 01:44:23'),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '8626a1cbd02d7ec660e18fae92793ad1', '2022-06-05 08:36:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Site Administrator'),
(2, 'customer', 'Customer ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 7),
(2, 10),
(2, 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'azvadenis@gmail.com', 7, '2022-05-15 19:52:45', 0),
(2, '::1', 'azvadenis@gmail.com', 7, '2022-05-15 20:14:08', 0),
(3, '::1', 'azvadenis@gmail.com', 7, '2022-05-15 20:15:08', 0),
(4, '::1', 'azvadenis@gmail.com', 7, '2022-05-15 20:20:49', 0),
(5, '::1', 'azvadenis@gmail.com', 7, '2022-05-15 20:26:11', 0),
(6, '::1', 'azvadenis@gmail.com', 7, '2022-05-15 20:28:23', 0),
(7, '::1', 'azvadenis@gmail.com', 7, '2022-05-15 20:29:18', 1),
(8, '::1', 'denisavsa@gmail.com', NULL, '2022-05-15 20:45:40', 0),
(9, '::1', 'azvadenis@gmail.com', NULL, '2022-05-15 21:33:39', 0),
(10, '::1', 'azvadenis@gmail.com', 7, '2022-05-15 21:33:47', 1),
(11, '::1', 'azvadenis@gmail.com', NULL, '2022-05-15 21:34:21', 0),
(12, '::1', 'azvadenis@gmail.com', 7, '2022-05-15 21:35:40', 1),
(13, '::1', 'azvadenis@gmail.com', 7, '2022-05-15 21:41:51', 1),
(14, '::1', 'azvadenis@gmail.com', 7, '2022-05-16 01:32:13', 1),
(15, '::1', 'denisavsa@gmail.com', NULL, '2022-05-16 01:32:58', 0),
(16, '::1', 'denisavsa@gmail.com', 9, '2022-05-16 01:35:35', 1),
(17, '::1', 'denisavsa@gmail.com', 9, '2022-05-16 01:40:18', 1),
(18, '::1', 'azvadenis@gmail.com', 7, '2022-05-16 01:40:54', 1),
(19, '::1', 'denisavsa@gmail.com', 10, '2022-05-16 01:44:32', 1),
(20, '::1', 'azvadenis@gmail.com', 7, '2022-05-16 01:45:10', 1),
(21, '::1', 'denisavsa@gmail.com', 10, '2022-05-16 01:59:05', 1),
(22, '::1', 'azvadenis@gmail.com', 7, '2022-05-16 02:00:13', 1),
(23, '::1', 'denisavsa@gmail.com', 10, '2022-05-16 02:00:37', 1),
(24, '::1', 'customer', NULL, '2022-05-17 04:18:58', 0),
(25, '::1', 'denisavsa@gmail.com', 10, '2022-05-17 04:19:07', 1),
(26, '::1', 'denisavsa@gmail.com', 10, '2022-05-18 05:49:14', 1),
(27, '::1', 'denisavsa@gmail.com', 10, '2022-05-18 12:22:08', 1),
(28, '::1', 'denisavsa@gmail.com', 10, '2022-05-18 14:51:30', 1),
(29, '::1', 'denisavsa@gmail.com', 10, '2022-05-19 01:51:16', 1),
(30, '::1', 'azvadenis@gmail.com', 7, '2022-05-31 18:05:50', 1),
(31, '::1', 'customer4', 12, '2022-06-01 02:14:17', 0),
(32, '::1', 'azvadenis@gmail.com', 7, '2022-06-01 06:32:20', 1),
(33, '::1', 'azvadenis@gmail.com', 7, '2022-06-01 07:48:35', 1),
(34, '::1', 'denisavsa@gmail.com', 10, '2022-06-01 09:59:40', 1),
(35, '::1', 'azvadenis@gmail.com', 7, '2022-06-01 10:00:49', 1),
(36, '::1', 'denisavsa@gmail.com', 10, '2022-06-01 10:06:16', 1),
(37, '::1', 'denisavsa@gmail.com', 10, '2022-06-01 10:20:42', 1),
(38, '::1', 'azvadenis@gmail.com', 7, '2022-06-01 10:28:17', 1),
(39, '::1', 'denisavsa@gmail.com', 10, '2022-06-01 17:53:19', 1),
(40, '::1', 'azvadenis@gmail.com', 7, '2022-06-01 21:47:45', 1),
(41, '::1', 'azvadenis@gmail.com', 7, '2022-06-02 00:15:49', 1),
(42, '::1', 'denisavsa@gmail.com', 10, '2022-06-02 00:44:49', 1),
(43, '::1', 'denisavsa@gmail.com', 10, '2022-06-03 01:07:52', 1),
(44, '::1', 'azvadenis@gmail.com', 7, '2022-06-03 01:08:27', 1),
(45, '::1', 'denisavsa@gmail.com', 10, '2022-06-04 10:41:52', 1),
(46, '::1', 'denisavsa@gmail.com', 10, '2022-06-04 13:30:35', 1),
(47, '::1', 'denisavsa@gmail.com', 10, '2022-06-04 19:08:03', 1),
(48, '::1', 'azvadenis@gmail.com', 7, '2022-06-04 19:19:00', 1),
(49, '::1', 'denisavsa@gmail.com', 10, '2022-06-04 19:27:07', 1),
(50, '::1', 'azvadenis@gmail.com', 7, '2022-06-04 22:48:27', 1),
(51, '::1', 'denisavsa@gmail.com', 10, '2022-06-04 22:50:00', 1),
(52, '::1', 'aditio@gmail.com', 10, '2022-06-05 01:12:58', 1),
(53, '::1', 'azvadenis@gmail.com', 7, '2022-06-05 02:14:57', 1),
(54, '::1', 'aditio@gmail.com', 10, '2022-06-05 02:59:00', 1),
(55, '::1', 'aditio@gmail.com', 10, '2022-06-05 03:34:15', 1),
(56, '::1', 'aditio@gmail.com', 10, '2022-06-05 08:25:01', 1),
(57, '::1', 'azvadenis@gmail.com', 7, '2022-06-05 08:29:10', 1),
(58, '::1', 'aditio@gmail.com', 10, '2022-06-05 08:35:21', 1),
(59, '::1', 'denisavsa@gmail.com', 13, '2022-06-05 08:37:06', 1),
(60, '::1', 'aditio@gmail.com', 10, '2022-06-05 08:51:08', 1),
(61, '::1', 'aditio@gmail.com', 10, '2022-06-05 09:03:40', 1),
(62, '::1', 'azvadenis@gmail.com', 7, '2022-06-05 09:09:06', 1),
(63, '::1', 'aditio@gmail.com', 10, '2022-06-05 09:14:06', 1),
(64, '::1', 'denisavsa@gmail.com', 13, '2022-06-05 09:23:25', 1),
(65, '::1', 'denisavsa@gmail.com', NULL, '2022-06-05 09:23:43', 0),
(66, '::1', 'denisavsa@gmail.com', 13, '2022-06-05 09:25:29', 1),
(67, '::1', 'denisavsa@gmail.com', 13, '2022-06-05 09:47:09', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'manage-users', 'Manage all fitur'),
(2, 'manage-profile', 'Just order customer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_reset_attempts`
--

INSERT INTO `auth_reset_attempts` (`id`, `email`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, 'azvadenis@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '2b40361e423a13d24e1f4005944aceca', '2022-05-15 20:46:30'),
(2, 'azvadenis@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '2b40361e423a13d24e1f4005944aceca', '2022-05-15 20:46:43'),
(3, 'azvadenis@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '2b40361e423a13d24e1f4005944aceca', '2022-05-15 20:47:05'),
(4, 'denisavsa@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '37402d8f19ac8c61490d02213af93a27', '2022-06-05 09:24:56'),
(5, 'denisavsa@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '37402d8f19ac8c61490d02213af93a27', '2022-06-05 09:25:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `subject` varchar(128) DEFAULT NULL,
  `email` varchar(64) NOT NULL,
  `message` mediumtext NOT NULL,
  `contact_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `reply_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `contacts`
--

INSERT INTO `contacts` (`id`, `parent_id`, `name`, `subject`, `email`, `message`, `contact_date`, `status`, `reply_at`) VALUES
(1, NULL, 'Agung Tri Saputra', 'Pengiriman kok lama?', 'martinms.za@gmail.com', 'pengiriman pesanan saya kok lama ya', '2020-03-29 07:40:13', 2, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) NOT NULL,
  `name` varchar(191) NOT NULL,
  `code` varchar(32) NOT NULL,
  `credit` decimal(8,2) NOT NULL,
  `start_date` date NOT NULL,
  `expired_date` date NOT NULL,
  `is_active` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `credit`, `start_date`, `expired_date`, `is_active`) VALUES
(4, 'Bonuss', 'bonus', '5000.00', '2022-06-05', '2022-06-30', 1),
(5, 'WELCOME MAY', 'MAY21', '4000.00', '2021-05-01', '2021-05-08', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1652647500, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `coupon_id` bigint(20) DEFAULT NULL,
  `order_number` varchar(16) NOT NULL,
  `order_status` enum('1','2','3','4','5') DEFAULT '1',
  `order_date` datetime NOT NULL,
  `total_price` decimal(12,2) DEFAULT NULL,
  `total_items` int(10) DEFAULT NULL,
  `payment_method` int(11) DEFAULT 1,
  `delivery_data` text DEFAULT NULL,
  `delivered_date` datetime DEFAULT NULL,
  `finish_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `coupon_id`, `order_number`, `order_status`, `order_date`, `total_price`, `total_items`, `payment_method`, `delivery_data`, `delivered_date`, `finish_date`) VALUES
(9, 8, NULL, 'ZCV352137461', '3', '2021-05-03 00:03:44', '62000.00', 3, 2, '{\"customer\":{\"name\":\"Agung Tri Saputra\",\"phone_number\":\"081328907767\",\"address\":\"Kost Indah Jaya Belakang No. 19, Jl. Medan Baru VI, Kandang Limun, Bengkulu\"},\"note\":\"\"}', NULL, NULL),
(10, 10, NULL, 'WGY452127307', '2', '2021-05-04 10:31:43', '142000.00', 2, 1, '{\"customer\":{\"name\":\"Agung Tri Saputra\",\"phone_number\":\"081328907767\",\"address\":\"Kost Indah Jaya Belakang No. 19, Jl. Medan Baru VI, Kandang Limun, Bengkulu\"},\"note\":\"\"}', NULL, NULL),
(11, 10, NULL, 'XCB452117342', '2', '2021-05-04 10:35:42', '130000.00', 1, 1, '{\"customer\":{\"name\":\"Agung Tri Saputra\",\"phone_number\":\"081328907767\",\"address\":\"Kost Indah Jaya Belakang No. 19, Jl. Medan Baru VI, Kandang Limun, Bengkulu\"},\"note\":\"\"}', NULL, NULL),
(37, 10, NULL, 'RUF18522110589', '1', '2022-05-18 14:51:37', '20000.00', 1, 2, '{\"customer\":{\"name\":\"Customer ku\",\"phone_number\":\"082175831680\",\"address\":\"Jln Enggang NO 16\"},\"note\":\"\"}', NULL, NULL),
(38, 10, NULL, 'YWI18522110510', '1', '2022-05-18 14:52:01', '20000.00', 1, 2, '{\"customer\":{\"name\":\"Customer ku\",\"phone_number\":\"082175831680\",\"address\":\"Jln Enggang NO 16\"},\"note\":\"\"}', NULL, NULL),
(39, 10, NULL, 'JZT18522110402', '1', '2022-05-18 14:52:53', '93000.00', 1, 2, '{\"customer\":{\"name\":\"Customer ku\",\"phone_number\":\"082175831680\",\"address\":\"Jln Enggang NO 16\"},\"note\":\"\"}', NULL, NULL),
(40, 10, NULL, 'KMR18522110712', '1', '2022-05-18 14:56:32', '13000.00', 1, 2, '{\"customer\":{\"name\":\"Customer ku\",\"phone_number\":\"082175831680\",\"address\":\"Jln Enggang NO 16\"},\"note\":\"\"}', NULL, NULL),
(41, 10, NULL, 'WHD18522010416', '1', '2022-05-18 15:05:02', NULL, 0, 2, '{\"customer\":{\"name\":\"Customer ku\",\"phone_number\":\"082175831680\",\"address\":\"Jln Enggang NO 16\"},\"note\":\"\"}', NULL, NULL),
(42, 10, NULL, 'MLK18522110347', '1', '2022-04-18 15:05:26', '13000.00', 1, 2, '{\"customer\":{\"name\":\"Customer ku\",\"phone_number\":\"082175831680\",\"address\":\"Jln Enggang NO 16\"},\"note\":\"\"}', NULL, NULL),
(43, 10, NULL, 'NTV18522310719', '2', '2022-04-18 17:41:29', '393000.00', 3, 1, '{\"customer\":{\"name\":\"Aku login\",\"phone_number\":\"082175831680\",\"address\":\"Jln Enggang NO 16\"},\"note\":\"\"}', NULL, NULL),
(44, 10, NULL, 'LTF18522010361', '1', '2022-04-18 17:47:03', NULL, 0, 1, '{\"customer\":{\"name\":\"Aku login\",\"phone_number\":\"082175831680\",\"address\":\"Jln Enggang NO 16\"},\"note\":\"\"}', NULL, NULL),
(45, 10, NULL, 'BJI18522110234', '1', '2022-03-18 17:47:21', '13000.00', 1, 2, '{\"customer\":{\"name\":\"Customer ku\",\"phone_number\":\"082175831680\",\"address\":\"Jln Enggang NO 16\"},\"note\":\"\"}', NULL, NULL),
(46, 10, NULL, 'XDK18522010751', '1', '2022-03-18 17:48:21', NULL, 0, 2, '{\"customer\":{\"name\":\"Customer ku\",\"phone_number\":\"082175831680\",\"address\":\"Jln Enggang NO 16\"},\"note\":\"\"}', NULL, NULL),
(47, 10, NULL, 'MOT18522110462', '1', '2022-03-18 17:48:37', '30000.00', 1, 2, '{\"customer\":{\"name\":\"Customer ku\",\"phone_number\":\"082175831680\",\"address\":\"Jln Enggang NO 16\"},\"note\":\"\"}', NULL, NULL),
(48, 10, NULL, 'CPW18522010079', '1', '2022-05-18 17:56:30', NULL, 0, 2, '{\"customer\":{\"name\":\"Customer ku\",\"phone_number\":\"082175831680\",\"address\":\"Jln Enggang NO 16\"},\"note\":\"\"}', NULL, NULL),
(49, 10, NULL, 'XEN18522110048', '1', '2022-05-18 17:56:46', '20000.00', 1, 2, '{\"customer\":{\"name\":\"Customer ku\",\"phone_number\":\"082175831680\",\"address\":\"Jln Enggang NO 16\"},\"note\":\"\"}', NULL, NULL),
(50, 10, NULL, 'AUC18522010285', '1', '2022-02-18 18:24:35', NULL, 0, 2, '{\"customer\":{\"name\":\"Customer ku\",\"phone_number\":\"082175831680\",\"address\":\"Jln Enggang NO 16\"},\"note\":\"\"}', NULL, NULL),
(51, 10, NULL, 'VYR18522110904', '1', '2022-02-18 18:24:57', '130000.00', 1, 2, '{\"customer\":{\"name\":\"Customer ku\",\"phone_number\":\"082175831680\",\"address\":\"Jln Enggang NO 16\"},\"note\":\"\"}', NULL, NULL),
(52, 10, NULL, 'EKP1622210195', '2', '2022-06-01 09:59:58', '44000.00', 2, 1, '{\"customer\":{\"name\":\"Customer ku\",\"phone_number\":\"082175831680\",\"address\":\"Jln Enggang NO 16\"},\"note\":\"\"}', NULL, NULL),
(53, 10, NULL, 'UHS1622110701', '3', '2022-06-01 10:06:31', '60000.00', 1, 2, '{\"customer\":{\"name\":\"Customer ku\",\"phone_number\":\"082175831680\",\"address\":\"Jln Enggang NO 16\"},\"note\":\"\"}', NULL, NULL),
(54, 10, NULL, 'KZU1622110861', '2', '2022-06-01 10:25:26', '19000.00', 1, 1, '{\"customer\":{\"name\":\"Customer ku\",\"phone_number\":\"082175831680\",\"address\":\"Jln Enggang NO 16\"},\"note\":\"\"}', NULL, NULL),
(55, 10, NULL, 'BJL1622110352', '1', '2022-06-01 10:25:51', '14000.00', 1, 2, '{\"customer\":{\"name\":\"Customer ku\",\"phone_number\":\"082175831680\",\"address\":\"Jln Enggang NO 16\"},\"note\":\"\"}', NULL, NULL),
(56, 10, NULL, 'GJV1622110697', '1', '2022-06-01 20:48:40', '14000.00', 1, 1, '{\"customer\":{\"name\":\"Customer ku\",\"phone_number\":\"082175831680\",\"address\":\"Jln Enggang NO 16\"},\"note\":\"\"}', NULL, NULL),
(57, 10, NULL, 'XHE3622110627', '1', '2022-06-03 01:08:05', '14000.00', 1, 1, '{\"customer\":{\"name\":\"Customer ku\",\"phone_number\":\"082175831680\",\"address\":\"Jln Enggang NO 16\"},\"note\":\"\"}', NULL, NULL),
(58, 10, NULL, 'STP4622110502', '3', '2022-06-04 13:30:51', '40000.00', 1, 1, '{\"customer\":{\"name\":\"Customer ku\",\"phone_number\":\"082175831680\",\"address\":\"Jln Enggang NO 16\"},\"note\":\"\"}', NULL, NULL),
(59, 10, NULL, 'HVH4622110458', '2', '2022-06-04 13:37:06', '24000.00', 1, 1, '{\"customer\":{\"name\":\"Customer ku\",\"phone_number\":\"082175831680\",\"address\":\"Jln Enggang NO 16\"},\"note\":\"\"}', NULL, NULL),
(60, 10, NULL, 'TWJ5622110519', '2', '2022-06-05 01:31:56', '14000.00', 1, 1, '{\"customer\":{\"name\":\"Aditio Pratama\",\"phone_number\":\"082282741162\",\"address\":\"Kota Bengkulu\"},\"note\":\"\"}', NULL, NULL),
(61, 10, NULL, 'LCJ5622210736', '5', '2022-06-05 01:36:09', '73000.00', 2, 1, '{\"customer\":{\"name\":\"Aditio Pratamaafawf\",\"phone_number\":\"082282741162\",\"address\":\"Kota Bengkulu\"},\"note\":\"\"}', NULL, NULL),
(62, 10, NULL, 'REX5622210473', '1', '2022-06-05 09:03:55', '26000.00', 2, 1, '{\"customer\":{\"name\":\"Aditio Pratama\",\"phone_number\":\"082282741162\",\"address\":\"Kota Bengkulu\"},\"note\":\"\"}', NULL, NULL),
(63, 13, 4, 'TYN56222134073', '2', '2022-06-05 09:26:54', '26000.00', 2, 1, '{\"customer\":{\"name\":\"AZVADENNYS VASIGUHAMIAZ\",\"phone_number\":\"082175831680\",\"address\":\"Jln Enggang NO 16\"},\"note\":\"\"}', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `order_qty` int(10) NOT NULL,
  `order_price` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `order_qty`, `order_price`) VALUES
(13, 9, 9, 1, '35000.00'),
(14, 9, 10, 1, '12000.00'),
(15, 9, 11, 1, '15000.00'),
(17, 10, 10, 1, '12000.00'),
(31, 38, 4, 2, '10000.00'),
(32, 39, 2, 3, '31000.00'),
(33, 40, 4, 1, '10000.00'),
(34, 42, 4, 1, '10000.00'),
(36, 43, 9, 1, '35000.00'),
(37, 43, 14, 1, '33000.00'),
(38, 45, 4, 1, '10000.00'),
(39, 47, 4, 3, '10000.00'),
(40, 49, 8, 1, '20000.00'),
(42, 52, 4, 2, '10000.00'),
(43, 52, 5, 2, '12000.00'),
(45, 54, 11, 1, '15000.00'),
(46, 55, 4, 1, '10000.00'),
(47, 56, 4, 1, '10000.00'),
(48, 57, 4, 1, '10000.00'),
(49, 58, 13, 2, '20000.00'),
(50, 59, 13, 1, '20000.00'),
(51, 60, 4, 1, '10000.00'),
(52, 61, 14, 1, '33000.00'),
(53, 61, 13, 2, '20000.00'),
(54, 62, 4, 1, '10000.00'),
(55, 62, 5, 1, '12000.00'),
(56, 63, 11, 1, '15000.00'),
(57, 63, 10, 1, '12000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `payment_price` decimal(8,2) DEFAULT NULL,
  `payment_date` datetime NOT NULL,
  `picture_name` varchar(191) DEFAULT NULL,
  `payment_status` enum('1','2','3') DEFAULT '1',
  `confirmed_date` datetime DEFAULT NULL,
  `payment_data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `payment_price`, `payment_date`, `picture_name`, `payment_status`, `confirmed_date`, `payment_data`) VALUES
(7, 43, '393000.00', '2022-06-04 19:18:07', 'tari gandai modeling (2).png', '2', NULL, '{\"transfer_to\":\"bank-mandiri\",\"source\":{\"bank\":\"bengkulu\",\"name\":\"Aditio Pratama\",\"number\":\"4210471204914\"}}'),
(8, 43, '393000.00', '2022-06-04 19:18:27', 'tari gandai modeling (2)_1.png', '2', NULL, '{\"transfer_to\":\"bank-mandiri\",\"source\":{\"bank\":\"bengkulu\",\"name\":\"Aditio Pratama\",\"number\":\"4210471204914\"}}'),
(9, 52, '44000.00', '2022-06-04 19:30:48', 'tari gandai modeling (2)_2.png', '2', NULL, '{\"transfer_to\":\"dana\",\"source\":{\"bank\":\"bengkulu\",\"name\":\"Berbagi Ramadhan\",\"number\":\"4210471204914\"}}'),
(10, 59, '24000.00', '2022-06-04 20:22:41', '24663379_A1.jpg', '2', NULL, '{\"transfer_to\":\"bank-mandiri\",\"source\":{\"bank\":\"bengkulu\",\"name\":\"Azvadennys Vasiguhamiaz\",\"number\":\"4210471204914\"}}'),
(11, 58, '40000.00', '2022-06-04 20:24:37', 'c2139d2057e604f8c9cb41c83434e234.jpg', '2', NULL, '{\"transfer_to\":\"bank-mandiri\",\"source\":{\"bank\":\"adad\",\"name\":\"Customer ku\",\"number\":\"421047120491441241\"}}'),
(12, 61, '73000.00', '2022-06-05 01:36:34', '24663379_A1_1.jpg', '2', NULL, '{\"transfer_to\":\"dana\",\"source\":{\"bank\":\"bengkulu\",\"name\":\"adit\",\"number\":\"4210471204914\"}}'),
(13, 54, '19000.00', '2022-06-05 08:55:25', 'tari gandai modeling (2)_3.png', '1', NULL, '{\"transfer_to\":\"bank-mandiri\",\"source\":{\"bank\":\"bengkulu\",\"name\":\"Customer ku\",\"number\":\"6876768698\"}}'),
(14, 60, '14000.00', '2022-06-05 09:05:34', 'tari gandai modeling (2)_4.png', '1', NULL, '{\"transfer_to\":\"shopee-pay\",\"source\":{\"bank\":\"bengkulu\",\"name\":\"Azvadennys Vasiguhamiaz\",\"number\":\"6876768698\"}}'),
(15, 63, '44000.00', '2022-06-05 09:27:30', '24663379_A1_2.jpg', '1', NULL, '{\"transfer_to\":\"bank-mandiri\",\"source\":{\"bank\":\"bengkulu\",\"name\":\"Azvadennys Vasiguhamiaz\",\"number\":\"6876768698\"}}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `category_id` int(10) DEFAULT NULL,
  `sku` varchar(32) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `picture_name` varchar(191) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `current_discount` decimal(12,2) DEFAULT 0.00,
  `stock` int(10) NOT NULL,
  `product_unit` varchar(32) DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT 1,
  `add_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `sku`, `name`, `description`, `picture_name`, `price`, `current_discount`, `stock`, `product_unit`, `is_available`, `add_date`) VALUES
(2, 1, 'BS350420', 'Brokoli', '', 'product-6.jpg', '33000.00', '30000.00', 10, 'Kg', 1, '2020-03-26 15:03:40'),
(4, 1, 'TS120790', 'Tomat', NULL, 'product-5.jpg', '10000.00', '0.00', 20, 'Kg', 1, '2020-03-26 19:36:30'),
(5, 1, 'WS120811', 'Wortel', NULL, 'product-7.jpg', '12000.00', '0.00', 20, 'Kg', 1, '2020-03-26 19:36:51'),
(8, 1, 'PS220885', 'Paprika', NULL, 'product-12.jpg', '20000.00', '0.00', 20, 'Kg', 1, '2020-03-26 19:38:05'),
(9, 2, 'AB450163', 'Apel', NULL, 'product-10.jpg', '40000.00', '5000.00', 50, 'Kg', 1, '2020-03-26 19:42:43'),
(10, 1, 'BMS120283', 'Bawang Merah', NULL, 'product-9.jpg', '12000.00', '0.00', 20, 'Kg', 1, '2020-03-26 19:44:42'),
(11, 1, 'URS13301', 'Ubi Rambat', NULL, 'product-4.jpg', '15000.00', '0.00', 3, 'Kg', 1, '2020-03-26 19:45:01'),
(12, 1, 'BPS15347', 'Bawang Putih', NULL, 'product-111.jpg', '15000.00', '0.00', 5, 'Kg', 1, '2020-03-26 19:45:47'),
(13, 1, 'KPS223370', 'Kacang Polong', NULL, 'product-3.jpg', '20000.00', '0.00', 23, 'Kg', 1, '2020-03-26 19:46:10'),
(14, 1, 'CMS410424', 'Cabai Merah', NULL, 'product-121.jpg', '40000.00', '7000.00', 10, 'Kg', 1, '2020-03-26 19:47:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_category`
--

CREATE TABLE `product_category` (
  `id` int(10) NOT NULL,
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `product_category`
--

INSERT INTO `product_category` (`id`, `name`) VALUES
(1, 'Sayur'),
(2, 'Buah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `review_text` mediumtext NOT NULL,
  `review_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `order_id`, `title`, `review_text`, `review_date`, `status`) VALUES
(3, 10, 11, 'Buah segar', 'Buah segar dan kualitasnya sangat bagus', '2020-03-30 08:33:10', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(10) NOT NULL,
  `key` varchar(32) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `key`, `content`) VALUES
(1, 'current_theme_name', 'vegefoods'),
(2, 'store_name', 'Toko Sayur Ku'),
(3, 'store_phone_number', '082175831680'),
(4, 'store_email', 'tokosayurku12@gmail.com'),
(5, 'store_tagline', 'Belanja Hemat Mama Senang'),
(6, 'store_logo', 'logo.jpg'),
(7, 'max_product_image_size', '20000'),
(8, 'store_description', 'Belanja sayur dan buah dengan murah, mudah dan cepat'),
(9, 'store_address', 'Jl. Enggang Blok I NO16 RT05 RW02 Kota Bengkulu,38229.'),
(10, 'min_shop_to_free_shipping_cost', '30000'),
(11, 'shipping_cost', '10000'),
(12, 'payment_banks', '{\"bank-mandiri\":{\"bank\":\"BANK MANDIRI\",\"number\":\"1790000871934\",\"name\":\"AZVADENNYS VASIGUHAMIAZ\"},\"dana\":{\"bank\":\"DANA\",\"number\":\"082175831680\",\"name\":\"AZVADENNYS VASIGUHAMIAZ\"},\"shopee-pay\":{\"bank\":\"SHOPEE PAY\",\"number\":\"082175831680\",\"name\":\"AZVADENNYS VASIGUHAMIAZ\"}}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(32) NOT NULL,
  `address` varchar(255) NOT NULL,
  `profile_picture` varchar(255) NOT NULL DEFAULT 'user.jpg',
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `name`, `phone_number`, `address`, `profile_picture`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 'azvadenis@gmail.com', 'admin', 'Azvadennys Vasiguhamiaz', '082175831680', 'Jln Enggang NO 16', 'pp.jpg', '$2y$10$TWlThSepY9rolyFljw.fHe8ndGSF2kSsHJ3cNe7d7vs24BRsatKCe', NULL, '2022-05-15 20:47:06', NULL, NULL, NULL, NULL, 1, 0, '2022-05-15 19:52:34', '2022-05-15 20:47:06', NULL),
(8, 'tes@dadw.com', 'admin1', 'aap', '082175831680', 'Jln Enggang NO 16', 'user.jpg', '$2y$10$B5m6ZWK.YL8.Z8textwyXu4haosKVV.OAezKBXi.UkIjW3.KuY3/S', NULL, NULL, NULL, 'd9dbf84e0fa3596db4060ee4dd666e31', NULL, NULL, 0, 0, '2022-05-15 20:54:19', '2022-05-15 20:54:19', NULL),
(10, 'aditio@gmail.com', 'aditio', 'Aditio Pratama', '082175831680', 'Jln Enggang NO 16', 'tio.png', '$2y$10$1i0.OSr2XbtHzdnpUh9/1u3MCDf1ihWAkVV3NrC7fQjmv3KvClpUu', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-05-16 01:44:07', '2022-05-16 01:44:23', NULL),
(13, 'denisavsa@gmail.com', 'dennys', 'Azvadennys Vasiguhamiaz', '082175831680', 'Jln Enggang NO 16', 'pp_1.jpg', '$2y$10$nsbXMIA4b48uMlFtP8NNJ.bp5GoyvTMq4RWMpa.8l8O/UTVLldZUa', NULL, '2022-06-05 09:25:18', NULL, NULL, NULL, NULL, 1, 0, '2022-06-05 08:36:20', '2022-06-05 09:25:18', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_contacts_contacts` (`parent_id`);

--
-- Indeks untuk tabel `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_orders_coupons` (`coupon_id`),
  ADD KEY `FK_user_id` (`user_id`) USING BTREE,
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_products_product_category` (`category_id`);

--
-- Indeks untuk tabel `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_reviews_users` (`user_id`),
  ADD KEY `FK_reviews_orders` (`order_id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT untuk tabel `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `FK_contacts_contacts` FOREIGN KEY (`parent_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_orders_coupons` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_orders_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
