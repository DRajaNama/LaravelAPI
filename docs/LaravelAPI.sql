-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 21, 2019 at 02:32 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `LaravelAPI`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('07988a0ba7205fca3b0e8f8dfc0fefa39be88c338d87fa681164db9deaf56eee21d583338edb80df', 1, 1, 'AppName', '[]', 0, '2019-12-21 07:26:35', '2019-12-21 07:26:35', '2020-12-21 12:56:35'),
('0f0e4cfa59954ee24c1c5aab71d224484acbb12959e55b3a3de6821d01bcdf8713f0fed8747b12aa', 1, 1, 'AppName', '[]', 0, '2019-12-21 07:30:10', '2019-12-21 07:30:10', '2020-12-21 13:00:10'),
('104ab99560b1dd9b58b3410169d18ea3cb51c141ebb22d2a384bf321baed2d8dd70799b18853835f', 1, 1, 'AppName', '[]', 0, '2019-12-21 07:58:23', '2019-12-21 07:58:23', '2020-12-21 13:28:23'),
('26d5741e1ac85e17bb59e184472e7454adf282c1ade1f51a73d6dd6df362d7da3c6c0a169064228b', 1, 1, 'AppName', '[]', 0, '2019-12-21 07:45:31', '2019-12-21 07:45:31', '2020-12-21 13:15:31'),
('5b41e41c35b66fde5025b2f8a5c7a264b859dea1c564755173e7cc74acb3189636d028effe90d906', 1, 1, 'AppName', '[]', 0, '2019-12-21 07:58:19', '2019-12-21 07:58:19', '2020-12-21 13:28:19'),
('a02fd00156250f37c49e97701dd0ddffa6a0ddf4da2abb165f3b469388e936328dd56783b43c7ca5', 1, 1, 'AppName', '[]', 0, '2019-12-21 07:27:48', '2019-12-21 07:27:48', '2020-12-21 12:57:48'),
('be2c3b5bced8505450bfea1d59eab7b28f69712e7481ec311caa5454e9253184bcdd66a65d8bcd54', 1, 1, 'AppName', '[]', 0, '2019-12-21 07:57:42', '2019-12-21 07:57:42', '2020-12-21 13:27:42'),
('ca2990551bd84807fefbc3466a4810465e4319a6d672940fa0284b4d4b6d8adc5f823b5b773ce36a', 1, 1, 'AppName', '[]', 0, '2019-12-21 07:58:24', '2019-12-21 07:58:24', '2020-12-21 13:28:24');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'uxnwcEuqBkalg5pJAf5hrO2jiutOzc6cIjUSzgc0', 'http://localhost', 1, 0, 0, '2019-12-21 07:14:24', '2019-12-21 07:14:24'),
(2, NULL, 'Laravel Password Grant Client', 'j5BIXmF61zULhgYfGfIsojBY9a65oEnP4joWOsbA', 'http://localhost', 0, 1, 0, '2019-12-21 07:14:24', '2019-12-21 07:14:24');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-12-21 07:14:24', '2019-12-21 07:14:24');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `api_token`, `created_at`, `updated_at`) VALUES
(1, 'rajanama', 'rajanama@yopmail.com', '$2y$10$4ErM9Ck/ZL44JSM/n9A0sOsk9QhEgZuO5JeBEdQdtsvF.RZvLcym2', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImNhMjk5MDU1MWJkODQ4MDdmZWZiYzM0NjZhNDgxMDQ2NWU0MzE5YTZkNjcyOTQwZmEwMjg0YjRkNGI2ZDhhZGM1ZjgyM2I1Yjc3M2NlMzZhIn0.eyJhdWQiOiIxIiwianRpIjoiY2EyOTkwNTUxYmQ4NDgwN2ZlZmJjMzQ2NmE0ODEwNDY1ZTQzMTlhNmQ2NzI5NDBmYTAyODRiNGQ0YjZkOGFkYzVmODIzYjViNzczY2UzNmEiLCJpYXQiOjE1NzY5MzQ5MDQsIm5iZiI6MTU3NjkzNDkwNCwiZXhwIjoxNjA4NTU3MzA0LCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.jSn1CDlA_NtnSPMfDWCBJfrWlQkY65sFxcAjBXuUx8K8NVYYgNXVYRFT8Zz4B-1iUyzqiYv9Rl8fBXohWSyCoqxbX13frVtL-s7GdVvWkSvqONyLItCVuGg0lxxLdGc6FWN91LPNGIJGOjfSgulcW1aGpDpB7twju3YWSlbvP6ttN1WIlEpJx4x0myVV1RWThMVpzGkmri_szTtA8Xv-FaLDggRhqm5iiDPz2mbfqR9L-WpD3at3HRtPSwlyYQ43pE3FVWAhGLxlqnqojNwxsZk0aLFFwSRpBY8wGhOQnmobKovzI4mxw7nmK8yqR-JoQEa0RRUQpVMM98PwUAEn9eGx4HPhdZ9cbJuJJ6T6N2c6IwhoI5FXHW--hA6i8VugiTwvzIrW95u1cnPvn3UbBoxTaBc4XOP3-V4eRDFcwotRMqvEVuqtmjdqfrVUQlXgB6gwfAYyyLWyFLe8FNAixHxILpoB_MH9EyW9kXVtHzkppqOaF7xx1yZktxpVmAEIFhvS__b5vUnMwFWQxMjhxYx_kX3i-1zIwjkOnP-1FVGoZFlBH2-y9k3adEezI9Ll9WqhK69ulWh5N4bA_zeif6aW-Pr3OpPvLMHCjR4w5brqjO7nYouNQbZlYSU_zwvEgG4ntnF4NlDABCok19KiOBdCGfuVeZWtmM3rEg2VqYM', '2019-12-21 07:26:35', '2019-12-21 07:58:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
