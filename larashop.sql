-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2019 at 04:23 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larashop`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `stock` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` enum('PUBLISH','DRAFT') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `slug`, `description`, `author`, `publisher`, `cover`, `price`, `views`, `stock`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Hujan', 'hujan', 'Berawal dari pertemuan Lail dengan Elijah di sebuah ruangan terapi. Lail menemui Elijah hanya untuk satu tujuan: ingin menghapus ingatannya tentang hujan. Lail sangat ingin melupakan hujan, baginya hujan selalu turun dimasa tergelapnya', 'Tere Liye', 'grame', 'book-covers/MIAIHIqqdMe0YtEBup7FSwY5nZpVgRSknUt6FfqL.jpeg', 90000.00, 0, 50, 'PUBLISH', 1, NULL, NULL, '2019-02-17 03:10:36', '2019-02-17 03:10:36', NULL),
(2, 'Sang Ahli Kimia', 'sang-ahli-kimia', 'Sebagai mantan agen, ia menyimpan rahasia tergelap agensi yang membuatnya menjadi incaran pemerintah Amerika. Mereka ingin ia mati. Ia hidup dalam pelarian selama hampir tiga tahun. Tak pernah menetap di tempat yang sama dan selalu bergonta-ganti nama. Satu-satunya orang yang ia percaya telah mereka bunuh.', 'Stephenie Meyer', 'elex kominfodo', 'book-covers/ktJRcKvSLfKurX6VVENs6R6mCe0D4tcPKZjPiuSR.jpeg', 90000.00, 0, 50, 'PUBLISH', 1, NULL, NULL, '2019-02-17 03:12:45', '2019-02-17 03:12:45', NULL),
(3, 'Seventeen Once Again', 'seventeen-once-again', 'Raka akhirnya membalas perasaan Briana. Ya, Raka, ketua OSIS yang digandrungi banyak siswi di sekolah. Raka yang juga pacar Tara, sahabat baiknya. Eh, bukankah itu artinya Briana merebut pacar sahabatnya sendiri? Ah, entahlah! Saat study tour, Raka berjanji akan membuat hubungan mereka jelas.', 'Handi Namire', 'pendurung', 'book-covers/wT6fiNKSpROLOL0Hcjx7kIDOPrr44GcvEm1piuge.jpeg', 80000.00, 0, 92, 'PUBLISH', 1, NULL, NULL, '2019-02-17 03:16:44', '2019-02-17 03:16:44', NULL),
(4, 'Bad Boys 2', 'bad-boys-2', 'Memang lagi jaman ya, anak SMA jaman sekarang main geng-geng-an? Itu-lah yang sempat terlintas di benak Sophie Wyna, salah satu murid SMA Emerald. Sophie bersahabat karib dengan Ivy sejak SMP, yang tak lain tak bukan adalah adik dari Troy Cornelius, ketua geng SMA Vilmaris–musuh bebuyutan geng SMA Emerald.', 'Nathalia Theodora', 'erlangga', 'book-covers/Bk7cKk0urqKQYNZLaQkUh2a2JJGPggzs3jqGCTqH.jpeg', 20000.00, 0, 87, 'PUBLISH', 1, NULL, NULL, '2019-02-17 03:18:10', '2019-02-17 03:18:10', NULL),
(5, 'LET ME BE WITH YOU', 'let-me-be-with-you', 'Tidak tahan karena terus didesak menikah oleh keluarganya, Kinanti akhirnya menerima ide gila Rivan Arya, sahabat kakaknya yang telah ia kenal sejak SMA. Mereka akan menerima perjodohan yang diatur tersebut, menikah, dan tinggal bersama', 'Ria N. Badaria', 'pendurung', 'book-covers/sJEf9QMlvjrMbbXKnZhPHdvyFVV1hakrhKhOAp60.jpeg', 35000.00, 0, 25, 'PUBLISH', 1, NULL, NULL, '2019-02-17 03:24:46', '2019-02-17 03:24:46', NULL),
(6, 'Complicated Thing Called Love', 'complicated-thing-called-love', 'Awalnya, alur cerita ini sedikit membingungkan. Tak jelas mana hulu mana muara. Tapi jangan menyerah. Percayalah, ada titik ketika semua keping puzzle itu bertemu. Seperti cinta.', 'Irene Dyah', 'elex kominfo', 'book-covers/krj7ymWl8pKq53xTV2gih4aiAjNstrZzVxjmEHdz.jpeg', 98000.00, 0, 80, 'PUBLISH', 1, NULL, NULL, '2019-02-17 03:27:29', '2019-02-17 03:27:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE `book_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`id`, `book_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 2, 4, NULL, NULL),
(4, 3, 1, NULL, NULL),
(5, 3, 2, NULL, NULL),
(6, 4, 1, NULL, NULL),
(7, 4, 3, NULL, NULL),
(8, 5, 3, NULL, NULL),
(9, 5, 2, NULL, NULL),
(10, 6, 1, NULL, NULL),
(11, 6, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_order`
--

CREATE TABLE `book_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'berisi nama file image saja tanpa path',
  `created_by` int(11) NOT NULL,
  `update_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_by`, `update_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'drama', 'drama', 'category_images/MfQsUwdpFJXnarHh28900JXyKLMA5L8jOzQ4JXNx.png', 1, NULL, NULL, NULL, '2019-02-17 03:06:59', '2019-02-17 03:06:59'),
(2, 'romance', 'romance', 'category_images/jHfJWlvmMcVC7dFo3DznKLfuyomVOw1Te9NGbTW2.png', 1, NULL, NULL, NULL, '2019-02-17 03:07:09', '2019-02-17 03:07:09'),
(3, 'family', 'family', 'category_images/VK2xChFCeiXVXR3mLnQ4a88M98XBz9aMFS9bJEPG.png', 1, NULL, NULL, NULL, '2019-02-17 03:07:26', '2019-02-17 03:07:26'),
(4, 'petualangan', 'petualangan', 'category_images/BzcVTnGD3VQVnRpFqOxLD00HXHpq5lzxLRaypDxj.png', 1, NULL, NULL, NULL, '2019-02-17 03:07:40', '2019-02-17 03:07:40'),
(5, 'politik', 'politik', 'category_images/HQ0UC552uzjGdbe6NojmUbuSxWGEXH20GFLmTvv5.png', 1, NULL, NULL, NULL, '2019-02-17 03:08:12', '2019-02-17 03:08:12');

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
(3, '2019_02_08_135601_penyesuaian_table_users', 1),
(4, '2019_02_13_012330_create_table_categories', 1),
(5, '2019_02_14_050028_create_books_table', 1),
(6, '2019_02_14_050346_create_books_category_table', 1),
(7, '2019_02_16_150616_create_orders_table', 1),
(8, '2019_02_16_151249_create_book_order_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `total_price` double(8,2) UNSIGNED NOT NULL,
  `invoice_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('SUBMIT','PROCESS','FINISH','CANCEL') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`, `roles`, `address`, `phone`, `avatar`, `status`) VALUES
(1, 'Site Administrator', 'administrator@larashop.com', NULL, '$2y$10$ubxAT7Ii2q2F5VY5IJfabOY1edJMqGHvkIa/l6MnM5V/ebP53gd66', 'HesZ8idH6ozHinXwZjOsdlgbgVub2kQeE5vAOrYwBbXsJIY0HutqvZUONhRk', '2019-02-17 02:51:04', '2019-02-17 02:51:04', 'administrator', '[\"admin\"]', 'Sarmili, Bintaro, Tanggerang selatan', '081255035199', 'saat-ini-tidak-ada-file.png', 'ACTIVE'),
(2, 'aliffia rosita', 'aliffia@mail.com', NULL, '$2y$10$IRruBi0yo5li4p.Q42T7ke90urVM2IPtNVX6HQ6saAWoxRJcWwPfO', NULL, '2019-02-17 03:02:17', '2019-02-17 03:02:17', 'aliffia', '[\"ADMIN\",\"STAFF\"]', 'jl pramuka samarinda utara', '0258523652', 'avatars/eVn00MUlZVImzRwlFfignvk8gMTYagx74UithvFN.png', 'ACTIVE'),
(3, 'gandhi dwi laksono', 'gandhidwi@mail.com', NULL, '$2y$10$gZhsSwGT2ztaCV6jI/wTROQR.koVXDUTueksleySC3fZ.KnYxUD4G', NULL, '2019-02-17 03:03:15', '2019-02-17 03:03:15', 'gandhidwi', '[\"ADMIN\",\"STAFF\"]', 'jl kadrie oning samarinda utara', '0023651478', 'avatars/yS8UTCsYijk0ZtENKiOPYwlmitAImLQY6V6wfiNj.jpeg', 'ACTIVE'),
(4, 'firdaus', 'dauzic@mail.com', NULL, '$2y$10$YCopiO1bi93ZbtJIR4QaNeEdE2DdgzQGFesjiFaOOO6I7wdFiZLVq', NULL, '2019-02-17 03:05:46', '2019-02-17 03:05:46', 'dauzic', '[\"STAFF\"]', 'jl panjaitan no 15 kalimantar barat daya', '26547895785', 'avatars/6f7Ocede090ox9DP0yXxRACOsr8GMLZ1ZKQMLo33.png', 'ACTIVE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_category_book_id_foreign` (`book_id`),
  ADD KEY `book_category_category_id_foreign` (`category_id`);

--
-- Indexes for table `book_order`
--
ALTER TABLE `book_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_order_order_id_foreign` (`order_id`),
  ADD KEY `book_order_book_id_foreign` (`book_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `book_category`
--
ALTER TABLE `book_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `book_order`
--
ALTER TABLE `book_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_category`
--
ALTER TABLE `book_category`
  ADD CONSTRAINT `book_category_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `book_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `book_order`
--
ALTER TABLE `book_order`
  ADD CONSTRAINT `book_order_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `book_order_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
