-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2023 at 05:04 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myfirst`
--

-- --------------------------------------------------------

--
-- Table structure for table `app01_abc`
--

CREATE TABLE `app01_abc` (
  `id` bigint(20) NOT NULL,
  `num_id` bigint(20) NOT NULL,
  `total` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `pid_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app01_abc`
--

INSERT INTO `app01_abc` (`id`, `num_id`, `total`, `status`, `pid_id`) VALUES
(7, 1, '399', 'pending', 3),
(8, 1, '799', 'pending', 4);

-- --------------------------------------------------------

--
-- Table structure for table `app01_ad_product`
--

CREATE TABLE `app01_ad_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `offer` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app01_ad_product`
--

INSERT INTO `app01_ad_product` (`id`, `name`, `price`, `offer`, `image`, `category`) VALUES
(3, 'Yellow top', '650', '399', 'product/portrait-blonde-woman-vintage-yellow-outfit-with-hat-black-background-vertical-p_ZSdlE2V.jpg', 'Women\'s Wear'),
(4, 'Red maxi dress', '1299', '799', 'product/young-woman-beautiful-red-dress.jpg', 'Women\'s Wear');

-- --------------------------------------------------------

--
-- Table structure for table `app01_ad_reg`
--

CREATE TABLE `app01_ad_reg` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app01_ad_reg`
--

INSERT INTO `app01_ad_reg` (`id`, `name`, `email`, `password`, `phone`) VALUES
(1, 'rafna', 'abc@gmail', '1234', '80987'),
(2, 'abcd', 'asdf@gmk', 'fgdh', '81234'),
(3, 'test', 'test@12', '7658', '78687');

-- --------------------------------------------------------

--
-- Table structure for table `app01_cart`
--

