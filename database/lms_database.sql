-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2025 at 11:11 PM
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
-- Database: `lms_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us_sections`
--

CREATE TABLE `about_us_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `rounded_text` varchar(255) DEFAULT NULL,
  `lerner_count` varchar(255) DEFAULT NULL,
  `lerner_count_text` varchar(255) DEFAULT NULL,
  `lerner_image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `button_url` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `video_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us_sections`
--

INSERT INTO `about_us_sections` (`id`, `image`, `rounded_text`, `lerner_count`, `lerner_count_text`, `lerner_image`, `title`, `description`, `button_text`, `button_url`, `video_url`, `video_image`, `created_at`, `updated_at`) VALUES
(1, '/uploads/educore_6831669073a88.png', NULL, NULL, NULL, NULL, 'About GFMIQ: Learning Management System', '<p data-start=\"648\" data-end=\"904\">GFMIQ is a cutting-edge Learning Management System designed for financial professionals, students, and organizations. Our platform offers structured courses, expert-led training, and real-world financial applications to enhance your knowledge and skills.</p>\r\n<p data-start=\"906\" data-end=\"1031\">&nbsp;</p>\r\n<p data-start=\"906\" data-end=\"1031\">Join thousands of learners in mastering financial management through an intuitive and engaging digital learning experience.</p>', NULL, NULL, NULL, NULL, '2025-05-23 22:15:10', '2025-05-23 22:26:24');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `image`, `name`, `email`, `email_verified_at`, `password`, `bio`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '/uploads/educore_6831b6b216c75.jpg', 'Admin', 'admin@gmail.com', NULL, '$2y$12$Vka7V31dJ7llAj5lYVULVeh67QCuQ0yzJzhDwgKSBdvsg9Rp2VYhy', NULL, NULL, '2025-05-23 21:42:15', '2025-05-24 04:08:18');

-- --------------------------------------------------------

--
-- Table structure for table `become_instructor_sections`
--

CREATE TABLE `become_instructor_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `button_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `become_instructor_sections`
--

INSERT INTO `become_instructor_sections` (`id`, `image`, `title`, `subtitle`, `button_text`, `button_url`, `created_at`, `updated_at`) VALUES
(1, '/uploads/educore_6831672711a69.png', 'Be a Member & Share Your Knowledge.', 'GFMIQ allows administrators and instructors to create, organize, and deliver courses. This includes uploading course content, managing materials, and setting assessments.', 'Become Instructor Now!', '/register', '2025-05-23 22:28:55', '2025-05-23 22:28:55');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('gatewaySettings', 'a:11:{s:13:\"stripe_status\";s:6:\"active\";s:15:\"stripe_currency\";s:3:\"PHP\";s:11:\"stripe_rate\";s:1:\"1\";s:22:\"stripe_publishable_key\";s:107:\"pk_test_51QkNpkRrHaSuzbNRAzNVpKvTcPqj3TQifPTaRjdaq9ElLSNWhRijAKY2wX3Q2rWv4xB89QU91peYX04WsAJvQFOe00jtYPBiKq\";s:13:\"stripe_secret\";s:107:\"sk_test_51QkNpkRrHaSuzbNR0zmLGYUPof9yFg4lzE9q6xyD5HuFfpfupYN2fJgl9W5Nn920kZKuhwEXnmBIMX8s8rOJtxqt00xnZ3jWFR\";s:11:\"paypal_mode\";s:7:\"sandbox\";s:16:\"paypal_client_id\";s:80:\"AQKuAYdo_uQ69W9nuxF5dhS_4UGubcDtuR-aiQKUf4qb96Gj3fn1r_qDpSlj7uFPs3pvF1j0I_0xR3Jb\";s:20:\"paypal_client_secret\";s:81:\"EGxaR_f1GWkdC9DxI8QZlJGmus5Ew7ehd_Hsoyh8kmd0h5nAZWNyS5Vy69GFEYaql3B_q81jjdLyFHL9\\\";s:15:\"paypal_currency\";s:3:\"PHP\";s:11:\"paypal_rate\";s:1:\"1\";s:13:\"paypal_app_id\";s:6:\"App_id\";}', 2063970556),
('instructor@gmail.com|127.0.0.1', 'i:2;', 1748671887),
('instructor@gmail.com|127.0.0.1:timer', 'i:1748671887;', 1748671887),
('roczpen822@gmail.com|127.0.0.1', 'i:2;', 1748672070),
('roczpen822@gmail.com|127.0.0.1:timer', 'i:1748672070;', 1748672070),
('roczpens822@gmail.com|127.0.0.1', 'i:2;', 1748672054),
('roczpens822@gmail.com|127.0.0.1:timer', 'i:1748672054;', 1748672054),
('settings', 'a:18:{s:9:\"site_name\";s:5:\"GFMIQ\";s:5:\"phone\";s:13:\"0927-794-5452\";s:8:\"location\";s:69:\"Unit 909, The One Executive Office Building, West Avenue, Quezon City\";s:16:\"default_currency\";s:3:\"PHP\";s:13:\"currency_icon\";s:3:\"₱\";s:9:\"site_logo\";s:34:\"/uploads/educore_68315d66dc1e8.png\";s:16:\"site_footer_logo\";s:34:\"/uploads/educore_68315d66de809.png\";s:12:\"site_favicon\";s:34:\"/uploads/educore_68315d66dec94.png\";s:15:\"site_breadcrumb\";s:34:\"/uploads/educore_68315d66df1e7.jpg\";s:14:\"receiver_email\";s:23:\"admin.support@gmail.com\";s:12:\"sender_email\";s:15:\"admin@gmail.com\";s:11:\"mail_mailer\";s:4:\"smtp\";s:9:\"mail_host\";s:24:\"sandbox.smtp.mailtrap.io\";s:9:\"mail_port\";s:4:\"2525\";s:13:\"mail_username\";s:14:\"5c21e49be3d739\";s:13:\"mail_password\";s:14:\"604a7696795488\";s:15:\"mail_encryption\";s:3:\"tls\";s:10:\"mail_queue\";s:1:\"1\";}', 2063506075),
('user@gmail.com|127.0.0.1', 'i:2;', 1748172464),
('user@gmail.com|127.0.0.1:timer', 'i:1748172464;', 1748172464);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `course_id`, `created_at`, `updated_at`) VALUES
(4, 8, 3, '2025-05-30 05:06:30', '2025-05-30 05:06:30');

