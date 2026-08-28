-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2026 at 10:38 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar_laravel3_2026`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Snack', 1, '2026-08-14 01:47:51', '2026-08-14 01:47:51'),
(2, 'Cofee', 1, '2026-08-18 18:32:47', '2026-08-18 18:32:47'),
(3, 'Non Cofee', 1, '2026-08-18 18:32:55', '2026-08-18 18:32:55');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` varchar(255) NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` smallint(5) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `sort_order` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `parent_id`, `name`, `icon`, `url`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Role', 'bi bi-bookmark-plus', 'role', 2, 1, '2026-08-25 21:24:44', '2026-08-25 21:24:44');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_08_11_021516_create_pesertas_table', 1),
(5, '2026_08_11_070414_create_roles_table', 1),
(6, '2026_08_11_070629_create_categories_table', 1),
(7, '2026_08_11_070751_create_products_table', 1),
(8, '0001_01_01_000000_create_users_table', 2),
(9, '2026_08_18_022345_create_orders_table', 3),
(10, '2026_08_18_025019_create_order_details_table', 3),
(11, '2026_08_26_014648_create_menus_table', 4),
(12, '2026_08_27_011534_add_qty_to_products_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_code` varchar(255) NOT NULL,
  `order_amount` decimal(15,2) NOT NULL,
  `order_change` decimal(15,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_code`, `order_amount`, `order_change`, `status`, `created_at`, `updated_at`) VALUES
(63, 'ORD-20260828-7965', 275000.00, 0.00, 1, '2026-08-27 21:00:50', '2026-08-27 21:00:50'),
(64, 'ORD-20260828-3353', 275000.00, 225000.00, 1, '2026-08-27 21:33:31', '2026-08-27 21:33:31'),
(65, 'ORD-20260828-2734', 297000.00, 203000.00, 1, '2026-08-27 21:35:31', '2026-08-27 21:35:31'),
(66, 'ORD-20260828-5933', 275000.00, -275000.00, 1, '2026-08-27 21:46:44', '2026-08-27 21:46:44'),
(67, 'ORD-20260828-7115', 22000.00, 0.00, 0, '2026-08-27 21:49:27', '2026-08-27 21:49:27'),
(68, 'ORD-20260828-4240', 22000.00, 0.00, 1, '2026-08-27 21:50:50', '2026-08-27 21:50:50'),
(69, 'ORD-20260828-5935', 275000.00, 725000.00, 1, '2026-08-27 21:57:48', '2026-08-27 21:57:48'),
(70, 'ORD-20260828-6789', 275000.00, 325000.00, 1, '2026-08-27 23:14:18', '2026-08-27 23:14:18'),
(71, 'ORD-20260828-1257', 275000.00, 225000.00, 1, '2026-08-27 23:38:05', '2026-08-27 23:38:05'),
(72, 'ORD-20260828-8105', 22000.00, 8000.00, 1, '2026-08-27 23:38:34', '2026-08-27 23:38:34'),
(73, 'ORD-20260828-2311', 1100.00, 0.00, 0, '2026-08-28 00:18:27', '2026-08-28 00:18:27'),
(74, 'ORD-20260828-5009', 275000.00, 0.00, 0, '2026-08-28 00:30:09', '2026-08-28 00:30:09'),
(75, 'ORD-20260828-3032', 550000.00, 0.00, 0, '2026-08-28 00:30:45', '2026-08-28 00:30:45'),
(77, 'ORD-20260828-3053', 275000.00, 25000.00, 1, '2026-08-28 00:36:53', '2026-08-28 00:36:53');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_qty` int(11) NOT NULL,
  `order_price` decimal(15,2) NOT NULL,
  `order_subtotal` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `order_qty`, `order_price`, `order_subtotal`, `created_at`, `updated_at`) VALUES
