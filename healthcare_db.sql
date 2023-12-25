-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Des 2023 pada 06.13
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthcare_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `auth_permission`
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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add medical', 7, 'add_medical'),
(26, 'Can change medical', 7, 'change_medical'),
(27, 'Can delete medical', 7, 'delete_medical'),
(28, 'Can view medical', 7, 'view_medical'),
(29, 'Can add ment', 8, 'add_ment'),
(30, 'Can change ment', 8, 'change_ment'),
(31, 'Can delete ment', 8, 'delete_ment'),
(32, 'Can view ment', 8, 'view_ment'),
(33, 'Can add profile', 9, 'add_profile'),
(34, 'Can change profile', 9, 'change_profile'),
(35, 'Can delete profile', 9, 'delete_profile'),
(36, 'Can view profile', 9, 'view_profile');

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_medical`
--

CREATE TABLE `core_medical` (
  `id` int(11) NOT NULL,
  `s1` varchar(200) NOT NULL,
  `s2` varchar(200) NOT NULL,
  `s3` varchar(200) NOT NULL,
  `s4` varchar(200) NOT NULL,
  `s5` varchar(200) NOT NULL,
  `disease` varchar(200) NOT NULL,
  `medicine` varchar(200) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `patient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_ment`
--

CREATE TABLE `core_ment` (
  `id` int(11) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `time` varchar(200) DEFAULT NULL,
  `ment_day` datetime(6) DEFAULT NULL,
  `created_on` datetime(6) NOT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `medical_id` int(11) DEFAULT NULL,
  `patient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `core_ment`
--