-- --------------------------------------------------------

--
-- Table structure for table `certificate_builders`
--

CREATE TABLE `certificate_builders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `background` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificate_builders`
--

INSERT INTO `certificate_builders` (`id`, `background`, `title`, `sub_title`, `description`, `signature`, `created_at`, `updated_at`) VALUES
(1, '/uploads/educore_68315f5288998.png', '[student_name]', 'For completing the [course_name]', 'For completing [course_name] on [date], Awarded for successfully completing the course [course_name] on GFMIQ, led by [instructor_name].', '/uploads/educore_68315f5286599.png', '2025-05-23 21:55:30', '2025-05-30 05:12:13');

-- --------------------------------------------------------

--
-- Table structure for table `certificate_builder_items`
--

CREATE TABLE `certificate_builder_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `element_id` varchar(255) DEFAULT NULL,
  `x_position` varchar(255) DEFAULT NULL,
  `y_position` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificate_builder_items`
--

INSERT INTO `certificate_builder_items` (`id`, `element_id`, `x_position`, `y_position`, `created_at`, `updated_at`) VALUES
(1, 'title', '0', '226', '2025-05-23 21:55:39', '2025-05-23 21:56:26'),
(2, 'description', '0', '248', '2025-05-23 21:55:45', '2025-05-23 21:56:39'),
(3, 'signature', '0', '260', '2025-05-23 21:55:50', '2025-05-23 21:56:38'),
(4, 'subtitle', '0', '241', '2025-05-23 21:55:57', '2025-05-23 21:56:29');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `line_one` varchar(255) DEFAULT NULL,
  `line_two` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `icon`, `title`, `line_one`, `line_two`, `status`, `created_at`, `updated_at`) VALUES
(1, '/uploads/educore_6735ad9e2c8c1.png', 'Office Address', 'Unit 909, The One Executive Building, West Ave, Quezon City, Metro Manila', NULL, 1, '2024-11-13 09:58:22', '2025-05-04 01:02:26'),
(2, '/uploads/educore_6735adb7a7270.png', 'Send a Message', 'Phone:', '0927-794-5452', 1, '2024-11-13 09:58:47', '2025-05-23 22:57:58'),
(3, '/uploads/educore_6735add772bd2.png', 'Let\'s Discuss', 'Email us:', 'gfmic22.inc@gmail.com', 1, '2024-11-13 09:59:19', '2025-05-23 22:59:38'),
(4, '/uploads/educore_6735aded2cf94.png', 'Team Up with Us', 'Join Our Team in GFMIC, Inc.', 'Visit us: www.gfmic.ph', 1, '2024-11-13 09:59:41', '2025-05-23 22:59:57');

-- --------------------------------------------------------

--
-- Table structure for table `contact_settings`
--

CREATE TABLE `contact_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `map_url` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_settings`
--

