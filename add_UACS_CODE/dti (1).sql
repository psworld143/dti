-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2025 at 08:24 AM
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
-- Database: `dti`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `financial_categories`
--

CREATE TABLE `financial_categories` (
  `category_id` int(255) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `financial_categories`
--

INSERT INTO `financial_categories` (`category_id`, `category_name`) VALUES
(1, 'Asset'),
(2, 'Liabilities'),
(3, 'Equity'),
(4, 'Revenue/Income'),
(5, 'Expenses');

-- --------------------------------------------------------

--
-- Table structure for table `financial_object_code`
--

CREATE TABLE `financial_object_code` (
  `object_code_id` int(255) NOT NULL,
  `object_name` varchar(255) NOT NULL,
  `submodule_id` int(255) NOT NULL,
  `uacs_code` int(255) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `financial_object_code`
--

INSERT INTO `financial_object_code` (`object_code_id`, `object_name`, `submodule_id`, `uacs_code`, `status`) VALUES
(3, 'Cash - Collecting Officers', 3, 10101010, 'Active'),
(4, 'Petty Cash', 3, 10101020, 'Active'),
(6, 'Cash in Bank - Local Currency, Bangko Sentral ng Pilipinas', 96, 10102010, 'Active'),
(7, 'Cash in Bank - Local Currency, Current Account', 96, 10102020, 'Active'),
(8, 'Cash in Bank - Local Currency, Savings Account', 96, 10102030, 'Active'),
(9, 'Cash in Bank - Local Currency, Time Deposits', 96, 10102040, 'Inactive'),
(10, 'Cash in Bank - Foreign Currency, Bangko Sentral ng Pilipinas ', 50, 10103010, 'Active'),
(15, 'Cash in Bank - Foreign Currency, Current Account', 50, 10103020, 'Active'),
(16, 'Cash in Bank - Foreign Currency, Savings Account', 50, 10103030, 'Active'),
(17, 'Cash in Bank - Foreign Currency, Time Deposits', 50, 10103040, 'Active'),
(18, 'Cash - Treasury/Agency Deposit, Regular', 51, 10104010, 'Active'),
(19, 'Cash - Treasury/Agency Deposit, Special Account', 51, 10104020, 'Active'),
(20, 'Cash - Treasury/Agency Deposit, Trust', 51, 10104030, 'Active'),
(21, 'Cash - Modified Disbursement System (MDS), Regular', 51, 10104040, 'Active'),
(22, 'Cash - Modified Disbursement System (MDS), Special Account', 51, 10104050, 'Active'),
(23, 'Cash - Modified Disbursement System (MDS), Trust', 51, 10104060, 'Active'),
(24, 'Cash - Tax Remittance Advice ', 51, 10104070, 'Active'),
(25, 'Cash - Constructive Income and Other Remittances', 51, 10104080, 'Active'),
(26, 'Cash - Constructive Disbursements', 51, 10104090, 'Active'),
(27, 'Treasury Bills', 52, 10105010, 'Active'),
(28, 'Time Deposits - Local Currency', 52, 10105020, 'Active'),
(29, 'Time Deposits - Foreign Currency', 52, 10105030, 'Active'),
(30, 'Financial Assets Held for Trading', 53, 10201010, 'Active'),
(31, 'Financial Assets Designated at Fair Value Through Surplus or Deficit', 53, 10201020, 'Active'),
(32, 'Derivative Financial Assets Held for Trading', 53, 10201030, 'Active'),
(33, 'Derivative Financial Assets Designated at Fair Value Through Surplus or Deficit', 53, 10201040, 'Active'),
(34, 'Investments in Treasury Bills - Local', 54, 10202010, 'Active'),
(35, 'Allowance for Impairment - Investments in Treasury Bills - Local', 54, 10202011, 'Inactive'),
(36, 'Allowance for Impairment - Investments in Treasury Bills - Local', 54, 10202012, 'Active'),
(37, 'Investments in Treasury Bills - Foreign', 54, 10202020, 'Active'),
(38, 'Allowance for Impairment - Investments in Treasury Bills - Foreign', 54, 10202021, 'Inactive'),
(39, 'Allowance for Impairment - Investments in Treasury Bills - Foreign', 54, 10202022, 'Active'),
(40, 'Investments in Treasury Bonds - Local', 54, 10202030, 'Active'),
(41, 'Allowance for Impairment - Investments in Bonds - Local', 54, 10202031, 'Inactive'),
(42, 'Allowance for Impairment - Investments in Treasury Bonds - Local', 54, 10202032, 'Active'),
(43, 'Investments in Treasury Bonds - Foreign', 54, 10202040, 'Active'),
(44, 'Allowance for Impairment - Investments in Treasury Bonds - Foreign', 54, 10202041, 'Inactive'),
(45, 'Allowance for Impairment - Investments in Treasury Bonds - Foreign', 54, 10202042, 'Active'),
(46, 'Investments in Stocks', 55, 10203010, 'Active'),
(47, 'Investments in Bonds', 55, 10203020, 'Active'),
(48, 'Other Investments', 55, 10203990, 'Active'),
(49, 'Investments in Government-Owned or Controlled Corporations', 55, 10204010, 'Active'),
(50, 'Allowance for Impairment - Investments in GOCCs', 56, 10204011, 'Inactive'),
(51, 'Allowance for Impairment - Investments in Government-Owned or Controlled Corporations', 56, 10204012, 'Active'),
(52, 'Investments in Joint Ventures', 56, 10205010, 'Active'),
(53, 'Allowance for Impairment - Investments in Joint Venture', 57, 10205011, 'Inactive'),
(54, 'Allowance for Impairment - Investments in Joint Ventures', 57, 10205012, 'Active'),
(55, 'Investments in Associates', 57, 10206010, 'Inactive'),
(56, 'Allowance for Impairment - Investments in Associates', 58, 10206011, 'Inactive'),
(57, 'Sinking Fund', 58, 10207010, 'Active'),
(58, 'Investments in Time Deposits - Local Currency', 59, 10211010, 'Active'),
(59, 'Investments in Time Deposits - Foreign Currency', 59, 10211020, 'Active'),
(60, 'Accounts Receivable', 60, 10301010, 'Active'),
(61, 'Allowance for Impairment - Accounts Receivable', 60, 10301011, 'Inactive'),
(62, 'Allowance for Impairment - Accounts Receivable', 60, 10301012, 'Active'),
(63, 'Notes Receivable', 60, 10301020, 'Active'),
(64, 'Allowance for Impairment - Notes Receivable', 60, 10301021, 'Inactive'),
(65, 'Allowance for Impairment - Notes Receivable', 60, 10301022, 'Active'),
(66, 'Loans Receivable - Government-Owned or Controlled Corporations', 60, 10301030, 'Active'),
(67, 'Allowance for Impairment - Loans Receivable - Government-Owned and/or Controlled Corporations', 60, 10301031, 'Inactive'),
(68, 'Allowance for Impairment - Loans Receivable - Government-Owned or Controlled Corporation', 60, 10301032, 'Active'),
(69, 'Loans Receivable - Local Government Units', 60, 10301040, 'Active'),
(70, 'Allowance for Impairment - Loans Receivable - Local Government Units', 60, 10301041, 'Inactive'),
(71, 'Allowance for Impairment - Loans Receivable - Local Government Units', 60, 10301042, 'Active'),
(72, 'Interests Receivable', 60, 10301050, 'Active'),
(73, 'Allowance for Impairment - Interests Receivable', 60, 10301051, 'Inactive'),
(74, 'Allowance for Impairment - Interests Receivable', 60, 10301052, 'Active'),
(75, 'Dividends Receivable', 60, 10301060, 'Active'),
(76, 'Tax Receivable', 60, 10301210, 'Active'),
(77, 'Allowance for Impairment - Tax Receivable', 60, 10301212, 'Active'),
(78, 'Receivables from Joint Ventures', 60, 10301220, 'Active'),
(79, 'Allowance for Impairment - Receivables from Joint Ventures ', 60, 10301222, 'Active'),
(80, 'Receivables from Joint Operators', 60, 10301230, 'Active'),
(81, 'Allowance for Impairment - Receivables from Joint Operators ', 60, 10301232, 'Active'),
(82, 'Service Concession Arrangements Receivable ', 60, 10301240, 'Active'),
(83, 'Allowance for Impairment - Service Concession Arrangements Receivable', 60, 10301242, 'Active'),
(84, 'Receivables from Authorized Agent Banks (AABs)/Agents ', 60, 10301250, 'Active'),
(85, 'Loans Receivable - Others', 60, 10301990, 'Active'),
(86, 'Allowance for Impairment - Loans Receivables - Others', 60, 10301991, 'Inactive'),
(87, 'Allowance for Impairment - Loans Receivable - Others', 60, 10301992, 'Inactive'),
(88, 'Operating Lease Receivable', 61, 10302010, 'Active'),
(89, 'Allowance for Impairment - Operating Lease Receivable', 61, 10302011, 'Inactive'),
(90, 'Allowance for Impairment - Operating Lease Receivable', 61, 10302012, 'Active'),
(91, 'Finance Lease Receivable', 61, 10302020, 'Active'),
(92, 'Allowance for Impairment - Finance Lease Receivable', 61, 10302021, 'Inactive'),
(93, 'Allowance for Impairment - Finance Lease Receivable', 61, 10302022, 'Active'),
(94, 'Due from National Government Agencies', 62, 10303010, 'Active'),
(95, 'Allowance for Impairment - Due from National Government Agencies', 62, 10303012, 'Active'),
(96, 'Due from Government-Owned or Controlled Corporations', 62, 10303020, 'Active'),
(97, 'Allowance for Impairment - Due from Government-Owned or Controlled Corporations', 62, 10303022, 'Active'),
(98, 'Due from Local Government Units', 62, 10303030, 'Active'),
(99, 'Allowance for Impairment - Due from Local Government Units', 62, 10303032, 'Active'),
(100, 'Due from Joint Venture', 62, 10303040, 'Active'),
(101, 'Due from Central Office', 63, 10304010, 'Active'),
(102, 'Due from Bureaus', 63, 10304020, 'Active'),
(103, 'Due from Regional Offices', 63, 10304030, 'Active'),
(104, 'Due from Operating/Field Units', 63, 10304040, 'Active'),
(105, 'Due from Other Funds', 63, 10304050, 'Active'),
(106, 'Receivables - Disallowances/Charges ', 64, 10305010, 'Inactive'),
(107, ' Due from Officers and Employees', 64, 10305020, 'Inactive'),
(108, 'Due from Non-Government Organizations/People\'s Organizations', 64, 10305030, 'Inactive'),
(109, 'Other Receivables', 64, 10305990, 'Inactive'),
(110, 'Allowance for Impairment - Other Receivables', 64, 10305991, 'Inactive'),
(111, 'Receivables - Disallowances/Charges', 64, 10399010, 'Active'),
(112, 'Due from Officers and Employees', 64, 10399020, 'Active'),
(113, 'Allowance for Impairment - Due from Officers and Employees', 64, 10399022, 'Active'),
(114, 'Due from Non-Government Organizations/Civil Society Organizations', 64, 10399030, 'Active'),
(115, 'Allowance for Impairment - Due from Non-Government Organizations/Civil Society Organizations', 64, 10399032, 'Active'),
(116, 'Other Receivables', 64, 10399990, 'Active'),
(117, 'Allowance for Impairment - Other Receivables ', 64, 10399992, 'Active'),
(118, 'Acquired/Forfeited Real Property', 65, 10401010, 'Active'),
(119, 'Aquaculture Produce ', 65, 10401010, 'Active'),
(120, 'Forest Products', 65, 10401010, 'Active'),
(121, 'Land/Reclaimed Land', 65, 10401010, 'Active'),
(122, 'Levied Real Property', 65, 10401010, 'Active'),
(123, 'Merchandise Inventory', 65, 10401010, 'Active'),
(124, 'Seized/Distrained Personal Property', 65, 10401010, 'Active'),
(125, 'Allowance for Impairment - Merchandise Inventory', 65, 10401012, 'Active'),
(126, 'Food Supplies for Distribution', 66, 10402010, 'Active'),
(127, 'Allowance for Impairment - Food Supplies for Distribution', 66, 10402012, 'Active'),
(128, ' Welfare Goods for Distribution', 66, 10402020, 'Active'),
(129, 'Allowance for Impairment - Welfare Goods for Distribution', 66, 10402022, 'Active'),
(130, 'Drugs and Medicines for Distribution', 66, 10402030, 'Active'),
(131, ' Allowance for Impairment - Drugs and Medicines for Distribution ', 66, 10402032, 'Active'),
(132, 'Medical, Dental and Laboratory Supplies for Distribution', 66, 10402040, 'Active'),
(133, 'Allowance for Impairment - Medical, Dental and Laboratory Supplies for Distribution', 66, 10402042, 'Active'),
(134, 'Agricultural and Marine Supplies for Distribution', 66, 10402050, 'Active'),
(135, 'Allowance for Impairment - Agricultural and Marine Supplies for Distribution ', 66, 10402052, 'Active'),
(136, 'Agricultural Produce for Distribution', 66, 10402060, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `financial_subcategories`
--

CREATE TABLE `financial_subcategories` (
  `subcategory_id` int(255) NOT NULL,
  `subcategory_name` varchar(255) NOT NULL,
  `category_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `financial_subcategories`
--

INSERT INTO `financial_subcategories` (`subcategory_id`, `subcategory_name`, `category_id`) VALUES
(1, 'Cash and Cash Equivalents', 1),
(7, 'Investments', 1),
(8, 'Receivables', 1),
(9, 'Inventories', 1),
(10, 'Property, Plant and Equipment', 1),
(11, 'Investment Property', 1),
(12, 'Biological Assets', 1),
(13, 'Intangible Assets', 1),
(14, 'Other Assets', 1);

-- --------------------------------------------------------

--
-- Table structure for table `financial_submodules`
--

CREATE TABLE `financial_submodules` (
  `submodule_id` int(255) NOT NULL,
  `submodule_name` varchar(255) NOT NULL,
  `subcategory_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `financial_submodules`
--

INSERT INTO `financial_submodules` (`submodule_id`, `submodule_name`, `subcategory_id`) VALUES
(3, 'Cash on Hand', 1),
(49, 'Semi-Expendable Furniture, Fixtures and Books', 9),
(50, 'Cash in Bank - Foreign Currency', 1),
(51, 'Treasury/Agency Cash Accounts', 1),
(52, 'Cash Equivalents', 1),
(53, 'Financial Assets at Fair Value Through Surplus or Deficit', 7),
(54, 'Financial Assets - Held to Maturity', 7),
(55, 'Financial Assets - Others', 7),
(56, 'Investments in Government-Owned or Controlled Corporations ', 7),
(57, 'Investments in Joint Ventures', 7),
(58, 'Investments in Associates', 7),
(59, 'Investments in Time Deposits', 7),
(60, 'Loans and Receivable Accounts', 8),
(61, 'Lease Receivable ', 8),
(62, 'Inter-Agency Receivables', 8),
(63, 'Intra-Agency Receivables', 8),
(64, 'Other Receivables ', 8),
(65, 'Inventory Held for Sale', 9),
(66, 'Inventory Held for Distribution', 9),
(67, 'Inventory Held for Manufacturing', 9),
(68, 'Inventory Held for Consumption', 9),
(69, 'Semi-Expendable Machinery and Equipment ', 9),
(71, 'Land and Buildings', 11),
(72, 'Construction in Progress', 11),
(73, 'Land', 10),
(74, 'Land Improvements', 10),
(75, 'Infrastructure Assets', 10),
(76, 'Buildings and Other Structures', 10),
(77, 'Machinery and Equipment', 10),
(78, 'Transportation Equipment', 10),
(79, 'Furniture, Fixtures and Books', 10),
(80, 'Leased Assets', 10),
(81, 'Leased Assets - Improvements', 10),
(82, 'Construction in Progress', 10),
(83, 'Heritage Assets', 10),
(84, 'Service Concession Tangible Assets', 10),
(85, 'Bearer Trees, Plants and Crops', 10),
(86, 'Construction in Progress', 10),
(87, 'Other Property, Plant and Equipment', 10),
(88, 'Bearer Biological Assets', 12),
(89, 'Consumable Biological Assets', 12),
(90, 'Service Concession - Intangible Assets', 13),
(91, 'Development in Progress', 13),
(92, 'Advances', 14),
(93, 'Prepayments', 14),
(94, 'Deposits', 14),
(95, 'Deferred Charges', 14),
(96, 'Cash in Bank - Local Currency', 1);

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
(3, '0001_01_01_000002_create_jobs_table', 1);

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
('sQdzZfYDOV2Tg4kL5JCwyiT7QSSxinKramkMl2Wg', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOFdWM3BJUDJZSDd6R21HMEVkRzYzSndRdURUMDlkd0pvZ0RyQTFyeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3QvZHRpL3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740639700);

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
-- Indexes for dumped tables
--

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `financial_categories`
--
ALTER TABLE `financial_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `financial_object_code`
--
ALTER TABLE `financial_object_code`
  ADD PRIMARY KEY (`object_code_id`),
  ADD KEY `submodule_id` (`submodule_id`);

--
-- Indexes for table `financial_subcategories`
--
ALTER TABLE `financial_subcategories`
  ADD PRIMARY KEY (`subcategory_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `financial_submodules`
--
ALTER TABLE `financial_submodules`
  ADD PRIMARY KEY (`submodule_id`),
  ADD KEY `subcategory_id` (`subcategory_id`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `financial_categories`
--
ALTER TABLE `financial_categories`
  MODIFY `category_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50606001;

--
-- AUTO_INCREMENT for table `financial_object_code`
--
ALTER TABLE `financial_object_code`
  MODIFY `object_code_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `financial_subcategories`
--
ALTER TABLE `financial_subcategories`
  MODIFY `subcategory_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `financial_submodules`
--
ALTER TABLE `financial_submodules`
  MODIFY `submodule_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `financial_object_code`
--
ALTER TABLE `financial_object_code`
  ADD CONSTRAINT `financial_object_code_ibfk_1` FOREIGN KEY (`submodule_id`) REFERENCES `financial_submodules` (`submodule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `financial_subcategories`
--
ALTER TABLE `financial_subcategories`
  ADD CONSTRAINT `financial_subcategories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `financial_categories` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `financial_submodules`
--
ALTER TABLE `financial_submodules`
  ADD CONSTRAINT `financial_submodules_ibfk_2` FOREIGN KEY (`subcategory_id`) REFERENCES `financial_subcategories` (`subcategory_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
