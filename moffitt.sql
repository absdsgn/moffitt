-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 23, 2018 at 01:37 AM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `moffitt`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-06-11 21:53:56', '2018-06-11 21:53:56', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_actions`
--

CREATE TABLE `wp_nf3_actions` (
  `id` int(11) NOT NULL,
  `title` longtext,
  `key` longtext,
  `type` longtext,
  `active` tinyint(1) DEFAULT '1',
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_actions`
--

INSERT INTO `wp_nf3_actions` (`id`, `title`, `key`, `type`, `active`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, '', '', 'save', 1, 1, '2018-07-19 02:05:13', '2018-07-18 22:05:13'),
(2, '', '', 'email', 1, 1, '2018-07-19 02:05:13', '2018-07-18 22:05:13'),
(3, '', '', 'email', 1, 1, '2018-07-19 02:05:13', '2018-07-18 22:05:13'),
(4, '', '', 'successmessage', 1, 1, '2018-07-19 02:05:13', '2018-07-18 22:05:13');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_action_meta`
--

CREATE TABLE `wp_nf3_action_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_action_meta`
--

INSERT INTO `wp_nf3_action_meta` (`id`, `parent_id`, `key`, `value`) VALUES
(1, 1, 'label', 'Store Submission'),
(2, 1, 'objectType', 'Action'),
(3, 1, 'objectDomain', 'actions'),
(4, 1, 'editActive', ''),
(5, 1, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(6, 1, 'payment_gateways', ''),
(7, 1, 'payment_total', '0'),
(8, 1, 'tag', ''),
(9, 1, 'to', '{wp:admin_email}'),
(10, 1, 'email_subject', 'Ninja Forms Submission'),
(11, 1, 'email_message', '{fields_table}'),
(12, 1, 'from_name', ''),
(13, 1, 'from_address', ''),
(14, 1, 'reply_to', ''),
(15, 1, 'email_format', 'html'),
(16, 1, 'cc', ''),
(17, 1, 'bcc', ''),
(18, 1, 'attach_csv', ''),
(19, 1, 'redirect_url', ''),
(20, 1, 'email_message_plain', ''),
(21, 2, 'label', 'Email Confirmation'),
(22, 2, 'to', '{field:email}'),
(23, 2, 'subject', 'This is an email action.'),
(24, 2, 'message', 'Hello, Ninja Forms!'),
(25, 2, 'objectType', 'Action'),
(26, 2, 'objectDomain', 'actions'),
(27, 2, 'editActive', ''),
(28, 2, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(29, 2, 'payment_gateways', ''),
(30, 2, 'payment_total', '0'),
(31, 2, 'tag', ''),
(32, 2, 'email_subject', 'Submission Confirmation '),
(33, 2, 'email_message', '<p>{all_fields_table}<br></p>'),
(34, 2, 'from_name', ''),
(35, 2, 'from_address', ''),
(36, 2, 'reply_to', ''),
(37, 2, 'email_format', 'html'),
(38, 2, 'cc', ''),
(39, 2, 'bcc', ''),
(40, 2, 'attach_csv', ''),
(41, 2, 'email_message_plain', ''),
(42, 3, 'objectType', 'Action'),
(43, 3, 'objectDomain', 'actions'),
(44, 3, 'editActive', ''),
(45, 3, 'label', 'Email Notification'),
(46, 3, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(47, 3, 'payment_gateways', ''),
(48, 3, 'payment_total', '0'),
(49, 3, 'tag', ''),
(50, 3, 'to', '{system:admin_email}'),
(51, 3, 'email_subject', 'New message from {field:name}'),
(52, 3, 'email_message', '<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>'),
(53, 3, 'from_name', ''),
(54, 3, 'from_address', ''),
(55, 3, 'reply_to', '{field:email}'),
(56, 3, 'email_format', 'html'),
(57, 3, 'cc', ''),
(58, 3, 'bcc', ''),
(59, 3, 'attach_csv', '0'),
(60, 3, 'email_message_plain', ''),
(61, 4, 'label', 'Success Message'),
(62, 4, 'message', 'Thank you {field:name} for filling out my form!'),
(63, 4, 'objectType', 'Action'),
(64, 4, 'objectDomain', 'actions'),
(65, 4, 'editActive', ''),
(66, 4, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(67, 4, 'payment_gateways', ''),
(68, 4, 'payment_total', '0'),
(69, 4, 'tag', ''),
(70, 4, 'to', '{wp:admin_email}'),
(71, 4, 'email_subject', 'Ninja Forms Submission'),
(72, 4, 'email_message', '{fields_table}'),
(73, 4, 'from_name', ''),
(74, 4, 'from_address', ''),
(75, 4, 'reply_to', ''),
(76, 4, 'email_format', 'html'),
(77, 4, 'cc', ''),
(78, 4, 'bcc', ''),
(79, 4, 'attach_csv', ''),
(80, 4, 'redirect_url', ''),
(81, 4, 'success_msg', '<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>'),
(82, 4, 'email_message_plain', ''),
(83, 1, 'message', 'This action adds users to WordPress\' personal data export tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.'),
(84, 1, 'submitter_email', 'email'),
(85, 1, 'fields-save-toggle', 'save_all'),
(86, 1, 'exception_fields', 'a:0:{}'),
(87, 1, 'set_subs_to_expire', '0'),
(88, 1, 'subs_expire_time', '90'),
(89, 1, 'drawerDisabled', ''),
(90, 3, 'message', 'This action adds users to WordPress\' personal data delete tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.'),
(91, 4, 'submitter_email', ''),
(92, 4, 'fields-save-toggle', 'save_all'),
(93, 4, 'exception_fields', 'a:0:{}'),
(94, 4, 'set_subs_to_expire', '0'),
(95, 4, 'subs_expire_time', '90');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_chunks`
--

CREATE TABLE `wp_nf3_chunks` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_fields`
--

CREATE TABLE `wp_nf3_fields` (
  `id` int(11) NOT NULL,
  `label` longtext,
  `key` longtext,
  `type` longtext,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_fields`
--

INSERT INTO `wp_nf3_fields` (`id`, `label`, `key`, `type`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Name', 'name', 'textbox', 1, '2018-07-18 22:11:00', '2018-07-18 22:05:12'),
(2, 'Email', 'email', 'email', 1, '2018-07-18 22:11:00', '2018-07-18 22:05:12'),
(3, 'Message', 'message', 'textarea', 1, '2018-07-18 22:11:00', '2018-07-18 22:05:12'),
(4, 'SUBMIT', 'submit_1531951763615', 'submit', 1, '2018-07-18 22:11:00', '2018-07-18 22:05:12'),
(5, 'Phone', 'phone_1531951543741', 'phone', 1, '2018-07-18 22:11:00', NULL),
(6, 'Radio List', 'listradio_1531951551157', 'listradio', 1, '2018-07-18 22:11:00', NULL),
(7, 'Single Line Text', 'textbox_1531951585965', 'textbox', 1, '2018-07-18 22:11:00', NULL),
(8, 'Single Line Text', 'textbox_1531951588636', 'textbox', 1, '2018-07-18 22:11:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_field_meta`
--

CREATE TABLE `wp_nf3_field_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_field_meta`
--

INSERT INTO `wp_nf3_field_meta` (`id`, `parent_id`, `key`, `value`) VALUES
(1, 1, 'objectType', 'Field'),
(2, 1, 'objectDomain', 'fields'),
(3, 1, 'editActive', ''),
(4, 1, 'order', '1'),
(5, 1, 'label', 'Name'),
(6, 1, 'key', 'name'),
(7, 1, 'type', 'textbox'),
(8, 1, 'created_at', '2018-07-18 22:05:12'),
(9, 1, 'label_pos', 'hidden'),
(10, 1, 'required', '1'),
(11, 1, 'placeholder', 'NAME'),
(12, 1, 'default', ''),
(13, 1, 'wrapper_class', ''),
(14, 1, 'element_class', ''),
(15, 1, 'container_class', ''),
(16, 1, 'input_limit', ''),
(17, 1, 'input_limit_type', 'characters'),
(18, 1, 'input_limit_msg', 'Character(s) left'),
(19, 1, 'manual_key', ''),
(20, 1, 'disable_input', ''),
(21, 1, 'admin_label', ''),
(22, 1, 'help_text', ''),
(23, 1, 'desc_text', ''),
(24, 1, 'disable_browser_autocomplete', ''),
(25, 1, 'mask', ''),
(26, 1, 'custom_mask', ''),
(27, 1, 'wrap_styles_background-color', ''),
(28, 1, 'wrap_styles_border', ''),
(29, 1, 'wrap_styles_border-style', ''),
(30, 1, 'wrap_styles_border-color', ''),
(31, 1, 'wrap_styles_color', ''),
(32, 1, 'wrap_styles_height', ''),
(33, 1, 'wrap_styles_width', ''),
(34, 1, 'wrap_styles_font-size', ''),
(35, 1, 'wrap_styles_margin', ''),
(36, 1, 'wrap_styles_padding', ''),
(37, 1, 'wrap_styles_display', ''),
(38, 1, 'wrap_styles_float', ''),
(39, 1, 'wrap_styles_show_advanced_css', '0'),
(40, 1, 'wrap_styles_advanced', ''),
(41, 1, 'label_styles_background-color', ''),
(42, 1, 'label_styles_border', ''),
(43, 1, 'label_styles_border-style', ''),
(44, 1, 'label_styles_border-color', ''),
(45, 1, 'label_styles_color', ''),
(46, 1, 'label_styles_height', ''),
(47, 1, 'label_styles_width', ''),
(48, 1, 'label_styles_font-size', ''),
(49, 1, 'label_styles_margin', ''),
(50, 1, 'label_styles_padding', ''),
(51, 1, 'label_styles_display', ''),
(52, 1, 'label_styles_float', ''),
(53, 1, 'label_styles_show_advanced_css', '0'),
(54, 1, 'label_styles_advanced', ''),
(55, 1, 'element_styles_background-color', ''),
(56, 1, 'element_styles_border', ''),
(57, 1, 'element_styles_border-style', ''),
(58, 1, 'element_styles_border-color', ''),
(59, 1, 'element_styles_color', ''),
(60, 1, 'element_styles_height', ''),
(61, 1, 'element_styles_width', ''),
(62, 1, 'element_styles_font-size', ''),
(63, 1, 'element_styles_margin', ''),
(64, 1, 'element_styles_padding', ''),
(65, 1, 'element_styles_display', ''),
(66, 1, 'element_styles_float', ''),
(67, 1, 'element_styles_show_advanced_css', '0'),
(68, 1, 'element_styles_advanced', ''),
(69, 1, 'cellcid', 'c3277'),
(70, 1, 'custom_name_attribute', ''),
(71, 1, 'personally_identifiable', '0'),
(72, 1, 'drawerDisabled', ''),
(73, 2, 'objectType', 'Field'),
(74, 2, 'objectDomain', 'fields'),
(75, 2, 'editActive', ''),
(76, 2, 'order', '2'),
(77, 2, 'label', 'Email'),
(78, 2, 'key', 'email'),
(79, 2, 'type', 'email'),
(80, 2, 'created_at', '2018-07-18 22:05:12'),
(81, 2, 'label_pos', 'hidden'),
(82, 2, 'required', '1'),
(83, 2, 'placeholder', 'EMAIL'),
(84, 2, 'default', ''),
(85, 2, 'wrapper_class', ''),
(86, 2, 'element_class', ''),
(87, 2, 'container_class', ''),
(88, 2, 'admin_label', ''),
(89, 2, 'help_text', ''),
(90, 2, 'desc_text', ''),
(91, 2, 'wrap_styles_background-color', ''),
(92, 2, 'wrap_styles_border', ''),
(93, 2, 'wrap_styles_border-style', ''),
(94, 2, 'wrap_styles_border-color', ''),
(95, 2, 'wrap_styles_color', ''),
(96, 2, 'wrap_styles_height', ''),
(97, 2, 'wrap_styles_width', ''),
(98, 2, 'wrap_styles_font-size', ''),
(99, 2, 'wrap_styles_margin', ''),
(100, 2, 'wrap_styles_padding', ''),
(101, 2, 'wrap_styles_display', ''),
(102, 2, 'wrap_styles_float', ''),
(103, 2, 'wrap_styles_show_advanced_css', '0'),
(104, 2, 'wrap_styles_advanced', ''),
(105, 2, 'label_styles_background-color', ''),
(106, 2, 'label_styles_border', ''),
(107, 2, 'label_styles_border-style', ''),
(108, 2, 'label_styles_border-color', ''),
(109, 2, 'label_styles_color', ''),
(110, 2, 'label_styles_height', ''),
(111, 2, 'label_styles_width', ''),
(112, 2, 'label_styles_font-size', ''),
(113, 2, 'label_styles_margin', ''),
(114, 2, 'label_styles_padding', ''),
(115, 2, 'label_styles_display', ''),
(116, 2, 'label_styles_float', ''),
(117, 2, 'label_styles_show_advanced_css', '0'),
(118, 2, 'label_styles_advanced', ''),
(119, 2, 'element_styles_background-color', ''),
(120, 2, 'element_styles_border', ''),
(121, 2, 'element_styles_border-style', ''),
(122, 2, 'element_styles_border-color', ''),
(123, 2, 'element_styles_color', ''),
(124, 2, 'element_styles_height', ''),
(125, 2, 'element_styles_width', ''),
(126, 2, 'element_styles_font-size', ''),
(127, 2, 'element_styles_margin', ''),
(128, 2, 'element_styles_padding', ''),
(129, 2, 'element_styles_display', ''),
(130, 2, 'element_styles_float', ''),
(131, 2, 'element_styles_show_advanced_css', '0'),
(132, 2, 'element_styles_advanced', ''),
(133, 2, 'cellcid', 'c3281'),
(134, 2, 'custom_name_attribute', 'email'),
(135, 2, 'personally_identifiable', '1'),
(136, 2, 'drawerDisabled', ''),
(137, 5, 'objectType', 'Field'),
(138, 5, 'objectDomain', 'fields'),
(139, 5, 'editActive', ''),
(140, 5, 'order', '3'),
(141, 5, 'label', 'Phone'),
(142, 5, 'type', 'phone'),
(143, 5, 'key', 'phone_1531951543741'),
(144, 5, 'label_pos', 'hidden'),
(145, 5, 'required', '1'),
(146, 5, 'default', ''),
(147, 5, 'placeholder', 'PHONE'),
(148, 5, 'container_class', ''),
(149, 5, 'element_class', ''),
(150, 5, 'input_limit', ''),
(151, 5, 'input_limit_type', 'characters'),
(152, 5, 'input_limit_msg', 'Character(s) left'),
(153, 5, 'manual_key', ''),
(154, 5, 'admin_label', ''),
(155, 5, 'help_text', ''),
(156, 5, 'mask', ''),
(157, 5, 'custom_mask', ''),
(158, 5, 'custom_name_attribute', 'phone'),
(159, 5, 'personally_identifiable', '1'),
(160, 5, 'drawerDisabled', ''),
(161, 6, 'objectType', 'Field'),
(162, 6, 'objectDomain', 'fields'),
(163, 6, 'editActive', ''),
(164, 6, 'order', '4'),
(165, 6, 'label', 'Radio List'),
(166, 6, 'type', 'listradio'),
(167, 6, 'key', 'listradio_1531951551157'),
(168, 6, 'label_pos', 'hidden'),
(169, 6, 'required', '1'),
(170, 6, 'options', 'a:3:{i:0;a:9:{s:6:\"errors\";a:0:{}s:11:\"max_options\";i:0;s:5:\"label\";s:15:\"I\'M A CANDIDATE\";s:5:\"value\";s:9:\"Candidate\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:0;s:12:\"settingModel\";a:10:{s:8:\"settings\";b:0;s:15:\"hide_merge_tags\";b:0;s:5:\"error\";b:0;s:4:\"name\";s:7:\"options\";s:4:\"type\";s:15:\"option-repeater\";s:5:\"label\";s:159:\"Options <a href=\"#\" class=\"nf-add-new\">Add New</a> <a href=\"#\" class=\"extra nf-open-import-tooltip\"><i class=\"fa fa-sign-in\" aria-hidden=\"true\"></i> Import</a>\";s:5:\"width\";s:4:\"full\";s:5:\"group\";s:0:\"\";s:5:\"value\";a:3:{i:0;a:5:{s:5:\"label\";s:3:\"One\";s:5:\"value\";s:3:\"one\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:0;}i:1;a:5:{s:5:\"label\";s:3:\"Two\";s:5:\"value\";s:3:\"two\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:1;}i:2;a:5:{s:5:\"label\";s:5:\"Three\";s:5:\"value\";s:5:\"three\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:2;}}s:7:\"columns\";a:4:{s:5:\"label\";a:2:{s:6:\"header\";s:5:\"Label\";s:7:\"default\";s:0:\"\";}s:5:\"value\";a:2:{s:6:\"header\";s:5:\"Value\";s:7:\"default\";s:0:\"\";}s:4:\"calc\";a:2:{s:6:\"header\";s:10:\"Calc Value\";s:7:\"default\";s:0:\"\";}s:8:\"selected\";a:2:{s:6:\"header\";s:45:\"<span class=\"dashicons dashicons-yes\"></span>\";s:7:\"default\";i:0;}}}s:12:\"manual_value\";b:1;}i:1;a:9:{s:6:\"errors\";a:0:{}s:11:\"max_options\";i:0;s:5:\"label\";s:15:\"I\'M AN EMPLOYER\";s:5:\"value\";s:8:\"Employer\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:1;s:12:\"settingModel\";a:10:{s:8:\"settings\";b:0;s:15:\"hide_merge_tags\";b:0;s:5:\"error\";b:0;s:4:\"name\";s:7:\"options\";s:4:\"type\";s:15:\"option-repeater\";s:5:\"label\";s:159:\"Options <a href=\"#\" class=\"nf-add-new\">Add New</a> <a href=\"#\" class=\"extra nf-open-import-tooltip\"><i class=\"fa fa-sign-in\" aria-hidden=\"true\"></i> Import</a>\";s:5:\"width\";s:4:\"full\";s:5:\"group\";s:0:\"\";s:5:\"value\";a:3:{i:0;a:5:{s:5:\"label\";s:3:\"One\";s:5:\"value\";s:3:\"one\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:0;}i:1;a:5:{s:5:\"label\";s:3:\"Two\";s:5:\"value\";s:3:\"two\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:1;}i:2;a:5:{s:5:\"label\";s:5:\"Three\";s:5:\"value\";s:5:\"three\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:2;}}s:7:\"columns\";a:4:{s:5:\"label\";a:2:{s:6:\"header\";s:5:\"Label\";s:7:\"default\";s:0:\"\";}s:5:\"value\";a:2:{s:6:\"header\";s:5:\"Value\";s:7:\"default\";s:0:\"\";}s:4:\"calc\";a:2:{s:6:\"header\";s:10:\"Calc Value\";s:7:\"default\";s:0:\"\";}s:8:\"selected\";a:2:{s:6:\"header\";s:45:\"<span class=\"dashicons dashicons-yes\"></span>\";s:7:\"default\";i:0;}}}s:12:\"manual_value\";b:1;}i:2;a:9:{s:6:\"errors\";a:0:{}s:11:\"max_options\";i:0;s:5:\"label\";s:5:\"OTHER\";s:5:\"value\";s:5:\"Other\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:2;s:12:\"settingModel\";a:10:{s:8:\"settings\";b:0;s:15:\"hide_merge_tags\";b:0;s:5:\"error\";b:0;s:4:\"name\";s:7:\"options\";s:4:\"type\";s:15:\"option-repeater\";s:5:\"label\";s:159:\"Options <a href=\"#\" class=\"nf-add-new\">Add New</a> <a href=\"#\" class=\"extra nf-open-import-tooltip\"><i class=\"fa fa-sign-in\" aria-hidden=\"true\"></i> Import</a>\";s:5:\"width\";s:4:\"full\";s:5:\"group\";s:0:\"\";s:5:\"value\";a:3:{i:0;a:5:{s:5:\"label\";s:3:\"One\";s:5:\"value\";s:3:\"one\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:0;}i:1;a:5:{s:5:\"label\";s:3:\"Two\";s:5:\"value\";s:3:\"two\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:1;}i:2;a:5:{s:5:\"label\";s:5:\"Three\";s:5:\"value\";s:5:\"three\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:2;}}s:7:\"columns\";a:4:{s:5:\"label\";a:2:{s:6:\"header\";s:5:\"Label\";s:7:\"default\";s:0:\"\";}s:5:\"value\";a:2:{s:6:\"header\";s:5:\"Value\";s:7:\"default\";s:0:\"\";}s:4:\"calc\";a:2:{s:6:\"header\";s:10:\"Calc Value\";s:7:\"default\";s:0:\"\";}s:8:\"selected\";a:2:{s:6:\"header\";s:45:\"<span class=\"dashicons dashicons-yes\"></span>\";s:7:\"default\";i:0;}}}s:12:\"manual_value\";b:1;}}'),
(171, 6, 'container_class', ''),
(172, 6, 'element_class', ''),
(173, 6, 'admin_label', ''),
(174, 6, 'help_text', ''),
(175, 6, 'drawerDisabled', ''),
(176, 7, 'objectType', 'Field'),
(177, 7, 'objectDomain', 'fields'),
(178, 7, 'editActive', ''),
(179, 7, 'order', '5'),
(180, 7, 'label', 'Single Line Text'),
(181, 7, 'type', 'textbox'),
(182, 7, 'key', 'textbox_1531951585965'),
(183, 7, 'label_pos', 'hidden'),
(184, 7, 'required', ''),
(185, 7, 'default', ''),
(186, 7, 'placeholder', 'COMPANY'),
(187, 7, 'container_class', ''),
(188, 7, 'element_class', ''),
(189, 7, 'input_limit', ''),
(190, 7, 'input_limit_type', 'characters'),
(191, 7, 'input_limit_msg', 'Character(s) left'),
(192, 7, 'manual_key', ''),
(193, 7, 'admin_label', ''),
(194, 7, 'help_text', ''),
(195, 7, 'mask', ''),
(196, 7, 'custom_mask', ''),
(197, 7, 'custom_name_attribute', ''),
(198, 7, 'personally_identifiable', ''),
(199, 8, 'objectType', 'Field'),
(200, 8, 'objectDomain', 'fields'),
(201, 8, 'editActive', ''),
(202, 8, 'order', '6'),
(203, 8, 'label', 'Single Line Text'),
(204, 8, 'type', 'textbox'),
(205, 8, 'key', 'textbox_1531951588636'),
(206, 8, 'label_pos', 'hidden'),
(207, 8, 'required', ''),
(208, 8, 'default', ''),
(209, 8, 'placeholder', 'TITLE'),
(210, 8, 'container_class', ''),
(211, 8, 'element_class', ''),
(212, 8, 'input_limit', ''),
(213, 8, 'input_limit_type', 'characters'),
(214, 8, 'input_limit_msg', 'Character(s) left'),
(215, 8, 'manual_key', ''),
(216, 8, 'admin_label', ''),
(217, 8, 'help_text', ''),
(218, 8, 'mask', ''),
(219, 8, 'custom_mask', ''),
(220, 8, 'custom_name_attribute', ''),
(221, 8, 'personally_identifiable', ''),
(222, 3, 'objectType', 'Field'),
(223, 3, 'objectDomain', 'fields'),
(224, 3, 'editActive', ''),
(225, 3, 'order', '7'),
(226, 3, 'label', 'Message'),
(227, 3, 'key', 'message'),
(228, 3, 'type', 'textarea'),
(229, 3, 'created_at', '2018-07-18 22:05:12'),
(230, 3, 'label_pos', 'hidden'),
(231, 3, 'required', '1'),
(232, 3, 'placeholder', 'TELL US WHAT YOU\'RE LOOKING FOR...'),
(233, 3, 'default', ''),
(234, 3, 'wrapper_class', ''),
(235, 3, 'element_class', ''),
(236, 3, 'container_class', ''),
(237, 3, 'input_limit', ''),
(238, 3, 'input_limit_type', 'characters'),
(239, 3, 'input_limit_msg', 'Character(s) left'),
(240, 3, 'manual_key', ''),
(241, 3, 'disable_input', ''),
(242, 3, 'admin_label', ''),
(243, 3, 'help_text', ''),
(244, 3, 'desc_text', ''),
(245, 3, 'disable_browser_autocomplete', ''),
(246, 3, 'textarea_rte', ''),
(247, 3, 'disable_rte_mobile', ''),
(248, 3, 'textarea_media', ''),
(249, 3, 'wrap_styles_background-color', ''),
(250, 3, 'wrap_styles_border', ''),
(251, 3, 'wrap_styles_border-style', ''),
(252, 3, 'wrap_styles_border-color', ''),
(253, 3, 'wrap_styles_color', ''),
(254, 3, 'wrap_styles_height', ''),
(255, 3, 'wrap_styles_width', ''),
(256, 3, 'wrap_styles_font-size', ''),
(257, 3, 'wrap_styles_margin', ''),
(258, 3, 'wrap_styles_padding', ''),
(259, 3, 'wrap_styles_display', ''),
(260, 3, 'wrap_styles_float', ''),
(261, 3, 'wrap_styles_show_advanced_css', '0'),
(262, 3, 'wrap_styles_advanced', ''),
(263, 3, 'label_styles_background-color', ''),
(264, 3, 'label_styles_border', ''),
(265, 3, 'label_styles_border-style', ''),
(266, 3, 'label_styles_border-color', ''),
(267, 3, 'label_styles_color', ''),
(268, 3, 'label_styles_height', ''),
(269, 3, 'label_styles_width', ''),
(270, 3, 'label_styles_font-size', ''),
(271, 3, 'label_styles_margin', ''),
(272, 3, 'label_styles_padding', ''),
(273, 3, 'label_styles_display', ''),
(274, 3, 'label_styles_float', ''),
(275, 3, 'label_styles_show_advanced_css', '0'),
(276, 3, 'label_styles_advanced', ''),
(277, 3, 'element_styles_background-color', ''),
(278, 3, 'element_styles_border', ''),
(279, 3, 'element_styles_border-style', ''),
(280, 3, 'element_styles_border-color', ''),
(281, 3, 'element_styles_color', ''),
(282, 3, 'element_styles_height', ''),
(283, 3, 'element_styles_width', ''),
(284, 3, 'element_styles_font-size', ''),
(285, 3, 'element_styles_margin', ''),
(286, 3, 'element_styles_padding', ''),
(287, 3, 'element_styles_display', ''),
(288, 3, 'element_styles_float', ''),
(289, 3, 'element_styles_show_advanced_css', '0'),
(290, 3, 'element_styles_advanced', ''),
(291, 3, 'cellcid', 'c3284'),
(292, 3, 'drawerDisabled', ''),
(293, 4, 'objectType', 'Field'),
(294, 4, 'objectDomain', 'fields'),
(295, 4, 'editActive', ''),
(296, 4, 'order', '8'),
(297, 4, 'label', 'SUBMIT'),
(298, 4, 'key', 'submit_1531951763615'),
(299, 4, 'type', 'submit'),
(300, 4, 'created_at', '2018-07-18 22:05:12'),
(301, 4, 'processing_label', 'SENDING ALONG...'),
(302, 4, 'container_class', ''),
(303, 4, 'element_class', ''),
(304, 4, 'wrap_styles_background-color', ''),
(305, 4, 'wrap_styles_border', ''),
(306, 4, 'wrap_styles_border-style', ''),
(307, 4, 'wrap_styles_border-color', ''),
(308, 4, 'wrap_styles_color', ''),
(309, 4, 'wrap_styles_height', ''),
(310, 4, 'wrap_styles_width', ''),
(311, 4, 'wrap_styles_font-size', ''),
(312, 4, 'wrap_styles_margin', ''),
(313, 4, 'wrap_styles_padding', ''),
(314, 4, 'wrap_styles_display', ''),
(315, 4, 'wrap_styles_float', ''),
(316, 4, 'wrap_styles_show_advanced_css', '0'),
(317, 4, 'wrap_styles_advanced', ''),
(318, 4, 'label_styles_background-color', ''),
(319, 4, 'label_styles_border', ''),
(320, 4, 'label_styles_border-style', ''),
(321, 4, 'label_styles_border-color', ''),
(322, 4, 'label_styles_color', ''),
(323, 4, 'label_styles_height', ''),
(324, 4, 'label_styles_width', ''),
(325, 4, 'label_styles_font-size', ''),
(326, 4, 'label_styles_margin', ''),
(327, 4, 'label_styles_padding', ''),
(328, 4, 'label_styles_display', ''),
(329, 4, 'label_styles_float', ''),
(330, 4, 'label_styles_show_advanced_css', '0'),
(331, 4, 'label_styles_advanced', ''),
(332, 4, 'element_styles_background-color', ''),
(333, 4, 'element_styles_border', ''),
(334, 4, 'element_styles_border-style', ''),
(335, 4, 'element_styles_border-color', ''),
(336, 4, 'element_styles_color', ''),
(337, 4, 'element_styles_height', ''),
(338, 4, 'element_styles_width', ''),
(339, 4, 'element_styles_font-size', ''),
(340, 4, 'element_styles_margin', ''),
(341, 4, 'element_styles_padding', ''),
(342, 4, 'element_styles_display', ''),
(343, 4, 'element_styles_float', ''),
(344, 4, 'element_styles_show_advanced_css', '0'),
(345, 4, 'element_styles_advanced', ''),
(346, 4, 'submit_element_hover_styles_background-color', ''),
(347, 4, 'submit_element_hover_styles_border', ''),
(348, 4, 'submit_element_hover_styles_border-style', ''),
(349, 4, 'submit_element_hover_styles_border-color', ''),
(350, 4, 'submit_element_hover_styles_color', ''),
(351, 4, 'submit_element_hover_styles_height', ''),
(352, 4, 'submit_element_hover_styles_width', ''),
(353, 4, 'submit_element_hover_styles_font-size', ''),
(354, 4, 'submit_element_hover_styles_margin', ''),
(355, 4, 'submit_element_hover_styles_padding', ''),
(356, 4, 'submit_element_hover_styles_display', ''),
(357, 4, 'submit_element_hover_styles_float', ''),
(358, 4, 'submit_element_hover_styles_show_advanced_css', '0'),
(359, 4, 'submit_element_hover_styles_advanced', ''),
(360, 4, 'cellcid', 'c3287'),
(361, 4, 'drawerDisabled', ''),
(362, 7, 'drawerDisabled', ''),
(363, 8, 'drawerDisabled', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_forms`
--

CREATE TABLE `wp_nf3_forms` (
  `id` int(11) NOT NULL,
  `title` longtext,
  `key` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `subs` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_forms`
--

INSERT INTO `wp_nf3_forms` (`id`, `title`, `key`, `created_at`, `updated_at`, `views`, `subs`) VALUES
(1, 'Contact Me', '', '2018-07-19 02:05:12', '2018-07-18 22:05:12', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_form_meta`
--

CREATE TABLE `wp_nf3_form_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_form_meta`
--

INSERT INTO `wp_nf3_form_meta` (`id`, `parent_id`, `key`, `value`) VALUES
(1, 1, 'default_label_pos', 'above'),
(2, 1, 'conditions', 'a:0:{}'),
(3, 1, 'objectType', 'Form Setting'),
(4, 1, 'editActive', '1'),
(5, 1, 'show_title', '0'),
(6, 1, 'clear_complete', '1'),
(7, 1, 'hide_complete', '1'),
(8, 1, 'wrapper_class', ''),
(9, 1, 'element_class', ''),
(10, 1, 'add_submit', '1'),
(11, 1, 'logged_in', ''),
(12, 1, 'not_logged_in_msg', ''),
(13, 1, 'sub_limit_number', ''),
(14, 1, 'sub_limit_msg', ''),
(15, 1, 'calculations', 'a:0:{}'),
(16, 1, 'formContentData', 'a:8:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:19:\"phone_1531951543741\";i:3;s:23:\"listradio_1531951551157\";i:4;s:21:\"textbox_1531951585965\";i:5;s:21:\"textbox_1531951588636\";i:6;s:7:\"message\";i:7;s:20:\"submit_1531951763615\";}'),
(17, 1, 'container_styles_background-color', ''),
(18, 1, 'container_styles_border', ''),
(19, 1, 'container_styles_border-style', ''),
(20, 1, 'container_styles_border-color', ''),
(21, 1, 'container_styles_color', ''),
(22, 1, 'container_styles_height', ''),
(23, 1, 'container_styles_width', ''),
(24, 1, 'container_styles_font-size', ''),
(25, 1, 'container_styles_margin', ''),
(26, 1, 'container_styles_padding', ''),
(27, 1, 'container_styles_display', ''),
(28, 1, 'container_styles_float', ''),
(29, 1, 'container_styles_show_advanced_css', '0'),
(30, 1, 'container_styles_advanced', ''),
(31, 1, 'title_styles_background-color', ''),
(32, 1, 'title_styles_border', ''),
(33, 1, 'title_styles_border-style', ''),
(34, 1, 'title_styles_border-color', ''),
(35, 1, 'title_styles_color', ''),
(36, 1, 'title_styles_height', ''),
(37, 1, 'title_styles_width', ''),
(38, 1, 'title_styles_font-size', ''),
(39, 1, 'title_styles_margin', ''),
(40, 1, 'title_styles_padding', ''),
(41, 1, 'title_styles_display', ''),
(42, 1, 'title_styles_float', ''),
(43, 1, 'title_styles_show_advanced_css', '0'),
(44, 1, 'title_styles_advanced', ''),
(45, 1, 'row_styles_background-color', ''),
(46, 1, 'row_styles_border', ''),
(47, 1, 'row_styles_border-style', ''),
(48, 1, 'row_styles_border-color', ''),
(49, 1, 'row_styles_color', ''),
(50, 1, 'row_styles_height', ''),
(51, 1, 'row_styles_width', ''),
(52, 1, 'row_styles_font-size', ''),
(53, 1, 'row_styles_margin', ''),
(54, 1, 'row_styles_padding', ''),
(55, 1, 'row_styles_display', ''),
(56, 1, 'row_styles_show_advanced_css', '0'),
(57, 1, 'row_styles_advanced', ''),
(58, 1, 'row-odd_styles_background-color', ''),
(59, 1, 'row-odd_styles_border', ''),
(60, 1, 'row-odd_styles_border-style', ''),
(61, 1, 'row-odd_styles_border-color', ''),
(62, 1, 'row-odd_styles_color', ''),
(63, 1, 'row-odd_styles_height', ''),
(64, 1, 'row-odd_styles_width', ''),
(65, 1, 'row-odd_styles_font-size', ''),
(66, 1, 'row-odd_styles_margin', ''),
(67, 1, 'row-odd_styles_padding', ''),
(68, 1, 'row-odd_styles_display', ''),
(69, 1, 'row-odd_styles_show_advanced_css', '0'),
(70, 1, 'row-odd_styles_advanced', ''),
(71, 1, 'success-msg_styles_background-color', ''),
(72, 1, 'success-msg_styles_border', ''),
(73, 1, 'success-msg_styles_border-style', ''),
(74, 1, 'success-msg_styles_border-color', ''),
(75, 1, 'success-msg_styles_color', ''),
(76, 1, 'success-msg_styles_height', ''),
(77, 1, 'success-msg_styles_width', ''),
(78, 1, 'success-msg_styles_font-size', ''),
(79, 1, 'success-msg_styles_margin', ''),
(80, 1, 'success-msg_styles_padding', ''),
(81, 1, 'success-msg_styles_display', ''),
(82, 1, 'success-msg_styles_show_advanced_css', '0'),
(83, 1, 'success-msg_styles_advanced', ''),
(84, 1, 'error_msg_styles_background-color', ''),
(85, 1, 'error_msg_styles_border', ''),
(86, 1, 'error_msg_styles_border-style', ''),
(87, 1, 'error_msg_styles_border-color', ''),
(88, 1, 'error_msg_styles_color', ''),
(89, 1, 'error_msg_styles_height', ''),
(90, 1, 'error_msg_styles_width', ''),
(91, 1, 'error_msg_styles_font-size', ''),
(92, 1, 'error_msg_styles_margin', ''),
(93, 1, 'error_msg_styles_padding', ''),
(94, 1, 'error_msg_styles_display', ''),
(95, 1, 'error_msg_styles_show_advanced_css', '0'),
(96, 1, 'error_msg_styles_advanced', ''),
(97, 1, 'currency', ''),
(98, 1, 'unique_field_error', 'A form with this value has already been submitted.'),
(99, 1, 'changeEmailErrorMsg', ''),
(100, 1, 'changeDateErrorMsg', ''),
(101, 1, 'confirmFieldErrorMsg', ''),
(102, 1, 'fieldNumberNumMinError', ''),
(103, 1, 'fieldNumberNumMaxError', ''),
(104, 1, 'fieldNumberIncrementBy', ''),
(105, 1, 'formErrorsCorrectErrors', ''),
(106, 1, 'validateRequiredField', ''),
(107, 1, 'honeypotHoneypotError', ''),
(108, 1, 'fieldsMarkedRequired', ''),
(109, 1, 'drawerDisabled', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_objects`
--

CREATE TABLE `wp_nf3_objects` (
  `id` int(11) NOT NULL,
  `type` longtext,
  `title` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_object_meta`
--

CREATE TABLE `wp_nf3_object_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_relationships`
--

CREATE TABLE `wp_nf3_relationships` (
  `id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  `child_type` longtext NOT NULL,
  `parent_id` int(11) NOT NULL,
  `parent_type` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_upgrades`
--

CREATE TABLE `wp_nf3_upgrades` (
  `id` int(11) NOT NULL,
  `cache` longtext,
  `stage` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_upgrades`
--

INSERT INTO `wp_nf3_upgrades` (`id`, `cache`, `stage`) VALUES
(1, 'a:7:{s:2:\"id\";i:1;s:20:\"show_publish_options\";b:0;s:6:\"fields\";a:8:{i:0;a:2:{s:8:\"settings\";a:72:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:1;s:5:\"label\";s:4:\"Name\";s:3:\"key\";s:4:\"name\";s:4:\"type\";s:7:\"textbox\";s:10:\"created_at\";s:19:\"2018-07-18 22:05:12\";s:9:\"label_pos\";s:6:\"hidden\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:4:\"NAME\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3277\";s:21:\"custom_name_attribute\";s:0:\"\";s:23:\"personally_identifiable\";i:0;s:14:\"drawerDisabled\";b:0;}s:2:\"id\";i:1;}i:1;a:2:{s:8:\"settings\";a:64:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:2;s:5:\"label\";s:5:\"Email\";s:3:\"key\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:10:\"created_at\";s:19:\"2018-07-18 22:05:12\";s:9:\"label_pos\";s:6:\"hidden\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:5:\"EMAIL\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3281\";s:21:\"custom_name_attribute\";s:5:\"email\";s:23:\"personally_identifiable\";s:1:\"1\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";i:2;}i:2;a:2:{s:8:\"settings\";a:24:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:3;s:5:\"label\";s:5:\"Phone\";s:4:\"type\";s:5:\"phone\";s:3:\"key\";s:19:\"phone_1531951543741\";s:9:\"label_pos\";s:6:\"hidden\";s:8:\"required\";i:1;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:5:\"PHONE\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";b:0;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:21:\"custom_name_attribute\";s:5:\"phone\";s:23:\"personally_identifiable\";s:1:\"1\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";s:1:\"5\";}i:3;a:2:{s:8:\"settings\";a:15:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:4;s:5:\"label\";s:10:\"Radio List\";s:4:\"type\";s:9:\"listradio\";s:3:\"key\";s:23:\"listradio_1531951551157\";s:9:\"label_pos\";s:6:\"hidden\";s:8:\"required\";i:1;s:7:\"options\";a:3:{i:0;a:9:{s:6:\"errors\";a:0:{}s:11:\"max_options\";i:0;s:5:\"label\";s:15:\"I\'M A CANDIDATE\";s:5:\"value\";s:9:\"Candidate\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:0;s:12:\"settingModel\";a:10:{s:8:\"settings\";b:0;s:15:\"hide_merge_tags\";b:0;s:5:\"error\";b:0;s:4:\"name\";s:7:\"options\";s:4:\"type\";s:15:\"option-repeater\";s:5:\"label\";s:159:\"Options <a href=\"#\" class=\"nf-add-new\">Add New</a> <a href=\"#\" class=\"extra nf-open-import-tooltip\"><i class=\"fa fa-sign-in\" aria-hidden=\"true\"></i> Import</a>\";s:5:\"width\";s:4:\"full\";s:5:\"group\";s:0:\"\";s:5:\"value\";a:3:{i:0;a:5:{s:5:\"label\";s:3:\"One\";s:5:\"value\";s:3:\"one\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:0;}i:1;a:5:{s:5:\"label\";s:3:\"Two\";s:5:\"value\";s:3:\"two\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:1;}i:2;a:5:{s:5:\"label\";s:5:\"Three\";s:5:\"value\";s:5:\"three\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:2;}}s:7:\"columns\";a:4:{s:5:\"label\";a:2:{s:6:\"header\";s:5:\"Label\";s:7:\"default\";s:0:\"\";}s:5:\"value\";a:2:{s:6:\"header\";s:5:\"Value\";s:7:\"default\";s:0:\"\";}s:4:\"calc\";a:2:{s:6:\"header\";s:10:\"Calc Value\";s:7:\"default\";s:0:\"\";}s:8:\"selected\";a:2:{s:6:\"header\";s:45:\"<span class=\"dashicons dashicons-yes\"></span>\";s:7:\"default\";i:0;}}}s:12:\"manual_value\";b:1;}i:1;a:9:{s:6:\"errors\";a:0:{}s:11:\"max_options\";i:0;s:5:\"label\";s:15:\"I\'M AN EMPLOYER\";s:5:\"value\";s:8:\"Employer\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:1;s:12:\"settingModel\";a:10:{s:8:\"settings\";b:0;s:15:\"hide_merge_tags\";b:0;s:5:\"error\";b:0;s:4:\"name\";s:7:\"options\";s:4:\"type\";s:15:\"option-repeater\";s:5:\"label\";s:159:\"Options <a href=\"#\" class=\"nf-add-new\">Add New</a> <a href=\"#\" class=\"extra nf-open-import-tooltip\"><i class=\"fa fa-sign-in\" aria-hidden=\"true\"></i> Import</a>\";s:5:\"width\";s:4:\"full\";s:5:\"group\";s:0:\"\";s:5:\"value\";a:3:{i:0;a:5:{s:5:\"label\";s:3:\"One\";s:5:\"value\";s:3:\"one\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:0;}i:1;a:5:{s:5:\"label\";s:3:\"Two\";s:5:\"value\";s:3:\"two\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:1;}i:2;a:5:{s:5:\"label\";s:5:\"Three\";s:5:\"value\";s:5:\"three\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:2;}}s:7:\"columns\";a:4:{s:5:\"label\";a:2:{s:6:\"header\";s:5:\"Label\";s:7:\"default\";s:0:\"\";}s:5:\"value\";a:2:{s:6:\"header\";s:5:\"Value\";s:7:\"default\";s:0:\"\";}s:4:\"calc\";a:2:{s:6:\"header\";s:10:\"Calc Value\";s:7:\"default\";s:0:\"\";}s:8:\"selected\";a:2:{s:6:\"header\";s:45:\"<span class=\"dashicons dashicons-yes\"></span>\";s:7:\"default\";i:0;}}}s:12:\"manual_value\";b:1;}i:2;a:9:{s:6:\"errors\";a:0:{}s:11:\"max_options\";i:0;s:5:\"label\";s:5:\"OTHER\";s:5:\"value\";s:5:\"Other\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:2;s:12:\"settingModel\";a:10:{s:8:\"settings\";b:0;s:15:\"hide_merge_tags\";b:0;s:5:\"error\";b:0;s:4:\"name\";s:7:\"options\";s:4:\"type\";s:15:\"option-repeater\";s:5:\"label\";s:159:\"Options <a href=\"#\" class=\"nf-add-new\">Add New</a> <a href=\"#\" class=\"extra nf-open-import-tooltip\"><i class=\"fa fa-sign-in\" aria-hidden=\"true\"></i> Import</a>\";s:5:\"width\";s:4:\"full\";s:5:\"group\";s:0:\"\";s:5:\"value\";a:3:{i:0;a:5:{s:5:\"label\";s:3:\"One\";s:5:\"value\";s:3:\"one\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:0;}i:1;a:5:{s:5:\"label\";s:3:\"Two\";s:5:\"value\";s:3:\"two\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:1;}i:2;a:5:{s:5:\"label\";s:5:\"Three\";s:5:\"value\";s:5:\"three\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:2;}}s:7:\"columns\";a:4:{s:5:\"label\";a:2:{s:6:\"header\";s:5:\"Label\";s:7:\"default\";s:0:\"\";}s:5:\"value\";a:2:{s:6:\"header\";s:5:\"Value\";s:7:\"default\";s:0:\"\";}s:4:\"calc\";a:2:{s:6:\"header\";s:10:\"Calc Value\";s:7:\"default\";s:0:\"\";}s:8:\"selected\";a:2:{s:6:\"header\";s:45:\"<span class=\"dashicons dashicons-yes\"></span>\";s:7:\"default\";i:0;}}}s:12:\"manual_value\";b:1;}}s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";s:1:\"6\";}i:4;a:2:{s:8:\"settings\";a:24:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:5;s:5:\"label\";s:16:\"Single Line Text\";s:4:\"type\";s:7:\"textbox\";s:3:\"key\";s:21:\"textbox_1531951585965\";s:9:\"label_pos\";s:6:\"hidden\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:7:\"COMPANY\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";b:0;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:21:\"custom_name_attribute\";s:0:\"\";s:23:\"personally_identifiable\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";s:1:\"7\";}i:5;a:2:{s:8:\"settings\";a:24:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:6;s:5:\"label\";s:16:\"Single Line Text\";s:4:\"type\";s:7:\"textbox\";s:3:\"key\";s:21:\"textbox_1531951588636\";s:9:\"label_pos\";s:6:\"hidden\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:5:\"TITLE\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";b:0;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:21:\"custom_name_attribute\";s:0:\"\";s:23:\"personally_identifiable\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";s:1:\"8\";}i:6;a:2:{s:8:\"settings\";a:71:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:7;s:5:\"label\";s:7:\"Message\";s:3:\"key\";s:7:\"message\";s:4:\"type\";s:8:\"textarea\";s:10:\"created_at\";s:19:\"2018-07-18 22:05:12\";s:9:\"label_pos\";s:6:\"hidden\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:34:\"TELL US WHAT YOU\'RE LOOKING FOR...\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:12:\"textarea_rte\";s:0:\"\";s:18:\"disable_rte_mobile\";s:0:\"\";s:14:\"textarea_media\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3284\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";i:3;}i:7;a:2:{s:8:\"settings\";a:69:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:8;s:5:\"label\";s:6:\"SUBMIT\";s:3:\"key\";s:20:\"submit_1531951763615\";s:4:\"type\";s:6:\"submit\";s:10:\"created_at\";s:19:\"2018-07-18 22:05:12\";s:16:\"processing_label\";s:16:\"SENDING ALONG...\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:44:\"submit_element_hover_styles_background-color\";s:0:\"\";s:34:\"submit_element_hover_styles_border\";s:0:\"\";s:40:\"submit_element_hover_styles_border-style\";s:0:\"\";s:40:\"submit_element_hover_styles_border-color\";s:0:\"\";s:33:\"submit_element_hover_styles_color\";s:0:\"\";s:34:\"submit_element_hover_styles_height\";s:0:\"\";s:33:\"submit_element_hover_styles_width\";s:0:\"\";s:37:\"submit_element_hover_styles_font-size\";s:0:\"\";s:34:\"submit_element_hover_styles_margin\";s:0:\"\";s:35:\"submit_element_hover_styles_padding\";s:0:\"\";s:35:\"submit_element_hover_styles_display\";s:0:\"\";s:33:\"submit_element_hover_styles_float\";s:0:\"\";s:45:\"submit_element_hover_styles_show_advanced_css\";s:1:\"0\";s:36:\"submit_element_hover_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3287\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";i:4;}}s:7:\"actions\";a:4:{i:0;a:2:{s:8:\"settings\";a:31:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:4:\"save\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-07-18 22:05:13\";s:5:\"label\";s:16:\"Store Submission\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";s:7:\"message\";s:160:\"This action adds users to WordPress\' personal data export tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.\";s:15:\"submitter_email\";s:5:\"email\";s:18:\"fields-save-toggle\";s:8:\"save_all\";s:16:\"exception_fields\";a:0:{}s:18:\"set_subs_to_expire\";s:1:\"0\";s:16:\"subs_expire_time\";s:2:\"90\";s:14:\"drawerDisabled\";s:0:\"\";}s:2:\"id\";i:1;}i:1;a:2:{s:8:\"settings\";a:25:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-07-18 22:05:13\";s:5:\"label\";s:18:\"Email Confirmation\";s:2:\"to\";s:13:\"{field:email}\";s:7:\"subject\";s:24:\"This is an email action.\";s:7:\"message\";s:19:\"Hello, Ninja Forms!\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:13:\"email_subject\";s:24:\"Submission Confirmation \";s:13:\"email_message\";s:29:\"<p>{all_fields_table}<br></p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";}s:2:\"id\";i:2;}i:2;a:2:{s:8:\"settings\";a:25:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-07-18 22:05:13\";s:5:\"label\";s:18:\"Email Notification\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:20:\"{system:admin_email}\";s:13:\"email_subject\";s:29:\"New message from {field:name}\";s:13:\"email_message\";s:60:\"<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:13:\"{field:email}\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:1:\"0\";s:19:\"email_message_plain\";s:0:\"\";s:7:\"message\";s:160:\"This action adds users to WordPress\' personal data delete tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.\";}s:2:\"id\";i:3;}i:3;a:2:{s:8:\"settings\";a:31:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:14:\"successmessage\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-07-18 22:05:13\";s:5:\"label\";s:15:\"Success Message\";s:7:\"message\";s:47:\"Thank you {field:name} for filling out my form!\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:11:\"success_msg\";s:89:\"<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>\";s:19:\"email_message_plain\";s:0:\"\";s:15:\"submitter_email\";s:0:\"\";s:18:\"fields-save-toggle\";s:8:\"save_all\";s:16:\"exception_fields\";a:0:{}s:18:\"set_subs_to_expire\";s:1:\"0\";s:16:\"subs_expire_time\";s:2:\"90\";}s:2:\"id\";i:4;}}s:8:\"settings\";a:112:{s:10:\"objectType\";s:12:\"Form Setting\";s:10:\"editActive\";b:1;s:5:\"title\";s:10:\"Contact Me\";s:3:\"key\";s:0:\"\";s:10:\"created_at\";s:19:\"2018-07-18 22:05:12\";s:17:\"default_label_pos\";s:5:\"above\";s:10:\"conditions\";a:0:{}s:10:\"show_title\";i:0;s:14:\"clear_complete\";s:1:\"1\";s:13:\"hide_complete\";s:1:\"1\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"add_submit\";s:1:\"1\";s:9:\"logged_in\";s:0:\"\";s:17:\"not_logged_in_msg\";s:0:\"\";s:16:\"sub_limit_number\";s:0:\"\";s:13:\"sub_limit_msg\";s:0:\"\";s:12:\"calculations\";a:0:{}s:15:\"formContentData\";a:8:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:19:\"phone_1531951543741\";i:3;s:23:\"listradio_1531951551157\";i:4;s:21:\"textbox_1531951585965\";i:5;s:21:\"textbox_1531951588636\";i:6;s:7:\"message\";i:7;s:20:\"submit_1531951763615\";}s:33:\"container_styles_background-color\";s:0:\"\";s:23:\"container_styles_border\";s:0:\"\";s:29:\"container_styles_border-style\";s:0:\"\";s:29:\"container_styles_border-color\";s:0:\"\";s:22:\"container_styles_color\";s:0:\"\";s:23:\"container_styles_height\";s:0:\"\";s:22:\"container_styles_width\";s:0:\"\";s:26:\"container_styles_font-size\";s:0:\"\";s:23:\"container_styles_margin\";s:0:\"\";s:24:\"container_styles_padding\";s:0:\"\";s:24:\"container_styles_display\";s:0:\"\";s:22:\"container_styles_float\";s:0:\"\";s:34:\"container_styles_show_advanced_css\";s:1:\"0\";s:25:\"container_styles_advanced\";s:0:\"\";s:29:\"title_styles_background-color\";s:0:\"\";s:19:\"title_styles_border\";s:0:\"\";s:25:\"title_styles_border-style\";s:0:\"\";s:25:\"title_styles_border-color\";s:0:\"\";s:18:\"title_styles_color\";s:0:\"\";s:19:\"title_styles_height\";s:0:\"\";s:18:\"title_styles_width\";s:0:\"\";s:22:\"title_styles_font-size\";s:0:\"\";s:19:\"title_styles_margin\";s:0:\"\";s:20:\"title_styles_padding\";s:0:\"\";s:20:\"title_styles_display\";s:0:\"\";s:18:\"title_styles_float\";s:0:\"\";s:30:\"title_styles_show_advanced_css\";s:1:\"0\";s:21:\"title_styles_advanced\";s:0:\"\";s:27:\"row_styles_background-color\";s:0:\"\";s:17:\"row_styles_border\";s:0:\"\";s:23:\"row_styles_border-style\";s:0:\"\";s:23:\"row_styles_border-color\";s:0:\"\";s:16:\"row_styles_color\";s:0:\"\";s:17:\"row_styles_height\";s:0:\"\";s:16:\"row_styles_width\";s:0:\"\";s:20:\"row_styles_font-size\";s:0:\"\";s:17:\"row_styles_margin\";s:0:\"\";s:18:\"row_styles_padding\";s:0:\"\";s:18:\"row_styles_display\";s:0:\"\";s:28:\"row_styles_show_advanced_css\";s:1:\"0\";s:19:\"row_styles_advanced\";s:0:\"\";s:31:\"row-odd_styles_background-color\";s:0:\"\";s:21:\"row-odd_styles_border\";s:0:\"\";s:27:\"row-odd_styles_border-style\";s:0:\"\";s:27:\"row-odd_styles_border-color\";s:0:\"\";s:20:\"row-odd_styles_color\";s:0:\"\";s:21:\"row-odd_styles_height\";s:0:\"\";s:20:\"row-odd_styles_width\";s:0:\"\";s:24:\"row-odd_styles_font-size\";s:0:\"\";s:21:\"row-odd_styles_margin\";s:0:\"\";s:22:\"row-odd_styles_padding\";s:0:\"\";s:22:\"row-odd_styles_display\";s:0:\"\";s:32:\"row-odd_styles_show_advanced_css\";s:1:\"0\";s:23:\"row-odd_styles_advanced\";s:0:\"\";s:35:\"success-msg_styles_background-color\";s:0:\"\";s:25:\"success-msg_styles_border\";s:0:\"\";s:31:\"success-msg_styles_border-style\";s:0:\"\";s:31:\"success-msg_styles_border-color\";s:0:\"\";s:24:\"success-msg_styles_color\";s:0:\"\";s:25:\"success-msg_styles_height\";s:0:\"\";s:24:\"success-msg_styles_width\";s:0:\"\";s:28:\"success-msg_styles_font-size\";s:0:\"\";s:25:\"success-msg_styles_margin\";s:0:\"\";s:26:\"success-msg_styles_padding\";s:0:\"\";s:26:\"success-msg_styles_display\";s:0:\"\";s:36:\"success-msg_styles_show_advanced_css\";s:1:\"0\";s:27:\"success-msg_styles_advanced\";s:0:\"\";s:33:\"error_msg_styles_background-color\";s:0:\"\";s:23:\"error_msg_styles_border\";s:0:\"\";s:29:\"error_msg_styles_border-style\";s:0:\"\";s:29:\"error_msg_styles_border-color\";s:0:\"\";s:22:\"error_msg_styles_color\";s:0:\"\";s:23:\"error_msg_styles_height\";s:0:\"\";s:22:\"error_msg_styles_width\";s:0:\"\";s:26:\"error_msg_styles_font-size\";s:0:\"\";s:23:\"error_msg_styles_margin\";s:0:\"\";s:24:\"error_msg_styles_padding\";s:0:\"\";s:24:\"error_msg_styles_display\";s:0:\"\";s:34:\"error_msg_styles_show_advanced_css\";s:1:\"0\";s:25:\"error_msg_styles_advanced\";s:0:\"\";s:19:\"changeEmailErrorMsg\";s:0:\"\";s:18:\"changeDateErrorMsg\";s:0:\"\";s:20:\"confirmFieldErrorMsg\";s:0:\"\";s:22:\"fieldNumberNumMinError\";s:0:\"\";s:22:\"fieldNumberNumMaxError\";s:0:\"\";s:22:\"fieldNumberIncrementBy\";s:0:\"\";s:23:\"formErrorsCorrectErrors\";s:0:\"\";s:21:\"validateRequiredField\";s:0:\"\";s:21:\"honeypotHoneypotError\";s:0:\"\";s:20:\"fieldsMarkedRequired\";s:0:\"\";s:8:\"currency\";s:0:\"\";s:18:\"unique_field_error\";s:50:\"A form with this value has already been submitted.\";s:14:\"drawerDisabled\";b:0;}s:14:\"deleted_fields\";a:0:{}s:15:\"deleted_actions\";a:0:{}}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/moffitt', 'yes'),
(2, 'home', 'http://localhost:8888/moffitt', 'yes'),
(3, 'blogname', 'Moffitt International', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'absdsgn@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:99:\"enable-shortcode-and-php-support-in-text-widget/enable-shortcode-and-php-support-in-text-widget.php\";i:2;s:25:\"insert-php/insert_php.php\";i:3;s:27:\"ninja-forms/ninja-forms.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'Moffitt', 'yes'),
(41, 'stylesheet', 'Moffitt', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:27:\"ninja-forms/ninja-forms.php\";s:21:\"ninja_forms_uninstall\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:68:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"edit_wbcr-snippets\";b:1;s:18:\"read_wbcr-snippets\";b:1;s:20:\"delete_wbcr-snippets\";b:1;s:19:\"edit_wbcr-snippetss\";b:1;s:26:\"edit_others_wbcr-snippetss\";b:1;s:22:\"publish_wbcr-snippetss\";b:1;s:27:\"read_private_wbcr-snippetss\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:6:{i:1532310836;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1532339636;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1532382893;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1532383293;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1534630307;a:1:{s:13:\"nf_optin_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"nf-monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2678400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1528754367;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(120, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1532295112;s:7:\"checked\";a:2:{s:7:\"Moffitt\";s:0:\"\";s:15:\"twentyseventeen\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(127, 'can_compress_scripts', '1', 'no'),
(139, 'current_theme', 'Moffitt', 'yes'),
(140, 'theme_mods_Moffitt', 'a:7:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:67:\"http://localhost:8888/moffitt/wp-content/uploads/2018/07/header.png\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:27;s:3:\"url\";s:67:\"http://localhost:8888/moffitt/wp-content/uploads/2018/07/header.png\";s:13:\"thumbnail_url\";s:67:\"http://localhost:8888/moffitt/wp-content/uploads/2018/07/header.png\";s:6:\"height\";i:687;s:5:\"width\";i:1207;}s:11:\"custom_logo\";i:33;s:16:\"header_textcolor\";s:5:\"blank\";}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(149, 'recently_activated', 'a:1:{s:36:\"contact-form-7/wp-contact-form-7.php\";i:1531951480;}', 'yes'),
(156, '_fl_builder_version', '2.1.3.4', 'no'),
(157, 'fl_builder_usage_enabled', '0', 'no'),
(158, 'fl_notifications', 'a:3:{s:4:\"read\";b:1;s:8:\"checksum\";a:6:{i:375859;i:1690867192;i:352086;i:1712285855;i:347444;i:2016001167;i:344408;i:4147876357;i:337380;i:61041398;i:333965;i:4130695;}s:4:\"data\";s:11487:\"[{\"id\":375859,\"date\":\"2018-07-11T12:30:14\",\"date_gmt\":\"2018-07-11T19:30:14\",\"guid\":{\"rendered\":\"https:\\/\\/www.wpbeaverbuilder.com\\/?post_type=fl_notification&#038;p=375859\"},\"modified\":\"2018-07-11T12:30:14\",\"modified_gmt\":\"2018-07-11T19:30:14\",\"slug\":\"summer-update-sneak-peaks-new-features-and-more\",\"status\":\"publish\",\"type\":\"fl_notification\",\"link\":\"https:\\/\\/www.wpbeaverbuilder.com\\/?fl_notification=summer-update-sneak-peaks-new-features-and-more\",\"title\":{\"rendered\":\"Summer Update \\u2013 Sneak Peaks, New Features, and More\"},\"content\":{\"rendered\":\"<p><img class=\\\"aligncenter size-full wp-image-375874\\\" src=\\\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/07\\/bb-summer-2018.jpg\\\" alt=\\\"\\\" width=\\\"318\\\" height=\\\"139\\\" srcset=\\\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/07\\/bb-summer-2018.jpg 318w, https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/07\\/bb-summer-2018-300x131.jpg 300w\\\" sizes=\\\"(max-width: 318px) 100vw, 318px\\\" \\/><\\/p>\\n<p>Hope you\'re having a great summer! We have updates and alpha versions across the board\\u2014Page Builder, Beaver Themer, and the BB Theme are all getting some exciting new features and enhancements.<\\/p>\\n\",\"protected\":false},\"template\":\"\",\"meta\":{\"_fl_notification\":[\"https:\\/\\/www.wpbeaverbuilder.com\\/summer-update-sneak-peaks-new-features-and-more\\/\"]},\"_links\":{\"self\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/fl_notification\\/375859\"}],\"collection\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/fl_notification\"}],\"about\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/types\\/fl_notification\"}],\"wp:attachment\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/media?parent=375859\"}],\"curies\":[{\"name\":\"wp\",\"href\":\"https:\\/\\/api.w.org\\/{rel}\",\"templated\":true}]}},{\"id\":352086,\"date\":\"2018-04-26T11:28:42\",\"date_gmt\":\"2018-04-26T18:28:42\",\"guid\":{\"rendered\":\"https:\\/\\/www.wpbeaverbuilder.com\\/?post_type=fl_notification&#038;p=352086\"},\"modified\":\"2018-04-26T11:28:42\",\"modified_gmt\":\"2018-04-26T18:28:42\",\"slug\":\"happy-4th-birthday-to-beaver-builder\",\"status\":\"publish\",\"type\":\"fl_notification\",\"link\":\"https:\\/\\/www.wpbeaverbuilder.com\\/?fl_notification=happy-4th-birthday-to-beaver-builder\",\"title\":{\"rendered\":\"Happy 4th Birthday to Beaver Builder\"},\"content\":{\"rendered\":\"<p><img class=\\\"aligncenter size-full wp-image-352087\\\" src=\\\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/04\\/bday-notification.jpg\\\" alt=\\\"\\\" width=\\\"318\\\" height=\\\"139\\\" srcset=\\\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/04\\/bday-notification.jpg 318w, https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/04\\/bday-notification-300x131.jpg 300w\\\" sizes=\\\"(max-width: 318px) 100vw, 318px\\\" \\/><\\/p>\\n<p>For the last few years, we\\u2019ve made a point to celebrate our birthday here at\\u00a0Beaver Builder. It\\u2019s hard to believe, since starting this journey from client work to products, a whole four years have gone by.<\\/p>\\n\",\"protected\":false},\"template\":\"\",\"meta\":{\"_fl_notification\":[\"https:\\/\\/www.wpbeaverbuilder.com\\/happy-4th-birthday-to-beaver-builder\\/\"]},\"_links\":{\"self\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/fl_notification\\/352086\"}],\"collection\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/fl_notification\"}],\"about\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/types\\/fl_notification\"}],\"wp:attachment\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/media?parent=352086\"}],\"curies\":[{\"name\":\"wp\",\"href\":\"https:\\/\\/api.w.org\\/{rel}\",\"templated\":true}]}},{\"id\":347444,\"date\":\"2018-04-04T16:27:13\",\"date_gmt\":\"2018-04-04T23:27:13\",\"guid\":{\"rendered\":\"https:\\/\\/www.wpbeaverbuilder.com\\/?post_type=fl_notification&#038;p=347444\"},\"modified\":\"2018-04-04T16:27:13\",\"modified_gmt\":\"2018-04-04T23:27:13\",\"slug\":\"beaver-builder-2-1-redridge\",\"status\":\"publish\",\"type\":\"fl_notification\",\"link\":\"https:\\/\\/www.wpbeaverbuilder.com\\/?fl_notification=beaver-builder-2-1-redridge\",\"title\":{\"rendered\":\"Beaver Builder 2.1 &#8220;Redridge&#8221;\"},\"content\":{\"rendered\":\"<p><img class=\\\"aligncenter size-full wp-image-347445\\\" src=\\\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/04\\/redridge-notification-normal.jpg\\\" alt=\\\"\\\" width=\\\"318\\\" height=\\\"139\\\" srcset=\\\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/04\\/redridge-notification-normal.jpg 318w, https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/04\\/redridge-notification-normal-300x131.jpg 300w\\\" sizes=\\\"(max-width: 318px) 100vw, 318px\\\" \\/><\\/p>\\n<p>Beaver Builder 2.1 &#8220;Redridge&#8221; introduces a TON of new features and workflow improvements. If you\'re reading this, our new notification center here is one of them! Redridge also brings inline editing, saved columns, Gutenberg support, code validation, and a whole lot more. Click here to check out our release post and learn about all the new goodies.<\\/p>\\n\",\"protected\":false},\"template\":\"\",\"meta\":{\"_fl_notification\":[\"https:\\/\\/www.wpbeaverbuilder.com\\/beaver-builder-2-1-redridge\\/\"]},\"_links\":{\"self\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/fl_notification\\/347444\"}],\"collection\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/fl_notification\"}],\"about\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/types\\/fl_notification\"}],\"wp:attachment\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/media?parent=347444\"}],\"curies\":[{\"name\":\"wp\",\"href\":\"https:\\/\\/api.w.org\\/{rel}\",\"templated\":true}]}},{\"id\":344408,\"date\":\"2018-03-22T10:40:12\",\"date_gmt\":\"2018-03-22T17:40:12\",\"guid\":{\"rendered\":\"https:\\/\\/www.wpbeaverbuilder.com\\/?post_type=fl_notification&#038;p=344408\"},\"modified\":\"2018-03-22T10:51:16\",\"modified_gmt\":\"2018-03-22T17:51:16\",\"slug\":\"beaver-builder-team-ask-us-anything\",\"status\":\"publish\",\"type\":\"fl_notification\",\"link\":\"https:\\/\\/www.wpbeaverbuilder.com\\/?fl_notification=beaver-builder-team-ask-us-anything\",\"title\":{\"rendered\":\"Beaver Builder Team Ask Us Anything\"},\"content\":{\"rendered\":\"<p><img class=\\\"aligncenter size-full wp-image-344409\\\" src=\\\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/03\\/ama-notification.jpg\\\" alt=\\\"\\\" width=\\\"318\\\" height=\\\"139\\\" srcset=\\\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/03\\/ama-notification.jpg 318w, https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/03\\/ama-notification-300x131.jpg 300w\\\" sizes=\\\"(max-width: 318px) 100vw, 318px\\\" \\/><\\/p>\\n<p>In our latest update, Billy, Brent, Justin, and Robby sit down and answer your questions in video format! We also discuss the 2.1 alpha (which you\'re probably aware of if you\'re reading this notification\\u00a0\\ud83d\\ude02) and a lot more&#8230;<\\/p>\\n\",\"protected\":false},\"template\":\"\",\"meta\":{\"_fl_notification\":[\"https:\\/\\/www.wpbeaverbuilder.com\\/ask-us-anything-ama-update-post\\/\"]},\"_links\":{\"self\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/fl_notification\\/344408\"}],\"collection\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/fl_notification\"}],\"about\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/types\\/fl_notification\"}],\"wp:attachment\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/media?parent=344408\"}],\"curies\":[{\"name\":\"wp\",\"href\":\"https:\\/\\/api.w.org\\/{rel}\",\"templated\":true}]}},{\"id\":337380,\"date\":\"2018-02-21T10:41:52\",\"date_gmt\":\"2018-02-21T18:41:52\",\"guid\":{\"rendered\":\"https:\\/\\/www.wpbeaverbuilder.com\\/?post_type=fl_notification&#038;p=337380\"},\"modified\":\"2018-02-21T10:41:52\",\"modified_gmt\":\"2018-02-21T18:41:52\",\"slug\":\"48-websites-48-hours\",\"status\":\"publish\",\"type\":\"fl_notification\",\"link\":\"https:\\/\\/www.wpbeaverbuilder.com\\/?fl_notification=48-websites-48-hours\",\"title\":{\"rendered\":\"48 Websites in 48 Hours\"},\"content\":{\"rendered\":\"<p><img class=\\\"size-full wp-image-337381 aligncenter\\\" src=\\\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/02\\/48in48-case-study-notification.jpg\\\" alt=\\\"\\\" width=\\\"318\\\" height=\\\"139\\\" srcset=\\\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/02\\/48in48-case-study-notification.jpg 318w, https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/02\\/48in48-case-study-notification-300x131.jpg 300w\\\" sizes=\\\"(max-width: 318px) 100vw, 318px\\\" \\/><\\/p>\\n<p>Check out this story about how our friends at 48in48 use\\u00a0Beaver Builder to create 48 nonprofit websites in 48 hours at their events hosted throughout the world.<\\/p>\\n\",\"protected\":false},\"template\":\"\",\"meta\":{\"_fl_notification\":[\"https:\\/\\/www.wpbeaverbuilder.com\\/48in48-case-study-building-48-websites-nonprofits-48-hours\\/\"]},\"_links\":{\"self\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/fl_notification\\/337380\"}],\"collection\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/fl_notification\"}],\"about\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/types\\/fl_notification\"}],\"wp:attachment\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/media?parent=337380\"}],\"curies\":[{\"name\":\"wp\",\"href\":\"https:\\/\\/api.w.org\\/{rel}\",\"templated\":true}]}},{\"id\":333965,\"date\":\"2018-02-06T11:54:04\",\"date_gmt\":\"2018-02-06T19:54:04\",\"guid\":{\"rendered\":\"https:\\/\\/www.wpbeaverbuilder.com\\/?post_type=fl_notification&#038;p=333965\"},\"modified\":\"2018-02-15T12:09:49\",\"modified_gmt\":\"2018-02-15T20:09:49\",\"slug\":\"welcome-2-1-alpha\",\"status\":\"publish\",\"type\":\"fl_notification\",\"link\":\"https:\\/\\/www.wpbeaverbuilder.com\\/?fl_notification=welcome-2-1-alpha\",\"title\":{\"rendered\":\"Welcome to 2.1 Alpha!\"},\"content\":{\"rendered\":\"<p><a href=\\\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/01\\/thick-beaver.png\\\"><img class=\\\"size-full wp-image-332142 alignleft\\\" src=\\\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/01\\/thick-beaver.png\\\" alt=\\\"\\\" width=\\\"80\\\" height=\\\"80\\\" srcset=\\\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/01\\/thick-beaver.png 80w, https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/01\\/thick-beaver-45x45.png 45w\\\" sizes=\\\"(max-width: 80px) 100vw, 80px\\\" \\/><\\/a>\\u00a0Hey there! Thank you so much for installing the latest alpha build of\\u00a0Beaver Builder. This is our new notification center! The plan here is to make it easier for us to communicate with\\u00a0<em>you.<\\/em> From here, we can share news about updates and new features, share our blog posts and tutorials, and push out helpful information to everyone using\\u00a0Beaver Builder.<\\/p>\\n<p>During the alpha period, we will be testing the notification center here. We may send out videos, or blogs posts, or different types of content for testing purposes. We\'ll do our best to keep them informative and entertaining, but do be aware that, for the most part, these will be &#8220;alpha&#8221; notifications. Thanks, again!<\\/p>\\n\",\"protected\":false},\"template\":\"\",\"meta\":{\"_fl_notification\":[\"https:\\/\\/www.wpbeaverbuilder.com\"]},\"_links\":{\"self\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/fl_notification\\/333965\"}],\"collection\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/fl_notification\"}],\"about\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/types\\/fl_notification\"}],\"wp:attachment\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/media?parent=333965\"}],\"curies\":[{\"name\":\"wp\",\"href\":\"https:\\/\\/api.w.org\\/{rel}\",\"templated\":true}]}}]\";}', 'yes'),
(162, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(197, '_fl_builder_update_info', 'a:2:{s:4:\"from\";s:7:\"2.1.2.4\";s:2:\"to\";s:7:\"2.1.3.4\";}', 'no'),
(200, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.7.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.7-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.7-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.7\";s:7:\"version\";s:5:\"4.9.7\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1532296526;s:15:\"version_checked\";s:5:\"4.9.7\";s:12:\"translations\";a:0:{}}', 'no'),
(231, 'acf_version', '4.4.12', 'yes'),
(282, 'ninja_forms_oauth_client_secret', 'T2DsQLm2AfrbADWAELLXgqpfA523Y48N3KYCIazA', 'yes'),
(283, 'ninja_forms_data_is_clean', 'true', 'yes'),
(284, 'ninja_forms_version', '3.3.10', 'yes'),
(285, 'ninja_forms_db_version', '1.0', 'no'),
(286, 'ninja_forms_settings', 'a:7:{s:11:\"date_format\";s:5:\"m/d/Y\";s:8:\"currency\";s:3:\"USD\";s:18:\"recaptcha_site_key\";s:0:\"\";s:20:\"recaptcha_secret_key\";s:0:\"\";s:14:\"recaptcha_lang\";s:0:\"\";s:19:\"delete_on_uninstall\";i:0;s:21:\"disable_admin_notices\";i:0;}', 'yes'),
(287, 'wp_nf_update_fields_batch_bc777595c80a1a2f9289d4cc409fe26d', 'a:4:{i:0;a:2:{s:2:\"id\";i:1;s:8:\"settings\";a:70:{s:5:\"label\";s:4:\"Name\";s:3:\"key\";s:4:\"name\";s:9:\"parent_id\";i:1;s:4:\"type\";s:7:\"textbox\";s:10:\"created_at\";s:19:\"2018-07-18 22:05:12\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3277\";}}i:1;a:2:{s:2:\"id\";i:2;s:8:\"settings\";a:62:{s:5:\"label\";s:5:\"Email\";s:3:\"key\";s:5:\"email\";s:9:\"parent_id\";i:1;s:4:\"type\";s:5:\"email\";s:10:\"created_at\";s:19:\"2018-07-18 22:05:12\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"2\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3281\";}}i:2;a:2:{s:2:\"id\";i:3;s:8:\"settings\";a:71:{s:5:\"label\";s:7:\"Message\";s:3:\"key\";s:7:\"message\";s:9:\"parent_id\";i:1;s:4:\"type\";s:8:\"textarea\";s:10:\"created_at\";s:19:\"2018-07-18 22:05:12\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"3\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:12:\"textarea_rte\";s:0:\"\";s:18:\"disable_rte_mobile\";s:0:\"\";s:14:\"textarea_media\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3284\";}}i:3;a:2:{s:2:\"id\";i:4;s:8:\"settings\";a:69:{s:5:\"label\";s:6:\"Submit\";s:3:\"key\";s:6:\"submit\";s:9:\"parent_id\";i:1;s:4:\"type\";s:6:\"submit\";s:10:\"created_at\";s:19:\"2018-07-18 22:05:12\";s:16:\"processing_label\";s:10:\"Processing\";s:5:\"order\";s:1:\"5\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:44:\"submit_element_hover_styles_background-color\";s:0:\"\";s:34:\"submit_element_hover_styles_border\";s:0:\"\";s:40:\"submit_element_hover_styles_border-style\";s:0:\"\";s:40:\"submit_element_hover_styles_border-color\";s:0:\"\";s:33:\"submit_element_hover_styles_color\";s:0:\"\";s:34:\"submit_element_hover_styles_height\";s:0:\"\";s:33:\"submit_element_hover_styles_width\";s:0:\"\";s:37:\"submit_element_hover_styles_font-size\";s:0:\"\";s:34:\"submit_element_hover_styles_margin\";s:0:\"\";s:35:\"submit_element_hover_styles_padding\";s:0:\"\";s:35:\"submit_element_hover_styles_display\";s:0:\"\";s:33:\"submit_element_hover_styles_float\";s:0:\"\";s:45:\"submit_element_hover_styles_show_advanced_css\";s:1:\"0\";s:36:\"submit_element_hover_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3287\";}}}', 'no'),
(289, 'widget_ninja_forms_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(290, 'nf_admin_notice', 'a:1:{s:16:\"one_week_support\";a:2:{s:5:\"start\";s:9:\"7/25/2018\";s:3:\"int\";i:7;}}', 'yes'),
(291, 'nf_form_tel_data', '1', 'no'),
(292, 'ninja_forms_do_not_allow_tracking', '1', 'yes'),
(293, 'ninja_forms_optin_reported', '1', 'yes'),
(294, 'nf_sub_expiration', 'a:0:{}', 'yes'),
(295, 'nf_form_tel_sent', 'true', 'no'),
(315, 'espw_option', '', 'yes'),
(316, 'mo_dismiss_adnotice', 'true', 'yes'),
(324, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1532295112;s:7:\"checked\";a:7:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:42:\"beaver-builder-lite-version/fl-builder.php\";s:7:\"2.1.3.4\";s:99:\"enable-shortcode-and-php-support-in-text-widget/enable-shortcode-and-php-support-in-text-widget.php\";s:5:\"1.2.3\";s:9:\"hello.php\";s:3:\"1.7\";s:27:\"ninja-forms/ninja-forms.php\";s:6:\"3.3.10\";s:25:\"insert-php/insert_php.php\";s:5:\"2.0.6\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:42:\"beaver-builder-lite-version/fl-builder.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:41:\"w.org/plugins/beaver-builder-lite-version\";s:4:\"slug\";s:27:\"beaver-builder-lite-version\";s:6:\"plugin\";s:42:\"beaver-builder-lite-version/fl-builder.php\";s:11:\"new_version\";s:7:\"2.1.3.4\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/beaver-builder-lite-version/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/beaver-builder-lite-version.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/beaver-builder-lite-version/assets/icon-256x256.png?rev=1019177\";s:2:\"1x\";s:80:\"https://ps.w.org/beaver-builder-lite-version/assets/icon-128x128.png?rev=1019177\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:82:\"https://ps.w.org/beaver-builder-lite-version/assets/banner-772x250.jpg?rev=1372383\";}s:11:\"banners_rtl\";a:0:{}}s:99:\"enable-shortcode-and-php-support-in-text-widget/enable-shortcode-and-php-support-in-text-widget.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:61:\"w.org/plugins/enable-shortcode-and-php-support-in-text-widget\";s:4:\"slug\";s:47:\"enable-shortcode-and-php-support-in-text-widget\";s:6:\"plugin\";s:99:\"enable-shortcode-and-php-support-in-text-widget/enable-shortcode-and-php-support-in-text-widget.php\";s:11:\"new_version\";s:5:\"1.2.3\";s:3:\"url\";s:78:\"https://wordpress.org/plugins/enable-shortcode-and-php-support-in-text-widget/\";s:7:\"package\";s:96:\"https://downloads.wordpress.org/plugin/enable-shortcode-and-php-support-in-text-widget.1.2.3.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:98:\"https://s.w.org/plugins/geopattern-icon/enable-shortcode-and-php-support-in-text-widget_87b0c8.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:101:\"https://ps.w.org/enable-shortcode-and-php-support-in-text-widget/assets/banner-772x250.png?rev=922433\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"ninja-forms/ninja-forms.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/ninja-forms\";s:4:\"slug\";s:11:\"ninja-forms\";s:6:\"plugin\";s:27:\"ninja-forms/ninja-forms.php\";s:11:\"new_version\";s:6:\"3.3.10\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/ninja-forms/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/ninja-forms.3.3.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/ninja-forms/assets/icon-256x256.png?rev=1649747\";s:2:\"1x\";s:64:\"https://ps.w.org/ninja-forms/assets/icon-128x128.png?rev=1649747\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/ninja-forms/assets/banner-1544x500.png?rev=1649747\";s:2:\"1x\";s:66:\"https://ps.w.org/ninja-forms/assets/banner-772x250.png?rev=1649747\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"insert-php/insert_php.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/insert-php\";s:4:\"slug\";s:10:\"insert-php\";s:6:\"plugin\";s:25:\"insert-php/insert_php.php\";s:11:\"new_version\";s:5:\"2.0.6\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/insert-php/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/plugin/insert-php.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/insert-php/assets/icon-256x256.jpg?rev=1891898\";s:2:\"1x\";s:63:\"https://ps.w.org/insert-php/assets/icon-128x128.jpg?rev=1891898\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/insert-php/assets/banner-1544x500.jpg?rev=1891898\";s:2:\"1x\";s:65:\"https://ps.w.org/insert-php/assets/banner-772x250.jpg?rev=1891898\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(325, 'wbcr_inp_cache_options', 'a:11:{s:44:\"factory_404_plugin_activated_wbcr_insert_php\";i:1532085325;s:17:\"upgrade_up_to_201\";i:1;s:17:\"code_editor_theme\";b:0;s:28:\"code_editor_indent_with_tabs\";b:0;s:20:\"code_editor_tab_size\";b:0;s:23:\"code_editor_indent_unit\";b:0;s:24:\"code_editor_line_numbers\";b:0;s:22:\"code_editor_wrap_lines\";b:0;s:31:\"code_editor_auto_close_brackets\";b:0;s:39:\"code_editor_highlight_selection_matches\";b:0;s:19:\"activate_by_default\";b:0;}', 'yes'),
(326, 'wbcr_inp_factory_404_plugin_activated_wbcr_insert_php', '1532085325', 'yes'),
(327, 'factory_plugin_versions', 'a:1:{s:15:\"wbcr_insert_php\";s:10:\"free-2.0.6\";}', 'yes'),
(328, 'wbcr_inp_upgrade_up_to_201', '1', 'yes'),
(342, 'wbcr_inp_factory_dismissed_notices', 'a:1:{s:38:\"wbcr_factory_notice_inp_upgrade_plugin\";i:0;}', 'yes'),
(354, '_transient_is_multi_author', '0', 'yes'),
(357, '_site_transient_timeout_theme_roots', '1532296901', 'no'),
(358, '_site_transient_theme_roots', 'a:2:{s:7:\"Moffitt\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1532045668:1'),
(5, 7, '_edit_last', '1'),
(6, 7, '_edit_lock', '1532087110:1'),
(7, 9, '_edit_last', '1'),
(8, 9, '_edit_lock', '1532090772:1'),
(9, 11, '_edit_last', '1'),
(10, 11, '_edit_lock', '1528754431:1'),
(11, 13, '_edit_last', '1'),
(12, 13, '_edit_lock', '1528754445:1'),
(13, 15, '_edit_last', '1'),
(14, 15, '_edit_lock', '1528754450:1'),
(21, 5, '_fl_builder_draft', 'a:4:{s:13:\"5b1fbf58bee83\";O:8:\"stdClass\":5:{s:4:\"node\";s:13:\"5b1fbf58bee83\";s:4:\"type\";s:3:\"row\";s:6:\"parent\";N;s:8:\"position\";i:0;s:8:\"settings\";O:8:\"stdClass\":80:{s:5:\"width\";s:5:\"fixed\";s:13:\"content_width\";s:5:\"fixed\";s:17:\"max_content_width\";s:0:\"\";s:11:\"full_height\";s:7:\"default\";s:17:\"content_alignment\";s:6:\"center\";s:10:\"text_color\";s:0:\"\";s:10:\"link_color\";s:0:\"\";s:11:\"hover_color\";s:0:\"\";s:13:\"heading_color\";s:0:\"\";s:7:\"bg_type\";s:4:\"none\";s:8:\"bg_image\";s:0:\"\";s:9:\"bg_repeat\";s:4:\"none\";s:11:\"bg_position\";s:13:\"center center\";s:13:\"bg_attachment\";s:6:\"scroll\";s:7:\"bg_size\";s:5:\"cover\";s:15:\"bg_video_source\";s:9:\"wordpress\";s:8:\"bg_video\";s:0:\"\";s:13:\"bg_video_webm\";s:0:\"\";s:16:\"bg_video_url_mp4\";s:0:\"\";s:17:\"bg_video_url_webm\";s:0:\"\";s:20:\"bg_video_service_url\";s:0:\"\";s:14:\"bg_video_audio\";s:2:\"no\";s:17:\"bg_video_fallback\";s:0:\"\";s:9:\"ss_source\";s:9:\"wordpress\";s:9:\"ss_photos\";s:0:\"\";s:11:\"ss_feed_url\";s:0:\"\";s:8:\"ss_speed\";s:1:\"3\";s:13:\"ss_transition\";s:4:\"fade\";s:21:\"ss_transitionDuration\";s:1:\"1\";s:12:\"ss_randomize\";s:5:\"false\";s:17:\"bg_parallax_image\";s:0:\"\";s:17:\"bg_parallax_speed\";s:4:\"fast\";s:8:\"bg_color\";s:0:\"\";s:10:\"bg_opacity\";s:3:\"100\";s:16:\"bg_overlay_color\";s:0:\"\";s:18:\"bg_overlay_opacity\";s:2:\"50\";s:11:\"border_type\";s:0:\"\";s:12:\"border_color\";s:0:\"\";s:14:\"border_opacity\";s:3:\"100\";s:18:\"responsive_display\";s:0:\"\";s:18:\"visibility_display\";s:0:\"\";s:26:\"visibility_user_capability\";s:0:\"\";s:2:\"id\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"border_top\";s:0:\"\";s:17:\"border_top_medium\";s:0:\"\";s:21:\"border_top_responsive\";s:0:\"\";s:12:\"border_right\";s:0:\"\";s:19:\"border_right_medium\";s:0:\"\";s:23:\"border_right_responsive\";s:0:\"\";s:13:\"border_bottom\";s:0:\"\";s:20:\"border_bottom_medium\";s:0:\"\";s:24:\"border_bottom_responsive\";s:0:\"\";s:11:\"border_left\";s:0:\"\";s:18:\"border_left_medium\";s:0:\"\";s:22:\"border_left_responsive\";s:0:\"\";s:10:\"margin_top\";s:0:\"\";s:17:\"margin_top_medium\";s:0:\"\";s:21:\"margin_top_responsive\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:19:\"margin_right_medium\";s:0:\"\";s:23:\"margin_right_responsive\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:20:\"margin_bottom_medium\";s:0:\"\";s:24:\"margin_bottom_responsive\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:18:\"margin_left_medium\";s:0:\"\";s:22:\"margin_left_responsive\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:18:\"padding_top_medium\";s:0:\"\";s:22:\"padding_top_responsive\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:20:\"padding_right_medium\";s:0:\"\";s:24:\"padding_right_responsive\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:21:\"padding_bottom_medium\";s:0:\"\";s:25:\"padding_bottom_responsive\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:19:\"padding_left_medium\";s:0:\"\";s:23:\"padding_left_responsive\";s:0:\"\";}}s:13:\"5b1fbf58c13d3\";O:8:\"stdClass\":5:{s:4:\"node\";s:13:\"5b1fbf58c13d3\";s:4:\"type\";s:12:\"column-group\";s:6:\"parent\";s:13:\"5b1fbf58bee83\";s:8:\"position\";i:0;s:8:\"settings\";s:0:\"\";}s:13:\"5b1fbf58c14de\";O:8:\"stdClass\":5:{s:4:\"node\";s:13:\"5b1fbf58c14de\";s:4:\"type\";s:6:\"column\";s:6:\"parent\";s:13:\"5b1fbf58c13d3\";s:8:\"position\";i:0;s:8:\"settings\";O:8:\"stdClass\":1:{s:4:\"size\";i:100;}}s:13:\"5b1fbf58bec7d\";O:8:\"stdClass\":5:{s:4:\"node\";s:13:\"5b1fbf58bec7d\";s:4:\"type\";s:6:\"module\";s:6:\"parent\";s:13:\"5b1fbf58c14de\";s:8:\"position\";i:0;s:8:\"settings\";O:8:\"stdClass\":21:{s:4:\"html\";s:68:\"<div style=\"height: 1000px; width: auto; margin: 0 auto;\">asdf</div>\";s:18:\"responsive_display\";s:0:\"\";s:18:\"visibility_display\";s:0:\"\";s:26:\"visibility_user_capability\";s:0:\"\";s:9:\"animation\";s:0:\"\";s:15:\"animation_delay\";s:3:\"0.0\";s:2:\"id\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"margin_top\";s:0:\"\";s:17:\"margin_top_medium\";s:0:\"\";s:21:\"margin_top_responsive\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:19:\"margin_right_medium\";s:0:\"\";s:23:\"margin_right_responsive\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:20:\"margin_bottom_medium\";s:0:\"\";s:24:\"margin_bottom_responsive\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:18:\"margin_left_medium\";s:0:\"\";s:22:\"margin_left_responsive\";s:0:\"\";s:4:\"type\";s:4:\"html\";}}}'),
(22, 5, '_fl_builder_draft_settings', 'O:8:\"stdClass\":2:{s:3:\"css\";s:0:\"\";s:2:\"js\";s:0:\"\";}'),
(23, 19, '_menu_item_type', 'post_type'),
(24, 19, '_menu_item_menu_item_parent', '0'),
(25, 19, '_menu_item_object_id', '15'),
(26, 19, '_menu_item_object', 'page'),
(27, 19, '_menu_item_target', ''),
(28, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(29, 19, '_menu_item_xfn', ''),
(30, 19, '_menu_item_url', ''),
(32, 20, '_menu_item_type', 'post_type'),
(33, 20, '_menu_item_menu_item_parent', '0'),
(34, 20, '_menu_item_object_id', '13'),
(35, 20, '_menu_item_object', 'page'),
(36, 20, '_menu_item_target', ''),
(37, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(38, 20, '_menu_item_xfn', ''),
(39, 20, '_menu_item_url', ''),
(41, 21, '_menu_item_type', 'post_type'),
(42, 21, '_menu_item_menu_item_parent', '0'),
(43, 21, '_menu_item_object_id', '11'),
(44, 21, '_menu_item_object', 'page'),
(45, 21, '_menu_item_target', ''),
(46, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(47, 21, '_menu_item_xfn', ''),
(48, 21, '_menu_item_url', ''),
(50, 22, '_menu_item_type', 'post_type'),
(51, 22, '_menu_item_menu_item_parent', '0'),
(52, 22, '_menu_item_object_id', '9'),
(53, 22, '_menu_item_object', 'page'),
(54, 22, '_menu_item_target', ''),
(55, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 22, '_menu_item_xfn', ''),
(57, 22, '_menu_item_url', ''),
(59, 23, '_menu_item_type', 'post_type'),
(60, 23, '_menu_item_menu_item_parent', '0'),
(61, 23, '_menu_item_object_id', '7'),
(62, 23, '_menu_item_object', 'page'),
(63, 23, '_menu_item_target', ''),
(64, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(65, 23, '_menu_item_xfn', ''),
(66, 23, '_menu_item_url', ''),
(77, 5, '_fl_builder_data', 'a:4:{s:13:\"5b1fbf58bee83\";O:8:\"stdClass\":5:{s:4:\"node\";s:13:\"5b1fbf58bee83\";s:4:\"type\";s:3:\"row\";s:6:\"parent\";N;s:8:\"position\";i:0;s:8:\"settings\";O:8:\"stdClass\":80:{s:5:\"width\";s:5:\"fixed\";s:13:\"content_width\";s:5:\"fixed\";s:17:\"max_content_width\";s:0:\"\";s:11:\"full_height\";s:7:\"default\";s:17:\"content_alignment\";s:6:\"center\";s:10:\"text_color\";s:0:\"\";s:10:\"link_color\";s:0:\"\";s:11:\"hover_color\";s:0:\"\";s:13:\"heading_color\";s:0:\"\";s:7:\"bg_type\";s:4:\"none\";s:8:\"bg_image\";s:0:\"\";s:9:\"bg_repeat\";s:4:\"none\";s:11:\"bg_position\";s:13:\"center center\";s:13:\"bg_attachment\";s:6:\"scroll\";s:7:\"bg_size\";s:5:\"cover\";s:15:\"bg_video_source\";s:9:\"wordpress\";s:8:\"bg_video\";s:0:\"\";s:13:\"bg_video_webm\";s:0:\"\";s:16:\"bg_video_url_mp4\";s:0:\"\";s:17:\"bg_video_url_webm\";s:0:\"\";s:20:\"bg_video_service_url\";s:0:\"\";s:14:\"bg_video_audio\";s:2:\"no\";s:17:\"bg_video_fallback\";s:0:\"\";s:9:\"ss_source\";s:9:\"wordpress\";s:9:\"ss_photos\";s:0:\"\";s:11:\"ss_feed_url\";s:0:\"\";s:8:\"ss_speed\";s:1:\"3\";s:13:\"ss_transition\";s:4:\"fade\";s:21:\"ss_transitionDuration\";s:1:\"1\";s:12:\"ss_randomize\";s:5:\"false\";s:17:\"bg_parallax_image\";s:0:\"\";s:17:\"bg_parallax_speed\";s:4:\"fast\";s:8:\"bg_color\";s:0:\"\";s:10:\"bg_opacity\";s:3:\"100\";s:16:\"bg_overlay_color\";s:0:\"\";s:18:\"bg_overlay_opacity\";s:2:\"50\";s:11:\"border_type\";s:0:\"\";s:12:\"border_color\";s:0:\"\";s:14:\"border_opacity\";s:3:\"100\";s:18:\"responsive_display\";s:0:\"\";s:18:\"visibility_display\";s:0:\"\";s:26:\"visibility_user_capability\";s:0:\"\";s:2:\"id\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"border_top\";s:0:\"\";s:17:\"border_top_medium\";s:0:\"\";s:21:\"border_top_responsive\";s:0:\"\";s:12:\"border_right\";s:0:\"\";s:19:\"border_right_medium\";s:0:\"\";s:23:\"border_right_responsive\";s:0:\"\";s:13:\"border_bottom\";s:0:\"\";s:20:\"border_bottom_medium\";s:0:\"\";s:24:\"border_bottom_responsive\";s:0:\"\";s:11:\"border_left\";s:0:\"\";s:18:\"border_left_medium\";s:0:\"\";s:22:\"border_left_responsive\";s:0:\"\";s:10:\"margin_top\";s:0:\"\";s:17:\"margin_top_medium\";s:0:\"\";s:21:\"margin_top_responsive\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:19:\"margin_right_medium\";s:0:\"\";s:23:\"margin_right_responsive\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:20:\"margin_bottom_medium\";s:0:\"\";s:24:\"margin_bottom_responsive\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:18:\"margin_left_medium\";s:0:\"\";s:22:\"margin_left_responsive\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:18:\"padding_top_medium\";s:0:\"\";s:22:\"padding_top_responsive\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:20:\"padding_right_medium\";s:0:\"\";s:24:\"padding_right_responsive\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:21:\"padding_bottom_medium\";s:0:\"\";s:25:\"padding_bottom_responsive\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:19:\"padding_left_medium\";s:0:\"\";s:23:\"padding_left_responsive\";s:0:\"\";}}s:13:\"5b1fbf58c13d3\";O:8:\"stdClass\":5:{s:4:\"node\";s:13:\"5b1fbf58c13d3\";s:4:\"type\";s:12:\"column-group\";s:6:\"parent\";s:13:\"5b1fbf58bee83\";s:8:\"position\";i:0;s:8:\"settings\";s:0:\"\";}s:13:\"5b1fbf58c14de\";O:8:\"stdClass\":5:{s:4:\"node\";s:13:\"5b1fbf58c14de\";s:4:\"type\";s:6:\"column\";s:6:\"parent\";s:13:\"5b1fbf58c13d3\";s:8:\"position\";i:0;s:8:\"settings\";O:8:\"stdClass\":1:{s:4:\"size\";i:100;}}s:13:\"5b1fbf58bec7d\";O:8:\"stdClass\":5:{s:4:\"node\";s:13:\"5b1fbf58bec7d\";s:4:\"type\";s:6:\"module\";s:6:\"parent\";s:13:\"5b1fbf58c14de\";s:8:\"position\";i:0;s:8:\"settings\";O:8:\"stdClass\":21:{s:4:\"html\";s:68:\"<div style=\"height: 1000px; width: auto; margin: 0 auto;\">asdf</div>\";s:18:\"responsive_display\";s:0:\"\";s:18:\"visibility_display\";s:0:\"\";s:26:\"visibility_user_capability\";s:0:\"\";s:9:\"animation\";s:0:\"\";s:15:\"animation_delay\";s:3:\"0.0\";s:2:\"id\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"margin_top\";s:0:\"\";s:17:\"margin_top_medium\";s:0:\"\";s:21:\"margin_top_responsive\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:19:\"margin_right_medium\";s:0:\"\";s:23:\"margin_right_responsive\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:20:\"margin_bottom_medium\";s:0:\"\";s:24:\"margin_bottom_responsive\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:18:\"margin_left_medium\";s:0:\"\";s:22:\"margin_left_responsive\";s:0:\"\";s:4:\"type\";s:4:\"html\";}}}'),
(78, 5, '_fl_builder_data_settings', 'O:8:\"stdClass\":2:{s:3:\"css\";s:0:\"\";s:2:\"js\";s:0:\"\";}'),
(79, 5, '_fl_builder_enabled', '1'),
(80, 25, '_fl_builder_data', 'a:4:{s:13:\"5b1fbf58bee83\";O:8:\"stdClass\":5:{s:4:\"node\";s:13:\"5b1fbf58bee83\";s:4:\"type\";s:3:\"row\";s:6:\"parent\";N;s:8:\"position\";i:0;s:8:\"settings\";O:8:\"stdClass\":80:{s:5:\"width\";s:5:\"fixed\";s:13:\"content_width\";s:5:\"fixed\";s:17:\"max_content_width\";s:0:\"\";s:11:\"full_height\";s:7:\"default\";s:17:\"content_alignment\";s:6:\"center\";s:10:\"text_color\";s:0:\"\";s:10:\"link_color\";s:0:\"\";s:11:\"hover_color\";s:0:\"\";s:13:\"heading_color\";s:0:\"\";s:7:\"bg_type\";s:4:\"none\";s:8:\"bg_image\";s:0:\"\";s:9:\"bg_repeat\";s:4:\"none\";s:11:\"bg_position\";s:13:\"center center\";s:13:\"bg_attachment\";s:6:\"scroll\";s:7:\"bg_size\";s:5:\"cover\";s:15:\"bg_video_source\";s:9:\"wordpress\";s:8:\"bg_video\";s:0:\"\";s:13:\"bg_video_webm\";s:0:\"\";s:16:\"bg_video_url_mp4\";s:0:\"\";s:17:\"bg_video_url_webm\";s:0:\"\";s:20:\"bg_video_service_url\";s:0:\"\";s:14:\"bg_video_audio\";s:2:\"no\";s:17:\"bg_video_fallback\";s:0:\"\";s:9:\"ss_source\";s:9:\"wordpress\";s:9:\"ss_photos\";s:0:\"\";s:11:\"ss_feed_url\";s:0:\"\";s:8:\"ss_speed\";s:1:\"3\";s:13:\"ss_transition\";s:4:\"fade\";s:21:\"ss_transitionDuration\";s:1:\"1\";s:12:\"ss_randomize\";s:5:\"false\";s:17:\"bg_parallax_image\";s:0:\"\";s:17:\"bg_parallax_speed\";s:4:\"fast\";s:8:\"bg_color\";s:0:\"\";s:10:\"bg_opacity\";s:3:\"100\";s:16:\"bg_overlay_color\";s:0:\"\";s:18:\"bg_overlay_opacity\";s:2:\"50\";s:11:\"border_type\";s:0:\"\";s:12:\"border_color\";s:0:\"\";s:14:\"border_opacity\";s:3:\"100\";s:18:\"responsive_display\";s:0:\"\";s:18:\"visibility_display\";s:0:\"\";s:26:\"visibility_user_capability\";s:0:\"\";s:2:\"id\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"border_top\";s:0:\"\";s:17:\"border_top_medium\";s:0:\"\";s:21:\"border_top_responsive\";s:0:\"\";s:12:\"border_right\";s:0:\"\";s:19:\"border_right_medium\";s:0:\"\";s:23:\"border_right_responsive\";s:0:\"\";s:13:\"border_bottom\";s:0:\"\";s:20:\"border_bottom_medium\";s:0:\"\";s:24:\"border_bottom_responsive\";s:0:\"\";s:11:\"border_left\";s:0:\"\";s:18:\"border_left_medium\";s:0:\"\";s:22:\"border_left_responsive\";s:0:\"\";s:10:\"margin_top\";s:0:\"\";s:17:\"margin_top_medium\";s:0:\"\";s:21:\"margin_top_responsive\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:19:\"margin_right_medium\";s:0:\"\";s:23:\"margin_right_responsive\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:20:\"margin_bottom_medium\";s:0:\"\";s:24:\"margin_bottom_responsive\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:18:\"margin_left_medium\";s:0:\"\";s:22:\"margin_left_responsive\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:18:\"padding_top_medium\";s:0:\"\";s:22:\"padding_top_responsive\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:20:\"padding_right_medium\";s:0:\"\";s:24:\"padding_right_responsive\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:21:\"padding_bottom_medium\";s:0:\"\";s:25:\"padding_bottom_responsive\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:19:\"padding_left_medium\";s:0:\"\";s:23:\"padding_left_responsive\";s:0:\"\";}}s:13:\"5b1fbf58c13d3\";O:8:\"stdClass\":5:{s:4:\"node\";s:13:\"5b1fbf58c13d3\";s:4:\"type\";s:12:\"column-group\";s:6:\"parent\";s:13:\"5b1fbf58bee83\";s:8:\"position\";i:0;s:8:\"settings\";s:0:\"\";}s:13:\"5b1fbf58c14de\";O:8:\"stdClass\":5:{s:4:\"node\";s:13:\"5b1fbf58c14de\";s:4:\"type\";s:6:\"column\";s:6:\"parent\";s:13:\"5b1fbf58c13d3\";s:8:\"position\";i:0;s:8:\"settings\";O:8:\"stdClass\":1:{s:4:\"size\";i:100;}}s:13:\"5b1fbf58bec7d\";O:8:\"stdClass\":5:{s:4:\"node\";s:13:\"5b1fbf58bec7d\";s:4:\"type\";s:6:\"module\";s:6:\"parent\";s:13:\"5b1fbf58c14de\";s:8:\"position\";i:0;s:8:\"settings\";O:8:\"stdClass\":21:{s:4:\"html\";s:68:\"<div style=\"height: 1000px; width: auto; margin: 0 auto;\">asdf</div>\";s:18:\"responsive_display\";s:0:\"\";s:18:\"visibility_display\";s:0:\"\";s:26:\"visibility_user_capability\";s:0:\"\";s:9:\"animation\";s:0:\"\";s:15:\"animation_delay\";s:3:\"0.0\";s:2:\"id\";s:0:\"\";s:5:\"class\";s:0:\"\";s:10:\"margin_top\";s:0:\"\";s:17:\"margin_top_medium\";s:0:\"\";s:21:\"margin_top_responsive\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:19:\"margin_right_medium\";s:0:\"\";s:23:\"margin_right_responsive\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:20:\"margin_bottom_medium\";s:0:\"\";s:24:\"margin_bottom_responsive\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:18:\"margin_left_medium\";s:0:\"\";s:22:\"margin_left_responsive\";s:0:\"\";s:4:\"type\";s:4:\"html\";}}}'),
(81, 25, '_fl_builder_data_settings', 'O:8:\"stdClass\":2:{s:3:\"css\";s:0:\"\";s:2:\"js\";s:0:\"\";}'),
(92, 27, '_wp_attached_file', '2018/07/header.png'),
(93, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1207;s:6:\"height\";i:687;s:4:\"file\";s:18:\"2018/07/header.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"header-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"header-300x171.png\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"header-768x437.png\";s:5:\"width\";i:768;s:6:\"height\";i:437;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"header-1024x583.png\";s:5:\"width\";i:1024;s:6:\"height\";i:583;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:18:\"header-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(94, 27, '_wp_attachment_custom_header_last_used_Moffitt', '1531396053'),
(95, 27, '_wp_attachment_is_custom_header', 'Moffitt'),
(96, 28, '_wp_trash_meta_status', 'publish'),
(97, 28, '_wp_trash_meta_time', '1531396053'),
(102, 29, '_edit_last', '1'),
(103, 29, 'field_5b4a851062382', 'a:14:{s:3:\"key\";s:19:\"field_5b4a851062382\";s:5:\"label\";s:10:\"CTA Header\";s:4:\"name\";s:10:\"cta_header\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(104, 29, 'field_5b4a853f62383', 'a:14:{s:3:\"key\";s:19:\"field_5b4a853f62383\";s:5:\"label\";s:8:\"CTA Text\";s:4:\"name\";s:8:\"cta_text\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(105, 29, 'field_5b4a855062384', 'a:14:{s:3:\"key\";s:19:\"field_5b4a855062384\";s:5:\"label\";s:14:\"CTA Button URL\";s:4:\"name\";s:7:\"cta_url\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(106, 29, 'field_5b4a856462385', 'a:14:{s:3:\"key\";s:19:\"field_5b4a856462385\";s:5:\"label\";s:15:\"CTA Button Text\";s:4:\"name\";s:15:\"cta_button_text\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(108, 29, 'position', 'acf_after_title'),
(109, 29, 'layout', 'no_box'),
(110, 29, 'hide_on_screen', ''),
(111, 29, '_edit_lock', '1532046815:1'),
(112, 30, 'cta_header', 'The right people get the job done.'),
(113, 30, '_cta_header', 'field_5b4a851062382'),
(114, 30, 'cta_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dlam nonummy nibh eulsmod tincidunt ut laoreet dolora magna aliquam erat volupat.'),
(115, 30, '_cta_text', 'field_5b4a853f62383'),
(116, 30, 'cta_url', '#'),
(117, 30, '_cta_url', 'field_5b4a855062384'),
(118, 30, 'cta_button_text', 'Find Your Fit'),
(119, 30, '_cta_button_text', 'field_5b4a856462385'),
(120, 5, 'cta_header', 'The right people get the job done.'),
(121, 5, '_cta_header', 'field_5b4a851062382'),
(122, 5, 'cta_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dlam nonummy nibh eulsmod tincidunt ut laoreet dolora magna aliquam erat volupat.'),
(123, 5, '_cta_text', 'field_5b4a853f62383'),
(124, 5, 'cta_url', '#'),
(125, 5, '_cta_url', 'field_5b4a855062384'),
(126, 5, 'cta_button_text', 'Find Your Fit'),
(127, 5, '_cta_button_text', 'field_5b4a856462385'),
(128, 32, '_wp_attached_file', '2018/07/logo_placeholder.png'),
(129, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1687;s:6:\"height\";i:255;s:4:\"file\";s:28:\"2018/07/logo_placeholder.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"logo_placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"logo_placeholder-300x45.png\";s:5:\"width\";i:300;s:6:\"height\";i:45;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"logo_placeholder-768x116.png\";s:5:\"width\";i:768;s:6:\"height\";i:116;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"logo_placeholder-1024x155.png\";s:5:\"width\";i:1024;s:6:\"height\";i:155;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:28:\"logo_placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(130, 32, '_wp_attachment_image_alt', 'Moffitt Intl'),
(131, 33, '_wp_attached_file', '2018/07/cropped-logo_placeholder.png'),
(132, 33, '_wp_attachment_context', 'custom-logo'),
(133, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1653;s:6:\"height\";i:250;s:4:\"file\";s:36:\"2018/07/cropped-logo_placeholder.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-logo_placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"cropped-logo_placeholder-300x45.png\";s:5:\"width\";i:300;s:6:\"height\";i:45;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"cropped-logo_placeholder-768x116.png\";s:5:\"width\";i:768;s:6:\"height\";i:116;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"cropped-logo_placeholder-1024x155.png\";s:5:\"width\";i:1024;s:6:\"height\";i:155;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:36:\"cropped-logo_placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(134, 34, '_wp_trash_meta_status', 'publish'),
(135, 34, '_wp_trash_meta_time', '1531613093'),
(136, 29, 'field_5b4d2e4b9ee86', 'a:14:{s:3:\"key\";s:19:\"field_5b4d2e4b9ee86\";s:5:\"label\";s:22:\"Featured Article Title\";s:4:\"name\";s:22:\"featured_article_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(137, 29, 'field_5b4d2ee29ee87', 'a:14:{s:3:\"key\";s:19:\"field_5b4d2ee29ee87\";s:5:\"label\";s:29:\"Featured Article Introduction\";s:4:\"name\";s:22:\"featured_article_intro\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:3:\"120\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(138, 29, 'field_5b4d2f139ee88', 'a:14:{s:3:\"key\";s:19:\"field_5b4d2f139ee88\";s:5:\"label\";s:27:\"Featured Article Button URL\";s:4:\"name\";s:27:\"featured_article_button_url\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}'),
(139, 29, 'field_5b4d2f569ee89', 'a:14:{s:3:\"key\";s:19:\"field_5b4d2f569ee89\";s:5:\"label\";s:28:\"Featured Article Button Text\";s:4:\"name\";s:28:\"featured_article_button_text\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:10:\"Learn More\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:7;}'),
(140, 29, 'field_5b4d2f829ee8a', 'a:11:{s:3:\"key\";s:19:\"field_5b4d2f829ee8a\";s:5:\"label\";s:22:\"Featured Article Image\";s:4:\"name\";s:22:\"featured_article_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:9;}'),
(142, 36, '_wp_attached_file', '2018/07/AdobeStock_150572434_Preview.jpeg'),
(143, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:749;s:4:\"file\";s:41:\"2018/07/AdobeStock_150572434_Preview.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"AdobeStock_150572434_Preview-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"AdobeStock_150572434_Preview-300x225.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"AdobeStock_150572434_Preview-768x575.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:575;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:41:\"AdobeStock_150572434_Preview-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:29:\"9parusnikov - stock.adobe.com\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:31:\"©9parusnikov - stock.adobe.com\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(144, 37, 'cta_header', 'The right people get the job done.'),
(145, 37, '_cta_header', 'field_5b4a851062382'),
(146, 37, 'cta_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dlam nonummy nibh eulsmod tincidunt ut laoreet dolora magna aliquam erat volupat.'),
(147, 37, '_cta_text', 'field_5b4a853f62383'),
(148, 37, 'cta_url', '#'),
(149, 37, '_cta_url', 'field_5b4a855062384'),
(150, 37, 'cta_button_text', 'Find Your Fit'),
(151, 37, '_cta_button_text', 'field_5b4a856462385'),
(152, 37, 'featured_article_title', 'Our Keys to Successful Career Transitions in Today\'s Economy'),
(153, 37, '_featured_article_title', 'field_5b4d2e4b9ee86'),
(154, 37, 'featured_article_intro', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut loreat.'),
(155, 37, '_featured_article_intro', 'field_5b4d2ee29ee87'),
(156, 37, 'featured_article_button_url', '#'),
(157, 37, '_featured_article_button_url', 'field_5b4d2f139ee88'),
(158, 37, 'featured_article_button_text', 'Learn More'),
(159, 37, '_featured_article_button_text', 'field_5b4d2f569ee89'),
(160, 37, 'featured_article_image', '36'),
(161, 37, '_featured_article_image', 'field_5b4d2f829ee8a'),
(162, 5, 'featured_article_title', 'Our Keys to Successful Career Transitions in Today\'s Economy'),
(163, 5, '_featured_article_title', 'field_5b4d2e4b9ee86'),
(164, 5, 'featured_article_intro', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut loreat.'),
(165, 5, '_featured_article_intro', 'field_5b4d2ee29ee87'),
(166, 5, 'featured_article_button_url', '#'),
(167, 5, '_featured_article_button_url', 'field_5b4d2f139ee88'),
(168, 5, 'featured_article_button_text', 'Learn More'),
(169, 5, '_featured_article_button_text', 'field_5b4d2f569ee89'),
(170, 5, 'featured_article_image', '57'),
(171, 5, '_featured_article_image', 'field_5b4d2f829ee8a'),
(172, 38, 'cta_header', 'The right people get the job done.'),
(173, 38, '_cta_header', 'field_5b4a851062382'),
(174, 38, 'cta_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dlam nonummy nibh eulsmod tincidunt ut laoreet dolora magna aliquam erat volupat.'),
(175, 38, '_cta_text', 'field_5b4a853f62383'),
(176, 38, 'cta_url', '#'),
(177, 38, '_cta_url', 'field_5b4a855062384'),
(178, 38, 'cta_button_text', 'Find Your Fit'),
(179, 38, '_cta_button_text', 'field_5b4a856462385'),
(180, 38, 'featured_article_title', 'Our Keys to Successful Career Transitions in Today\'s Economy'),
(181, 38, '_featured_article_title', 'field_5b4d2e4b9ee86'),
(182, 38, 'featured_article_intro', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut loreat.'),
(183, 38, '_featured_article_intro', 'field_5b4d2ee29ee87'),
(184, 38, 'featured_article_button_url', '#'),
(185, 38, '_featured_article_button_url', 'field_5b4d2f139ee88'),
(186, 38, 'featured_article_button_text', 'Learn More'),
(187, 38, '_featured_article_button_text', 'field_5b4d2f569ee89'),
(188, 38, 'featured_article_image', '36'),
(189, 38, '_featured_article_image', 'field_5b4d2f829ee8a'),
(190, 29, 'field_5b4e7464aabdb', 'a:9:{s:3:\"key\";s:19:\"field_5b4e7464aabdb\";s:5:\"label\";s:29:\"Featured Article Button Color\";s:4:\"name\";s:29:\"featured_article_button_color\";s:4:\"type\";s:12:\"color_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:8;}'),
(192, 40, 'cta_header', 'The right people get the job done.'),
(193, 40, '_cta_header', 'field_5b4a851062382'),
(194, 40, 'cta_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dlam nonummy nibh eulsmod tincidunt ut laoreet dolora magna aliquam erat volupat.'),
(195, 40, '_cta_text', 'field_5b4a853f62383'),
(196, 40, 'cta_url', '#'),
(197, 40, '_cta_url', 'field_5b4a855062384'),
(198, 40, 'cta_button_text', 'Find Your Fit'),
(199, 40, '_cta_button_text', 'field_5b4a856462385'),
(200, 40, 'featured_article_title', 'Our Keys to Successful Career Transitions in Today\'s Economy'),
(201, 40, '_featured_article_title', 'field_5b4d2e4b9ee86'),
(202, 40, 'featured_article_intro', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut loreat.'),
(203, 40, '_featured_article_intro', 'field_5b4d2ee29ee87'),
(204, 40, 'featured_article_button_url', '#'),
(205, 40, '_featured_article_button_url', 'field_5b4d2f139ee88'),
(206, 40, 'featured_article_button_text', 'Learn More'),
(207, 40, '_featured_article_button_text', 'field_5b4d2f569ee89'),
(208, 40, 'featured_article_button_color', '#de5b49'),
(209, 40, '_featured_article_button_color', 'field_5b4e7464aabdb'),
(210, 40, 'featured_article_image', '36'),
(211, 40, '_featured_article_image', 'field_5b4d2f829ee8a'),
(212, 5, 'featured_article_button_color', '#445faa'),
(213, 5, '_featured_article_button_color', 'field_5b4e7464aabdb'),
(214, 29, 'field_5b4e86c50b367', 'a:9:{s:3:\"key\";s:19:\"field_5b4e86c50b367\";s:5:\"label\";s:27:\"Callout #1 Background Color\";s:4:\"name\";s:26:\"callout_1_background_color\";s:4:\"type\";s:12:\"color_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:10;}'),
(215, 29, 'field_5b4e86e10b368', 'a:14:{s:3:\"key\";s:19:\"field_5b4e86e10b368\";s:5:\"label\";s:16:\"Callout #1 Title\";s:4:\"name\";s:15:\"callout_1_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:11;}'),
(216, 29, 'field_5b4e87040b369', 'a:14:{s:3:\"key\";s:19:\"field_5b4e87040b369\";s:5:\"label\";s:23:\"Callout #1 Introduction\";s:4:\"name\";s:22:\"callout_1_introduction\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:12;}'),
(217, 29, 'field_5b4e87160b36a', 'a:11:{s:3:\"key\";s:19:\"field_5b4e87160b36a\";s:5:\"label\";s:21:\"Callout #1 Button URL\";s:4:\"name\";s:20:\"callout_1_button_url\";s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:9:\"post_type\";a:1:{i:0;s:3:\"all\";}s:10:\"allow_null\";s:1:\"0\";s:8:\"multiple\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:13;}'),
(218, 29, 'field_5b4e87490b36b', 'a:14:{s:3:\"key\";s:19:\"field_5b4e87490b36b\";s:5:\"label\";s:22:\"Callout #1 Button Text\";s:4:\"name\";s:21:\"callout_1_button_text\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:14;}'),
(219, 29, 'field_5b4e876d0b36d', 'a:9:{s:3:\"key\";s:19:\"field_5b4e876d0b36d\";s:5:\"label\";s:27:\"Callout #2 Background Color\";s:4:\"name\";s:26:\"callout_2_background_color\";s:4:\"type\";s:12:\"color_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:15;}'),
(220, 29, 'field_5b4e879b0b36f', 'a:14:{s:3:\"key\";s:19:\"field_5b4e879b0b36f\";s:5:\"label\";s:23:\"Callout #2 Introduction\";s:4:\"name\";s:22:\"callout_2_introduction\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:17;}'),
(221, 29, 'field_5b4e878c0b36e', 'a:14:{s:3:\"key\";s:19:\"field_5b4e878c0b36e\";s:5:\"label\";s:16:\"Callout #2 Title\";s:4:\"name\";s:15:\"callout_2_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:16;}'),
(222, 29, 'field_5b4e87ab0b370', 'a:11:{s:3:\"key\";s:19:\"field_5b4e87ab0b370\";s:5:\"label\";s:21:\"Callout #2 Button URL\";s:4:\"name\";s:20:\"callout_2_button_url\";s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:9:\"post_type\";a:1:{i:0;s:3:\"all\";}s:10:\"allow_null\";s:1:\"0\";s:8:\"multiple\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:18;}'),
(223, 29, 'field_5b4e87bf0b371', 'a:14:{s:3:\"key\";s:19:\"field_5b4e87bf0b371\";s:5:\"label\";s:22:\"Callout #2 Button Text\";s:4:\"name\";s:21:\"callout_2_button_text\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:19;}'),
(225, 41, 'cta_header', 'The right people get the job done.'),
(226, 41, '_cta_header', 'field_5b4a851062382'),
(227, 41, 'cta_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dlam nonummy nibh eulsmod tincidunt ut laoreet dolora magna aliquam erat volupat.'),
(228, 41, '_cta_text', 'field_5b4a853f62383'),
(229, 41, 'cta_url', '#'),
(230, 41, '_cta_url', 'field_5b4a855062384'),
(231, 41, 'cta_button_text', 'Find Your Fit'),
(232, 41, '_cta_button_text', 'field_5b4a856462385'),
(233, 41, 'featured_article_title', 'Our Keys to Successful Career Transitions in Today\'s Economy'),
(234, 41, '_featured_article_title', 'field_5b4d2e4b9ee86'),
(235, 41, 'featured_article_intro', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut loreat.'),
(236, 41, '_featured_article_intro', 'field_5b4d2ee29ee87'),
(237, 41, 'featured_article_button_url', '#'),
(238, 41, '_featured_article_button_url', 'field_5b4d2f139ee88'),
(239, 41, 'featured_article_button_text', 'Learn More'),
(240, 41, '_featured_article_button_text', 'field_5b4d2f569ee89'),
(241, 41, 'featured_article_button_color', '#de5b49'),
(242, 41, '_featured_article_button_color', 'field_5b4e7464aabdb'),
(243, 41, 'featured_article_image', '36'),
(244, 41, '_featured_article_image', 'field_5b4d2f829ee8a'),
(245, 41, 'callout_1_background_color', '#de5b49'),
(246, 41, '_callout_1_background_color', 'field_5b4e86c50b367'),
(247, 41, 'callout_1_title', ' The possibilities are just beginning'),
(248, 41, '_callout_1_title', 'field_5b4e86e10b368'),
(249, 41, 'callout_1_introduction', 'Our experience in professional recruiting allows us to understand your needs and find the perfect candidates, no matter the position.'),
(250, 41, '_callout_1_introduction', 'field_5b4e87040b369'),
(251, 41, 'callout_1_button_url', '9'),
(252, 41, '_callout_1_button_url', 'field_5b4e87160b36a'),
(253, 41, 'callout_1_button_text', 'Discover our capabilities'),
(254, 41, '_callout_1_button_text', 'field_5b4e87490b36b'),
(255, 41, 'callout_2_background_color', '#8b4fbf'),
(256, 41, '_callout_2_background_color', 'field_5b4e876d0b36d'),
(257, 41, 'callout_2_introduction', ' Serving the industries moving us forward'),
(258, 41, '_callout_2_introduction', 'field_5b4e879b0b36f'),
(259, 41, 'callout_2_title', 'Our story begins in construction but doesn’t stop there. Now proudly serving a variety of industries including legal, energy, construction, and more.'),
(260, 41, '_callout_2_title', 'field_5b4e878c0b36e'),
(261, 41, 'callout_2_button_url', '7'),
(262, 41, '_callout_2_button_url', 'field_5b4e87ab0b370'),
(263, 41, 'callout_#2_button_text', 'Explore our industries'),
(264, 41, '_callout_#2_button_text', 'field_5b4e87bf0b371'),
(265, 5, 'callout_1_background_color', '#de5b49'),
(266, 5, '_callout_1_background_color', 'field_5b4e86c50b367'),
(267, 5, 'callout_1_title', ' The possibilities are just beginning'),
(268, 5, '_callout_1_title', 'field_5b4e86e10b368'),
(269, 5, 'callout_1_introduction', 'Our experience in professional recruiting allows us to understand your needs and find the perfect candidates, no matter the position.'),
(270, 5, '_callout_1_introduction', 'field_5b4e87040b369'),
(271, 5, 'callout_1_button_url', '9'),
(272, 5, '_callout_1_button_url', 'field_5b4e87160b36a'),
(273, 5, 'callout_1_button_text', 'Discover our capabilities'),
(274, 5, '_callout_1_button_text', 'field_5b4e87490b36b'),
(275, 5, 'callout_2_background_color', '#8b4fbf'),
(276, 5, '_callout_2_background_color', 'field_5b4e876d0b36d'),
(277, 5, 'callout_2_introduction', 'Our story begins in construction but doesn’t stop there. Now proudly serving a variety of industries including legal, energy, construction, and more.'),
(278, 5, '_callout_2_introduction', 'field_5b4e879b0b36f'),
(279, 5, 'callout_2_title', ' Serving the industries moving us forward'),
(280, 5, '_callout_2_title', 'field_5b4e878c0b36e'),
(281, 5, 'callout_2_button_url', '7'),
(282, 5, '_callout_2_button_url', 'field_5b4e87ab0b370'),
(283, 5, 'callout_#2_button_text', 'Explore our industries'),
(284, 5, '_callout_#2_button_text', 'field_5b4e87bf0b371'),
(286, 42, 'cta_header', 'The right people get the job done.'),
(287, 42, '_cta_header', 'field_5b4a851062382'),
(288, 42, 'cta_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dlam nonummy nibh eulsmod tincidunt ut laoreet dolora magna aliquam erat volupat.'),
(289, 42, '_cta_text', 'field_5b4a853f62383'),
(290, 42, 'cta_url', '#'),
(291, 42, '_cta_url', 'field_5b4a855062384'),
(292, 42, 'cta_button_text', 'Find Your Fit'),
(293, 42, '_cta_button_text', 'field_5b4a856462385'),
(294, 42, 'featured_article_title', 'Our Keys to Successful Career Transitions in Today\'s Economy'),
(295, 42, '_featured_article_title', 'field_5b4d2e4b9ee86'),
(296, 42, 'featured_article_intro', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut loreat.'),
(297, 42, '_featured_article_intro', 'field_5b4d2ee29ee87'),
(298, 42, 'featured_article_button_url', '#'),
(299, 42, '_featured_article_button_url', 'field_5b4d2f139ee88'),
(300, 42, 'featured_article_button_text', 'Learn More'),
(301, 42, '_featured_article_button_text', 'field_5b4d2f569ee89'),
(302, 42, 'featured_article_button_color', '#de5b49'),
(303, 42, '_featured_article_button_color', 'field_5b4e7464aabdb'),
(304, 42, 'featured_article_image', '36'),
(305, 42, '_featured_article_image', 'field_5b4d2f829ee8a'),
(306, 42, 'callout_1_background_color', '#de5b49'),
(307, 42, '_callout_1_background_color', 'field_5b4e86c50b367'),
(308, 42, 'callout_1_title', ' The possibilities are just beginning'),
(309, 42, '_callout_1_title', 'field_5b4e86e10b368'),
(310, 42, 'callout_1_introduction', 'Our experience in professional recruiting allows us to understand your needs and find the perfect candidates, no matter the position.'),
(311, 42, '_callout_1_introduction', 'field_5b4e87040b369'),
(312, 42, 'callout_1_button_url', '9'),
(313, 42, '_callout_1_button_url', 'field_5b4e87160b36a'),
(314, 42, 'callout_1_button_text', 'Discover our capabilities'),
(315, 42, '_callout_1_button_text', 'field_5b4e87490b36b'),
(316, 42, 'callout_2_background_color', '#8b4fbf'),
(317, 42, '_callout_2_background_color', 'field_5b4e876d0b36d'),
(318, 42, 'callout_2_title', ' Serving the industries moving us forward'),
(319, 42, '_callout_2_title', 'field_5b4e878c0b36e'),
(320, 42, 'callout_2_introduction', 'Our story begins in construction but doesn’t stop there. Now proudly serving a variety of industries including legal, energy, construction, and more.'),
(321, 42, '_callout_2_introduction', 'field_5b4e879b0b36f'),
(322, 42, 'callout_2_button_url', '7'),
(323, 42, '_callout_2_button_url', 'field_5b4e87ab0b370'),
(324, 42, 'callout_#2_button_text', 'Explore our industries'),
(325, 42, '_callout_#2_button_text', 'field_5b4e87bf0b371'),
(328, 43, 'cta_header', 'The right people get the job done.'),
(329, 43, '_cta_header', 'field_5b4a851062382'),
(330, 43, 'cta_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dlam nonummy nibh eulsmod tincidunt ut laoreet dolora magna aliquam erat volupat.'),
(331, 43, '_cta_text', 'field_5b4a853f62383'),
(332, 43, 'cta_url', '#'),
(333, 43, '_cta_url', 'field_5b4a855062384'),
(334, 43, 'cta_button_text', 'Find Your Fit'),
(335, 43, '_cta_button_text', 'field_5b4a856462385'),
(336, 43, 'featured_article_title', 'Our Keys to Successful Career Transitions in Today\'s Economy'),
(337, 43, '_featured_article_title', 'field_5b4d2e4b9ee86'),
(338, 43, 'featured_article_intro', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut loreat.'),
(339, 43, '_featured_article_intro', 'field_5b4d2ee29ee87'),
(340, 43, 'featured_article_button_url', '#'),
(341, 43, '_featured_article_button_url', 'field_5b4d2f139ee88'),
(342, 43, 'featured_article_button_text', 'Learn More'),
(343, 43, '_featured_article_button_text', 'field_5b4d2f569ee89'),
(344, 43, 'featured_article_button_color', '#de5b49'),
(345, 43, '_featured_article_button_color', 'field_5b4e7464aabdb'),
(346, 43, 'featured_article_image', '36'),
(347, 43, '_featured_article_image', 'field_5b4d2f829ee8a'),
(348, 43, 'callout_1_background_color', '#de5b49'),
(349, 43, '_callout_1_background_color', 'field_5b4e86c50b367'),
(350, 43, 'callout_1_title', ' The possibilities are just beginning'),
(351, 43, '_callout_1_title', 'field_5b4e86e10b368'),
(352, 43, 'callout_1_introduction', 'Our experience in professional recruiting allows us to understand your needs and find the perfect candidates, no matter the position.'),
(353, 43, '_callout_1_introduction', 'field_5b4e87040b369'),
(354, 43, 'callout_1_button_url', '9'),
(355, 43, '_callout_1_button_url', 'field_5b4e87160b36a'),
(356, 43, 'callout_1_button_text', 'Discover our capabilities'),
(357, 43, '_callout_1_button_text', 'field_5b4e87490b36b'),
(358, 43, 'callout_2_background_color', '#8b4fbf'),
(359, 43, '_callout_2_background_color', 'field_5b4e876d0b36d'),
(360, 43, 'callout_2_title', ' Serving the industries moving us forward'),
(361, 43, '_callout_2_title', 'field_5b4e878c0b36e'),
(362, 43, 'callout_2_introduction', 'Our story begins in construction but doesn’t stop there. Now proudly serving a variety of industries including legal, energy, construction, and more.'),
(363, 43, '_callout_2_introduction', 'field_5b4e879b0b36f'),
(364, 43, 'callout_2_button_url', '7'),
(365, 43, '_callout_2_button_url', 'field_5b4e87ab0b370'),
(366, 43, 'callout_2_button_text', 'Explore our industries'),
(367, 43, '_callout_2_button_text', 'field_5b4e87bf0b371'),
(368, 5, 'callout_2_button_text', 'Explore our industries'),
(369, 5, '_callout_2_button_text', 'field_5b4e87bf0b371'),
(370, 29, 'field_5b4f12a4ed58a', 'a:14:{s:3:\"key\";s:19:\"field_5b4f12a4ed58a\";s:5:\"label\";s:14:\"About Us Title\";s:4:\"name\";s:14:\"about_us_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:20;}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(371, 29, 'field_5b4f12d6ed58b', 'a:11:{s:3:\"key\";s:19:\"field_5b4f12d6ed58b\";s:5:\"label\";s:21:\"About Us Introduction\";s:4:\"name\";s:21:\"about_us_introduction\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:21;}'),
(372, 29, 'field_5b4f12e0ed58c', 'a:11:{s:3:\"key\";s:19:\"field_5b4f12e0ed58c\";s:5:\"label\";s:19:\"About Us Button URL\";s:4:\"name\";s:19:\"about_us_button_url\";s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:9:\"post_type\";a:1:{i:0;s:3:\"all\";}s:10:\"allow_null\";s:1:\"0\";s:8:\"multiple\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:22;}'),
(373, 29, 'field_5b4f12f4ed58d', 'a:14:{s:3:\"key\";s:19:\"field_5b4f12f4ed58d\";s:5:\"label\";s:20:\"About Us Button Text\";s:4:\"name\";s:20:\"about_us_button_text\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:23;}'),
(374, 29, 'field_5b4f12ffed58e', 'a:11:{s:3:\"key\";s:19:\"field_5b4f12ffed58e\";s:5:\"label\";s:14:\"About Us Image\";s:4:\"name\";s:14:\"about_us_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:24;}'),
(377, 44, 'cta_header', 'The right people get the job done.'),
(378, 44, '_cta_header', 'field_5b4a851062382'),
(379, 44, 'cta_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dlam nonummy nibh eulsmod tincidunt ut laoreet dolora magna aliquam erat volupat.'),
(380, 44, '_cta_text', 'field_5b4a853f62383'),
(381, 44, 'cta_url', '#'),
(382, 44, '_cta_url', 'field_5b4a855062384'),
(383, 44, 'cta_button_text', 'Find Your Fit'),
(384, 44, '_cta_button_text', 'field_5b4a856462385'),
(385, 44, 'featured_article_title', 'Our Keys to Successful Career Transitions in Today\'s Economy'),
(386, 44, '_featured_article_title', 'field_5b4d2e4b9ee86'),
(387, 44, 'featured_article_intro', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut loreat.'),
(388, 44, '_featured_article_intro', 'field_5b4d2ee29ee87'),
(389, 44, 'featured_article_button_url', '#'),
(390, 44, '_featured_article_button_url', 'field_5b4d2f139ee88'),
(391, 44, 'featured_article_button_text', 'Learn More'),
(392, 44, '_featured_article_button_text', 'field_5b4d2f569ee89'),
(393, 44, 'featured_article_button_color', '#de5b49'),
(394, 44, '_featured_article_button_color', 'field_5b4e7464aabdb'),
(395, 44, 'featured_article_image', '36'),
(396, 44, '_featured_article_image', 'field_5b4d2f829ee8a'),
(397, 44, 'callout_1_background_color', '#de5b49'),
(398, 44, '_callout_1_background_color', 'field_5b4e86c50b367'),
(399, 44, 'callout_1_title', ' The possibilities are just beginning'),
(400, 44, '_callout_1_title', 'field_5b4e86e10b368'),
(401, 44, 'callout_1_introduction', 'Our experience in professional recruiting allows us to understand your needs and find the perfect candidates, no matter the position.'),
(402, 44, '_callout_1_introduction', 'field_5b4e87040b369'),
(403, 44, 'callout_1_button_url', '9'),
(404, 44, '_callout_1_button_url', 'field_5b4e87160b36a'),
(405, 44, 'callout_1_button_text', 'Discover our capabilities'),
(406, 44, '_callout_1_button_text', 'field_5b4e87490b36b'),
(407, 44, 'callout_2_background_color', '#8b4fbf'),
(408, 44, '_callout_2_background_color', 'field_5b4e876d0b36d'),
(409, 44, 'callout_2_title', ' Serving the industries moving us forward'),
(410, 44, '_callout_2_title', 'field_5b4e878c0b36e'),
(411, 44, 'callout_2_introduction', 'Our story begins in construction but doesn’t stop there. Now proudly serving a variety of industries including legal, energy, construction, and more.'),
(412, 44, '_callout_2_introduction', 'field_5b4e879b0b36f'),
(413, 44, 'callout_2_button_url', '7'),
(414, 44, '_callout_2_button_url', 'field_5b4e87ab0b370'),
(415, 44, 'callout_2_button_text', 'Explore our industries'),
(416, 44, '_callout_2_button_text', 'field_5b4e87bf0b371'),
(417, 44, 'about_us_title', 'Our expertise is your advantage'),
(418, 44, '_about_us_title', 'field_5b4f12a4ed58a'),
(419, 44, 'about_us_introduction', ''),
(420, 44, '_about_us_introduction', 'field_5b4f12d6ed58b'),
(421, 44, 'about_us_button_url', '7'),
(422, 44, '_about_us_button_url', 'field_5b4f12e0ed58c'),
(423, 44, 'about_us_button_text', 'Meet Our Team'),
(424, 44, '_about_us_button_text', 'field_5b4f12f4ed58d'),
(425, 44, 'about_us_image', ''),
(426, 44, '_about_us_image', 'field_5b4f12ffed58e'),
(427, 5, 'about_us_title', 'Our expertise is your advantage'),
(428, 5, '_about_us_title', 'field_5b4f12a4ed58a'),
(429, 5, 'about_us_introduction', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\n\r\n<strong>KEY FEATURE</strong>\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Taliat ut ipsum magna aliquam erat amet sed nihb.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(430, 5, '_about_us_introduction', 'field_5b4f12d6ed58b'),
(431, 5, 'about_us_button_url', '7'),
(432, 5, '_about_us_button_url', 'field_5b4f12e0ed58c'),
(433, 5, 'about_us_button_text', 'Meet Our Team'),
(434, 5, '_about_us_button_text', 'field_5b4f12f4ed58d'),
(435, 5, 'about_us_image', '46'),
(436, 5, '_about_us_image', 'field_5b4f12ffed58e'),
(437, 45, 'cta_header', 'The right people get the job done.'),
(438, 45, '_cta_header', 'field_5b4a851062382'),
(439, 45, 'cta_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dlam nonummy nibh eulsmod tincidunt ut laoreet dolora magna aliquam erat volupat.'),
(440, 45, '_cta_text', 'field_5b4a853f62383'),
(441, 45, 'cta_url', '#'),
(442, 45, '_cta_url', 'field_5b4a855062384'),
(443, 45, 'cta_button_text', 'Find Your Fit'),
(444, 45, '_cta_button_text', 'field_5b4a856462385'),
(445, 45, 'featured_article_title', 'Our Keys to Successful Career Transitions in Today\'s Economy'),
(446, 45, '_featured_article_title', 'field_5b4d2e4b9ee86'),
(447, 45, 'featured_article_intro', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut loreat.'),
(448, 45, '_featured_article_intro', 'field_5b4d2ee29ee87'),
(449, 45, 'featured_article_button_url', '#'),
(450, 45, '_featured_article_button_url', 'field_5b4d2f139ee88'),
(451, 45, 'featured_article_button_text', 'Learn More'),
(452, 45, '_featured_article_button_text', 'field_5b4d2f569ee89'),
(453, 45, 'featured_article_button_color', '#de5b49'),
(454, 45, '_featured_article_button_color', 'field_5b4e7464aabdb'),
(455, 45, 'featured_article_image', '36'),
(456, 45, '_featured_article_image', 'field_5b4d2f829ee8a'),
(457, 45, 'callout_1_background_color', '#de5b49'),
(458, 45, '_callout_1_background_color', 'field_5b4e86c50b367'),
(459, 45, 'callout_1_title', ' The possibilities are just beginning'),
(460, 45, '_callout_1_title', 'field_5b4e86e10b368'),
(461, 45, 'callout_1_introduction', 'Our experience in professional recruiting allows us to understand your needs and find the perfect candidates, no matter the position.'),
(462, 45, '_callout_1_introduction', 'field_5b4e87040b369'),
(463, 45, 'callout_1_button_url', '9'),
(464, 45, '_callout_1_button_url', 'field_5b4e87160b36a'),
(465, 45, 'callout_1_button_text', 'Discover our capabilities'),
(466, 45, '_callout_1_button_text', 'field_5b4e87490b36b'),
(467, 45, 'callout_2_background_color', '#8b4fbf'),
(468, 45, '_callout_2_background_color', 'field_5b4e876d0b36d'),
(469, 45, 'callout_2_title', ' Serving the industries moving us forward'),
(470, 45, '_callout_2_title', 'field_5b4e878c0b36e'),
(471, 45, 'callout_2_introduction', 'Our story begins in construction but doesn’t stop there. Now proudly serving a variety of industries including legal, energy, construction, and more.'),
(472, 45, '_callout_2_introduction', 'field_5b4e879b0b36f'),
(473, 45, 'callout_2_button_url', '7'),
(474, 45, '_callout_2_button_url', 'field_5b4e87ab0b370'),
(475, 45, 'callout_2_button_text', 'Explore our industries'),
(476, 45, '_callout_2_button_text', 'field_5b4e87bf0b371'),
(477, 45, 'about_us_title', 'Our expertise is your advantage'),
(478, 45, '_about_us_title', 'field_5b4f12a4ed58a'),
(479, 45, 'about_us_introduction', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\n\r\n<strong>KEY FEATURE</strong>\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Taliat ut ipsum magna aliquam erat amet sed nihb.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(480, 45, '_about_us_introduction', 'field_5b4f12d6ed58b'),
(481, 45, 'about_us_button_url', '7'),
(482, 45, '_about_us_button_url', 'field_5b4f12e0ed58c'),
(483, 45, 'about_us_button_text', 'Meet Our Team'),
(484, 45, '_about_us_button_text', 'field_5b4f12f4ed58d'),
(485, 45, 'about_us_image', ''),
(486, 45, '_about_us_image', 'field_5b4f12ffed58e'),
(487, 46, '_wp_attached_file', '2018/07/about_us_home.png'),
(488, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:451;s:6:\"height\";i:332;s:4:\"file\";s:25:\"2018/07/about_us_home.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"about_us_home-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"about_us_home-300x221.png\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:25:\"about_us_home-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(489, 47, 'cta_header', 'The right people get the job done.'),
(490, 47, '_cta_header', 'field_5b4a851062382'),
(491, 47, 'cta_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dlam nonummy nibh eulsmod tincidunt ut laoreet dolora magna aliquam erat volupat.'),
(492, 47, '_cta_text', 'field_5b4a853f62383'),
(493, 47, 'cta_url', '#'),
(494, 47, '_cta_url', 'field_5b4a855062384'),
(495, 47, 'cta_button_text', 'Find Your Fit'),
(496, 47, '_cta_button_text', 'field_5b4a856462385'),
(497, 47, 'featured_article_title', 'Our Keys to Successful Career Transitions in Today\'s Economy'),
(498, 47, '_featured_article_title', 'field_5b4d2e4b9ee86'),
(499, 47, 'featured_article_intro', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut loreat.'),
(500, 47, '_featured_article_intro', 'field_5b4d2ee29ee87'),
(501, 47, 'featured_article_button_url', '#'),
(502, 47, '_featured_article_button_url', 'field_5b4d2f139ee88'),
(503, 47, 'featured_article_button_text', 'Learn More'),
(504, 47, '_featured_article_button_text', 'field_5b4d2f569ee89'),
(505, 47, 'featured_article_button_color', '#de5b49'),
(506, 47, '_featured_article_button_color', 'field_5b4e7464aabdb'),
(507, 47, 'featured_article_image', '36'),
(508, 47, '_featured_article_image', 'field_5b4d2f829ee8a'),
(509, 47, 'callout_1_background_color', '#de5b49'),
(510, 47, '_callout_1_background_color', 'field_5b4e86c50b367'),
(511, 47, 'callout_1_title', ' The possibilities are just beginning'),
(512, 47, '_callout_1_title', 'field_5b4e86e10b368'),
(513, 47, 'callout_1_introduction', 'Our experience in professional recruiting allows us to understand your needs and find the perfect candidates, no matter the position.'),
(514, 47, '_callout_1_introduction', 'field_5b4e87040b369'),
(515, 47, 'callout_1_button_url', '9'),
(516, 47, '_callout_1_button_url', 'field_5b4e87160b36a'),
(517, 47, 'callout_1_button_text', 'Discover our capabilities'),
(518, 47, '_callout_1_button_text', 'field_5b4e87490b36b'),
(519, 47, 'callout_2_background_color', '#8b4fbf'),
(520, 47, '_callout_2_background_color', 'field_5b4e876d0b36d'),
(521, 47, 'callout_2_title', ' Serving the industries moving us forward'),
(522, 47, '_callout_2_title', 'field_5b4e878c0b36e'),
(523, 47, 'callout_2_introduction', 'Our story begins in construction but doesn’t stop there. Now proudly serving a variety of industries including legal, energy, construction, and more.'),
(524, 47, '_callout_2_introduction', 'field_5b4e879b0b36f'),
(525, 47, 'callout_2_button_url', '7'),
(526, 47, '_callout_2_button_url', 'field_5b4e87ab0b370'),
(527, 47, 'callout_2_button_text', 'Explore our industries'),
(528, 47, '_callout_2_button_text', 'field_5b4e87bf0b371'),
(529, 47, 'about_us_title', 'Our expertise is your advantage'),
(530, 47, '_about_us_title', 'field_5b4f12a4ed58a'),
(531, 47, 'about_us_introduction', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\n\r\n<strong>KEY FEATURE</strong>\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Taliat ut ipsum magna aliquam erat amet sed nihb.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(532, 47, '_about_us_introduction', 'field_5b4f12d6ed58b'),
(533, 47, 'about_us_button_url', '7'),
(534, 47, '_about_us_button_url', 'field_5b4f12e0ed58c'),
(535, 47, 'about_us_button_text', 'Meet Our Team'),
(536, 47, '_about_us_button_text', 'field_5b4f12f4ed58d'),
(537, 47, 'about_us_image', '46'),
(538, 47, '_about_us_image', 'field_5b4f12ffed58e'),
(539, 29, 'field_5b4f1c5288d82', 'a:14:{s:3:\"key\";s:19:\"field_5b4f1c5288d82\";s:5:\"label\";s:23:\"Secondary Callout Title\";s:4:\"name\";s:23:\"secondary_callout_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:25;}'),
(540, 29, 'field_5b4f1c6b88d83', 'a:14:{s:3:\"key\";s:19:\"field_5b4f1c6b88d83\";s:5:\"label\";s:30:\"Secondary Callout Introduction\";s:4:\"name\";s:30:\"secondary_callout_introduction\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:26;}'),
(541, 29, 'field_5b4f1c7688d84', 'a:11:{s:3:\"key\";s:19:\"field_5b4f1c7688d84\";s:5:\"label\";s:26:\"Secondary Callout #1 Image\";s:4:\"name\";s:25:\"secondary_callout_1_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:27;}'),
(542, 29, 'field_5b4f1c8988d85', 'a:14:{s:3:\"key\";s:19:\"field_5b4f1c8988d85\";s:5:\"label\";s:26:\"Secondary Callout #1 Title\";s:4:\"name\";s:25:\"secondary_callout_1_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:28;}'),
(543, 29, 'field_5b4f1c9688d86', 'a:14:{s:3:\"key\";s:19:\"field_5b4f1c9688d86\";s:5:\"label\";s:33:\"Secondary Callout #1 Introduction\";s:4:\"name\";s:32:\"secondary_callout_1_introduction\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:29;}'),
(544, 29, 'field_5b4f1ca188d87', 'a:11:{s:3:\"key\";s:19:\"field_5b4f1ca188d87\";s:5:\"label\";s:31:\"Secondary Callout #1 Button URL\";s:4:\"name\";s:30:\"secondary_callout_1_button_url\";s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:9:\"post_type\";a:1:{i:0;s:3:\"all\";}s:10:\"allow_null\";s:1:\"0\";s:8:\"multiple\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:30;}'),
(545, 29, 'field_5b4f1cc088d88', 'a:14:{s:3:\"key\";s:19:\"field_5b4f1cc088d88\";s:5:\"label\";s:32:\"Secondary Callout #1 Button Text\";s:4:\"name\";s:31:\"secondary_callout_1_button_text\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:31;}'),
(546, 29, 'field_5b4f1ccf88d89', 'a:11:{s:3:\"key\";s:19:\"field_5b4f1ccf88d89\";s:5:\"label\";s:26:\"Secondary Callout #2 Image\";s:4:\"name\";s:25:\"secondary_callout_2_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:32;}'),
(547, 29, 'field_5b4f1ce388d8a', 'a:14:{s:3:\"key\";s:19:\"field_5b4f1ce388d8a\";s:5:\"label\";s:26:\"Secondary Callout #2 Title\";s:4:\"name\";s:25:\"secondary_callout_2_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:33;}'),
(548, 29, 'field_5b4f1cf588d8b', 'a:14:{s:3:\"key\";s:19:\"field_5b4f1cf588d8b\";s:5:\"label\";s:33:\"Secondary Callout #2 Introduction\";s:4:\"name\";s:32:\"secondary_callout_2_introduction\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:34;}'),
(549, 29, 'field_5b4f1d0788d8c', 'a:11:{s:3:\"key\";s:19:\"field_5b4f1d0788d8c\";s:5:\"label\";s:31:\"Secondary Callout #2 Button URL\";s:4:\"name\";s:30:\"secondary_callout_2_button_url\";s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:9:\"post_type\";a:1:{i:0;s:3:\"all\";}s:10:\"allow_null\";s:1:\"0\";s:8:\"multiple\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:35;}'),
(550, 29, 'field_5b4f1d1988d8d', 'a:14:{s:3:\"key\";s:19:\"field_5b4f1d1988d8d\";s:5:\"label\";s:32:\"Secondary Callout #2 Button Text\";s:4:\"name\";s:31:\"secondary_callout_2_button_text\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:36;}'),
(551, 29, 'field_5b4f1d2b88d8e', 'a:11:{s:3:\"key\";s:19:\"field_5b4f1d2b88d8e\";s:5:\"label\";s:26:\"Secondary Callout #3 Image\";s:4:\"name\";s:25:\"secondary_callout_3_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:37;}'),
(552, 29, 'field_5b4f1d3c88d8f', 'a:14:{s:3:\"key\";s:19:\"field_5b4f1d3c88d8f\";s:5:\"label\";s:26:\"Secondary Callout #3 Title\";s:4:\"name\";s:25:\"secondary_callout_3_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:38;}'),
(553, 29, 'field_5b4f1d4e88d90', 'a:14:{s:3:\"key\";s:19:\"field_5b4f1d4e88d90\";s:5:\"label\";s:33:\"Secondary Callout #3 Introduction\";s:4:\"name\";s:32:\"secondary_callout_3_introduction\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:39;}'),
(554, 29, 'field_5b4f1d6088d91', 'a:11:{s:3:\"key\";s:19:\"field_5b4f1d6088d91\";s:5:\"label\";s:31:\"Secondary Callout #3 Button URL\";s:4:\"name\";s:30:\"secondary_callout_3_button_url\";s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:9:\"post_type\";a:1:{i:0;s:3:\"all\";}s:10:\"allow_null\";s:1:\"0\";s:8:\"multiple\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:40;}'),
(555, 29, 'field_5b4f1d7588d92', 'a:14:{s:3:\"key\";s:19:\"field_5b4f1d7588d92\";s:5:\"label\";s:32:\"Secondary Callout #3 Button Text\";s:4:\"name\";s:31:\"secondary_callout_3_button_text\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:41;}'),
(557, 48, 'cta_header', 'The right people get the job done.'),
(558, 48, '_cta_header', 'field_5b4a851062382'),
(559, 48, 'cta_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dlam nonummy nibh eulsmod tincidunt ut laoreet dolora magna aliquam erat volupat.'),
(560, 48, '_cta_text', 'field_5b4a853f62383'),
(561, 48, 'cta_url', '#'),
(562, 48, '_cta_url', 'field_5b4a855062384'),
(563, 48, 'cta_button_text', 'Find Your Fit'),
(564, 48, '_cta_button_text', 'field_5b4a856462385'),
(565, 48, 'featured_article_title', 'Our Keys to Successful Career Transitions in Today\'s Economy'),
(566, 48, '_featured_article_title', 'field_5b4d2e4b9ee86'),
(567, 48, 'featured_article_intro', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut loreat.'),
(568, 48, '_featured_article_intro', 'field_5b4d2ee29ee87'),
(569, 48, 'featured_article_button_url', '#'),
(570, 48, '_featured_article_button_url', 'field_5b4d2f139ee88'),
(571, 48, 'featured_article_button_text', 'Learn More'),
(572, 48, '_featured_article_button_text', 'field_5b4d2f569ee89'),
(573, 48, 'featured_article_button_color', '#de5b49'),
(574, 48, '_featured_article_button_color', 'field_5b4e7464aabdb'),
(575, 48, 'featured_article_image', '36'),
(576, 48, '_featured_article_image', 'field_5b4d2f829ee8a'),
(577, 48, 'callout_1_background_color', '#de5b49'),
(578, 48, '_callout_1_background_color', 'field_5b4e86c50b367'),
(579, 48, 'callout_1_title', ' The possibilities are just beginning'),
(580, 48, '_callout_1_title', 'field_5b4e86e10b368'),
(581, 48, 'callout_1_introduction', 'Our experience in professional recruiting allows us to understand your needs and find the perfect candidates, no matter the position.'),
(582, 48, '_callout_1_introduction', 'field_5b4e87040b369'),
(583, 48, 'callout_1_button_url', '9'),
(584, 48, '_callout_1_button_url', 'field_5b4e87160b36a'),
(585, 48, 'callout_1_button_text', 'Discover our capabilities'),
(586, 48, '_callout_1_button_text', 'field_5b4e87490b36b'),
(587, 48, 'callout_2_background_color', '#8b4fbf'),
(588, 48, '_callout_2_background_color', 'field_5b4e876d0b36d'),
(589, 48, 'callout_2_title', ' Serving the industries moving us forward'),
(590, 48, '_callout_2_title', 'field_5b4e878c0b36e'),
(591, 48, 'callout_2_introduction', 'Our story begins in construction but doesn’t stop there. Now proudly serving a variety of industries including legal, energy, construction, and more.'),
(592, 48, '_callout_2_introduction', 'field_5b4e879b0b36f'),
(593, 48, 'callout_2_button_url', '7'),
(594, 48, '_callout_2_button_url', 'field_5b4e87ab0b370'),
(595, 48, 'callout_2_button_text', 'Explore our industries'),
(596, 48, '_callout_2_button_text', 'field_5b4e87bf0b371'),
(597, 48, 'about_us_title', 'Our expertise is your advantage'),
(598, 48, '_about_us_title', 'field_5b4f12a4ed58a'),
(599, 48, 'about_us_introduction', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\n\r\n<strong>KEY FEATURE</strong>\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Taliat ut ipsum magna aliquam erat amet sed nihb.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(600, 48, '_about_us_introduction', 'field_5b4f12d6ed58b'),
(601, 48, 'about_us_button_url', '7'),
(602, 48, '_about_us_button_url', 'field_5b4f12e0ed58c'),
(603, 48, 'about_us_button_text', 'Meet Our Team'),
(604, 48, '_about_us_button_text', 'field_5b4f12f4ed58d'),
(605, 48, 'about_us_image', '46'),
(606, 48, '_about_us_image', 'field_5b4f12ffed58e'),
(607, 48, 'secondary_callout_title', 'Discover the opportunity that awaits'),
(608, 48, '_secondary_callout_title', 'field_5b4f1c5288d82'),
(609, 48, 'secondary_callout_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(610, 48, '_secondary_callout_introduction', 'field_5b4f1c6b88d83'),
(611, 48, 'secondary_callout_1_image', ''),
(612, 48, '_secondary_callout_1_image', 'field_5b4f1c7688d84'),
(613, 48, 'secondary_callout_#1_title', 'Featured Case Study'),
(614, 48, '_secondary_callout_#1_title', 'field_5b4f1c8988d85'),
(615, 48, 'secondary_callout_1_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(616, 48, '_secondary_callout_1_introduction', 'field_5b4f1c9688d86'),
(617, 48, 'secondary_callout_1_button_url', '11'),
(618, 48, '_secondary_callout_1_button_url', 'field_5b4f1ca188d87'),
(619, 48, 'secondary_callout_1_button_text', 'Read More'),
(620, 48, '_secondary_callout_1_button_text', 'field_5b4f1cc088d88'),
(621, 48, 'secondary_callout_2_image', ''),
(622, 48, '_secondary_callout_2_image', 'field_5b4f1ccf88d89'),
(623, 48, 'secondary_callout_2_title', 'Our History'),
(624, 48, '_secondary_callout_2_title', 'field_5b4f1ce388d8a'),
(625, 48, 'secondary_callout_2_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(626, 48, '_secondary_callout_2_introduction', 'field_5b4f1cf588d8b'),
(627, 48, 'secondary_callout_2_button_url', '7'),
(628, 48, '_secondary_callout_2_button_url', 'field_5b4f1d0788d8c'),
(629, 48, 'secondary_callout_2_button_text', 'Read More'),
(630, 48, '_secondary_callout_2_button_text', 'field_5b4f1d1988d8d'),
(631, 48, 'secondary_callout_3_image', ''),
(632, 48, '_secondary_callout_3_image', 'field_5b4f1d2b88d8e'),
(633, 48, 'secondary_callout_3_title', 'Moving Forward'),
(634, 48, '_secondary_callout_3_title', 'field_5b4f1d3c88d8f'),
(635, 48, 'secondary_callout_3_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(636, 48, '_secondary_callout_3_introduction', 'field_5b4f1d4e88d90'),
(637, 48, 'secondary_callout_3_button_url', '15'),
(638, 48, '_secondary_callout_3_button_url', 'field_5b4f1d6088d91'),
(639, 48, 'secondary_callout_3_button_text', 'Read More'),
(640, 48, '_secondary_callout_3_button_text', 'field_5b4f1d7588d92'),
(641, 5, 'secondary_callout_title', 'Discover the opportunity that awaits'),
(642, 5, '_secondary_callout_title', 'field_5b4f1c5288d82'),
(643, 5, 'secondary_callout_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(644, 5, '_secondary_callout_introduction', 'field_5b4f1c6b88d83'),
(645, 5, 'secondary_callout_1_image', '36'),
(646, 5, '_secondary_callout_1_image', 'field_5b4f1c7688d84'),
(647, 5, 'secondary_callout_#1_title', 'Featured Case Study'),
(648, 5, '_secondary_callout_#1_title', 'field_5b4f1c8988d85'),
(649, 5, 'secondary_callout_1_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
(650, 5, '_secondary_callout_1_introduction', 'field_5b4f1c9688d86'),
(651, 5, 'secondary_callout_1_button_url', '11'),
(652, 5, '_secondary_callout_1_button_url', 'field_5b4f1ca188d87'),
(653, 5, 'secondary_callout_1_button_text', 'Read More'),
(654, 5, '_secondary_callout_1_button_text', 'field_5b4f1cc088d88'),
(655, 5, 'secondary_callout_2_image', '58'),
(656, 5, '_secondary_callout_2_image', 'field_5b4f1ccf88d89'),
(657, 5, 'secondary_callout_2_title', 'Our History'),
(658, 5, '_secondary_callout_2_title', 'field_5b4f1ce388d8a'),
(659, 5, 'secondary_callout_2_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(660, 5, '_secondary_callout_2_introduction', 'field_5b4f1cf588d8b'),
(661, 5, 'secondary_callout_2_button_url', '7'),
(662, 5, '_secondary_callout_2_button_url', 'field_5b4f1d0788d8c'),
(663, 5, 'secondary_callout_2_button_text', 'Read More'),
(664, 5, '_secondary_callout_2_button_text', 'field_5b4f1d1988d8d'),
(665, 5, 'secondary_callout_3_image', '59'),
(666, 5, '_secondary_callout_3_image', 'field_5b4f1d2b88d8e'),
(667, 5, 'secondary_callout_3_title', 'Moving Forward'),
(668, 5, '_secondary_callout_3_title', 'field_5b4f1d3c88d8f'),
(669, 5, 'secondary_callout_3_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(670, 5, '_secondary_callout_3_introduction', 'field_5b4f1d4e88d90'),
(671, 5, 'secondary_callout_3_button_url', '15'),
(672, 5, '_secondary_callout_3_button_url', 'field_5b4f1d6088d91'),
(673, 5, 'secondary_callout_3_button_text', 'Read More'),
(674, 5, '_secondary_callout_3_button_text', 'field_5b4f1d7588d92'),
(676, 49, 'cta_header', 'The right people get the job done.'),
(677, 49, '_cta_header', 'field_5b4a851062382'),
(678, 49, 'cta_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dlam nonummy nibh eulsmod tincidunt ut laoreet dolora magna aliquam erat volupat.'),
(679, 49, '_cta_text', 'field_5b4a853f62383'),
(680, 49, 'cta_url', '#'),
(681, 49, '_cta_url', 'field_5b4a855062384'),
(682, 49, 'cta_button_text', 'Find Your Fit'),
(683, 49, '_cta_button_text', 'field_5b4a856462385'),
(684, 49, 'featured_article_title', 'Our Keys to Successful Career Transitions in Today\'s Economy'),
(685, 49, '_featured_article_title', 'field_5b4d2e4b9ee86'),
(686, 49, 'featured_article_intro', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut loreat.'),
(687, 49, '_featured_article_intro', 'field_5b4d2ee29ee87'),
(688, 49, 'featured_article_button_url', '#'),
(689, 49, '_featured_article_button_url', 'field_5b4d2f139ee88'),
(690, 49, 'featured_article_button_text', 'Learn More'),
(691, 49, '_featured_article_button_text', 'field_5b4d2f569ee89'),
(692, 49, 'featured_article_button_color', '#de5b49'),
(693, 49, '_featured_article_button_color', 'field_5b4e7464aabdb'),
(694, 49, 'featured_article_image', '36'),
(695, 49, '_featured_article_image', 'field_5b4d2f829ee8a'),
(696, 49, 'callout_1_background_color', '#de5b49'),
(697, 49, '_callout_1_background_color', 'field_5b4e86c50b367'),
(698, 49, 'callout_1_title', ' The possibilities are just beginning'),
(699, 49, '_callout_1_title', 'field_5b4e86e10b368'),
(700, 49, 'callout_1_introduction', 'Our experience in professional recruiting allows us to understand your needs and find the perfect candidates, no matter the position.'),
(701, 49, '_callout_1_introduction', 'field_5b4e87040b369'),
(702, 49, 'callout_1_button_url', '9'),
(703, 49, '_callout_1_button_url', 'field_5b4e87160b36a'),
(704, 49, 'callout_1_button_text', 'Discover our capabilities'),
(705, 49, '_callout_1_button_text', 'field_5b4e87490b36b'),
(706, 49, 'callout_2_background_color', '#8b4fbf'),
(707, 49, '_callout_2_background_color', 'field_5b4e876d0b36d'),
(708, 49, 'callout_2_title', ' Serving the industries moving us forward'),
(709, 49, '_callout_2_title', 'field_5b4e878c0b36e'),
(710, 49, 'callout_2_introduction', 'Our story begins in construction but doesn’t stop there. Now proudly serving a variety of industries including legal, energy, construction, and more.'),
(711, 49, '_callout_2_introduction', 'field_5b4e879b0b36f'),
(712, 49, 'callout_2_button_url', '7'),
(713, 49, '_callout_2_button_url', 'field_5b4e87ab0b370'),
(714, 49, 'callout_2_button_text', 'Explore our industries'),
(715, 49, '_callout_2_button_text', 'field_5b4e87bf0b371'),
(716, 49, 'about_us_title', 'Our expertise is your advantage'),
(717, 49, '_about_us_title', 'field_5b4f12a4ed58a'),
(718, 49, 'about_us_introduction', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\n\r\n<strong>KEY FEATURE</strong>\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Taliat ut ipsum magna aliquam erat amet sed nihb.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(719, 49, '_about_us_introduction', 'field_5b4f12d6ed58b'),
(720, 49, 'about_us_button_url', '7'),
(721, 49, '_about_us_button_url', 'field_5b4f12e0ed58c'),
(722, 49, 'about_us_button_text', 'Meet Our Team'),
(723, 49, '_about_us_button_text', 'field_5b4f12f4ed58d'),
(724, 49, 'about_us_image', '46'),
(725, 49, '_about_us_image', 'field_5b4f12ffed58e'),
(726, 49, 'secondary_callout_title', 'Discover the opportunity that awaits'),
(727, 49, '_secondary_callout_title', 'field_5b4f1c5288d82'),
(728, 49, 'secondary_callout_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(729, 49, '_secondary_callout_introduction', 'field_5b4f1c6b88d83'),
(730, 49, 'secondary_callout_1_image', ''),
(731, 49, '_secondary_callout_1_image', 'field_5b4f1c7688d84'),
(732, 49, 'secondary_callout_1_title', 'Featured Case Study'),
(733, 49, '_secondary_callout_1_title', 'field_5b4f1c8988d85'),
(734, 49, 'secondary_callout_1_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(735, 49, '_secondary_callout_1_introduction', 'field_5b4f1c9688d86'),
(736, 49, 'secondary_callout_1_button_url', '11'),
(737, 49, '_secondary_callout_1_button_url', 'field_5b4f1ca188d87'),
(738, 49, 'secondary_callout_1_button_text', 'Read More'),
(739, 49, '_secondary_callout_1_button_text', 'field_5b4f1cc088d88'),
(740, 49, 'secondary_callout_2_image', ''),
(741, 49, '_secondary_callout_2_image', 'field_5b4f1ccf88d89'),
(742, 49, 'secondary_callout_2_title', 'Our History'),
(743, 49, '_secondary_callout_2_title', 'field_5b4f1ce388d8a'),
(744, 49, 'secondary_callout_2_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(745, 49, '_secondary_callout_2_introduction', 'field_5b4f1cf588d8b'),
(746, 49, 'secondary_callout_2_button_url', '7'),
(747, 49, '_secondary_callout_2_button_url', 'field_5b4f1d0788d8c'),
(748, 49, 'secondary_callout_2_button_text', 'Read More'),
(749, 49, '_secondary_callout_2_button_text', 'field_5b4f1d1988d8d'),
(750, 49, 'secondary_callout_3_image', ''),
(751, 49, '_secondary_callout_3_image', 'field_5b4f1d2b88d8e'),
(752, 49, 'secondary_callout_3_title', 'Moving Forward'),
(753, 49, '_secondary_callout_3_title', 'field_5b4f1d3c88d8f'),
(754, 49, 'secondary_callout_3_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(755, 49, '_secondary_callout_3_introduction', 'field_5b4f1d4e88d90'),
(756, 49, 'secondary_callout_3_button_url', '15'),
(757, 49, '_secondary_callout_3_button_url', 'field_5b4f1d6088d91'),
(758, 49, 'secondary_callout_3_button_text', 'Read More'),
(759, 49, '_secondary_callout_3_button_text', 'field_5b4f1d7588d92'),
(760, 5, 'secondary_callout_1_title', 'Featured Case Study'),
(761, 5, '_secondary_callout_1_title', 'field_5b4f1c8988d85'),
(762, 50, 'cta_header', 'The right people get the job done.'),
(763, 50, '_cta_header', 'field_5b4a851062382'),
(764, 50, 'cta_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dlam nonummy nibh eulsmod tincidunt ut laoreet dolora magna aliquam erat volupat.'),
(765, 50, '_cta_text', 'field_5b4a853f62383'),
(766, 50, 'cta_url', '#'),
(767, 50, '_cta_url', 'field_5b4a855062384'),
(768, 50, 'cta_button_text', 'Find Your Fit'),
(769, 50, '_cta_button_text', 'field_5b4a856462385'),
(770, 50, 'featured_article_title', 'Our Keys to Successful Career Transitions in Today\'s Economy'),
(771, 50, '_featured_article_title', 'field_5b4d2e4b9ee86'),
(772, 50, 'featured_article_intro', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut loreat.'),
(773, 50, '_featured_article_intro', 'field_5b4d2ee29ee87'),
(774, 50, 'featured_article_button_url', '#'),
(775, 50, '_featured_article_button_url', 'field_5b4d2f139ee88'),
(776, 50, 'featured_article_button_text', 'Learn More'),
(777, 50, '_featured_article_button_text', 'field_5b4d2f569ee89'),
(778, 50, 'featured_article_button_color', '#de5b49'),
(779, 50, '_featured_article_button_color', 'field_5b4e7464aabdb'),
(780, 50, 'featured_article_image', '36'),
(781, 50, '_featured_article_image', 'field_5b4d2f829ee8a'),
(782, 50, 'callout_1_background_color', '#de5b49'),
(783, 50, '_callout_1_background_color', 'field_5b4e86c50b367'),
(784, 50, 'callout_1_title', ' The possibilities are just beginning'),
(785, 50, '_callout_1_title', 'field_5b4e86e10b368'),
(786, 50, 'callout_1_introduction', 'Our experience in professional recruiting allows us to understand your needs and find the perfect candidates, no matter the position.'),
(787, 50, '_callout_1_introduction', 'field_5b4e87040b369'),
(788, 50, 'callout_1_button_url', '9'),
(789, 50, '_callout_1_button_url', 'field_5b4e87160b36a'),
(790, 50, 'callout_1_button_text', 'Discover our capabilities'),
(791, 50, '_callout_1_button_text', 'field_5b4e87490b36b'),
(792, 50, 'callout_2_background_color', '#8b4fbf'),
(793, 50, '_callout_2_background_color', 'field_5b4e876d0b36d'),
(794, 50, 'callout_2_title', ' Serving the industries moving us forward'),
(795, 50, '_callout_2_title', 'field_5b4e878c0b36e'),
(796, 50, 'callout_2_introduction', 'Our story begins in construction but doesn’t stop there. Now proudly serving a variety of industries including legal, energy, construction, and more.'),
(797, 50, '_callout_2_introduction', 'field_5b4e879b0b36f'),
(798, 50, 'callout_2_button_url', '7'),
(799, 50, '_callout_2_button_url', 'field_5b4e87ab0b370'),
(800, 50, 'callout_2_button_text', 'Explore our industries'),
(801, 50, '_callout_2_button_text', 'field_5b4e87bf0b371'),
(802, 50, 'about_us_title', 'Our expertise is your advantage'),
(803, 50, '_about_us_title', 'field_5b4f12a4ed58a'),
(804, 50, 'about_us_introduction', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\n\r\n<strong>KEY FEATURE</strong>\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Taliat ut ipsum magna aliquam erat amet sed nihb.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(805, 50, '_about_us_introduction', 'field_5b4f12d6ed58b'),
(806, 50, 'about_us_button_url', '7'),
(807, 50, '_about_us_button_url', 'field_5b4f12e0ed58c'),
(808, 50, 'about_us_button_text', 'Meet Our Team'),
(809, 50, '_about_us_button_text', 'field_5b4f12f4ed58d'),
(810, 50, 'about_us_image', '46'),
(811, 50, '_about_us_image', 'field_5b4f12ffed58e'),
(812, 50, 'secondary_callout_title', 'Discover the opportunity that awaits'),
(813, 50, '_secondary_callout_title', 'field_5b4f1c5288d82'),
(814, 50, 'secondary_callout_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(815, 50, '_secondary_callout_introduction', 'field_5b4f1c6b88d83'),
(816, 50, 'secondary_callout_1_image', ''),
(817, 50, '_secondary_callout_1_image', 'field_5b4f1c7688d84'),
(818, 50, 'secondary_callout_1_title', 'Featured Case Study'),
(819, 50, '_secondary_callout_1_title', 'field_5b4f1c8988d85'),
(820, 50, 'secondary_callout_1_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
(821, 50, '_secondary_callout_1_introduction', 'field_5b4f1c9688d86'),
(822, 50, 'secondary_callout_1_button_url', '11'),
(823, 50, '_secondary_callout_1_button_url', 'field_5b4f1ca188d87'),
(824, 50, 'secondary_callout_1_button_text', 'Read More'),
(825, 50, '_secondary_callout_1_button_text', 'field_5b4f1cc088d88'),
(826, 50, 'secondary_callout_2_image', ''),
(827, 50, '_secondary_callout_2_image', 'field_5b4f1ccf88d89'),
(828, 50, 'secondary_callout_2_title', 'Our History'),
(829, 50, '_secondary_callout_2_title', 'field_5b4f1ce388d8a'),
(830, 50, 'secondary_callout_2_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(831, 50, '_secondary_callout_2_introduction', 'field_5b4f1cf588d8b'),
(832, 50, 'secondary_callout_2_button_url', '7'),
(833, 50, '_secondary_callout_2_button_url', 'field_5b4f1d0788d8c'),
(834, 50, 'secondary_callout_2_button_text', 'Read More'),
(835, 50, '_secondary_callout_2_button_text', 'field_5b4f1d1988d8d'),
(836, 50, 'secondary_callout_3_image', ''),
(837, 50, '_secondary_callout_3_image', 'field_5b4f1d2b88d8e'),
(838, 50, 'secondary_callout_3_title', 'Moving Forward'),
(839, 50, '_secondary_callout_3_title', 'field_5b4f1d3c88d8f'),
(840, 50, 'secondary_callout_3_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(841, 50, '_secondary_callout_3_introduction', 'field_5b4f1d4e88d90'),
(842, 50, 'secondary_callout_3_button_url', '15'),
(843, 50, '_secondary_callout_3_button_url', 'field_5b4f1d6088d91'),
(844, 50, 'secondary_callout_3_button_text', 'Read More'),
(845, 50, '_secondary_callout_3_button_text', 'field_5b4f1d7588d92'),
(854, 52, 'cta_header', 'The right people get the job done.'),
(855, 52, '_cta_header', 'field_5b4a851062382'),
(856, 52, 'cta_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dlam nonummy nibh eulsmod tincidunt ut laoreet dolora magna aliquam erat volupat.'),
(857, 52, '_cta_text', 'field_5b4a853f62383'),
(858, 52, 'cta_url', '#'),
(859, 52, '_cta_url', 'field_5b4a855062384'),
(860, 52, 'cta_button_text', 'Find Your Fit'),
(861, 52, '_cta_button_text', 'field_5b4a856462385'),
(862, 52, 'featured_article_title', 'Our Keys to Successful Career Transitions in Today\'s Economy'),
(863, 52, '_featured_article_title', 'field_5b4d2e4b9ee86'),
(864, 52, 'featured_article_intro', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut loreat.'),
(865, 52, '_featured_article_intro', 'field_5b4d2ee29ee87'),
(866, 52, 'featured_article_button_url', '#'),
(867, 52, '_featured_article_button_url', 'field_5b4d2f139ee88'),
(868, 52, 'featured_article_button_text', 'Learn More'),
(869, 52, '_featured_article_button_text', 'field_5b4d2f569ee89'),
(870, 52, 'featured_article_button_color', '#de5b49'),
(871, 52, '_featured_article_button_color', 'field_5b4e7464aabdb'),
(872, 52, 'featured_article_image', '36'),
(873, 52, '_featured_article_image', 'field_5b4d2f829ee8a'),
(874, 52, 'callout_1_background_color', '#de5b49'),
(875, 52, '_callout_1_background_color', 'field_5b4e86c50b367'),
(876, 52, 'callout_1_title', ' The possibilities are just beginning'),
(877, 52, '_callout_1_title', 'field_5b4e86e10b368'),
(878, 52, 'callout_1_introduction', 'Our experience in professional recruiting allows us to understand your needs and find the perfect candidates, no matter the position.'),
(879, 52, '_callout_1_introduction', 'field_5b4e87040b369'),
(880, 52, 'callout_1_button_url', '9'),
(881, 52, '_callout_1_button_url', 'field_5b4e87160b36a'),
(882, 52, 'callout_1_button_text', 'Discover our capabilities'),
(883, 52, '_callout_1_button_text', 'field_5b4e87490b36b'),
(884, 52, 'callout_2_background_color', '#8b4fbf'),
(885, 52, '_callout_2_background_color', 'field_5b4e876d0b36d'),
(886, 52, 'callout_2_title', ' Serving the industries moving us forward'),
(887, 52, '_callout_2_title', 'field_5b4e878c0b36e'),
(888, 52, 'callout_2_introduction', 'Our story begins in construction but doesn’t stop there. Now proudly serving a variety of industries including legal, energy, construction, and more.'),
(889, 52, '_callout_2_introduction', 'field_5b4e879b0b36f'),
(890, 52, 'callout_2_button_url', '7'),
(891, 52, '_callout_2_button_url', 'field_5b4e87ab0b370'),
(892, 52, 'callout_2_button_text', 'Explore our industries');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(893, 52, '_callout_2_button_text', 'field_5b4e87bf0b371'),
(894, 52, 'about_us_title', 'Our expertise is your advantage'),
(895, 52, '_about_us_title', 'field_5b4f12a4ed58a'),
(896, 52, 'about_us_introduction', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\n\r\n<strong>KEY FEATURE</strong>\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Taliat ut ipsum magna aliquam erat amet sed nihb.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(897, 52, '_about_us_introduction', 'field_5b4f12d6ed58b'),
(898, 52, 'about_us_button_url', '7'),
(899, 52, '_about_us_button_url', 'field_5b4f12e0ed58c'),
(900, 52, 'about_us_button_text', 'Meet Our Team'),
(901, 52, '_about_us_button_text', 'field_5b4f12f4ed58d'),
(902, 52, 'about_us_image', '46'),
(903, 52, '_about_us_image', 'field_5b4f12ffed58e'),
(904, 52, 'secondary_callout_title', 'Discover the opportunity that awaits'),
(905, 52, '_secondary_callout_title', 'field_5b4f1c5288d82'),
(906, 52, 'secondary_callout_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(907, 52, '_secondary_callout_introduction', 'field_5b4f1c6b88d83'),
(908, 52, 'secondary_callout_1_image', ''),
(909, 52, '_secondary_callout_1_image', 'field_5b4f1c7688d84'),
(910, 52, 'secondary_callout_1_title', 'Featured Case Study'),
(911, 52, '_secondary_callout_1_title', 'field_5b4f1c8988d85'),
(912, 52, 'secondary_callout_1_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
(913, 52, '_secondary_callout_1_introduction', 'field_5b4f1c9688d86'),
(914, 52, 'secondary_callout_1_button_url', '11'),
(915, 52, '_secondary_callout_1_button_url', 'field_5b4f1ca188d87'),
(916, 52, 'secondary_callout_1_button_text', 'Read More'),
(917, 52, '_secondary_callout_1_button_text', 'field_5b4f1cc088d88'),
(918, 52, 'secondary_callout_2_image', ''),
(919, 52, '_secondary_callout_2_image', 'field_5b4f1ccf88d89'),
(920, 52, 'secondary_callout_2_title', 'Our History'),
(921, 52, '_secondary_callout_2_title', 'field_5b4f1ce388d8a'),
(922, 52, 'secondary_callout_2_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(923, 52, '_secondary_callout_2_introduction', 'field_5b4f1cf588d8b'),
(924, 52, 'secondary_callout_2_button_url', '7'),
(925, 52, '_secondary_callout_2_button_url', 'field_5b4f1d0788d8c'),
(926, 52, 'secondary_callout_2_button_text', 'Read More'),
(927, 52, '_secondary_callout_2_button_text', 'field_5b4f1d1988d8d'),
(928, 52, 'secondary_callout_3_image', ''),
(929, 52, '_secondary_callout_3_image', 'field_5b4f1d2b88d8e'),
(930, 52, 'secondary_callout_3_title', 'Moving Forward'),
(931, 52, '_secondary_callout_3_title', 'field_5b4f1d3c88d8f'),
(932, 52, 'secondary_callout_3_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(933, 52, '_secondary_callout_3_introduction', 'field_5b4f1d4e88d90'),
(934, 52, 'secondary_callout_3_button_url', '15'),
(935, 52, '_secondary_callout_3_button_url', 'field_5b4f1d6088d91'),
(936, 52, 'secondary_callout_3_button_text', 'Read More'),
(937, 52, '_secondary_callout_3_button_text', 'field_5b4f1d7588d92'),
(938, 52, 'contact_form_short_code', '[ninja_form id=1]'),
(939, 52, '_contact_form_short_code', 'field_5b4fbb3254af6'),
(940, 5, 'contact_form_short_code', '[ninja_form id=1]'),
(941, 5, '_contact_form_short_code', 'field_5b4fbb3254af6'),
(943, 29, 'field_5b4fc50d52774', 'a:14:{s:3:\"key\";s:19:\"field_5b4fc50d52774\";s:5:\"label\";s:18:\"Contact Form Title\";s:4:\"name\";s:18:\"contact_form_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:42;}'),
(944, 29, 'field_5b4fc51852775', 'a:14:{s:3:\"key\";s:19:\"field_5b4fc51852775\";s:5:\"label\";s:25:\"Contact Form Introduction\";s:4:\"name\";s:25:\"contact_form_introduction\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:43;}'),
(945, 29, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"5\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(946, 53, 'cta_header', 'The right people get the job done.'),
(947, 53, '_cta_header', 'field_5b4a851062382'),
(948, 53, 'cta_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dlam nonummy nibh eulsmod tincidunt ut laoreet dolora magna aliquam erat volupat.'),
(949, 53, '_cta_text', 'field_5b4a853f62383'),
(950, 53, 'cta_url', '#'),
(951, 53, '_cta_url', 'field_5b4a855062384'),
(952, 53, 'cta_button_text', 'Find Your Fit'),
(953, 53, '_cta_button_text', 'field_5b4a856462385'),
(954, 53, 'featured_article_title', 'Our Keys to Successful Career Transitions in Today\'s Economy'),
(955, 53, '_featured_article_title', 'field_5b4d2e4b9ee86'),
(956, 53, 'featured_article_intro', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut loreat.'),
(957, 53, '_featured_article_intro', 'field_5b4d2ee29ee87'),
(958, 53, 'featured_article_button_url', '#'),
(959, 53, '_featured_article_button_url', 'field_5b4d2f139ee88'),
(960, 53, 'featured_article_button_text', 'Learn More'),
(961, 53, '_featured_article_button_text', 'field_5b4d2f569ee89'),
(962, 53, 'featured_article_button_color', '#de5b49'),
(963, 53, '_featured_article_button_color', 'field_5b4e7464aabdb'),
(964, 53, 'featured_article_image', '36'),
(965, 53, '_featured_article_image', 'field_5b4d2f829ee8a'),
(966, 53, 'callout_1_background_color', '#de5b49'),
(967, 53, '_callout_1_background_color', 'field_5b4e86c50b367'),
(968, 53, 'callout_1_title', ' The possibilities are just beginning'),
(969, 53, '_callout_1_title', 'field_5b4e86e10b368'),
(970, 53, 'callout_1_introduction', 'Our experience in professional recruiting allows us to understand your needs and find the perfect candidates, no matter the position.'),
(971, 53, '_callout_1_introduction', 'field_5b4e87040b369'),
(972, 53, 'callout_1_button_url', '9'),
(973, 53, '_callout_1_button_url', 'field_5b4e87160b36a'),
(974, 53, 'callout_1_button_text', 'Discover our capabilities'),
(975, 53, '_callout_1_button_text', 'field_5b4e87490b36b'),
(976, 53, 'callout_2_background_color', '#8b4fbf'),
(977, 53, '_callout_2_background_color', 'field_5b4e876d0b36d'),
(978, 53, 'callout_2_title', ' Serving the industries moving us forward'),
(979, 53, '_callout_2_title', 'field_5b4e878c0b36e'),
(980, 53, 'callout_2_introduction', 'Our story begins in construction but doesn’t stop there. Now proudly serving a variety of industries including legal, energy, construction, and more.'),
(981, 53, '_callout_2_introduction', 'field_5b4e879b0b36f'),
(982, 53, 'callout_2_button_url', '7'),
(983, 53, '_callout_2_button_url', 'field_5b4e87ab0b370'),
(984, 53, 'callout_2_button_text', 'Explore our industries'),
(985, 53, '_callout_2_button_text', 'field_5b4e87bf0b371'),
(986, 53, 'about_us_title', 'Our expertise is your advantage'),
(987, 53, '_about_us_title', 'field_5b4f12a4ed58a'),
(988, 53, 'about_us_introduction', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\n\r\n<strong>KEY FEATURE</strong>\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Taliat ut ipsum magna aliquam erat amet sed nihb.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(989, 53, '_about_us_introduction', 'field_5b4f12d6ed58b'),
(990, 53, 'about_us_button_url', '7'),
(991, 53, '_about_us_button_url', 'field_5b4f12e0ed58c'),
(992, 53, 'about_us_button_text', 'Meet Our Team'),
(993, 53, '_about_us_button_text', 'field_5b4f12f4ed58d'),
(994, 53, 'about_us_image', '46'),
(995, 53, '_about_us_image', 'field_5b4f12ffed58e'),
(996, 53, 'secondary_callout_title', 'Discover the opportunity that awaits'),
(997, 53, '_secondary_callout_title', 'field_5b4f1c5288d82'),
(998, 53, 'secondary_callout_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(999, 53, '_secondary_callout_introduction', 'field_5b4f1c6b88d83'),
(1000, 53, 'secondary_callout_1_image', ''),
(1001, 53, '_secondary_callout_1_image', 'field_5b4f1c7688d84'),
(1002, 53, 'secondary_callout_1_title', 'Featured Case Study'),
(1003, 53, '_secondary_callout_1_title', 'field_5b4f1c8988d85'),
(1004, 53, 'secondary_callout_1_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
(1005, 53, '_secondary_callout_1_introduction', 'field_5b4f1c9688d86'),
(1006, 53, 'secondary_callout_1_button_url', '11'),
(1007, 53, '_secondary_callout_1_button_url', 'field_5b4f1ca188d87'),
(1008, 53, 'secondary_callout_1_button_text', 'Read More'),
(1009, 53, '_secondary_callout_1_button_text', 'field_5b4f1cc088d88'),
(1010, 53, 'secondary_callout_2_image', ''),
(1011, 53, '_secondary_callout_2_image', 'field_5b4f1ccf88d89'),
(1012, 53, 'secondary_callout_2_title', 'Our History'),
(1013, 53, '_secondary_callout_2_title', 'field_5b4f1ce388d8a'),
(1014, 53, 'secondary_callout_2_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(1015, 53, '_secondary_callout_2_introduction', 'field_5b4f1cf588d8b'),
(1016, 53, 'secondary_callout_2_button_url', '7'),
(1017, 53, '_secondary_callout_2_button_url', 'field_5b4f1d0788d8c'),
(1018, 53, 'secondary_callout_2_button_text', 'Read More'),
(1019, 53, '_secondary_callout_2_button_text', 'field_5b4f1d1988d8d'),
(1020, 53, 'secondary_callout_3_image', ''),
(1021, 53, '_secondary_callout_3_image', 'field_5b4f1d2b88d8e'),
(1022, 53, 'secondary_callout_3_title', 'Moving Forward'),
(1023, 53, '_secondary_callout_3_title', 'field_5b4f1d3c88d8f'),
(1024, 53, 'secondary_callout_3_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(1025, 53, '_secondary_callout_3_introduction', 'field_5b4f1d4e88d90'),
(1026, 53, 'secondary_callout_3_button_url', '15'),
(1027, 53, '_secondary_callout_3_button_url', 'field_5b4f1d6088d91'),
(1028, 53, 'secondary_callout_3_button_text', 'Read More'),
(1029, 53, '_secondary_callout_3_button_text', 'field_5b4f1d7588d92'),
(1030, 53, 'contact_form_title', 'Let\'s get started'),
(1031, 53, '_contact_form_title', 'field_5b4fc50d52774'),
(1032, 53, 'contact_form_introduction', 'Whether you’re a candidate, employer, or just interested in learning more, reach out to us today!'),
(1033, 53, '_contact_form_introduction', 'field_5b4fc51852775'),
(1034, 5, 'contact_form_title', 'Let\'s get started'),
(1035, 5, '_contact_form_title', 'field_5b4fc50d52774'),
(1036, 5, 'contact_form_introduction', 'Whether you’re a candidate, employer, or just interested in learning more, reach out to us today!'),
(1037, 5, '_contact_form_introduction', 'field_5b4fc51852775'),
(1038, 54, '_wp_trash_meta_status', 'publish'),
(1039, 54, '_wp_trash_meta_time', '1531963566'),
(1040, 56, 'cta_header', 'The right people get the job done.'),
(1041, 56, '_cta_header', 'field_5b4a851062382'),
(1042, 56, 'cta_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dlam nonummy nibh eulsmod tincidunt ut laoreet dolora magna aliquam erat volupat.'),
(1043, 56, '_cta_text', 'field_5b4a853f62383'),
(1044, 56, 'cta_url', '#'),
(1045, 56, '_cta_url', 'field_5b4a855062384'),
(1046, 56, 'cta_button_text', 'Find Your Fit'),
(1047, 56, '_cta_button_text', 'field_5b4a856462385'),
(1048, 56, 'featured_article_title', 'Our Keys to Successful Career Transitions in Today\'s Economy'),
(1049, 56, '_featured_article_title', 'field_5b4d2e4b9ee86'),
(1050, 56, 'featured_article_intro', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut loreat.'),
(1051, 56, '_featured_article_intro', 'field_5b4d2ee29ee87'),
(1052, 56, 'featured_article_button_url', '#'),
(1053, 56, '_featured_article_button_url', 'field_5b4d2f139ee88'),
(1054, 56, 'featured_article_button_text', 'Learn More'),
(1055, 56, '_featured_article_button_text', 'field_5b4d2f569ee89'),
(1056, 56, 'featured_article_button_color', '#445faa'),
(1057, 56, '_featured_article_button_color', 'field_5b4e7464aabdb'),
(1058, 56, 'featured_article_image', '36'),
(1059, 56, '_featured_article_image', 'field_5b4d2f829ee8a'),
(1060, 56, 'callout_1_background_color', '#de5b49'),
(1061, 56, '_callout_1_background_color', 'field_5b4e86c50b367'),
(1062, 56, 'callout_1_title', ' The possibilities are just beginning'),
(1063, 56, '_callout_1_title', 'field_5b4e86e10b368'),
(1064, 56, 'callout_1_introduction', 'Our experience in professional recruiting allows us to understand your needs and find the perfect candidates, no matter the position.'),
(1065, 56, '_callout_1_introduction', 'field_5b4e87040b369'),
(1066, 56, 'callout_1_button_url', '9'),
(1067, 56, '_callout_1_button_url', 'field_5b4e87160b36a'),
(1068, 56, 'callout_1_button_text', 'Discover our capabilities'),
(1069, 56, '_callout_1_button_text', 'field_5b4e87490b36b'),
(1070, 56, 'callout_2_background_color', '#8b4fbf'),
(1071, 56, '_callout_2_background_color', 'field_5b4e876d0b36d'),
(1072, 56, 'callout_2_title', ' Serving the industries moving us forward'),
(1073, 56, '_callout_2_title', 'field_5b4e878c0b36e'),
(1074, 56, 'callout_2_introduction', 'Our story begins in construction but doesn’t stop there. Now proudly serving a variety of industries including legal, energy, construction, and more.'),
(1075, 56, '_callout_2_introduction', 'field_5b4e879b0b36f'),
(1076, 56, 'callout_2_button_url', '7'),
(1077, 56, '_callout_2_button_url', 'field_5b4e87ab0b370'),
(1078, 56, 'callout_2_button_text', 'Explore our industries'),
(1079, 56, '_callout_2_button_text', 'field_5b4e87bf0b371'),
(1080, 56, 'about_us_title', 'Our expertise is your advantage'),
(1081, 56, '_about_us_title', 'field_5b4f12a4ed58a'),
(1082, 56, 'about_us_introduction', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\n\r\n<strong>KEY FEATURE</strong>\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Taliat ut ipsum magna aliquam erat amet sed nihb.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(1083, 56, '_about_us_introduction', 'field_5b4f12d6ed58b'),
(1084, 56, 'about_us_button_url', '7'),
(1085, 56, '_about_us_button_url', 'field_5b4f12e0ed58c'),
(1086, 56, 'about_us_button_text', 'Meet Our Team'),
(1087, 56, '_about_us_button_text', 'field_5b4f12f4ed58d'),
(1088, 56, 'about_us_image', '46'),
(1089, 56, '_about_us_image', 'field_5b4f12ffed58e'),
(1090, 56, 'secondary_callout_title', 'Discover the opportunity that awaits'),
(1091, 56, '_secondary_callout_title', 'field_5b4f1c5288d82'),
(1092, 56, 'secondary_callout_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(1093, 56, '_secondary_callout_introduction', 'field_5b4f1c6b88d83'),
(1094, 56, 'secondary_callout_1_image', ''),
(1095, 56, '_secondary_callout_1_image', 'field_5b4f1c7688d84'),
(1096, 56, 'secondary_callout_1_title', 'Featured Case Study'),
(1097, 56, '_secondary_callout_1_title', 'field_5b4f1c8988d85'),
(1098, 56, 'secondary_callout_1_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
(1099, 56, '_secondary_callout_1_introduction', 'field_5b4f1c9688d86'),
(1100, 56, 'secondary_callout_1_button_url', '11'),
(1101, 56, '_secondary_callout_1_button_url', 'field_5b4f1ca188d87'),
(1102, 56, 'secondary_callout_1_button_text', 'Read More'),
(1103, 56, '_secondary_callout_1_button_text', 'field_5b4f1cc088d88'),
(1104, 56, 'secondary_callout_2_image', ''),
(1105, 56, '_secondary_callout_2_image', 'field_5b4f1ccf88d89'),
(1106, 56, 'secondary_callout_2_title', 'Our History'),
(1107, 56, '_secondary_callout_2_title', 'field_5b4f1ce388d8a'),
(1108, 56, 'secondary_callout_2_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(1109, 56, '_secondary_callout_2_introduction', 'field_5b4f1cf588d8b'),
(1110, 56, 'secondary_callout_2_button_url', '7'),
(1111, 56, '_secondary_callout_2_button_url', 'field_5b4f1d0788d8c'),
(1112, 56, 'secondary_callout_2_button_text', 'Read More'),
(1113, 56, '_secondary_callout_2_button_text', 'field_5b4f1d1988d8d'),
(1114, 56, 'secondary_callout_3_image', ''),
(1115, 56, '_secondary_callout_3_image', 'field_5b4f1d2b88d8e'),
(1116, 56, 'secondary_callout_3_title', 'Moving Forward'),
(1117, 56, '_secondary_callout_3_title', 'field_5b4f1d3c88d8f'),
(1118, 56, 'secondary_callout_3_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(1119, 56, '_secondary_callout_3_introduction', 'field_5b4f1d4e88d90'),
(1120, 56, 'secondary_callout_3_button_url', '15'),
(1121, 56, '_secondary_callout_3_button_url', 'field_5b4f1d6088d91'),
(1122, 56, 'secondary_callout_3_button_text', 'Read More'),
(1123, 56, '_secondary_callout_3_button_text', 'field_5b4f1d7588d92'),
(1124, 56, 'contact_form_title', 'Let\'s get started'),
(1125, 56, '_contact_form_title', 'field_5b4fc50d52774'),
(1126, 56, 'contact_form_introduction', 'Whether you’re a candidate, employer, or just interested in learning more, reach out to us today!'),
(1127, 56, '_contact_form_introduction', 'field_5b4fc51852775'),
(1128, 57, '_wp_attached_file', '2018/07/AdobeStock_131596221_Preview.jpeg'),
(1129, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:665;s:4:\"file\";s:41:\"2018/07/AdobeStock_131596221_Preview.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"AdobeStock_131596221_Preview-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"AdobeStock_131596221_Preview-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"AdobeStock_131596221_Preview-768x511.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:41:\"AdobeStock_131596221_Preview-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:33:\"artem_artemenko - stock.adobe.com\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:35:\"©artem_artemenko - stock.adobe.com\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1130, 58, '_wp_attached_file', '2018/07/AdobeStock_77654632_Preview.jpeg'),
(1131, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:704;s:4:\"file\";s:40:\"2018/07/AdobeStock_77654632_Preview.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"AdobeStock_77654632_Preview-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"AdobeStock_77654632_Preview-300x211.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:211;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"AdobeStock_77654632_Preview-768x541.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:541;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:40:\"AdobeStock_77654632_Preview-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:17:\"- stock.adobe.com\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:21:\"©  - stock.adobe.com\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1132, 59, '_wp_attached_file', '2018/07/AdobeStock_88858458_Preview.jpeg'),
(1133, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:771;s:4:\"file\";s:40:\"2018/07/AdobeStock_88858458_Preview.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"AdobeStock_88858458_Preview-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"AdobeStock_88858458_Preview-300x231.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:231;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"AdobeStock_88858458_Preview-768x592.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:592;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:40:\"AdobeStock_88858458_Preview-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:38:\"Yurok Aleksandrovich - stock.adobe.com\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:40:\"©Yurok Aleksandrovich - stock.adobe.com\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1134, 60, 'cta_header', 'The right people get the job done.'),
(1135, 60, '_cta_header', 'field_5b4a851062382'),
(1136, 60, 'cta_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dlam nonummy nibh eulsmod tincidunt ut laoreet dolora magna aliquam erat volupat.'),
(1137, 60, '_cta_text', 'field_5b4a853f62383'),
(1138, 60, 'cta_url', '#'),
(1139, 60, '_cta_url', 'field_5b4a855062384'),
(1140, 60, 'cta_button_text', 'Find Your Fit'),
(1141, 60, '_cta_button_text', 'field_5b4a856462385'),
(1142, 60, 'featured_article_title', 'Our Keys to Successful Career Transitions in Today\'s Economy'),
(1143, 60, '_featured_article_title', 'field_5b4d2e4b9ee86'),
(1144, 60, 'featured_article_intro', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut loreat.'),
(1145, 60, '_featured_article_intro', 'field_5b4d2ee29ee87'),
(1146, 60, 'featured_article_button_url', '#'),
(1147, 60, '_featured_article_button_url', 'field_5b4d2f139ee88'),
(1148, 60, 'featured_article_button_text', 'Learn More'),
(1149, 60, '_featured_article_button_text', 'field_5b4d2f569ee89'),
(1150, 60, 'featured_article_button_color', '#445faa'),
(1151, 60, '_featured_article_button_color', 'field_5b4e7464aabdb'),
(1152, 60, 'featured_article_image', '57'),
(1153, 60, '_featured_article_image', 'field_5b4d2f829ee8a'),
(1154, 60, 'callout_1_background_color', '#de5b49'),
(1155, 60, '_callout_1_background_color', 'field_5b4e86c50b367'),
(1156, 60, 'callout_1_title', ' The possibilities are just beginning'),
(1157, 60, '_callout_1_title', 'field_5b4e86e10b368'),
(1158, 60, 'callout_1_introduction', 'Our experience in professional recruiting allows us to understand your needs and find the perfect candidates, no matter the position.'),
(1159, 60, '_callout_1_introduction', 'field_5b4e87040b369'),
(1160, 60, 'callout_1_button_url', '9'),
(1161, 60, '_callout_1_button_url', 'field_5b4e87160b36a'),
(1162, 60, 'callout_1_button_text', 'Discover our capabilities'),
(1163, 60, '_callout_1_button_text', 'field_5b4e87490b36b'),
(1164, 60, 'callout_2_background_color', '#8b4fbf'),
(1165, 60, '_callout_2_background_color', 'field_5b4e876d0b36d'),
(1166, 60, 'callout_2_title', ' Serving the industries moving us forward'),
(1167, 60, '_callout_2_title', 'field_5b4e878c0b36e'),
(1168, 60, 'callout_2_introduction', 'Our story begins in construction but doesn’t stop there. Now proudly serving a variety of industries including legal, energy, construction, and more.'),
(1169, 60, '_callout_2_introduction', 'field_5b4e879b0b36f'),
(1170, 60, 'callout_2_button_url', '7'),
(1171, 60, '_callout_2_button_url', 'field_5b4e87ab0b370'),
(1172, 60, 'callout_2_button_text', 'Explore our industries'),
(1173, 60, '_callout_2_button_text', 'field_5b4e87bf0b371'),
(1174, 60, 'about_us_title', 'Our expertise is your advantage'),
(1175, 60, '_about_us_title', 'field_5b4f12a4ed58a'),
(1176, 60, 'about_us_introduction', '<div class=\"page\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\n\r\n<strong>KEY FEATURE</strong>\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Taliat ut ipsum magna aliquam erat amet sed nihb.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(1177, 60, '_about_us_introduction', 'field_5b4f12d6ed58b'),
(1178, 60, 'about_us_button_url', '7'),
(1179, 60, '_about_us_button_url', 'field_5b4f12e0ed58c'),
(1180, 60, 'about_us_button_text', 'Meet Our Team'),
(1181, 60, '_about_us_button_text', 'field_5b4f12f4ed58d'),
(1182, 60, 'about_us_image', '46'),
(1183, 60, '_about_us_image', 'field_5b4f12ffed58e'),
(1184, 60, 'secondary_callout_title', 'Discover the opportunity that awaits'),
(1185, 60, '_secondary_callout_title', 'field_5b4f1c5288d82'),
(1186, 60, 'secondary_callout_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(1187, 60, '_secondary_callout_introduction', 'field_5b4f1c6b88d83'),
(1188, 60, 'secondary_callout_1_image', '36'),
(1189, 60, '_secondary_callout_1_image', 'field_5b4f1c7688d84'),
(1190, 60, 'secondary_callout_1_title', 'Featured Case Study'),
(1191, 60, '_secondary_callout_1_title', 'field_5b4f1c8988d85'),
(1192, 60, 'secondary_callout_1_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
(1193, 60, '_secondary_callout_1_introduction', 'field_5b4f1c9688d86'),
(1194, 60, 'secondary_callout_1_button_url', '11'),
(1195, 60, '_secondary_callout_1_button_url', 'field_5b4f1ca188d87'),
(1196, 60, 'secondary_callout_1_button_text', 'Read More'),
(1197, 60, '_secondary_callout_1_button_text', 'field_5b4f1cc088d88'),
(1198, 60, 'secondary_callout_2_image', '58'),
(1199, 60, '_secondary_callout_2_image', 'field_5b4f1ccf88d89'),
(1200, 60, 'secondary_callout_2_title', 'Our History'),
(1201, 60, '_secondary_callout_2_title', 'field_5b4f1ce388d8a'),
(1202, 60, 'secondary_callout_2_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(1203, 60, '_secondary_callout_2_introduction', 'field_5b4f1cf588d8b'),
(1204, 60, 'secondary_callout_2_button_url', '7'),
(1205, 60, '_secondary_callout_2_button_url', 'field_5b4f1d0788d8c'),
(1206, 60, 'secondary_callout_2_button_text', 'Read More'),
(1207, 60, '_secondary_callout_2_button_text', 'field_5b4f1d1988d8d'),
(1208, 60, 'secondary_callout_3_image', '59'),
(1209, 60, '_secondary_callout_3_image', 'field_5b4f1d2b88d8e'),
(1210, 60, 'secondary_callout_3_title', 'Moving Forward'),
(1211, 60, '_secondary_callout_3_title', 'field_5b4f1d3c88d8f'),
(1212, 60, 'secondary_callout_3_introduction', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
(1213, 60, '_secondary_callout_3_introduction', 'field_5b4f1d4e88d90'),
(1214, 60, 'secondary_callout_3_button_url', '15'),
(1215, 60, '_secondary_callout_3_button_url', 'field_5b4f1d6088d91'),
(1216, 60, 'secondary_callout_3_button_text', 'Read More'),
(1217, 60, '_secondary_callout_3_button_text', 'field_5b4f1d7588d92'),
(1218, 60, 'contact_form_title', 'Let\'s get started'),
(1219, 60, '_contact_form_title', 'field_5b4fc50d52774'),
(1220, 60, 'contact_form_introduction', 'Whether you’re a candidate, employer, or just interested in learning more, reach out to us today!'),
(1221, 60, '_contact_form_introduction', 'field_5b4fc51852775'),
(1222, 61, '_edit_last', '1'),
(1223, 61, 'field_5b512e95d31c0', 'a:14:{s:3:\"key\";s:19:\"field_5b512e95d31c0\";s:5:\"label\";s:8:\"Subtitle\";s:4:\"name\";s:8:\"subtitle\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(1224, 61, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(1225, 61, 'position', 'normal'),
(1226, 61, 'layout', 'no_box'),
(1227, 61, 'hide_on_screen', ''),
(1228, 61, '_edit_lock', '1532047098:1'),
(1229, 62, 'subtitle', 'Our reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery.'),
(1230, 62, '_subtitle', 'field_5b512e95d31c0'),
(1231, 7, 'subtitle', 'Our reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery.'),
(1232, 7, '_subtitle', 'field_5b512e95d31c0'),
(1233, 64, 'subtitle', 'Our reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery.'),
(1234, 64, '_subtitle', 'field_5b512e95d31c0'),
(1235, 65, 'subtitle', 'Our reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery.'),
(1236, 65, '_subtitle', 'field_5b512e95d31c0'),
(1237, 66, 'subtitle', 'Our reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery.'),
(1238, 66, '_subtitle', 'field_5b512e95d31c0'),
(1239, 67, 'subtitle', 'Our reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery.'),
(1240, 67, '_subtitle', 'field_5b512e95d31c0'),
(1241, 68, 'subtitle', 'Our reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery.'),
(1242, 68, '_subtitle', 'field_5b512e95d31c0'),
(1243, 69, '_edit_last', '1'),
(1247, 69, 'wbcr_inp_snippet_activate', '1'),
(1248, 69, '_edit_lock', '1532085540:1'),
(1252, 70, '_edit_last', '1'),
(1253, 70, '_edit_lock', '1532085697:1'),
(1257, 70, 'wbcr_inp_snippet_activate', '1'),
(1258, 71, 'subtitle', 'Our reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery.'),
(1259, 71, '_subtitle', 'field_5b512e95d31c0'),
(1260, 72, 'subtitle', 'Our reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery.'),
(1261, 72, '_subtitle', 'field_5b512e95d31c0'),
(1262, 69, 'wbcr_inp_snippet_code', ' $moffitt_team_1 = get_field(\'moffitt_team_image_1\');'),
(1263, 69, 'wbcr_inp_snippet_scope', 'shortcode'),
(1264, 69, 'wbcr_inp_snippet_description', 'Get Team Image 1'),
(1265, 70, 'wbcr_inp_snippet_code', 'echo $moffitt_team_1[\'url\']; '),
(1266, 70, 'wbcr_inp_snippet_scope', 'shortcode'),
(1267, 70, 'wbcr_inp_snippet_description', ''),
(1268, 73, 'subtitle', 'Our reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery.'),
(1269, 73, '_subtitle', 'field_5b512e95d31c0'),
(1270, 74, '_wp_attached_file', '2018/07/AdobeStock_107434511_Preview.png'),
(1271, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:40:\"2018/07/AdobeStock_107434511_Preview.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"AdobeStock_107434511_Preview-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"AdobeStock_107434511_Preview-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:40:\"AdobeStock_107434511_Preview-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1272, 75, 'subtitle', 'Our reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery.'),
(1273, 75, '_subtitle', 'field_5b512e95d31c0'),
(1274, 76, 'subtitle', 'Our reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery.'),
(1275, 76, '_subtitle', 'field_5b512e95d31c0'),
(1276, 77, '_wp_attached_file', '2018/07/AdobeStock_104397365_Preview.jpeg'),
(1277, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:563;s:4:\"file\";s:41:\"2018/07/AdobeStock_104397365_Preview.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"AdobeStock_104397365_Preview-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"AdobeStock_104397365_Preview-300x169.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"AdobeStock_104397365_Preview-768x432.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:41:\"AdobeStock_104397365_Preview-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:26:\"razvandp - stock.adobe.com\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:28:\"©razvandp - stock.adobe.com\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1278, 78, 'subtitle', 'Our reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery.'),
(1279, 78, '_subtitle', 'field_5b512e95d31c0'),
(1280, 79, 'subtitle', 'Our reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery.'),
(1281, 79, '_subtitle', 'field_5b512e95d31c0'),
(1282, 80, 'subtitle', 'Our reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery.'),
(1283, 80, '_subtitle', 'field_5b512e95d31c0'),
(1284, 81, 'subtitle', 'Our reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery.'),
(1285, 81, '_subtitle', 'field_5b512e95d31c0'),
(1286, 82, 'subtitle', 'Our reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery.'),
(1287, 82, '_subtitle', 'field_5b512e95d31c0'),
(1288, 83, 'subtitle', 'Finding the right people the right position.'),
(1289, 83, '_subtitle', 'field_5b512e95d31c0'),
(1290, 9, 'subtitle', 'Finding the right people the right position.'),
(1291, 9, '_subtitle', 'field_5b512e95d31c0'),
(1292, 85, 'subtitle', 'Finding the right people the right position.'),
(1293, 85, '_subtitle', 'field_5b512e95d31c0'),
(1294, 86, 'subtitle', 'Finding the right people the right position.'),
(1295, 86, '_subtitle', 'field_5b512e95d31c0'),
(1296, 87, 'subtitle', 'Finding the right people the right position.'),
(1297, 87, '_subtitle', 'field_5b512e95d31c0'),
(1298, 88, 'subtitle', 'Finding the right people the right position.'),
(1299, 88, '_subtitle', 'field_5b512e95d31c0'),
(1300, 89, 'subtitle', 'Finding the right people the right position.'),
(1301, 89, '_subtitle', 'field_5b512e95d31c0'),
(1302, 90, 'subtitle', 'Finding the right people the right position.'),
(1303, 90, '_subtitle', 'field_5b512e95d31c0'),
(1304, 91, 'subtitle', 'Finding the right people the right position.'),
(1305, 91, '_subtitle', 'field_5b512e95d31c0'),
(1306, 92, 'subtitle', 'Finding the right people the right position.'),
(1307, 92, '_subtitle', 'field_5b512e95d31c0'),
(1308, 93, 'subtitle', 'Finding the right people the right position.'),
(1309, 93, '_subtitle', 'field_5b512e95d31c0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-06-11 21:53:56', '2018-06-11 21:53:56', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-06-11 21:53:56', '2018-06-11 21:53:56', '', 0, 'http://localhost:8888/moffitt/?p=1', 0, 'post', '', 1),
(5, 1, '2018-06-11 22:01:38', '2018-06-11 22:01:38', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-07-20 00:16:35', '2018-07-20 00:16:35', '', 0, 'http://localhost:8888/moffitt/?page_id=5', 0, 'page', '', 0),
(6, 1, '2018-06-11 22:01:38', '2018-06-11 22:01:38', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-06-11 22:01:38', '2018-06-11 22:01:38', '', 5, 'http://localhost:8888/moffitt/2018/06/11/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-06-11 22:02:29', '2018-06-11 22:02:29', '<h3>A Proven Record</h3>\r\n<p>For more than two decades, Moffitt has quietly become one of the nations most sought after executive search firms. Considered a boutique firm due to our functional expertise and industry specialization – our size ranks us in the top ten percent of existing firms. As our company has grown so has our reach, we have executed searches in almost every state and twenty-two countries. As a result, we have placed thousands of individuals in positions at Fortune 1000 companies, regional businesses, professional organizations and entrepreneurial firms. As an example, many of the most successful companies on the Las Vegas strip have called upon us to assist them with their most difficult placements.\r\n\r\nOur reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery. We do more than merely match candidates to job openings. We work closely with our clients to determine the exact qualifications and skills needed and we interview candidates extensively to ensure their experience and needs are appropriate for the job and culture offered by our clients.\r\n\r\nAt Moffitt we understand the value of the individual. We strive to create a working environment that fosters active listening, encourages creativity and cultivates high quality achievement at all levels of our firm. From our most experienced consultants to the newest members of our team, we expect our people to make a difference for our clients and we give them the opportunity to do so.\r\nAllow us the opportunity to work with you.</p>\r\n\r\n\r\n<h3 style=\"text-align: center;\">We Make It Happen</h3>\r\n<div class=\"moffitt-team-wrapper\">\r\n\r\n<div class=\"moffitt-team-item\">\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4>Tim Moffitt</h4>\r\n<h5>Founder & CEO</h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4>John Brown</h4>\r\n<h5>Partner</h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4>Jane Smith</h4>\r\n<h5>Chief Operations Officer</h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4>Brian Greene</h4>\r\n<h5>Chief Financial Officer</h5>\r\n</div>\r\n</div>\r\n\r\n</div>\r\n\r\n<div class=\"moffitt-history\">\r\n<div class=\"moffitt-history-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_104397365_Preview.jpeg\');\"></div>\r\n<div class=\"moffitt-history-content\">\r\n<h3>Our History</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a auctor velit, non gravida eros. Aliquam nec commodo diam. Curabitur imperdiet semper ex ac sagittis. Nam semper sit amet arcu a maximus. \r\n\r\nPellentesque egestas id ipsum vitae molestie. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis leo. Cras augue diam, fermentum vel sodales a, placerat venenatis neque. Nullam rutrum placerat dolor, eget sollicitudin dolor vestibulum eget. In lacinia leo sed urna lobortis aliquam. Proin iaculis lorem fringilla massa varius, sit amet accumsan ipsum cursus. Donec scelerisque purus mauris, ut euismod nisl imperdiet et.</p>\r\n\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Proin aliquet iaculis imperdiet</a>\r\n</div>\r\n</div>', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-07-20 11:47:32', '2018-07-20 11:47:32', '', 0, 'http://localhost:8888/moffitt/?page_id=7', 0, 'page', '', 0),
(8, 1, '2018-06-11 22:02:29', '2018-06-11 22:02:29', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-06-11 22:02:29', '2018-06-11 22:02:29', '', 7, 'http://localhost:8888/moffitt/2018/06/11/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-06-11 22:02:43', '2018-06-11 22:02:43', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n\r\n<div class=\"moffitt-services\">\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 1</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 2</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 3</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 4</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n</div>', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2018-07-20 12:46:12', '2018-07-20 12:46:12', '', 0, 'http://localhost:8888/moffitt/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-06-11 22:02:43', '2018-06-11 22:02:43', '', 'Services', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-06-11 22:02:43', '2018-06-11 22:02:43', '', 9, 'http://localhost:8888/moffitt/2018/06/11/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-06-11 22:02:53', '2018-06-11 22:02:53', '', 'Clients', '', 'publish', 'closed', 'closed', '', 'clients', '', '', '2018-06-11 22:02:53', '2018-06-11 22:02:53', '', 0, 'http://localhost:8888/moffitt/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-06-11 22:02:53', '2018-06-11 22:02:53', '', 'Clients', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-06-11 22:02:53', '2018-06-11 22:02:53', '', 11, 'http://localhost:8888/moffitt/2018/06/11/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-06-11 22:03:00', '2018-06-11 22:03:00', '', 'Candidates', '', 'publish', 'closed', 'closed', '', 'candidates', '', '', '2018-06-11 22:03:00', '2018-06-11 22:03:00', '', 0, 'http://localhost:8888/moffitt/?page_id=13', 0, 'page', '', 0),
(14, 1, '2018-06-11 22:03:00', '2018-06-11 22:03:00', '', 'Candidates', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-06-11 22:03:00', '2018-06-11 22:03:00', '', 13, 'http://localhost:8888/moffitt/2018/06/11/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-06-11 22:03:13', '2018-06-11 22:03:13', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-06-11 22:03:13', '2018-06-11 22:03:13', '', 0, 'http://localhost:8888/moffitt/?page_id=15', 0, 'page', '', 0),
(16, 1, '2018-06-11 22:03:13', '2018-06-11 22:03:13', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-06-11 22:03:13', '2018-06-11 22:03:13', '', 15, 'http://localhost:8888/moffitt/2018/06/11/15-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-06-11 22:11:45', '2018-06-11 22:11:45', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2018-07-14 23:13:01', '2018-07-14 23:13:01', '', 0, 'http://localhost:8888/moffitt/?p=19', 5, 'nav_menu_item', '', 0),
(20, 1, '2018-06-11 22:11:45', '2018-06-11 22:11:45', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2018-07-14 23:13:01', '2018-07-14 23:13:01', '', 0, 'http://localhost:8888/moffitt/?p=20', 4, 'nav_menu_item', '', 0),
(21, 1, '2018-06-11 22:11:45', '2018-06-11 22:11:45', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2018-07-14 23:13:01', '2018-07-14 23:13:01', '', 0, 'http://localhost:8888/moffitt/?p=21', 3, 'nav_menu_item', '', 0),
(22, 1, '2018-06-11 22:11:45', '2018-06-11 22:11:45', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2018-07-14 23:13:01', '2018-07-14 23:13:01', '', 0, 'http://localhost:8888/moffitt/?p=22', 2, 'nav_menu_item', '', 0),
(23, 1, '2018-06-11 22:11:45', '2018-06-11 22:11:45', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2018-07-14 23:13:01', '2018-07-14 23:13:01', '', 0, 'http://localhost:8888/moffitt/?p=23', 1, 'nav_menu_item', '', 0),
(25, 1, '2018-06-12 12:41:22', '2018-06-12 12:41:22', '\n	asdf\n', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-06-12 12:41:22', '2018-06-12 12:41:22', '', 5, 'http://localhost:8888/moffitt/2018/06/12/5-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-07-12 11:47:00', '2018-07-12 11:47:00', '', 'Statue of Liberty', '', 'inherit', 'open', 'closed', '', 'header', '', '', '2018-07-12 11:47:24', '2018-07-12 11:47:24', '', 0, 'http://localhost:8888/moffitt/wp-content/uploads/2018/07/header.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2018-07-12 11:47:33', '2018-07-12 11:47:33', '{\n    \"Moffitt::header_image\": {\n        \"value\": \"http://localhost:8888/moffitt/wp-content/uploads/2018/07/header.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-12 11:47:33\"\n    },\n    \"Moffitt::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost:8888/moffitt/wp-content/uploads/2018/07/header.png\",\n            \"thumbnail_url\": \"http://localhost:8888/moffitt/wp-content/uploads/2018/07/header.png\",\n            \"timestamp\": 1531396049805,\n            \"attachment_id\": 27,\n            \"width\": 1207,\n            \"height\": 687\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-12 11:47:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b08806dc-5548-4107-b4d1-a360dc783f53', '', '', '2018-07-12 11:47:33', '2018-07-12 11:47:33', '', 0, 'http://localhost:8888/moffitt/2018/07/12/b08806dc-5548-4107-b4d1-a360dc783f53/', 0, 'customize_changeset', '', 0),
(29, 1, '2018-07-14 23:21:50', '2018-07-14 23:21:50', '', 'Home', '', 'publish', 'closed', 'closed', '', 'acf_home', '', '', '2018-07-18 22:54:28', '2018-07-18 22:54:28', '', 0, 'http://localhost:8888/moffitt/?post_type=acf&#038;p=29', 0, 'acf', '', 0),
(30, 1, '2018-07-14 23:27:47', '2018-07-14 23:27:47', 'asdf', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-14 23:27:47', '2018-07-14 23:27:47', '', 5, 'http://localhost:8888/moffitt/2018/07/14/5-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-07-15 00:04:21', '2018-07-15 00:04:21', '', 'logo_placeholder', '', 'inherit', 'open', 'closed', '', 'logo_placeholder', '', '', '2018-07-15 00:04:27', '2018-07-15 00:04:27', '', 0, 'http://localhost:8888/moffitt/wp-content/uploads/2018/07/logo_placeholder.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2018-07-15 00:04:39', '2018-07-15 00:04:39', 'http://localhost:8888/moffitt/wp-content/uploads/2018/07/cropped-logo_placeholder.png', 'cropped-logo_placeholder.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo_placeholder-png', '', '', '2018-07-15 00:04:39', '2018-07-15 00:04:39', '', 0, 'http://localhost:8888/moffitt/wp-content/uploads/2018/07/cropped-logo_placeholder.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2018-07-15 00:04:53', '2018-07-15 00:04:53', '{\n    \"Moffitt::custom_logo\": {\n        \"value\": 33,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-15 00:04:53\"\n    },\n    \"Moffitt::header_textcolor\": {\n        \"value\": \"blank\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-15 00:04:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9bfd3a90-87ff-4f22-a129-654cdcf896ff', '', '', '2018-07-15 00:04:53', '2018-07-15 00:04:53', '', 0, 'http://localhost:8888/moffitt/2018/07/15/9bfd3a90-87ff-4f22-a129-654cdcf896ff/', 0, 'customize_changeset', '', 0),
(35, 1, '2018-07-17 00:01:07', '2018-07-17 00:01:07', 'asdfasdfasdf', 'Home', '', 'inherit', 'closed', 'closed', '', '5-autosave-v1', '', '', '2018-07-17 00:01:07', '2018-07-17 00:01:07', '', 5, 'http://localhost:8888/moffitt/2018/07/16/5-autosave-v1/', 0, 'revision', '', 0),
(36, 1, '2018-07-16 23:55:00', '2018-07-16 23:55:00', '', 'AdobeStock_150572434_Preview', '', 'inherit', 'open', 'closed', '', 'adobestock_150572434_preview', '', '', '2018-07-16 23:55:00', '2018-07-16 23:55:00', '', 5, 'http://localhost:8888/moffitt/wp-content/uploads/2018/07/AdobeStock_150572434_Preview.jpeg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2018-07-16 23:55:06', '2018-07-16 23:55:06', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-16 23:55:06', '2018-07-16 23:55:06', '', 5, 'http://localhost:8888/moffitt/2018/07/16/5-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-07-17 00:01:08', '2018-07-17 00:01:08', 'asdfasdfasdf', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-17 00:01:08', '2018-07-17 00:01:08', '', 5, 'http://localhost:8888/moffitt/2018/07/17/5-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-07-17 00:06:03', '2018-07-17 00:06:03', 'asdfasdf', 'About Us', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-17 00:06:03', '2018-07-17 00:06:03', '', 7, 'http://localhost:8888/moffitt/2018/07/17/7-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-07-17 22:58:24', '2018-07-17 22:58:24', 'asdfasdfasdf', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-17 22:58:24', '2018-07-17 22:58:24', '', 5, 'http://localhost:8888/moffitt/?p=40', 0, 'revision', '', 0),
(41, 1, '2018-07-18 00:22:18', '2018-07-18 00:22:18', 'asdfasdfasdf', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-18 00:22:18', '2018-07-18 00:22:18', '', 5, 'http://localhost:8888/moffitt/?p=41', 0, 'revision', '', 0),
(42, 1, '2018-07-18 00:30:46', '2018-07-18 00:30:46', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-18 00:30:46', '2018-07-18 00:30:46', '', 5, 'http://localhost:8888/moffitt/?p=42', 0, 'revision', '', 0),
(43, 1, '2018-07-18 00:33:07', '2018-07-18 00:33:07', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-18 00:33:07', '2018-07-18 00:33:07', '', 5, 'http://localhost:8888/moffitt/?p=43', 0, 'revision', '', 0),
(44, 1, '2018-07-18 10:16:07', '2018-07-18 10:16:07', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-18 10:16:07', '2018-07-18 10:16:07', '', 5, 'http://localhost:8888/moffitt/?p=44', 0, 'revision', '', 0),
(45, 1, '2018-07-18 10:16:28', '2018-07-18 10:16:28', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-18 10:16:28', '2018-07-18 10:16:28', '', 5, 'http://localhost:8888/moffitt/?p=45', 0, 'revision', '', 0),
(46, 1, '2018-07-18 10:24:20', '2018-07-18 10:24:20', '', 'about_us_home', '', 'inherit', 'open', 'closed', '', 'about_us_home', '', '', '2018-07-18 10:24:20', '2018-07-18 10:24:20', '', 5, 'http://localhost:8888/moffitt/wp-content/uploads/2018/07/about_us_home.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2018-07-18 10:24:28', '2018-07-18 10:24:28', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-18 10:24:28', '2018-07-18 10:24:28', '', 5, 'http://localhost:8888/moffitt/?p=47', 0, 'revision', '', 0),
(48, 1, '2018-07-18 11:01:29', '2018-07-18 11:01:29', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-18 11:01:29', '2018-07-18 11:01:29', '', 5, 'http://localhost:8888/moffitt/?p=48', 0, 'revision', '', 0),
(49, 1, '2018-07-18 21:32:04', '2018-07-18 21:32:04', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-18 21:32:04', '2018-07-18 21:32:04', '', 5, 'http://localhost:8888/moffitt/?p=49', 0, 'revision', '', 0),
(50, 1, '2018-07-18 21:33:57', '2018-07-18 21:33:57', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-18 21:33:57', '2018-07-18 21:33:57', '', 5, 'http://localhost:8888/moffitt/?p=50', 0, 'revision', '', 0),
(52, 1, '2018-07-18 22:12:38', '2018-07-18 22:12:38', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-18 22:12:38', '2018-07-18 22:12:38', '', 5, 'http://localhost:8888/moffitt/?p=52', 0, 'revision', '', 0),
(53, 1, '2018-07-18 22:55:19', '2018-07-18 22:55:19', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-18 22:55:19', '2018-07-18 22:55:19', '', 5, 'http://localhost:8888/moffitt/?p=53', 0, 'revision', '', 0),
(54, 1, '2018-07-19 01:26:06', '2018-07-19 01:26:06', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-19 01:26:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '88a71596-d0b9-471d-b18b-1ded113ff2ee', '', '', '2018-07-19 01:26:06', '2018-07-19 01:26:06', '', 0, 'http://localhost:8888/moffitt/?p=54', 0, 'customize_changeset', '', 0),
(55, 1, '2018-07-19 22:46:04', '2018-07-19 22:46:04', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-19 22:46:04', '2018-07-19 22:46:04', '', 5, 'http://localhost:8888/moffitt/?p=55', 0, 'revision', '', 0),
(56, 1, '2018-07-19 22:46:18', '2018-07-19 22:46:18', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-19 22:46:18', '2018-07-19 22:46:18', '', 5, 'http://localhost:8888/moffitt/?p=56', 0, 'revision', '', 0),
(57, 1, '2018-07-19 22:48:27', '2018-07-19 22:48:27', '', 'AdobeStock_131596221_Preview', '', 'inherit', 'open', 'closed', '', 'adobestock_131596221_preview', '', '', '2018-07-19 22:48:27', '2018-07-19 22:48:27', '', 5, 'http://localhost:8888/moffitt/wp-content/uploads/2018/07/AdobeStock_131596221_Preview.jpeg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2018-07-19 22:49:12', '2018-07-19 22:49:12', '', 'AdobeStock_77654632_Preview', '', 'inherit', 'open', 'closed', '', 'adobestock_77654632_preview', '', '', '2018-07-19 22:49:12', '2018-07-19 22:49:12', '', 5, 'http://localhost:8888/moffitt/wp-content/uploads/2018/07/AdobeStock_77654632_Preview.jpeg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2018-07-19 22:49:23', '2018-07-19 22:49:23', '', 'AdobeStock_88858458_Preview', '', 'inherit', 'open', 'closed', '', 'adobestock_88858458_preview', '', '', '2018-07-19 22:49:23', '2018-07-19 22:49:23', '', 5, 'http://localhost:8888/moffitt/wp-content/uploads/2018/07/AdobeStock_88858458_Preview.jpeg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2018-07-19 22:49:29', '2018-07-19 22:49:29', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-19 22:49:29', '2018-07-19 22:49:29', '', 5, 'http://localhost:8888/moffitt/?p=60', 0, 'revision', '', 0),
(61, 1, '2018-07-20 00:38:18', '2018-07-20 00:38:18', '', 'Content', '', 'publish', 'closed', 'closed', '', 'acf_content', '', '', '2018-07-20 00:38:18', '2018-07-20 00:38:18', '', 0, 'http://localhost:8888/moffitt/?post_type=acf&#038;p=61', 0, 'acf', '', 0),
(62, 1, '2018-07-20 00:40:29', '2018-07-20 00:40:29', 'asdfasdf', 'About Us', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 00:40:29', '2018-07-20 00:40:29', '', 7, 'http://localhost:8888/moffitt/?p=62', 0, 'revision', '', 0),
(63, 1, '2018-07-20 11:43:12', '2018-07-20 11:43:12', '<h3>A Proven Record</h3>\n<p>For more than two decades, Moffitt has quietly become one of the nations most sought after executive search firms. Considered a boutique firm due to our functional expertise and industry specialization – our size ranks us in the top ten percent of existing firms. As our company has grown so has our reach, we have executed searches in almost every state and twenty-two countries. As a result, we have placed thousands of individuals in positions at Fortune 1000 companies, regional businesses, professional organizations and entrepreneurial firms. As an example, many of the most successful companies on the Las Vegas strip have called upon us to assist them with their most difficult placements.\n\nOur reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery. We do more than merely match candidates to job openings. We work closely with our clients to determine the exact qualifications and skills needed and we interview candidates extensively to ensure their experience and needs are appropriate for the job and culture offered by our clients.\n\nAt Moffitt we understand the value of the individual. We strive to create a working environment that fosters active listening, encourages creativity and cultivates high quality achievement at all levels of our firm. From our most experienced consultants to the newest members of our team, we expect our people to make a difference for our clients and we give them the opportunity to do so.\nAllow us the opportunity to work with you.</p>\n\n\n<h3 style=\"text-align: center;\">We Make It Happen</h3>\n<div class=\"moffitt-team-wrapper\">\n\n<div class=\"moffitt-team-item\">\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\n</div>\n<div class=\"moffitt-team-info\">\n<h4>Tim Moffitt</h4>\n<h5>Founder & CEO</h5>\n</div>\n</div>\n\n<div class=\"moffitt-team-item\">\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\n</div>\n<div class=\"moffitt-team-info\">\n<h4>John Brown</h4>\n<h5>Partner</h5>\n</div>\n</div>\n\n<div class=\"moffitt-team-item\">\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\n</div>\n<div class=\"moffitt-team-info\">\n<h4>Jane Smith</h4>\n<h5>Chief Operations Officer</h5>\n</div>\n</div>\n\n<div class=\"moffitt-team-item\">\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\n</div>\n<div class=\"moffitt-team-info\">\n<h4>Brian Greene</h4>\n<h5>Chief Financial Officer</h5>\n</div>\n</div>\n\n</div>\n\n<div class=\"moffitt-history\">\n<div class=\"moffitt-history-content\">\n<h3>Our History</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a auctor velit, non gravida eros. Aliquam nec commodo diam. Curabitur imperdiet semper ex ac sagittis. Nam semper sit amet arcu a maximus. \n\nPellentesque egestas id ipsum vitae molestie. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis leo. Cras augue diam, fermentum vel sodales a, placerat venenatis neque. Nullam rutrum placerat dolor, eget sollicitudin dolor vestibulum eget. In lacinia leo sed urna lobortis aliquam. Proin iaculis lorem fringilla massa varius, sit amet accumsan ipsum cursus. Donec scelerisque purus mauris, ut euismod nisl imperdiet et.</p>\n\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Proin aliquet iaculis imperdiet</a>\n</div>\n<div class=\"moffitt-history-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_104397365_Preview.jpeg\');\">\n<div>\n</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '7-autosave-v1', '', '', '2018-07-20 11:43:12', '2018-07-20 11:43:12', '', 7, 'http://localhost:8888/moffitt/?p=63', 0, 'revision', '', 0),
(64, 1, '2018-07-20 00:54:49', '2018-07-20 00:54:49', '<h3>A Proven Record</h3>\r\n<p>For more than two decades, Moffitt has quietly become one of the nations most sought after executive search firms. Considered a boutique firm due to our functional expertise and industry specialization – our size ranks us in the top ten percent of existing firms. As our company has grown so has our reach, we have executed searches in almost every state and twenty-two countries. As a result, we have placed thousands of individuals in positions at Fortune 1000 companies, regional businesses, professional organizations and entrepreneurial firms. As an example, many of the most successful companies on the Las Vegas strip have called upon us to assist them with their most difficult placements.\r\n\r\nOur reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery. We do more than merely match candidates to job openings. We work closely with our clients to determine the exact qualifications and skills needed and we interview candidates extensively to ensure their experience and needs are appropriate for the job and culture offered by our clients.\r\n\r\nAt Moffitt we understand the value of the individual. We strive to create a working environment that fosters active listening, encourages creativity and cultivates high quality achievement at all levels of our firm. From our most experienced consultants to the newest members of our team, we expect our people to make a difference for our clients and we give them the opportunity to do so.\r\nAllow us the opportunity to work with you.</p>', 'About Us', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 00:54:49', '2018-07-20 00:54:49', '', 7, 'http://localhost:8888/moffitt/?p=64', 0, 'revision', '', 0),
(65, 1, '2018-07-20 01:12:40', '2018-07-20 01:12:40', '<h3>A Proven Record</h3>\r\n<p>For more than two decades, Moffitt has quietly become one of the nations most sought after executive search firms. Considered a boutique firm due to our functional expertise and industry specialization – our size ranks us in the top ten percent of existing firms. As our company has grown so has our reach, we have executed searches in almost every state and twenty-two countries. As a result, we have placed thousands of individuals in positions at Fortune 1000 companies, regional businesses, professional organizations and entrepreneurial firms. As an example, many of the most successful companies on the Las Vegas strip have called upon us to assist them with their most difficult placements.\r\n\r\nOur reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery. We do more than merely match candidates to job openings. We work closely with our clients to determine the exact qualifications and skills needed and we interview candidates extensively to ensure their experience and needs are appropriate for the job and culture offered by our clients.\r\n\r\nAt Moffitt we understand the value of the individual. We strive to create a working environment that fosters active listening, encourages creativity and cultivates high quality achievement at all levels of our firm. From our most experienced consultants to the newest members of our team, we expect our people to make a difference for our clients and we give them the opportunity to do so.\r\nAllow us the opportunity to work with you.</p>\r\n\r\n<div class=\"moffitt-team-wrapper\">\r\n<div class=\"moffitt-team-item\">\r\n</div>\r\n</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 01:12:40', '2018-07-20 01:12:40', '', 7, 'http://localhost:8888/moffitt/?p=65', 0, 'revision', '', 0),
(66, 1, '2018-07-20 10:54:20', '2018-07-20 10:54:20', '<h3>A Proven Record</h3>\r\n<p>For more than two decades, Moffitt has quietly become one of the nations most sought after executive search firms. Considered a boutique firm due to our functional expertise and industry specialization – our size ranks us in the top ten percent of existing firms. As our company has grown so has our reach, we have executed searches in almost every state and twenty-two countries. As a result, we have placed thousands of individuals in positions at Fortune 1000 companies, regional businesses, professional organizations and entrepreneurial firms. As an example, many of the most successful companies on the Las Vegas strip have called upon us to assist them with their most difficult placements.\r\n\r\nOur reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery. We do more than merely match candidates to job openings. We work closely with our clients to determine the exact qualifications and skills needed and we interview candidates extensively to ensure their experience and needs are appropriate for the job and culture offered by our clients.\r\n\r\nAt Moffitt we understand the value of the individual. We strive to create a working environment that fosters active listening, encourages creativity and cultivates high quality achievement at all levels of our firm. From our most experienced consultants to the newest members of our team, we expect our people to make a difference for our clients and we give them the opportunity to do so.\r\nAllow us the opportunity to work with you.</p>\r\n\r\n<h3 style=\"text-align: center;\">We Make It Happen</h3>\r\n<div class=\"moffitt-team-wrapper\">\r\n<div class=\"moffitt-team-item\">\r\n\r\n</div>\r\n</div>\r\n\r\n<h3>Our History</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a auctor velit, non gravida eros. Aliquam nec commodo diam. Curabitur imperdiet semper ex ac sagittis. Nam semper sit amet arcu a maximus. \r\n\r\nPellentesque egestas id ipsum vitae molestie. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis leo. Cras augue diam, fermentum vel sodales a, placerat venenatis neque. Nullam rutrum placerat dolor, eget sollicitudin dolor vestibulum eget. In lacinia leo sed urna lobortis aliquam. Proin iaculis lorem fringilla massa varius, sit amet accumsan ipsum cursus. Donec scelerisque purus mauris, ut euismod nisl imperdiet et. \r\n\r\nProin aliquet iaculis imperdiet.</p>', 'About Us', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 10:54:20', '2018-07-20 10:54:20', '', 7, 'http://localhost:8888/moffitt/?p=66', 0, 'revision', '', 0),
(67, 1, '2018-07-20 11:00:12', '2018-07-20 11:00:12', '<h3>A Proven Record</h3>\r\n<p>For more than two decades, Moffitt has quietly become one of the nations most sought after executive search firms. Considered a boutique firm due to our functional expertise and industry specialization – our size ranks us in the top ten percent of existing firms. As our company has grown so has our reach, we have executed searches in almost every state and twenty-two countries. As a result, we have placed thousands of individuals in positions at Fortune 1000 companies, regional businesses, professional organizations and entrepreneurial firms. As an example, many of the most successful companies on the Las Vegas strip have called upon us to assist them with their most difficult placements.\r\n\r\nOur reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery. We do more than merely match candidates to job openings. We work closely with our clients to determine the exact qualifications and skills needed and we interview candidates extensively to ensure their experience and needs are appropriate for the job and culture offered by our clients.\r\n\r\nAt Moffitt we understand the value of the individual. We strive to create a working environment that fosters active listening, encourages creativity and cultivates high quality achievement at all levels of our firm. From our most experienced consultants to the newest members of our team, we expect our people to make a difference for our clients and we give them the opportunity to do so.\r\nAllow us the opportunity to work with you.</p>\r\n\r\n<h3 style=\"text-align: center;\">We Make It Happen</h3>\r\n<div class=\"moffitt-team-wrapper\">\r\n<div class=\"moffitt-team-item\">\r\n\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-history\">\r\n<div class=\"moffitt-history-content\">\r\n<h3>Our History</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a auctor velit, non gravida eros. Aliquam nec commodo diam. Curabitur imperdiet semper ex ac sagittis. Nam semper sit amet arcu a maximus. \r\n\r\nPellentesque egestas id ipsum vitae molestie. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis leo. Cras augue diam, fermentum vel sodales a, placerat venenatis neque. Nullam rutrum placerat dolor, eget sollicitudin dolor vestibulum eget. In lacinia leo sed urna lobortis aliquam. Proin iaculis lorem fringilla massa varius, sit amet accumsan ipsum cursus. Donec scelerisque purus mauris, ut euismod nisl imperdiet et. \r\n\r\nProin aliquet iaculis imperdiet.</p>\r\n</div>\r\n<div class=\"moffitt-history-image\">\r\n<div>\r\n</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 11:00:12', '2018-07-20 11:00:12', '', 7, 'http://localhost:8888/moffitt/?p=67', 0, 'revision', '', 0),
(68, 1, '2018-07-20 11:07:44', '2018-07-20 11:07:44', '<h3>A Proven Record</h3>\r\n<p>For more than two decades, Moffitt has quietly become one of the nations most sought after executive search firms. Considered a boutique firm due to our functional expertise and industry specialization – our size ranks us in the top ten percent of existing firms. As our company has grown so has our reach, we have executed searches in almost every state and twenty-two countries. As a result, we have placed thousands of individuals in positions at Fortune 1000 companies, regional businesses, professional organizations and entrepreneurial firms. As an example, many of the most successful companies on the Las Vegas strip have called upon us to assist them with their most difficult placements.\r\n\r\nOur reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery. We do more than merely match candidates to job openings. We work closely with our clients to determine the exact qualifications and skills needed and we interview candidates extensively to ensure their experience and needs are appropriate for the job and culture offered by our clients.\r\n\r\nAt Moffitt we understand the value of the individual. We strive to create a working environment that fosters active listening, encourages creativity and cultivates high quality achievement at all levels of our firm. From our most experienced consultants to the newest members of our team, we expect our people to make a difference for our clients and we give them the opportunity to do so.\r\nAllow us the opportunity to work with you.</p>\r\n\r\n\r\n<h3 style=\"text-align: center;\">We Make It Happen</h3>\r\n<div class=\"moffitt-team-wrapper\">\r\n\r\n<div class=\"moffitt-team-item\">\r\n<?php $moffitt_team_1 = get_field(\'moffitt_team_image_1\'); ?>\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(<?php <img src=\"<?php echo $moffitt_team_1[\'url\']; ?>);\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4><?php the_field(\'team_name_1\'); ?></h4>\r\n<h5><?php the_field(\'team_role_1\'); ?></h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<?php $moffitt_team_2 = get_field(\'moffitt_team_image_2\'); ?>\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(<?php <img src=\"<?php echo $moffitt_team_2[\'url\']; ?>);\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4><?php the_field(\'team_name_2\'); ?></h4>\r\n<h5><?php the_field(\'team_role_2\'); ?></h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<?php $moffitt_team_3 = get_field(\'moffitt_team_image_3\'); ?>\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(<?php <img src=\"<?php echo $moffitt_team_3[\'url\']; ?>);\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4><?php the_field(\'team_name_3\'); ?></h4>\r\n<h5><?php the_field(\'team_role_3\'); ?></h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<?php $moffitt_team_4 = get_field(\'moffitt_team_image_4\'); ?>\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(<?php <img src=\"<?php echo $moffitt_team_4[\'url\']; ?>);\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4><?php the_field(\'team_name_4\'); ?></h4>\r\n<h5><?php the_field(\'team_role_4\'); ?></h5>\r\n</div>\r\n</div>\r\n\r\n</div>\r\n\r\n<div class=\"moffitt-history\">\r\n<div class=\"moffitt-history-content\">\r\n<h3>Our History</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a auctor velit, non gravida eros. Aliquam nec commodo diam. Curabitur imperdiet semper ex ac sagittis. Nam semper sit amet arcu a maximus. \r\n\r\nPellentesque egestas id ipsum vitae molestie. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis leo. Cras augue diam, fermentum vel sodales a, placerat venenatis neque. Nullam rutrum placerat dolor, eget sollicitudin dolor vestibulum eget. In lacinia leo sed urna lobortis aliquam. Proin iaculis lorem fringilla massa varius, sit amet accumsan ipsum cursus. Donec scelerisque purus mauris, ut euismod nisl imperdiet et. \r\n\r\nProin aliquet iaculis imperdiet.</p>\r\n</div>\r\n<div class=\"moffitt-history-image\">\r\n<div>\r\n</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 11:07:44', '2018-07-20 11:07:44', '', 7, 'http://localhost:8888/moffitt/?p=68', 0, 'revision', '', 0),
(69, 1, '2018-07-20 11:16:33', '2018-07-20 11:16:33', '', 'Get Team Image 1', '', 'publish', 'closed', 'closed', '', '69', '', '', '2018-07-20 11:21:11', '2018-07-20 11:21:11', '', 0, 'http://localhost:8888/moffitt/?post_type=wbcr-snippets&#038;p=69', 0, 'wbcr-snippets', '', 0),
(70, 1, '2018-07-20 11:17:25', '2018-07-20 11:17:25', '', 'Insert Team Image URL', '', 'publish', 'closed', 'closed', '', 'insert-team-image-url', '', '', '2018-07-20 11:21:36', '2018-07-20 11:21:36', '', 0, 'http://localhost:8888/moffitt/?post_type=wbcr-snippets&#038;p=70', 0, 'wbcr-snippets', '', 0),
(71, 1, '2018-07-20 11:18:01', '2018-07-20 11:18:01', '<h3>A Proven Record</h3>\r\n<p>For more than two decades, Moffitt has quietly become one of the nations most sought after executive search firms. Considered a boutique firm due to our functional expertise and industry specialization – our size ranks us in the top ten percent of existing firms. As our company has grown so has our reach, we have executed searches in almost every state and twenty-two countries. As a result, we have placed thousands of individuals in positions at Fortune 1000 companies, regional businesses, professional organizations and entrepreneurial firms. As an example, many of the most successful companies on the Las Vegas strip have called upon us to assist them with their most difficult placements.\r\n\r\nOur reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery. We do more than merely match candidates to job openings. We work closely with our clients to determine the exact qualifications and skills needed and we interview candidates extensively to ensure their experience and needs are appropriate for the job and culture offered by our clients.\r\n\r\nAt Moffitt we understand the value of the individual. We strive to create a working environment that fosters active listening, encourages creativity and cultivates high quality achievement at all levels of our firm. From our most experienced consultants to the newest members of our team, we expect our people to make a difference for our clients and we give them the opportunity to do so.\r\nAllow us the opportunity to work with you.</p>\r\n\r\n\r\n<h3 style=\"text-align: center;\">We Make It Happen</h3>\r\n<div class=\"moffitt-team-wrapper\">\r\n\r\n<div class=\"moffitt-team-item\">\r\n[wbcr_php_snippet id=\"69\"]\r\n<div class=\"moffitt-team-image\" style=\"background-image: url([wbcr_php_snippet id=\"70\"]);\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4><?php the_field(\'team_name_1\'); ?></h4>\r\n<h5><?php the_field(\'team_role_1\'); ?></h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<?php $moffitt_team_2 = get_field(\'moffitt_team_image_2\'); ?>\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(<?php <img src=\"<?php echo $moffitt_team_2[\'url\']; ?>);\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4><?php the_field(\'team_name_2\'); ?></h4>\r\n<h5><?php the_field(\'team_role_2\'); ?></h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<?php $moffitt_team_3 = get_field(\'moffitt_team_image_3\'); ?>\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(<?php <img src=\"<?php echo $moffitt_team_3[\'url\']; ?>);\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4><?php the_field(\'team_name_3\'); ?></h4>\r\n<h5><?php the_field(\'team_role_3\'); ?></h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<?php $moffitt_team_4 = get_field(\'moffitt_team_image_4\'); ?>\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(<?php <img src=\"<?php echo $moffitt_team_4[\'url\']; ?>);\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4><?php the_field(\'team_name_4\'); ?></h4>\r\n<h5><?php the_field(\'team_role_4\'); ?></h5>\r\n</div>\r\n</div>\r\n\r\n</div>\r\n\r\n<div class=\"moffitt-history\">\r\n<div class=\"moffitt-history-content\">\r\n<h3>Our History</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a auctor velit, non gravida eros. Aliquam nec commodo diam. Curabitur imperdiet semper ex ac sagittis. Nam semper sit amet arcu a maximus. \r\n\r\nPellentesque egestas id ipsum vitae molestie. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis leo. Cras augue diam, fermentum vel sodales a, placerat venenatis neque. Nullam rutrum placerat dolor, eget sollicitudin dolor vestibulum eget. In lacinia leo sed urna lobortis aliquam. Proin iaculis lorem fringilla massa varius, sit amet accumsan ipsum cursus. Donec scelerisque purus mauris, ut euismod nisl imperdiet et. \r\n\r\nProin aliquet iaculis imperdiet.</p>\r\n</div>\r\n<div class=\"moffitt-history-image\">\r\n<div>\r\n</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 11:18:01', '2018-07-20 11:18:01', '', 7, 'http://localhost:8888/moffitt/?p=71', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(72, 1, '2018-07-20 11:19:04', '2018-07-20 11:19:04', '<h3>A Proven Record</h3>\r\n<p>For more than two decades, Moffitt has quietly become one of the nations most sought after executive search firms. Considered a boutique firm due to our functional expertise and industry specialization – our size ranks us in the top ten percent of existing firms. As our company has grown so has our reach, we have executed searches in almost every state and twenty-two countries. As a result, we have placed thousands of individuals in positions at Fortune 1000 companies, regional businesses, professional organizations and entrepreneurial firms. As an example, many of the most successful companies on the Las Vegas strip have called upon us to assist them with their most difficult placements.\r\n\r\nOur reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery. We do more than merely match candidates to job openings. We work closely with our clients to determine the exact qualifications and skills needed and we interview candidates extensively to ensure their experience and needs are appropriate for the job and culture offered by our clients.\r\n\r\nAt Moffitt we understand the value of the individual. We strive to create a working environment that fosters active listening, encourages creativity and cultivates high quality achievement at all levels of our firm. From our most experienced consultants to the newest members of our team, we expect our people to make a difference for our clients and we give them the opportunity to do so.\r\nAllow us the opportunity to work with you.</p>\r\n\r\n\r\n<h3 style=\"text-align: center;\">We Make It Happen</h3>\r\n<div class=\"moffitt-team-wrapper\">\r\n\r\n<div class=\"moffitt-team-item\">\r\n[wbcr_php_snippet id=\"69\"]\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\"[wbcr_php_snippet id=\"70\"]\");\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4><?php the_field(\'team_name_1\'); ?></h4>\r\n<h5><?php the_field(\'team_role_1\'); ?></h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<?php $moffitt_team_2 = get_field(\'moffitt_team_image_2\'); ?>\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(<?php <img src=\"<?php echo $moffitt_team_2[\'url\']; ?>);\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4><?php the_field(\'team_name_2\'); ?></h4>\r\n<h5><?php the_field(\'team_role_2\'); ?></h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<?php $moffitt_team_3 = get_field(\'moffitt_team_image_3\'); ?>\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(<?php <img src=\"<?php echo $moffitt_team_3[\'url\']; ?>);\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4><?php the_field(\'team_name_3\'); ?></h4>\r\n<h5><?php the_field(\'team_role_3\'); ?></h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<?php $moffitt_team_4 = get_field(\'moffitt_team_image_4\'); ?>\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(<?php <img src=\"<?php echo $moffitt_team_4[\'url\']; ?>);\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4><?php the_field(\'team_name_4\'); ?></h4>\r\n<h5><?php the_field(\'team_role_4\'); ?></h5>\r\n</div>\r\n</div>\r\n\r\n</div>\r\n\r\n<div class=\"moffitt-history\">\r\n<div class=\"moffitt-history-content\">\r\n<h3>Our History</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a auctor velit, non gravida eros. Aliquam nec commodo diam. Curabitur imperdiet semper ex ac sagittis. Nam semper sit amet arcu a maximus. \r\n\r\nPellentesque egestas id ipsum vitae molestie. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis leo. Cras augue diam, fermentum vel sodales a, placerat venenatis neque. Nullam rutrum placerat dolor, eget sollicitudin dolor vestibulum eget. In lacinia leo sed urna lobortis aliquam. Proin iaculis lorem fringilla massa varius, sit amet accumsan ipsum cursus. Donec scelerisque purus mauris, ut euismod nisl imperdiet et. \r\n\r\nProin aliquet iaculis imperdiet.</p>\r\n</div>\r\n<div class=\"moffitt-history-image\">\r\n<div>\r\n</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 11:19:04', '2018-07-20 11:19:04', '', 7, 'http://localhost:8888/moffitt/?p=72', 0, 'revision', '', 0),
(73, 1, '2018-07-20 11:21:57', '2018-07-20 11:21:57', '<h3>A Proven Record</h3>\r\n<p>For more than two decades, Moffitt has quietly become one of the nations most sought after executive search firms. Considered a boutique firm due to our functional expertise and industry specialization – our size ranks us in the top ten percent of existing firms. As our company has grown so has our reach, we have executed searches in almost every state and twenty-two countries. As a result, we have placed thousands of individuals in positions at Fortune 1000 companies, regional businesses, professional organizations and entrepreneurial firms. As an example, many of the most successful companies on the Las Vegas strip have called upon us to assist them with their most difficult placements.\r\n\r\nOur reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery. We do more than merely match candidates to job openings. We work closely with our clients to determine the exact qualifications and skills needed and we interview candidates extensively to ensure their experience and needs are appropriate for the job and culture offered by our clients.\r\n\r\nAt Moffitt we understand the value of the individual. We strive to create a working environment that fosters active listening, encourages creativity and cultivates high quality achievement at all levels of our firm. From our most experienced consultants to the newest members of our team, we expect our people to make a difference for our clients and we give them the opportunity to do so.\r\nAllow us the opportunity to work with you.</p>\r\n\r\n\r\n<h3 style=\"text-align: center;\">We Make It Happen</h3>\r\n<div class=\"moffitt-team-wrapper\">\r\n\r\n<div class=\"moffitt-team-item\">\r\n[wbcr_php_snippet id=\"69\"]\r\n<div class=\"moffitt-team-image\" style=\"background-image: url([wbcr_php_snippet id=\"70\"]);\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4><?php the_field(\'team_name_1\'); ?></h4>\r\n<h5><?php the_field(\'team_role_1\'); ?></h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<?php $moffitt_team_2 = get_field(\'moffitt_team_image_2\'); ?>\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(<?php <img src=\"<?php echo $moffitt_team_2[\'url\']; ?>);\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4><?php the_field(\'team_name_2\'); ?></h4>\r\n<h5><?php the_field(\'team_role_2\'); ?></h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<?php $moffitt_team_3 = get_field(\'moffitt_team_image_3\'); ?>\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(<?php <img src=\"<?php echo $moffitt_team_3[\'url\']; ?>);\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4><?php the_field(\'team_name_3\'); ?></h4>\r\n<h5><?php the_field(\'team_role_3\'); ?></h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<?php $moffitt_team_4 = get_field(\'moffitt_team_image_4\'); ?>\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(<?php <img src=\"<?php echo $moffitt_team_4[\'url\']; ?>);\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4><?php the_field(\'team_name_4\'); ?></h4>\r\n<h5><?php the_field(\'team_role_4\'); ?></h5>\r\n</div>\r\n</div>\r\n\r\n</div>\r\n\r\n<div class=\"moffitt-history\">\r\n<div class=\"moffitt-history-content\">\r\n<h3>Our History</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a auctor velit, non gravida eros. Aliquam nec commodo diam. Curabitur imperdiet semper ex ac sagittis. Nam semper sit amet arcu a maximus. \r\n\r\nPellentesque egestas id ipsum vitae molestie. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis leo. Cras augue diam, fermentum vel sodales a, placerat venenatis neque. Nullam rutrum placerat dolor, eget sollicitudin dolor vestibulum eget. In lacinia leo sed urna lobortis aliquam. Proin iaculis lorem fringilla massa varius, sit amet accumsan ipsum cursus. Donec scelerisque purus mauris, ut euismod nisl imperdiet et. \r\n\r\nProin aliquet iaculis imperdiet.</p>\r\n</div>\r\n<div class=\"moffitt-history-image\">\r\n<div>\r\n</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 11:21:57', '2018-07-20 11:21:57', '', 7, 'http://localhost:8888/moffitt/?p=73', 0, 'revision', '', 0),
(74, 1, '2018-07-20 11:24:21', '2018-07-20 11:24:21', '', 'AdobeStock_107434511_Preview', '', 'inherit', 'open', 'closed', '', 'adobestock_107434511_preview', '', '', '2018-07-20 11:24:21', '2018-07-20 11:24:21', '', 0, 'http://localhost:8888/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2018-07-20 11:25:10', '2018-07-20 11:25:10', '<h3>A Proven Record</h3>\r\n<p>For more than two decades, Moffitt has quietly become one of the nations most sought after executive search firms. Considered a boutique firm due to our functional expertise and industry specialization – our size ranks us in the top ten percent of existing firms. As our company has grown so has our reach, we have executed searches in almost every state and twenty-two countries. As a result, we have placed thousands of individuals in positions at Fortune 1000 companies, regional businesses, professional organizations and entrepreneurial firms. As an example, many of the most successful companies on the Las Vegas strip have called upon us to assist them with their most difficult placements.\r\n\r\nOur reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery. We do more than merely match candidates to job openings. We work closely with our clients to determine the exact qualifications and skills needed and we interview candidates extensively to ensure their experience and needs are appropriate for the job and culture offered by our clients.\r\n\r\nAt Moffitt we understand the value of the individual. We strive to create a working environment that fosters active listening, encourages creativity and cultivates high quality achievement at all levels of our firm. From our most experienced consultants to the newest members of our team, we expect our people to make a difference for our clients and we give them the opportunity to do so.\r\nAllow us the opportunity to work with you.</p>\r\n\r\n\r\n<h3 style=\"text-align: center;\">We Make It Happen</h3>\r\n<div class=\"moffitt-team-wrapper\">\r\n\r\n<div class=\"moffitt-team-item\">\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4>Tim Moffitt</h4>\r\n<h5>Founder & CEO</h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<?php $moffitt_team_2 = get_field(\'moffitt_team_image_2\'); ?>\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(<?php <img src=\"<?php echo $moffitt_team_2[\'url\']; ?>);\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4><?php the_field(\'team_name_2\'); ?></h4>\r\n<h5><?php the_field(\'team_role_2\'); ?></h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<?php $moffitt_team_3 = get_field(\'moffitt_team_image_3\'); ?>\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(<?php <img src=\"<?php echo $moffitt_team_3[\'url\']; ?>);\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4><?php the_field(\'team_name_3\'); ?></h4>\r\n<h5><?php the_field(\'team_role_3\'); ?></h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<?php $moffitt_team_4 = get_field(\'moffitt_team_image_4\'); ?>\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(<?php <img src=\"<?php echo $moffitt_team_4[\'url\']; ?>);\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4><?php the_field(\'team_name_4\'); ?></h4>\r\n<h5><?php the_field(\'team_role_4\'); ?></h5>\r\n</div>\r\n</div>\r\n\r\n</div>\r\n\r\n<div class=\"moffitt-history\">\r\n<div class=\"moffitt-history-content\">\r\n<h3>Our History</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a auctor velit, non gravida eros. Aliquam nec commodo diam. Curabitur imperdiet semper ex ac sagittis. Nam semper sit amet arcu a maximus. \r\n\r\nPellentesque egestas id ipsum vitae molestie. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis leo. Cras augue diam, fermentum vel sodales a, placerat venenatis neque. Nullam rutrum placerat dolor, eget sollicitudin dolor vestibulum eget. In lacinia leo sed urna lobortis aliquam. Proin iaculis lorem fringilla massa varius, sit amet accumsan ipsum cursus. Donec scelerisque purus mauris, ut euismod nisl imperdiet et. \r\n\r\nProin aliquet iaculis imperdiet.</p>\r\n</div>\r\n<div class=\"moffitt-history-image\">\r\n<div>\r\n</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 11:25:10', '2018-07-20 11:25:10', '', 7, 'http://localhost:8888/moffitt/?p=75', 0, 'revision', '', 0),
(76, 1, '2018-07-20 11:33:24', '2018-07-20 11:33:24', '<h3>A Proven Record</h3>\r\n<p>For more than two decades, Moffitt has quietly become one of the nations most sought after executive search firms. Considered a boutique firm due to our functional expertise and industry specialization – our size ranks us in the top ten percent of existing firms. As our company has grown so has our reach, we have executed searches in almost every state and twenty-two countries. As a result, we have placed thousands of individuals in positions at Fortune 1000 companies, regional businesses, professional organizations and entrepreneurial firms. As an example, many of the most successful companies on the Las Vegas strip have called upon us to assist them with their most difficult placements.\r\n\r\nOur reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery. We do more than merely match candidates to job openings. We work closely with our clients to determine the exact qualifications and skills needed and we interview candidates extensively to ensure their experience and needs are appropriate for the job and culture offered by our clients.\r\n\r\nAt Moffitt we understand the value of the individual. We strive to create a working environment that fosters active listening, encourages creativity and cultivates high quality achievement at all levels of our firm. From our most experienced consultants to the newest members of our team, we expect our people to make a difference for our clients and we give them the opportunity to do so.\r\nAllow us the opportunity to work with you.</p>\r\n\r\n\r\n<h3 style=\"text-align: center;\">We Make It Happen</h3>\r\n<div class=\"moffitt-team-wrapper\">\r\n\r\n<div class=\"moffitt-team-item\">\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4>Tim Moffitt</h4>\r\n<h5>Founder & CEO</h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4>John Brown</h4>\r\n<h5>Partner</h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4>Jane Smith</h4>\r\n<h5>Chief Operations Officer</h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4>Brian Greene</h4>\r\n<h5>Chief Financial Officer</h5>\r\n</div>\r\n</div>\r\n\r\n</div>\r\n\r\n<div class=\"moffitt-history\">\r\n<div class=\"moffitt-history-content\">\r\n<h3>Our History</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a auctor velit, non gravida eros. Aliquam nec commodo diam. Curabitur imperdiet semper ex ac sagittis. Nam semper sit amet arcu a maximus. \r\n\r\nPellentesque egestas id ipsum vitae molestie. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis leo. Cras augue diam, fermentum vel sodales a, placerat venenatis neque. Nullam rutrum placerat dolor, eget sollicitudin dolor vestibulum eget. In lacinia leo sed urna lobortis aliquam. Proin iaculis lorem fringilla massa varius, sit amet accumsan ipsum cursus. Donec scelerisque purus mauris, ut euismod nisl imperdiet et. \r\n\r\nProin aliquet iaculis imperdiet.</p>\r\n</div>\r\n<div class=\"moffitt-history-image\">\r\n<div>\r\n</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 11:33:24', '2018-07-20 11:33:24', '', 7, 'http://localhost:8888/moffitt/?p=76', 0, 'revision', '', 0),
(77, 1, '2018-07-20 11:37:49', '2018-07-20 11:37:49', '', 'AdobeStock_104397365_Preview', '', 'inherit', 'open', 'closed', '', 'adobestock_104397365_preview', '', '', '2018-07-20 11:37:49', '2018-07-20 11:37:49', '', 0, 'http://localhost:8888/moffitt/wp-content/uploads/2018/07/AdobeStock_104397365_Preview.jpeg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2018-07-20 11:38:23', '2018-07-20 11:38:23', '<h3>A Proven Record</h3>\r\n<p>For more than two decades, Moffitt has quietly become one of the nations most sought after executive search firms. Considered a boutique firm due to our functional expertise and industry specialization – our size ranks us in the top ten percent of existing firms. As our company has grown so has our reach, we have executed searches in almost every state and twenty-two countries. As a result, we have placed thousands of individuals in positions at Fortune 1000 companies, regional businesses, professional organizations and entrepreneurial firms. As an example, many of the most successful companies on the Las Vegas strip have called upon us to assist them with their most difficult placements.\r\n\r\nOur reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery. We do more than merely match candidates to job openings. We work closely with our clients to determine the exact qualifications and skills needed and we interview candidates extensively to ensure their experience and needs are appropriate for the job and culture offered by our clients.\r\n\r\nAt Moffitt we understand the value of the individual. We strive to create a working environment that fosters active listening, encourages creativity and cultivates high quality achievement at all levels of our firm. From our most experienced consultants to the newest members of our team, we expect our people to make a difference for our clients and we give them the opportunity to do so.\r\nAllow us the opportunity to work with you.</p>\r\n\r\n\r\n<h3 style=\"text-align: center;\">We Make It Happen</h3>\r\n<div class=\"moffitt-team-wrapper\">\r\n\r\n<div class=\"moffitt-team-item\">\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4>Tim Moffitt</h4>\r\n<h5>Founder & CEO</h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4>John Brown</h4>\r\n<h5>Partner</h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4>Jane Smith</h4>\r\n<h5>Chief Operations Officer</h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4>Brian Greene</h4>\r\n<h5>Chief Financial Officer</h5>\r\n</div>\r\n</div>\r\n\r\n</div>\r\n\r\n<div class=\"moffitt-history\">\r\n<div class=\"moffitt-history-content\">\r\n<h3>Our History</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a auctor velit, non gravida eros. Aliquam nec commodo diam. Curabitur imperdiet semper ex ac sagittis. Nam semper sit amet arcu a maximus. \r\n\r\nPellentesque egestas id ipsum vitae molestie. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis leo. Cras augue diam, fermentum vel sodales a, placerat venenatis neque. Nullam rutrum placerat dolor, eget sollicitudin dolor vestibulum eget. In lacinia leo sed urna lobortis aliquam. Proin iaculis lorem fringilla massa varius, sit amet accumsan ipsum cursus. Donec scelerisque purus mauris, ut euismod nisl imperdiet et. \r\n\r\nProin aliquet iaculis imperdiet.</p>\r\n</div>\r\n<div class=\"moffitt-history-image\" style=\"background-image: url(\'moffitt/wp-content/uploads/2018/07/AdobeStock_104397365_Preview.jpeg\');\">\r\n<div>\r\n</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 11:38:23', '2018-07-20 11:38:23', '', 7, 'http://localhost:8888/moffitt/?p=78', 0, 'revision', '', 0),
(79, 1, '2018-07-20 11:40:43', '2018-07-20 11:40:43', '<h3>A Proven Record</h3>\r\n<p>For more than two decades, Moffitt has quietly become one of the nations most sought after executive search firms. Considered a boutique firm due to our functional expertise and industry specialization – our size ranks us in the top ten percent of existing firms. As our company has grown so has our reach, we have executed searches in almost every state and twenty-two countries. As a result, we have placed thousands of individuals in positions at Fortune 1000 companies, regional businesses, professional organizations and entrepreneurial firms. As an example, many of the most successful companies on the Las Vegas strip have called upon us to assist them with their most difficult placements.\r\n\r\nOur reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery. We do more than merely match candidates to job openings. We work closely with our clients to determine the exact qualifications and skills needed and we interview candidates extensively to ensure their experience and needs are appropriate for the job and culture offered by our clients.\r\n\r\nAt Moffitt we understand the value of the individual. We strive to create a working environment that fosters active listening, encourages creativity and cultivates high quality achievement at all levels of our firm. From our most experienced consultants to the newest members of our team, we expect our people to make a difference for our clients and we give them the opportunity to do so.\r\nAllow us the opportunity to work with you.</p>\r\n\r\n\r\n<h3 style=\"text-align: center;\">We Make It Happen</h3>\r\n<div class=\"moffitt-team-wrapper\">\r\n\r\n<div class=\"moffitt-team-item\">\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4>Tim Moffitt</h4>\r\n<h5>Founder & CEO</h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4>John Brown</h4>\r\n<h5>Partner</h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4>Jane Smith</h4>\r\n<h5>Chief Operations Officer</h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4>Brian Greene</h4>\r\n<h5>Chief Financial Officer</h5>\r\n</div>\r\n</div>\r\n\r\n</div>\r\n\r\n<div class=\"moffitt-history\">\r\n<div class=\"moffitt-history-content\">\r\n<h3>Our History</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a auctor velit, non gravida eros. Aliquam nec commodo diam. Curabitur imperdiet semper ex ac sagittis. Nam semper sit amet arcu a maximus. \r\n\r\nPellentesque egestas id ipsum vitae molestie. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis leo. Cras augue diam, fermentum vel sodales a, placerat venenatis neque. Nullam rutrum placerat dolor, eget sollicitudin dolor vestibulum eget. In lacinia leo sed urna lobortis aliquam. Proin iaculis lorem fringilla massa varius, sit amet accumsan ipsum cursus. Donec scelerisque purus mauris, ut euismod nisl imperdiet et. \r\n\r\nProin aliquet iaculis imperdiet.</p>\r\n</div>\r\n<div class=\"moffitt-history-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_104397365_Preview.jpeg\');\">\r\n<div>\r\n</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 11:40:43', '2018-07-20 11:40:43', '', 7, 'http://localhost:8888/moffitt/?p=79', 0, 'revision', '', 0),
(80, 1, '2018-07-20 11:41:39', '2018-07-20 11:41:39', '<h3>A Proven Record</h3>\r\n<p>For more than two decades, Moffitt has quietly become one of the nations most sought after executive search firms. Considered a boutique firm due to our functional expertise and industry specialization – our size ranks us in the top ten percent of existing firms. As our company has grown so has our reach, we have executed searches in almost every state and twenty-two countries. As a result, we have placed thousands of individuals in positions at Fortune 1000 companies, regional businesses, professional organizations and entrepreneurial firms. As an example, many of the most successful companies on the Las Vegas strip have called upon us to assist them with their most difficult placements.\r\n\r\nOur reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery. We do more than merely match candidates to job openings. We work closely with our clients to determine the exact qualifications and skills needed and we interview candidates extensively to ensure their experience and needs are appropriate for the job and culture offered by our clients.\r\n\r\nAt Moffitt we understand the value of the individual. We strive to create a working environment that fosters active listening, encourages creativity and cultivates high quality achievement at all levels of our firm. From our most experienced consultants to the newest members of our team, we expect our people to make a difference for our clients and we give them the opportunity to do so.\r\nAllow us the opportunity to work with you.</p>\r\n\r\n\r\n<h3 style=\"text-align: center;\">We Make It Happen</h3>\r\n<div class=\"moffitt-team-wrapper\">\r\n\r\n<div class=\"moffitt-team-item\">\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4>Tim Moffitt</h4>\r\n<h5>Founder & CEO</h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4>John Brown</h4>\r\n<h5>Partner</h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4>Jane Smith</h4>\r\n<h5>Chief Operations Officer</h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4>Brian Greene</h4>\r\n<h5>Chief Financial Officer</h5>\r\n</div>\r\n</div>\r\n\r\n</div>\r\n\r\n<div class=\"moffitt-history\">\r\n<div class=\"moffitt-history-content\">\r\n<h3>Our History</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a auctor velit, non gravida eros. Aliquam nec commodo diam. Curabitur imperdiet semper ex ac sagittis. Nam semper sit amet arcu a maximus. \r\n\r\nPellentesque egestas id ipsum vitae molestie. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis leo. Cras augue diam, fermentum vel sodales a, placerat venenatis neque. Nullam rutrum placerat dolor, eget sollicitudin dolor vestibulum eget. In lacinia leo sed urna lobortis aliquam. Proin iaculis lorem fringilla massa varius, sit amet accumsan ipsum cursus. Donec scelerisque purus mauris, ut euismod nisl imperdiet et.</p>\r\n\r\n<a href=\"#\" class=\"moffitt-body-button\">Proin aliquet iaculis imperdiet.</a>\r\n</div>\r\n<div class=\"moffitt-history-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_104397365_Preview.jpeg\');\">\r\n<div>\r\n</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 11:41:39', '2018-07-20 11:41:39', '', 7, 'http://localhost:8888/moffitt/?p=80', 0, 'revision', '', 0),
(81, 1, '2018-07-20 11:43:14', '2018-07-20 11:43:14', '<h3>A Proven Record</h3>\r\n<p>For more than two decades, Moffitt has quietly become one of the nations most sought after executive search firms. Considered a boutique firm due to our functional expertise and industry specialization – our size ranks us in the top ten percent of existing firms. As our company has grown so has our reach, we have executed searches in almost every state and twenty-two countries. As a result, we have placed thousands of individuals in positions at Fortune 1000 companies, regional businesses, professional organizations and entrepreneurial firms. As an example, many of the most successful companies on the Las Vegas strip have called upon us to assist them with their most difficult placements.\r\n\r\nOur reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery. We do more than merely match candidates to job openings. We work closely with our clients to determine the exact qualifications and skills needed and we interview candidates extensively to ensure their experience and needs are appropriate for the job and culture offered by our clients.\r\n\r\nAt Moffitt we understand the value of the individual. We strive to create a working environment that fosters active listening, encourages creativity and cultivates high quality achievement at all levels of our firm. From our most experienced consultants to the newest members of our team, we expect our people to make a difference for our clients and we give them the opportunity to do so.\r\nAllow us the opportunity to work with you.</p>\r\n\r\n\r\n<h3 style=\"text-align: center;\">We Make It Happen</h3>\r\n<div class=\"moffitt-team-wrapper\">\r\n\r\n<div class=\"moffitt-team-item\">\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4>Tim Moffitt</h4>\r\n<h5>Founder & CEO</h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4>John Brown</h4>\r\n<h5>Partner</h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4>Jane Smith</h4>\r\n<h5>Chief Operations Officer</h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4>Brian Greene</h4>\r\n<h5>Chief Financial Officer</h5>\r\n</div>\r\n</div>\r\n\r\n</div>\r\n\r\n<div class=\"moffitt-history\">\r\n<div class=\"moffitt-history-content\">\r\n<h3>Our History</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a auctor velit, non gravida eros. Aliquam nec commodo diam. Curabitur imperdiet semper ex ac sagittis. Nam semper sit amet arcu a maximus. \r\n\r\nPellentesque egestas id ipsum vitae molestie. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis leo. Cras augue diam, fermentum vel sodales a, placerat venenatis neque. Nullam rutrum placerat dolor, eget sollicitudin dolor vestibulum eget. In lacinia leo sed urna lobortis aliquam. Proin iaculis lorem fringilla massa varius, sit amet accumsan ipsum cursus. Donec scelerisque purus mauris, ut euismod nisl imperdiet et.</p>\r\n\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Proin aliquet iaculis imperdiet</a>\r\n</div>\r\n<div class=\"moffitt-history-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_104397365_Preview.jpeg\');\">\r\n<div>\r\n</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 11:43:14', '2018-07-20 11:43:14', '', 7, 'http://localhost:8888/moffitt/?p=81', 0, 'revision', '', 0),
(82, 1, '2018-07-20 11:45:05', '2018-07-20 11:45:05', '<h3>A Proven Record</h3>\r\n<p>For more than two decades, Moffitt has quietly become one of the nations most sought after executive search firms. Considered a boutique firm due to our functional expertise and industry specialization – our size ranks us in the top ten percent of existing firms. As our company has grown so has our reach, we have executed searches in almost every state and twenty-two countries. As a result, we have placed thousands of individuals in positions at Fortune 1000 companies, regional businesses, professional organizations and entrepreneurial firms. As an example, many of the most successful companies on the Las Vegas strip have called upon us to assist them with their most difficult placements.\r\n\r\nOur reputation is built upon the integrity of our work, the quality of our candidates, the teamwork of our staff and the speed of our delivery. We do more than merely match candidates to job openings. We work closely with our clients to determine the exact qualifications and skills needed and we interview candidates extensively to ensure their experience and needs are appropriate for the job and culture offered by our clients.\r\n\r\nAt Moffitt we understand the value of the individual. We strive to create a working environment that fosters active listening, encourages creativity and cultivates high quality achievement at all levels of our firm. From our most experienced consultants to the newest members of our team, we expect our people to make a difference for our clients and we give them the opportunity to do so.\r\nAllow us the opportunity to work with you.</p>\r\n\r\n\r\n<h3 style=\"text-align: center;\">We Make It Happen</h3>\r\n<div class=\"moffitt-team-wrapper\">\r\n\r\n<div class=\"moffitt-team-item\">\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4>Tim Moffitt</h4>\r\n<h5>Founder & CEO</h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4>John Brown</h4>\r\n<h5>Partner</h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4>Jane Smith</h4>\r\n<h5>Chief Operations Officer</h5>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-team-item\">\r\n<div class=\"moffitt-team-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_107434511_Preview.png\')\">\r\n</div>\r\n<div class=\"moffitt-team-info\">\r\n<h4>Brian Greene</h4>\r\n<h5>Chief Financial Officer</h5>\r\n</div>\r\n</div>\r\n\r\n</div>\r\n\r\n<div class=\"moffitt-history\">\r\n<div class=\"moffitt-history-image\" style=\"background-image: url(\'/moffitt/wp-content/uploads/2018/07/AdobeStock_104397365_Preview.jpeg\');\"></div>\r\n<div class=\"moffitt-history-content\">\r\n<h3>Our History</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a auctor velit, non gravida eros. Aliquam nec commodo diam. Curabitur imperdiet semper ex ac sagittis. Nam semper sit amet arcu a maximus. \r\n\r\nPellentesque egestas id ipsum vitae molestie. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis leo. Cras augue diam, fermentum vel sodales a, placerat venenatis neque. Nullam rutrum placerat dolor, eget sollicitudin dolor vestibulum eget. In lacinia leo sed urna lobortis aliquam. Proin iaculis lorem fringilla massa varius, sit amet accumsan ipsum cursus. Donec scelerisque purus mauris, ut euismod nisl imperdiet et.</p>\r\n\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Proin aliquet iaculis imperdiet</a>\r\n</div>\r\n</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 11:45:05', '2018-07-20 11:45:05', '', 7, 'http://localhost:8888/moffitt/?p=82', 0, 'revision', '', 0),
(83, 1, '2018-07-20 11:52:18', '2018-07-20 11:52:18', '', 'Services', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-07-20 11:52:18', '2018-07-20 11:52:18', '', 9, 'http://localhost:8888/moffitt/?p=83', 0, 'revision', '', 0),
(84, 1, '2018-07-20 12:31:38', '2018-07-20 12:31:38', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\n\n<div class=\"moffitt-services\">\n\n<div class=\"moffitt-services-item\">\n<div class=\"moffitt-services-icon\">\n<i class=\"fas fa-stroopwafel\"></i></div>\n<div class=\"moffitt-services-content\">\n<h3>Featured Service 1</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\n</div>\n</div>\n\n<div class=\"moffitt-services-item\">\n<div class=\"moffitt-services-icon\">\n<i class=\"fas fa-crown\"></i>\n</div>\n<div class=\"moffitt-services-content\">\n<h3>Featured Service 2</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\n</div>\n</div>\n\n<div class=\"moffitt-services-item\">\n<div class=\"moffitt-services-icon\">\n<i class=\"fas fa-crown\"></i>\n</div>\n<div class=\"moffitt-services-content\">\n<h3>Featured Service 3</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\n</div>\n</div>\n\n<div class=\"moffitt-services-item\">\n<div class=\"moffitt-services-icon\">\n<i class=\"fas fa-crown\"></i>\n</div>\n<div class=\"moffitt-services-content\">\n<h3>Featured Service 4</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\n</div>\n</div>\n</div>', 'Services', '', 'inherit', 'closed', 'closed', '', '9-autosave-v1', '', '', '2018-07-20 12:31:38', '2018-07-20 12:31:38', '', 9, 'http://localhost:8888/moffitt/?p=84', 0, 'revision', '', 0),
(85, 1, '2018-07-20 12:01:10', '2018-07-20 12:01:10', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n\r\n<div class=\"moffitt-services\">\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<i class=\"fas fa-crown\"></i>\r\n</div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 1</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>', 'Services', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-07-20 12:01:10', '2018-07-20 12:01:10', '', 9, 'http://localhost:8888/moffitt/?p=85', 0, 'revision', '', 0),
(86, 1, '2018-07-20 12:01:42', '2018-07-20 12:01:42', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n\r\n<div class=\"moffitt-services\">\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<i class=\"fas fa-crown\"></i>\r\n</div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 1</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<i class=\"fas fa-crown\"></i>\r\n</div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 1</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<i class=\"fas fa-crown\"></i>\r\n</div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 2</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<i class=\"fas fa-crown\"></i>\r\n</div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 3</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<i class=\"fas fa-crown\"></i>\r\n</div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 4</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n</div>', 'Services', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-07-20 12:01:42', '2018-07-20 12:01:42', '', 9, 'http://localhost:8888/moffitt/?p=86', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(87, 1, '2018-07-20 12:02:12', '2018-07-20 12:02:12', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n\r\n<div class=\"moffitt-services\">\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<i class=\"fas fa-crown\"></i>\r\n</div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 1</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<i class=\"fas fa-crown\"></i>\r\n</div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 2</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<i class=\"fas fa-crown\"></i>\r\n</div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 3</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<i class=\"fas fa-crown\"></i>\r\n</div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 4</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n</div>', 'Services', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-07-20 12:02:12', '2018-07-20 12:02:12', '', 9, 'http://localhost:8888/moffitt/?p=87', 0, 'revision', '', 0),
(88, 1, '2018-07-20 12:12:43', '2018-07-20 12:12:43', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n\r\n<div class=\"moffitt-services\">\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<p>&#f521;</p>\r\n</div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 1</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<i class=\"fas fa-crown\"></i>\r\n</div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 2</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<i class=\"fas fa-crown\"></i>\r\n</div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 3</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<i class=\"fas fa-crown\"></i>\r\n</div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 4</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n</div>', 'Services', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-07-20 12:12:43', '2018-07-20 12:12:43', '', 9, 'http://localhost:8888/moffitt/?p=88', 0, 'revision', '', 0),
(89, 1, '2018-07-20 12:14:36', '2018-07-20 12:14:36', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n\r\n<div class=\"moffitt-services\">\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<i class=\"fas fa-crown\"></i>\r\n</div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 1</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<i class=\"fas fa-crown\"></i>\r\n</div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 2</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<i class=\"fas fa-crown\"></i>\r\n</div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 3</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<i class=\"fas fa-crown\"></i>\r\n</div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 4</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n</div>', 'Services', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-07-20 12:14:36', '2018-07-20 12:14:36', '', 9, 'http://localhost:8888/moffitt/?p=89', 0, 'revision', '', 0),
(90, 1, '2018-07-20 12:17:03', '2018-07-20 12:17:03', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n\r\n<div class=\"moffitt-services\">\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<i class=\"fas fa-crown\" style=\"font-size: 50px; color: #262626;\"></i>\r\n</div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 1</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<i class=\"fas fa-crown\"></i>\r\n</div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 2</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<i class=\"fas fa-crown\"></i>\r\n</div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 3</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<i class=\"fas fa-crown\"></i>\r\n</div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 4</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n</div>', 'Services', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-07-20 12:17:03', '2018-07-20 12:17:03', '', 9, 'http://localhost:8888/moffitt/?p=90', 0, 'revision', '', 0),
(91, 1, '2018-07-20 12:31:40', '2018-07-20 12:31:40', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n\r\n<div class=\"moffitt-services\">\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<i class=\"fas fa-stroopwafel\"></i></div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 1</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<i class=\"fas fa-crown\"></i>\r\n</div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 2</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<i class=\"fas fa-crown\"></i>\r\n</div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 3</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<i class=\"fas fa-crown\"></i>\r\n</div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 4</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n</div>', 'Services', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-07-20 12:31:40', '2018-07-20 12:31:40', '', 9, 'http://localhost:8888/moffitt/?p=91', 0, 'revision', '', 0),
(92, 1, '2018-07-20 12:32:02', '2018-07-20 12:32:02', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n\r\n<div class=\"moffitt-services\">\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<i class=\"fas fa-crown\"></i>\r\n</div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 1</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<i class=\"fas fa-crown\"></i>\r\n</div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 2</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<i class=\"fas fa-crown\"></i>\r\n</div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 3</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-icon\">\r\n<i class=\"fas fa-crown\"></i>\r\n</div>\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 4</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n</div>', 'Services', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-07-20 12:32:02', '2018-07-20 12:32:02', '', 9, 'http://localhost:8888/moffitt/?p=92', 0, 'revision', '', 0),
(93, 1, '2018-07-20 12:46:12', '2018-07-20 12:46:12', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n\r\n<div class=\"moffitt-services\">\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 1</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 2</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 3</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n\r\n<div class=\"moffitt-services-item\">\r\n<div class=\"moffitt-services-content\">\r\n<h3>Featured Service 4</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat lacus aliquet ligula pellentesque, vitae mattis ex suscipit. Pellentesque dignissim eros cursus, malesuada diam quis, gravida lorem. Fusce placerat facilisis tellus, ut lacinia mauris aliquam vel. Nunc et est non sapien semper finibus.</p>\r\n<a href=\"#\" class=\"moffitt-body-button\" style=\"color: #445faa;\">Get Started</a>\r\n</div>\r\n</div>\r\n</div>', 'Services', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-07-20 12:46:12', '2018-07-20 12:46:12', '', 9, 'http://localhost:8888/moffitt/?p=93', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main', 'main', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0),
(22, 2, 0),
(23, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'moffitt'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"1a228d45a439b3522fa4fcb69b7e043255892bffad8026cc1f97c4d4a6b5a0af\";a:4:{s:10:\"expiration\";i:1532135524;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1531962724;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '26'),
(18, 1, '_fl_builder_launched', '1'),
(19, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(21, 1, 'wp_user-settings', 'editor=html&libraryContent=browse&editor_expand=off&ed_size=450'),
(22, 1, 'wp_user-settings-time', '1532084860'),
(23, 1, 'closedpostboxes_page', 'a:3:{i:0;s:13:\"pageparentdiv\";i:1;s:30:\"nf_admin_metaboxes_appendaform\";i:2;s:10:\"postcustom\";}'),
(24, 1, 'metaboxhidden_page', 'a:7:{i:0;s:6:\"acf_29\";i:1;s:12:\"revisionsdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}'),
(25, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'moffitt', '$P$BWqLkGgNv.QJcJ74RFVRtN620majAt.', 'moffitt', 'absdsgn@gmail.com', '', '2018-06-11 21:53:56', '', 0, 'moffitt');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_chunks`
--
ALTER TABLE `wp_nf3_chunks`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_upgrades`
--
ALTER TABLE `wp_nf3_upgrades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `wp_nf3_chunks`
--
ALTER TABLE `wp_nf3_chunks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=364;

--
-- AUTO_INCREMENT for table `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1310;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
