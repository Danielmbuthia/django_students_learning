-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Apr 19, 2017 at 01:50 PM
-- Server version: 5.7.16-0ubuntu0.16.04.1
-- PHP Version: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `somo`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add group', 4, 'add_group'),
(11, 'Can change group', 4, 'change_group'),
(12, 'Can delete group', 4, 'delete_group'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add system', 7, 'add_system'),
(20, 'Can change system', 7, 'change_system'),
(21, 'Can delete system', 7, 'delete_system'),
(22, 'Can add book', 8, 'add_book'),
(23, 'Can change book', 8, 'change_book'),
(24, 'Can delete book', 8, 'delete_book'),
(25, 'Can add my request', 9, 'add_myrequest'),
(26, 'Can change my request', 9, 'change_myrequest'),
(27, 'Can delete my request', 9, 'delete_myrequest'),
(28, 'Can add course', 10, 'add_course'),
(29, 'Can change course', 10, 'change_course'),
(30, 'Can delete course', 10, 'delete_course'),
(31, 'Can add user account', 11, 'add_useraccount'),
(32, 'Can change user account', 11, 'change_useraccount'),
(33, 'Can delete user account', 11, 'delete_useraccount'),
(34, 'Can add my download', 12, 'add_mydownload'),
(35, 'Can change my download', 12, 'change_mydownload'),
(36, 'Can delete my download', 12, 'delete_mydownload');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(2, 'pbkdf2_sha256$36000$vTJRASMWauxK$rKAMHfBm1wHdwSINTlI8CSRFjBID4JnVZjYhtx7GKYU=', '2017-04-19 00:21:59.357090', 0, 'test@test.com', '', '', 'test@test.com', 0, 1, '2017-04-17 13:20:35.311061'),
(3, 'pbkdf2_sha256$36000$0E20pdgauyLV$o4B6ff29guDzjc+vc0FCoJY3qgUanSV+uSTkVeJfndU=', '2017-04-19 00:15:40.467866', 0, 'test2', 'dan', 'mbuthia', 'test2@test.com', 1, 1, '2017-04-17 13:35:14.370813'),
(4, 'pbkdf2_sha256$36000$W20URNOT2FbH$AZEtv1G6cCWtAcjF9oJ6Zu5XC5JfVudJn82l4DkTTfs=', '2017-04-19 08:42:16.762439', 0, 'teste', 'mbuthia', 'mbuthia', 'test3@test.com', 0, 1, '2017-04-17 17:19:51.639063'),
(5, 'pbkdf2_sha256$36000$I4bToL5axvhd$sq8ZKzJvzKE1qlaFgS30UjiXQeWHnsHxcBU2E0XL0Fk=', '2017-04-19 02:14:25.601258', 1, 'dan', '', '', 'dambuthia@gmail.com', 1, 1, '2017-04-19 02:13:37.644274');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(4, 'auth', 'group'),
(2, 'auth', 'permission'),
(3, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(8, 'somoapp', 'book'),
(10, 'somoapp', 'course'),
(12, 'somoapp', 'mydownload'),
(9, 'somoapp', 'myrequest'),
(7, 'somoapp', 'system'),
(11, 'somoapp', 'useraccount');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2017-04-17 08:48:10.577336'),
(2, 'auth', '0001_initial', '2017-04-17 08:48:25.460146'),
(3, 'admin', '0001_initial', '2017-04-17 08:48:28.669749'),
(4, 'admin', '0002_logentry_remove_auto_add', '2017-04-17 08:48:28.956548'),
(5, 'contenttypes', '0002_remove_content_type_name', '2017-04-17 08:48:30.827664'),
(6, 'auth', '0002_alter_permission_name_max_length', '2017-04-17 08:48:31.145350'),
(7, 'auth', '0003_alter_user_email_max_length', '2017-04-17 08:48:31.573887'),
(8, 'auth', '0004_alter_user_username_opts', '2017-04-17 08:48:31.795445'),
(9, 'auth', '0005_alter_user_last_login_null', '2017-04-17 08:48:32.619830'),
(10, 'auth', '0006_require_contenttypes_0002', '2017-04-17 08:48:32.791985'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2017-04-17 08:48:32.936292'),
(12, 'auth', '0008_alter_user_username_max_length', '2017-04-17 08:48:33.456622'),
(13, 'sessions', '0001_initial', '2017-04-17 08:48:34.386554'),
(14, 'somoapp', '0001_initial', '2017-04-17 09:24:04.626927'),
(15, 'somoapp', '0002_auto_20170419_0110', '2017-04-19 01:10:56.573133');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('gbrwmw0wydk5yjasyzlsah87x30svgxz', 'MjdjNWJjZDVlNjM4NWM0OGQ5OTNhYWVhMjU1N2Y5YzdkYzAyZmE5Njp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg5MDBkNGQxZDlhYjIwYTFkNmVhM2IzY2E5NzZhZDlmNjE4NjQ0NmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-05-03 08:42:16.861778');

-- --------------------------------------------------------

--
-- Table structure for table `somoapp_book`
--

CREATE TABLE `somoapp_book` (
  `id` int(11) NOT NULL,
  `isbn` varchar(80) NOT NULL,
  `title` varchar(80) NOT NULL,
  `description` varchar(80) NOT NULL,
  `year` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `unit` varchar(80) NOT NULL,
  `size` varchar(80) NOT NULL,
  `file_type` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `somoapp_book`
--

INSERT INTO `somoapp_book` (`id`, `isbn`, `title`, `description`, `year`, `semester`, `unit`, `size`, `file_type`) VALUES
(1, '213d', 'pyhton', 'django', 2, 1, 'django', '', 'pdf'),
(3, '', 'python', 'django', 3, 2, '', '', ''),
(5, '', 'php', 'laravel', 1, 2, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `somoapp_book_course`
--

CREATE TABLE `somoapp_book_course` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `somoapp_book_course`
--

INSERT INTO `somoapp_book_course` (`id`, `book_id`, `course_id`) VALUES
(2, 1, 1),
(3, 3, 2),
(4, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `somoapp_book_user`
--

CREATE TABLE `somoapp_book_user` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `somoapp_book_user`
--

INSERT INTO `somoapp_book_user` (`id`, `book_id`, `user_id`) VALUES
(2, 1, 2),
(1, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `somoapp_course`
--

CREATE TABLE `somoapp_course` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `somoapp_course`
--

INSERT INTO `somoapp_course` (`id`, `name`) VALUES
(1, 'Computer Science'),
(2, 'Mathematic and Computer Science');

-- --------------------------------------------------------

--
-- Table structure for table `somoapp_mydownload`
--

CREATE TABLE `somoapp_mydownload` (
  `id` int(11) NOT NULL,
  `date` varchar(80) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `somoapp_mydownload_book`
--

CREATE TABLE `somoapp_mydownload_book` (
  `id` int(11) NOT NULL,
  `mydownload_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `somoapp_myrequest`
--

CREATE TABLE `somoapp_myrequest` (
  `id` int(11) NOT NULL,
  `date` varchar(80) NOT NULL,
  `title` varchar(80) NOT NULL,
  `description` varchar(80) NOT NULL,
  `year` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `unit` varchar(80) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `somoapp_myrequest_course`
--

CREATE TABLE `somoapp_myrequest_course` (
  `id` int(11) NOT NULL,
  `myrequest_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `somoapp_system`
--

CREATE TABLE `somoapp_system` (
  `id` int(11) NOT NULL,
  `app_name` varchar(80) NOT NULL,
  `app_desc` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `somoapp_useraccount`
--

CREATE TABLE `somoapp_useraccount` (
  `id` int(11) NOT NULL,
  `profile` int(11) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `reg` varchar(50) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `somoapp_useraccount_course_id`
--

CREATE TABLE `somoapp_useraccount_course_id` (
  `id` int(11) NOT NULL,
  `useraccount_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `somoapp_useraccount_user`
--

CREATE TABLE `somoapp_useraccount_user` (
  `id` int(11) NOT NULL,
  `useraccount_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `somoapp_book`
--
ALTER TABLE `somoapp_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `somoapp_book_course`
--
ALTER TABLE `somoapp_book_course`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `somoapp_book_course_book_id_course_id_37b80608_uniq` (`book_id`,`course_id`),
  ADD KEY `somoapp_book_course_course_id_de6341df_fk_somoapp_course_id` (`course_id`);

--
-- Indexes for table `somoapp_book_user`
--
ALTER TABLE `somoapp_book_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `somoapp_book_user_book_id_user_id_bec53de7_uniq` (`book_id`,`user_id`),
  ADD KEY `somoapp_book_user_user_id_90e7d789_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `somoapp_course`
--
ALTER TABLE `somoapp_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `somoapp_mydownload`
--
ALTER TABLE `somoapp_mydownload`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `somoapp_mydownload_book`
--
ALTER TABLE `somoapp_mydownload_book`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `somoapp_mydownload_book_mydownload_id_book_id_87929a7c_uniq` (`mydownload_id`,`book_id`),
  ADD KEY `somoapp_mydownload_book_book_id_876f9f29_fk_somoapp_book_id` (`book_id`);

--
-- Indexes for table `somoapp_myrequest`
--
ALTER TABLE `somoapp_myrequest`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `somoapp_myrequest_course`
--
ALTER TABLE `somoapp_myrequest_course`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `somoapp_myrequest_course_myrequest_id_course_id_be0cd34e_uniq` (`myrequest_id`,`course_id`),
  ADD KEY `somoapp_myrequest_course_course_id_2ee44e99_fk_somoapp_course_id` (`course_id`);

--
-- Indexes for table `somoapp_system`
--
ALTER TABLE `somoapp_system`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `somoapp_useraccount`
--
ALTER TABLE `somoapp_useraccount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `somoapp_useraccount_course_id`
--
ALTER TABLE `somoapp_useraccount_course_id`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `somoapp_useraccount_cour_useraccount_id_course_id_644a518c_uniq` (`useraccount_id`,`course_id`),
  ADD KEY `somoapp_useraccount__course_id_9e5ce5f5_fk_somoapp_c` (`course_id`);

--
-- Indexes for table `somoapp_useraccount_user`
--
ALTER TABLE `somoapp_useraccount_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `somoapp_useraccount_user_useraccount_id_user_id_b908ae8f_uniq` (`useraccount_id`,`user_id`),
  ADD KEY `somoapp_useraccount_user_user_id_e233957d_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `somoapp_book`
--
ALTER TABLE `somoapp_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `somoapp_book_course`
--
ALTER TABLE `somoapp_book_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `somoapp_book_user`
--
ALTER TABLE `somoapp_book_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `somoapp_course`
--
ALTER TABLE `somoapp_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `somoapp_mydownload`
--
ALTER TABLE `somoapp_mydownload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `somoapp_mydownload_book`
--
ALTER TABLE `somoapp_mydownload_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `somoapp_myrequest`
--
ALTER TABLE `somoapp_myrequest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `somoapp_myrequest_course`
--
ALTER TABLE `somoapp_myrequest_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `somoapp_system`
--
ALTER TABLE `somoapp_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `somoapp_useraccount`
--
ALTER TABLE `somoapp_useraccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `somoapp_useraccount_course_id`
--
ALTER TABLE `somoapp_useraccount_course_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `somoapp_useraccount_user`
--
ALTER TABLE `somoapp_useraccount_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

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

--
-- Constraints for table `somoapp_book_course`
--
ALTER TABLE `somoapp_book_course`
  ADD CONSTRAINT `somoapp_book_course_book_id_47dba37a_fk_somoapp_book_id` FOREIGN KEY (`book_id`) REFERENCES `somoapp_book` (`id`),
  ADD CONSTRAINT `somoapp_book_course_course_id_de6341df_fk_somoapp_course_id` FOREIGN KEY (`course_id`) REFERENCES `somoapp_course` (`id`);

--
-- Constraints for table `somoapp_book_user`
--
ALTER TABLE `somoapp_book_user`
  ADD CONSTRAINT `somoapp_book_user_book_id_025a4518_fk_somoapp_book_id` FOREIGN KEY (`book_id`) REFERENCES `somoapp_book` (`id`),
  ADD CONSTRAINT `somoapp_book_user_user_id_90e7d789_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `somoapp_mydownload`
--
ALTER TABLE `somoapp_mydownload`
  ADD CONSTRAINT `somoapp_mydownload_user_id_d383a5fa_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `somoapp_mydownload_book`
--
ALTER TABLE `somoapp_mydownload_book`
  ADD CONSTRAINT `somoapp_mydownload_b_mydownload_id_ae217f1c_fk_somoapp_m` FOREIGN KEY (`mydownload_id`) REFERENCES `somoapp_mydownload` (`id`),
  ADD CONSTRAINT `somoapp_mydownload_book_book_id_876f9f29_fk_somoapp_book_id` FOREIGN KEY (`book_id`) REFERENCES `somoapp_book` (`id`);

--
-- Constraints for table `somoapp_myrequest`
--
ALTER TABLE `somoapp_myrequest`
  ADD CONSTRAINT `somoapp_myrequest_user_id_7f51f756_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `somoapp_myrequest_course`
--
ALTER TABLE `somoapp_myrequest_course`
  ADD CONSTRAINT `somoapp_myrequest_co_myrequest_id_28725b0f_fk_somoapp_m` FOREIGN KEY (`myrequest_id`) REFERENCES `somoapp_myrequest` (`id`),
  ADD CONSTRAINT `somoapp_myrequest_course_course_id_2ee44e99_fk_somoapp_course_id` FOREIGN KEY (`course_id`) REFERENCES `somoapp_course` (`id`);

--
-- Constraints for table `somoapp_useraccount_course_id`
--
ALTER TABLE `somoapp_useraccount_course_id`
  ADD CONSTRAINT `somoapp_useraccount__course_id_9e5ce5f5_fk_somoapp_c` FOREIGN KEY (`course_id`) REFERENCES `somoapp_course` (`id`),
  ADD CONSTRAINT `somoapp_useraccount__useraccount_id_d170d393_fk_somoapp_u` FOREIGN KEY (`useraccount_id`) REFERENCES `somoapp_useraccount` (`id`);

--
-- Constraints for table `somoapp_useraccount_user`
--
ALTER TABLE `somoapp_useraccount_user`
  ADD CONSTRAINT `somoapp_useraccount__useraccount_id_919ceb26_fk_somoapp_u` FOREIGN KEY (`useraccount_id`) REFERENCES `somoapp_useraccount` (`id`),
  ADD CONSTRAINT `somoapp_useraccount_user_user_id_e233957d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