INSERT INTO `core_ment` (`id`, `approved`, `time`, `ment_day`, `created_on`, `doctor_id`, `medical_id`, `patient_id`) VALUES
(1, 1, '12', '2022-12-12 00:00:00.000000', '2023-11-20 17:35:35.948896', 2, 1, 3),
(2, 1, '12', '2022-01-31 00:00:00.000000', '2023-11-20 17:35:36.902259', 2, 2, 3),
(3, 1, '12', '2022-12-12 00:00:00.000000', '2023-11-20 17:43:03.787158', 2, 12, 3),
(4, 1, '12', '2022-12-12 00:00:00.000000', '2023-11-20 17:45:31.303048', 2, 13, 3),
(5, 1, '12', '2022-12-12 00:00:00.000000', '2023-11-20 17:53:44.114238', 2, 3, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_profile`
--

CREATE TABLE `core_profile` (
  `id` int(11) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `birth_date` date NOT NULL,
  `region` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `core_profile`
--

INSERT INTO `core_profile` (`id`, `avatar`, `birth_date`, `region`, `gender`, `country`, `user_id`) VALUES
(1, 'profile/avator.png', '1999-01-19', 'Bekasi', 'Male', 'Indonesia', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_user`
--

CREATE TABLE `core_user` (
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
  `date_joined` datetime(6) NOT NULL,
  `is_patient` tinyint(1) NOT NULL,
  `is_doctor` tinyint(1) NOT NULL,
  `phonenumber` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `core_user`
--

INSERT INTO `core_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `is_patient`, `is_doctor`, `phonenumber`) VALUES
(1, 'pbkdf2_sha256$260000$9zRaSKiGCRsehmKLwNUa6R$f0QfBr/PLGmsQZqkWiLPbdr5IEn8XBYYKDo9339PuX8=', '2023-12-24 18:12:48.860611', 1, 'admin', '', '', 'unsada@ac.id', 1, 1, '2023-11-20 17:17:40.613448', 0, 0, NULL),
(2, 'pbkdf2_sha256$260000$Gi0Ofu3TNj3gGLjz8qlT80$rJDuhB4Ay0IUwRAnThXegvOglZSG5srjRNk2GpP+F3U=', '2023-12-24 19:08:59.947458', 0, 'dr_richard', 'Richard', 'Wu', 'richard_wu@gmail.com', 0, 1, '2023-11-20 17:18:40.000000', 0, 1, '+6285782001465'),
(3, 'pbkdf2_sha256$260000$ymeNj5r7ao2E4zAoQmIdRv$BJBwYVTqD1V2wwZiczdkQqmUv6tWLcl+cFFFVIp55+U=', '2023-12-24 19:11:08.352965', 0, 'irfan', 'Irfan Divi', 'Zianka', 'irfandiviz@gmail.com', 0, 1, '2023-11-20 17:18:53.000000', 1, 0, '+6285782001468');

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_user_groups`
--

CREATE TABLE `core_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_user_user_permissions`
--

CREATE TABLE `core_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_admin_log`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-11-20 17:19:25.698572', '2', 'dr_richard', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Is patient\", \"Is doctor\", \"Phonenumber\"]}}]', 6, 1),
(2, '2023-11-20 17:19:42.268943', '3', 'irfan', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Phonenumber\"]}}]', 6, 1),
(3, '2023-11-28 01:44:56.921842', '1', 'Indonesia', 2, '[{\"changed\": {\"fields\": [\"Country\"]}}]', 9, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(7, 'core', 'medical'),
(8, 'core', 'ment'),
(9, 'core', 'profile'),
(6, 'core', 'user'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-11-20 17:12:42.384373'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-11-20 17:12:43.180662'),
(3, 'auth', '0001_initial', '2023-11-20 17:12:47.212140'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-11-20 17:12:48.398914'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-11-20 17:12:48.443039'),
(6, 'auth', '0004_alter_user_username_opts', '2023-11-20 17:12:48.481176'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-11-20 17:12:48.520784'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-11-20 17:12:48.554880'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-11-20 17:12:48.598817'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-11-20 17:12:48.646997'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-11-20 17:12:48.686418'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-11-20 17:12:48.853711'),
(13, 'auth', '0011_update_proxy_permissions', '2023-11-20 17:12:48.897558'),
(14, 'core', '0001_initial', '2023-11-20 17:12:54.295260'),
(15, 'admin', '0001_initial', '2023-11-20 17:12:55.963108'),
(16, 'admin', '0002_logentry_remove_auto_add', '2023-11-20 17:12:55.998098'),
(17, 'admin', '0003_logentry_add_action_flag_choices', '2023-11-20 17:12:56.111382'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-11-20 17:12:56.159331'),
(19, 'core', '0002_medical', '2023-11-20 17:12:58.282185'),
(20, 'core', '0003_ment', '2023-11-20 17:13:01.849288'),
(21, 'core', '0004_profile', '2023-11-20 17:13:03.038307'),
(22, 'core', '0005_alter_user_first_name', '2023-11-20 17:13:03.186716'),
(23, 'sessions', '0001_initial', '2023-11-20 17:13:04.087111');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('hieynehns1sb49kucxu1drcpbof6vuzk', '.eJxVjMsOwiAQRf-FtSHAUB4u3fsNhGFAqgaS0q6M_65NutDtPefcFwtxW2vYRl7CTOzMgJ1-N4zpkdsO6B7brfPU27rMyHeFH3Twa6f8vBzu30GNo35rJTQ5kNpKYbxJDi2IVCyZQoCQ5ORtdt7ECaWV5ErOGqEUNEaDQiXY-wPF0zd7:1rHTsS:nFOqqb55mq4NFTpj5XNhNX9ijDPLhzTkBQJMoSU5Udk', '2024-01-07 19:11:08.424358'),
('sewen9iamnc6pspudw5xrlftqyds7kty', '.eJxVjMsOwiAQRf-FtSHAUB4u3fsNhGFAqgaS0q6M_65NutDtPefcFwtxW2vYRl7CTOzMgJ1-N4zpkdsO6B7brfPU27rMyHeFH3Twa6f8vBzu30GNo35rJTQ5kNpKYbxJDi2IVCyZQoCQ5ORtdt7ECaWV5ErOGqEUNEaDQiXY-wPF0zd7:1r7nAB:EN43286Bb3oKlYw37WRRZM-BYYUFxNJ5Y74-wizSYX8', '2023-12-12 01:45:23.412099'),
('sr75q0o7xisgpvrq3pxx5n9xhks1z9ns', '.eJxVjDsOwjAQBe_iGlnrjb1aU9JzBmv9AQeQI8VJFXF3iJQC2jczb1NB1qWGtZc5jFmdFarT7xYlPUvbQX5Iu086TW2Zx6h3RR-06-uUy-tyuH8HVXr91obAJMssjDeDGAtHiNZ4GiB7NIyWIbMnZgdESODER2OBIIEdvFPvD56LNYs:1r58Iq:C_zaXyLH-u1U66roQh0KXbyDlpY0kN7z79a3imsWd9k', '2023-12-04 17:43:20.220677');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indeks untuk tabel `core_medical`
--
ALTER TABLE `core_medical`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_medical_doctor_id_3d50ad37_fk_core_user_id` (`doctor_id`),
  ADD KEY `core_medical_patient_id_5344c821_fk_core_user_id` (`patient_id`);

--
-- Indeks untuk tabel `core_ment`
--
ALTER TABLE `core_ment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_ment_doctor_id_60a15865_fk_core_user_id` (`doctor_id`),
  ADD KEY `core_ment_medical_id_f2161916_fk_core_medical_id` (`medical_id`),
  ADD KEY `core_ment_patient_id_d91dbfa4_fk_core_user_id` (`patient_id`);

--
-- Indeks untuk tabel `core_profile`
--
ALTER TABLE `core_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `core_user`
--
ALTER TABLE `core_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `core_user_groups`
--
ALTER TABLE `core_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_user_groups_user_id_group_id_c82fcad1_uniq` (`user_id`,`group_id`),
  ADD KEY `core_user_groups_group_id_fe8c697f_fk_auth_group_id` (`group_id`);

--
-- Indeks untuk tabel `core_user_user_permissions`
--
ALTER TABLE `core_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_user_user_permissions_user_id_permission_id_73ea0daa_uniq` (`user_id`,`permission_id`),
  ADD KEY `core_user_user_permi_permission_id_35ccf601_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_core_user_id` (`user_id`);

--
-- Indeks untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indeks untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `core_medical`
--
ALTER TABLE `core_medical`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `core_ment`
--
ALTER TABLE `core_ment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `core_profile`
--
ALTER TABLE `core_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `core_user`
--
ALTER TABLE `core_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `core_user_groups`
--
ALTER TABLE `core_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `core_user_user_permissions`
--
ALTER TABLE `core_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ketidakleluasaan untuk tabel `core_medical`
--
ALTER TABLE `core_medical`
  ADD CONSTRAINT `core_medical_doctor_id_3d50ad37_fk_core_user_id` FOREIGN KEY (`doctor_id`) REFERENCES `core_user` (`id`),
  ADD CONSTRAINT `core_medical_patient_id_5344c821_fk_core_user_id` FOREIGN KEY (`patient_id`) REFERENCES `core_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `core_ment`
--
ALTER TABLE `core_ment`
  ADD CONSTRAINT `core_ment_doctor_id_60a15865_fk_core_user_id` FOREIGN KEY (`doctor_id`) REFERENCES `core_user` (`id`),
  ADD CONSTRAINT `core_ment_medical_id_f2161916_fk_core_medical_id` FOREIGN KEY (`medical_id`) REFERENCES `core_medical` (`id`),
  ADD CONSTRAINT `core_ment_patient_id_d91dbfa4_fk_core_user_id` FOREIGN KEY (`patient_id`) REFERENCES `core_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `core_profile`
--
ALTER TABLE `core_profile`
  ADD CONSTRAINT `core_profile_user_id_bf8ada58_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `core_user_groups`
--
ALTER TABLE `core_user_groups`
  ADD CONSTRAINT `core_user_groups_group_id_fe8c697f_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `core_user_groups_user_id_70b4d9b8_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `core_user_user_permissions`
--
ALTER TABLE `core_user_user_permissions`
  ADD CONSTRAINT `core_user_user_permi_permission_id_35ccf601_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `core_user_user_permissions_user_id_085123d3_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