(61, 63, 4, 1, 250000.00, 250000.00, '2026-08-27 21:00:50', '2026-08-27 21:00:50'),
(62, 64, 4, 1, 250000.00, 250000.00, '2026-08-27 21:33:31', '2026-08-27 21:33:31'),
(63, 65, 4, 1, 250000.00, 250000.00, '2026-08-27 21:35:31', '2026-08-27 21:35:31'),
(64, 65, 3, 1, 20000.00, 20000.00, '2026-08-27 21:35:31', '2026-08-27 21:35:31'),
(65, 66, 4, 1, 250000.00, 250000.00, '2026-08-27 21:46:44', '2026-08-27 21:46:44'),
(66, 67, 3, 1, 20000.00, 20000.00, '2026-08-27 21:49:27', '2026-08-27 21:49:27'),
(67, 68, 3, 1, 20000.00, 20000.00, '2026-08-27 21:50:50', '2026-08-27 21:50:50'),
(68, 69, 4, 1, 250000.00, 250000.00, '2026-08-27 21:57:48', '2026-08-27 21:57:48'),
(69, 70, 4, 1, 250000.00, 250000.00, '2026-08-27 23:14:18', '2026-08-27 23:14:18'),
(70, 71, 4, 1, 250000.00, 250000.00, '2026-08-27 23:38:05', '2026-08-27 23:38:05'),
(71, 72, 3, 1, 20000.00, 20000.00, '2026-08-27 23:38:34', '2026-08-27 23:38:34'),
(72, 73, 1, 1, 1000.00, 1000.00, '2026-08-28 00:18:27', '2026-08-28 00:18:27'),
(73, 73, 1, 1, 1000.00, 1000.00, '2026-08-28 00:18:27', '2026-08-28 00:18:27'),
(74, 74, 4, 1, 250000.00, 250000.00, '2026-08-28 00:30:09', '2026-08-28 00:30:09'),
(75, 74, 4, 1, 250000.00, 250000.00, '2026-08-28 00:30:09', '2026-08-28 00:30:09'),
(76, 75, 4, 2, 250000.00, 500000.00, '2026-08-28 00:30:45', '2026-08-28 00:30:45'),
(77, 75, 4, 2, 250000.00, 500000.00, '2026-08-28 00:30:45', '2026-08-28 00:30:45'),
(80, 77, 4, 1, 250000.00, 250000.00, '2026-08-28 00:36:53', '2026-08-28 00:36:53');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesertas`
--

CREATE TABLE `pesertas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `age` varchar(5) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesertas`
--

INSERT INTO `pesertas` (`id`, `name`, `email`, `age`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Eko Asmadi Damanik S.T.', 'santoso.dina@rahimah.biz.id', '43', 'Ds. Supomo No. 655, Medan 29348, Papua', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(2, 'Endah Hassanah', 'ofujiati@yahoo.com', '30', 'Dk. Baya Kali Bungur No. 992, Samarinda 91716, Aceh', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(3, 'Maria Elvina Yolanda', 'pyulianti@siregar.info', '54', 'Gg. Sampangan No. 12, Solok 93745, NTT', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(4, 'Oliva Nurdiyanti', 'maya.riyanti@siregar.desa.id', '17', 'Dk. Lembong No. 841, Bitung 40772, Malut', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(5, 'Rini Oktaviani', 'adinata.mansur@gmail.co.id', '60', 'Dk. Sudiarto No. 38, Ambon 61762, Kaltim', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(6, 'Gambira Marbun', 'hendri.purnawati@gmail.com', '36', 'Jln. Basudewo No. 318, Salatiga 67315, Sumut', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(7, 'Yessi Tina Mayasari', 'mayasari.bagus@gmail.co.id', '31', 'Jln. Sampangan No. 237, Banda Aceh 53096, Banten', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(8, 'Padma Puspasari', 'imam.rajasa@safitri.net', '26', 'Ki. Gajah No. 560, Jayapura 84151, Maluku', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(9, 'Talia Yuniar S.Psi', 'artawan75@gmail.com', '21', 'Ds. R.E. Martadinata No. 571, Surakarta 15393, Bali', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(10, 'Gandi Natsir', 'oliva89@lailasari.org', '22', 'Psr. Badak No. 292, Batam 59007, Sumsel', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(11, 'Jasmin Palastri', 'karsana74@latupono.my.id', '56', 'Ds. Abdul Rahmat No. 924, Mataram 57567, Jatim', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(12, 'Galang Gunarto', 'restu09@yahoo.com', '51', 'Gg. Bayam No. 489, Pontianak 86490, Riau', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(13, 'Titin Melani', 'balidin.prakasa@adriansyah.my.id', '45', 'Ds. Krakatau No. 485, Bengkulu 42016, Lampung', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(14, 'Puji Hartati', 'ophelia.sihombing@hutapea.com', '25', 'Jr. Sudiarto No. 444, Kediri 57608, Sumsel', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(15, 'Banara Praba Natsir', 'dono03@yahoo.com', '30', 'Ds. Untung Suropati No. 246, Pekalongan 62131, Kaltim', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(16, 'Salman Narji Lazuardi M.TI.', 'ophelia.wasita@gmail.co.id', '50', 'Jr. Achmad Yani No. 533, Administrasi Jakarta Timur 23748, Kalsel', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(17, 'Maras Sitorus', 'andriani.siti@yahoo.co.id', '60', 'Gg. Bakhita No. 650, Padangpanjang 70260, Banten', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(18, 'Karimah Eka Mulyani S.Farm', 'endah16@prastuti.id', '57', 'Kpg. Wahidin No. 381, Sibolga 88853, Sumsel', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(19, 'Septi Melani', 'nilam.simbolon@gmail.co.id', '48', 'Kpg. Monginsidi No. 652, Kendari 82814, Sulut', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(20, 'Martani Dabukke S.Pd', 'caturangga.aryani@gmail.com', '23', 'Jr. K.H. Maskur No. 78, Kotamobagu 41877, Bengkulu', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(21, 'Edward Taufan Wahyudin M.Farm', 'lutfan.mustofa@hutapea.info', '53', 'Jr. Juanda No. 425, Tarakan 15937, Sumbar', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(22, 'Farah Widiastuti', 'uli.maryadi@kuswoyo.tv', '17', 'Kpg. Uluwatu No. 176, Padang 78221, Maluku', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(23, 'Digdaya Arta Sihombing', 'wawan40@lailasari.desa.id', '37', 'Jln. Cikapayang No. 268, Sawahlunto 62639, Aceh', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(24, 'Elvin Napitupulu S.Sos', 'banara31@yahoo.com', '28', 'Jln. Sugiyopranoto No. 979, Bekasi 62126, Sulbar', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(25, 'Yuni Suryatmi', 'yolanda.zalindra@yahoo.co.id', '18', 'Psr. Laksamana No. 841, Langsa 48358, Sulteng', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(26, 'Lalita Nuraini S.I.Kom', 'eli58@gmail.com', '59', 'Gg. Gajah Mada No. 211, Dumai 39222, Aceh', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(27, 'Kuncara Utama', 'endah60@gmail.co.id', '29', 'Dk. Abdul No. 911, Langsa 42190, Jateng', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(28, 'Ega Budiyanto', 'maria.anggraini@zulaika.org', '31', 'Psr. Cut Nyak Dien No. 77, Tasikmalaya 78295, Malut', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(29, 'Ozy Prasetya M.Ak', 'ayu82@gmail.co.id', '46', 'Kpg. Kusmanto No. 412, Bengkulu 78122, Bengkulu', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(30, 'Laila Kusmawati', 'ulestari@gmail.co.id', '44', 'Gg. Baja No. 547, Madiun 24174, Sulut', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(31, 'Tania Haryanti', 'asmadi.najmudin@hariyah.mil.id', '27', 'Jr. Baranang Siang No. 506, Banjar 34212, Sumsel', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(32, 'Rafi Cemplunk Januar M.Kom.', 'silvia.kusmawati@palastri.name', '45', 'Dk. Bakau Griya Utama No. 484, Sungai Penuh 43791, Pabar', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(33, 'Sarah Hariyah', 'kayla46@yahoo.co.id', '30', 'Jr. Qrisdoren No. 793, Madiun 52056, Bengkulu', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(34, 'Patricia Clara Hastuti', 'osafitri@gmail.co.id', '18', 'Ds. Abdul Rahmat No. 701, Cirebon 47634, Gorontalo', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(35, 'Febi Padmasari', 'itampubolon@laksita.co.id', '20', 'Ds. Bazuka Raya No. 46, Surakarta 98367, Maluku', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(36, 'Bancar Salahudin', 'usamah.taufan@yahoo.co.id', '56', 'Kpg. Jamika No. 561, Samarinda 83102, Pabar', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(37, 'Rahmat Bambang Simbolon S.Ked', 'novitasari.natalia@gmail.co.id', '18', 'Kpg. HOS. Cjokroaminoto (Pasirkaliki) No. 727, Sungai Penuh 43350, Jatim', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(38, 'Dalima Wulandari M.Farm', 'raisa.napitupulu@farida.sch.id', '46', 'Ki. Gambang No. 991, Makassar 55852, NTT', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(39, 'Nasab Caket Mahendra', 'inainggolan@yahoo.co.id', '38', 'Psr. Badak No. 403, Lhokseumawe 87104, Riau', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(40, 'Dwi Budiyanto S.IP', 'damanik.ciaobella@usada.biz.id', '45', 'Jr. Madiun No. 744, Tanjung Pinang 19831, Malut', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(41, 'Faizah Yulianti S.E.', 'bella34@gmail.co.id', '59', 'Ki. Cokroaminoto No. 391, Sibolga 50377, Sumsel', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(42, 'Darmanto Waskita S.Farm', 'dnugroho@anggriawan.desa.id', '21', 'Psr. Sutan Syahrir No. 387, Bitung 85380, DKI', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(43, 'Sabar Budiman', 'prahayu@yulianti.sch.id', '26', 'Gg. Panjaitan No. 421, Yogyakarta 14236, DIY', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(44, 'Ajiono Tarihoran', 'prasetyo.eja@gmail.com', '21', 'Kpg. Bakau No. 819, Sabang 65461, Riau', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(45, 'Latif Lazuardi', 'bnasyiah@riyanti.desa.id', '41', 'Jr. B.Agam 1 No. 879, Magelang 98118, Babel', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(46, 'Daruna Siregar M.Kom.', 'pertiwi.manah@puspasari.ac.id', '18', 'Kpg. Gambang No. 44, Pasuruan 43227, Gorontalo', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(47, 'Ibun Budiyanto', 'prastuti.sarah@gmail.co.id', '27', 'Ki. Diponegoro No. 788, Batam 89950, Babel', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(48, 'Salsabila Mayasari', 'natsir.ade@sinaga.com', '25', 'Jln. Basoka Raya No. 357, Ternate 84131, Kalteng', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(49, 'Ganda Haryanto', 'namaga.vera@susanti.biz', '44', 'Ki. Gremet No. 166, Balikpapan 93959, Gorontalo', '2026-08-14 01:28:27', '2026-08-14 01:28:27'),
(50, 'Malika Janet Utami S.Sos', 'kpratama@gmail.co.id', '60', 'Dk. Baranang Siang No. 792, Banjarmasin 35799, Papua', '2026-08-14 01:28:27', '2026-08-14 01:28:27');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `price` decimal(15,2) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `photo`, `price`, `qty`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ciki Cuba', 'products/x2C0IeG9CqwJ0gif38c2VZCR4rKpM34SFvl564m3.jpg', 1000.00, 97, 'tess', '2026-08-17 18:15:17', '2026-08-28 00:18:27'),
(3, 2, 'Americano', 'products/cQQ1tV9nED3WS1pl7yCffs4r1eAGOBEDS7BbEsJR.jpg', 20000.00, 88, 'Nikmat dan lezat', '2026-08-18 18:35:41', '2026-08-27 23:38:34'),
(4, 3, 'Mojito', 'products/jfT01A9pJ2P9rFYdxyKW5edvw1qyhL9uwD5NtZxD.jpg', 250000.00, 68, 'tess', '2026-08-18 18:36:04', '2026-08-28 00:36:53');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 1, NULL, NULL),
(2, 'Kasir', 1, NULL, NULL),
(3, 'Pimpinan', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('cdnV9CZl1ap2w5h3PEPS7TOcKesm5Tbdb1Lusb62', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', 'eyJfdG9rZW4iOiJUYmZuM0poemtOWm5rMlV3dDgyTGNpczhJcmRPaUNhQVpwaG5TNEthIiwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJfcHJldmlvdXMiOnsidXJsIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjgwMDBcL29yZGVyXC9jcmVhdGUiLCJyb3V0ZSI6Im9yZGVyLmNyZWF0ZSJ9LCJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI6MX0=', 1787902618);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$GFNPE87ZMl35ptAgQAIQAevOEODwkeTSJXaCBijebYhdlhJS5n7mS', NULL, '2026-08-14 01:28:27', '2026-08-14 01:28:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  ADD KEY `failed_jobs_connection_queue_failed_at_index` (`connection`,`queue`,`failed_at`);

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
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pesertas`
--
ALTER TABLE `pesertas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `pesertas`
--
ALTER TABLE `pesertas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
