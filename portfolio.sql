-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2024 at 03:46 AM
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
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `body`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Sejarah Global Digital Verse', '<p>Pada awalnya, pada tahun 2018, sekelompok pemuda bersemangat mendirikan PT. Global Digital Verse dengan visi memajukan dunia teknologi informasi. Dengan berfokus pada <em>hardware, software, networking, CCTV</em>, dan konsultan <em>IT</em>. Perusahaan ini mulai membangun reputasi yang solid sebagai penyedia solusi teknologi terkemuka di pasar. Keahlian mereka dalam menyediakan layanan yang memenuhi kebutuhan pelanggan sejalan dengan motto perusahaan: “Kepuasan Pelanggan Adalah Kepuasan Kami.”</p><p>Namun, PT. Global Digital Verse tidak puas berada di satu tempat. Mereka merasa perlu untuk terus berkembang dan mengeksplorasi peluang baru. Pada tahun 2020, perusahaan ini mengambil langkah besar dengan memasuki dunia pengembangan perangkat lunak yang lebih luas. PT. Global Digital Verse yang sebelumnya hanya menyediakan pengembangan <em>software web</em>, <em>mobile</em> dan <em>desktop</em> kini memulai pengembangan konsep <em>software</em> terbarukan seperti <em>system Robotic</em>, <em>Augmented Reality, Game Developmet</em>. Dengan memperluas jangkauannya ke dalam bidang ini, PT. Global Digital Verse memperkaya portofolio mereka dan menyediakan pelanggan dengan solusi yang lebih lengkap.</p><p>PT. Global Digital Verse tidak berhenti di situ. Di tahun 2023, perusahaan ini melangkah lebih jauh dengan merintis jalan ke dunia startup digital. Didukung oleh tim yang terdiri dari para profesional terbaik dalam industri ini, PT. Global Digital Verse memiliki tekad untuk membawa inovasi teknologi yang revolusioner pasar. Dengan fokus pada pengembangan aplikasi dan solusi yang cerdas dan inovatif, <em>startup</em> digital ini telah menarik perhatian banyak investor dan pelanggan.</p>', '01HXVXCF8B8K2F9A4NKP0T592C.jpg', '2024-05-14 08:01:20', '2024-05-14 14:36:36'),
(3, 'Visi Misi Global Digital Verse', '<h3><strong>Visi</strong></h3><p>Menjadi perusahaan yang profesional, berkarakter, dan inovatif yang dapat memenuhi kebutuhan pasar dan menghasilkan produk yang berkualitas serta memberikan <em>value</em> bagi setiap pelanggan.&nbsp;</p><h3><strong>Misi</strong></h3><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Memberikan Solusi Terkemuka: Menyediakan layanan unggulan dalam <em>software development, digital marketing, IT</em> solution, dan <em>IT Consultant</em> dengan fokus pada kualitas dan kepuasan pelanggan.</p><p>·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Inovasi Berkelanjutan: Mengembangkan solusi berbasis teknologi mutakhir dan solusi-solusi cerdas lainnya untuk memperkaya portofolio dan menyediakan karya – karya luar biasa.</p><p>Mendukung Revolusi Digital: Menjadi pelopor dalam dunia digital dengan fokus pada pengembangan aplikasi dan solusi inovatif,&nbsp;</p><p><br></p>', '01HXWKSA0P78TZH7CSPY858A8C.jpg', '2024-05-14 14:32:49', '2024-05-14 14:32:49');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_08_065821_create_settings_table', 1),
(6, '2024_05_14_154459_create_blogs_table', 2);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `web_link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `web_link`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Global Digital Verse', 'https://www.globaldigital.id/', '01HXWMC02SEB6GKK569GT65TCW.png', '2024-05-14 14:43:03', '2024-05-14 14:43:03'),
(3, 'Visit Indonesia', 'https://bezaleelderoys.github.io/visit-indonesia', '01HXWMFJ2V5HCHK2AG028SXRN3.png', '2024-05-14 14:44:58', '2024-05-14 14:44:58'),
(4, 'Healthy Food', 'https://bezaleelderoys.github.io/healthy-food.com/', '01HXWMRS12MDJXPN3MF4HYYK7G.png', '2024-05-14 14:50:00', '2024-05-14 14:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bezaleel', 'admin@email.com', NULL, '$2y$12$wpV9HF9qhGxRqYQOS0AfuOtHCB3UoYV6kee6DyOduu9AXYaouaYtu', 'lpoCtpAKtYVWwlPonJ2XJc5foz2HjnJRWh0Hl0qmpSZUDsPtH6iBBkstJNfr', '2024-05-07 23:09:43', '2024-05-07 23:09:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
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
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
