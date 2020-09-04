-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 23, 2020 at 06:52 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Larvel 5.8', 'larvel-58', '2020-07-30 06:28:33', '2020-07-30 06:28:33'),
(2, 'Vue js 3', 'vue-js-3', '2020-07-30 06:28:33', '2020-07-30 06:28:33'),
(3, 'Angular 7', 'angular-7', '2020-07-30 06:28:33', '2020-07-30 06:28:33'),
(4, 'Node js', 'node-js', '2020-07-30 06:28:33', '2020-07-30 06:28:33');

-- --------------------------------------------------------

--
-- Table structure for table `discussions`
--

CREATE TABLE `discussions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discussions`
--

INSERT INTO `discussions` (`id`, `user_id`, `title`, `content`, `reply_id`, `slug`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Book One', '<div><strong><br>The standard Lorem Ipsum passage, used since the 1500s<br></strong><br></div><div>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"<br><br></div><div><strong><br>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC<br></strong><br></div><div>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"<br><br></div>', 1, 'book-one', 2, '2020-07-30 06:41:07', '2020-07-31 08:55:45'),
(2, 2, 'By josh', '<div><em><del>Josh doe</del></em></div>', 11, 'by-josh', 3, '2020-07-31 07:54:28', '2020-07-31 08:20:13');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
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
(12, '2014_10_12_000000_create_users_table', 1),
(13, '2014_10_12_100000_create_password_resets_table', 1),
(14, '2019_08_19_000000_create_failed_jobs_table', 1),
(15, '2020_07_28_074441_create_discussions_table', 1),
(16, '2020_07_28_075101_create_channels_table', 1),
(17, '2020_07_30_082404_create_replies_table', 1),
(18, '2020_07_31_091308_create_notifications_table', 2),
(19, '2020_07_31_114733_create_jobs_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('1757fd72-c8ea-49ef-94a5-b042f32a3201', 'App\\Notifications\\ReplymarkedAsBestReply', 'App\\User', 2, '{\"discussion\":{\"id\":1,\"user_id\":1,\"title\":\"Book One\",\"content\":\"<div><strong><br>The standard Lorem Ipsum passage, used since the 1500s<br><\\/strong><br><\\/div><div>\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<br><br><\\/div><div><strong><br>Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<br><\\/strong><br><\\/div><div>\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<br><br><\\/div>\",\"reply_id\":3,\"slug\":\"book-one\",\"channel_id\":2,\"created_at\":\"2020-07-30T09:41:07.000000Z\",\"updated_at\":\"2020-07-31T11:26:38.000000Z\"}}', '2020-07-31 08:26:49', '2020-07-31 08:26:42', '2020-07-31 08:26:49'),
('26abad57-6f20-4ccd-8829-bfeacc21e733', 'App\\Notifications\\ReplymarkedAsBestReply', 'App\\User', 2, '{\"discussion\":{\"id\":1,\"user_id\":1,\"title\":\"Book One\",\"content\":\"<div><strong><br>The standard Lorem Ipsum passage, used since the 1500s<br><\\/strong><br><\\/div><div>\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<br><br><\\/div><div><strong><br>Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<br><\\/strong><br><\\/div><div>\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<br><br><\\/div>\",\"reply_id\":3,\"slug\":\"book-one\",\"channel_id\":2,\"created_at\":\"2020-07-30T09:41:07.000000Z\",\"updated_at\":\"2020-07-31T11:26:38.000000Z\"}}', '2020-07-31 08:59:58', '2020-07-31 08:50:21', '2020-07-31 08:59:58'),
('27a63530-c451-4813-b3c9-0c95d529e0dd', 'App\\Notifications\\ReplymarkedAsBestReply', 'App\\User', 1, '{\"discussion\":{\"id\":2,\"user_id\":2,\"title\":\"By josh\",\"content\":\"<div><em><del>Josh doe<\\/del><\\/em><\\/div>\",\"reply_id\":11,\"slug\":\"by-josh\",\"channel_id\":3,\"created_at\":\"2020-07-31T10:54:28.000000Z\",\"updated_at\":\"2020-07-31T11:20:13.000000Z\"}}', '2020-07-31 08:20:32', '2020-07-31 08:20:22', '2020-07-31 08:20:32'),
('519a4f4c-5a26-4c06-aaea-dec80148e043', 'App\\Notifications\\ReplymarkedAsBestReply', 'App\\User', 2, '{\"discussion\":{\"id\":1,\"user_id\":1,\"title\":\"Book One\",\"content\":\"<div><strong><br>The standard Lorem Ipsum passage, used since the 1500s<br><\\/strong><br><\\/div><div>\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<br><br><\\/div><div><strong><br>Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<br><\\/strong><br><\\/div><div>\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<br><br><\\/div>\",\"reply_id\":3,\"slug\":\"book-one\",\"channel_id\":2,\"created_at\":\"2020-07-30T09:41:07.000000Z\",\"updated_at\":\"2020-07-31T11:26:38.000000Z\"}}', '2020-07-31 08:30:14', '2020-07-31 08:30:05', '2020-07-31 08:30:14'),
('7bb0d2ba-54b2-41d3-99b1-d66f2a1f6246', 'App\\Notifications\\ReplymarkedAsBestReply', 'App\\User', 1, '{\"discussion\":{\"id\":2,\"user_id\":2,\"title\":\"By josh\",\"content\":\"<div><em><del>Josh doe<\\/del><\\/em><\\/div>\",\"reply_id\":11,\"slug\":\"by-josh\",\"channel_id\":3,\"created_at\":\"2020-07-31T10:54:28.000000Z\",\"updated_at\":\"2020-07-31T11:20:13.000000Z\"}}', NULL, '2020-07-31 09:00:25', '2020-07-31 09:00:25'),
('7bcda9c8-df03-480d-8b7f-851f9be58ae7', 'App\\Notifications\\NewReplyAdded', 'App\\User', 2, '{\"discussion\":{\"id\":2,\"user_id\":2,\"title\":\"By josh\",\"content\":\"<div><em><del>Josh doe<\\/del><\\/em><\\/div>\",\"reply_id\":null,\"slug\":\"by-josh\",\"channel_id\":3,\"created_at\":\"2020-07-31T10:54:28.000000Z\",\"updated_at\":\"2020-07-31T10:54:28.000000Z\",\"author\":{\"id\":2,\"name\":\"john doe\",\"email\":\"johndoe@gmail.com\",\"email_verified_at\":null,\"created_at\":\"2020-07-30T11:47:38.000000Z\",\"updated_at\":\"2020-07-30T11:47:38.000000Z\"}}}', '2020-07-31 08:19:56', '2020-07-31 07:55:23', '2020-07-31 08:19:56'),
('a2f4bf7a-2b7e-4cfa-9d85-cd6150e842d7', 'App\\Notifications\\ReplymarkedAsBestReply', 'App\\User', 2, '{\"discussion\":{\"id\":1,\"user_id\":1,\"title\":\"Book One\",\"content\":\"<div><strong><br>The standard Lorem Ipsum passage, used since the 1500s<br><\\/strong><br><\\/div><div>\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<br><br><\\/div><div><strong><br>Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<br><\\/strong><br><\\/div><div>\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<br><br><\\/div>\",\"reply_id\":3,\"slug\":\"book-one\",\"channel_id\":2,\"created_at\":\"2020-07-30T09:41:07.000000Z\",\"updated_at\":\"2020-07-31T11:26:38.000000Z\"}}', '2020-07-31 08:59:58', '2020-07-31 08:50:33', '2020-07-31 08:59:58'),
('c4e6a92a-33fe-41f0-adc0-855422240b1a', 'App\\Notifications\\NewReplyAdded', 'App\\User', 1, '{\"discussion\":{\"id\":1,\"user_id\":1,\"title\":\"Book One\",\"content\":\"<div><strong><br>The standard Lorem Ipsum passage, used since the 1500s<br><\\/strong><br><\\/div><div>\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<br><br><\\/div><div><strong><br>Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<br><\\/strong><br><\\/div><div>\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<br><br><\\/div>\",\"reply_id\":2,\"slug\":\"book-one\",\"channel_id\":2,\"created_at\":\"2020-07-30T09:41:07.000000Z\",\"updated_at\":\"2020-07-30T10:11:04.000000Z\",\"author\":{\"id\":1,\"name\":\"Josh Erias\",\"email\":\"josherias10@gmail.com\",\"email_verified_at\":null,\"created_at\":\"2020-07-30T09:35:57.000000Z\",\"updated_at\":\"2020-07-30T09:35:57.000000Z\"}}}', '2020-07-31 07:38:24', '2020-07-31 06:23:56', '2020-07-31 07:38:24'),
('c7352cf5-38e3-4ede-a9ea-f9ee44f8a985', 'App\\Notifications\\ReplymarkedAsBestReply', 'App\\User', 2, '{\"discussion\":{\"id\":1,\"user_id\":1,\"title\":\"Book One\",\"content\":\"<div><strong><br>The standard Lorem Ipsum passage, used since the 1500s<br><\\/strong><br><\\/div><div>\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<br><br><\\/div><div><strong><br>Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<br><\\/strong><br><\\/div><div>\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<br><br><\\/div>\",\"reply_id\":3,\"slug\":\"book-one\",\"channel_id\":2,\"created_at\":\"2020-07-30T09:41:07.000000Z\",\"updated_at\":\"2020-07-31T11:26:38.000000Z\"}}', '2020-07-31 08:59:57', '2020-07-31 08:51:41', '2020-07-31 08:59:57'),
('cd99167b-7c18-41b7-a483-3738bd6663b5', 'App\\Notifications\\ReplymarkedAsBestReply', 'App\\User', 1, '{\"discussion\":{\"id\":2,\"user_id\":2,\"title\":\"By josh\",\"content\":\"<div><em><del>Josh doe<\\/del><\\/em><\\/div>\",\"reply_id\":11,\"slug\":\"by-josh\",\"channel_id\":3,\"created_at\":\"2020-07-31T10:54:28.000000Z\",\"updated_at\":\"2020-07-31T11:20:13.000000Z\"}}', NULL, '2020-07-31 09:00:16', '2020-07-31 09:00:16'),
('f8eb1a52-ebab-4831-a80a-4e8a46cd8856', 'App\\Notifications\\ReplymarkedAsBestReply', 'App\\User', 1, '{\"discussion\":{\"id\":2,\"user_id\":2,\"title\":\"By josh\",\"content\":\"<div><em><del>Josh doe<\\/del><\\/em><\\/div>\",\"reply_id\":11,\"slug\":\"by-josh\",\"channel_id\":3,\"created_at\":\"2020-07-31T10:54:28.000000Z\",\"updated_at\":\"2020-07-31T11:20:13.000000Z\"}}', '2020-07-31 08:25:17', '2020-07-31 08:25:07', '2020-07-31 08:25:17'),
('fe5d2c9f-9179-413f-893f-04fbe1a5bdeb', 'App\\Notifications\\ReplymarkedAsBestReply', 'App\\User', 1, '{\"discussion\":{\"id\":1,\"user_id\":1,\"title\":\"Book One\",\"content\":\"<div><strong><br>The standard Lorem Ipsum passage, used since the 1500s<br><\\/strong><br><\\/div><div>\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<br><br><\\/div><div><strong><br>Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<br><\\/strong><br><\\/div><div>\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<br><br><\\/div>\",\"reply_id\":1,\"slug\":\"book-one\",\"channel_id\":2,\"created_at\":\"2020-07-30T09:41:07.000000Z\",\"updated_at\":\"2020-07-31T11:55:45.000000Z\"}}', NULL, '2020-07-31 08:55:52', '2020-07-31 08:55:52');

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
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `discussion_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `user_id`, `discussion_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '<div>New to books</div>', '2020-07-30 06:41:22', '2020-07-30 06:41:22'),
(2, 1, 1, '<div>This is the best now</div>', '2020-07-30 07:11:00', '2020-07-30 07:11:00'),
(3, 2, 1, '<div>new from john doe</div>', '2020-07-30 08:48:14', '2020-07-30 08:48:14'),
(4, 2, 1, '<div>New from john doe</div>', '2020-07-30 08:53:43', '2020-07-30 08:53:43'),
(5, 2, 1, '<div>hello Josh</div>', '2020-07-30 09:22:46', '2020-07-30 09:22:46'),
(6, 2, 1, '<div>hello Josh</div>', '2020-07-30 09:24:53', '2020-07-30 09:24:53'),
(7, 2, 1, '<div>hello Josh</div>', '2020-07-30 09:29:53', '2020-07-30 09:29:53'),
(8, 2, 1, '<div>hello how are you josh</div>', '2020-07-30 09:31:39', '2020-07-30 09:31:39'),
(9, 2, 1, '<div>final notification</div>', '2020-07-31 06:18:45', '2020-07-31 06:18:45'),
(10, 2, 1, '<div>Another reply</div>', '2020-07-31 06:23:49', '2020-07-31 06:23:49'),
(11, 1, 2, '<div>Hello josh How are you doing</div>', '2020-07-31 07:55:13', '2020-07-31 07:55:13');

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
(1, 'Josh Erias', 'josherias10@gmail.com', NULL, '$2y$10$wTtSel.ef/gAflnP5bNE1Oi6pWPlGZRGQvRcYrg.4G93QOiJyqPrW', NULL, '2020-07-30 06:35:57', '2020-07-30 06:35:57'),
(2, 'john doe', 'johndoe@gmail.com', NULL, '$2y$10$mmpjJ4P6z3L3uFaDy23AVOYR8K66ogZVTiVfx/9ESTKiuxFbW7OC2', NULL, '2020-07-30 08:47:38', '2020-07-30 08:47:38'),
(3, 'erias richie', 'erias10@gmail.com', NULL, '$2y$10$j6MAv/468AExf1p86fGWwOC1KEEpCumfzmVGa.ccgFh30DHHimTRC', NULL, '2020-08-01 06:18:58', '2020-08-01 06:18:58'),
(4, 'Mercy', 'Mercy@hotmail.com', NULL, '$2y$10$CatGboVIwu4UMgPFo949S.iPzIzTlvb.KfUA69K/yJyI7f1lN0obu', NULL, '2020-08-01 06:29:58', '2020-08-01 06:29:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `channels_slug_unique` (`slug`);

--
-- Indexes for table `discussions`
--
ALTER TABLE `discussions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `discussions_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
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
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `discussions`
--
ALTER TABLE `discussions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