INSERT INTO `contact_settings` (`id`, `image`, `map_url`, `created_at`, `updated_at`) VALUES
(1, '/uploads/educore_68316bf24abf1.png', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3860.321011516188!2d121.0248415!3d14.6377104!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397b65054df2af3%3A0xa6dd1724feafa1c4!2sGovernment%20Financial%20Management%20Innovators%20Circle%2C%20Inc.!5e0!3m2!1sen!2sph!4v1742200341733!5m2!1sen!2sph', '2025-05-23 22:47:27', '2025-05-23 22:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `counter_one` varchar(255) DEFAULT NULL,
  `title_one` varchar(255) DEFAULT NULL,
  `counter_two` varchar(255) DEFAULT NULL,
  `title_two` varchar(255) DEFAULT NULL,
  `counter_three` varchar(255) DEFAULT NULL,
  `title_three` varchar(255) DEFAULT NULL,
  `counter_four` varchar(255) DEFAULT NULL,
  `title_four` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `instructor_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_type` enum('course') NOT NULL DEFAULT 'course',
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `time_zone` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `demo_video_storage` enum('upload','youtube','vimeo','external_link') DEFAULT NULL,
  `demo_video_source` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `certificate` tinyint(1) DEFAULT 0,
  `qna` tinyint(1) DEFAULT 0,
  `message_for_reviewer` text DEFAULT NULL,
  `is_approved` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `status` enum('active','inactive','draft') NOT NULL DEFAULT 'draft',
  `course_level_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_language_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `instructor_id`, `category_id`, `course_type`, `title`, `slug`, `seo_description`, `duration`, `time_zone`, `thumbnail`, `demo_video_storage`, `demo_video_source`, `description`, `capacity`, `price`, `discount`, `certificate`, `qna`, `message_for_reviewer`, `is_approved`, `status`, `course_level_id`, `course_language_id`, `created_at`, `updated_at`) VALUES
(3, 6, 9, 'course', 'Laravel', 'laravel', 'This is Laravel', '200', NULL, '/uploads/educore_6832a4e1e1c3c.webp', 'upload', NULL, '<p>Laravel is a free, open-source PHP web framework designed to simplify web application development. It provides a robust set of tools and resources, including routing, validation, caching, and more, allowing developers to build scalable applications efficiently. Laravel follows the Model-View-Controller (MVC) architectural pattern and is known for its expressive, elegant syntax.</p>', 100, 0, NULL, 0, 0, NULL, 'approved', 'active', 4, 3, '2025-05-24 21:04:33', '2025-06-06 05:50:51');

-- --------------------------------------------------------

--
-- Table structure for table `course_categories`
--

CREATE TABLE `course_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `show_at_trending` tinyint(1) DEFAULT 0,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_categories`
--

INSERT INTO `course_categories` (`id`, `image`, `icon`, `name`, `slug`, `parent_id`, `show_at_trending`, `status`, `created_at`, `updated_at`) VALUES
(8, '/uploads/educore_673570c8d2427.png', NULL, 'Development', 'development', NULL, 1, 1, '2024-11-13 05:38:48', '2024-11-13 05:46:12'),
(9, '/uploads/educore_673570de7ee17.png', NULL, 'HTML & CSS', 'html-css', 8, 0, 1, '2024-11-13 05:39:10', '2024-11-13 05:39:10'),
(10, '/uploads/educore_673570ee3b1a4.png', NULL, 'JavaScript', 'javascript', 8, 0, 1, '2024-11-13 05:39:26', '2024-11-13 05:39:26'),
(11, '/uploads/educore_673570fa406d3.png', NULL, 'PHP', 'php', 8, 0, 1, '2024-11-13 05:39:38', '2024-11-13 05:39:38'),
(12, '/uploads/educore_673571052ec2f.png', NULL, 'Python', 'python', 8, 0, 1, '2024-11-13 05:39:49', '2024-11-13 05:39:49'),
(13, '/uploads/educore_6735712e8f743.png', NULL, 'Data Analytics', 'data-analytics', NULL, 1, 1, '2024-11-13 05:40:30', '2024-11-13 05:47:00'),
(14, NULL, NULL, 'Data Analysis', 'data-analysis', 13, 0, 1, '2024-11-13 05:40:42', '2024-11-13 05:40:42'),
(15, '/uploads/educore_6735717fa8bc2.png', NULL, 'Data Science', 'data-science', 13, 0, 1, '2024-11-13 05:41:51', '2024-11-13 05:41:51'),
(16, '/uploads/educore_6735718b8fccd.png', NULL, 'Machine Learning', 'machine-learning', 13, 0, 1, '2024-11-13 05:42:03', '2024-11-13 05:42:03'),
(17, '/uploads/educore_6735719c611d2.png', NULL, 'Big Data', 'big-data', 13, 0, 1, '2024-11-13 05:42:20', '2024-11-13 05:42:20'),
(18, '/uploads/educore_673571b795143.png', NULL, 'Business', 'business', NULL, 1, 1, '2024-11-13 05:42:47', '2024-11-13 05:47:19'),
(19, '/uploads/educore_673571c776daa.png', NULL, 'Design & Creative Arts', 'design-creative-arts', NULL, 1, 1, '2024-11-13 05:43:03', '2024-11-13 05:43:03'),
(20, '/uploads/educore_673571d845b90.png', NULL, 'Health & Wellness', 'health-wellness', NULL, 1, 1, '2024-11-13 05:43:20', '2024-11-13 05:43:20'),
(21, '/uploads/educore_6735720e75d4d.png', NULL, 'Personal Development', 'personal-development', NULL, 1, 1, '2024-11-13 05:44:14', '2024-11-13 05:44:14'),
(22, '/uploads/educore_673572348cdb9.png', NULL, 'Languages & Culture', 'languages-culture', NULL, 1, 1, '2024-11-13 05:44:52', '2024-11-13 05:44:52'),
(23, '/uploads/educore_6735724f7af9f.png', NULL, 'Finance & Investing', 'finance-investing', NULL, 1, 1, '2024-11-13 05:45:19', '2024-11-13 05:45:19');

-- --------------------------------------------------------

--
-- Table structure for table `course_chapters`
--

CREATE TABLE `course_chapters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `instructor_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_chapters`
--

INSERT INTO `course_chapters` (`id`, `title`, `instructor_id`, `course_id`, `order`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Welcome to Laravel', 6, 3, 1, 1, '2025-05-24 21:08:19', '2025-05-24 21:08:19');

-- --------------------------------------------------------

--
-- Table structure for table `course_chapter_lessions`
--

CREATE TABLE `course_chapter_lessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `instructor_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `chapter_id` bigint(20) UNSIGNED NOT NULL,
  `file_path` text NOT NULL,
  `storage` enum('upload','youtube','vimeo','external_link') NOT NULL,
  `volume` varchar(255) DEFAULT NULL,
  `duration` varchar(255) NOT NULL,
  `file_type` enum('video','audio','doc','file','pdf') NOT NULL,
  `downloadable` tinyint(1) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL,
  `is_preview` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `lesson_type` enum('lesson','live') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_chapter_lessions`
--

INSERT INTO `course_chapter_lessions` (`id`, `title`, `slug`, `description`, `instructor_id`, `course_id`, `chapter_id`, `file_path`, `storage`, `volume`, `duration`, `file_type`, `downloadable`, `order`, `is_preview`, `status`, `lesson_type`, `created_at`, `updated_at`) VALUES
(4, 'Welcome to Laravel', 'welcome-to-laravel', 'This is Laravel', 6, 3, 5, 'https://www.youtube.com/watch?v=rmMCiP-iVYM', 'youtube', NULL, '3', 'video', 0, 1, 1, 1, 'lesson', '2025-05-24 21:09:27', '2025-05-24 21:09:27');

-- --------------------------------------------------------

--
-- Table structure for table `course_languages`
--

CREATE TABLE `course_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_languages`
--

INSERT INTO `course_languages` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(3, 'English', 'english', '2025-05-24 20:21:22', '2025-05-24 20:21:22'),
(4, 'Filipino', 'filipino', '2025-05-24 20:21:28', '2025-05-24 20:21:28');

-- --------------------------------------------------------

--
-- Table structure for table `course_levels`
--

CREATE TABLE `course_levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_levels`
--

INSERT INTO `course_levels` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(4, 'Beginner', 'beginner', '2025-05-24 20:21:35', '2025-05-24 20:21:35'),
(5, 'Intermediate', 'intermediate', '2025-05-24 20:21:41', '2025-05-24 20:21:41'),
(6, 'Advanced', 'advanced', '2025-05-24 20:21:47', '2025-05-24 20:21:47');

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages`
--

CREATE TABLE `custom_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `show_at_nav` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `instructor_id` bigint(20) UNSIGNED NOT NULL,
  `have_access` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`id`, `user_id`, `course_id`, `instructor_id`, `have_access`, `created_at`, `updated_at`) VALUES
(1, 7, 3, 6, 1, '2025-05-25 03:39:35', '2025-05-25 03:39:35');

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
-- Table structure for table `featured_instructors`
--

CREATE TABLE `featured_instructors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `button_url` varchar(255) DEFAULT NULL,
  `instructor_id` bigint(20) UNSIGNED NOT NULL,
  `featured_courses` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`featured_courses`)),
  `instructor_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_one` varchar(255) DEFAULT NULL,
  `title_one` varchar(255) DEFAULT NULL,
  `subtitle_one` varchar(255) DEFAULT NULL,
  `image_two` varchar(255) DEFAULT NULL,
  `title_two` varchar(255) DEFAULT NULL,
  `subtitle_two` varchar(255) DEFAULT NULL,
  `image_three` varchar(255) DEFAULT NULL,
  `title_three` varchar(255) DEFAULT NULL,
  `subtitle_three` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `image_one`, `title_one`, `subtitle_one`, `image_two`, `title_two`, `subtitle_two`, `image_three`, `title_three`, `subtitle_three`, `created_at`, `updated_at`) VALUES
