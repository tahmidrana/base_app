-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2018 at 07:45 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `base_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `aauth_groups`
--

DROP TABLE IF EXISTS `aauth_groups`;
CREATE TABLE `aauth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `definition` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `aauth_groups`
--

TRUNCATE TABLE `aauth_groups`;
--
-- Dumping data for table `aauth_groups`
--

INSERT INTO `aauth_groups` (`id`, `name`, `definition`) VALUES
(1, 'Super Admin', 'Super admin'),
(2, 'Admin', NULL),
(3, 'Member', '');

-- --------------------------------------------------------

--
-- Table structure for table `aauth_group_to_group`
--

DROP TABLE IF EXISTS `aauth_group_to_group`;
CREATE TABLE `aauth_group_to_group` (
  `group_id` int(11) UNSIGNED NOT NULL,
  `subgroup_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `aauth_group_to_group`
--

TRUNCATE TABLE `aauth_group_to_group`;
-- --------------------------------------------------------

--
-- Table structure for table `aauth_login_attempts`
--

DROP TABLE IF EXISTS `aauth_login_attempts`;
CREATE TABLE `aauth_login_attempts` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(39) DEFAULT '0',
  `timestamp` datetime DEFAULT NULL,
  `login_attempts` tinyint(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `aauth_login_attempts`
--

TRUNCATE TABLE `aauth_login_attempts`;
-- --------------------------------------------------------

--
-- Table structure for table `aauth_perms`
--

DROP TABLE IF EXISTS `aauth_perms`;
CREATE TABLE `aauth_perms` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `definition` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `aauth_perms`
--

TRUNCATE TABLE `aauth_perms`;
--
-- Dumping data for table `aauth_perms`
--

INSERT INTO `aauth_perms` (`id`, `name`, `definition`) VALUES
(1, 'create_blog', '');

-- --------------------------------------------------------

--
-- Table structure for table `aauth_perm_to_group`
--

DROP TABLE IF EXISTS `aauth_perm_to_group`;
CREATE TABLE `aauth_perm_to_group` (
  `perm_id` int(11) UNSIGNED NOT NULL,
  `group_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `aauth_perm_to_group`
--

TRUNCATE TABLE `aauth_perm_to_group`;
-- --------------------------------------------------------

--
-- Table structure for table `aauth_perm_to_user`
--

DROP TABLE IF EXISTS `aauth_perm_to_user`;
CREATE TABLE `aauth_perm_to_user` (
  `perm_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `aauth_perm_to_user`
--

TRUNCATE TABLE `aauth_perm_to_user`;
-- --------------------------------------------------------

--
-- Table structure for table `aauth_pms`
--

DROP TABLE IF EXISTS `aauth_pms`;
CREATE TABLE `aauth_pms` (
  `id` int(11) UNSIGNED NOT NULL,
  `sender_id` int(11) UNSIGNED NOT NULL,
  `receiver_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text,
  `date_sent` datetime DEFAULT NULL,
  `date_read` datetime DEFAULT NULL,
  `pm_deleted_sender` int(1) DEFAULT NULL,
  `pm_deleted_receiver` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `aauth_pms`
--

TRUNCATE TABLE `aauth_pms`;
-- --------------------------------------------------------

--
-- Table structure for table `aauth_users`
--

DROP TABLE IF EXISTS `aauth_users`;
CREATE TABLE `aauth_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(64) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `banned` tinyint(1) DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `forgot_exp` text,
  `remember_time` datetime DEFAULT NULL,
  `remember_exp` text,
  `verification_code` text,
  `totp_secret` varchar(16) DEFAULT NULL,
  `ip_address` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `aauth_users`
--

TRUNCATE TABLE `aauth_users`;
--
-- Dumping data for table `aauth_users`
--

INSERT INTO `aauth_users` (`id`, `email`, `pass`, `username`, `banned`, `last_login`, `last_activity`, `date_created`, `forgot_exp`, `remember_time`, `remember_exp`, `verification_code`, `totp_secret`, `ip_address`) VALUES
(1, 'admin@example.com', 'dd5073c93fb477a167fd69072e95455834acd93df8fed41a2c468c45b394bfe3', 'Admin', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(2, 'tahmid@example.com', '85331630fca2b67c234b6b57e7affc9403d62cf186989c71675956e3ccc2a20d', 'tahmidrana', 0, NULL, NULL, '2018-04-09 13:18:30', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aauth_user_to_group`
--

DROP TABLE IF EXISTS `aauth_user_to_group`;
CREATE TABLE `aauth_user_to_group` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `aauth_user_to_group`
--

TRUNCATE TABLE `aauth_user_to_group`;
-- --------------------------------------------------------

--
-- Table structure for table `aauth_user_variables`
--

DROP TABLE IF EXISTS `aauth_user_variables`;
CREATE TABLE `aauth_user_variables` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `data_key` varchar(100) NOT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `aauth_user_variables`
--

TRUNCATE TABLE `aauth_user_variables`;
-- --------------------------------------------------------

--
-- Table structure for table `tbl_app_log`
--

DROP TABLE IF EXISTS `tbl_app_log`;
CREATE TABLE `tbl_app_log` (
  `ser_id` int(11) NOT NULL,
  `log_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'created by user: from session',
  `log_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_on` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `tbl_app_log`
--

TRUNCATE TABLE `tbl_app_log`;
-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

DROP TABLE IF EXISTS `tbl_login`;
CREATE TABLE `tbl_login` (
  `login_id` bigint(20) NOT NULL,
  `password` varchar(200) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `change_pass_status` int(1) NOT NULL DEFAULT '0',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tbl_user_user_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `tbl_login`
--

TRUNCATE TABLE `tbl_login`;
--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`login_id`, `password`, `status`, `change_pass_status`, `created_on`, `last_login`, `tbl_user_user_id`) VALUES
(1, '40be4e59b9a2a2b5dffb918c0e86b3d7', 1, 1, '2018-06-21 05:05:28', '2018-09-03 01:21:41', 'super_admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

DROP TABLE IF EXISTS `tbl_menu`;
CREATE TABLE `tbl_menu` (
  `ser_id` int(8) NOT NULL,
  `menu_label` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `menu_url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_icon` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_menu` int(8) DEFAULT NULL,
  `menu_level` int(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `tbl_menu`
--

TRUNCATE TABLE `tbl_menu`;
--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`ser_id`, `menu_label`, `menu_url`, `menu_icon`, `parent_menu`, `menu_level`) VALUES
(2, 'Admin Console', NULL, 'fa-cog', NULL, 10),
(3, 'Group', 'auth/group', NULL, 2, 3),
(6, 'Menu', 'auth/menu', NULL, 2, 0),
(8, 'Permission', 'auth/permission', NULL, 2, 0),
(21, 'Home', 'home', 'fa-home', NULL, 0),
(24, 'Admin', NULL, NULL, 23, 0),
(25, 'Subscriber', NULL, NULL, 23, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu_to_group`
--

DROP TABLE IF EXISTS `tbl_menu_to_group`;
CREATE TABLE `tbl_menu_to_group` (
  `ser_id` int(10) NOT NULL,
  `group_id` int(11) UNSIGNED NOT NULL,
  `menu_id` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `tbl_menu_to_group`
--

TRUNCATE TABLE `tbl_menu_to_group`;
-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `user_id` varchar(20) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `gender` int(1) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `status` int(1) NOT NULL,
  `tbl_organization_organization_id` varchar(100) NOT NULL,
  `tbl_upazilla_upazilla_id` int(5) NOT NULL,
  `group_id` int(11) NOT NULL,
  `user_code` varchar(10) NOT NULL,
  `parent_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `tbl_user`
--

TRUNCATE TABLE `tbl_user`;
--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `gender`, `phone_number`, `email`, `designation`, `address`, `status`, `tbl_organization_organization_id`, `tbl_upazilla_upazilla_id`, `group_id`, `user_code`, `parent_code`) VALUES
('admin', 'Admin', 1, '01111111111', 'admin@admin.com', 'Admin', '', 1, 'HRLS_BRAC', 0, 2, '', ''),
('super_admin', 'Super Admin', 1, '01111111111', 'admin@admin.com', 'admin', '', 1, 'HRLS_BRAC', 0, 1, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aauth_groups`
--
ALTER TABLE `aauth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aauth_group_to_group`
--
ALTER TABLE `aauth_group_to_group`
  ADD PRIMARY KEY (`group_id`,`subgroup_id`);

--
-- Indexes for table `aauth_login_attempts`
--
ALTER TABLE `aauth_login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aauth_perms`
--
ALTER TABLE `aauth_perms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aauth_perm_to_group`
--
ALTER TABLE `aauth_perm_to_group`
  ADD PRIMARY KEY (`perm_id`,`group_id`);

--
-- Indexes for table `aauth_perm_to_user`
--
ALTER TABLE `aauth_perm_to_user`
  ADD PRIMARY KEY (`perm_id`,`user_id`);

--
-- Indexes for table `aauth_pms`
--
ALTER TABLE `aauth_pms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `full_index` (`id`,`sender_id`,`receiver_id`,`date_read`);

--
-- Indexes for table `aauth_users`
--
ALTER TABLE `aauth_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aauth_user_to_group`
--
ALTER TABLE `aauth_user_to_group`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `aauth_user_variables`
--
ALTER TABLE `aauth_user_variables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_index` (`user_id`);

--
-- Indexes for table `tbl_app_log`
--
ALTER TABLE `tbl_app_log`
  ADD PRIMARY KEY (`ser_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`login_id`),
  ADD KEY `tbl_user_user_id` (`tbl_user_user_id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`ser_id`),
  ADD KEY `fk_tbl_menu_parent_menu_id` (`parent_menu`);

--
-- Indexes for table `tbl_menu_to_group`
--
ALTER TABLE `tbl_menu_to_group`
  ADD PRIMARY KEY (`ser_id`),
  ADD KEY `fk_aauth_groups_id` (`group_id`),
  ADD KEY `fk_tbl_menu_ser_id` (`menu_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `parent_code` (`parent_code`),
  ADD KEY `user_code` (`user_code`),
  ADD KEY `aauth_groups_id` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aauth_groups`
--
ALTER TABLE `aauth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `aauth_login_attempts`
--
ALTER TABLE `aauth_login_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aauth_perms`
--
ALTER TABLE `aauth_perms`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `aauth_pms`
--
ALTER TABLE `aauth_pms`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aauth_users`
--
ALTER TABLE `aauth_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `aauth_user_variables`
--
ALTER TABLE `aauth_user_variables`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_app_log`
--
ALTER TABLE `tbl_app_log`
  MODIFY `ser_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `login_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `ser_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_menu_to_group`
--
ALTER TABLE `tbl_menu_to_group`
  MODIFY `ser_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_menu_to_group`
--
ALTER TABLE `tbl_menu_to_group`
  ADD CONSTRAINT `fk_aauth_groups_id` FOREIGN KEY (`group_id`) REFERENCES `aauth_groups` (`id`),
  ADD CONSTRAINT `fk_tbl_menu_ser_id` FOREIGN KEY (`menu_id`) REFERENCES `tbl_menu` (`ser_id`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
