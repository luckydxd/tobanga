-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2023 at 03:54 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyek2`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnails` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `thumbnails`, `created_at`, `updated_at`) VALUES
(6, 'Tenda', 'tenda', 'file/category/vyLICsMhDEUzZZlEOknod18rNjdavLZ0c80Fpkjp.jpg', '2023-01-04 17:59:48', '2023-01-04 17:59:48'),
(7, 'Headlamp', 'headlamp', 'file/category/vLGtRGlo6QxaCCyvqlseSB5kRcmwIGbqRQj4sydL.jpg', '2023-01-04 18:44:41', '2023-01-04 18:44:41'),
(8, 'Sleeping Bag', 'sleeping-bag', 'file/category/gQWTftVeqFA7LjnTRCkxLTfUkIoJumDu9815hA1P.jpg', '2023-01-04 18:44:59', '2023-01-04 18:44:59'),
(9, 'Carrier', 'carrier', 'file/category/pgfdoHCU4v8buK5Xd4cJn23VV73aBVzgyOUcKlHu.jpg', '2023-01-04 18:45:29', '2023-01-04 18:45:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_29_172217_create_permission_tables', 1),
(6, '2022_04_03_041706_create_categories_table', 1),
(7, '2022_04_03_041724_create_products_table', 1),
(8, '2022_04_03_042320_create_orders_table', 1),
(9, '2022_04_03_042729_create_order_details_table', 1),
(10, '2022_05_26_142213_create_order_tracks_table', 1),
(11, '2022_06_21_103219_create_carts_table', 1),
(12, '2022_06_24_164020_add_field_to_orders_table', 1),
(13, '2022_07_01_075234_add_field2_to_orderd_table', 1),
(14, '2022_07_02_001129_create_web_configs_table', 1),
(15, '2022_07_05_123819_create_shipping_addresses_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total_pay` bigint(20) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 = Belum Bayar',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `paid_at` timestamp NULL DEFAULT NULL,
  `recipient_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `snap_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destination` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtotal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_cost` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receipt_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_weight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_number`, `user_id`, `total_pay`, `status`, `created_at`, `updated_at`, `paid_at`, `recipient_name`, `snap_token`, `destination`, `address_detail`, `courier`, `subtotal`, `shipping_cost`, `shipping_method`, `receipt_number`, `total_weight`, `phone_number`) VALUES
(4, 'SUXGZF', 2, 516000, 0, '2023-01-02 11:57:26', '2023-01-02 12:53:08', NULL, 'lucky', '42d01027-b462-4a37-a656-864c4f146cdb', 'Cirebon, Jawa Barat', 'Jalan Wahidin No.77', 'jne', '500000', '16000', 'OKE Rp.16000 Estimasi 2-3', NULL, '1500', NULL),
(5, 'OZWKGL', 3, 514000, 2, '2023-01-04 13:02:52', '2023-01-04 13:05:27', NULL, 'Ahmad Sumarsono', 'fe4638f1-624c-4fdd-98c5-8f78add74f64', 'Indramayu, Jawa Barat', 'Tukdana no.90', 'jne', '500000', '14000', 'CTC Rp.14000 Estimasi 2-3', '12345', '1500', NULL),
(6, 'GQXUZD', 3, 552000, 4, '2023-01-04 13:18:41', '2023-01-04 13:41:43', NULL, 'Ahmad Sumarsono', '71fa6c5c-990d-4ee9-81af-9c64e9451cd3', 'Denpasar, Bali', 'wawa', 'jne', '500000', '52000', 'OKE Rp.52000 Estimasi 2-3', NULL, '1500', NULL),
(7, 'OEFKBB', 3, 528000, 0, '2023-01-04 13:34:42', '2023-01-04 13:34:50', NULL, 'Ahmad Sumarsono', '9155bfc8-61bd-48fe-9c38-3a424a2360dd', 'Serang, Banten', '1213', 'tiki', '500000', '28000', 'OKE Rp.28000 Estimasi 2-3', NULL, '1500', NULL),
(8, 'OM08GN', 3, 574000, 2, '2023-01-04 13:42:27', '2023-01-04 14:17:17', NULL, 'Ahmad Sumarsono', 'fcf44bcf-f8e2-4c57-9d2c-c7b742dd936d', 'Bangka, Bangka Belitung', 'afasdasd', 'jne', '500000', '74000', 'OKE Rp.74000 Estimasi 3-6', '9090909', '1500', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_tracks`
--

CREATE TABLE `order_tracks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_tracks`
--

INSERT INTO `order_tracks` (`id`, `order_id`, `description`, `icon`, `created_at`, `updated_at`) VALUES
(6, 4, 'message.order_track_create', 'fas fa-cart-plus', '2023-01-02 11:57:26', '2023-01-02 11:57:26'),
(7, 5, 'message.order_track_create', 'fas fa-cart-plus', '2023-01-04 13:02:52', '2023-01-04 13:02:52'),
(8, 5, 'message.order_track_send', 'fas fa-paper-plane', '2023-01-04 13:05:27', '2023-01-04 13:05:27'),
(9, 6, 'message.order_track_create', 'fas fa-cart-plus', '2023-01-04 13:18:41', '2023-01-04 13:18:41'),
(10, 7, 'message.order_track_create', 'fas fa-cart-plus', '2023-01-04 13:34:42', '2023-01-04 13:34:42'),
(11, 6, 'message.order_track_cancel', 'fas fa-window-close', '2023-01-04 13:41:43', '2023-01-04 13:41:43'),
(12, 8, 'message.order_track_create', 'fas fa-cart-plus', '2023-01-04 13:42:27', '2023-01-04 13:42:27'),
(13, 8, 'message.order_track_send', 'fas fa-paper-plane', '2023-01-04 14:17:17', '2023-01-04 14:17:17');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnails` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `categories_id`, `name`, `slug`, `thumbnails`, `price`, `weight`, `description`, `created_at`, `updated_at`) VALUES
(4, 6, 'Tenda Single Layer Kapasitas 4 Orang', 'tenda-single-layer-kapasitas-4-orang', 'file/product/thumbnails/g3UTW4KmBQMuUVmcr6elEnEEcL6xy9YyodstJh1S.jpg', '500000', '1500', '<span style=\"color: rgb(105, 103, 99); font-family: Roboto, sans-serif; letter-spacing: 0.14px;\">TENDAKI EASY DOME 4 P</span><br style=\"color: rgb(105, 103, 99); font-family: Roboto, sans-serif; letter-spacing: 0.14px;\"><span style=\"color: rgb(105, 103, 99); font-family: Roboto, sans-serif; letter-spacing: 0.14px;\">* KAPASITAS 4 ORANG</span><br style=\"color: rgb(105, 103, 99); font-family: Roboto, sans-serif; letter-spacing: 0.14px;\"><span style=\"color: rgb(105, 103, 99); font-family: Roboto, sans-serif; letter-spacing: 0.14px;\">* SINGLE LAYER</span><br style=\"color: rgb(105, 103, 99); font-family: Roboto, sans-serif; letter-spacing: 0.14px;\"><span style=\"color: rgb(105, 103, 99); font-family: Roboto, sans-serif; letter-spacing: 0.14px;\">* SIZE 210 CM X 210 CM X 130 CM</span><br style=\"color: rgb(105, 103, 99); font-family: Roboto, sans-serif; letter-spacing: 0.14px;\"><span style=\"color: rgb(105, 103, 99); font-family: Roboto, sans-serif; letter-spacing: 0.14px;\">* BAHAN LUAR / FLYSHEET 100% POLYESTER PU 800MM</span><br style=\"color: rgb(105, 103, 99); font-family: Roboto, sans-serif; letter-spacing: 0.14px;\"><span style=\"color: rgb(105, 103, 99); font-family: Roboto, sans-serif; letter-spacing: 0.14px;\">* ALAS BAWAH / FLOOR: POLYETHYLENE / TERPAL 100 G / SQM</span><br style=\"color: rgb(105, 103, 99); font-family: Roboto, sans-serif; letter-spacing: 0.14px;\"><span style=\"color: rgb(105, 103, 99); font-family: Roboto, sans-serif; letter-spacing: 0.14px;\">* RANGKA / POLES: FIBER GLASS 7,9 MM X 2 SET</span><br style=\"color: rgb(105, 103, 99); font-family: Roboto, sans-serif; letter-spacing: 0.14px;\"><span style=\"color: rgb(105, 103, 99); font-family: Roboto, sans-serif; letter-spacing: 0.14px;\">* BERAT 2,1 KG</span><br style=\"color: rgb(105, 103, 99); font-family: Roboto, sans-serif; letter-spacing: 0.14px;\"><span style=\"color: rgb(105, 103, 99); font-family: Roboto, sans-serif; letter-spacing: 0.14px;\">* SIZE PACKING 66 CM X 11 CM X 11 CM</span>', '2023-01-04 18:47:42', '2023-01-04 18:47:42'),
(5, 9, 'Tas Carrier Gunung Hiking Co-Trek Selayar', 'tas-carrier-gunung-hiking-co-trek-selayar', 'file/product/thumbnails/V5wlm7JBpWDKUyr9mqhJoKVOfD4ugucz9BCzvP5a.jpg', '599000', '2000', '<p style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; color: rgb(105, 103, 99); font-family: Roboto, sans-serif; letter-spacing: 0.14px;\">Carrier Co-trek Selayar 60L free Rain cover</p><p style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; color: rgb(105, 103, 99); font-family: Roboto, sans-serif; letter-spacing: 0.14px;\">Feature :<br>Single frame<br>Top Loading<br>Large Main Compartement<br>Sternum Strap<br>Compression Strap<br>Padded Hipbelt<br>Side Mesh Pocket<br>Include Rain Cover</p><p style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; color: rgb(105, 103, 99); font-family: Roboto, sans-serif; letter-spacing: 0.14px;\">Specifications :<br>Average Weight : 1.40 kg<br>Volume : 60 Liter<br>Dimensions : 30x20x70 (PxLxT)</p>', '2023-01-04 18:50:23', '2023-01-04 18:50:23');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2022-12-21 14:19:09', '2022-12-21 14:19:09'),
(2, 'user', 'web', '2022-12-21 14:19:09', '2022-12-21 14:19:09');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_addresses`
--

CREATE TABLE `shipping_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_addresses`
--

INSERT INTO `shipping_addresses` (`id`, `city_id`, `province_id`, `created_at`, `updated_at`) VALUES
(1, '149', '9', '2022-12-21 14:19:10', '2023-01-02 08:17:08');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$DdiVFMfRRw6I16C397wW8e1yF.X0cDoJY.49d3i3kRnQyUSytvVv6', NULL, '2022-12-21 14:19:09', '2022-12-21 14:19:09'),
(2, 'lucky', 'opicx631@gmail.com', NULL, '$2y$10$6pRWXjrmMPnLmosHuMt3E.YwUkDw4Nvv1eQcP5DacDHLWvxW3BXzq', NULL, '2022-12-21 14:43:08', '2022-12-21 14:43:08'),
(3, 'Ahmad Sumarsono', 'ahmad@gmail.com', NULL, '$2y$10$2o90ObKDVjIiDLBQN4CxmuFWckADcnTr2nxDnK2RHAMjbxSJQFJpS', NULL, '2023-01-04 13:00:36', '2023-01-04 13:00:36');

-- --------------------------------------------------------

--
-- Table structure for table `web_configs`
--

CREATE TABLE `web_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_configs`
--

INSERT INTO `web_configs` (`id`, `name`, `label`, `value`, `type`, `created_at`, `updated_at`) VALUES
(1, 'app_name', 'Application Name', 'Tobanga Outdoors', '0', '2022-12-21 14:19:10', '2023-01-02 04:41:28'),
(2, 'app_logo', 'Logo', 'config/web/8VCqf1edBxcEmWFHOZRMnNbiBm36aKe65enQfPO3.png', '2', '2022-12-21 14:19:10', '2023-01-04 18:14:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

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
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `order_tracks`
--
ALTER TABLE `order_tracks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_tracks_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_categories_id_foreign` (`categories_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `web_configs`
--
ALTER TABLE `web_configs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_configs_name_unique` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_tracks`
--
ALTER TABLE `order_tracks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `web_configs`
--
ALTER TABLE `web_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_tracks`
--
ALTER TABLE `order_tracks`
  ADD CONSTRAINT `order_tracks_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_categories_id_foreign` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
