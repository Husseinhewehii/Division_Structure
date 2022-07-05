-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2022 at 05:30 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `independesk_task`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leader` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `leader`, `division_id`, `created_at`, `updated_at`) VALUES
(1, 'Eleazar Funk V department', 1, 5, '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(2, 'Alisha Feest department', 1, 5, '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(3, 'Margret Lindgren department', 12, 4, '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(4, 'Ms. Nichole Sawayn IV department', 6, 1, '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(5, 'Marcella Schmeler department', 16, 5, '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(6, 'Halle Littel department', 5, 1, '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(7, 'Ernestina Brakus department', 6, 1, '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(8, 'Xzavier Pollich V department', 7, 5, '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(9, 'Mr. Eliseo Krajcik department', 4, 4, '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(10, 'Christy Ernser III department', 16, 2, '2022-07-05 13:25:52', '2022-07-05 13:25:52');

-- --------------------------------------------------------

--
-- Table structure for table `department_employees`
--

CREATE TABLE `department_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department_employees`
--

INSERT INTO `department_employees` (`id`, `department_id`, `employee_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, NULL, NULL),
(2, 1, 4, NULL, NULL),
(3, 1, 5, NULL, NULL),
(4, 1, 8, NULL, NULL),
(5, 1, 11, NULL, NULL),
(6, 1, 15, NULL, NULL),
(7, 1, 17, NULL, NULL),
(8, 1, 18, NULL, NULL),
(9, 2, 2, NULL, NULL),
(10, 2, 5, NULL, NULL),
(11, 2, 8, NULL, NULL),
(12, 2, 12, NULL, NULL),
(13, 2, 17, NULL, NULL),
(14, 2, 20, NULL, NULL),
(15, 3, 1, NULL, NULL),
(16, 3, 2, NULL, NULL),
(17, 3, 5, NULL, NULL),
(18, 3, 8, NULL, NULL),
(19, 3, 10, NULL, NULL),
(20, 3, 17, NULL, NULL),
(21, 3, 19, NULL, NULL),
(22, 4, 2, NULL, NULL),
(23, 4, 4, NULL, NULL),
(24, 4, 5, NULL, NULL),
(25, 4, 8, NULL, NULL),
(26, 4, 15, NULL, NULL),
(27, 4, 18, NULL, NULL),
(28, 4, 20, NULL, NULL),
(29, 5, 1, NULL, NULL),
(30, 5, 7, NULL, NULL),
(31, 5, 8, NULL, NULL),
(32, 5, 15, NULL, NULL),
(33, 6, 4, NULL, NULL),
(34, 6, 14, NULL, NULL),
(35, 6, 20, NULL, NULL),
(36, 7, 3, NULL, NULL),
(37, 7, 4, NULL, NULL),
(38, 7, 5, NULL, NULL),
(39, 7, 18, NULL, NULL),
(40, 7, 20, NULL, NULL),
(41, 8, 1, NULL, NULL),
(42, 8, 5, NULL, NULL),
(43, 8, 13, NULL, NULL),
(44, 8, 15, NULL, NULL),
(45, 8, 18, NULL, NULL),
(46, 8, 19, NULL, NULL),
(47, 8, 20, NULL, NULL),
(48, 9, 5, NULL, NULL),
(49, 9, 6, NULL, NULL),
(50, 9, 8, NULL, NULL),
(51, 9, 11, NULL, NULL),
(52, 9, 16, NULL, NULL),
(53, 9, 18, NULL, NULL),
(54, 9, 20, NULL, NULL),
(55, 10, 1, NULL, NULL),
(56, 10, 5, NULL, NULL),
(57, 10, 13, NULL, NULL),
(58, 10, 17, NULL, NULL),
(59, 10, 18, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leader` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `leader`, `created_at`, `updated_at`) VALUES
(1, 'Jailyn Hackett division', 6, '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(2, 'Verda Beatty Jr. division', 1, '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(3, 'Dr. Wendell Haag IV division', 19, '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(4, 'Earnestine Dooley division', 10, '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(5, 'Ewald Luettgen Sr. division', 9, '2022-07-05 13:25:52', '2022-07-05 13:25:52');

-- --------------------------------------------------------

--
-- Table structure for table `division_employees`
--

CREATE TABLE `division_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `division_employees`
--

INSERT INTO `division_employees` (`id`, `division_id`, `employee_id`, `created_at`, `updated_at`) VALUES
(1, 1, 4, NULL, NULL),
(2, 1, 7, NULL, NULL),
(3, 1, 8, NULL, NULL),
(4, 1, 10, NULL, NULL),
(5, 1, 12, NULL, NULL),
(6, 1, 17, NULL, NULL),
(7, 1, 18, NULL, NULL),
(8, 2, 10, NULL, NULL),
(9, 2, 15, NULL, NULL),
(10, 2, 16, NULL, NULL),
(11, 2, 19, NULL, NULL),
(12, 3, 4, NULL, NULL),
(13, 3, 5, NULL, NULL),
(14, 3, 6, NULL, NULL),
(15, 3, 8, NULL, NULL),
(16, 3, 9, NULL, NULL),
(17, 3, 10, NULL, NULL),
(18, 3, 11, NULL, NULL),
(19, 3, 13, NULL, NULL),
(20, 4, 4, NULL, NULL),
(21, 4, 7, NULL, NULL),
(22, 4, 9, NULL, NULL),
(23, 4, 11, NULL, NULL),
(24, 4, 18, NULL, NULL),
(25, 4, 20, NULL, NULL),
(26, 5, 14, NULL, NULL),
(27, 5, 16, NULL, NULL),
(28, 5, 18, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `firstName`, `lastName`, `created_at`, `updated_at`) VALUES
(1, 'Jacques Shanahan I', 'Jovan Schaefer', '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(2, 'Mrs. Sonia Ernser', 'Prof. Milo Sipes V', '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(3, 'Gianni Lockman', 'Kamille Jenkins IV', '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(4, 'Lessie Reilly', 'Raphael Kutch DVM', '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(5, 'Ms. Brooke Collins Jr.', 'Jonathon Rohan', '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(6, 'Leonard Reichel', 'Jenifer Schoen I', '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(7, 'Marcelo Becker', 'Dr. Giles Dicki', '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(8, 'Nola Gleason', 'Prof. Junior Little PhD', '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(9, 'Reinhold Skiles III', 'Zoey Murazik Jr.', '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(10, 'Prof. Jimmie Bogisich', 'Giovanna Collier', '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(11, 'Ayana Jones Sr.', 'Dorian Lowe', '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(12, 'Prof. Delta Johns III', 'Dr. Evans Rohan', '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(13, 'Dr. Deshaun Olson III', 'Prof. Gene Johnston', '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(14, 'Oceane Leuschke', 'Clare Hintz', '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(15, 'Mrs. Bettie Jones', 'Garfield Bartell', '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(16, 'Brandy Miller', 'Karlee Ledner', '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(17, 'Hildegard Dooley', 'Dr. Cydney Watsica', '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(18, 'Soledad Kulas', 'Triston Wisozk I', '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(19, 'Ms. Katelynn Wiza', 'Adolfo Satterfield', '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(20, 'Dino Hegmann', 'Howell Konopelski', '2022-07-05 13:25:52', '2022-07-05 13:25:52');

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
(5, '2022_07_01_212007_create_employees_table', 1),
(6, '2022_07_01_212254_create_divisions_table', 1),
(7, '2022_07_01_212304_create_departments_table', 1),
(8, '2022_07_01_212311_create_teams_table', 1),
(9, '2022_07_01_223335_create_division_employees_table', 1),
(10, '2022_07_01_223847_create_department_employees_table', 1),
(11, '2022_07_01_223858_create_team_employees_table', 1);

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
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leader` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `leader`, `department_id`, `created_at`, `updated_at`) VALUES
(1, 'Elaina Heaney team', 6, 3, '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(2, 'Mrs. Emmanuelle Cruickshank I team', 19, 2, '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(3, 'Mrs. Danika McClure team', 20, 2, '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(4, 'Mitchell Macejkovic team', 19, 1, '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(5, 'Bradford Pacocha team', 18, 10, '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(6, 'Jennifer Torp IV team', 12, 10, '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(7, 'Maverick Bailey team', 2, 5, '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(8, 'Isac Abernathy team', 11, 3, '2022-07-05 13:25:52', '2022-07-05 13:25:52'),
(9, 'Dr. Fausto Schaefer team', 2, 7, '2022-07-05 13:25:53', '2022-07-05 13:25:53'),
(10, 'Claire Jacobs team', 12, 9, '2022-07-05 13:25:53', '2022-07-05 13:25:53'),
(11, 'Deonte Bernhard team', 3, 1, '2022-07-05 13:25:53', '2022-07-05 13:25:53'),
(12, 'Fay Hamill team', 2, 8, '2022-07-05 13:25:53', '2022-07-05 13:25:53'),
(13, 'Emelia O\'Hara team', 3, 6, '2022-07-05 13:25:53', '2022-07-05 13:25:53'),
(14, 'Allie Cruickshank team', 13, 3, '2022-07-05 13:25:53', '2022-07-05 13:25:53'),
(15, 'Kyle Corkery team', 13, 1, '2022-07-05 13:25:53', '2022-07-05 13:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `team_employees`
--

CREATE TABLE `team_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_employees`
--

INSERT INTO `team_employees` (`id`, `team_id`, `employee_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 1, 3, NULL, NULL),
(3, 1, 10, NULL, NULL),
(4, 2, 2, NULL, NULL),
(5, 2, 6, NULL, NULL),
(6, 2, 7, NULL, NULL),
(7, 2, 9, NULL, NULL),
(8, 2, 11, NULL, NULL),
(9, 2, 15, NULL, NULL),
(10, 2, 16, NULL, NULL),
(11, 2, 18, NULL, NULL),
(12, 3, 2, NULL, NULL),
(13, 3, 9, NULL, NULL),
(14, 3, 18, NULL, NULL),
(15, 4, 4, NULL, NULL),
(16, 4, 7, NULL, NULL),
(17, 4, 18, NULL, NULL),
(18, 5, 13, NULL, NULL),
(19, 5, 14, NULL, NULL),
(20, 5, 17, NULL, NULL),
(21, 6, 1, NULL, NULL),
(22, 6, 14, NULL, NULL),
(23, 6, 16, NULL, NULL),
(24, 7, 1, NULL, NULL),
(25, 7, 6, NULL, NULL),
(26, 7, 8, NULL, NULL),
(27, 7, 9, NULL, NULL),
(28, 7, 10, NULL, NULL),
(29, 7, 11, NULL, NULL),
(30, 7, 12, NULL, NULL),
(31, 7, 15, NULL, NULL),
(32, 8, 2, NULL, NULL),
(33, 8, 8, NULL, NULL),
(34, 8, 19, NULL, NULL),
(35, 9, 6, NULL, NULL),
(36, 9, 10, NULL, NULL),
(37, 9, 14, NULL, NULL),
(38, 10, 5, NULL, NULL),
(39, 10, 10, NULL, NULL),
(40, 10, 15, NULL, NULL),
(41, 11, 2, NULL, NULL),
(42, 11, 4, NULL, NULL),
(43, 11, 11, NULL, NULL),
(44, 11, 17, NULL, NULL),
(45, 11, 18, NULL, NULL),
(46, 12, 1, NULL, NULL),
(47, 12, 3, NULL, NULL),
(48, 12, 4, NULL, NULL),
(49, 12, 6, NULL, NULL),
(50, 12, 13, NULL, NULL),
(51, 12, 17, NULL, NULL),
(52, 12, 18, NULL, NULL),
(53, 12, 19, NULL, NULL),
(54, 13, 4, NULL, NULL),
(55, 13, 10, NULL, NULL),
(56, 13, 11, NULL, NULL),
(57, 13, 16, NULL, NULL),
(58, 13, 20, NULL, NULL),
(59, 14, 7, NULL, NULL),
(60, 14, 9, NULL, NULL),
(61, 14, 19, NULL, NULL),
(62, 15, 4, NULL, NULL),
(63, 15, 6, NULL, NULL),
(64, 15, 10, NULL, NULL),
(65, 15, 11, NULL, NULL),
(66, 15, 14, NULL, NULL),
(67, 15, 16, NULL, NULL),
(68, 15, 17, NULL, NULL),
(69, 15, 18, NULL, NULL);

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
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departments_leader_foreign` (`leader`),
  ADD KEY `departments_division_id_foreign` (`division_id`);

--
-- Indexes for table `department_employees`
--
ALTER TABLE `department_employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `department_employees_employee_id_department_id_unique` (`employee_id`,`department_id`),
  ADD KEY `department_employees_department_id_foreign` (`department_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `divisions_leader_foreign` (`leader`);

--
-- Indexes for table `division_employees`
--
ALTER TABLE `division_employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `division_employees_employee_id_division_id_unique` (`employee_id`,`division_id`),
  ADD KEY `division_employees_division_id_foreign` (`division_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_leader_foreign` (`leader`),
  ADD KEY `teams_department_id_foreign` (`department_id`);

--
-- Indexes for table `team_employees`
--
ALTER TABLE `team_employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_employees_employee_id_team_id_unique` (`employee_id`,`team_id`),
  ADD KEY `team_employees_team_id_foreign` (`team_id`);

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
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `department_employees`
--
ALTER TABLE `department_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `division_employees`
--
ALTER TABLE `division_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `team_employees`
--
ALTER TABLE `team_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`),
  ADD CONSTRAINT `departments_leader_foreign` FOREIGN KEY (`leader`) REFERENCES `employees` (`id`);

--
-- Constraints for table `department_employees`
--
ALTER TABLE `department_employees`
  ADD CONSTRAINT `department_employees_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `department_employees_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `divisions`
--
ALTER TABLE `divisions`
  ADD CONSTRAINT `divisions_leader_foreign` FOREIGN KEY (`leader`) REFERENCES `employees` (`id`);

--
-- Constraints for table `division_employees`
--
ALTER TABLE `division_employees`
  ADD CONSTRAINT `division_employees_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`),
  ADD CONSTRAINT `division_employees_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `teams_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `teams_leader_foreign` FOREIGN KEY (`leader`) REFERENCES `employees` (`id`);

--
-- Constraints for table `team_employees`
--
ALTER TABLE `team_employees`
  ADD CONSTRAINT `team_employees_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `team_employees_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