CREATE TABLE `app01_cart` (
  `id` bigint(20) NOT NULL,
  `total` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `pid_id` bigint(20) NOT NULL,
  `uid_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app01_u_reg`
--

CREATE TABLE `app01_u_reg` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app01_u_reg`
--

INSERT INTO `app01_u_reg` (`id`, `name`, `email`, `password`, `phone`) VALUES
(1, 'rafna', 'rafna@abc', '1234', '2255466'),
(2, 'abcd', 'abc@gmail', '8786', '0977699'),
(3, 'test', 'test@gdf', 'asdf', '78687'),
(4, 'leo', 'leo@123', '0987', '98564');

-- --------------------------------------------------------

--
-- Table structure for table `app02_cart`
--

CREATE TABLE `app02_cart` (
  `id` bigint(20) NOT NULL,
  `total` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `pid_id` bigint(20) NOT NULL,
  `uid_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app02_cart`
--

INSERT INTO `app02_cart` (`id`, `total`, `status`, `pid_id`, `uid_id`) VALUES
(1, '350', 'pending', 1, 1),
(2, '350', 'pending', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `app02_payment`
--

CREATE TABLE `app02_payment` (
  `id` bigint(20) NOT NULL,
  `date` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `uid_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app02_tab02`
--

CREATE TABLE `app02_tab02` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app02_tab02`
--

INSERT INTO `app02_tab02` (`id`, `name`, `email`, `password`, `phone`) VALUES
(1, 'Rafna', 'rafna@abc', '1234', '12345'),
(2, 'abc', 'abc123@def', '4567', '12345678'),
(3, 'test', 'scew@d.pl', '0987', '234-44-434'),
(4, 'leo', 'leo@abc', 'asdf', '674655');

-- --------------------------------------------------------

--
-- Table structure for table `app02_tab03`
--

CREATE TABLE `app02_tab03` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app02_tab03`
--

INSERT INTO `app02_tab03` (`id`, `name`, `email`, `phone`, `password`) VALUES
(1, 'Rafna', 'rafna@abc', '12345678', '1234'),
(2, 'abc', 'abc123@def', '234-44-434', '09878'),
(3, 'leo', 'scew@d.pl', '78945', 'asdf'),
(4, 'test', 'test@gmail', '98765', 'lkjh');

-- --------------------------------------------------------

--
-- Table structure for table `app02_tab04`
--

CREATE TABLE `app02_tab04` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `offer` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app02_tab04`
--

INSERT INTO `app02_tab04` (`id`, `name`, `price`, `offer`, `image`, `category`) VALUES
(1, 'green dress', '499', '350', 'product/fashion-photo-young-magnificent-woman-green-dress.jpg', ''),
(2, 'women dress', '550', '350', 'product/fashion-model-with-beautiful-face-perfect-body-wearing-trendy-dress-holding-brow_n7RMiDc.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add u_reg', 7, 'add_u_reg'),
(26, 'Can change u_reg', 7, 'change_u_reg'),
(27, 'Can delete u_reg', 7, 'delete_u_reg'),
(28, 'Can view u_reg', 7, 'view_u_reg'),
(29, 'Can add ad_product', 8, 'add_ad_product'),
(30, 'Can change ad_product', 8, 'change_ad_product'),
(31, 'Can delete ad_product', 8, 'delete_ad_product'),
(32, 'Can view ad_product', 8, 'view_ad_product'),
(33, 'Can add ad_reg', 9, 'add_ad_reg'),
(34, 'Can change ad_reg', 9, 'change_ad_reg'),
(35, 'Can delete ad_reg', 9, 'delete_ad_reg'),
(36, 'Can view ad_reg', 9, 'view_ad_reg'),
(37, 'Can add cart', 10, 'add_cart'),
(38, 'Can change cart', 10, 'change_cart'),
(39, 'Can delete cart', 10, 'delete_cart'),
(40, 'Can view cart', 10, 'view_cart'),
(41, 'Can add tab02', 11, 'add_tab02'),
(42, 'Can change tab02', 11, 'change_tab02'),
(43, 'Can delete tab02', 11, 'delete_tab02'),
(44, 'Can view tab02', 11, 'view_tab02'),
(45, 'Can add tab03', 12, 'add_tab03'),
(46, 'Can change tab03', 12, 'change_tab03'),
(47, 'Can delete tab03', 12, 'delete_tab03'),
(48, 'Can view tab03', 12, 'view_tab03'),
(49, 'Can add tab04', 13, 'add_tab04'),
(50, 'Can change tab04', 13, 'change_tab04'),
(51, 'Can delete tab04', 13, 'delete_tab04'),
(52, 'Can view tab04', 13, 'view_tab04'),
(53, 'Can add cart', 14, 'add_cart'),
(54, 'Can change cart', 14, 'change_cart'),
(55, 'Can delete cart', 14, 'delete_cart'),
(56, 'Can view cart', 14, 'view_cart'),
(57, 'Can add payment', 15, 'add_payment'),
(58, 'Can change payment', 15, 'change_payment'),
(59, 'Can delete payment', 15, 'delete_payment'),
(60, 'Can view payment', 15, 'view_payment'),
(61, 'Can add abc', 16, 'add_abc'),
(62, 'Can change abc', 16, 'change_abc'),
(63, 'Can delete abc', 16, 'delete_abc'),
(64, 'Can view abc', 16, 'view_abc');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(16, 'app01', 'abc'),
(8, 'app01', 'ad_product'),
(9, 'app01', 'ad_reg'),
(10, 'app01', 'cart'),
(7, 'app01', 'u_reg'),
(14, 'app02', 'cart'),
(15, 'app02', 'payment'),
(11, 'app02', 'tab02'),
(12, 'app02', 'tab03'),
(13, 'app02', 'tab04'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-01-17 03:50:36.287129'),
(2, 'auth', '0001_initial', '2023-01-17 03:50:40.249175'),
(3, 'admin', '0001_initial', '2023-01-17 03:50:42.249097'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-01-17 03:50:42.327206'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-01-17 03:50:42.374071'),
(6, 'app01', '0001_initial', '2023-01-17 03:50:42.530283'),
(7, 'app01', '0002_cont_tb', '2023-01-17 03:50:42.561522'),
(8, 'app01', '0003_u_reg_delete_cont_tb_rename_fname_mytab_name_and_more', '2023-01-17 03:50:42.702114'),
(9, 'app01', '0004_delete_mytab', '2023-01-17 03:50:42.780223'),
(10, 'contenttypes', '0002_remove_content_type_name', '2023-01-17 03:50:43.155298'),
(11, 'auth', '0002_alter_permission_name_max_length', '2023-01-17 03:50:43.623815'),
(12, 'auth', '0003_alter_user_email_max_length', '2023-01-17 03:50:43.733860'),
(13, 'auth', '0004_alter_user_username_opts', '2023-01-17 03:50:43.811834'),
(14, 'auth', '0005_alter_user_last_login_null', '2023-01-17 03:50:44.155504'),
(15, 'auth', '0006_require_contenttypes_0002', '2023-01-17 03:50:44.186788'),
(16, 'auth', '0007_alter_validators_add_error_messages', '2023-01-17 03:50:44.233608'),
(17, 'auth', '0008_alter_user_username_max_length', '2023-01-17 03:50:44.514799'),
(18, 'auth', '0009_alter_user_last_name_max_length', '2023-01-17 03:50:44.827913'),
(19, 'auth', '0010_alter_group_name_max_length', '2023-01-17 03:50:44.968632'),
(20, 'auth', '0011_update_proxy_permissions', '2023-01-17 03:50:45.030949'),
(21, 'auth', '0012_alter_user_first_name_max_length', '2023-01-17 03:50:45.162299'),
(22, 'sessions', '0001_initial', '2023-01-17 03:50:45.396617'),
(23, 'app01', '0005_ad_product', '2023-01-17 05:57:53.101569'),
(24, 'app01', '0006_ad_reg', '2023-01-18 03:52:59.276385'),
(25, 'app01', '0007_cart', '2023-01-24 06:13:52.493320'),
(26, 'app02', '0001_initial', '2023-01-30 04:42:20.851787'),
(27, 'app02', '0002_tab03', '2023-01-30 04:42:21.023736'),
(28, 'app02', '0003_tab04', '2023-01-30 04:42:21.133008'),
(29, 'app02', '0004_alter_tab04_image', '2023-01-30 04:42:21.133008'),
(30, 'app02', '0005_cart', '2023-01-30 04:42:22.418523'),
(31, 'app02', '0006_payment', '2023-01-30 04:42:22.733031'),
(32, 'app01', '0008_abc', '2023-02-01 06:01:49.345403');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('r528gfsr2kc30ylr3sblph6i96kgpe6y', 'eyJteWlkIjoxLCJteW5hbWUiOiJyYWZuYSJ9:1pN5mg:q9Sh74sArSnjlGMsTp8B8_2uRMoGhwH9tAHuhKLP7g0', '2023-02-15 05:35:50.041722'),
('ygayp5962es0t76giyltgyaj8icvc0be', 'eyJteWlkIjoxLCJteW5hbWUiOiJyYWZuYSJ9:1pI1Ti:VMAqUiRK666Y9QVeSthdqCbCqJFfG0sThy5dUwnV29A', '2023-02-01 05:59:18.452511');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app01_abc`
--
ALTER TABLE `app01_abc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app01_abc_pid_id_47dabc8f_fk_app01_ad_product_id` (`pid_id`),
  ADD KEY `app01_abc_num_id_91fc02dc` (`num_id`);

--
-- Indexes for table `app01_ad_product`
--
ALTER TABLE `app01_ad_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app01_ad_reg`
--
ALTER TABLE `app01_ad_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app01_cart`
--
ALTER TABLE `app01_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app01_cart_pid_id_87b9f4d6_fk_app01_ad_product_id` (`pid_id`),
  ADD KEY `app01_cart_uid_id_64565014_fk_app01_u_reg_id` (`uid_id`);

--
-- Indexes for table `app01_u_reg`
--
ALTER TABLE `app01_u_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app02_cart`
--
ALTER TABLE `app02_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app02_cart_pid_id_d61ded94_fk_app02_tab04_id` (`pid_id`),
  ADD KEY `app02_cart_uid_id_42baecbd_fk_app02_tab02_id` (`uid_id`);

--
-- Indexes for table `app02_payment`
--
ALTER TABLE `app02_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app02_payment_uid_id_d175de86_fk_app02_tab02_id` (`uid_id`);

--
-- Indexes for table `app02_tab02`
--
ALTER TABLE `app02_tab02`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app02_tab03`
--
ALTER TABLE `app02_tab03`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app02_tab04`
--
ALTER TABLE `app02_tab04`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app01_abc`
--
ALTER TABLE `app01_abc`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `app01_ad_product`
--
ALTER TABLE `app01_ad_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app01_ad_reg`
--
ALTER TABLE `app01_ad_reg`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `app01_cart`
--
ALTER TABLE `app01_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app01_u_reg`
--
ALTER TABLE `app01_u_reg`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `app02_cart`
--
ALTER TABLE `app02_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `app02_payment`
--
ALTER TABLE `app02_payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app02_tab02`
--
ALTER TABLE `app02_tab02`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app02_tab03`
--
ALTER TABLE `app02_tab03`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app02_tab04`
--
ALTER TABLE `app02_tab04`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app01_abc`
--
ALTER TABLE `app01_abc`
  ADD CONSTRAINT `app01_abc_pid_id_47dabc8f_fk_app01_ad_product_id` FOREIGN KEY (`pid_id`) REFERENCES `app01_ad_product` (`id`);

--
-- Constraints for table `app01_cart`
--
ALTER TABLE `app01_cart`
  ADD CONSTRAINT `app01_cart_pid_id_87b9f4d6_fk_app01_ad_product_id` FOREIGN KEY (`pid_id`) REFERENCES `app01_ad_product` (`id`),
  ADD CONSTRAINT `app01_cart_uid_id_64565014_fk_app01_u_reg_id` FOREIGN KEY (`uid_id`) REFERENCES `app01_u_reg` (`id`);

--
-- Constraints for table `app02_cart`
--
ALTER TABLE `app02_cart`
  ADD CONSTRAINT `app02_cart_pid_id_d61ded94_fk_app02_tab04_id` FOREIGN KEY (`pid_id`) REFERENCES `app02_tab04` (`id`),
  ADD CONSTRAINT `app02_cart_uid_id_42baecbd_fk_app02_tab02_id` FOREIGN KEY (`uid_id`) REFERENCES `app02_tab02` (`id`);

--
-- Constraints for table `app02_payment`
--
ALTER TABLE `app02_payment`
  ADD CONSTRAINT `app02_payment_uid_id_d175de86_fk_app02_tab02_id` FOREIGN KEY (`uid_id`) REFERENCES `app02_tab02` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