(1, '/uploads/educore_683163c5375ac.png', 'Laravel', 'Build powerful and modern web applications using the Laravel PHP framework.', '/uploads/educore_6842f702486d1.png', 'Python', 'Learn Python programming for web development, automation, and data processing.', '/uploads/educore_683163c539f4a.svg', 'Next.js', 'Create fast and dynamic web apps with Next.js, the React framework for full-stack development.', '2025-05-23 22:12:51', '2025-06-06 06:11:14');

-- --------------------------------------------------------

--
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `description`, `copyright`, `phone`, `address`, `email`, `created_at`, `updated_at`) VALUES
(1, 'GFMIQ is a cutting-edge Learning Management System designed for financial professionals, students, and organizations.', 'Copyright © 2025 GFMIC. All rights reserved.', '0927-794-5452', 'Unit 909, The One Executive Office Building, West Avenue, Quezon City', 'gfmic22.inc@gmail.com', '2025-05-23 23:07:21', '2025-05-23 23:07:21');

-- --------------------------------------------------------

--
-- Table structure for table `footer_column_ones`
--

CREATE TABLE `footer_column_ones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_column_ones`
--

INSERT INTO `footer_column_ones` (`id`, `title`, `url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', '/', 1, '2024-11-13 14:30:53', '2024-11-13 14:30:53'),
(2, 'About', '/about', 1, '2024-11-13 14:31:04', '2024-11-13 14:31:04'),
(3, 'Courses', '/courses', 1, '2024-11-13 14:31:28', '2024-11-13 14:31:28');

-- --------------------------------------------------------

--
-- Table structure for table `footer_column_twos`
--

CREATE TABLE `footer_column_twos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `heroes`
--

CREATE TABLE `heroes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `button_url` varchar(255) DEFAULT NULL,
  `video_button_text` varchar(255) DEFAULT NULL,
  `video_button_url` varchar(255) DEFAULT NULL,
  `banner_item_title` varchar(255) DEFAULT NULL,
  `banner_item_subtitle` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `round_text` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `heroes`
--

INSERT INTO `heroes` (`id`, `label`, `title`, `subtitle`, `button_text`, `button_url`, `video_button_text`, `video_button_url`, `banner_item_title`, `banner_item_subtitle`, `image`, `round_text`, `created_at`, `updated_at`) VALUES
(1, 'GFMIQ', 'Unlock Knowledge with Our Powerful Courses', 'An intuitive platform designed for learners and educators. Access interactive courses, track progress, and earn certifications—all in one place.', 'Start Learning Today!', '/register', 'See How It Works', 'https://www.youtube.com/watch?v=VkBnNxneA_A&list=PLU9il4c3BBUU6iPLgqjXXtn9apt69Pz9S', NULL, NULL, '/uploads/educore_6832ad3c63c8a.png', NULL, '2025-05-23 22:08:23', '2025-06-06 05:49:52');

-- --------------------------------------------------------

--
-- Table structure for table `instructor_payout_information`
--

CREATE TABLE `instructor_payout_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `instructor_id` bigint(20) UNSIGNED NOT NULL,
  `gateway` varchar(255) NOT NULL,
  `information` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"ddc9b99c-7f78-4c35-ab6f-abf64084087b\",\"displayName\":\"App\\\\Mail\\\\InstructorRequestApprovedMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:38:\\\"App\\\\Mail\\\\InstructorRequestApprovedMail\\\":2:{s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:28:\\\"roczpenmstodomingo@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1748088697, 1748088697),
(2, 'default', '{\"uuid\":\"e3a20031-691f-4488-aa0e-e77199cba71c\",\"displayName\":\"App\\\\Mail\\\\InstructorRequestApprovedMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:38:\\\"App\\\\Mail\\\\InstructorRequestApprovedMail\\\":2:{s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:20:\\\"roczpen822@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1748148992, 1748148992);

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
-- Table structure for table `latest_course_sections`
--

CREATE TABLE `latest_course_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_one` bigint(20) UNSIGNED DEFAULT NULL,
  `category_two` bigint(20) UNSIGNED DEFAULT NULL,
  `category_three` bigint(20) UNSIGNED DEFAULT NULL,
  `category_four` bigint(20) UNSIGNED DEFAULT NULL,
  `category_five` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_09_08_065327_create_admins_table', 1),
(5, '2024_09_16_051540_create_course_languages_table', 1),
(6, '2024_09_16_051550_create_course_levels_table', 1),
(7, '2024_09_17_043302_create_course_categories_table', 1),
(8, '2024_09_19_043003_create_courses_table', 1),
(9, '2024_09_23_071232_create_course_chapters_table', 1),
(10, '2024_09_24_053058_create_course_chapter_lessions_table', 1),
(11, '2024_10_06_102010_create_carts_table', 1),
(12, '2024_10_08_110148_create_orders_table', 1),
(13, '2024_10_08_110623_create_order_items_table', 1),
(14, '2024_10_09_045449_create_enrollments_table', 1),
(15, '2024_10_09_054354_create_payment_settings_table', 1),
(16, '2024_10_13_043638_create_settings_table', 1),
(17, '2024_10_14_034850_create_payout_gateways_table', 1),
(18, '2024_10_14_091733_create_instructor_payout_information_table', 1),
(19, '2024_10_14_100417_create_withdraws_table', 1),
(20, '2024_10_21_044338_create_watch_histories_table', 1),
(21, '2024_10_23_035812_create_certificate_builders_table', 1),
(22, '2024_10_23_092243_create_certificate_builder_items_table', 1),
(23, '2024_10_24_062907_create_heroes_table', 1),
(24, '2024_10_24_104257_create_features_table', 1),
(25, '2024_10_27_060527_create_about_us_sections_table', 1),
(26, '2024_10_27_104942_create_latest_course_sections_table', 1),
(27, '2024_10_28_050235_create_newsletters_table', 1),
(28, '2024_10_28_070153_create_become_instructor_sections_table', 1),
(29, '2024_10_28_092117_create_video_sections_table', 1),
(30, '2024_10_28_102347_create_brands_table', 1),
(31, '2024_10_29_033303_create_featured_instructors_table', 1),
(32, '2024_10_29_093341_create_testimonials_table', 1),
(33, '2024_10_30_044920_create_counters_table', 1),
(34, '2024_10_30_073141_create_contacts_table', 1),
(35, '2024_10_30_104250_create_contact_settings_table', 1),
(36, '2024_11_03_052323_create_reviews_table', 1),
(37, '2024_11_04_035435_create_top_bars_table', 1),
(38, '2024_11_04_074415_create_footers_table', 1),
(39, '2024_11_04_102755_create_social_links_table', 1),
(40, '2024_11_05_032238_create_footer_column_ones_table', 1),
(41, '2024_11_05_032238_create_footer_column_twos_table', 1),
(42, '2024_11_05_050433_create_custom_pages_table', 1),
(43, '2024_11_05_105539_create_blog_categories_table', 1),
(44, '2024_11_06_033439_create_blogs_table', 1),
(45, '2024_11_10_063956_create_blog_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(255) NOT NULL,
  `buyer_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','approved') NOT NULL DEFAULT 'pending',
  `total_amount` double NOT NULL,
  `paid_amount` double NOT NULL,
  `currency` varchar(255) NOT NULL,
  `has_coupon` tinyint(1) NOT NULL DEFAULT 0,
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_amount` double DEFAULT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_id`, `buyer_id`, `status`, `total_amount`, `paid_amount`, `currency`, `has_coupon`, `coupon_code`, `coupon_amount`, `transaction_id`, `payment_method`, `created_at`, `updated_at`) VALUES
(1, '683301775ba73', 7, 'approved', 10, 500, 'php', 0, NULL, NULL, 'pi_3RScthRrHaSuzbNR1ZOEobrR', 'stripe', '2025-05-25 03:39:35', '2025-05-25 03:39:35');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `price` double NOT NULL,
  `commission_rate` double DEFAULT NULL,
  `item_type` enum('course') NOT NULL DEFAULT 'course',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `course_id`, `qty`, `price`, `commission_rate`, `item_type`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 1, 10, NULL, 'course', '2025-05-25 03:39:35', '2025-05-25 03:39:35');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('roczpen822@gmail.com', '$2y$12$iabhNyZEpmuu9KBwOgK0Eu93AYVzx6gWTKhMQk/2NJDCoavNUizr2', '2025-05-30 22:13:41');

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'stripe_status', 'active', '2025-05-23 21:51:55', '2025-05-23 21:51:55'),
(2, 'stripe_currency', 'PHP', '2025-05-23 21:51:55', '2025-05-24 05:17:05'),
(3, 'stripe_rate', '1', '2025-05-23 21:51:55', '2025-05-30 05:09:16'),
(4, 'stripe_publishable_key', 'pk_test_51QkNpkRrHaSuzbNRAzNVpKvTcPqj3TQifPTaRjdaq9ElLSNWhRijAKY2wX3Q2rWv4xB89QU91peYX04WsAJvQFOe00jtYPBiKq', '2025-05-23 21:51:55', '2025-05-23 21:51:55'),
(5, 'stripe_secret', 'sk_test_51QkNpkRrHaSuzbNR0zmLGYUPof9yFg4lzE9q6xyD5HuFfpfupYN2fJgl9W5Nn920kZKuhwEXnmBIMX8s8rOJtxqt00xnZ3jWFR', '2025-05-23 21:51:55', '2025-05-23 21:51:55'),
(6, 'paypal_mode', 'sandbox', '2025-05-24 05:01:15', '2025-05-24 05:01:15'),
(7, 'paypal_client_id', 'AQKuAYdo_uQ69W9nuxF5dhS_4UGubcDtuR-aiQKUf4qb96Gj3fn1r_qDpSlj7uFPs3pvF1j0I_0xR3Jb', '2025-05-24 05:01:15', '2025-05-24 05:01:15'),
(8, 'paypal_client_secret', 'EGxaR_f1GWkdC9DxI8QZlJGmus5Ew7ehd_Hsoyh8kmd0h5nAZWNyS5Vy69GFEYaql3B_q81jjdLyFHL9\\', '2025-05-24 05:01:15', '2025-05-24 05:01:15'),
(9, 'paypal_currency', 'PHP', '2025-05-24 05:01:15', '2025-05-24 05:01:15'),
(10, 'paypal_rate', '1', '2025-05-24 05:01:15', '2025-05-24 05:01:15'),
(11, 'paypal_app_id', 'App_id', '2025-05-24 05:01:15', '2025-05-24 05:01:15');

-- --------------------------------------------------------

--
-- Table structure for table `payout_gateways`
--

CREATE TABLE `payout_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `review` text NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('88hEOxFHaxxIH9fQy6xLbapsjfD8xp5wUBMTH8jx', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoienNkeWV4N2JmbTROZTdnMFFSSzdNMUNtNnRTWm9FZ2dGdU9aWnoxRCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjt9fQ==', 1749219078),
('GqbgivCS1n9RQyjqr2cPqBThCGX5HPgEVGSx0QLz', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiem50RzF5THJLWDJIZHpBN1pzR3dpbVFaQTlJN0ZrMnVTcUVTZlQ5SiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluL2hlcm8iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNjoiY291cnNlX2NyZWF0ZV9pZCI7aTozO30=', 1749219111),
('pscRmAhyCCosIIw98d4D3W5ouvGnUKTokSD4RFYk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZ0JhSVhVbmJKQ2Vkdk9Ga1d1RUZoRGp3MjlXMmdJejFDOXVtcnhiNSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3JlZ2lzdGVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748672408),
('R6cY2rkLwFTPm1zgcmAeXUCm4ilNGo81uYrx8ljE', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiMnd6WFBmZ0tsVlN0MWRFZ2dFbkFHUTNKVEdwaENYTlFHckw2V0VFbSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0OToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluL2NvdXJzZXMvMy9lZGl0P3N0ZXA9NCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTI6ImxvZ2luX2FkbWluXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE2OiJjb3Vyc2VfY3JlYXRlX2lkIjtpOjM7fQ==', 1748672784);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'GFMIQ', '2025-05-23 21:44:49', '2025-05-23 21:44:49'),
(2, 'phone', '0927-794-5452', '2025-05-23 21:44:49', '2025-05-23 21:44:49'),
(3, 'location', 'Unit 909, The One Executive Office Building, West Avenue, Quezon City', '2025-05-23 21:44:49', '2025-05-23 21:44:49'),
(4, 'default_currency', 'PHP', '2025-05-23 21:44:49', '2025-05-23 21:44:49'),
(5, 'currency_icon', '₱', '2025-05-23 21:44:49', '2025-05-23 21:44:49'),
(6, 'site_logo', '/uploads/educore_68315d66dc1e8.png', '2025-05-23 21:47:18', '2025-05-23 21:47:18'),
(7, 'site_footer_logo', '/uploads/educore_68315d66de809.png', '2025-05-23 21:47:18', '2025-05-23 21:47:18'),
(8, 'site_favicon', '/uploads/educore_68315d66dec94.png', '2025-05-23 21:47:18', '2025-05-23 21:47:18'),
(9, 'site_breadcrumb', '/uploads/educore_68315d66df1e7.jpg', '2025-05-23 21:47:18', '2025-05-23 21:47:18'),
(10, 'receiver_email', 'admin.support@gmail.com', '2025-05-24 03:55:20', '2025-05-24 03:55:20'),
(11, 'sender_email', 'admin@gmail.com', '2025-05-24 03:55:20', '2025-05-24 03:55:20'),
(12, 'mail_mailer', 'smtp', '2025-05-24 03:55:20', '2025-05-24 03:55:20'),
(13, 'mail_host', 'sandbox.smtp.mailtrap.io', '2025-05-24 03:55:20', '2025-05-24 03:55:20'),
(14, 'mail_port', '2525', '2025-05-24 03:55:20', '2025-05-24 03:55:20'),
(15, 'mail_username', '5c21e49be3d739', '2025-05-24 03:55:20', '2025-05-24 03:55:20'),
(16, 'mail_password', '604a7696795488', '2025-05-24 03:55:20', '2025-05-24 03:55:20'),
(17, 'mail_encryption', 'tls', '2025-05-24 03:55:20', '2025-05-24 03:55:20'),
(18, 'mail_queue', '1', '2025-05-24 03:55:20', '2025-05-24 03:55:20');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `icon`, `url`, `status`, `created_at`, `updated_at`) VALUES
(7, '/uploads/facebook.png', 'https://www.facebook.com/gfmic.inc/', 7, '2024-11-12 11:47:18', '2024-11-12 11:47:18');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `review` text NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `top_bars`
--

CREATE TABLE `top_bars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `offer_name` varchar(255) DEFAULT NULL,
  `offer_short_description` varchar(255) DEFAULT NULL,
  `offer_button_text` varchar(255) DEFAULT NULL,
  `offer_button_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `top_bars`
--

INSERT INTO `top_bars` (`id`, `email`, `phone`, `offer_name`, `offer_short_description`, `offer_button_text`, `offer_button_url`, `created_at`, `updated_at`) VALUES
(1, 'gfmic22.inc@gmail.com', '0927-794-5452', 'Come and Join GFMIQ', 'Learn new courses everyday!', 'Join Now!', '/register', '2025-05-23 23:01:16', '2025-05-23 23:01:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` enum('instructor','student') NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '/default-files/avatar.png',
  `name` varchar(255) NOT NULL,
  `headline` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `bio` text DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `x` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `github` varchar(255) DEFAULT NULL,
  `approve_status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `login_as` enum('student','instructor') DEFAULT NULL,
  `wallet` double NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `image`, `name`, `headline`, `email`, `bio`, `gender`, `document`, `email_verified_at`, `password`, `facebook`, `x`, `linkedin`, `website`, `github`, `approve_status`, `login_as`, `wallet`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'instructor', '/uploads/educore_6832a2f6b752c.jpg', 'I am an instructor', NULL, 'roczpen822@gmail.com', NULL, NULL, '/uploads/educore_6832a205cd31e.png', NULL, '$2y$12$nbljAo0Y7NOUIACsyUUxDuAYrDNdh80EJNkW26IKJS0VnSIJaUiZu', NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 0, NULL, '2025-05-24 20:52:22', '2025-05-25 03:47:54'),
(7, 'student', '/uploads/educore_6832a8af94714.jpg', 'I am a student', NULL, 'student@gmail.com', NULL, NULL, NULL, NULL, '$2y$12$VYs00HNUJD8PzTqLXkUXpu773iAz2Y/lsnPtj2ZQO2wP5TtEhaDWO', NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 0, NULL, '2025-05-24 21:20:23', '2025-05-24 21:20:47'),
(8, 'student', '/default-files/avatar.png', 'Juan Tamad', NULL, 'juan@gmail.com', NULL, NULL, NULL, NULL, '$2y$12$Wx13bfC/1ZUvCDVXsNLzTOcBViPc1QIKeJrfoWIbszTehTkC8ZtXK', NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 0, NULL, '2025-05-30 05:06:23', '2025-05-30 05:06:23');

-- --------------------------------------------------------

--
-- Table structure for table `video_sections`
--

CREATE TABLE `video_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `background` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `button_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `watch_histories`
--

CREATE TABLE `watch_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `chapter_id` bigint(20) UNSIGNED NOT NULL,
  `lesson_id` bigint(20) UNSIGNED NOT NULL,
  `is_completed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `watch_histories`
--

INSERT INTO `watch_histories` (`id`, `user_id`, `course_id`, `chapter_id`, `lesson_id`, `is_completed`, `created_at`, `updated_at`) VALUES
(1, 7, 3, 5, 4, 1, '2025-05-25 03:41:13', '2025-05-25 03:42:06');

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `instructor_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `transaction_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us_sections`
--
ALTER TABLE `about_us_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `become_instructor_sections`
--
ALTER TABLE `become_instructor_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_user_id_foreign` (`user_id`),
  ADD KEY `blogs_blog_category_id_foreign` (`blog_category_id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_comments_user_id_foreign` (`user_id`),
  ADD KEY `blog_comments_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_course_id_foreign` (`course_id`);

--
-- Indexes for table `certificate_builders`
--
ALTER TABLE `certificate_builders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificate_builder_items`
--
ALTER TABLE `certificate_builder_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_settings`
--
ALTER TABLE `contact_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_instructor_id_foreign` (`instructor_id`);

--
-- Indexes for table `course_chapters`
--
ALTER TABLE `course_chapters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_chapters_instructor_id_foreign` (`instructor_id`),
  ADD KEY `course_chapters_course_id_foreign` (`course_id`);

--
-- Indexes for table `course_chapter_lessions`
--
ALTER TABLE `course_chapter_lessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_chapter_lessions_instructor_id_foreign` (`instructor_id`),
  ADD KEY `course_chapter_lessions_course_id_foreign` (`course_id`),
  ADD KEY `course_chapter_lessions_chapter_id_foreign` (`chapter_id`);

--
-- Indexes for table `course_languages`
--
ALTER TABLE `course_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_languages_slug_unique` (`slug`);

--
-- Indexes for table `course_levels`
--
ALTER TABLE `course_levels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_levels_slug_unique` (`slug`);

--
-- Indexes for table `custom_pages`
--
ALTER TABLE `custom_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enrollments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `featured_instructors`
--
ALTER TABLE `featured_instructors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `featured_instructors_instructor_id_foreign` (`instructor_id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_column_ones`
--
ALTER TABLE `footer_column_ones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_column_twos`
--
ALTER TABLE `footer_column_twos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `heroes`
--
ALTER TABLE `heroes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructor_payout_information`
--
ALTER TABLE `instructor_payout_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instructor_payout_information_instructor_id_foreign` (`instructor_id`);

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
-- Indexes for table `latest_course_sections`
--
ALTER TABLE `latest_course_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_buyer_id_foreign` (`buyer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout_gateways`
--
ALTER TABLE `payout_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_course_id_foreign` (`course_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_bars`
--
ALTER TABLE `top_bars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `video_sections`
--
ALTER TABLE `video_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `watch_histories`
--
ALTER TABLE `watch_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `watch_histories_user_id_foreign` (`user_id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdraws_instructor_id_foreign` (`instructor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us_sections`
--
ALTER TABLE `about_us_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `become_instructor_sections`
--
ALTER TABLE `become_instructor_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `certificate_builders`
--
ALTER TABLE `certificate_builders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `certificate_builder_items`
--
ALTER TABLE `certificate_builder_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact_settings`
--
ALTER TABLE `contact_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course_chapters`
--
ALTER TABLE `course_chapters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `course_chapter_lessions`
--
ALTER TABLE `course_chapter_lessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `course_languages`
--
ALTER TABLE `course_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `course_levels`
--
ALTER TABLE `course_levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `custom_pages`
--
ALTER TABLE `custom_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `featured_instructors`
--
ALTER TABLE `featured_instructors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `footer_column_ones`
--
ALTER TABLE `footer_column_ones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `footer_column_twos`
--
ALTER TABLE `footer_column_twos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `heroes`
--
ALTER TABLE `heroes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `instructor_payout_information`
--
ALTER TABLE `instructor_payout_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `latest_course_sections`
--
ALTER TABLE `latest_course_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payout_gateways`
--
ALTER TABLE `payout_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `top_bars`
--
ALTER TABLE `top_bars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `video_sections`
--
ALTER TABLE `video_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `watch_histories`
--
ALTER TABLE `watch_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_blog_category_id_foreign` FOREIGN KEY (`blog_category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD CONSTRAINT `blog_comments_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`),
  ADD CONSTRAINT `blog_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `course_chapters`
--
ALTER TABLE `course_chapters`
  ADD CONSTRAINT `course_chapters_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_chapters_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `course_chapter_lessions`
--
ALTER TABLE `course_chapter_lessions`
  ADD CONSTRAINT `course_chapter_lessions_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `course_chapters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_chapter_lessions_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_chapter_lessions_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `featured_instructors`
--
ALTER TABLE `featured_instructors`
  ADD CONSTRAINT `featured_instructors_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `instructor_payout_information`
--
ALTER TABLE `instructor_payout_information`
  ADD CONSTRAINT `instructor_payout_information_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_buyer_id_foreign` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `watch_histories`
--
ALTER TABLE `watch_histories`
  ADD CONSTRAINT `watch_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD CONSTRAINT `withdraws_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
