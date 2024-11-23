-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 22, 2024 at 03:24 PM
-- Server version: 10.3.39-MariaDB-cll-lve
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sttsaec1_Airprp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `username` varchar(40) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `email_verified_at`, `image`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@example.com', 'admin', NULL, '66006c4631a581711303750.png', '$2y$10$Q1Ii0SFnFfQS.PGsEWDDgOXJ13kBXB1hQlYLuZcaXbjujab16mJgK', 'LYMDnp2BxyisMliN37SEY4HPs2TtfBNfr16QfDFKsU3aO0W7GMegXcvycD4E', NULL, '2024-03-24 23:09:10');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `read_status` tinyint(1) NOT NULL DEFAULT 0,
  `click_url` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `user_id`, `title`, `read_status`, `click_url`, `created_at`, `updated_at`) VALUES
(1, 1, 'New member registered', 1, '/admin/manage/users/detail/1', '2024-01-15 12:36:57', '2024-01-15 12:49:04'),
(2, 2, 'New member registered', 1, '/admin/manage/users/detail/2', '2024-01-15 13:37:11', '2024-01-15 13:39:30'),
(3, 3, 'New member registered', 0, '/admin/manage/users/detail/3', '2024-01-16 01:04:45', '2024-01-16 01:04:45'),
(4, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/1', '2024-01-22 03:32:47', '2024-01-22 03:32:47'),
(5, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/2', '2024-01-23 07:57:17', '2024-01-23 07:57:17'),
(6, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/3', '2024-01-29 07:09:34', '2024-01-29 07:09:34'),
(7, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/4', '2024-01-29 19:44:21', '2024-01-29 19:44:21'),
(8, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/5', '2024-01-30 09:00:55', '2024-01-30 09:00:55'),
(9, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/6', '2024-01-31 09:04:45', '2024-01-31 09:04:45'),
(10, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/7', '2024-02-01 03:13:32', '2024-02-01 03:13:32'),
(11, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/8', '2024-02-05 20:52:25', '2024-02-05 20:52:25'),
(12, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/9', '2024-02-07 02:26:16', '2024-02-07 02:26:16'),
(13, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/10', '2024-02-07 12:14:13', '2024-02-07 12:14:13'),
(14, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/11', '2024-02-08 19:13:54', '2024-02-08 19:13:54'),
(15, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/12', '2024-02-09 00:11:09', '2024-02-09 00:11:09'),
(16, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/13', '2024-02-09 06:27:21', '2024-02-09 06:27:21'),
(17, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/14', '2024-02-10 23:26:28', '2024-02-10 23:26:28'),
(18, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/15', '2024-02-12 00:04:02', '2024-02-12 00:04:02'),
(19, 0, 'A new support ticket has opened ', 1, '/admin/support/tickets/view/16', '2024-02-14 18:56:34', '2024-02-16 11:38:30'),
(20, 4, 'New member registered', 0, '/admin/manage/users/detail/4', '2024-02-16 11:37:48', '2024-02-16 11:37:48'),
(21, 5, 'New member registered', 0, '/admin/manage/users/detail/5', '2024-02-16 12:24:50', '2024-02-16 12:24:50'),
(22, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/17', '2024-02-18 15:07:59', '2024-02-18 15:07:59'),
(23, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/18', '2024-02-21 21:19:01', '2024-02-21 21:19:01'),
(24, 6, 'New member registered', 0, '/admin/manage/users/detail/6', '2024-02-21 21:38:05', '2024-02-21 21:38:05'),
(25, 0, 'SMTP Error: The following recipients failed: qasimsajjad106@gmail.com: Administrative prohibition\r\n', 1, '#', '2024-02-22 13:48:56', '2024-02-22 14:00:55'),
(26, 0, 'SMTP Error: The following recipients failed: qasimsajjad106@gmail.com: Administrative prohibition\r\n', 0, '#', '2024-02-22 13:49:24', '2024-02-22 13:49:24'),
(27, 0, 'SMTP Error: The following recipients failed: admin@gmail.com: Administrative prohibition\r\n', 0, '#', '2024-02-22 13:49:37', '2024-02-22 13:49:37'),
(28, 0, 'SMTP Error: The following recipients failed: qasimsajjad106@gmail.com: Administrative prohibition\r\n', 0, '#', '2024-02-22 13:49:56', '2024-02-22 13:49:56'),
(29, 0, 'SMTP Error: The following recipients failed: qasimsajjad106@gmail.com: Administrative prohibition\r\n', 0, '#', '2024-02-22 13:50:19', '2024-02-22 13:50:19'),
(30, 0, 'SMTP Error: Could not connect to SMTP host.', 0, '#', '2024-02-22 13:55:22', '2024-02-22 13:55:22'),
(31, 0, 'SMTP Error: Could not connect to SMTP host.', 1, '#', '2024-02-22 13:57:28', '2024-02-22 13:59:57'),
(32, 0, 'SMTP Error: The following recipients failed: qasim.sajjad@riscgroup.co: Administrative prohibition\r\n', 1, '#', '2024-02-22 13:59:20', '2024-02-22 13:59:30'),
(33, 0, 'SMTP Error: The following recipients failed: qasimsajjad106@gmail.com: Administrative prohibition\r\n', 1, '#', '2024-02-22 14:00:25', '2024-02-22 14:00:33'),
(34, 0, 'SMTP Error: Could not connect to SMTP host. Failed to connect to server', 0, '#', '2024-02-22 14:09:08', '2024-02-22 14:09:08'),
(35, 0, 'SMTP Error: Could not connect to SMTP host. Connection failed. stream_socket_enable_crypto(): Peer certificate CN=`s23.hosterpk.com\' did not match expected CN=`smtp.gmail.com\'', 0, '#', '2024-02-22 14:09:22', '2024-02-22 14:09:22'),
(36, 0, 'SMTP Error: The following recipients failed: qasimsajjad106@gmail.com: Administrative prohibition\r\n', 0, '#', '2024-02-22 14:10:48', '2024-02-22 14:10:48'),
(37, 0, 'SMTP Error: Could not connect to SMTP host.', 0, '#', '2024-02-22 14:15:31', '2024-02-22 14:15:31'),
(38, 0, 'SMTP Error: The following recipients failed: qasimsajjad106@gmail.com: Administrative prohibition\r\n', 0, '#', '2024-02-22 14:19:13', '2024-02-22 14:19:13'),
(39, 0, 'Undefined variable $cPQ9', 0, '#', '2024-02-22 14:19:43', '2024-02-22 14:19:43'),
(40, 0, 'SMTP Error: The following recipients failed: Tabishrafique77@gmail.com: Administrative prohibition\r\n', 1, '#', '2024-02-22 15:27:31', '2024-02-22 15:27:37'),
(41, 12, 'New member registered', 1, '/admin/manage/users/detail/12', '2024-02-22 15:47:06', '2024-03-02 14:42:36'),
(42, 0, 'A new support ticket has opened ', 1, '/admin/support/tickets/view/19', '2024-02-26 14:56:43', '2024-02-27 19:11:28'),
(43, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/20', '2024-03-02 02:27:53', '2024-03-02 02:27:53'),
(44, 15, 'New member registered', 0, '/admin/manage/users/detail/15', '2024-03-02 14:21:57', '2024-03-02 14:21:57'),
(45, 16, 'New member registered', 0, '/admin/manage/users/detail/16', '2024-03-02 14:31:04', '2024-03-02 14:31:04'),
(46, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/21', '2024-03-05 02:05:50', '2024-03-05 02:05:50'),
(47, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/22', '2024-03-08 01:29:38', '2024-03-08 01:29:38'),
(48, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/23', '2024-03-08 04:30:40', '2024-03-08 04:30:40'),
(49, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/24', '2024-03-08 12:25:29', '2024-03-08 12:25:29'),
(50, 0, 'A new support ticket has opened ', 1, '/admin/support/tickets/view/25', '2024-03-12 16:06:32', '2024-03-13 15:04:05'),
(51, 11, 'New withdraw request from ', 0, '/admin/manage/withdrawals/details/1', '2024-03-15 12:55:00', '2024-03-15 12:55:00'),
(52, 20, 'New member registered', 0, '/admin/manage/users/detail/20', '2024-03-15 21:41:08', '2024-03-15 21:41:08'),
(53, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/26', '2024-03-16 22:28:25', '2024-03-16 22:28:25'),
(54, 22, 'New member registered', 0, '/admin/manage/users/detail/22', '2024-03-16 22:59:36', '2024-03-16 22:59:36'),
(55, 0, 'SMTP Error: The following recipients failed: zjhangir67@gmail.com: Temporary local problem - please try later\r\n', 0, '#', '2024-03-16 22:59:40', '2024-03-16 22:59:40'),
(56, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/27', '2024-03-19 04:15:31', '2024-03-19 04:15:31'),
(57, 25, 'New member registered', 0, '/admin/manage/users/detail/25', '2024-03-24 16:38:11', '2024-03-24 16:38:11'),
(58, 26, 'New member registered', 0, '/admin/manage/users/detail/26', '2024-03-24 16:49:26', '2024-03-24 16:49:26'),
(59, 27, 'New member registered', 0, '/admin/manage/users/detail/27', '2024-03-26 11:19:57', '2024-03-26 11:19:57'),
(60, 28, 'New member registered', 0, '/admin/manage/users/detail/28', '2024-03-26 11:23:34', '2024-03-26 11:23:34'),
(61, 29, 'New member registered', 0, '/admin/manage/users/detail/29', '2024-03-26 11:25:19', '2024-03-26 11:25:19'),
(62, 30, 'New member registered', 0, '/admin/manage/users/detail/30', '2024-03-26 11:41:16', '2024-03-26 11:41:16'),
(63, 31, 'New member registered', 0, '/admin/manage/users/detail/31', '2024-03-26 11:48:22', '2024-03-26 11:48:22'),
(64, 0, 'SMS Error: [HTTP 400] Unable to create record: Invalid \'To\' Phone Number: +0306539XXXX', 0, '#', '2024-03-27 12:57:13', '2024-03-27 12:57:13'),
(65, 0, 'SMS Error: [HTTP 400] Unable to create record: Invalid \'To\' Phone Number: +0345218XXXX', 0, '#', '2024-03-28 07:44:59', '2024-03-28 07:44:59'),
(66, 0, 'SMS Error: [HTTP 400] Unable to create record: Invalid \'To\' Phone Number: XX', 0, '#', '2024-03-28 07:45:22', '2024-03-28 07:45:22'),
(67, 0, 'SMS Error: [HTTP 400] Unable to create record: Invalid \'To\' Phone Number: +054716XXXX', 0, '#', '2024-03-28 07:46:15', '2024-03-28 07:46:15'),
(68, 0, 'SMS Error: [HTTP 400] Unable to create record: Permission to send an SMS has not been enabled for the region indicated by the \'To\' number: +=97154716XXXX', 0, '#', '2024-03-28 07:47:02', '2024-03-28 07:47:02'),
(69, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/28', '2024-03-29 03:13:53', '2024-03-29 03:13:53'),
(70, 32, 'New member registered', 0, '/admin/manage/users/detail/32', '2024-03-29 10:25:47', '2024-03-29 10:25:47'),
(71, 33, 'New member registered', 0, '/admin/manage/users/detail/33', '2024-03-29 10:46:12', '2024-03-29 10:46:12'),
(72, 34, 'New member registered', 1, '/admin/manage/users/detail/34', '2024-03-29 10:55:03', '2024-04-04 00:24:31'),
(73, 35, 'New member registered', 0, '/admin/manage/users/detail/35', '2024-03-29 10:57:23', '2024-03-29 10:57:23'),
(74, 36, 'New member registered', 0, '/admin/manage/users/detail/36', '2024-03-29 10:58:35', '2024-03-29 10:58:35'),
(75, 37, 'New member registered', 0, '/admin/manage/users/detail/37', '2024-03-29 11:01:35', '2024-03-29 11:01:35'),
(76, 38, 'New member registered', 0, '/admin/manage/users/detail/38', '2024-03-29 11:16:10', '2024-03-29 11:16:10'),
(77, 39, 'New member registered', 0, '/admin/manage/users/detail/39', '2024-03-29 11:29:29', '2024-03-29 11:29:29'),
(78, 0, 'A new support ticket has opened ', 1, '/admin/support/tickets/view/29', '2024-03-31 10:01:12', '2024-04-01 22:24:46'),
(79, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/30', '2024-03-31 22:05:27', '2024-03-31 22:05:27'),
(80, 0, 'A new support ticket has opened ', 1, '/admin/support/tickets/view/31', '2024-04-01 08:37:12', '2024-04-01 22:24:32'),
(81, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/32', '2024-04-02 04:49:32', '2024-04-02 04:49:32'),
(82, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/33', '2024-04-03 09:33:53', '2024-04-03 09:33:53'),
(83, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/34', '2024-04-04 11:23:20', '2024-04-04 11:23:20'),
(84, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/35', '2024-04-04 11:38:23', '2024-04-04 11:38:23'),
(85, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/36', '2024-04-04 11:41:17', '2024-04-04 11:41:17'),
(86, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/37', '2024-04-04 11:42:58', '2024-04-04 11:42:58'),
(87, 41, 'New member registered', 0, '/admin/manage/users/detail/41', '2024-04-04 11:56:39', '2024-04-04 11:56:39'),
(88, 42, 'New member registered', 0, '/admin/manage/users/detail/42', '2024-04-04 12:09:30', '2024-04-04 12:09:30'),
(89, 43, 'New member registered', 1, '/admin/manage/users/detail/43', '2024-04-04 12:14:03', '2024-04-07 00:42:58'),
(90, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/38', '2024-04-08 04:40:12', '2024-04-08 04:40:12'),
(91, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/39', '2024-04-13 21:36:59', '2024-04-13 21:36:59'),
(92, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/40', '2024-04-15 04:02:59', '2024-04-15 04:02:59'),
(93, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/41', '2024-04-15 21:41:44', '2024-04-15 21:41:44'),
(94, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/42', '2024-04-17 15:49:16', '2024-04-17 15:49:16'),
(95, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/43', '2024-04-18 18:34:32', '2024-04-18 18:34:32'),
(96, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/44', '2024-04-23 07:28:10', '2024-04-23 07:28:10'),
(97, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/45', '2024-04-24 00:01:20', '2024-04-24 00:01:20'),
(98, 46, 'New member registered', 0, '/admin/manage/users/detail/46', '2024-04-25 10:51:38', '2024-04-25 10:51:38'),
(99, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/46', '2024-04-27 18:59:24', '2024-04-27 18:59:24'),
(100, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/47', '2024-04-30 03:14:15', '2024-04-30 03:14:15'),
(101, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/48', '2024-05-01 00:04:28', '2024-05-01 00:04:28'),
(102, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/49', '2024-05-05 07:14:23', '2024-05-05 07:14:23'),
(103, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/50', '2024-05-06 09:29:45', '2024-05-06 09:29:45'),
(104, 0, 'A new support ticket has opened ', 1, '/admin/support/tickets/view/51', '2024-05-06 14:55:03', '2024-05-07 15:52:44'),
(105, 0, 'A new support ticket has opened ', 1, '/admin/support/tickets/view/52', '2024-05-07 01:57:38', '2024-05-07 15:52:34'),
(106, 0, 'A new support ticket has opened ', 1, '/admin/support/tickets/view/53', '2024-05-07 13:00:48', '2024-05-07 15:52:38'),
(107, 47, 'New member registered', 1, '/admin/manage/users/detail/47', '2024-05-07 14:57:34', '2024-05-07 15:51:40'),
(108, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/54', '2024-05-07 18:58:33', '2024-05-07 18:58:33'),
(109, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/55', '2024-05-08 01:33:38', '2024-05-08 01:33:38'),
(110, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/56', '2024-05-09 02:20:55', '2024-05-09 02:20:55'),
(111, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/57', '2024-05-10 19:10:49', '2024-05-10 19:10:49'),
(112, 48, 'New member registered', 0, '/admin/manage/users/detail/48', '2024-05-10 19:55:02', '2024-05-10 19:55:02'),
(113, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/58', '2024-05-12 12:16:14', '2024-05-12 12:16:14'),
(114, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/59', '2024-05-13 09:24:04', '2024-05-13 09:24:04'),
(115, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/60', '2024-05-15 15:24:10', '2024-05-15 15:24:10'),
(116, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/61', '2024-05-15 21:10:06', '2024-05-15 21:10:06'),
(117, 49, 'New member registered', 0, '/admin/manage/users/detail/49', '2024-05-20 12:18:30', '2024-05-20 12:18:30'),
(118, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/62', '2024-05-20 22:22:50', '2024-05-20 22:22:50'),
(119, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/63', '2024-05-21 18:42:56', '2024-05-21 18:42:56'),
(120, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/64', '2024-05-22 01:12:01', '2024-05-22 01:12:01'),
(121, 0, 'A new support ticket has opened ', 0, '/admin/support/tickets/view/65', '2024-05-22 01:55:57', '2024-05-22 01:55:57');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `token` varchar(40) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_reviews`
--

CREATE TABLE `admin_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `total_review` int(11) DEFAULT NULL,
  `avg_rating` decimal(28,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `renter_id` bigint(20) NOT NULL,
  `property_id` bigint(20) NOT NULL,
  `amount` decimal(28,8) NOT NULL,
  `from_date` timestamp NULL DEFAULT NULL,
  `to_date` timestamp NULL DEFAULT NULL,
  `guest` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT 'pending = 0, \r\napproved = 1,\r\nrejected =2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roomService` varchar(114) DEFAULT NULL,
  `breakfastService` varchar(114) DEFAULT NULL,
  `mealService` varchar(114) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `owner_id`, `renter_id`, `property_id`, `amount`, `from_date`, `to_date`, `guest`, `status`, `created_at`, `updated_at`, `roomService`, `breakfastService`, `mealService`) VALUES
(16, 11, 24, 43, 500.00000000, '2024-05-13 00:00:00', '2024-05-14 00:00:00', 1, 1, '2024-05-10 20:14:10', '2024-05-10 20:17:15', NULL, NULL, NULL),
(17, 11, 5, 43, 500.00000000, '2024-05-14 00:00:00', '2024-05-15 00:00:00', 1, 1, '2024-05-11 15:24:16', '2024-05-11 15:26:30', NULL, NULL, NULL),
(18, 11, 47, 43, 1230.00000000, '2024-05-29 00:00:00', '2024-05-31 00:00:00', 4, 0, '2024-05-15 15:05:59', '2024-05-15 15:05:59', '230', NULL, NULL),
(19, 11, 47, 43, 730.00000000, '2024-06-01 00:00:00', '2024-06-02 00:00:00', 4, 1, '2024-05-16 14:13:49', '2024-05-16 14:14:40', '230', NULL, NULL),
(20, 11, 47, 43, 2120.00000000, '2024-06-03 00:00:00', '2024-06-07 00:00:00', 0, 1, '2024-05-16 14:16:56', '2024-05-16 14:17:38', '230', '120', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `icon` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT 'active = 1,\r\ndeactive = 0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Apartment', '<i class=\"fas fa-building\"></i>', 1, '2024-01-15 11:49:49', '2024-01-15 11:49:49'),
(2, 'Villa', '<i class=\"fas fa-home\"></i>', 1, '2024-01-15 11:50:15', '2024-01-15 11:50:15'),
(3, 'Rooms', '<i class=\"las la-bed\"></i>', 1, '2024-01-15 11:51:03', '2024-01-15 11:51:03'),
(4, 'Guest House', '<i class=\"fas fa-house-damage\"></i>', 1, '2024-01-15 11:51:37', '2024-02-27 11:57:58'),
(5, 'Farm House', '<i class=\"fas fa-house-damage\"></i>', 1, '2024-02-27 18:14:25', '2024-02-27 18:14:25'),
(6, 'Studio Flat\n', '<i class=\"fas fa-house-damage\"></i>', 1, '2024-02-27 18:15:02', '2024-02-27 18:15:02'),
(7, 'Hotel Room', '<i class=\"fas fa-h-square\"></i>', 1, '2024-02-27 18:15:30', '2024-02-27 18:15:30');

-- --------------------------------------------------------

--
-- Table structure for table `commission_logs`
--

CREATE TABLE `commission_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `level` varchar(191) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `type` varchar(40) NOT NULL,
  `details` varchar(255) NOT NULL,
  `trx` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `booking_id` bigint(20) NOT NULL,
  `property_id` bigint(20) NOT NULL,
  `method_code` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `method_currency` varchar(40) DEFAULT NULL,
  `charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `rate` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `final_amo` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `detail` text DEFAULT NULL,
  `btc_amo` varchar(255) DEFAULT NULL,
  `btc_wallet` varchar(255) DEFAULT NULL,
  `trx` varchar(40) DEFAULT NULL,
  `try` int(10) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=>success, 2=>pending, 3=>cancel',
  `from_api` tinyint(1) NOT NULL DEFAULT 0,
  `admin_feedback` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `booking_id`, `property_id`, `method_code`, `amount`, `method_currency`, `charge`, `rate`, `final_amo`, `detail`, `btc_amo`, `btc_wallet`, `trx`, `try`, `status`, `from_api`, `admin_feedback`, `created_at`, `updated_at`) VALUES
(16, 24, 16, 43, 114, 500.00000000, 'PKR', 0.00000000, 285.00000000, 142500.00000000, NULL, '0', '', '6D2BJ1C1EWR8', 0, 1, 0, NULL, '2024-05-10 20:14:10', '2024-05-10 20:17:15'),
(17, 5, 17, 43, 114, 500.00000000, 'PKR', 0.00000000, 285.00000000, 142500.00000000, NULL, '0', '', 'SPYWU6NR4Q3E', 0, 1, 0, NULL, '2024-05-11 15:24:16', '2024-05-11 15:26:30'),
(18, 47, 18, 43, 114, 1230.00000000, 'PKR', 0.00000000, 285.00000000, 350550.00000000, NULL, '0', '', 'YVS97JUF812B', 0, 0, 0, NULL, '2024-05-15 15:05:59', '2024-05-15 15:05:59'),
(19, 47, 19, 43, 114, 730.00000000, 'PKR', 0.00000000, 285.00000000, 208050.00000000, NULL, '0', '', 'DP7G4O8Q4NAB', 0, 1, 0, NULL, '2024-05-16 14:13:49', '2024-05-16 14:14:40'),
(20, 47, 20, 43, 114, 2120.00000000, 'PKR', 0.00000000, 285.00000000, 604200.00000000, NULL, '0', '', 'ZYX5EFSBRC6O', 0, 1, 0, NULL, '2024-05-16 14:16:56', '2024-05-16 14:17:38');

-- --------------------------------------------------------

--
-- Table structure for table `extensions`
--

CREATE TABLE `extensions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `act` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `script` text DEFAULT NULL,
  `shortcode` text DEFAULT NULL COMMENT 'object',
  `support` text DEFAULT NULL COMMENT 'help section',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=>enable, 2=>disable',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extensions`
--

INSERT INTO `extensions` (`id`, `act`, `name`, `description`, `image`, `script`, `shortcode`, `support`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'tawk-chat', 'Live Chat(Tawk.to)', 'Key location is shown bellow', 'chat-png.png', '<script>\n                        var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\n                        (function(){\n                        var s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\n                        s1.async=true;\n                        s1.src=\"https://embed.tawk.to/{{app_key}}\";\n                        s1.charset=\"UTF-8\";\n                        s1.setAttribute(\"crossorigin\",\"*\");\n                        s0.parentNode.insertBefore(s1,s0);\n                        })();\n                    </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"55\"}}', 'twak.png', 1, NULL, '2019-10-18 23:16:05', '2024-01-15 11:48:37'),
(2, 'google-recaptcha2', 'Google Recaptcha 2', 'Key location is shown bellow', 'recaptcha2.png', '\n<script src=\"https://www.google.com/recaptcha/api.js\"></script>\n<div class=\"g-recaptcha\" data-sitekey=\"{{site_key}}\" data-callback=\"verifyCaptcha\"></div>\n<div id=\"g-recaptcha-error\"></div>', '{\"site_key\":{\"title\":\"Site Key\",\"value\":\"6LdPC88fAAAAADQlUf_DV6Hrvgm-pZuLJFSLDOWV\"},\"secret_key\":{\"title\":\"Secret Key\",\"value\":\"6LdPC88fAAAAAG5SVaRYDnV2NpCrptLg2XLYKRKB\"}}', 'recaptcha.png', 0, NULL, '2019-10-18 23:16:05', '2022-05-08 04:01:36');

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `act` varchar(40) DEFAULT NULL,
  `form_data` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `act`, `form_data`, `created_at`, `updated_at`) VALUES
(2, 'manual_deposit', '{\"nid_number\":{\"name\":\"NID Number\",\"label\":\"nid_number\",\"is_required\":\"required\",\"extensions\":null,\"options\":[],\"type\":\"text\"},\"nid_number_22\":{\"name\":\"NID Number 22\",\"label\":\"nid_number_22\",\"is_required\":\"required\",\"extensions\":null,\"options\":[],\"type\":\"textarea\"},\"sadfg\":{\"name\":\"sadfg\",\"label\":\"sadfg\",\"is_required\":\"optional\",\"extensions\":null,\"options\":[],\"type\":\"text\"},\"asdf\":{\"name\":\"asdf\",\"label\":\"asdf\",\"is_required\":\"required\",\"extensions\":null,\"options\":[\"Test\",\"Test2\",\"Test3\"],\"type\":\"select\"},\"nid_number_226985\":{\"name\":\"NID Number 226985\",\"label\":\"nid_number_226985\",\"is_required\":\"required\",\"extensions\":null,\"options\":[\"Test\",\"Test 2\",\"Test 3\"],\"type\":\"checkbox\"},\"nid_number_3333\":{\"name\":\"NID Number 3333\",\"label\":\"nid_number_3333\",\"is_required\":\"required\",\"extensions\":null,\"options\":[\"Test\",\"asdf\"],\"type\":\"radio\"},\"nid_number_3333587\":{\"name\":\"NID Number 3333587\",\"label\":\"nid_number_3333587\",\"is_required\":\"optional\",\"extensions\":\"jpg,bmp,png,pdf\",\"options\":[],\"type\":\"file\"}}', '2022-03-16 01:09:49', '2022-03-17 00:02:54'),
(3, 'manual_deposit', '{\"nid_number\":{\"name\":\"NID Number\",\"label\":\"nid_number\",\"is_required\":\"required\",\"extensions\":null,\"options\":[],\"type\":\"text\"},\"nid_number_226985\":{\"name\":\"NID Number 226985\",\"label\":\"nid_number_226985\",\"is_required\":\"required\",\"extensions\":\"\",\"options\":[],\"type\":\"textarea\"}}', '2022-03-16 04:32:29', '2022-03-16 04:35:32'),
(5, 'withdraw_method', '{\"nid_number_33\":{\"name\":\"NID Number 33\",\"label\":\"nid_number_33\",\"is_required\":\"required\",\"extensions\":\"\",\"options\":[],\"type\":\"textarea\"}}', '2022-03-17 00:45:35', '2022-03-17 00:53:17'),
(6, 'withdraw_method', '{\"nid_number\":{\"name\":\"NID Number\",\"label\":\"nid_number\",\"is_required\":\"required\",\"extensions\":\"\",\"options\":[],\"type\":\"textarea\"}}', '2022-03-17 00:47:04', '2022-03-17 00:47:04'),
(7, 'kyc', '{\"date_of_birth\":{\"name\":\"Date of Birth\",\"label\":\"date_of_birth\",\"is_required\":\"optional\",\"extensions\":null,\"options\":[],\"type\":\"text\"},\"cnic_no\":{\"name\":\"CNIC No\",\"label\":\"cnic_no\",\"is_required\":\"optional\",\"extensions\":null,\"options\":[],\"type\":\"text\"}}', '2022-03-17 02:56:14', '2024-03-29 11:03:56'),
(8, 'manual_deposit', '{\"nid_number\":{\"name\":\"NID Number\",\"label\":\"nid_number\",\"is_required\":\"required\",\"extensions\":\"\",\"options\":[],\"type\":\"text\"}}', '2022-03-21 07:53:25', '2022-03-21 07:53:25'),
(9, 'manual_deposit', '{\"nid_number\":{\"name\":\"NID Number\",\"label\":\"nid_number\",\"is_required\":\"required\",\"extensions\":\"\",\"options\":[],\"type\":\"text\"}}', '2022-03-21 07:54:15', '2022-03-21 07:54:15'),
(10, 'manual_deposit', '{\"nid_number\":{\"name\":\"NID Number\",\"label\":\"nid_number\",\"is_required\":\"required\",\"extensions\":\"\",\"options\":[],\"type\":\"textarea\"}}', '2022-03-21 07:55:15', '2022-03-21 07:55:22'),
(11, 'withdraw_method', '{\"nid_number_2658\":{\"name\":\"NID Number 2658\",\"label\":\"nid_number_2658\",\"is_required\":\"required\",\"extensions\":\"\",\"options\":[\"asdf\"],\"type\":\"checkbox\"}}', '2022-03-22 00:14:09', '2022-03-22 00:14:18'),
(12, 'withdraw_method', '[]', '2022-03-30 09:03:12', '2022-03-30 09:03:12'),
(13, 'withdraw_method', '{\"bank_name\":{\"name\":\"Bank Name\",\"label\":\"bank_name\",\"is_required\":\"required\",\"extensions\":null,\"options\":[],\"type\":\"text\"},\"account_name\":{\"name\":\"Account Name\",\"label\":\"account_name\",\"is_required\":\"required\",\"extensions\":null,\"options\":[],\"type\":\"text\"},\"account_number\":{\"name\":\"Account Number\",\"label\":\"account_number\",\"is_required\":\"required\",\"extensions\":null,\"options\":[],\"type\":\"text\"}}', '2022-03-30 09:09:11', '2022-09-28 04:05:20'),
(14, 'withdraw_method', '{\"mobile_number\":{\"name\":\"Mobile Number\",\"label\":\"mobile_number\",\"is_required\":\"required\",\"extensions\":null,\"options\":[],\"type\":\"text\"}}', '2022-03-30 09:10:12', '2022-09-29 09:55:20'),
(15, 'manual_deposit', '{\"send_from_number\":{\"name\":\"Send From Number\",\"label\":\"send_from_number\",\"is_required\":\"required\",\"extensions\":\"\",\"options\":[],\"type\":\"text\"},\"transaction_number\":{\"name\":\"Transaction Number\",\"label\":\"transaction_number\",\"is_required\":\"required\",\"extensions\":\"\",\"options\":[],\"type\":\"text\"},\"screenshot\":{\"name\":\"Screenshot\",\"label\":\"screenshot\",\"is_required\":\"required\",\"extensions\":\"jpg,jpeg,png\",\"options\":[],\"type\":\"file\"}}', '2022-03-30 09:15:27', '2022-03-30 09:15:27'),
(16, 'manual_deposit', '{\"transaction_number\":{\"name\":\"Transaction Number\",\"label\":\"transaction_number\",\"is_required\":\"required\",\"extensions\":null,\"options\":[],\"type\":\"text\"},\"screenshot\":{\"name\":\"Screenshot\",\"label\":\"screenshot\",\"is_required\":\"required\",\"extensions\":\"jpg,pdf,docx\",\"options\":[],\"type\":\"file\"}}', '2022-03-30 09:16:43', '2022-04-11 03:19:54'),
(17, 'manual_deposit', '[]', '2022-03-30 09:21:19', '2022-03-30 09:21:19'),
(18, 'manual_deposit', '{\"asdfasddf\":{\"name\":\"asdfasddf\",\"label\":\"asdfasddf\",\"is_required\":\"required\",\"extensions\":\"\",\"options\":[],\"type\":\"text\"}}', '2022-09-28 04:50:55', '2022-09-28 04:50:55'),
(19, 'manual_deposit', '{\"sadf\":{\"name\":\"sadf\",\"label\":\"sadf\",\"is_required\":\"required\",\"extensions\":null,\"options\":[],\"type\":\"textarea\"}}', '2022-09-28 05:13:04', '2022-09-28 05:13:59'),
(20, 'manual_deposit', '{\"transaction_id\":{\"name\":\"Transaction ID\",\"label\":\"transaction_id\",\"is_required\":\"required\",\"extensions\":\"\",\"options\":[],\"type\":\"text\"}}', '2023-05-27 02:50:43', '2023-05-27 02:50:43'),
(21, 'manual_deposit', '{\"name\":{\"name\":\"Name\",\"label\":\"name\",\"is_required\":\"required\",\"extensions\":null,\"options\":[],\"type\":\"text\"},\"account\":{\"name\":\"Account\",\"label\":\"account\",\"is_required\":\"required\",\"extensions\":null,\"options\":[],\"type\":\"text\"},\"mobile\":{\"name\":\"Mobile\",\"label\":\"mobile\",\"is_required\":\"required\",\"extensions\":null,\"options\":[],\"type\":\"text\"}}', '2023-11-24 17:20:06', '2023-11-25 04:44:51'),
(22, 'withdraw_method', '{\"bank_name\":{\"name\":\"Bank Name\",\"label\":\"bank_name\",\"is_required\":\"required\",\"extensions\":\"\",\"options\":[],\"type\":\"text\"},\"account_number\":{\"name\":\"Account Number\",\"label\":\"account_number\",\"is_required\":\"required\",\"extensions\":\"\",\"options\":[],\"type\":\"text\"},\"account_iban_number\":{\"name\":\"Account IBAN Number\",\"label\":\"account_iban_number\",\"is_required\":\"required\",\"extensions\":\"\",\"options\":[],\"type\":\"text\"},\"account_holder_name\":{\"name\":\"Account Holder Name\",\"label\":\"account_holder_name\",\"is_required\":\"required\",\"extensions\":\"\",\"options\":[],\"type\":\"text\"}}', '2024-03-15 12:49:24', '2024-03-15 12:49:24');

-- --------------------------------------------------------

--
-- Table structure for table `frontends`
--

CREATE TABLE `frontends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data_keys` varchar(40) DEFAULT NULL,
  `data_values` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frontends`
--

INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `created_at`, `updated_at`) VALUES
(1, 'seo.data', '{\"seo_image\":\"1\",\"keywords\":[\"website\",\"services\"],\"description\":\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit\",\"social_title\":\"Minstack Limited\",\"social_description\":\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit ff\",\"image\":\"645b7b926567e1683717010.png\"}', '2020-07-04 23:42:52', '2023-05-10 05:10:10'),
(24, 'about.content', '{\"has_image\":\"1\",\"heading\":\"Latest Newsddd\",\"subheading\":\"dddd\",\"description\":\"fdg sdfgsdf g gggddd\",\"about_icon\":\"<i class=\\\"fab fa-accusoft\\\"><\\/i>\",\"background_image\":\"60951a84abd141620384388.png\",\"about_image\":\"5f9914e907ace1603867881.jpg\"}', '2020-10-28 00:51:20', '2023-05-10 02:06:51'),
(25, 'blog.content', '{\"heading\":\"Get Every Single Update Article\",\"subheading\":\"stay up to date with us about the industry\"}', '2020-10-28 00:51:34', '2024-03-09 16:26:54'),
(26, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"The Ultimate Guide to Renting Your Dream Home: Tips and Tricks\",\"description\":\"<p>Renting a house is a significant decision, and finding the perfect property involves a blend of research, considerations, and smart decision-making. Here are key steps to help you navigate the house rental process smoothly:<\\/p><p>\\u00a0<\\/p><h4><strong>Research and Planning<\\/strong><\\/h4><p>Before diving into the rental market, it\'s essential to lay down a solid plan:<\\/p><p>\\u00a0<\\/p><p><strong>1. Define Your Needs:<\\/strong> Make a list of your requirements \\u2013 from the number of bedrooms and bathrooms to amenities like parking space, backyard, or proximity to schools and workplaces.<\\/p><p>\\u00a0<\\/p><p><strong>2. Set Your Budget:<\\/strong> Determine a realistic budget considering not just the rent but also utilities, maintenance costs, and potential increases over time.<\\/p><h4>\\u00a0<\\/h4><h4><strong>Scouting for Properties<\\/strong><\\/h4><p>Once your groundwork is set, it\'s time to explore available options:<\\/p><p>\\u00a0<\\/p><p><strong>1. Browse Listings:<\\/strong> Use online platforms, real estate websites, and local listings to search for properties that meet your criteria.<\\/p><p>\\u00a0<\\/p><p><strong>2. Attend Open Houses:<\\/strong> Visit open houses or schedule viewings to physically inspect the properties. Pay attention to the condition of the house, neighborhood, and available amenities.<\\/p><p>\\u00a0<\\/p><h4><strong>Making Informed Decisions<\\/strong><\\/h4><p>As you narrow down your choices, it\'s crucial to make informed decisions:<\\/p><p>\\u00a0<\\/p><p><strong>1. Review the Lease Agreement:<\\/strong> Carefully read and understand the lease terms, including rental duration, responsibilities, restrictions, and any potential penalties.<\\/p><p>\\u00a0<\\/p><p><strong>2. Inspect the Property:<\\/strong> Before signing anything, inspect the property thoroughly. Document existing damages or issues and ensure they are addressed before moving in.<\\/p><p>\\u00a0<\\/p><h4><strong>Finalizing the Deal<\\/strong><\\/h4><p>Once you\'ve found the ideal house, it\'s time to seal the deal:<\\/p><p>\\u00a0<\\/p><p><strong>1. Communicate with the Landlord:<\\/strong> Maintain open communication with the landlord or property manager. Clarify any uncertainties and ensure you\'re on the same page regarding maintenance and responsibilities.<\\/p><p>\\u00a0<\\/p><p><strong>2. Understand Your Rights:<\\/strong> Familiarize yourself with tenant rights and local rental laws to protect yourself and ensure a smooth tenancy.<\\/p><p>Renting a house property involves more than just finding a roof over your head. It\'s about securing a comfortable and safe living environment that aligns with your lifestyle and needs. By following these steps, you can navigate the rental market with confidence and find the perfect house to call home.<\\/p>\",\"blog_image\":\"656b12d10866c1701515985.jpg\"}', '2020-10-28 00:57:19', '2023-12-17 12:41:40'),
(27, 'contact_us.content', '{\"has_image\":\"1\",\"heading_one\":\"Get in touch With Us\",\"heading_two\":\"Have inquiries? Reach out via message\",\"subheading\":\"Contact us\",\"number_one\":\"03001231420\",\"number_two\":\"03452181841\",\"email_one\":\"info@airprp.com\",\"email_two\":\"airprpone@gmail.com\",\"address_one\":\"Gulshan e Iqbal, Karachi, Pakistan\",\"address_two\":\" \",\"footer_bottom_line\":\"\\u00a9 Copyright 2024 . airprp.com All rights reserved.\",\"image_one\":\"65ec460d3842f1709983245.jpg\",\"image_two\":\"65ec460d841de1709983245.png\"}', '2020-10-28 00:59:19', '2024-03-09 16:22:56'),
(28, 'counter.content', '{\"heading\":\"Clients\",\"subheading\":\"Auctor gravida vestibulu\"}', '2020-10-28 01:04:02', '2022-09-28 14:02:14'),
(31, 'social_icon.element', '{\"title\":\"Facebook\",\"social_icon\":\"<i class=\\\"lab la-facebook-f\\\"><\\/i>\",\"url\":\"https:\\/\\/www.facebook.com\\/\"}', '2020-11-12 04:07:30', '2023-11-16 11:00:44'),
(33, 'feature.content', '{\"heading\":\"asdf\",\"sub_heading\":\"asdf\"}', '2021-01-03 23:40:54', '2021-01-03 23:40:55'),
(34, 'feature.element', '{\"title\":\"asdf\",\"description\":\"asdf\",\"feature_icon\":\"asdf\"}', '2021-01-03 23:41:02', '2021-01-03 23:41:02'),
(35, 'service.element', '{\"trx_type\":\"withdraw\",\"service_icon\":\"<i class=\\\"las la-highlighter\\\"><\\/i>\",\"title\":\"asdfasdf\",\"description\":\"asdfasdfasdfasdf\"}', '2021-03-06 01:12:10', '2021-03-06 01:12:10'),
(36, 'service.content', '{\"trx_type\":\"deposit\",\"heading\":\"asdf fffff\",\"subheading\":\"555\"}', '2021-03-06 01:27:34', '2022-03-30 08:07:06'),
(39, 'banner.content', '{\"heading\":\"Where every stay is a story\",\"subheading\":\"airprp.com, your home away from home\",\"has_image\":\"1\",\"image\":\"65a5165ce523d1705317980.png\"}', '2021-05-02 06:09:30', '2024-03-09 16:24:23'),
(41, 'cookie.data', '{\"short_desc\":\"We use cookies to enhance your browsing experience, serve personalized ads or content, and analyze our traffic. By clicking \\\"Accept\\\", you consent to our use of cookies.\",\"description\":\"<h3><strong>GDPR, cookies and compliance&nbsp;<\\/strong><\\/h3><p>&nbsp;<\\/p><p>Even though cookies are mentioned only once in the GDPR,&nbsp;cookie consent&nbsp;is nonetheless a cornerstone of compliance for websites with EU-located users.<\\/p><p>This is because&nbsp;one of the most common ways for personal data to be collected and shared online is through website cookies. The GDPR sets out specific rules for the use of cookies.<\\/p><p>That\\u2019s why end-user consent to cookies is the GDPR\\u2019s most used legal basis that allows websites to process personal data and use cookies.&nbsp;<\\/p><p>&nbsp;<\\/p><p><strong>Cookie Consent Banner:<\\/strong> Implement a cookie consent banner that informs users about the use of cookies on your website. This banner should allow users to either accept or reject cookies and provide them with the option to learn more about the types of cookies used.<br><br><strong>Cookie Categories<\\/strong>: Categorize cookies used in your application. Common categories include essential, functional, analytical, and marketing cookies. This classification helps users make informed choices about which cookies they want to accept.<\\/p><p>&nbsp;<\\/p><p><strong>Consent Management<\\/strong>: Store user consent preferences in a secure manner. If a user consents to certain types of cookies, set a cookie or store the preference in your database. Make it easy for users to change their preferences at any time.<\\/p><p>&nbsp;<\\/p><p><strong>Cookie Documentation<\\/strong>: Maintain a clear and accessible cookie policy or documentation explaining the purpose of each type of cookie used, their duration, and any third-party services involved. Keep this information up-to-date.<\\/p><p>&nbsp;<\\/p><p><strong>Anonymize IP Addresses<\\/strong>: If you\'re using Google Analytics or similar tools, configure them to anonymize IP addresses. This helps protect user privacy.<\\/p><p>&nbsp;<\\/p><p><strong>Data Retention<\\/strong>: Ensure that your application doesn\'t retain user data longer than necessary. Implement automated data deletion processes to comply with GDPR\'s data minimization principle.<br><br><strong>Data Access and Portability<\\/strong>: Provide users with the ability to access their data and, if requested, export it in a machine-readable format.<\\/p><p>&nbsp;<\\/p><p><strong>Data Protection Impact Assessment (DPIA)<\\/strong>: Perform DPIAs for data processing activities that present a high risk to user privacy.<\\/p><p>&nbsp;<\\/p><p><strong>Third-Party Services<\\/strong>: Review and document the use of third-party services and their GDPR compliance. Ensure that their data processing aligns with GDPR requirements.<\\/p><p>&nbsp;<\\/p><p><strong>User Education<\\/strong>: Educate your users about their rights and your data protection practices. This could include creating a privacy policy and including links to it in your application.<\\/p>\",\"status\":1}', '2020-07-04 23:42:52', '2023-12-17 12:25:52'),
(42, 'policy_pages.element', '{\"title\":\"Privacy Policy\",\"details\":\"<p><strong>Privacy Policy for Airprp<\\/strong><\\/p><p>At Airprp, we are committed to protecting the privacy and security of our users\' personal information. This Privacy Policy outlines how we collect, use, disclose, and safeguard your information when you use our website or mobile application (collectively referred to as the \\\"Platform\\\").<\\/p><p><strong>1. Information We Collect:<\\/strong><\\/p><p><strong>Personal Information:<\\/strong> When you create an account or make a booking on Airprp, we collect personal information such as your name, email address, phone number, and payment details (e.g., credit\\/debit card information).<\\/p><p><strong>Booking Information:<\\/strong> We collect information related to your bookings, including details about the accommodations you book, check-in\\/check-out dates, and any special requests or preferences.<\\/p><p><strong>Usage Data:<\\/strong> We may collect information about your interactions with the Platform, such as pages visited, features used, and other usage patterns.<\\/p><p><strong>2. How We Use Your Information:<\\/strong><\\/p><p><strong>To Provide Services:<\\/strong> We use your personal information to facilitate bookings, process payments, communicate with you about your bookings, and provide customer support.<\\/p><p><strong>To Improve Our Services:<\\/strong> We analyze usage data to improve the functionality, user experience, and content of the Platform.<\\/p><p><strong>To Protect Our Users:<\\/strong> We may use your information to detect and prevent fraud, abuse, or other unlawful activities.<\\/p><p><strong>3. Information Sharing and Disclosure:<\\/strong><\\/p><p><strong>With Hosts:<\\/strong> We share your booking details with the hosts to facilitate your stay. Hosts may have access to your name, contact information, and other relevant details.<\\/p><p><strong>With Service Providers:<\\/strong> We may share your information with third-party service providers who assist us in operating the Platform, processing payments, or providing customer support.<\\/p><p><strong>Legal Requirements:<\\/strong> We may disclose your information in response to lawful requests by public authorities, including to meet national security or law enforcement requirements.<\\/p><p><strong>4. Data Security:<\\/strong><\\/p><p>We implement appropriate technical and organizational measures to protect your personal information against unauthorized access, disclosure, alteration, or destruction.<\\/p><p>We use encryption technology to secure sensitive data during transmission.<\\/p><p><strong>5. Your Choices and Rights:<\\/strong><\\/p><p><strong>Account Information:<\\/strong> You can review and update your account information at any time by logging into your Airprp account.<\\/p><p><strong>Marketing Communications:<\\/strong> You can opt out of receiving promotional emails from us by following the instructions provided in the email or by contacting us directly.<\\/p><p><strong>Access and Correction:<\\/strong> You have the right to access, correct, or delete your personal information. Please contact us if you would like to exercise these rights.<\\/p><p><strong>6. Changes to This Privacy Policy:<\\/strong><\\/p><ul><li>We may update this Privacy Policy from time to time to reflect changes in our practices or legal requirements. We will notify you of any material changes by posting the updated policy on the Platform or by other means.<\\/li><\\/ul><p><strong>7. Contact Us:<\\/strong><\\/p><ul><li>If you have any questions, concerns, or complaints about our Privacy Policy or practices, or if you would like to exercise your rights, please contact us at [insert contact information].<\\/li><\\/ul><p>By using the Airprp Platform, you consent to the collection, use, and disclosure of your information as described in this Privacy Policy. Please review this policy carefully and contact us if you have any questions or concerns.<\\/p><p>\\u00a0<\\/p><p>Thank you for trusting Airprp with your accommodation needs. We are committed to protecting your privacy and providing you with a safe and enjoyable experience on our Platform.<\\/p><p>\\u00a0<\\/p><p>\\u00a0<\\/p><p>\\u00a0<\\/p><p><br \\/>\\u00a0<\\/p>\"}', '2021-06-09 08:50:42', '2024-03-20 17:03:46'),
(43, 'policy_pages.element', '{\"title\":\"Terms of Service\",\"details\":\"<h2><strong>Booking Terms and Conditions<\\/strong><\\/h2><p>\\u00a0<\\/p><p><br \\/><strong>Terms and Conditions for airprp.com<\\/strong><\\/p><p>\\u00a0<\\/p><p><strong>Introduction:<\\/strong><\\/p><p>Respected customer, Airprp.com serves as a mediator platform connecting property owners and tenants seeking accommodations. By accessing or using our platform, you agree to abide by the following terms and conditions.<\\/p><p>\\u00a0<\\/p><p><strong>Booking Process:<\\/strong><\\/p><ul><li>By making a booking through Airprp.com, you acknowledge and agree to these terms and conditions.<\\/li><li>Bookings are considered confirmed upon receipt of payment and are subject to availability.<\\/li><\\/ul><p><strong>Payment:<\\/strong><\\/p><ul><li>Payment in full is required at the time of booking, unless otherwise specified.<\\/li><li>We accept payment via debit\\/credit card, bank transfer, Easy Paisa, and Jazz Cash.<\\/li><li>All prices displayed are inclusive of applicable taxes and fees.<\\/li><\\/ul><p><strong>Cancellation Policy:<\\/strong><\\/p><ul><li>Cancellations made at least 48 hours prior to the arrival date will receive a full refund after deduction of transaction charges.<\\/li><li>Cancellations made within 24 hours of the arrival date will incur a 40% cancellation fee.<\\/li><li>No-shows or early departures will be charged the full amount of the booking.<\\/li><\\/ul><p><strong>Check-In and Check-Out:<\\/strong><\\/p><ul><li>Check-in time is from 2:00 PM, and check-out time is by 12:00 AM.<\\/li><li>Late check-out may be accommodated upon request, subject to availability and additional charges.<\\/li><\\/ul><p><strong>Guest Responsibilities:<\\/strong><\\/p><ul><li>Guests are responsible for any damages caused to the property during their stay and will be charged accordingly.<\\/li><li>Smoking in the room is only permitted with the host\'s permission.<\\/li><li>Pets are not allowed unless prior permission\\/arrangements have been made.<\\/li><\\/ul><p><strong>Liability:<\\/strong><\\/p><ul><li>Airprp.com is not liable for any loss, damage, or injury to guests\' belongings or persons during their stay.<\\/li><li>Guests are responsible for their own safety and security while on the property.<\\/li><\\/ul><p><strong>Changes to Bookings:<\\/strong><\\/p><ul><li>Changes to bookings may be made subject to availability and may incur additional charges.<\\/li><\\/ul><p><strong>Force Majeure:<\\/strong><\\/p><ul><li>Airprp.com is not liable for any failure or delay in performing our obligations due to circumstances beyond our control, including natural disasters, acts of terrorism, or government restrictions.<\\/li><\\/ul><p><strong>Privacy Policy:<\\/strong><\\/p><ul><li>We respect your privacy and will only use your personal information for the purpose of processing your booking and providing you with our services.<\\/li><\\/ul><p><strong>Dispute Resolution:<\\/strong><\\/p><ul><li>Any disputes arising from these terms and conditions will be resolved through negotiation in good faith. If no resolution can be reached, the matter may be referred to arbitration or mediation.<\\/li><\\/ul><p><strong>Governing Law:<\\/strong><\\/p><ul><li>These terms and conditions are governed by the laws of Pakistan, and any disputes will be subject to the exclusive jurisdiction of the courts of Pakistan.<\\/li><\\/ul><p><strong>Updates to Terms and Conditions:<\\/strong><\\/p><ul><li>We reserve the right to update these terms and conditions at any time without prior notice. Any changes will be effective immediately upon posting on our website.<\\/li><\\/ul><p>Thank you for choosing Airprp.com for your accommodation needs. If you have any questions or concerns regarding these terms and conditions, please feel free to contact us.<\\/p>\"}', '2021-06-09 08:51:18', '2024-03-22 14:53:00'),
(44, 'maintenance.data', '{\"description\":\"<div class=\\\"mb-5\\\" style=\\\"color: rgb(111, 111, 111); font-family: Nunito, sans-serif; margin-bottom: 3rem !important;\\\"><h3 class=\\\"mb-3\\\" style=\\\"text-align: center; font-weight: 600; line-height: 1.3; font-size: 24px; font-family: Exo, sans-serif; color: rgb(54, 54, 54);\\\">What information do we collect?<\\/h3><p class=\\\"font-18\\\" style=\\\"text-align: center; margin-right: 0px; margin-left: 0px; font-size: 18px !important;\\\">We gather data from you when you register on our site, submit a request, buy any services, react to an overview, or round out a structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site anonymously.<\\/p><\\/div>\"}', '2020-07-04 23:42:52', '2022-05-11 03:57:17'),
(45, 'feature.element', '{\"title\":\"sytry\",\"description\":\"ertyerty\",\"feature_icon\":\"<i class=\\\"fas fa-address-book\\\"><\\/i>\"}', '2022-10-17 10:23:22', '2022-10-17 10:23:22'),
(46, 'feature.element', '{\"title\":\"sytry\",\"description\":\"ertyerty\",\"feature_icon\":\"<i class=\\\"fas fa-address-book\\\"><\\/i>\"}', '2022-10-17 10:23:22', '2022-10-17 10:23:22'),
(51, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Navigating the Rental Market: Finding the Perfect House Property\",\"description\":\"<p>Renting a house is a significant decision, and finding the perfect property involves a blend of research, considerations, and smart decision-making. Here are key steps to help you navigate the house rental process smoothly:<\\/p><p>\\u00a0<\\/p><h4><strong>Research and Planning<\\/strong><\\/h4><p>Before diving into the rental market, it\'s essential to lay down a solid plan:<\\/p><p>\\u00a0<\\/p><p><strong>1. Define Your Needs:<\\/strong> Make a list of your requirements \\u2013 from the number of bedrooms and bathrooms to amenities like parking space, backyard, or proximity to schools and workplaces.<\\/p><p>\\u00a0<\\/p><p><strong>2. Set Your Budget:<\\/strong> Determine a realistic budget considering not just the rent but also utilities, maintenance costs, and potential increases over time.<\\/p><h4>\\u00a0<\\/h4><h4><strong>Scouting for Properties<\\/strong><\\/h4><p>Once your groundwork is set, it\'s time to explore available options:<\\/p><p>\\u00a0<\\/p><p><strong>1. Browse Listings:<\\/strong> Use online platforms, real estate websites, and local listings to search for properties that meet your criteria.<\\/p><p>\\u00a0<\\/p><p><strong>2. Attend Open Houses:<\\/strong> Visit open houses or schedule viewings to physically inspect the properties. Pay attention to the condition of the house, neighborhood, and available amenities.<\\/p><p>\\u00a0<\\/p><h4><strong>Making Informed Decisions<\\/strong><\\/h4><p>As you narrow down your choices, it\'s crucial to make informed decisions:<\\/p><p>\\u00a0<\\/p><p><strong>1. Review the Lease Agreement:<\\/strong> Carefully read and understand the lease terms, including rental duration, responsibilities, restrictions, and any potential penalties.<\\/p><p>\\u00a0<\\/p><p><strong>2. Inspect the Property:<\\/strong> Before signing anything, inspect the property thoroughly. Document existing damages or issues and ensure they are addressed before moving in.<\\/p><p>\\u00a0<\\/p><h4><strong>Finalizing the Deal<\\/strong><\\/h4><p>Once you\'ve found the ideal house, it\'s time to seal the deal:<\\/p><p>\\u00a0<\\/p><p><strong>1. Communicate with the Landlord:<\\/strong> Maintain open communication with the landlord or property manager. Clarify any uncertainties and ensure you\'re on the same page regarding maintenance and responsibilities.<\\/p><p>\\u00a0<\\/p><p><strong>2. Understand Your Rights:<\\/strong> Familiarize yourself with tenant rights and local rental laws to protect yourself and ensure a smooth tenancy.<\\/p><p>Renting a house property involves more than just finding a roof over your head. It\'s about securing a comfortable and safe living environment that aligns with your lifestyle and needs. By following these steps, you can navigate the rental market with confidence and find the perfect house to call home.<\\/p>\",\"blog_image\":\"656b134901cb51701516105.jpg\"}', '2023-03-21 08:45:08', '2023-12-17 12:42:20'),
(52, 'work_process.content', '{\"heading\":\"How It Works\",\"subheading\":\"This is quickly changing.\"}', '2023-11-16 08:07:32', '2024-03-24 23:17:23'),
(53, 'work_process.element', '{\"title\":\"Booking Your Place\",\"description\":\"Register, search your desired place\\/location and reserve place at very competitive prices.\",\"icon\":\"<i class=\\\"fas fa-umbrella-beach\\\"><\\/i>\"}', '2023-11-16 08:08:03', '2024-03-24 23:18:50'),
(54, 'work_process.element', '{\"title\":\"Find Apartment\",\"description\":\"Register free and find your desired place on desired location.\",\"icon\":\"<i class=\\\"fas fa-home\\\"><\\/i>\"}', '2023-11-16 08:09:02', '2024-03-24 15:46:03'),
(55, 'work_process.element', '{\"title\":\"Create Account\",\"description\":\"Click register, provide your details, verify your email, mobile No and NIC\",\"icon\":\"<i class=\\\"fas fa-plus-square\\\"><\\/i>\"}', '2023-11-16 08:09:29', '2024-03-24 15:47:10'),
(56, 'why_choose_us.content', '{\"heading\":\"Why Choose Us\",\"subheading\":\"That is quickly changing. Especially with other options out there like Couchsurfing and rentout where you can stay\"}', '2023-11-16 08:18:41', '2023-11-16 08:18:41'),
(57, 'why_choose_us.element', '{\"title\":\"Household Amenities\",\"description\":\"We assure a luxurious and peaceful stay with our hosts, we ensure our hosts provide all mentioned room amenities to customer.\",\"icon\":\"<i class=\\\"fas fa-republican\\\"><\\/i>\"}', '2023-11-16 08:19:18', '2024-03-24 15:23:36'),
(58, 'why_choose_us.element', '{\"title\":\"Diverse Location\",\"description\":\"We are open for  all cities, towns and villages  of Pakistan, become our host or guest to save money. Make your trip peaceful.\",\"icon\":\"<i class=\\\"fas fa-location-arrow\\\"><\\/i>\"}', '2023-11-16 08:19:52', '2024-03-24 15:21:27'),
(59, 'why_choose_us.element', '{\"title\":\"Reviews From Guests\",\"description\":\"You opinions matters, you are requested to leave a review if your satisfied with our services and also reviews about our hosts\",\"icon\":\"<i class=\\\"fas fa-comments-dollar\\\"><\\/i>\"}', '2023-11-16 08:20:28', '2024-03-24 15:19:03'),
(60, 'why_choose_us.element', '{\"title\":\"Guest Refund Policy\",\"description\":\"Guest is liable for 90% 24 hours prior check in time, 50% refund 12 hours prior check in time. No refund for no show.\",\"icon\":\"<i class=\\\"fas fa-vote-yea\\\"><\\/i>\"}', '2023-11-16 08:20:56', '2024-03-24 15:17:30'),
(61, 'testimonial.content', '{\"heading\":\"Our Client Feedback\",\"subheading\":\"That is quickly changing. Especially with other Couchsurfing and rentou\"}', '2023-11-16 08:42:37', '2023-11-16 08:42:37'),
(62, 'testimonial.element', '{\"has_image\":[\"1\"],\"name\":\"Leslie Alexander\",\"designation\":\"Customer, USA\",\"rating\":\"5\",\"description\":\"The passage experienced a surge in popularity during the serts when Letraiton.\",\"image\":\"6555d8529b51d1700124754.png\"}', '2023-11-16 08:52:34', '2023-11-16 08:52:34'),
(63, 'testimonial.element', '{\"has_image\":[\"1\"],\"name\":\"Leslie Alexander\",\"designation\":\"Customer, USA\",\"rating\":\"4\",\"description\":\"The passage experienced a surge in popularity during the serts when Letraiton.\",\"image\":\"6555d9a58cc321700125093.png\"}', '2023-11-16 08:53:07', '2023-11-16 08:58:13'),
(64, 'testimonial.element', '{\"has_image\":[\"1\"],\"name\":\"Leslie Alexander\",\"designation\":\"Customer, USA\",\"rating\":\"3\",\"description\":\"The passage experienced a surge in popularity during the serts when Letraiton.\",\"image\":\"6555d9b24baa11700125106.png\"}', '2023-11-16 08:57:53', '2023-11-16 08:58:26'),
(65, 'testimonial.element', '{\"has_image\":[\"1\"],\"name\":\"Leslie Alexander\",\"designation\":\"Customer, USA\",\"rating\":\"4\",\"description\":\"The passage experienced a surge in popularity during the serts when Letraiton.\",\"image\":\"6555d9d7acd3a1700125143.png\"}', '2023-11-16 08:59:03', '2023-11-16 08:59:03'),
(66, 'testimonial.element', '{\"has_image\":[\"1\"],\"name\":\"Leslie Alexander\",\"designation\":\"Customer, USA\",\"rating\":\"4\",\"description\":\"The passage experienced a surge in popularity during the serts when Letraiton.\",\"image\":\"6555da088864b1700125192.png\"}', '2023-11-16 08:59:42', '2023-11-16 08:59:52'),
(68, 'faq.element', '{\"question\":\"How do I search for accommodations in a specific location?\",\"answer\":\"<p>To find accommodations in your preferred location, simply enter the destination in the search bar. Listings matching your criteria will appear. Select the accommodation that suits you best and click \\\"Book Now\\\" to proceed with payment using your credit or debit card.<\\/p>\"}', '2023-11-16 09:19:34', '2024-03-20 15:25:03'),
(69, 'faq.element', '{\"question\":\"How to Become a Host on Airprp?\",\"answer\":\"<p><strong>Create Your Listing:<\\/strong><\\/p><ul><li>After logging in click \\u00a0add your listing button.<\\/li><li>Select property type like, room, villa or apartment etc.<\\/li><li>Add property details and add appealing description and photos of your space.<\\/li><li>Highlight unique features in your listing title and description, such as a scenic view or pool, and mention any important details like stairs or parking.<\\/li><\\/ul><p><strong>Organize the Logistics:<\\/strong><\\/p><ul><li>Add House Rules to your listing to set guest expectations regarding smoking, pets, or parties.<\\/li><li>Manage your availability by updating your airprp.com calendar according to when you can host.<\\/li><li>Set your nightly price using tools like Smart Pricing to match demand, with options for custom pricing controls.<\\/li><\\/ul><p><strong>Review Local Laws:<\\/strong><\\/p><ul><li>Understand any regulations in your area regarding home sharing, such as hosting limits, registration requirements, or taxes.<\\/li><\\/ul><p><strong>Prepare Your Space:<\\/strong><\\/p><ul><li>Ensure your space is clean and well-prepared for guests, focusing on accessible areas like bedrooms, bathrooms, and the kitchen.<\\/li><li>Safely store valuables or consider leaving them with trusted individuals.<\\/li><li>Provide essential amenities like toiletries, linens, and towels, and consider extras for added comfort.<\\/li><li>Arrange check-in details, either personally or with assistance, and consider providing instructions via the airprp.com app.<\\/li><li>Add thoughtful touches like a house manual or a small welcome gift to enhance the guest experience.<\\/li><\\/ul><p>Once your listing and space are ready, you\'re all set to start welcoming guests and earning income on airprp.com.<\\/p><p>\\u00a0<\\/p><p>\\u00a0<\\/p><p>\\u00a0<\\/p><p><br \\/>\\u00a0<\\/p>\"}', '2023-11-16 09:20:20', '2024-03-22 18:10:47'),
(70, 'faq.element', '{\"question\":\"What is the criteria to list a space on Airprp?\",\"answer\":\"<p><strong>Listing Your Space on Airprp: A Beginner\'s Guide to Hosting<\\/strong><\\/p><p>Do you find yourself with an extra room or perhaps a cozy boat that\'s not getting much use? Let\'s transform it into something worthwhile! With Airprp, even the most modest of spaces can turn into sought-after retreats.<\\/p><p><strong>Make Your Space Shine<\\/strong> No matter how small or simple your space may seem, there\'s always a way to make it special. Focus on creating a comfortable atmosphere and use clear, descriptive language along with captivating photos to showcase its charm.<\\/p><p><strong>All Kinds of Spaces Welcome<\\/strong> Your space doesn\'t have to be extravagant to catch someone\'s eye. Whether it\'s a city apartment, a rustic cabin, or a charming treehouse, every spot has its own unique appeal.<\\/p><p><strong>Describe Your Space<\\/strong> Is it a cozy cottage, a trendy urban loft, or perhaps a quirky houseboat? Let potential guests know exactly what type of accommodation you\'re offering so they can envision their stay.<\\/p><p><strong>Be Honest and Transparent<\\/strong> It\'s important to be upfront about the features and limitations of your space. Highlight its strengths while acknowledging any shortcomings to set realistic expectations for your guests.<\\/p><p><strong>Utilize Visuals<\\/strong> A picture is worth a thousand words, especially in the world of Airprp. Use high-quality photos to showcase the best features of your space, whether it\'s a furry friend greeting guests or a cozy reading nook.<\\/p><p><strong>Set the Right Price<\\/strong> Your space doesn\'t have to be luxurious to attract guests. Start with a fair and competitive price point, considering the value you offer and the experience guests can expect.<\\/p><p>Get started on Airprp today and unlock the potential of your space! Who knows, it could become someone\'s favorite destination for their next getaway.<\\/p><p>\\u00a0<\\/p><p>\\u00a0<\\/p><p>\\u00a0<\\/p><p><br \\/>\\u00a0<\\/p>\"}', '2023-11-16 09:20:40', '2024-03-20 15:43:41'),
(71, 'faq.element', '{\"question\":\"What is the cancellation policy for bookings?\",\"answer\":\"<p><strong>Cancellation Policy:<\\/strong><\\/p><p><strong>Full Refund for Cancellations Made 48 Hours Prior to Check-In:<\\/strong><\\/p><ul><li>Guests who cancel their booking at least 48 hours before the scheduled check-in time will receive a 90% refund of the booking amount.<\\/li><\\/ul><p><strong>Partial Refund for Cancellations Made 24 Hours Prior to Check-In:<\\/strong><\\/p><ul><li>If a cancellation is made between 48 hours and 24 hours before the scheduled check-in time, guests will be charged a cancellation fee of 40% of the booking amount, and the remaining 60% will be refunded.<\\/li><\\/ul><p><strong>No Refund for Cancellations Within 24 Hours of Check-In:<\\/strong><\\/p><ul><li>Cancellations made less than 24 hours before the scheduled check-in time or no show will not be eligible for any refund, and the full booking amount will be charged.<\\/li><\\/ul><p><strong>Refund Processing Time:<\\/strong><\\/p><ul><li>Refunds for eligible cancellations will be processed within 1-2 business days and will be issued to the original payment method used for the booking.<\\/li><\\/ul><p><strong>Exceptions:<\\/strong><\\/p><ul><li>In cases of extenuating circumstances or emergencies, such as natural disasters or medical emergencies, guests may be eligible for a full refund regardless of the cancellation timing. Documentation may be required to support such requests.<\\/li><\\/ul><p>Please note that this cancellation policy applies to standard bookings. Special promotions or discounted rates may have different cancellation terms, which will be clearly communicated at the time of booking.<\\/p><p>It\'s important for guests to review and understand the cancellation policy before making a booking. We encourage guests to consider purchasing travel insurance to protect against unexpected cancellations or disruptions to their travel plans.<\\/p><p>\\u00a0<\\/p><p>\\u00a0<\\/p><p>\\u00a0<\\/p><p><br \\/>\\u00a0<\\/p>\"}', '2023-11-16 09:21:00', '2024-03-22 18:14:06'),
(72, 'faq.element', '{\"question\":\"Are there any additional fees or taxes customer should be aware of?\",\"answer\":\"<p><strong>Additional Fees and Taxes:<\\/strong><\\/p><p>At present, there are no hidden charges associated with your booking. The price you see during the booking process is the total amount you\'ll pay, inclusive of all applicable taxes and fees.<\\/p><p>We believe in transparency and strive to provide our guests with upfront pricing without any surprises. However, it\'s essential to note that if there are any changes to our pricing or policies in the future, we will promptly update our terms and clearly communicate any additional fees or taxes.<\\/p><p>Your satisfaction and trust are of utmost importance to us, and we are committed to ensuring a seamless and transparent booking experience. Should you have any questions or concerns regarding pricing or fees, please don\'t hesitate to reach out to our customer support team for assistance.<\\/p><p>We appreciate your understanding and look forward to welcoming you for a delightful stay with us.<\\/p>\"}', '2023-11-16 09:21:23', '2024-03-20 16:26:57'),
(73, 'faq.element', '{\"question\":\"How much does Airprp charge Hosts?\",\"answer\":\"<p>\\u00a0<\\/p><p><strong>airprp.com Host Charges Policy:<\\/strong><\\/p><p>Currently, airprp operates on a platform where neither the customer nor the host is charged any fees. We believe in fostering a mutually beneficial environment where both parties can benefit without any additional costs. However 10% will be deducted from host as an operational cost.\\u00a0<\\/p><p>Our primary focus is on providing a reliable platform for the local community, allowing transactions to be conducted in local currency (PKR) without being affected by fluctuations in the dollar exchange rate. This ensures transparency and convenience for both hosts and guests.<\\/p><p>Furthermore, we prioritize ensuring that hosts receive fair compensation for their space, without any deductions or fees from their earnings.<\\/p><p>While we currently do not impose any charges on hosts, it\'s important to note that our policies may evolve in the future. As we continue to enhance our services and offerings, there may be instances where we introduce fees or charges for specific services.<\\/p><p>Rest assured, any changes to our charging policies will be communicated clearly and transparently to both hosts and guests well in advance. Our aim is to maintain fairness and transparency while providing a seamless experience for all users of the Airprp platform.<\\/p><p>Should you have any further questions or concerns regarding our charging policies, please don\'t hesitate to reach out to our customer support team for assistance. We value your trust and strive to ensure that your experience with Airprp is positive and rewarding.<\\/p>\"}', '2023-11-16 09:21:39', '2024-03-22 18:19:55'),
(74, 'faq.element', '{\"question\":\"Are there any discounts or special offers available for longer stays or repeat guests?\",\"answer\":\"<p><strong>Discounts for Longer Stays:<\\/strong><\\/p><p>At Airprp, we value and appreciate guests who choose to stay with us for extended periods. To reward this loyalty and encourage longer stays, we offer a special discount for bookings of extended durations.<\\/p><p><strong>30% Discount on Per Night Price:<\\/strong><\\/p><p>Guests who book stays of [number] nights or longer are eligible for a significant discount of 30% off the per-night price. This means that the longer you stay, the more you save on your overall accommodation costs.<\\/p><p><strong>Benefits of Longer Stays:<\\/strong><\\/p><p>In addition to enjoying cost savings, longer stays offer guests the opportunity to immerse themselves fully in the local community and experience all that the area has to offer. Whether you\'re traveling for business or leisure, an extended stay allows for a more relaxed and immersive experience.<\\/p><p><strong>Flexible Booking Options:<\\/strong><\\/p><p>Our flexible booking system allows guests to easily extend their stay if they wish to prolong their visit. Simply contact our customer support team or manage your booking through our website or app to adjust your reservation as needed.<\\/p><p><strong>Terms and Conditions:<\\/strong><\\/p><ul><li>The 30% discount applies to bookings of [number] nights or longer and is automatically applied to the per-night price.<\\/li><li>Discounts are subject to availability and may vary based on the specific property and booking dates.<\\/li><li>Please note that discounts for longer stays cannot be combined with other promotional offers or discounts.<\\/li><\\/ul><p><strong>Experience the Benefits of Extended Stays:<\\/strong><\\/p><p>Whether you\'re planning a long-term business trip or seeking an extended vacation, take advantage of our special discounts for longer stays and enjoy all the comforts of home during your time with us.<\\/p><p>Should you have any questions or require assistance with your booking, our dedicated customer support team is available to help. We look forward to welcoming you for a memorable and rewarding stay at Airprp.<\\/p><p>\\u00a0<\\/p><p>\\u00a0<\\/p><p>\\u00a0<\\/p><p><br \\/>\\u00a0<\\/p>\"}', '2023-11-16 09:21:49', '2024-03-20 16:38:36'),
(75, 'faq.element', '{\"question\":\"User Is there a customer support team available to assist with any questions or concerns?\",\"answer\":\"<p><strong>Customer Support Assistance:<\\/strong><\\/p><p>At Airprp, we understand that your comfort and satisfaction are paramount. That\'s why we offer dedicated customer support services to assist you with any questions, concerns, or assistance you may need throughout your booking process and stay.<\\/p><p><strong>24\\/7 Availability:<\\/strong><\\/p><p>Our customer support team is available around the clock, 24 hours a day, 7 days a week. Whether you have a query in the middle of the night or require assistance during the day, you can rest assured that there will always be a knowledgeable representative ready to assist you promptly.<\\/p><p><strong>Immediate Resolution:<\\/strong><\\/p><p>We prioritize resolving your issues and concerns in a timely manner. When you reach out to our customer support team, you can expect immediate attention and swift resolution to ensure that your experience with Airprp remains seamless and hassle-free.<\\/p><p><strong>Comprehensive Assistance:<\\/strong><\\/p><p>Our dedicated representatives are well-equipped to handle a wide range of inquiries and requests. Whether you need assistance with booking modifications, have questions about property amenities, or require local recommendations, our team is here to provide you with the information and support you need.<\\/p><p><strong>Multiple Contact Options:<\\/strong><\\/p><p>We offer multiple convenient channels for you to reach our customer support team, including phone, email, and live chat. Choose the method that works best for you, and we\'ll be ready to assist you promptly.<\\/p><p><strong>Feedback and Suggestions:<\\/strong><\\/p><p>Your feedback is invaluable to us. We welcome your suggestions, comments, and feedback on how we can further improve our services to better meet your needs and enhance your experience with Airprp.<\\/p><p><strong>Your Satisfaction is Our Priority:<\\/strong><\\/p><p>At Airprp, your satisfaction is our top priority. Our dedicated customer support team is committed to ensuring that every aspect of your booking experience and stay meets or exceeds your expectations. If there\'s anything we can do to enhance your experience, please don\'t hesitate to reach out to us.<\\/p><p>We look forward to assisting you and providing you with exceptional service throughout your journey with Airprp.<\\/p>\"}', '2023-11-16 09:21:58', '2024-03-20 16:47:06'),
(76, 'faq.element', '{\"question\":\"How do I leave a review for my host or accommodations after my stay?\",\"answer\":\"<p><strong>Leaving a Review:<\\/strong><\\/p><p>After your stay, you have the opportunity to share your experience and leave a review for both your host and the accommodations you booked. Your feedback not only helps future guests make informed decisions but also provides valuable insights for hosts and Airprp to improve their services.<\\/p><p><strong>Reviewing Your Host:<\\/strong><\\/p><p>In the review section of the property you booked, you can leave an honest review about your host. Share your thoughts on their hospitality, communication, and any other aspects of your interaction with them. Whether you had a positive or negative experience, your feedback helps hosts understand what they\'re doing well and where they can improve.<\\/p><p><strong>Reviewing the Accommodations:<\\/strong><\\/p><p>Alongside your host review, you\'ll also have the opportunity to leave a review about the accommodations themselves. Describe your overall experience, highlighting the amenities, cleanliness, and comfort of the space. Be detailed and specific to provide valuable insights for future guests.<\\/p><p><strong>Reviewing Airprp Services:<\\/strong><\\/p><p>In addition to reviewing your host and accommodations, you can also leave feedback about your experience with Airprp\'s services. Share your thoughts on the booking process, customer support, and any other aspects of your interaction with Airprp. Your feedback helps us understand what we\'re doing well and where we can make improvements to enhance your experience.<\\/p><p><strong>Providing Suggestions for Improvement:<\\/strong><\\/p><p>Whether you were satisfied with your stay or have suggestions for improvement, your feedback is valuable. Feel free to share any suggestions or recommendations you may have for your host or Airprp. Your insights help us continually strive for excellence and ensure that future guests have an exceptional experience.<\\/p><p><strong>Honesty and Transparency:<\\/strong><\\/p><p>We encourage honesty and transparency in all reviews. Your feedback helps create a trustworthy and reliable community where guests can make informed decisions and hosts can provide exceptional service.<\\/p><p>Thank you for taking the time to leave a review and share your experience. Your feedback is instrumental in shaping the future of Airprp and ensuring that every guest has a memorable stay.<\\/p><p>\\u00a0<\\/p><p>\\u00a0<\\/p><p>\\u00a0<\\/p><p><br \\/>\\u00a0<\\/p>\"}', '2023-11-16 09:22:06', '2024-03-20 16:52:57'),
(77, 'faq.element', '{\"question\":\"What payment methods are accepted?\",\"answer\":\"<p><strong>Accepted Payment Methods:<\\/strong><\\/p><p>At Airprp, we offer convenient and secure payment options to ensure a smooth booking process for our guests. Currently, we accept payment via credit and debit cards.<\\/p><p><strong>Credit and Debit Cards:<\\/strong><\\/p><p>You can easily complete your booking by using your credit or debit card. We accept major credit cards, including Visa, Mastercard, American Express, and Discover, as well as debit cards that are affiliated with these networks.<\\/p><p><strong>Secure Transactions:<\\/strong><\\/p><p>We prioritize the security of your payment information and use industry-standard encryption technology to safeguard your transactions. When you make a payment on Airprp, you can trust that your personal and financial information is protected.<\\/p><p><strong>Booking Confirmation:<\\/strong><\\/p><p>Once your payment is processed successfully, you\'ll receive a booking confirmation email containing all the details of your reservation. This confirmation serves as proof of your booking and includes important information such as your booking ID, check-in and check-out dates, and contact details for your host.<\\/p><p><strong>Cancellation and Refunds:<\\/strong><\\/p><p>In the event that you need to cancel your booking, please refer to our cancellation policy for details on eligibility for refunds and any applicable cancellation fees. Refunds for cancellations are typically processed back to the original payment method used for the booking.<\\/p><p><strong>Additional Information:<\\/strong><\\/p><ul><li>Please ensure that the billing information entered during the booking process matches the details associated with your credit or debit card to avoid any payment processing issues.<\\/li><li>If you encounter any issues or have questions regarding the payment process, our customer support team is available 24\\/7 to assist you.<\\/li><li>We may introduce additional payment methods in the future to further enhance the convenience and flexibility of our booking platform. Stay tuned for updates on new payment options.<\\/li><\\/ul><p>Thank you for choosing Airprp for your accommodation needs. We look forward to providing you with a seamless booking experience and a memorable stay.<\\/p>\"}', '2023-11-16 09:22:25', '2024-03-20 16:57:10'),
(82, 'faq.content', '{\"heading\":\"Questions and Answers\",\"subheading\":\"Frequently changing\"}', '2023-11-16 09:26:31', '2024-03-09 16:28:19'),
(83, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Renting 101: Essential Steps for Securing Your Ideal House\",\"description\":\"<p>Renting a house is a significant decision, and finding the perfect property involves a blend of research, considerations, and smart decision-making. Here are key steps to help you navigate the house rental process smoothly:<\\/p><p>\\u00a0<\\/p><h4><strong>Research and Planning<\\/strong><\\/h4><p>Before diving into the rental market, it\'s essential to lay down a solid plan:<\\/p><p>\\u00a0<\\/p><p><strong>1. Define Your Needs:<\\/strong> Make a list of your requirements \\u2013 from the number of bedrooms and bathrooms to amenities like parking space, backyard, or proximity to schools and workplaces.<\\/p><p>\\u00a0<\\/p><p><strong>2. Set Your Budget:<\\/strong> Determine a realistic budget considering not just the rent but also utilities, maintenance costs, and potential increases over time.<\\/p><h4>\\u00a0<\\/h4><h4><strong>Scouting for Properties<\\/strong><\\/h4><p>Once your groundwork is set, it\'s time to explore available options:<\\/p><p>\\u00a0<\\/p><p><strong>1. Browse Listings:<\\/strong> Use online platforms, real estate websites, and local listings to search for properties that meet your criteria.<\\/p><p>\\u00a0<\\/p><p><strong>2. Attend Open Houses:<\\/strong> Visit open houses or schedule viewings to physically inspect the properties. Pay attention to the condition of the house, neighborhood, and available amenities.<\\/p><p>\\u00a0<\\/p><h4><strong>Making Informed Decisions<\\/strong><\\/h4><p>As you narrow down your choices, it\'s crucial to make informed decisions:<\\/p><p>\\u00a0<\\/p><p><strong>1. Review the Lease Agreement:<\\/strong> Carefully read and understand the lease terms, including rental duration, responsibilities, restrictions, and any potential penalties.<\\/p><p>\\u00a0<\\/p><p><strong>2. Inspect the Property:<\\/strong> Before signing anything, inspect the property thoroughly. Document existing damages or issues and ensure they are addressed before moving in.<\\/p><p>\\u00a0<\\/p><h4><strong>Finalizing the Deal<\\/strong><\\/h4><p>Once you\'ve found the ideal house, it\'s time to seal the deal:<\\/p><p>\\u00a0<\\/p><p><strong>1. Communicate with the Landlord:<\\/strong> Maintain open communication with the landlord or property manager. Clarify any uncertainties and ensure you\'re on the same page regarding maintenance and responsibilities.<\\/p><p>\\u00a0<\\/p><p><strong>2. Understand Your Rights:<\\/strong> Familiarize yourself with tenant rights and local rental laws to protect yourself and ensure a smooth tenancy.<\\/p><p>Renting a house property involves more than just finding a roof over your head. It\'s about securing a comfortable and safe living environment that aligns with your lifestyle and needs. By following these steps, you can navigate the rental market with confidence and find the perfect house to call home.<\\/p>\",\"blog_image\":\"656b0f14311851701515028.jpg\"}', '2023-11-16 09:47:28', '2023-12-17 12:42:28');
INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `created_at`, `updated_at`) VALUES
(84, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"From Listings to Keys: Your Comprehensive House Rental Handbook\",\"description\":\"<p>Renting a house is a significant decision, and finding the perfect property involves a blend of research, considerations, and smart decision-making. Here are key steps to help you navigate the house rental process smoothly:<\\/p><p>\\u00a0<\\/p><h4><strong>Research and Planning<\\/strong><\\/h4><p>Before diving into the rental market, it\'s essential to lay down a solid plan:<\\/p><p>\\u00a0<\\/p><p><strong>1. Define Your Needs:<\\/strong> Make a list of your requirements \\u2013 from the number of bedrooms and bathrooms to amenities like parking space, backyard, or proximity to schools and workplaces.<\\/p><p>\\u00a0<\\/p><p><strong>2. Set Your Budget:<\\/strong> Determine a realistic budget considering not just the rent but also utilities, maintenance costs, and potential increases over time.<\\/p><h4>\\u00a0<\\/h4><h4><strong>Scouting for Properties<\\/strong><\\/h4><p>Once your groundwork is set, it\'s time to explore available options:<\\/p><p>\\u00a0<\\/p><p><strong>1. Browse Listings:<\\/strong> Use online platforms, real estate websites, and local listings to search for properties that meet your criteria.<\\/p><p>\\u00a0<\\/p><p><strong>2. Attend Open Houses:<\\/strong> Visit open houses or schedule viewings to physically inspect the properties. Pay attention to the condition of the house, neighborhood, and available amenities.<\\/p><p>\\u00a0<\\/p><h4><strong>Making Informed Decisions<\\/strong><\\/h4><p>As you narrow down your choices, it\'s crucial to make informed decisions:<\\/p><p>\\u00a0<\\/p><p><strong>1. Review the Lease Agreement:<\\/strong> Carefully read and understand the lease terms, including rental duration, responsibilities, restrictions, and any potential penalties.<\\/p><p>\\u00a0<\\/p><p><strong>2. Inspect the Property:<\\/strong> Before signing anything, inspect the property thoroughly. Document existing damages or issues and ensure they are addressed before moving in.<\\/p><p>\\u00a0<\\/p><h4><strong>Finalizing the Deal<\\/strong><\\/h4><p>Once you\'ve found the ideal house, it\'s time to seal the deal:<\\/p><p>\\u00a0<\\/p><p><strong>1. Communicate with the Landlord:<\\/strong> Maintain open communication with the landlord or property manager. Clarify any uncertainties and ensure you\'re on the same page regarding maintenance and responsibilities.<\\/p><p>\\u00a0<\\/p><p><strong>2. Understand Your Rights:<\\/strong> Familiarize yourself with tenant rights and local rental laws to protect yourself and ensure a smooth tenancy.<\\/p><p>Renting a house property involves more than just finding a roof over your head. It\'s about securing a comfortable and safe living environment that aligns with your lifestyle and needs. By following these steps, you can navigate the rental market with confidence and find the perfect house to call home.<\\/p>\",\"blog_image\":\"656b178b004c51701517195.jpg\"}', '2023-11-16 09:47:59', '2023-12-17 12:42:34'),
(85, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"House Hunting? Mastering the Art of Renting Properties\",\"description\":\"<p>Renting a house is a significant decision, and finding the perfect property involves a blend of research, considerations, and smart decision-making. Here are key steps to help you navigate the house rental process smoothly:<\\/p><p>\\u00a0<\\/p><h4><strong>Research and Planning<\\/strong><\\/h4><p>Before diving into the rental market, it\'s essential to lay down a solid plan:<\\/p><p>\\u00a0<\\/p><p><strong>1. Define Your Needs:<\\/strong> Make a list of your requirements \\u2013 from the number of bedrooms and bathrooms to amenities like parking space, backyard, or proximity to schools and workplaces.<\\/p><p>\\u00a0<\\/p><p><strong>2. Set Your Budget:<\\/strong> Determine a realistic budget considering not just the rent but also utilities, maintenance costs, and potential increases over time.<\\/p><h4>\\u00a0<\\/h4><h4><strong>Scouting for Properties<\\/strong><\\/h4><p>Once your groundwork is set, it\'s time to explore available options:<\\/p><p>\\u00a0<\\/p><p><strong>1. Browse Listings:<\\/strong> Use online platforms, real estate websites, and local listings to search for properties that meet your criteria.<\\/p><p>\\u00a0<\\/p><p><strong>2. Attend Open Houses:<\\/strong> Visit open houses or schedule viewings to physically inspect the properties. Pay attention to the condition of the house, neighborhood, and available amenities.<\\/p><p>\\u00a0<\\/p><h4><strong>Making Informed Decisions<\\/strong><\\/h4><p>As you narrow down your choices, it\'s crucial to make informed decisions:<\\/p><p>\\u00a0<\\/p><p><strong>1. Review the Lease Agreement:<\\/strong> Carefully read and understand the lease terms, including rental duration, responsibilities, restrictions, and any potential penalties.<\\/p><p>\\u00a0<\\/p><p><strong>2. Inspect the Property:<\\/strong> Before signing anything, inspect the property thoroughly. Document existing damages or issues and ensure they are addressed before moving in.<\\/p><p>\\u00a0<\\/p><h4><strong>Finalizing the Deal<\\/strong><\\/h4><p>Once you\'ve found the ideal house, it\'s time to seal the deal:<\\/p><p>\\u00a0<\\/p><p><strong>1. Communicate with the Landlord:<\\/strong> Maintain open communication with the landlord or property manager. Clarify any uncertainties and ensure you\'re on the same page regarding maintenance and responsibilities.<\\/p><p>\\u00a0<\\/p><p><strong>2. Understand Your Rights:<\\/strong> Familiarize yourself with tenant rights and local rental laws to protect yourself and ensure a smooth tenancy.<\\/p><p>Renting a house property involves more than just finding a roof over your head. It\'s about securing a comfortable and safe living environment that aligns with your lifestyle and needs. By following these steps, you can navigate the rental market with confidence and find the perfect house to call home.<\\/p>\",\"blog_image\":\"656b0e8ed75c81701514894.jpg\"}', '2023-11-16 09:55:59', '2023-12-17 12:42:39'),
(86, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Insider Secrets: Renting a House Property Stress-Free\",\"description\":\"<p>Renting a house is a significant decision, and finding the perfect property involves a blend of research, considerations, and smart decision-making. Here are key steps to help you navigate the house rental process smoothly:<\\/p><p>\\u00a0<\\/p><h4><strong>Research and Planning<\\/strong><\\/h4><p>Before diving into the rental market, it\'s essential to lay down a solid plan:<\\/p><p>\\u00a0<\\/p><p><strong>1. Define Your Needs:<\\/strong> Make a list of your requirements \\u2013 from the number of bedrooms and bathrooms to amenities like parking space, backyard, or proximity to schools and workplaces.<\\/p><p>\\u00a0<\\/p><p><strong>2. Set Your Budget:<\\/strong> Determine a realistic budget considering not just the rent but also utilities, maintenance costs, and potential increases over time.<\\/p><h4>\\u00a0<\\/h4><h4><strong>Scouting for Properties<\\/strong><\\/h4><p>Once your groundwork is set, it\'s time to explore available options:<\\/p><p>\\u00a0<\\/p><p><strong>1. Browse Listings:<\\/strong> Use online platforms, real estate websites, and local listings to search for properties that meet your criteria.<\\/p><p>\\u00a0<\\/p><p><strong>2. Attend Open Houses:<\\/strong> Visit open houses or schedule viewings to physically inspect the properties. Pay attention to the condition of the house, neighborhood, and available amenities.<\\/p><p>\\u00a0<\\/p><h4><strong>Making Informed Decisions<\\/strong><\\/h4><p>As you narrow down your choices, it\'s crucial to make informed decisions:<\\/p><p>\\u00a0<\\/p><p><strong>1. Review the Lease Agreement:<\\/strong> Carefully read and understand the lease terms, including rental duration, responsibilities, restrictions, and any potential penalties.<\\/p><p>\\u00a0<\\/p><p><strong>2. Inspect the Property:<\\/strong> Before signing anything, inspect the property thoroughly. Document existing damages or issues and ensure they are addressed before moving in.<\\/p><p>\\u00a0<\\/p><h4><strong>Finalizing the Deal<\\/strong><\\/h4><p>Once you\'ve found the ideal house, it\'s time to seal the deal:<\\/p><p>\\u00a0<\\/p><p><strong>1. Communicate with the Landlord:<\\/strong> Maintain open communication with the landlord or property manager. Clarify any uncertainties and ensure you\'re on the same page regarding maintenance and responsibilities.<\\/p><p>\\u00a0<\\/p><p><strong>2. Understand Your Rights:<\\/strong> Familiarize yourself with tenant rights and local rental laws to protect yourself and ensure a smooth tenancy.<\\/p><p>Renting a house property involves more than just finding a roof over your head. It\'s about securing a comfortable and safe living environment that aligns with your lifestyle and needs. By following these steps, you can navigate the rental market with confidence and find the perfect house to call home.<\\/p>\",\"blog_image\":\"656b0e00716e21701514752.jpg\"}', '2023-11-16 09:57:43', '2023-12-17 12:42:49'),
(87, 'social_icon.element', '{\"title\":\"Twitter\",\"social_icon\":\"<i class=\\\"fab fa-twitter\\\"><\\/i>\",\"url\":\"https:\\/\\/www.twitter.com\"}', '2023-11-16 11:02:24', '2023-11-16 11:02:24'),
(88, 'social_icon.element', '{\"title\":\"LInkedIn\",\"social_icon\":\"<i class=\\\"fab fa-linkedin-in\\\"><\\/i>\",\"url\":\"https:\\/\\/www.linkedin.com\\/\"}', '2023-11-16 11:03:38', '2023-11-16 11:03:38'),
(89, 'social_icon.element', '{\"title\":\"Instagram\",\"social_icon\":\"<i class=\\\"fab fa-instagram\\\"><\\/i>\",\"url\":\"https:\\/\\/www.instagram.com\\/\"}', '2023-11-16 11:04:49', '2023-11-16 11:04:49'),
(90, 'recent_item.content', '{\"heading\":\"Recently Added Properties\"}', '2023-11-21 05:43:18', '2023-11-21 05:43:18'),
(91, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"House Rental Mastery: Your Roadmap to a Smooth Tenancy\",\"description\":\"<p>Renting a house is a significant decision, and finding the perfect property involves a blend of research, considerations, and smart decision-making. Here are key steps to help you navigate the house rental process smoothly:<\\/p><p>\\u00a0<\\/p><h4><strong>Research and Planning<\\/strong><\\/h4><p>Before diving into the rental market, it\'s essential to lay down a solid plan:<\\/p><p>\\u00a0<\\/p><p><strong>1. Define Your Needs:<\\/strong> Make a list of your requirements \\u2013 from the number of bedrooms and bathrooms to amenities like parking space, backyard, or proximity to schools and workplaces.<\\/p><p>\\u00a0<\\/p><p><strong>2. Set Your Budget:<\\/strong> Determine a realistic budget considering not just the rent but also utilities, maintenance costs, and potential increases over time.<\\/p><h4>\\u00a0<\\/h4><h4><strong>Scouting for Properties<\\/strong><\\/h4><p>Once your groundwork is set, it\'s time to explore available options:<\\/p><p>\\u00a0<\\/p><p><strong>1. Browse Listings:<\\/strong> Use online platforms, real estate websites, and local listings to search for properties that meet your criteria.<\\/p><p>\\u00a0<\\/p><p><strong>2. Attend Open Houses:<\\/strong> Visit open houses or schedule viewings to physically inspect the properties. Pay attention to the condition of the house, neighborhood, and available amenities.<\\/p><p>\\u00a0<\\/p><h4><strong>Making Informed Decisions<\\/strong><\\/h4><p>As you narrow down your choices, it\'s crucial to make informed decisions:<\\/p><p>\\u00a0<\\/p><p><strong>1. Review the Lease Agreement:<\\/strong> Carefully read and understand the lease terms, including rental duration, responsibilities, restrictions, and any potential penalties.<\\/p><p>\\u00a0<\\/p><p><strong>2. Inspect the Property:<\\/strong> Before signing anything, inspect the property thoroughly. Document existing damages or issues and ensure they are addressed before moving in.<\\/p><p>\\u00a0<\\/p><h4><strong>Finalizing the Deal<\\/strong><\\/h4><p>Once you\'ve found the ideal house, it\'s time to seal the deal:<\\/p><p>\\u00a0<\\/p><p><strong>1. Communicate with the Landlord:<\\/strong> Maintain open communication with the landlord or property manager. Clarify any uncertainties and ensure you\'re on the same page regarding maintenance and responsibilities.<\\/p><p>\\u00a0<\\/p><p><strong>2. Understand Your Rights:<\\/strong> Familiarize yourself with tenant rights and local rental laws to protect yourself and ensure a smooth tenancy.<\\/p><p>Renting a house property involves more than just finding a roof over your head. It\'s about securing a comfortable and safe living environment that aligns with your lifestyle and needs. By following these steps, you can navigate the rental market with confidence and find the perfect house to call home.<\\/p>\",\"blog_image\":\"656b0c84308281701514372.jpg\"}', '2023-11-21 10:17:44', '2023-12-17 12:42:55'),
(92, 'hot_deals.content', '{\"heading\":\"Today\\u2019s Hot Deals\"}', '2023-11-26 07:10:15', '2023-11-26 07:10:15'),
(93, 'policy_pages.element', '{\"title\":\"Terms and Condition\",\"details\":\"<h2>Terms &amp; Condition for checkout<\\/h2><h4><i>\\\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...\\\"<\\/i><\\/h4><p>\\\"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...\\\"<\\/p><p>\\u00a0<\\/p><p>\\u00a0<\\/p><h2>What is Lorem Ipsum?<\\/h2><p><strong>Lorem Ipsum<\\/strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p><h2>Why do we use it?<\\/h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p><p><br \\/>\\u00a0<\\/p><h2>Where does it come from?<\\/h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \\\"Lorem ipsum dolor sit amet..\\\", comes from a line in section 1.10.32.<\\/p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \\\"de Finibus Bonorum et Malorum\\\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p><h2>Where can I get some?<\\/h2><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.<\\/p>\"}', '2024-03-27 12:35:30', '2024-03-27 12:35:54');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `property_id`, `image`, `created_at`, `updated_at`) VALUES
(40, 26, '65f15697c7de11710315159.jpg', '2024-03-13 12:32:40', '2024-03-13 12:32:40'),
(41, 26, '65f156980a0f21710315160.jpg', '2024-03-13 12:32:40', '2024-03-13 12:32:40'),
(42, 26, '65f1569826e611710315160.jpg', '2024-03-13 12:32:40', '2024-03-13 12:32:40'),
(43, 26, '65f156983efd41710315160.jpg', '2024-03-13 12:32:40', '2024-03-13 12:32:40'),
(44, 26, '65f15698574961710315160.png', '2024-03-13 12:32:40', '2024-03-13 12:32:40'),
(111, 43, '663a074d8b9141715078989.jpg', '2024-05-07 15:49:49', '2024-05-07 15:49:49'),
(112, 43, '663a074da49991715078989.jpg', '2024-05-07 15:49:49', '2024-05-07 15:49:49'),
(113, 43, '663a074dbd55c1715078989.jpg', '2024-05-07 15:49:49', '2024-05-07 15:49:49'),
(114, 43, '663a074dd4f2f1715078989.jpg', '2024-05-07 15:49:50', '2024-05-07 15:49:50'),
(115, 43, '663a074e051201715078990.jpg', '2024-05-07 15:49:50', '2024-05-07 15:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `code` int(10) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `alias` varchar(40) NOT NULL DEFAULT 'NULL',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=>enable, 2=>disable',
  `gateway_parameters` text DEFAULT NULL,
  `supported_currencies` text DEFAULT NULL,
  `crypto` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: fiat currency, 1: crypto currency',
  `extra` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `form_id`, `code`, `name`, `alias`, `status`, `gateway_parameters`, `supported_currencies`, `crypto`, `extra`, `description`, `created_at`, `updated_at`) VALUES
(1, 0, 101, 'Paypal', 'Paypal', 0, '{\"paypal_email\":{\"title\":\"PayPal Email\",\"global\":true,\"value\":\"sb-58ira22618401@business.example.com\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-01-15 12:12:45'),
(2, 0, 102, 'Perfect Money', 'PerfectMoney', 0, '{\"passphrase\":{\"title\":\"ALTERNATE PASSPHRASE\",\"global\":true,\"value\":\"---------------------\"},\"wallet_id\":{\"title\":\"PM Wallet\",\"global\":false,\"value\":\"\"}}', '{\"USD\":\"$\",\"EUR\":\"\\u20ac\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-01-15 12:13:01'),
(3, 0, 105, 'PayTM', 'Paytm', 0, '{\"MID\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"-----------\"},\"merchant_key\":{\"title\":\"Merchant Key\",\"global\":true,\"value\":\"--------------------\"},\"WEBSITE\":{\"title\":\"Paytm Website\",\"global\":true,\"value\":\"example.com\"},\"INDUSTRY_TYPE_ID\":{\"title\":\"Industry Type\",\"global\":true,\"value\":\"Retail\"},\"CHANNEL_ID\":{\"title\":\"CHANNEL ID\",\"global\":true,\"value\":\"WEB\"},\"transaction_url\":{\"title\":\"Transaction URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/oltp-web\\/processTransaction\"},\"transaction_status_url\":{\"title\":\"Transaction STATUS URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/paytmchecksum\\/paytmCallback.jsp\"}}', '{\"AUD\":\"AUD\",\"ARS\":\"ARS\",\"BDT\":\"BDT\",\"BRL\":\"BRL\",\"BGN\":\"BGN\",\"CAD\":\"CAD\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"HRK\":\"HRK\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EGP\":\"EGP\",\"EUR\":\"EUR\",\"GEL\":\"GEL\",\"GHS\":\"GHS\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"MAD\":\"MAD\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"NGN\":\"NGN\",\"NOK\":\"NOK\",\"PKR\":\"PKR\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"ZAR\":\"ZAR\",\"KRW\":\"KRW\",\"LKR\":\"LKR\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"TRY\":\"TRY\",\"UGX\":\"UGX\",\"UAH\":\"UAH\",\"AED\":\"AED\",\"GBP\":\"GBP\",\"USD\":\"USD\",\"VND\":\"VND\",\"XOF\":\"XOF\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-01-15 13:17:16'),
(4, 0, 107, 'PayStack', 'Paystack', 0, '{\"public_key\":{\"title\":\"Public key\",\"global\":true,\"value\":\"--------\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"----------------\"}}', '{\"USD\":\"USD\",\"NGN\":\"NGN\"}', 0, '{\"callback\":{\"title\": \"Callback URL\",\"value\":\"ipn.Paystack\"},\"webhook\":{\"title\": \"Webhook URL\",\"value\":\"ipn.Paystack\"}}\r\n', NULL, '2019-09-14 13:14:22', '2024-01-15 12:12:52'),
(5, 0, 108, 'VoguePay', 'Voguepay', 0, '{\"merchant_id\":{\"title\":\"MERCHANT ID\",\"global\":true,\"value\":\"-------------------\"}}', '{\"USD\":\"USD\",\"GBP\":\"GBP\",\"EUR\":\"EUR\",\"GHS\":\"GHS\",\"NGN\":\"NGN\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-01-15 12:13:08'),
(6, 0, 109, 'Flutterwave', 'Flutterwave', 0, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"----------------\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"-----------------------\"},\"encryption_key\":{\"title\":\"Encryption Key\",\"global\":true,\"value\":\"------------------\"}}', '{\"BIF\":\"BIF\",\"CAD\":\"CAD\",\"CDF\":\"CDF\",\"CVE\":\"CVE\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"GHS\":\"GHS\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"KES\":\"KES\",\"LRD\":\"LRD\",\"MWK\":\"MWK\",\"MZN\":\"MZN\",\"NGN\":\"NGN\",\"RWF\":\"RWF\",\"SLL\":\"SLL\",\"STD\":\"STD\",\"TZS\":\"TZS\",\"UGX\":\"UGX\",\"USD\":\"USD\",\"XAF\":\"XAF\",\"XOF\":\"XOF\",\"ZMK\":\"ZMK\",\"ZMW\":\"ZMW\",\"ZWD\":\"ZWD\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-01-15 12:12:39'),
(7, 0, 110, 'RazorPay', 'Razorpay', 0, '{\"key_id\":{\"title\":\"Key Id\",\"global\":true,\"value\":\"------------\"},\"key_secret\":{\"title\":\"Key Secret \",\"global\":true,\"value\":\"--------\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-01-15 12:13:05'),
(8, 0, 112, 'Instamojo', 'Instamojo', 0, '{\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"------------\"},\"auth_token\":{\"title\":\"Auth Token\",\"global\":true,\"value\":\"---------\"},\"salt\":{\"title\":\"Salt\",\"global\":true,\"value\":\"-------\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-01-15 12:12:41'),
(9, 0, 503, 'CoinPayments', 'Coinpayments', 0, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"---------------\"},\"private_key\":{\"title\":\"Private Key\",\"global\":true,\"value\":\"------------\"},\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"----------------\"}}', '{\"BTC\":\"Bitcoin\",\"BTC.LN\":\"Bitcoin (Lightning Network)\",\"LTC\":\"Litecoin\",\"CPS\":\"CPS Coin\",\"VLX\":\"Velas\",\"APL\":\"Apollo\",\"AYA\":\"Aryacoin\",\"BAD\":\"Badcoin\",\"BCD\":\"Bitcoin Diamond\",\"BCH\":\"Bitcoin Cash\",\"BCN\":\"Bytecoin\",\"BEAM\":\"BEAM\",\"BITB\":\"Bean Cash\",\"BLK\":\"BlackCoin\",\"BSV\":\"Bitcoin SV\",\"BTAD\":\"Bitcoin Adult\",\"BTG\":\"Bitcoin Gold\",\"BTT\":\"BitTorrent\",\"CLOAK\":\"CloakCoin\",\"CLUB\":\"ClubCoin\",\"CRW\":\"Crown\",\"CRYP\":\"CrypticCoin\",\"CRYT\":\"CryTrExCoin\",\"CURE\":\"CureCoin\",\"DASH\":\"DASH\",\"DCR\":\"Decred\",\"DEV\":\"DeviantCoin\",\"DGB\":\"DigiByte\",\"DOGE\":\"Dogecoin\",\"EBST\":\"eBoost\",\"EOS\":\"EOS\",\"ETC\":\"Ether Classic\",\"ETH\":\"Ethereum\",\"ETN\":\"Electroneum\",\"EUNO\":\"EUNO\",\"EXP\":\"EXP\",\"Expanse\":\"Expanse\",\"FLASH\":\"FLASH\",\"GAME\":\"GameCredits\",\"GLC\":\"Goldcoin\",\"GRS\":\"Groestlcoin\",\"KMD\":\"Komodo\",\"LOKI\":\"LOKI\",\"LSK\":\"LSK\",\"MAID\":\"MaidSafeCoin\",\"MUE\":\"MonetaryUnit\",\"NAV\":\"NAV Coin\",\"NEO\":\"NEO\",\"NMC\":\"Namecoin\",\"NVST\":\"NVO Token\",\"NXT\":\"NXT\",\"OMNI\":\"OMNI\",\"PINK\":\"PinkCoin\",\"PIVX\":\"PIVX\",\"POT\":\"PotCoin\",\"PPC\":\"Peercoin\",\"PROC\":\"ProCurrency\",\"PURA\":\"PURA\",\"QTUM\":\"QTUM\",\"RES\":\"Resistance\",\"RVN\":\"Ravencoin\",\"RVR\":\"RevolutionVR\",\"SBD\":\"Steem Dollars\",\"SMART\":\"SmartCash\",\"SOXAX\":\"SOXAX\",\"STEEM\":\"STEEM\",\"STRAT\":\"STRAT\",\"SYS\":\"Syscoin\",\"TPAY\":\"TokenPay\",\"TRIGGERS\":\"Triggers\",\"TRX\":\" TRON\",\"UBQ\":\"Ubiq\",\"UNIT\":\"UniversalCurrency\",\"USDT\":\"Tether USD (Omni Layer)\",\"USDT.BEP20\":\"Tether USD (BSC Chain)\",\"USDT.ERC20\":\"Tether USD (ERC20)\",\"USDT.TRC20\":\"Tether USD (Tron/TRC20)\",\"VTC\":\"Vertcoin\",\"WAVES\":\"Waves\",\"XCP\":\"Counterparty\",\"XEM\":\"NEM\",\"XMR\":\"Monero\",\"XSN\":\"Stakenet\",\"XSR\":\"SucreCoin\",\"XVG\":\"VERGE\",\"XZC\":\"ZCoin\",\"ZEC\":\"ZCash\",\"ZEN\":\"Horizen\"}', 1, NULL, NULL, '2019-09-14 13:14:22', '2024-01-15 12:12:36'),
(10, 0, 506, 'Coinbase Commerce', 'CoinbaseCommerce', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"---------\"},\"secret\":{\"title\":\"Webhook Shared Secret\",\"global\":true,\"value\":\"----------------\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"JPY\":\"JPY\",\"GBP\":\"GBP\",\"AUD\":\"AUD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CNY\":\"CNY\",\"SEK\":\"SEK\",\"NZD\":\"NZD\",\"MXN\":\"MXN\",\"SGD\":\"SGD\",\"HKD\":\"HKD\",\"NOK\":\"NOK\",\"KRW\":\"KRW\",\"TRY\":\"TRY\",\"RUB\":\"RUB\",\"INR\":\"INR\",\"BRL\":\"BRL\",\"ZAR\":\"ZAR\",\"AED\":\"AED\",\"AFN\":\"AFN\",\"ALL\":\"ALL\",\"AMD\":\"AMD\",\"ANG\":\"ANG\",\"AOA\":\"AOA\",\"ARS\":\"ARS\",\"AWG\":\"AWG\",\"AZN\":\"AZN\",\"BAM\":\"BAM\",\"BBD\":\"BBD\",\"BDT\":\"BDT\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"BIF\":\"BIF\",\"BMD\":\"BMD\",\"BND\":\"BND\",\"BOB\":\"BOB\",\"BSD\":\"BSD\",\"BTN\":\"BTN\",\"BWP\":\"BWP\",\"BYN\":\"BYN\",\"BZD\":\"BZD\",\"CDF\":\"CDF\",\"CLF\":\"CLF\",\"CLP\":\"CLP\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUC\":\"CUC\",\"CUP\":\"CUP\",\"CVE\":\"CVE\",\"CZK\":\"CZK\",\"DJF\":\"DJF\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"DZD\":\"DZD\",\"EGP\":\"EGP\",\"ERN\":\"ERN\",\"ETB\":\"ETB\",\"FJD\":\"FJD\",\"FKP\":\"FKP\",\"GEL\":\"GEL\",\"GGP\":\"GGP\",\"GHS\":\"GHS\",\"GIP\":\"GIP\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"GTQ\":\"GTQ\",\"GYD\":\"GYD\",\"HNL\":\"HNL\",\"HRK\":\"HRK\",\"HTG\":\"HTG\",\"HUF\":\"HUF\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"IMP\":\"IMP\",\"IQD\":\"IQD\",\"IRR\":\"IRR\",\"ISK\":\"ISK\",\"JEP\":\"JEP\",\"JMD\":\"JMD\",\"JOD\":\"JOD\",\"KES\":\"KES\",\"KGS\":\"KGS\",\"KHR\":\"KHR\",\"KMF\":\"KMF\",\"KPW\":\"KPW\",\"KWD\":\"KWD\",\"KYD\":\"KYD\",\"KZT\":\"KZT\",\"LAK\":\"LAK\",\"LBP\":\"LBP\",\"LKR\":\"LKR\",\"LRD\":\"LRD\",\"LSL\":\"LSL\",\"LYD\":\"LYD\",\"MAD\":\"MAD\",\"MDL\":\"MDL\",\"MGA\":\"MGA\",\"MKD\":\"MKD\",\"MMK\":\"MMK\",\"MNT\":\"MNT\",\"MOP\":\"MOP\",\"MRO\":\"MRO\",\"MUR\":\"MUR\",\"MVR\":\"MVR\",\"MWK\":\"MWK\",\"MYR\":\"MYR\",\"MZN\":\"MZN\",\"NAD\":\"NAD\",\"NGN\":\"NGN\",\"NIO\":\"NIO\",\"NPR\":\"NPR\",\"OMR\":\"OMR\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PGK\":\"PGK\",\"PHP\":\"PHP\",\"PKR\":\"PKR\",\"PLN\":\"PLN\",\"PYG\":\"PYG\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"RWF\":\"RWF\",\"SAR\":\"SAR\",\"SBD\":\"SBD\",\"SCR\":\"SCR\",\"SDG\":\"SDG\",\"SHP\":\"SHP\",\"SLL\":\"SLL\",\"SOS\":\"SOS\",\"SRD\":\"SRD\",\"SSP\":\"SSP\",\"STD\":\"STD\",\"SVC\":\"SVC\",\"SYP\":\"SYP\",\"SZL\":\"SZL\",\"THB\":\"THB\",\"TJS\":\"TJS\",\"TMT\":\"TMT\",\"TND\":\"TND\",\"TOP\":\"TOP\",\"TTD\":\"TTD\",\"TWD\":\"TWD\",\"TZS\":\"TZS\",\"UAH\":\"UAH\",\"UGX\":\"UGX\",\"UYU\":\"UYU\",\"UZS\":\"UZS\",\"VEF\":\"VEF\",\"VND\":\"VND\",\"VUV\":\"VUV\",\"WST\":\"WST\",\"XAF\":\"XAF\",\"XAG\":\"XAG\",\"XAU\":\"XAU\",\"XCD\":\"XCD\",\"XDR\":\"XDR\",\"XOF\":\"XOF\",\"XPD\":\"XPD\",\"XPF\":\"XPF\",\"XPT\":\"XPT\",\"YER\":\"YER\",\"ZMW\":\"ZMW\",\"ZWL\":\"ZWL\"}\r\n\r\n', 0, '{\"endpoint\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.CoinbaseCommerce\"}}', NULL, '2019-09-14 13:14:22', '2024-01-15 12:12:33'),
(11, 0, 113, 'Paypal Express', 'PaypalSdk', 0, '{\"clientId\":{\"title\":\"Paypal Client ID\",\"global\":true,\"value\":\"------------\"},\"clientSecret\":{\"title\":\"Client Secret\",\"global\":true,\"value\":\"-----------\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-01-15 12:12:49'),
(12, 0, 114, 'Card Checkout', 'StripeV3', 1, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51M8Ks2CL65BWuH7eCBcWsLP2yPfWaLtfJVxG3zfii7cCWJE1izM4jkhucmBSm6izmVtSGZyp0JDYYCVmx9E4WmQY004gfnctzD\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51M8Ks2CL65BWuH7eju6khGxJMpeeFuw2Rwrjr8UYCz6ZnQ3PiFxb1gVu1i1dBto9MQrnjkBimHkFJgNcqsrJHTak0010kCY41h\"},\"end_point\":{\"title\":\"End Point Secret\",\"global\":true,\"value\":\"abcd\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"PKR\":\"PKR\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, '{\"webhook\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.StripeV3\"}}', NULL, '2019-09-14 13:14:22', '2022-12-18 08:28:03'),
(49, 21, 1000, 'City Bank', 'city_bank', 1, '[]', '[]', 0, NULL, '<p>Please fill carefully</p>', '2023-11-24 17:20:06', '2023-11-24 17:20:14');

-- --------------------------------------------------------

--
-- Table structure for table `gateway_currencies`
--

CREATE TABLE `gateway_currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `currency` varchar(40) DEFAULT NULL,
  `symbol` varchar(40) DEFAULT NULL,
  `method_code` int(10) DEFAULT NULL,
  `gateway_alias` varchar(40) DEFAULT NULL,
  `min_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `max_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `percent_charge` decimal(5,2) NOT NULL DEFAULT 0.00,
  `fixed_charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `rate` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `image` varchar(255) DEFAULT NULL,
  `gateway_parameter` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateway_currencies`
--

INSERT INTO `gateway_currencies` (`id`, `name`, `currency`, `symbol`, `method_code`, `gateway_alias`, `min_amount`, `max_amount`, `percent_charge`, `fixed_charge`, `rate`, `image`, `gateway_parameter`, `created_at`, `updated_at`) VALUES
(1, 'Debit/Credit Card', 'PKR', 'RS ', 114, 'StripeV3', 1.00000000, 10000000000.00000000, 0.00, 0.00000000, 285.00000000, NULL, '{\"secret_key\":\"sk_test_51M8Ks2CL65BWuH7eCBcWsLP2yPfWaLtfJVxG3zfii7cCWJE1izM4jkhucmBSm6izmVtSGZyp0JDYYCVmx9E4WmQY004gfnctzD\",\"publishable_key\":\"pk_test_51M8Ks2CL65BWuH7eju6khGxJMpeeFuw2Rwrjr8UYCz6ZnQ3PiFxb1gVu1i1dBto9MQrnjkBimHkFJgNcqsrJHTak0010kCY41h\",\"end_point\":\"abcd\"}', '2024-02-27 12:37:24', '2024-02-27 12:37:24');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(40) DEFAULT NULL,
  `cur_text` varchar(40) DEFAULT NULL COMMENT 'currency text',
  `cur_sym` varchar(40) DEFAULT NULL COMMENT 'currency symbol',
  `fixed_commission` decimal(28,8) DEFAULT NULL,
  `parcent_commission` decimal(28,8) DEFAULT NULL,
  `access_token` longtext NOT NULL,
  `upload_approval` tinyint(4) DEFAULT NULL COMMENT 'check = 0,\r\nnot check = 1',
  `email_from` varchar(40) DEFAULT NULL,
  `email_template` text DEFAULT NULL,
  `sms_body` varchar(255) DEFAULT NULL,
  `sms_from` varchar(255) DEFAULT NULL,
  `base_color` varchar(40) DEFAULT NULL,
  `secondary_color` varchar(40) DEFAULT NULL,
  `mail_config` text DEFAULT NULL COMMENT 'email configuration',
  `sms_config` text DEFAULT NULL,
  `global_shortcodes` text DEFAULT NULL,
  `kv` tinyint(1) NOT NULL DEFAULT 0,
  `ev` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'email verification, 0 - dont check, 1 - check',
  `en` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'email notification, 0 - dont send, 1 - send',
  `sv` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'mobile verication, 0 - dont check, 1 - check',
  `sn` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'sms notification, 0 - dont send, 1 - send',
  `force_ssl` tinyint(1) NOT NULL DEFAULT 0,
  `maintenance_mode` tinyint(1) NOT NULL DEFAULT 0,
  `secure_password` tinyint(1) NOT NULL DEFAULT 0,
  `agree` tinyint(1) NOT NULL DEFAULT 0,
  `registration` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: Off	, 1: On',
  `active_template` varchar(40) DEFAULT NULL,
  `system_info` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_name`, `cur_text`, `cur_sym`, `fixed_commission`, `parcent_commission`, `access_token`, `upload_approval`, `email_from`, `email_template`, `sms_body`, `sms_from`, `base_color`, `secondary_color`, `mail_config`, `sms_config`, `global_shortcodes`, `kv`, `ev`, `en`, `sv`, `sn`, `force_ssl`, `maintenance_mode`, `secure_password`, `agree`, `registration`, `active_template`, `system_info`, `created_at`, `updated_at`) VALUES
(1, 'airprp', 'PKR', 'RS', 1.00000000, 10.00000000, 'pk.eyJ1Ijoicmlhc2FkcmlvbiIsImEiOiJjbGVmZmFrMG0wcWhlM3ZtamVpZzZvbnRiIn0.vyldCHXkEAoFjvchIgO_wg', 0, 'info@airprp.com\n', '<p>Hi {{fullname}} ({{username}}),&nbsp;</p><p>{{message}}</p>', 'Hi {{fullname}} ({{username}}), \r\n{{message}}', 'Minstack', 'DD1212', '060662', '{\"name\":\"smtp\",\"host\":\"mail.airprp.com\",\"port\":\"465\",\"enc\":\"ssl\",\"username\":\"info@airprp.com\",\"password\":\"786@Pakprpone\"}', '{\"name\":\"twilio\",\"clickatell\":{\"api_key\":\"----------------\"},\"infobip\":{\"username\":null,\"password\":null},\"message_bird\":{\"api_key\":null},\"nexmo\":{\"api_key\":\"4cbe323d\",\"api_secret\":\"MugtmQ5EVHXdetag\"},\"sms_broadcast\":{\"username\":null,\"password\":null},\"twilio\":{\"account_sid\":\"AC0f21b09087a5352c62d827204294b1ae\",\"auth_token\":\"20443b3009896ab6d25946f74b78b2bf\",\"from\":\"+16509461653\"},\"text_magic\":{\"username\":null,\"apiv2_key\":null},\"custom\":{\"method\":\"get\",\"url\":\"https:\\/\\/hostname\\/demo-api-v1\",\"headers\":{\"name\":[\"api_key\"],\"value\":[\"test_api 555\"]},\"body\":{\"name\":[\"from_number\"],\"value\":[\"5657545757\"]}}}', '{\n    \"site_name\":\"Name of your site\",\n    \"site_currency\":\"Currency of your site\",\n    \"currency_symbol\":\"Symbol of currency\"\n}', 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 'default', '[]', NULL, '2024-04-01 22:47:19');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `code` varchar(40) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `text_align` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: left to right text align, 1: right to left text align',
  `is_default` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: not default language, 1: default language',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `icon`, `text_align`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', '5f15968db08911595250317.png', 0, 1, '2020-07-06 03:47:55', '2022-09-29 10:36:14');

-- --------------------------------------------------------

--
-- Table structure for table `notification_logs`
--

CREATE TABLE `notification_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sender` varchar(40) DEFAULT NULL,
  `sent_from` varchar(40) DEFAULT NULL,
  `sent_to` varchar(40) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `notification_type` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_logs`
--

INSERT INTO `notification_logs` (`id`, `user_id`, `sender`, `sent_from`, `sent_to`, `subject`, `message`, `notification_type`, `created_at`, `updated_at`) VALUES
(1, 1, 'php', 'notify@wstacks.com', 'qasimsajjad106@gmail.com', 'Please verify your email address', '<p>Hi @qasim123 (qasim123),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;440371</span></font></div></div></p>', 'email', '2024-01-15 12:37:00', '2024-01-15 12:37:00'),
(2, 1, 'php', 'notify@wstacks.com', 'qasimsajjad106@gmail.com', 'Please verify your email address', '<p>Hi @qasim123 (qasim123),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;747280</span></font></div></div></p>', 'email', '2024-01-15 12:45:47', '2024-01-15 12:45:47'),
(3, 1, 'php', 'notify@wstacks.com', 'qasimsajjad106@gmail.com', 'Please verify your email address', '<p>Hi @qasim123 (qasim123),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;922188</span></font></div></div></p>', 'email', '2024-01-15 12:48:36', '2024-01-15 12:48:36'),
(4, 0, 'php', 'notify@wstacks.com', 'qasimsajjad106@gmail.com', 'PHP Configuration Success', '<p>Hi qasimsajjad106 (qasimsajjad106@gmail.com),&nbsp;</p><p>Your email notification setting is configured successfully for AIRPRP</p>', 'email', '2024-01-15 12:50:02', '2024-01-15 12:50:02'),
(5, 0, 'smtp', 'info@airprp.com\n', 'qasimsajjad106@gmail.com', 'SMTP Configuration Success', '<p>Hi qasimsajjad106 (qasimsajjad106@gmail.com),&nbsp;</p><p>Your email notification setting is configured successfully for AIRPRP</p>', 'email', '2024-02-22 15:43:58', '2024-02-22 15:43:58'),
(6, 12, 'smtp', 'info@airprp.com\n', 'qasimsajjad1406@gmail.com', 'Please verify your email address', '<p>Hi @ (),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;501785</span></font></div></div></p>', 'email', '2024-02-22 15:47:08', '2024-02-22 15:47:08'),
(7, 10, 'smtp', 'info@airprp.com\n', 'qasimsajjad106@gmail.com', 'Password Reset', '<p>Hi Nash Cain (),&nbsp;</p><p><div style=\"font-family: Montserrat, sans-serif;\">We have received a request to reset the password for your account on&nbsp;<span style=\"font-weight: bolder;\">2024-02-27 12:24:21 PM .<br></span></div><div style=\"font-family: Montserrat, sans-serif;\">Requested From IP:&nbsp;<span style=\"font-weight: bolder;\">154.192.156.64</span>&nbsp;using&nbsp;<span style=\"font-weight: bolder;\">Chrome</span>&nbsp;on&nbsp;<span style=\"font-weight: bolder;\">Windows 10&nbsp;</span>.</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><br style=\"font-family: Montserrat, sans-serif;\"><div style=\"font-family: Montserrat, sans-serif;\"><div>Your account recovery code is:&nbsp;&nbsp;&nbsp;<font size=\"6\"><span style=\"font-weight: bolder;\">813654</span></font></div><div><br></div></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><div><font size=\"4\" color=\"#CC0000\"><br></font></div></p>', 'email', '2024-02-27 12:24:21', '2024-02-27 12:24:21'),
(8, 10, 'smtp', 'info@airprp.com\n', 'qasimsajjad106@gmail.com', 'You have reset your password', '<p>Hi Nash Cain (),&nbsp;</p><p><p style=\"font-family: Montserrat, sans-serif;\">You have successfully reset your password.</p><p style=\"font-family: Montserrat, sans-serif;\">You changed from&nbsp; IP:&nbsp;<span style=\"font-weight: bolder;\">154.192.156.64</span>&nbsp;using&nbsp;<span style=\"font-weight: bolder;\">Chrome</span>&nbsp;on&nbsp;<span style=\"font-weight: bolder;\">Windows 10&nbsp;</span>&nbsp;on&nbsp;<span style=\"font-weight: bolder;\">2024-02-27 12:24:54 PM</span></p><p style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></p><p style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><font color=\"#ff0000\">If you did not change that, please contact us as soon as possible.</font></span></p></p>', 'email', '2024-02-27 12:24:54', '2024-02-27 12:24:54'),
(9, 15, 'smtp', 'info@airprp.com\n', 'techoff66@gmail.com', 'Please verify your email address', '<p>Hi @ (),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;415742</span></font></div></div></p>', 'email', '2024-03-02 14:21:59', '2024-03-02 14:21:59'),
(10, 16, 'smtp', 'info@airprp.com\n', 'phaphra66@gmail.com', 'Please verify your email address', '<p>Hi @ (),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;737075</span></font></div></div></p>', 'email', '2024-03-02 14:31:05', '2024-03-02 14:31:05'),
(11, 0, 'smtp', 'info@airprp.com\n', 'zahidj1969@gmail.com', 'SMTP Configuration Success', '<p>Hi zahidj1969 (zahidj1969@gmail.com),&nbsp;</p><p>Your email notification setting is configured successfully for airprp</p>', 'email', '2024-03-09 02:07:20', '2024-03-09 02:07:20'),
(12, 11, 'smtp', 'info@airprp.com\n', 'technovadigitalpk@gmail.com', 'Withdraw Request Submitted Successfully', '<p>Hi Qasimasd sajjad (),&nbsp;</p><p><div style=\"font-family: Montserrat, sans-serif;\">Your withdraw request of&nbsp;<span style=\"font-weight: bolder;\">200,000.00 PKR</span>&nbsp; via&nbsp;&nbsp;<span style=\"font-weight: bolder;\">Manual bank&nbsp;</span>has been submitted Successfully.<span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\">Details of your withdraw:<br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Amount : 200,000.00 PKR</div><div style=\"font-family: Montserrat, sans-serif;\">Charge:&nbsp;<font color=\"#FF0000\">0.00 PKR</font></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Conversion Rate : 1 PKR = 1.00 Pkr</div><div style=\"font-family: Montserrat, sans-serif;\">You will get: 200,000.00 Pkr<br></div><div style=\"font-family: Montserrat, sans-serif;\">Via :&nbsp; Manual bank</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Transaction Number : 1ZP1K5UWF6F7</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"5\">Your current Balance is&nbsp;<span style=\"font-weight: bolder;\">49,677.00 PKR</span></font></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><br><br><br></div></p>', 'email', '2024-03-15 12:55:01', '2024-03-15 12:55:01'),
(13, 11, 'smtp', 'info@airprp.com\n', 'technovadigitalpk@gmail.com', 'Withdraw Request has been Processed and your money is sent', '<p>Hi Qasimasd sajjad (),&nbsp;</p><p><div style=\"font-family: Montserrat, sans-serif;\">Your withdraw request of&nbsp;<span style=\"font-weight: bolder;\">200,000.00 PKR</span>&nbsp; via&nbsp;&nbsp;<span style=\"font-weight: bolder;\">Manual bank&nbsp;</span>has been Processed Successfully.<span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\">Details of your withdraw:<br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Amount : 200,000.00 PKR</div><div style=\"font-family: Montserrat, sans-serif;\">Charge:&nbsp;<font color=\"#FF0000\">0.00 PKR</font></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Conversion Rate : 1 PKR = 1.00 Pkr</div><div style=\"font-family: Montserrat, sans-serif;\">You will get: 200,000.00 Pkr<br></div><div style=\"font-family: Montserrat, sans-serif;\">Via :&nbsp; Manual bank</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Transaction Number : 1ZP1K5UWF6F7</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">-----</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"4\">Details of Processed Payment :</font></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"4\"><span style=\"font-weight: bolder;\">wqeqwewqe</span></font></div></p>', 'email', '2024-03-15 12:56:38', '2024-03-15 12:56:38'),
(14, 13, 'smtp', 'info@airprp.com\n', 'lawafoods@gmail.com', 'Password Reset', '<p>Hi zahid jahangir (),&nbsp;</p><p><div style=\"font-family: Montserrat, sans-serif;\">We have received a request to reset the password for your account on&nbsp;<span style=\"font-weight: bolder;\">2024-03-15 03:03:46 PM .<br></span></div><div style=\"font-family: Montserrat, sans-serif;\">Requested From IP:&nbsp;<span style=\"font-weight: bolder;\">103.93.219.230</span>&nbsp;using&nbsp;<span style=\"font-weight: bolder;\">Firefox</span>&nbsp;on&nbsp;<span style=\"font-weight: bolder;\">Windows 10&nbsp;</span>.</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><br style=\"font-family: Montserrat, sans-serif;\"><div style=\"font-family: Montserrat, sans-serif;\"><div>Your account recovery code is:&nbsp;&nbsp;&nbsp;<font size=\"6\"><span style=\"font-weight: bolder;\">304738</span></font></div><div><br></div></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><div><font size=\"4\" color=\"#CC0000\"><br></font></div></p>', 'email', '2024-03-15 15:03:46', '2024-03-15 15:03:46'),
(15, 13, 'smtp', 'info@airprp.com\n', 'lawafoods@gmail.com', 'You have reset your password', '<p>Hi zahid jahangir (),&nbsp;</p><p><p style=\"font-family: Montserrat, sans-serif;\">You have successfully reset your password.</p><p style=\"font-family: Montserrat, sans-serif;\">You changed from&nbsp; IP:&nbsp;<span style=\"font-weight: bolder;\">103.93.219.230</span>&nbsp;using&nbsp;<span style=\"font-weight: bolder;\">Firefox</span>&nbsp;on&nbsp;<span style=\"font-weight: bolder;\">Windows 10&nbsp;</span>&nbsp;on&nbsp;<span style=\"font-weight: bolder;\">2024-03-15 03:05:23 PM</span></p><p style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></p><p style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><font color=\"#ff0000\">If you did not change that, please contact us as soon as possible.</font></span></p></p>', 'email', '2024-03-15 15:05:23', '2024-03-15 15:05:23'),
(16, 17, 'smtp', 'info@airprp.com\n', 'technooffshore@gmail.com', 'Password Reset', '<p>Hi Zahid Jahangir  (),&nbsp;</p><p><div style=\"font-family: Montserrat, sans-serif;\">We have received a request to reset the password for your account on&nbsp;<span style=\"font-weight: bolder;\">2024-03-15 08:36:51 PM .<br></span></div><div style=\"font-family: Montserrat, sans-serif;\">Requested From IP:&nbsp;<span style=\"font-weight: bolder;\">103.93.219.56</span>&nbsp;using&nbsp;<span style=\"font-weight: bolder;\">Chrome</span>&nbsp;on&nbsp;<span style=\"font-weight: bolder;\">Windows 10&nbsp;</span>.</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><br style=\"font-family: Montserrat, sans-serif;\"><div style=\"font-family: Montserrat, sans-serif;\"><div>Your account recovery code is:&nbsp;&nbsp;&nbsp;<font size=\"6\"><span style=\"font-weight: bolder;\">119822</span></font></div><div><br></div></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><div><font size=\"4\" color=\"#CC0000\"><br></font></div></p>', 'email', '2024-03-15 20:36:52', '2024-03-15 20:36:52'),
(17, 17, 'smtp', 'info@airprp.com\n', 'technooffshore@gmail.com', 'Password Reset', '<p>Hi Zahid Jahangir  (),&nbsp;</p><p><div style=\"font-family: Montserrat, sans-serif;\">We have received a request to reset the password for your account on&nbsp;<span style=\"font-weight: bolder;\">2024-03-15 08:37:59 PM .<br></span></div><div style=\"font-family: Montserrat, sans-serif;\">Requested From IP:&nbsp;<span style=\"font-weight: bolder;\">103.93.219.56</span>&nbsp;using&nbsp;<span style=\"font-weight: bolder;\">Chrome</span>&nbsp;on&nbsp;<span style=\"font-weight: bolder;\">Windows 10&nbsp;</span>.</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><br style=\"font-family: Montserrat, sans-serif;\"><div style=\"font-family: Montserrat, sans-serif;\"><div>Your account recovery code is:&nbsp;&nbsp;&nbsp;<font size=\"6\"><span style=\"font-weight: bolder;\">976740</span></font></div><div><br></div></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><div><font size=\"4\" color=\"#CC0000\"><br></font></div></p>', 'email', '2024-03-15 20:37:59', '2024-03-15 20:37:59'),
(18, 17, 'smtp', 'info@airprp.com\n', 'technooffshore@gmail.com', 'You have reset your password', '<p>Hi Zahid Jahangir  (),&nbsp;</p><p><p style=\"font-family: Montserrat, sans-serif;\">You have successfully reset your password.</p><p style=\"font-family: Montserrat, sans-serif;\">You changed from&nbsp; IP:&nbsp;<span style=\"font-weight: bolder;\">103.93.219.56</span>&nbsp;using&nbsp;<span style=\"font-weight: bolder;\">Chrome</span>&nbsp;on&nbsp;<span style=\"font-weight: bolder;\">Windows 10&nbsp;</span>&nbsp;on&nbsp;<span style=\"font-weight: bolder;\">2024-03-15 08:38:46 PM</span></p><p style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></p><p style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><font color=\"#ff0000\">If you did not change that, please contact us as soon as possible.</font></span></p></p>', 'email', '2024-03-15 20:38:46', '2024-03-15 20:38:46'),
(19, 20, 'smtp', 'info@airprp.com\n', 'hassan777malik88@gmail.com', 'Please verify your email address', '<p>Hi @ (),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;429336</span></font></div></div></p>', 'email', '2024-03-15 21:41:12', '2024-03-15 21:41:12'),
(20, 25, 'smtp', 'info@airprp.com\n', 'zuhaib@technooffshore.com', 'Please verify your email address', '<p>Hi @ (),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;655114</span></font></div></div></p>', 'email', '2024-03-24 16:38:13', '2024-03-24 16:38:13'),
(21, 25, 'smtp', 'info@airprp.com\n', 'zuhaib@technooffshore.com', 'Please verify your email address', '<p>Hi @ (),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;897336</span></font></div></div></p>', 'email', '2024-03-24 16:45:48', '2024-03-24 16:45:48'),
(22, 26, 'smtp', 'info@airprp.com\n', 'zohaibh66@outlook.com', 'Please verify your email address', '<p>Hi @ (),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;703792</span></font></div></div></p>', 'email', '2024-03-24 16:49:28', '2024-03-24 16:49:28'),
(23, 26, 'smtp', 'info@airprp.com\n', 'zohaibh66@outlook.com', 'Please verify your email address', '<p>Hi @ (),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;768491</span></font></div></div></p>', 'email', '2024-03-24 16:51:30', '2024-03-24 16:51:30'),
(24, 27, 'smtp', 'info@airprp.com\n', 'qasimsajjad106@gmail.com', 'Please verify your email address', '<p>Hi @ (),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;430483</span></font></div></div></p>', 'email', '2024-03-26 11:19:59', '2024-03-26 11:19:59'),
(25, 28, 'smtp', 'info@airprp.com\n', 'qasimsajjad106@gmail.com', 'Please verify your email address', '<p>Hi @ (),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;403003</span></font></div></div></p>', 'email', '2024-03-26 11:23:35', '2024-03-26 11:23:35'),
(26, 29, 'smtp', 'info@airprp.com\n', 'qasimsajjad106@gmail.com', 'Please verify your email address', '<p>Hi @ (),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;574207</span></font></div></div></p>', 'email', '2024-03-26 11:25:20', '2024-03-26 11:25:20'),
(27, 30, 'smtp', 'info@airprp.com\n', 'qasimsajjad106@gmail.com', 'Please verify your email address', '<p>Hi @ (),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;730664</span></font></div></div></p>', 'email', '2024-03-26 11:41:17', '2024-03-26 11:41:17'),
(28, 31, 'smtp', 'info@airprp.com\n', 'qasimsajjad106@gmail.com', 'Please verify your email address', '<p>Hi @ (),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;334368</span></font></div></div></p>', 'email', '2024-03-26 11:48:23', '2024-03-26 11:48:23'),
(29, 32, 'smtp', 'info@airprp.com\n', 'qasimsajjad106@gmail.com', 'Please verify your email address', '<p>Hi @ (),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;168458</span></font></div></div></p>', 'email', '2024-03-29 10:25:49', '2024-03-29 10:25:49'),
(30, 33, 'smtp', 'info@airprp.com\n', 'qasimsajjad106@gmail.com', 'Please verify your email address', '<p>Hi @ (),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;973833</span></font></div></div></p>', 'email', '2024-03-29 10:46:14', '2024-03-29 10:46:14'),
(31, 34, 'smtp', 'info@airprp.com\n', 'qasimsajjad106@gmail.com', 'Please verify your email address', '<p>Hi @ (),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;599129</span></font></div></div></p>', 'email', '2024-03-29 10:55:05', '2024-03-29 10:55:05'),
(32, 35, 'smtp', 'info@airprp.com\n', 'wupivavi@mailinator.com', 'Please verify your email address', '<p>Hi @ (),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;696733</span></font></div></div></p>', 'email', '2024-03-29 10:57:24', '2024-03-29 10:57:24'),
(33, 36, 'smtp', 'info@airprp.com\n', 'qasimsajjad106@gmail.com', 'Please verify your email address', '<p>Hi @ (),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;209008</span></font></div></div></p>', 'email', '2024-03-29 10:58:36', '2024-03-29 10:58:36'),
(34, 37, 'smtp', 'info@airprp.com\n', 'qasimsajjad106@gmail.com', 'Please verify your email address', '<p>Hi @ (),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;204302</span></font></div></div></p>', 'email', '2024-03-29 11:01:36', '2024-03-29 11:01:36'),
(35, 38, 'smtp', 'info@airprp.com\n', 'qasimsajjad106@gmail.com', 'Please verify your email address', '<p>Hi @ (),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;169372</span></font></div></div></p>', 'email', '2024-03-29 11:16:11', '2024-03-29 11:16:11'),
(36, 39, 'smtp', 'info@airprp.com\n', 'qasimsajjad106@gmail.com', 'Please verify your email address', '<p>Hi @ (),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;271996</span></font></div></div></p>', 'email', '2024-03-29 11:29:30', '2024-03-29 11:29:30'),
(37, 0, 'smtp', 'info@airprp.com\n', 'airprpone@gmail.com', 'SMTP Configuration Success', '<p>Hi airprpone (airprpone@gmail.com),&nbsp;</p><p>Your email notification setting is configured successfully for airprp</p>', 'email', '2024-04-01 22:47:48', '2024-04-01 22:47:48'),
(38, 41, 'smtp', 'info@airprp.com\n', 'qasimsajjad106@gmail.com', 'Please verify your email address', '<p>Hi @ (),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;492896</span></font></div></div></p>', 'email', '2024-04-04 11:56:40', '2024-04-04 11:56:40'),
(39, 42, 'smtp', 'info@airprp.com\n', 'qasimsajjad106@gmail.com', 'Please verify your email address', '<p>Hi @ (),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;617903</span></font></div></div></p>', 'email', '2024-04-04 12:09:31', '2024-04-04 12:09:31'),
(40, 43, 'smtp', 'info@airprp.com\n', 'qasimsajjad106@gmail.com', 'Please verify your email address', '<p>Hi @ (),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;610958</span></font></div></div></p>', 'email', '2024-04-04 12:14:04', '2024-04-04 12:14:04'),
(41, 46, 'smtp', 'info@airprp.com\n', 'gipom72025@idsho.com', 'Please verify your email address', '<p>Hi @ (),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;845498</span></font></div></div></p>', 'email', '2024-04-25 10:51:41', '2024-04-25 10:51:41'),
(42, 47, 'smtp', 'info@airprp.com\n', 'qasimsajjad106@gmail.com', 'Please verify your email address', '<p>Hi @ (),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;690610</span></font></div></div></p>', 'email', '2024-05-07 14:57:35', '2024-05-07 14:57:35'),
(43, 48, 'smtp', 'info@airprp.com\n', 'trqmalik72@gmail.com', 'Please verify your email address', '<p>Hi @ (),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;124196</span></font></div></div></p>', 'email', '2024-05-10 19:55:04', '2024-05-10 19:55:04'),
(44, 49, 'smtp', 'info@airprp.com\n', 'testing@gmail.com', 'Please verify your email address', '<p>Hi @ (),&nbsp;</p><p><br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;439056</span></font></div></div></p>', 'email', '2024-05-20 12:18:32', '2024-05-20 12:18:32');

-- --------------------------------------------------------

--
-- Table structure for table `notification_templates`
--

CREATE TABLE `notification_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `act` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `subj` varchar(255) DEFAULT NULL,
  `email_body` text DEFAULT NULL,
  `sms_body` text DEFAULT NULL,
  `shortcodes` text DEFAULT NULL,
  `email_status` tinyint(1) NOT NULL DEFAULT 1,
  `sms_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_templates`
--

INSERT INTO `notification_templates` (`id`, `act`, `name`, `subj`, `email_body`, `sms_body`, `shortcodes`, `email_status`, `sms_status`, `created_at`, `updated_at`) VALUES
(1, 'BAL_ADD', 'Balance - Added', 'Your Account has been Credited', '<div><div style=\"font-family: Montserrat, sans-serif;\">{{amount}} {{site_currency}} has been added to your account .</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Transaction Number : {{trx}}</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><span style=\"color: rgb(33, 37, 41); font-family: Montserrat, sans-serif;\">Your Current Balance is :&nbsp;</span><font style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\">{{post_balance}}&nbsp; {{site_currency}}&nbsp;</span></font><br></div><div><font style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></font></div><div>Admin note:&nbsp;<span style=\"color: rgb(33, 37, 41); font-size: 12px; font-weight: 600; white-space: nowrap; text-align: var(--bs-body-text-align);\">{{remark}}</span></div>', '{{amount}} {{site_currency}} credited in your account. Your Current Balance {{post_balance}} {{site_currency}} . Transaction: #{{trx}}. Admin note is \"{{remark}}\"', '{\"trx\":\"Transaction number for the action\",\"amount\":\"Amount inserted by the admin\",\"remark\":\"Remark inserted by the admin\",\"post_balance\":\"Balance of the user after this transaction\"}', 1, 0, '2021-11-03 12:00:00', '2022-09-21 13:04:13'),
(2, 'BAL_SUB', 'Balance - Subtracted', 'Your Account has been Debited', '<div style=\"font-family: Montserrat, sans-serif;\">{{amount}} {{site_currency}} has been subtracted from your account .</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Transaction Number : {{trx}}</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><span style=\"color: rgb(33, 37, 41); font-family: Montserrat, sans-serif;\">Your Current Balance is :&nbsp;</span><font style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\">{{post_balance}}&nbsp; {{site_currency}}</span></font><br><div><font style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></font></div><div>Admin Note: {{remark}}</div>', '{{amount}} {{site_currency}} debited from your account. Your Current Balance {{post_balance}} {{site_currency}} . Transaction: #{{trx}}. Admin Note is {{remark}}', '{\"trx\":\"Transaction number for the action\",\"amount\":\"Amount inserted by the admin\",\"remark\":\"Remark inserted by the admin\",\"post_balance\":\"Balance of the user after this transaction\"}', 1, 1, '2021-11-03 12:00:00', '2022-04-03 02:24:11'),
(3, 'DEPOSIT_COMPLETE', 'Deposit - Automated - Successful', 'Deposit Completed Successfully', '<div>Your deposit of&nbsp;<span style=\"font-weight: bolder;\">{{amount}} {{site_currency}}</span>&nbsp;is via&nbsp;&nbsp;<span style=\"font-weight: bolder;\">{{method_name}}&nbsp;</span>has been completed Successfully.<span style=\"font-weight: bolder;\"><br></span></div><div><span style=\"font-weight: bolder;\"><br></span></div><div><span style=\"font-weight: bolder;\">Details of your Deposit :<br></span></div><div><br></div><div>Amount : {{amount}} {{site_currency}}</div><div>Charge:&nbsp;<font color=\"#000000\">{{charge}} {{site_currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div>Received : {{method_amount}} {{method_currency}}<br></div><div>Paid via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"5\"><span style=\"font-weight: bolder;\"><br></span></font></div><div><font size=\"5\">Your current Balance is&nbsp;<span style=\"font-weight: bolder;\">{{post_balance}} {{site_currency}}</span></font></div><div><br style=\"font-family: Montserrat, sans-serif;\"></div>', '{{amount}} {{site_currency}} Deposit successfully by {{method_name}}', '{\"trx\":\"Transaction number for the deposit\",\"amount\":\"Amount inserted by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the deposit method\",\"method_currency\":\"Currency of the deposit method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"post_balance\":\"Balance of the user after this transaction\"}', 1, 1, '2021-11-03 12:00:00', '2022-04-03 02:25:43'),
(4, 'DEPOSIT_APPROVE', 'Deposit - Manual - Approved', 'Your Deposit is Approved', '<div style=\"font-family: Montserrat, sans-serif;\">Your deposit request of&nbsp;<span style=\"font-weight: bolder;\">{{amount}} {{site_currency}}</span>&nbsp;is via&nbsp;&nbsp;<span style=\"font-weight: bolder;\">{{method_name}}&nbsp;</span>is Approved .<span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\">Details of your Deposit :<br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Amount : {{amount}} {{site_currency}}</div><div style=\"font-family: Montserrat, sans-serif;\">Charge:&nbsp;<font color=\"#FF0000\">{{charge}} {{site_currency}}</font></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Conversion Rate : 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div style=\"font-family: Montserrat, sans-serif;\">Received : {{method_amount}} {{method_currency}}<br></div><div style=\"font-family: Montserrat, sans-serif;\">Paid via :&nbsp; {{method_name}}</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Transaction Number : {{trx}}</div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"5\"><span style=\"font-weight: bolder;\"><br></span></font></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"5\">Your current Balance is&nbsp;<span style=\"font-weight: bolder;\">{{post_balance}} {{site_currency}}</span></font></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div>', 'Admin Approve Your {{amount}} {{site_currency}} payment request by {{method_name}} transaction : {{trx}}', '{\"trx\":\"Transaction number for the deposit\",\"amount\":\"Amount inserted by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the deposit method\",\"method_currency\":\"Currency of the deposit method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"post_balance\":\"Balance of the user after this transaction\"}', 1, 1, '2021-11-03 12:00:00', '2022-04-03 02:26:07'),
(5, 'DEPOSIT_REJECT', 'Deposit - Manual - Rejected', 'Your Deposit Request is Rejected', '<div style=\"font-family: Montserrat, sans-serif;\">Your deposit request of&nbsp;<span style=\"font-weight: bolder;\">{{amount}} {{site_currency}}</span>&nbsp;is via&nbsp;&nbsp;<span style=\"font-weight: bolder;\">{{method_name}} has been rejected</span>.<span style=\"font-weight: bolder;\"><br></span></div><div><br></div><div><br></div><div style=\"font-family: Montserrat, sans-serif;\">Conversion Rate : 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div style=\"font-family: Montserrat, sans-serif;\">Received : {{method_amount}} {{method_currency}}<br></div><div style=\"font-family: Montserrat, sans-serif;\">Paid via :&nbsp; {{method_name}}</div><div style=\"font-family: Montserrat, sans-serif;\">Charge: {{charge}}</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Transaction Number was : {{trx}}</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">if you have any queries, feel free to contact us.<br></div><br style=\"font-family: Montserrat, sans-serif;\"><div style=\"font-family: Montserrat, sans-serif;\"><br><br></div><span style=\"color: rgb(33, 37, 41); font-family: Montserrat, sans-serif;\">{{rejection_message}}</span><br>', 'Admin Rejected Your {{amount}} {{site_currency}} payment request by {{method_name}}\r\n\r\n{{rejection_message}}', '{\"trx\":\"Transaction number for the deposit\",\"amount\":\"Amount inserted by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the deposit method\",\"method_currency\":\"Currency of the deposit method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"rejection_message\":\"Rejection message by the admin\"}', 1, 1, '2021-11-03 12:00:00', '2022-04-05 03:45:27'),
(6, 'DEPOSIT_REQUEST', 'Deposit - Manual - Requested', 'Deposit Request Submitted Successfully', '<div>Your deposit request of&nbsp;<span style=\"font-weight: bolder;\">{{amount}} {{site_currency}}</span>&nbsp;is via&nbsp;&nbsp;<span style=\"font-weight: bolder;\">{{method_name}}&nbsp;</span>submitted successfully<span style=\"font-weight: bolder;\">&nbsp;.<br></span></div><div><span style=\"font-weight: bolder;\"><br></span></div><div><span style=\"font-weight: bolder;\">Details of your Deposit :<br></span></div><div><br></div><div>Amount : {{amount}} {{site_currency}}</div><div>Charge:&nbsp;<font color=\"#FF0000\">{{charge}} {{site_currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}}<br></div><div>Pay via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><br style=\"font-family: Montserrat, sans-serif;\"></div>', '{{amount}} {{site_currency}} Deposit requested by {{method_name}}. Charge: {{charge}} . Trx: {{trx}}', '{\"trx\":\"Transaction number for the deposit\",\"amount\":\"Amount inserted by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the deposit method\",\"method_currency\":\"Currency of the deposit method\",\"method_amount\":\"Amount after conversion between base currency and method currency\"}', 1, 1, '2021-11-03 12:00:00', '2022-04-03 02:29:19'),
(7, 'PASS_RESET_CODE', 'Password - Reset - Code', 'Password Reset', '<div style=\"font-family: Montserrat, sans-serif;\">We have received a request to reset the password for your account on&nbsp;<span style=\"font-weight: bolder;\">{{time}} .<br></span></div><div style=\"font-family: Montserrat, sans-serif;\">Requested From IP:&nbsp;<span style=\"font-weight: bolder;\">{{ip}}</span>&nbsp;using&nbsp;<span style=\"font-weight: bolder;\">{{browser}}</span>&nbsp;on&nbsp;<span style=\"font-weight: bolder;\">{{operating_system}}&nbsp;</span>.</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><br style=\"font-family: Montserrat, sans-serif;\"><div style=\"font-family: Montserrat, sans-serif;\"><div>Your account recovery code is:&nbsp;&nbsp;&nbsp;<font size=\"6\"><span style=\"font-weight: bolder;\">{{code}}</span></font></div><div><br></div></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><div><font size=\"4\" color=\"#CC0000\"><br></font></div>', 'Your account recovery code is: {{code}}', '{\"code\":\"Verification code for password reset\",\"ip\":\"IP address of the user\",\"browser\":\"Browser of the user\",\"operating_system\":\"Operating system of the user\",\"time\":\"Time of the request\"}', 1, 0, '2021-11-03 12:00:00', '2022-03-20 20:47:05'),
(8, 'PASS_RESET_DONE', 'Password - Reset - Confirmation', 'You have reset your password', '<p style=\"font-family: Montserrat, sans-serif;\">You have successfully reset your password.</p><p style=\"font-family: Montserrat, sans-serif;\">You changed from&nbsp; IP:&nbsp;<span style=\"font-weight: bolder;\">{{ip}}</span>&nbsp;using&nbsp;<span style=\"font-weight: bolder;\">{{browser}}</span>&nbsp;on&nbsp;<span style=\"font-weight: bolder;\">{{operating_system}}&nbsp;</span>&nbsp;on&nbsp;<span style=\"font-weight: bolder;\">{{time}}</span></p><p style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></p><p style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><font color=\"#ff0000\">If you did not change that, please contact us as soon as possible.</font></span></p>', 'Your password has been changed successfully', '{\"ip\":\"IP address of the user\",\"browser\":\"Browser of the user\",\"operating_system\":\"Operating system of the user\",\"time\":\"Time of the request\"}', 1, 1, '2021-11-03 12:00:00', '2022-04-05 03:46:35'),
(9, 'ADMIN_SUPPORT_REPLY', 'Support - Reply', 'Reply Support Ticket', '<div><p><span data-mce-style=\"font-size: 11pt;\" style=\"font-size: 11pt;\"><span style=\"font-weight: bolder;\">A member from our support team has replied to the following ticket:</span></span></p><p><span style=\"font-weight: bolder;\"><span data-mce-style=\"font-size: 11pt;\" style=\"font-size: 11pt;\"><span style=\"font-weight: bolder;\"><br></span></span></span></p><p><span style=\"font-weight: bolder;\">[Ticket#{{ticket_id}}] {{ticket_subject}}<br><br>Click here to reply:&nbsp; {{link}}</span></p><p>----------------------------------------------</p><p>Here is the reply :<br></p><p>{{reply}}<br></p></div><div><br style=\"font-family: Montserrat, sans-serif;\"></div>', 'Your Ticket#{{ticket_id}} :  {{ticket_subject}} has been replied.', '{\"ticket_id\":\"ID of the support ticket\",\"ticket_subject\":\"Subject  of the support ticket\",\"reply\":\"Reply made by the admin\",\"link\":\"URL to view the support ticket\"}', 1, 1, '2021-11-03 12:00:00', '2022-03-20 20:47:51'),
(10, 'EVER_CODE', 'Verification - Email', 'Please verify your email address', '<br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;{{code}}</span></font></div></div>', '---', '{\"code\":\"Email verification code\"}', 1, 0, '2021-11-03 12:00:00', '2022-04-03 02:32:07'),
(11, 'SVER_CODE', 'Verification - SMS', 'Verify Your Mobile Number', '---', 'Your phone verification code is: {{code}}', '{\"code\":\"SMS Verification Code\"}', 0, 1, '2021-11-03 12:00:00', '2022-03-20 19:24:37'),
(12, 'WITHDRAW_APPROVE', 'Withdraw - Approved', 'Withdraw Request has been Processed and your money is sent', '<div style=\"font-family: Montserrat, sans-serif;\">Your withdraw request of&nbsp;<span style=\"font-weight: bolder;\">{{amount}} {{site_currency}}</span>&nbsp; via&nbsp;&nbsp;<span style=\"font-weight: bolder;\">{{method_name}}&nbsp;</span>has been Processed Successfully.<span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\">Details of your withdraw:<br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Amount : {{amount}} {{site_currency}}</div><div style=\"font-family: Montserrat, sans-serif;\">Charge:&nbsp;<font color=\"#FF0000\">{{charge}} {{site_currency}}</font></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Conversion Rate : 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div style=\"font-family: Montserrat, sans-serif;\">You will get: {{method_amount}} {{method_currency}}<br></div><div style=\"font-family: Montserrat, sans-serif;\">Via :&nbsp; {{method_name}}</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Transaction Number : {{trx}}</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">-----</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"4\">Details of Processed Payment :</font></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"4\"><span style=\"font-weight: bolder;\">{{admin_details}}</span></font></div>', 'Admin Approve Your {{amount}} {{site_currency}} withdraw request by {{method_name}}. Transaction {{trx}}', '{\"trx\":\"Transaction number for the withdraw\",\"amount\":\"Amount requested by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the withdraw method\",\"method_currency\":\"Currency of the withdraw method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"admin_details\":\"Details provided by the admin\"}', 1, 1, '2021-11-03 12:00:00', '2022-03-20 20:50:16'),
(13, 'WITHDRAW_REJECT', 'Withdraw - Rejected', 'Withdraw Request has been Rejected and your money is refunded to your account', '<div style=\"font-family: Montserrat, sans-serif;\">Your withdraw request of&nbsp;<span style=\"font-weight: bolder;\">{{amount}} {{site_currency}}</span>&nbsp; via&nbsp;&nbsp;<span style=\"font-weight: bolder;\">{{method_name}}&nbsp;</span>has been Rejected.<span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\">Details of your withdraw:<br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Amount : {{amount}} {{site_currency}}</div><div style=\"font-family: Montserrat, sans-serif;\">Charge:&nbsp;<font color=\"#FF0000\">{{charge}} {{site_currency}}</font></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Conversion Rate : 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div style=\"font-family: Montserrat, sans-serif;\">You should get: {{method_amount}} {{method_currency}}<br></div><div style=\"font-family: Montserrat, sans-serif;\">Via :&nbsp; {{method_name}}</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Transaction Number : {{trx}}</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">----</div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"3\"><br></font></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"3\">{{amount}} {{currency}} has been&nbsp;<span style=\"font-weight: bolder;\">refunded&nbsp;</span>to your account and your current Balance is&nbsp;<span style=\"font-weight: bolder;\">{{post_balance}}</span><span style=\"font-weight: bolder;\">&nbsp;{{site_currency}}</span></font></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">-----</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"4\">Details of Rejection :</font></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"4\"><span style=\"font-weight: bolder;\">{{admin_details}}</span></font></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><br><br><br><br><br></div><div></div><div></div>', 'Admin Rejected Your {{amount}} {{site_currency}} withdraw request. Your Main Balance {{post_balance}}  {{method_name}} , Transaction {{trx}}', '{\"trx\":\"Transaction number for the withdraw\",\"amount\":\"Amount requested by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the withdraw method\",\"method_currency\":\"Currency of the withdraw method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"post_balance\":\"Balance of the user after fter this action\",\"admin_details\":\"Rejection message by the admin\"}', 1, 1, '2021-11-03 12:00:00', '2022-03-20 20:57:46'),
(14, 'WITHDRAW_REQUEST', 'Withdraw - Requested', 'Withdraw Request Submitted Successfully', '<div style=\"font-family: Montserrat, sans-serif;\">Your withdraw request of&nbsp;<span style=\"font-weight: bolder;\">{{amount}} {{site_currency}}</span>&nbsp; via&nbsp;&nbsp;<span style=\"font-weight: bolder;\">{{method_name}}&nbsp;</span>has been submitted Successfully.<span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\">Details of your withdraw:<br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Amount : {{amount}} {{site_currency}}</div><div style=\"font-family: Montserrat, sans-serif;\">Charge:&nbsp;<font color=\"#FF0000\">{{charge}} {{site_currency}}</font></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Conversion Rate : 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div style=\"font-family: Montserrat, sans-serif;\">You will get: {{method_amount}} {{method_currency}}<br></div><div style=\"font-family: Montserrat, sans-serif;\">Via :&nbsp; {{method_name}}</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Transaction Number : {{trx}}</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"5\">Your current Balance is&nbsp;<span style=\"font-weight: bolder;\">{{post_balance}} {{site_currency}}</span></font></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><br><br><br></div>', '{{amount}} {{site_currency}} withdraw requested by {{method_name}}. You will get {{method_amount}} {{method_currency}} Trx: {{trx}}', '{\"trx\":\"Transaction number for the withdraw\",\"amount\":\"Amount requested by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the withdraw method\",\"method_currency\":\"Currency of the withdraw method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"post_balance\":\"Balance of the user after fter this transaction\"}', 1, 1, '2021-11-03 12:00:00', '2022-03-21 04:39:03'),
(15, 'DEFAULT', 'Default Template', '{{subject}}', '{{message}}', '{{message}}', '{\"subject\":\"Subject\",\"message\":\"Message\"}', 1, 1, '2019-09-14 13:14:22', '2021-11-04 09:38:55');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `slug` varchar(40) DEFAULT NULL,
  `tempname` varchar(40) DEFAULT NULL COMMENT 'template name',
  `secs` text DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `tempname`, `secs`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Home', '/', 'presets.default.', '[\"banner\",\"recent_item\",\"hot_deals\",\"work_process\",\"why_choose_us\",\"faq\",\"testimonial\",\"blog\"]', 1, '2020-07-11 06:23:58', '2023-11-16 06:05:39'),
(3, 'Browse', 'browse', 'presets.default.', NULL, 1, '2023-11-17 01:47:47', '2023-11-17 01:47:47'),
(5, 'Contact', 'contact', 'presets.default.', NULL, 1, '2020-10-22 01:14:53', '2023-11-23 12:16:22'),
(6, 'Blog', 'blog', 'presets.default.', NULL, 1, '2020-10-22 01:14:43', '2023-11-23 12:10:28');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(40) DEFAULT NULL,
  `token` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('qasimsajjad106@gmail.com', '813654', '2024-02-27 12:24:21'),
('lawafoods@gmail.com', '304738', '2024-03-15 15:03:46'),
('technooffshore@gmail.com', '976740', '2024-03-15 20:37:58');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `type_id` bigint(11) DEFAULT NULL,
  `tab_id` tinyint(4) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `bed` int(11) DEFAULT NULL,
  `bedroom` int(11) DEFAULT NULL,
  `bath` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `state` varchar(400) DEFAULT NULL,
  `country` varchar(40) DEFAULT NULL,
  `lat` varchar(40) DEFAULT NULL,
  `lon` varchar(40) DEFAULT NULL,
  `property_detail` longtext DEFAULT NULL,
  `regular_price` decimal(28,8) DEFAULT NULL,
  `discount_price` decimal(28,8) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT 'pending = 0,\r\napproved = 1',
  `is_featured` tinyint(4) DEFAULT NULL COMMENT 'not featured = 0,\r\nfeatured = 1',
  `total_review` int(11) DEFAULT NULL,
  `avg_rating` decimal(28,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `personName` varchar(114) DEFAULT NULL,
  `phoneNumber` varchar(343) DEFAULT NULL,
  `Drawing_Room` varchar(114) DEFAULT NULL,
  `Kitchen` varchar(114) DEFAULT NULL,
  `TV` varchar(114) DEFAULT NULL,
  `Refrigrator` varchar(114) DEFAULT NULL,
  `AC` varchar(114) DEFAULT NULL,
  `Heater` varchar(114) DEFAULT NULL,
  `Fan` varchar(114) DEFAULT NULL,
  `Wifi` varchar(114) DEFAULT NULL,
  `Security_Cameras` varchar(114) DEFAULT NULL,
  `Watch_man` varchar(114) DEFAULT NULL,
  `Parking` varchar(114) DEFAULT NULL,
  `Towel` varchar(114) DEFAULT NULL,
  `Linen` varchar(114) DEFAULT NULL,
  `Cupboard` varchar(114) DEFAULT NULL,
  `Bed_Type` varchar(114) DEFAULT NULL,
  `Balcony` varchar(114) DEFAULT NULL,
  `Gym` varchar(114) DEFAULT NULL,
  `Play_Ground` varchar(114) DEFAULT NULL,
  `Room_Type` varchar(114) DEFAULT NULL,
  `Room_Amanities` varchar(114) DEFAULT NULL,
  `Break_Fast` varchar(114) DEFAULT NULL,
  `Room_Service` varchar(114) DEFAULT NULL,
  `Bath_Room_Amanities` varchar(114) DEFAULT NULL,
  `Pick_Drop` varchar(114) DEFAULT NULL,
  `room_bath` varchar(114) DEFAULT NULL,
  `first_name` varchar(222) DEFAULT NULL,
  `last_name` varchar(222) DEFAULT NULL,
  `Town` varchar(222) DEFAULT NULL,
  `Area` varchar(222) DEFAULT NULL,
  `house_no` varchar(222) DEFAULT NULL,
  `building_name` varchar(222) DEFAULT NULL,
  `Street_No` varchar(222) DEFAULT NULL,
  `Near` varchar(222) DEFAULT NULL,
  `discount_price_7` varchar(114) DEFAULT NULL,
  `discount_price_15` varchar(343) DEFAULT NULL,
  `discount_price_30` varchar(114) DEFAULT NULL,
  `meal` varchar(114) DEFAULT NULL,
  `Breakfast_Price` varchar(114) DEFAULT NULL,
  `meal_Price` varchar(343) DEFAULT NULL,
  `Room_Service_price` varchar(114) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `user_id`, `category_id`, `type_id`, `tab_id`, `title`, `capacity`, `bed`, `bedroom`, `bath`, `description`, `location`, `city`, `state`, `country`, `lat`, `lon`, `property_detail`, `regular_price`, `discount_price`, `status`, `is_featured`, `total_review`, `avg_rating`, `created_at`, `updated_at`, `personName`, `phoneNumber`, `Drawing_Room`, `Kitchen`, `TV`, `Refrigrator`, `AC`, `Heater`, `Fan`, `Wifi`, `Security_Cameras`, `Watch_man`, `Parking`, `Towel`, `Linen`, `Cupboard`, `Bed_Type`, `Balcony`, `Gym`, `Play_Ground`, `Room_Type`, `Room_Amanities`, `Break_Fast`, `Room_Service`, `Bath_Room_Amanities`, `Pick_Drop`, `room_bath`, `first_name`, `last_name`, `Town`, `Area`, `house_no`, `building_name`, `Street_No`, `Near`, `discount_price_7`, `discount_price_15`, `discount_price_30`, `meal`, `Breakfast_Price`, `meal_Price`, `Room_Service_price`) VALUES
(43, 11, 1, NULL, NULL, 'Condo in karachi', NULL, NULL, NULL, 1, '<p><strong>3BR+3BTH+drawing+terrace with a sea view, Clifton</strong></p>', 'H4CV+9X8, Rd Number 3, PWD Housing Society Sector C PWD Society, Rawalpindi, Islamabad, Punjab, Pakistan', 'islamabad', 'Punjab', NULL, '33.570816', '73.1447296', NULL, 10000.00000000, 500.00000000, 1, 0, NULL, 0.00, '2024-05-07 15:45:35', '2024-05-10 11:25:01', NULL, '79483294', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'No', 'No', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'Yes', NULL, NULL, NULL, 'Qasim', 'sajjad', 'islamabad', 'Aiza garden', '12', 'Malik house', '12', 'BM steel mills', '1', '2', '3', 'No', '120', NULL, '230');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `owner_id` bigint(20) DEFAULT NULL,
  `property_id` bigint(20) UNSIGNED DEFAULT NULL,
  `review` text DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_attachments`
--

CREATE TABLE `support_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_message_id` int(10) UNSIGNED DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_messages`
--

CREATE TABLE `support_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_ticket_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `message` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_messages`
--

INSERT INTO `support_messages` (`id`, `support_ticket_id`, `admin_id`, `message`, `created_at`, `updated_at`) VALUES
(26, 26, 0, 'Interested in maximizing your reach? You\'re reading this message and I can get others to read your ad the exact same way! Drop me an email below to learn more about our services and start spreading your message effectively!\r\n\r\nP. Stewart\r\nEmail: nqhu9g@gomail2.xyz\r\nSkype: live:.cid.2bc4ed65aa40fb3b', '2024-03-16 22:28:25', '2024-03-16 22:28:25'),
(27, 27, 0, 'So I just pre-ordered my FREE copy of Russell Brunson’s\r\nnew book, “Traffic Secrets.”\r\n\r\nAll I had to do was pay a tiny shipping charge. That’s it. \r\n\r\nHere’s the link to get your copy: \r\n\r\nPre-order My Copy of Traffic Secrets: https://bit.ly/toptrafficsecret\r\n\r\nPersonally, I’ve been waiting for this book because I heard through the grapevine that it’s like no other ‘traffic’ book out there.\r\n\r\nBecause it’s all evergreen strategy and long-term stuff that you can \r\nuse to build a list of buyers and followers in record time... \r\n\r\nNo matter what platform you use to drive traffic, including...\r\n\r\nGoogle, YouTube, Facebook, Instagram, Podcasts and others.\r\n\r\nRussell shares the same strategies he used to take Clickfunnels\r\nfrom zero to over $100,000,000 in revenue in just 3 years.\r\n\r\nAnd you get the same traffic formulas, scripts, and blueprints he shares with his Inner Circle, ClickFunnels Collective students, and Two Comma Club members. \r\n\r\nPre-order My Copy of Traffic Secrets now: https://bit.ly/toptrafficsecret\r\n\r\nRemember, the book is FREE + a small shipping fee.\r\n\r\nTalk soon!\r\n\r\nP.S. If you want the audio version, you can also pre-order that\r\nas well!\r\n\r\nPre-order My Copy of Traffic Secrets: https://bit.ly/toptrafficsecret', '2024-03-19 04:15:31', '2024-03-19 04:15:31'),
(28, 28, 0, 'Hello, \r\n \r\nWe provide funding through our venture capital company to both start-up and existing companies either looking for funding for expansion or to accelerate growth in their company. \r\nWe have a structured joint venture investment plan in which we are interested in an annual return on investment not more than 10% ROI. We are also currently structuring a convertible debt and loan financing of 3% interest repayable annually with no early repayment penalties. \r\n \r\nWe would like to review your business plan or executive summary to understand a much better idea of your business and what you are looking to do, this will assist in determining the best possible investment structure we can pursue and discuss more extensively. \r\n \r\nI hope to hear back from you soon. \r\n \r\nSincerely, \r\n \r\nSyed Atif \r\nInvestment Director \r\nDevcorp International E.C. \r\nP.O Box 10236 Shop No. 305 \r\nFlr 3 Manama Centre, Bahrain \r\nEmail: syedatif1001@gmail.com \r\nWebsite: https://devcorpinternational.com', '2024-03-29 03:13:53', '2024-03-29 03:13:53'),
(29, 29, 0, 'Get Found On The First Page of Google in Less Than 2 weeks by Using our Priority Stealth S.E.O. Syndication Method.\r\n\r\nPay us once and you\'ll get Organic Search Engine Results using videos that will continue to drive traffic 24/7 year round!\r\n \r\nThe Benefits are incredible - since by paying us once there will be:\r\n\r\n- No Additional Ad spend needed!\r\n\r\n- No Additional Costs for Ad copy!\r\n\r\n- No Additional Costs per Clicks!\r\n\r\n- No Commercial Licensing fees ever!\r\n\r\nGet Started Today and Get Seen Tomorrow!\r\n\r\nLearn More: Reviews2Videos.com', '2024-03-31 10:01:12', '2024-03-31 10:01:12'),
(30, 30, 0, 'Ready to blast your message across the digital universe? Just as you\'re engaging with this ad, imagine your brand message reaching countless website contact forms worldwide! Starting at just under $100, unlock the potential to reach 1 million forms. Reach out to me below for details\r\n\r\nP. Stewart\r\nEmail: t6vch4@mail-to-form.xyz\r\nSkype: form-blasting', '2024-03-31 22:05:27', '2024-03-31 22:05:27'),
(31, 31, 0, 'MEYJTJ968881MARETRYTR', '2024-04-01 08:37:12', '2024-04-01 08:37:12'),
(32, 32, 0, 'Is the thought of making payroll every two weeks causing you undue stress? I can fix that, let me show you how. Send me an email below now.\r\n\r\nElizabeth Miller\r\nWorking Capital Loan Specialist\r\n295 Seven Farms Drive\r\nSuite C- 201\r\nCharleston, SC 29492\r\nwww.HelloRatesFastFunding.com\r\nelizabeth.miller@helloratesfastfunding.com', '2024-04-02 04:49:32', '2024-04-02 04:49:32'),
(33, 33, 0, 'Worried about your business cash flow and being able to make payroll? I can fix that, let me show you how. Send me an email below now.\r\n\r\nElizabeth Miller\r\nWorking Capital Loan Specialist\r\n295 Seven Farms Drive\r\nSuite C- 201\r\nCharleston, SC 29492\r\nwww.HelloRatesFastFunding.com\r\nelizabeth.miller@helloratesfastfunding.com', '2024-04-03 09:33:53', '2024-04-03 09:33:53'),
(34, 34, 0, 'Labore quas minus er', '2024-04-04 11:23:20', '2024-04-04 11:23:20'),
(35, 32, 1, 'er', '2024-04-04 11:30:28', '2024-04-04 11:30:28'),
(36, 35, 0, 'Necessitatibus verit', '2024-04-04 11:38:23', '2024-04-04 11:38:23'),
(37, 36, 0, 'Doloremque praesenti', '2024-04-04 11:41:17', '2024-04-04 11:41:17'),
(38, 37, 0, 'Soluta reprehenderit', '2024-04-04 11:42:58', '2024-04-04 11:42:58'),
(39, 38, 0, 'Hi airprp.com,\r\n\r\nI hope you are doing great!\r\n\r\nI was going through your website on behalf of this email. It has a good design and it looks great, but it’s not ranking in top on Google and other major search engines.\r\n\r\nI’m an SEO Expert and I helped over 250 businesses rank on the (1st Page on Google). My rates are very affordable.\r\n\r\nLet me know if you are interested, then I can send you our SEO Packages and Price list.\r\n\r\nThanks & Regards,\r\nKush S\r\nSr SEO consultant\r\nPh. No: 1 469-663-1569\r\n\r\n\r\n\r\n\r\n\r\n\r\nIf you don’t want me to contact you again about this, reply with “opt-out”', '2024-04-08 04:40:12', '2024-04-08 04:40:12'),
(40, 39, 0, 'Hi there \r\n\r\nI wanted to reach out and let you know about our new dog harness. It\'s really easy to put on and take off - in just 2 seconds - and it\'s personalized for each dog. \r\nPlus, we offer a lifetime warranty so you can be sure your pet is always safe and stylish.\r\n\r\nWe\'ve had a lot of success with it so far and I think your dog would love it. \r\n\r\nGet yours today with 50% OFF:  https://caredogbest.com\r\n\r\nFREE Shipping - TODAY ONLY! \r\n\r\nBest regards, \r\n\r\nCarroll', '2024-04-13 21:36:59', '2024-04-13 21:36:59'),
(41, 40, 0, 'Hi there, my name is Cody Griner. I apologize for using your contact form, \r\nbut I wasn\'t sure who the right person was to speak with in your company. \r\nWe have a patented application that creates Local Area pages that rank on \r\ntop of Google within weeks, we call it Local Magic.  Here is a link to the \r\nproduct page https://www.mrmarketingres.com/local-magic/ . The product \r\nleverages technology where these pages are managed dynamically by AI and \r\nit is ideal for promoting contractors on Google.  Can I share a testimonial \r\nfrom one of our clients with you?  I can also do a short zoom to \r\nillustrate their full case study if you have time for it? \r\ncody@mrmarketingres.com 843-720-7301', '2024-04-15 04:02:59', '2024-04-15 04:02:59'),
(42, 41, 0, 'Hello airprp.com,\r\n\r\nI would like to discuss SEO!\r\n\r\nI can help your website to get on first page of Google and increase the number of leads and sales you are getting from your website.\r\n\r\nMay I send you a quote & price list?\r\n\r\nThanks & Regards\r\nPaul | Lets Get You Optimize\r\nSr SEO consultant\r\nwww.letsgetuoptimize.com\r\nPhone No: +1 (949) 313-8897\r\n\r\n\r\n\r\n\r\n\r\nIf you don’t want me to contact you again about this, reply with “opt-out”', '2024-04-15 21:41:44', '2024-04-15 21:41:44'),
(43, 42, 0, 'Want Your Ad Everywhere? Reach Millions Instantly! For less than $100 I can blast your message to website contact forms globally. Contact me via skype or email below for info\r\n\r\nP. Stewart\r\nEmail: g8zcvw@mail-to-form.xyz\r\nSkype: form-blasting', '2024-04-17 15:49:16', '2024-04-17 15:49:16'),
(44, 43, 0, 'Odowidjwoidwo wojdwkslqmwjfbjjdwkd jkwlsqswknfbjwjdmkqendj kedwjdbwhbdqjswkdwjfj eqwkdwknf airprp.com', '2024-04-18 18:34:32', '2024-04-18 18:34:32'),
(45, 44, 0, 'Hi there \r\n \r\nAre you tired of spending money on advertising that doesn’t work? \r\nWe have the right strategy for you, to meet the right audience within your City boundaries. \r\n \r\nB2B Local City Marketing that works: \r\nhttps://www.onlinelocalmarketing.org/product/local-research-advertising/ \r\n \r\nWith our innovative marketing approach, you will receive calls, leads, and website interactions within a week. \r\n \r\nRegards \r\nMike Tracey\r\n https://www.onlinelocalmarketing.org', '2024-04-23 07:28:10', '2024-04-23 07:28:10'),
(46, 45, 0, 'Hi there, my name is Cody Griner. I apologize for using your contact form, \r\nbut I wasn\'t sure who the right person was to speak with in your company. \r\nWe have a patented application that creates Local Area pages that rank on \r\ntop of Google within weeks, we call it Local Magic.  Here is a link to the \r\nproduct page https://www.mrmarketingres.com/local-magic/ . The product \r\nleverages technology where these pages are managed dynamically by AI and \r\nit is ideal for promoting contractors on Google.  Can I share a testimonial \r\nfrom one of our clients with you?  I can also do a short zoom to \r\nillustrate their full case study if you have time for it? \r\ncody@mrmarketingres.com 843-720-7301', '2024-04-24 00:01:20', '2024-04-24 00:01:20'),
(47, 46, 0, 'Rising business expenses are starting to take a toll on small business owners.\r\n\r\nYou are not alone. It\'s affecting every industry.\r\n\r\nOne way to give yourself some breathing room is to obtain enough working capital to bridge you through the tough times. \r\n\r\nGet a no obligation working capital quote in less than 2 minutes. \r\n\r\n** USA Based Businesses Only! **\r\n\r\nSend me a message at my contact info below for info\r\n\r\nElizabeth Miller\r\nelizabeth.miller@helloratesfastfunding.com\r\nhttps://www.helloratesfastfunding.com', '2024-04-27 18:59:24', '2024-04-27 18:59:24'),
(48, 47, 0, 'Do not stay out of business, or close down due to lack of Funding and finance. Your projects, businesses, and financial needs are entirely achievable.\r\n\r\nYou can now fund your projects, businesses without worries of repayment as you can have ample amount of time to execute your projects and businesses and build up, grow financially, to achieve your complete set goals.\r\n\r\nIf you\'re also a broker or consultant, Make life easy for your diverse clientele globally to facilitate funding for their various Businesses and Projects, helping them progress towards their business and financial goals.\r\n\r\nChu Yeung\r\nCustomer Care Department\r\nPlease reply to: customersupport@charterunionfin.com\r\nOr call me at: +852 8199 9324\r\n\r\nOr visit: https://charterunionfin.com/?refid=2016\r\n+852 8199 9324\r\n\r\n\r\nUnsubscribe here if you don\'t want to get these offers: https://docs.google.com/forms/d/e/1FAIpQLSdx-LI-ETiB-g37_ijIRHfBNhu__c-Go1dyOyZ_zU_pgeYTEg/viewform?usp=sf_link\r\nPrenzlauer Allee 35, Beacon, NY, USA, 4100', '2024-04-30 03:14:15', '2024-04-30 03:14:15'),
(49, 48, 0, 'Hi there, my name is Cody Griner. I apologize for using your contact form, \r\nbut I wasn\'t sure who the right person was to speak with in your company. \r\nWe have a patented application that creates Local Area pages that rank on \r\ntop of Google within weeks, we call it Local Magic.  Here is a link to the \r\nproduct page https://www.mrmarketingres.com/local-magic/ . The product \r\nleverages technology where these pages are managed dynamically by AI and \r\nit is ideal for promoting contractors on Google.  Can I share a testimonial \r\nfrom one of our clients with you?  I can also do a short zoom to \r\nillustrate their full case study if you have time for it? \r\ncody@mrmarketingres.com 843-720-7301', '2024-05-01 00:04:28', '2024-05-01 00:04:28'),
(50, 49, 0, 'Finally, an all in one customer financing solution for ANY credit score between 500-850 FICO Stop losing clients just because they have poor credit scores\r\n\r\n== Must Be A US Based Business To Qualify ==\r\n\r\nGet in touch with me below for more info\r\n\r\nJessica Snyder\r\njessica.snyder@helloratespros.com\r\nhttps://helloratespros.com/5-6/', '2024-05-05 07:14:23', '2024-05-05 07:14:23'),
(51, 50, 0, 'May 17th is quickly approaching - have you filed for your $32,222 SETEC Tax Credit yet?\r\n\r\nClick the link, watch the short video ( https://www.youtube.com/watch?v=WCe0W8a_oag )\r\n\r\nand if you qualify, fill out the form https://aluzzion.com/go/setc-tax-credit\r\n\r\nSETC Pros boasts a 90% success rate in aiding individuals to obtain the Tax Credits they rightfully deserve. This is not a loan and there is nothing to payback, this is remaining COVID-19 tax credit money.\r\n\r\n\r\n\r\nUnsubscribe here if you don\'t want to get these awesome offers: https://docs.google.com/forms/d/e/1FAIpQLSdcwuJWADnzhVPQ1oEJbZrRzfKxwrFT5faCQO7SH8YL_GDFxw/viewform?usp=sf_link\r\n79 Loris Way, Gloversville, NY, US, 6308', '2024-05-06 09:29:45', '2024-05-06 09:29:45'),
(52, 51, 0, 'Voluptatum unde omni', '2024-05-06 14:55:03', '2024-05-06 14:55:03'),
(53, 52, 0, 'Hello there \r\n\r\nLooking to improve your posture and live a healthier life? Our Medico Postura™ Body Posture Corrector is here to help!\r\n\r\nExperience instant posture improvement with Medico Postura™. This easy-to-use device can be worn anywhere, anytime – at home, work, or even while you sleep.\r\n\r\nMade from lightweight, breathable fabric, it ensures comfort all day long.\r\n\r\nGrab it today at a fantastic 60% OFF: https://medicopostura.com\r\n\r\nPlus, enjoy FREE shipping for today only!\r\n\r\nDon\'t miss out on this amazing deal. Get yours now and start transforming your posture!\r\n\r\nHave a great time, \r\n\r\nCoy', '2024-05-07 01:57:38', '2024-05-07 01:57:38'),
(54, 53, 0, 'Hi there, my name is Cody Griner. I apologize for using your contact form, \r\nbut I wasn\'t sure who the right person was to speak with in your company. \r\nWe have a patented application that creates Local Area pages that rank on \r\ntop of Google within weeks, we call it Local Magic.  Here is a link to the \r\nproduct page https://www.mrmarketingres.com/local-magic/ . The product \r\nleverages technology where these pages are managed dynamically by AI and \r\nit is ideal for promoting contractors on Google.  Can I share a testimonial \r\nfrom one of our clients with you?  I can also do a short zoom to \r\nillustrate their full case study if you have time for it? \r\ncody@mrmarketingres.com 843-720-7301', '2024-05-07 13:00:48', '2024-05-07 13:00:48'),
(55, 54, 0, 'People + Processes + Capital = The Recipe for Business Success\r\n\r\nHowever most small business owners put little thought into the capital needed to scale and grow their business.\r\n\r\nIf you have the people & the business processes in place but no access to working capital, then your business will be stuck in neutral.\r\n\r\nGet a no obligation working capital quote in less than 2 minutes. \r\n\r\n++ This Offer Only For Businesses In The USA ++\r\n\r\nGet in touch with me below for more info\r\n\r\nElizabeth Miller\r\nelizabeth.miller@helloratesfastfunding.com\r\nhttps://www.helloratesfastfunding.com', '2024-05-07 18:58:33', '2024-05-07 18:58:33'),
(56, 55, 0, 'If you were a gig worker, freelancer, content creator, sole proprietor single llc or gig economy worker you may be eligible for up to $32,222\r\n\r\nClick the link, watch the short video ( https://www.youtube.com/watch?v=WCe0W8a_oag )\r\n\r\nand if you qualify, fill out the form https://aluzzion.com/go/setc-tax-credit\r\n\r\nSETC Pros boasts a 90% success rate in aiding individuals to obtain the Tax Credits they rightfully deserve. This is not a loan and there is nothing to payback, this is remaining COVID-19 tax credit money.\r\n\r\n\r\n\r\nUnsubscribe here if you don\'t want to get these awesome offers: https://form.jotform.com/241243363091449\r\nBurgemeester Struijkstraat 58, Huntington, New York, USA, 3319 Ce', '2024-05-08 01:33:38', '2024-05-08 01:33:38'),
(57, 56, 0, 'Best financial company to fund your business project globally, i can help, email me here:                                                                                                         info@financeworldwidehk.com', '2024-05-09 02:20:55', '2024-05-09 02:20:55'),
(58, 57, 0, 'In case you\'re a gig worker, freelancer, content creator, sole proprietor, single LLC owner or part of the gig economy, you could be eligible for up to \r\n$32K SETC Tax Credit. Last day is May 17th.\r\n\r\nWatch a brief youtube video by clicking the link ( https://bit.ly/3UoMJlS )\r\n\r\nand if you qualify, fill out the form https://bit.ly/3WDGWvg\r\n\r\nSETC PROS boasts a 90+% success rate in giving service to individuals to obtain the Tax Credits they rightfully deserve. This is not a loan and there is nothing to payback, this is the remaining COVID-19 tax credit money.\r\n\r\n\r\n\r\nUnsubscribe here if you don\'t want to get these great messages: https://form.jotform.com/241243363091449\r\nUl. Kajki Michala 115, Salamanca, NY, US, 04-621', '2024-05-10 19:10:49', '2024-05-10 19:10:49'),
(59, 58, 0, 'Hi Team airprp.com, \r\n \r\nI was looking at your website and realized that despite having a great design; it was not ranking high on any of the search engines (Google, Yahoo & Bing) for most of the keywords related to your business.\r\n\r\nWe can place your website on Google\'s 1st page.\r\n\r\n✓ Top ranking on Google search!\r\n✓ Improve website traffic!\r\n✓ Increase Your Leads, Sales & Revenue!\r\n\r\nIf you are interested, I will send you our SEO Packages and Cost.\r\n \r\nRegards,\r\nBruce Gordon\r\nSr SEO consultant\r\nwww.Increaseorganictraffic.com\r\nPh. No: 1-804-715-1479\r\n\r\n\r\n\r\nIf you don’t want me to contact you again about this, reply with “unsubscribe”', '2024-05-12 12:16:14', '2024-05-12 12:16:14'),
(60, 59, 0, '> Sorry to be a bother, but I was informed that you have either a Residential or Business debt to pay off.\r\n>\r\n> When this is true, we at Cancel1Mortgage.info guarantee your debt will be paid off/Discharged/Extinguished in 14 days when you follow our Client Instructions.\r\n>\r\n> Please visit Cancel1Mortgage.info today and order your debt removal securities Processing now which is 100% legal and ordered by courts to be debt payment.\r\n>\r\n> Thank you for your business and for extinguishing your debt through Cancel1Mortgage.info when you decide to use our very successful registered Promissory Note securities to pay off your debt in 14 days Guaranteed.\r\n>\r\n> You may also contact me, David Young de God, through SKYPE with dayglobal..\r\n>\r\n> Thank you again for reading..', '2024-05-13 09:24:04', '2024-05-13 09:24:04'),
(61, 60, 0, 'Just wanted to ask if you would be interested in getting external help with graphic design? We do all design work like banners, advertisements, brochures, logos, flyers, etc. for a fixed monthly fee. \r\n\r\nWe don\'t charge for each task. What kind of work do you need on a regular basis? Let me know and I\'ll share my portfolio with you.', '2024-05-15 15:24:10', '2024-05-15 15:24:10'),
(62, 61, 0, 'Searching to hire skilled developers for web & app development? Look no further! We offer a wide range of technologies including React, Flutter, Python, Angular, Laravel, Node.js, PHP, MEAN stack, Full stack, Android, Java, .NET, AI, and ML and many more.\r\n\r\nAnd with our rates that are 40% less expensive and 0% developer backing out guarantee, you can hire with confidence. \r\n\r\nGet started with your 40-hour risk-free trial and see the difference!\r\n\r\nhttps://bit.ly/3UWNFzw\r\n\r\n\r\nUnsubscribe here if you don\'t want to get these amaing messages: https://docs.google.com/forms/d/e/1FAIpQLSfqamyB6byPaAwgcS6ofGmo4N4Pqkn2ZutAk6aInDQ_WhohRg/viewform\r\nUl. Generala Polbina Iwana 57, Jamestown, NY, US, 54-151', '2024-05-15 21:10:06', '2024-05-15 21:10:06'),
(63, 62, 0, 'Hi there, my name is Cody Griner. I apologize for using your contact form, \r\nbut I wasn\'t sure who the right person was to speak with in your company. \r\nWe have a patented application that creates Local Area pages that rank on \r\ntop of Google within weeks, we call it Local Magic.  Here is a link to the \r\nproduct page https://www.mrmarketingres.com/local-magic/ . The product \r\nleverages technology where these pages are managed dynamically by AI and \r\nit is ideal for promoting contractors on Google.  Can I share a testimonial \r\nfrom one of our clients with you?  I can also do a short zoom to \r\nillustrate their full case study if you have time for it? \r\ncody@mrmarketingres.com 843-720-7301', '2024-05-20 22:22:50', '2024-05-20 22:22:50'),
(64, 63, 0, 'Hello there, \r\n\r\nI hope this email finds you well. I wanted to let you know about our new BANGE backpacks and sling bags that just released.\r\n\r\nThe bags are waterproof and anti-theft, and have a built-in USB cable that can recharge your phone while you\'re on the go.\r\n\r\nBoth bags are made of durable and high-quality materials, and are perfect for everyday use or travel.\r\n\r\nOrder yours now at 50% OFF with FREE Shipping: http://bangeshop.com\r\n\r\nRegards,\r\n\r\nFaith', '2024-05-21 18:42:56', '2024-05-21 18:42:56'),
(65, 64, 0, 'Interested about the gut-brain connection? Watch our latest installment of The HII Method, where Jen reviews the Netflix docuseries “Hack Your Health: The Secrets of Your Gut.” Learn about the advantages and disadvantages, and be mindful of a major red flag mentioned in the documentary.\r\n\r\n������ [Check Out the Review]\r\nhttps://bit.ly/3K6z1PH\r\n\r\nLearn how your eating and living habits impact your physical and mental health. Join our mailing list and check out our Performance and Wellness Course for more information.\r\n\r\nPlus, discover how your Gut-Brain Axis is functioning. Test yourself today and see how focusing on your gut-brain axis can benefit you.\r\n\r\nOptimize your health from within. \r\nGet started with RESET with a complimentary 10-day sample pack!\r\nhttps://bit.ly/3HIFnDJ\r\n\r\nBest regards,\r\nThe Neuro Force One Team\r\n\r\n\r\n\r\nUnsubscribe here if you don\'t want to get these awesome messages: https://form.jotform.com/241362853020447\r\n4706 Glover Road, Gilbertsville, NY, US, V3a 1z3', '2024-05-22 01:12:01', '2024-05-22 01:12:01'),
(66, 65, 0, 'Game changing customer financing approves down to 500 FICO No more turning down business due to low credit scores\r\n\r\n++ This Offer Only For Businesses In The USA ++\r\n\r\nContact me below for details\r\n\r\nJessica Snyder\r\njessica.snyder@helloratespros.com\r\nhttps://helloratespros.com/5-6/', '2024-05-22 01:55:57', '2024-05-22 01:55:57');

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) DEFAULT 0,
  `name` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `ticket` varchar(40) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: Open, 1: Answered, 2: Replied, 3: Closed',
  `priority` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 = Low, 2 = medium, 3 = heigh',
  `last_reply` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_tickets`
--

INSERT INTO `support_tickets` (`id`, `user_id`, `name`, `email`, `ticket`, `subject`, `status`, `priority`, `last_reply`, `created_at`, `updated_at`) VALUES
(26, 0, 'Phil Stewart', 'noreplyhere@aol.com', '77510006', '??', 0, 2, '2024-03-16 22:28:24', '2024-03-16 22:28:24', '2024-03-16 22:28:24'),
(27, 0, 'Addie Yarbro', 'addie.yarbro85@msn.com', '37260291', 'I just pre-ordered my copy of “Traffic Secrets!” ������', 0, 2, '2024-03-19 04:15:31', '2024-03-19 04:15:31', '2024-03-19 04:15:31'),
(28, 0, 'Syed Atif', 'pr5yukr3hkpq@opayq.com', '41505810', 'Capital Business Funding', 0, 2, '2024-03-29 03:13:53', '2024-03-29 03:13:53', '2024-03-29 03:13:53'),
(29, 0, 'Kandis Logsdon', 'kandis.logsdon@hotmail.com', '08256747', 'Hi airprp.com Owner.', 0, 2, '2024-03-31 10:01:12', '2024-03-31 10:01:12', '2024-03-31 10:01:12'),
(30, 0, 'Phil Stewart', 'noreplyhere@aol.com', '24965025', '??', 0, 2, '2024-03-31 22:05:27', '2024-03-31 22:05:27', '2024-03-31 22:05:27'),
(31, 0, 'NARTYTRYUT968881NERTHRTYHR', 'jennifermorgan2004@noissmail.com', '65538958', 'TOTYJTRT968881TIRSRWETRG', 0, 2, '2024-04-01 08:37:12', '2024-04-01 08:37:12', '2024-04-01 08:37:12'),
(32, 0, 'Nigel Desir', 'nigel.desir@gmail.com', '12913145', 'Hello airprp.com Webmaster.', 1, 2, '2024-04-04 11:30:28', '2024-04-02 04:49:32', '2024-04-04 11:30:28'),
(33, 0, 'Meredith Surratt', 'surratt.meredith@hotmail.com', '46008933', 'Hi airprp.com Owner!', 0, 2, '2024-04-03 09:33:53', '2024-04-03 09:33:53', '2024-04-03 09:33:53'),
(34, 0, 'Pamela Torres', 'qasimsajjad106@gmail.com', '46816137', 'Voluptatem distincti', 0, 2, '2024-04-04 11:23:20', '2024-04-04 11:23:20', '2024-04-04 11:23:20'),
(35, 0, 'Jolene Hess', 'faso@mailinator.com', '79804238', 'Eos ipsum aute exce', 0, 2, '2024-04-04 11:38:23', '2024-04-04 11:38:23', '2024-04-04 11:38:23'),
(36, 0, 'Brielle Curry', 'wyjaqok@mailinator.com', '77426517', 'Ut aliquid vel illo', 0, 2, '2024-04-04 11:41:17', '2024-04-04 11:41:17', '2024-04-04 11:41:17'),
(37, 0, 'Peter Fitzgerald', 'nawelup@mailinator.com', '28685699', 'Sint elit minus dol', 0, 2, '2024-04-04 11:42:58', '2024-04-04 11:42:58', '2024-04-04 11:42:58'),
(38, 0, 'Kush', 'digitalxplode1@gmail.com', '54780097', 'Re: Pay attention to Google’s guidelines - SEO settings', 0, 2, '2024-04-08 04:40:12', '2024-04-08 04:40:12', '2024-04-08 04:40:12'),
(39, 0, 'Carroll', 'airprp.com@aol.com', '63976966', 'airprp - Contact Us', 0, 2, '2024-04-13 21:36:58', '2024-04-13 21:36:58', '2024-04-13 21:36:58'),
(40, 0, 'Gretta Thurlow', 'gretta.thurlow@gmail.com', '25111263', 'Hello airprp.com Administrator!', 0, 2, '2024-04-15 04:02:59', '2024-04-15 04:02:59', '2024-04-15 04:02:59'),
(41, 0, 'Paul S', 'info@letsgetuoptimize.com', '81572780', 'Re: Improve your website traffic and SEO', 0, 2, '2024-04-15 21:41:44', '2024-04-15 21:41:44', '2024-04-15 21:41:44'),
(42, 0, 'Phil Stewart', 'noreplyhere@aol.com', '02070092', '??', 0, 2, '2024-04-17 15:49:16', '2024-04-17 15:49:16', '2024-04-17 15:49:16'),
(43, 0, 'JasonRam', 'yasen.krasen.13+80118@mail.ru', '77019425', 'Mjewdjwjdw jwksqkowjfjj kkepwlw3jreklm kwldewkdjr3kdw2o keo2kswlkforejw', 0, 2, '2024-04-18 18:34:32', '2024-04-18 18:34:32', '2024-04-18 18:34:32'),
(44, 0, 'Mike Tracey', 'petereroff@gmail.com', '63125130', 'Increase sales for your local business', 0, 2, '2024-04-23 07:28:10', '2024-04-23 07:28:10', '2024-04-23 07:28:10'),
(45, 0, 'Titus Biscoe', 'biscoe.titus@hotmail.com', '33384401', 'Dear airprp.com Administrator!', 0, 2, '2024-04-24 00:01:20', '2024-04-24 00:01:20', '2024-04-24 00:01:20'),
(46, 0, 'Mariam Brett', 'mariam.brett@gmail.com', '51666508', 'Hi airprp.com Owner!', 0, 2, '2024-04-27 18:59:24', '2024-04-27 18:59:24', '2024-04-27 18:59:24'),
(47, 0, 'Ksdbh', 'businessdevelopment@charterunionfin.com', '14221235', 'Unlock Your Business Potential with Hassle-Free Funding Solutions', 0, 2, '2024-04-30 03:14:15', '2024-04-30 03:14:15', '2024-04-30 03:14:15'),
(48, 0, 'Nereida Buckmaster', 'buckmaster.nereida@gmail.com', '65370794', 'Hello airprp.com Owner.', 0, 2, '2024-05-01 00:04:28', '2024-05-01 00:04:28', '2024-05-01 00:04:28'),
(49, 0, 'Antony Bardolph', 'bardolph.antony@gmail.com', '77832743', 'To the airprp.com Admin!', 0, 2, '2024-05-05 07:14:23', '2024-05-05 07:14:23', '2024-05-05 07:14:23'),
(50, 0, 'Logan Henderson', 'barreiro.eleanor@gmail.com', '89300124', 'Time-Sensitive: Secure Your $32,222 Tax Credit Today!', 0, 2, '2024-05-06 09:29:45', '2024-05-06 09:29:45', '2024-05-06 09:29:45'),
(51, 0, 'Fletcher Jensen', 'zyce@mailinator.com', '18935285', 'Iste laboriosam sit', 0, 2, '2024-05-06 14:55:03', '2024-05-06 14:55:03', '2024-05-06 14:55:03'),
(52, 0, 'Coy', 'coy@mail.medicopostura.com', '19705685', 'great deals', 0, 2, '2024-05-07 01:57:38', '2024-05-07 01:57:38', '2024-05-07 01:57:38'),
(53, 0, 'Jayne Milford', 'milford.jayne@gmail.com', '06431408', 'To the airprp.com Admin!', 0, 2, '2024-05-07 13:00:48', '2024-05-07 13:00:48', '2024-05-07 13:00:48'),
(54, 0, 'Lilly Hawk', 'hawk.lilly@gmail.com', '33769339', 'Hi airprp.com Admin!', 0, 2, '2024-05-07 18:58:33', '2024-05-07 18:58:33', '2024-05-07 18:58:33'),
(55, 0, 'Nathan Morris', 'glenn.imlay@hotmail.com', '88830109', 'Time-Sensitive: Secure Your $32,222 Tax Credit Today!', 0, 2, '2024-05-08 01:33:38', '2024-05-08 01:33:38', '2024-05-08 01:33:38'),
(56, 0, 'Parthenia Becnel', 'parthenia.becnel@gmail.com', '96854988', 'To the airprp.com Administrator.', 0, 2, '2024-05-09 02:20:55', '2024-05-09 02:20:55', '2024-05-09 02:20:55'),
(57, 0, 'Roosevelt Pinkston', 'pinkston.roosevelt@gmail.com', '67072956', 'Don\'t Forget: Secure Your $32K Tax Credit by May 17th!', 0, 2, '2024-05-10 19:10:49', '2024-05-10 19:10:49', '2024-05-10 19:10:49'),
(58, 0, 'Bruce Gordon', 'info@increaseorganictraffic.com', '23411935', 'Re: Want to attract more clients and customers? ✅ ������', 0, 2, '2024-05-12 12:16:14', '2024-05-12 12:16:14', '2024-05-12 12:16:14'),
(59, 0, 'Louvenia Castiglione', 'castiglione.louvenia@gmail.com', '67020584', 'Hi airprp.com Webmaster!', 0, 2, '2024-05-13 09:24:04', '2024-05-13 09:24:04', '2024-05-13 09:24:04'),
(60, 0, 'Jordan K.', 'pat@aneesho.com', '05979526', 'Design Work', 0, 2, '2024-05-15 15:24:10', '2024-05-15 15:24:10', '2024-05-15 15:24:10'),
(61, 0, 'Curtis Higbee', 'higbee.curtis@gmail.com', '27960302', 'No Developer Drop-Off. Get On-Demand Developers', 0, 2, '2024-05-15 21:10:06', '2024-05-15 21:10:06', '2024-05-15 21:10:06'),
(62, 0, 'Lindsey McLarty', 'mclarty.lindsey@gmail.com', '51189791', 'Hi airprp.com Webmaster.', 0, 2, '2024-05-20 22:22:50', '2024-05-20 22:22:50', '2024-05-20 22:22:50'),
(63, 0, 'Faith', 'airprp.com@outlook.com', '16427191', 'airprp - Contact Us', 0, 2, '2024-05-21 18:42:56', '2024-05-21 18:42:56', '2024-05-21 18:42:56'),
(64, 0, 'Fallon Theus', 'theus.fallon@gmail.com', '56341888', 'Gut-Brain Axis Explained|Learn the Gut-Brain Link ASAP}', 0, 2, '2024-05-22 01:12:01', '2024-05-22 01:12:01', '2024-05-22 01:12:01'),
(65, 0, 'Betsy Madera', 'madera.betsy29@googlemail.com', '62021433', 'Dear airprp.com Admin!', 0, 2, '2024-05-22 01:55:57', '2024-05-22 01:55:57', '2024-05-22 01:55:57');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `post_balance` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `trx_type` varchar(40) DEFAULT NULL,
  `trx` varchar(40) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `remark` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `amount`, `charge`, `post_balance`, `trx_type`, `trx`, `details`, `remark`, `created_at`, `updated_at`) VALUES
(5, 11, 500.00000000, 0.00000000, 449.00000000, '+', '6D2BJ1C1EWR8', 'Payment Via Debit/Credit Card', 'deposit', '2024-05-10 20:17:15', '2024-05-10 20:17:15'),
(6, 11, 500.00000000, 0.00000000, 449.00000000, '+', 'SPYWU6NR4Q3E', 'Payment Via Debit/Credit Card', 'deposit', '2024-05-11 15:26:30', '2024-05-11 15:26:30'),
(7, 11, 730.00000000, 0.00000000, 656.00000000, '+', 'DP7G4O8Q4NAB', 'Payment Via Debit/Credit Card', 'deposit', '2024-05-16 14:14:40', '2024-05-16 14:14:40'),
(8, 11, 2120.00000000, 0.00000000, 1907.00000000, '+', 'ZYX5EFSBRC6O', 'Payment Via Debit/Credit Card', 'deposit', '2024-05-16 14:17:38', '2024-05-16 14:17:38');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT 'enable:1, disable:0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bungalow', 1, '2024-01-15 11:53:26', '2024-03-03 16:53:10'),
(2, 'Entire Apartment', 1, '2024-01-15 11:53:36', '2024-03-03 16:51:33'),
(3, 'Single room', 1, '2024-02-28 18:24:21', '2024-02-28 18:24:21'),
(4, 'Shared Room', 1, '2024-02-28 18:24:39', '2024-02-28 18:24:39'),
(5, 'Room Patrion', 1, '2024-02-28 18:25:20', '2024-02-28 18:25:20'),
(6, 'Bed Space', 1, '2024-02-28 18:25:35', '2024-02-28 18:25:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `firstname` varchar(40) DEFAULT NULL,
  `lastname` varchar(40) DEFAULT NULL,
  `username` varchar(40) DEFAULT NULL,
  `email` varchar(40) NOT NULL,
  `total_review` int(11) DEFAULT NULL,
  `avg_rating` decimal(28,2) DEFAULT NULL,
  `country_code` varchar(40) DEFAULT NULL,
  `mobile` varchar(40) DEFAULT NULL,
  `ref_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `balance` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL COMMENT 'contains full address',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: banned, 1: active',
  `kyc_data` text DEFAULT NULL,
  `kv` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: KYC Unverified, 2: KYC pending, 1: KYC verified',
  `ev` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: email unverified, 1: email verified',
  `sv` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: mobile unverified, 1: mobile verified',
  `reg_step` tinyint(1) NOT NULL DEFAULT 0,
  `ver_code` varchar(40) DEFAULT NULL COMMENT 'stores verification code',
  `ver_code_send_at` datetime DEFAULT NULL COMMENT 'verification send time',
  `ts` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: 2fa off, 1: 2fa on',
  `tv` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: 2fa unverified, 1: 2fa verified',
  `tsc` varchar(255) DEFAULT NULL,
  `ban_reason` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_id` varchar(114) DEFAULT NULL,
  `facebook_id` varchar(114) DEFAULT NULL,
  `seller` varchar(114) NOT NULL DEFAULT 'No',
  `father_name` varchar(114) DEFAULT NULL,
  `Upload_CNIC` varchar(114) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `total_review`, `avg_rating`, `country_code`, `mobile`, `ref_by`, `balance`, `password`, `image`, `address`, `status`, `kyc_data`, `kv`, `ev`, `sv`, `reg_step`, `ver_code`, `ver_code_send_at`, `ts`, `tv`, `tsc`, `ban_reason`, `remember_token`, `created_at`, `updated_at`, `google_id`, `facebook_id`, `seller`, `father_name`, `Upload_CNIC`) VALUES
(5, 'zahad', 'jhn', 'zahidj', 'zahidj1969@gmail.com', NULL, NULL, 'PK', '9234521848742', 0, 0.00000000, '$2y$10$2aYJXrpTI/zrqOJHYH8cWOxrHyS3Y2cD715s3mhcI4wqYka0A/F06', NULL, '{\"country\":\"Pakistan\",\"address\":\"dalmian\",\"state\":\"sindh\",\"zip\":\"aaaaaaa\",\"city\":\"khi\"}', 1, NULL, 0, 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, 'Zd9AUtUezl7gmP10BcttBEkFeFF7BdFTbOF0MwKYgeXqovjqjjk2Nu7pu9vE', '2024-02-16 12:24:50', '2024-02-16 12:28:39', NULL, NULL, 'No', NULL, NULL),
(11, 'Qasimasd', 'sajjad', NULL, 'technovadigitalpk@gmail.com', NULL, NULL, NULL, NULL, 0, 3461.00000000, 'eyJpdiI6ImZTZHZoSThLNVEwTHI2UTN5NFVyTUE9PSIsInZhbHVlIjoiTEF2UEZ4WGoybUZmUmJ4ODM3ZmY2ZXFab1FhSG9SUkJMWkZZbk9oM2FSND0iLCJtYWMiOiIzNzhmODhiNmFjZWFmZGU3YThkZjlmZmQ0YTQ0NGQzYTRkZTkxYjM5ZDYzOWZmZTBhOGE4N2IyZjI3NmRjMTI0IiwidGFnIjoiIn0=', NULL, '{\"country\":null,\"address\":\"Islamabad Model town\",\"state\":\"Quibusdam tempor qui\",\"zip\":\"45700\",\"city\":\"islamabad\"}', 1, '[{\"name\":\"Full Name\",\"type\":\"text\",\"value\":\"Malik Qasim\"},{\"name\":\"NID Number\",\"type\":\"text\",\"value\":\"763247G\"},{\"name\":\"Gender\",\"type\":\"select\",\"value\":\"Male\"},{\"name\":\"You Hobby\",\"type\":\"checkbox\",\"value\":[\"Gardening\"]},{\"name\":\"NID Photo\",\"type\":\"file\",\"value\":\"2024\\/02\\/27\\/65dcded8430f81708973784.png\"},{\"name\":\"Mobile\",\"type\":\"text\",\"value\":\"09006756432\"}]', 1, 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, '2024-02-22 13:50:43', '2024-05-16 14:17:38', '105573821808150647440', NULL, 'yes', NULL, NULL),
(13, 'zahid', 'jahangir', NULL, 'lawafoods@gmail.com', NULL, NULL, NULL, NULL, 0, 0.00000000, '$2y$10$p.jK15XziAyxVfSB5FERHehFZlZrDzkREdFGDySd7kegAmcQII5Hm', NULL, '{\"country\":null,\"address\":\"dalmia\",\"state\":\"sindh\",\"zip\":\"92500\",\"city\":\"karachi\"}', 1, NULL, 0, 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, 'SCyaTUt11S5Dul1vS25UE0F2OjnnJz13exK901I3EHG5pwleLlgjd9ZN4IgT', '2024-02-24 00:49:24', '2024-03-15 15:05:23', '113600721928664981067', NULL, 'yes', NULL, NULL),
(17, 'Zahid Jahangir', NULL, NULL, 'technooffshore@gmail.com', NULL, NULL, NULL, NULL, 0, 0.00000000, '$2y$10$mrMPBOKyfmQ.pPI2ZMhSSON5vgMHRMAOtiUgCY/rocNoUG5gOZjCm', NULL, NULL, 1, NULL, 0, 1, 1, 0, NULL, NULL, 0, 1, NULL, NULL, '9r5LOzQZUE5ZfaY2HkuaneLwIK3hRQF9G4IIerBiImb0Bxla92UzeBvhNhy9', '2024-03-09 16:11:56', '2024-03-15 20:38:46', '112182567658477556123', NULL, 'No', NULL, NULL),
(19, 'Asad', 'Jhangir', NULL, 'stts.pak@gmail.com', NULL, NULL, NULL, NULL, 0, 0.00000000, 'eyJpdiI6InRQTnVBa1pINHMyUnI5SFJQeXdYWnc9PSIsInZhbHVlIjoiSjRzeU1YLzAwUDRBcU5JOU5QdTVGVVo4WDd5MHhaZEJVZEM1S010cTJ5MD0iLCJtYWMiOiIxZTA5MTRhZjdlYWQxMzU3MWNhZTliYWIyNjY5NmZjMmYxNTZhMmMwZjFhNzQzYjlmNDVkZjBjYTQwYTI2MTRlIiwidGFnIjoiIn0=', NULL, '{\"country\":null,\"address\":\"dalmia, karachi\",\"state\":\"sindh\",\"zip\":\"755620`\",\"city\":\"Karachi\"}', 1, NULL, 0, 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, '2024-03-15 14:45:41', '2024-03-29 10:02:18', '108940384347622341487', NULL, 'yes', NULL, NULL),
(23, 'zahid', 'jahangir', NULL, 'zjhangir68@gmail.com', NULL, NULL, NULL, NULL, 0, 0.00000000, 'eyJpdiI6IkN0Y0Yydm9yenYzUTRMQlBSREhWNlE9PSIsInZhbHVlIjoidTcwUGlJYjF4VC9BbXJ6N3NwMTRJKzVLRENvanJFTWUzelFjNkxSZXBWWT0iLCJtYWMiOiIyOGEwYzZmMDkwMWY4NGY0OTI1N2ZkYzY3Zjk1YTEzMzIzM2ZmNGRlZDdjMmMzMTI5ZDE2M2U5ZTA3ZDMxYzM3IiwidGFnIjoiIn0=', NULL, '{\"country\":null,\"address\":\"addasa\",\"state\":\"adad\",\"zip\":\"000000\",\"city\":\"adadf\"}', 1, NULL, 0, 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, '2024-03-16 23:08:38', '2024-03-16 23:18:08', '115421191391777648277', NULL, 'yes', NULL, NULL),
(24, 'Zahid', 'Jahangir', NULL, 'zahidj1969@gmail.com', NULL, NULL, NULL, NULL, 0, 0.00000000, 'eyJpdiI6IkFiN1RoWkdOZCtMd2FxYlBhSFZvNWc9PSIsInZhbHVlIjoidjZzY21iU2tFeDFHTE04K2ljMVJ0QVg1QWdmbmFId0p3bVlBMDNlYkUzND0iLCJtYWMiOiIxYjczODJkZjZlMTEwMjA1NDg2ZDVmNzYzNDdjMDgxNTFjN2Y3NGE5Nzk3YmViY2U1N2Y5YmFjMjRjNWIwYTQwIiwidGFnIjoiIn0=', NULL, '{\"country\":null,\"address\":\"dalmia cement factory road\",\"state\":\"sindh\",\"zip\":\"000000\",\"city\":\"Karachi\"}', 1, '[{\"name\":\"Date of Birth\",\"type\":\"text\",\"value\":\"12 4 1969\"},{\"name\":\"CNIC No\",\"type\":\"text\",\"value\":\"3840167855835\"}]', 1, 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, '2024-03-21 00:30:05', '2024-04-01 02:25:33', '109166946277469202053', NULL, 'yes', 'M Yaqoob', '1711920088.jpeg'),
(45, 'Zohaib', 'Hassan', NULL, 'techoff66@gmail.com', NULL, NULL, NULL, NULL, 0, 0.00000000, 'eyJpdiI6InQ5d3YwVUtrTzRVK3lMckVPeUdYQWc9PSIsInZhbHVlIjoiREN2OW12QlNadG5MTmlFWUR1YVRkeWttSlJwYkczQ214UlpyT3FVbllOQT0iLCJtYWMiOiIwY2ZiNzhlZGZiODg3NWNmMjM5ODQ1Mzk2ZDkwZjdhYmEyYTMwODJhNDllNWM5NGZhNjkxODM4OGQ4ZWRmNjk4IiwidGFnIjoiIn0=', NULL, '{\"country\":null,\"address\":\"house #M2, Cement Factory Road, Dalmia, Karachi\",\"state\":\"Pakistan\",\"zip\":\"000000\",\"city\":\"Karachi\"}', 1, '[{\"name\":\"Date of Birth\",\"type\":\"text\",\"value\":\"19\\/june\\/1998\"},{\"name\":\"CNIC No\",\"type\":\"text\",\"value\":\"4240157510501\"}]', 1, 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, '2024-04-07 00:54:36', '2024-04-07 00:56:24', '103692249326635182347', NULL, 'yes', 'Zahid', '1712433328.jpg'),
(46, NULL, NULL, NULL, 'gipom72025@idsho.com', NULL, NULL, 'MM', '953434343', 0, 0.00000000, '$2y$10$ZOGemy6A3tPiqXRUVtsUsuU2tjzVqpUuK88Ntrq.OHzwDkaJYO8r2', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"Myanmar\",\"city\":\"\"}', 1, NULL, 0, 1, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2024-04-25 10:51:38', '2024-04-25 10:52:11', NULL, NULL, 'No', NULL, NULL),
(47, 'Blossom', 'Mckay', NULL, 'viko@mailinator.com', NULL, NULL, 'BS', '124247', 0, 0.00000000, '$2y$10$dS0LT69gsx5yTJ7iyiFZ.u1UcUhgs9Y.1lfAdfvRqWm1omvrxMbxm', NULL, '{\"country\":\"Bahamas\",\"address\":\"Sed nisi est Nam har\",\"state\":\"Ea officia assumenda\",\"zip\":\"000000\",\"city\":\"Nostrum tenetur non\"}', 1, '[{\"name\":\"Date of Birth\",\"type\":\"text\",\"value\":\"20-Mar-2004\"},{\"name\":\"CNIC No\",\"type\":\"text\",\"value\":\"Non dolor dolorem ei\"}]', 1, 1, 1, 1, '690610', '2024-05-07 14:57:35', 1, 1, NULL, NULL, NULL, '2024-05-07 14:57:34', '2024-05-10 11:00:14', NULL, NULL, 'No', 'Knox Mcneil', NULL),
(48, NULL, NULL, NULL, 'trqmalik72@gmail.com', NULL, NULL, 'PK', '923213879098', 0, 0.00000000, '$2y$10$G93a3EalY4deSrA3Amn6BuJ9Ic1pIHvb58LYMAv3ZxSVy.DU0OFre', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"Pakistan\",\"city\":\"\"}', 1, NULL, 0, 1, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, '2024-05-10 19:55:02', '2024-05-10 19:55:33', NULL, NULL, 'No', NULL, NULL),
(49, NULL, NULL, NULL, 'testing@gmail.com', NULL, NULL, 'PK', '923415945504', 0, 0.00000000, '$2y$10$es6DPKMKjMInqvMaHfKBVuQRl.PbnL6OsbZnqkVtGQMRCU16pg/Eu', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"Pakistan\",\"city\":\"\"}', 1, NULL, 0, 0, 1, 0, '439056', '2024-05-20 12:18:31', 0, 1, NULL, NULL, NULL, '2024-05-20 12:18:30', '2024-05-20 12:18:31', NULL, NULL, 'No', NULL, NULL),
(50, 'Talha', 'Umer', NULL, 'umergondal834@gmail.com', NULL, NULL, NULL, NULL, 0, 0.00000000, 'eyJpdiI6IlYyQ2pabjN6dmxBVmgzaGJZMnNlcFE9PSIsInZhbHVlIjoidkNYbTl2b0xJdVVLdEo2UDU2T2thMVdjWVYwVVJBdGRGMER4dTU1ODVQZz0iLCJtYWMiOiIzNmY1Y2Y4NmE1NzY2ZWY1OWI5NzgzMTg5ZjFjOTYwN2EwNDA3NjZjYWQzZjIxZWNjZTZjMjhiZGU5MjNkMWEzIiwidGFnIjoiIn0=', NULL, '{\"country\":null,\"address\":\"usama street\",\"state\":\"Punjab\",\"zip\":\"000000\",\"city\":\"Rawalpindi\"}', 1, '[{\"name\":\"Date of Birth\",\"type\":\"text\",\"value\":\"30\\/07\\/97\"},{\"name\":\"CNIC No\",\"type\":\"text\",\"value\":\"3840159724677\"}]', 2, 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, '2024-05-20 12:20:22', '2024-05-20 12:23:03', '109802960120922418939', NULL, 'No', 'Sher Khan', '1716189783.webp');

-- --------------------------------------------------------

--
-- Table structure for table `user_logins`
--

CREATE TABLE `user_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_ip` varchar(40) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `country` varchar(40) DEFAULT NULL,
  `country_code` varchar(40) DEFAULT NULL,
  `longitude` varchar(40) DEFAULT NULL,
  `latitude` varchar(40) DEFAULT NULL,
  `browser` varchar(40) DEFAULT NULL,
  `os` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_logins`
--

INSERT INTO `user_logins` (`id`, `user_id`, `user_ip`, `city`, `country`, `country_code`, `longitude`, `latitude`, `browser`, `os`, `created_at`, `updated_at`) VALUES
(35, 22, '37.111.163.63', '', 'Pakistan', 'PK', '70', '30', 'Chrome', 'Windows 10', '2024-03-16 22:59:37', '2024-03-16 22:59:37'),
(36, 3, '223.123.87.59', 'Islamabad', 'Pakistan', 'PK', '73.0435', '33.7233', 'Chrome', 'Windows 10', '2024-03-20 05:44:07', '2024-03-20 05:44:07'),
(37, 25, '103.93.219.109', 'Karachi', 'Pakistan', 'PK', '66.9983', '24.8591', 'Chrome', 'Windows 10', '2024-03-24 16:38:12', '2024-03-24 16:38:12'),
(38, 25, '144.48.38.35', 'Melbourne', 'Australia', 'AU', '144.9669', '-37.8159', 'Chrome', 'Windows 10', '2024-03-24 16:45:31', '2024-03-24 16:45:31'),
(39, 26, '144.48.38.35', 'Melbourne', 'Australia', 'AU', '144.9669', '-37.8159', 'Chrome', 'Windows 10', '2024-03-24 16:49:26', '2024-03-24 16:49:26'),
(40, 27, '154.192.1.50', 'Islamabad', 'Pakistan', 'PK', '73.0435', '33.7233', 'Chrome', 'Windows 10', '2024-03-26 11:19:57', '2024-03-26 11:19:57'),
(41, 28, '154.192.1.50', 'Islamabad', 'Pakistan', 'PK', '73.0435', '33.7233', 'Chrome', 'Windows 10', '2024-03-26 11:23:34', '2024-03-26 11:23:34'),
(42, 29, '154.192.1.50', 'Islamabad', 'Pakistan', 'PK', '73.0435', '33.7233', 'Chrome', 'Windows 10', '2024-03-26 11:25:19', '2024-03-26 11:25:19'),
(43, 30, '154.192.1.50', 'Islamabad', 'Pakistan', 'PK', '73.0435', '33.7233', 'Chrome', 'Windows 10', '2024-03-26 11:41:16', '2024-03-26 11:41:16'),
(44, 31, '154.192.1.50', 'Islamabad', 'Pakistan', 'PK', '73.0435', '33.7233', 'Chrome', 'Windows 10', '2024-03-26 11:48:22', '2024-03-26 11:48:22'),
(45, 5, '94.202.228.222', 'Abu Dhabi', 'United Arab Emirates', 'AE', '54.406', '24.4542', 'Chrome', 'Windows 10', '2024-03-28 07:58:58', '2024-03-28 07:58:58'),
(46, 31, '154.192.1.50', 'Islamabad', 'Pakistan', 'PK', '73.0435', '33.7233', 'Chrome', 'Windows 10', '2024-03-28 09:45:15', '2024-03-28 09:45:15'),
(47, 31, '154.192.1.50', 'Islamabad', 'Pakistan', 'PK', '73.0435', '33.7233', 'Chrome', 'Windows 10', '2024-03-28 10:48:07', '2024-03-28 10:48:07'),
(48, 31, '154.192.1.50', 'Islamabad', 'Pakistan', 'PK', '73.0435', '33.7233', 'Chrome', 'Windows 10', '2024-03-29 09:43:45', '2024-03-29 09:43:45'),
(49, 32, '154.192.1.50', 'Islamabad', 'Pakistan', 'PK', '73.0435', '33.7233', 'Chrome', 'Windows 10', '2024-03-29 10:25:47', '2024-03-29 10:25:47'),
(50, 33, '154.192.1.50', 'Islamabad', 'Pakistan', 'PK', '73.0435', '33.7233', 'Chrome', 'Windows 10', '2024-03-29 10:46:12', '2024-03-29 10:46:12'),
(51, 34, '154.192.1.50', 'Islamabad', 'Pakistan', 'PK', '73.0435', '33.7233', 'Chrome', 'Windows 10', '2024-03-29 10:55:03', '2024-03-29 10:55:03'),
(52, 35, '154.192.1.50', 'Islamabad', 'Pakistan', 'PK', '73.0435', '33.7233', 'Chrome', 'Windows 10', '2024-03-29 10:57:23', '2024-03-29 10:57:23'),
(53, 36, '154.192.1.50', 'Islamabad', 'Pakistan', 'PK', '73.0435', '33.7233', 'Chrome', 'Windows 10', '2024-03-29 10:58:35', '2024-03-29 10:58:35'),
(54, 37, '154.192.1.50', 'Islamabad', 'Pakistan', 'PK', '73.0435', '33.7233', 'Chrome', 'Windows 10', '2024-03-29 11:01:35', '2024-03-29 11:01:35'),
(55, 38, '154.192.1.50', 'Islamabad', 'Pakistan', 'PK', '73.0435', '33.7233', 'Chrome', 'Windows 10', '2024-03-29 11:16:10', '2024-03-29 11:16:10'),
(56, 39, '154.192.1.50', 'Islamabad', 'Pakistan', 'PK', '73.0435', '33.7233', 'Chrome', 'Windows 10', '2024-03-29 11:29:29', '2024-03-29 11:29:29'),
(57, 41, '154.192.1.50', 'Islamabad', 'Pakistan', 'PK', '73.0435', '33.7233', 'Chrome', 'Windows 10', '2024-04-04 11:56:39', '2024-04-04 11:56:39'),
(58, 42, '154.192.1.50', 'Islamabad', 'Pakistan', 'PK', '73.0435', '33.7233', 'Chrome', 'Windows 10', '2024-04-04 12:09:30', '2024-04-04 12:09:30'),
(59, 43, '154.192.1.50', 'Islamabad', 'Pakistan', 'PK', '73.0435', '33.7233', 'Chrome', 'Windows 10', '2024-04-04 12:14:03', '2024-04-04 12:14:03'),
(60, 46, '202.165.85.69', 'Yangon', 'Myanmar', 'MM', '96.1667', '16.7964', 'Firefox', 'Ubuntu', '2024-04-25 10:51:39', '2024-04-25 10:51:39'),
(61, 47, '154.192.30.61', 'Rawalpindi', 'Pakistan', 'PK', '73.0354', '33.6054', 'Chrome', 'Windows 10', '2024-05-07 14:57:34', '2024-05-07 14:57:34'),
(62, 48, '37.111.175.90', '', 'Pakistan', 'PK', '70', '30', 'Firefox', 'Windows 10', '2024-05-10 19:55:02', '2024-05-10 19:55:02'),
(63, 5, '94.202.229.177', 'Sharjah', 'United Arab Emirates', 'AE', '55.4224', '25.3412', 'Chrome', 'Windows 10', '2024-05-11 15:23:35', '2024-05-11 15:23:35'),
(64, 49, '223.123.84.48', 'Islamabad', 'Pakistan', 'PK', '73.0435', '33.7233', 'Chrome', 'Windows 10', '2024-05-20 12:18:30', '2024-05-20 12:18:30');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `currency` varchar(40) DEFAULT NULL,
  `rate` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `trx` varchar(40) DEFAULT NULL,
  `final_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `after_charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `withdraw_information` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=>success, 2=>pending, 3=>cancel,  ',
  `admin_feedback` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

CREATE TABLE `withdraw_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(40) DEFAULT NULL,
  `min_limit` decimal(28,8) DEFAULT 0.00000000,
  `max_limit` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `fixed_charge` decimal(28,8) DEFAULT 0.00000000,
  `rate` decimal(28,8) DEFAULT 0.00000000,
  `percent_charge` decimal(5,2) DEFAULT NULL,
  `currency` varchar(40) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_methods`
--

INSERT INTO `withdraw_methods` (`id`, `form_id`, `name`, `min_limit`, `max_limit`, `fixed_charge`, `rate`, `percent_charge`, `currency`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 22, 'Manual bank', 1.00000000, 10000000000.00000000, 0.00000000, 1.00000000, 0.00, 'Pkr', '<p>Share carefully bank details</p>', 1, '2024-03-15 12:49:24', '2024-03-15 12:49:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`,`username`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_reviews`
--
ALTER TABLE `admin_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ownerid` (`owner_id`),
  ADD KEY `renterid` (`renter_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`user_id`);

--
-- Indexes for table `extensions`
--
ALTER TABLE `extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontends`
--
ALTER TABLE `frontends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_logs`
--
ALTER TABLE `notification_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_templates`
--
ALTER TABLE `notification_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usersid` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_attachments`
--
ALTER TABLE `support_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_messages`
--
ALTER TABLE `support_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usertranaction` (`user_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`email`);

--
-- Indexes for table `user_logins`
--
ALTER TABLE `user_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userwithdraw` (`user_id`);

--
-- Indexes for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_reviews`
--
ALTER TABLE `admin_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `extensions`
--
ALTER TABLE `extensions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `frontends`
--
ALTER TABLE `frontends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notification_logs`
--
ALTER TABLE `notification_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `notification_templates`
--
ALTER TABLE `notification_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_attachments`
--
ALTER TABLE `support_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_messages`
--
ALTER TABLE `support_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `user_logins`
--
ALTER TABLE `user_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `ownerid` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `renterid` FOREIGN KEY (`renter_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `deposits`
--
ALTER TABLE `deposits`
  ADD CONSTRAINT `userid` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `usersid` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `usertranaction` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD CONSTRAINT `userwithdraw` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
