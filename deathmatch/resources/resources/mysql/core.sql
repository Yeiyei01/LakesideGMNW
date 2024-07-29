/*
 Navicat Premium Data Transfer

 Source Server         : AA
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : core

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 10/10/2021 10:50:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account_loa
-- ----------------------------
DROP TABLE IF EXISTS `account_loa`;
CREATE TABLE `account_loa`  (
  `loa_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `from` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `to` datetime(0) NOT NULL,
  `reason` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `effective` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`loa_id`) USING BTREE,
  INDEX `account_link_idx`(`account_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of account_loa
-- ----------------------------

-- ----------------------------
-- Table structure for accounts
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salt` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `registerdate` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ip` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `admin` float NOT NULL DEFAULT 0,
  `supporter` float NOT NULL DEFAULT 0,
  `vct` float NOT NULL DEFAULT 0,
  `mapper` float NOT NULL DEFAULT 0,
  `scripter` float NOT NULL DEFAULT 0,
  `fmt` float NOT NULL DEFAULT 0,
  `credits` int(11) NOT NULL DEFAULT 0,
  `referrer` int(11) NULL DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT 0,
  `forumid` int(11) NULL DEFAULT NULL,
  `require_password_change` tinyint(1) NOT NULL DEFAULT 0,
  `ucp_lastlogin` datetime(6) NULL DEFAULT NULL,
  `punishpoints` int(11) NOT NULL DEFAULT 0,
  `punishdate` datetime(0) NULL DEFAULT NULL,
  `avatar` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `accounts_username_5a6e02bd_uniq`(`username`) USING BTREE,
  UNIQUE INDEX `forumid_UNIQUE`(`forumid`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE,
  INDEX `account_admin`(`admin`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of accounts
-- ----------------------------
INSERT INTO `accounts` VALUES (1, 'Alejandro', 'bcrypt_sha256$$2b$12$WJ0o1zocEbTT3t67MvjZ4uRXRut9Gy8mxEOM7llRWGgrAhz53e3ta', NULL, 'thejosehv2006@gmail.com', '2021-08-07 17:42:12', '26.159.76.54', 5, 0, 0, 0, 3, 0, 700, NULL, 1, NULL, 0, NULL, 0, NULL, 0);
INSERT INTO `accounts` VALUES (69, 'Luka', 'bcrypt_sha256$$2b$12$OeJVuAwPcGpI3/rN1wlH4eLrG2fNWPgeta2vAqAUkr00vMVqv5yP2', NULL, 'lukahre7@gmail.com', '2021-09-16 16:25:16', '26.77.107.91', 0, 0, 0, 0, 0, 0, 0, NULL, 1, NULL, 0, NULL, 0, NULL, 0);

-- ----------------------------
-- Table structure for bans
-- ----------------------------
DROP TABLE IF EXISTS `bans`;
CREATE TABLE `bans`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mta_serial` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `account` int(11) NULL DEFAULT NULL,
  `admin` int(11) NULL DEFAULT NULL,
  `reason` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `until` datetime(0) NULL DEFAULT NULL,
  `threadid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Handle serial bans instead of using MTA built-in / Maxime' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bans
-- ----------------------------

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `session_data` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_de54fa62`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_session
-- ----------------------------

-- ----------------------------
-- Table structure for google_authenticator
-- ----------------------------
DROP TABLE IF EXISTS `google_authenticator`;
CREATE TABLE `google_authenticator`  (
  `secret` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userid` int(11) NOT NULL,
  `recovery_code` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`secret`) USING BTREE,
  UNIQUE INDEX `secret_UNIQUE`(`secret`) USING BTREE,
  UNIQUE INDEX `userid_UNIQUE`(`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Google Authenticator Integration By Maxime' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of google_authenticator
-- ----------------------------

-- ----------------------------
-- Table structure for paypal_ipn
-- ----------------------------
DROP TABLE IF EXISTS `paypal_ipn`;
CREATE TABLE `paypal_ipn`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business` varchar(127) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `charset` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `custom` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `notify_version` decimal(64, 2) NULL DEFAULT NULL,
  `parent_txn_id` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `receiver_email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `receiver_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `residence_country` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `test_ipn` tinyint(1) NOT NULL,
  `txn_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `txn_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `verify_sign` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address_country` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address_city` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address_country_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address_state` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address_street` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address_zip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contact_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `payer_business_name` varchar(127) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `payer_email` varchar(127) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `payer_id` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `auth_amount` decimal(64, 2) NULL DEFAULT NULL,
  `auth_exp` varchar(28) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `auth_id` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `auth_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `exchange_rate` decimal(64, 16) NULL DEFAULT NULL,
  `invoice` varchar(127) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `item_name` varchar(127) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `item_number` varchar(127) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mc_currency` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mc_fee` decimal(64, 2) NULL DEFAULT NULL,
  `mc_gross` decimal(64, 2) NULL DEFAULT NULL,
  `mc_handling` decimal(64, 2) NULL DEFAULT NULL,
  `mc_shipping` decimal(64, 2) NULL DEFAULT NULL,
  `memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `num_cart_items` int(11) NULL DEFAULT NULL,
  `option_name1` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `option_name2` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `payer_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `payment_date` datetime(6) NULL DEFAULT NULL,
  `payment_gross` decimal(64, 2) NULL DEFAULT NULL,
  `payment_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `payment_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pending_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `protection_eligibility` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  `reason_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remaining_settle` decimal(64, 2) NULL DEFAULT NULL,
  `settle_amount` decimal(64, 2) NULL DEFAULT NULL,
  `settle_currency` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shipping` decimal(64, 2) NULL DEFAULT NULL,
  `shipping_method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tax` decimal(64, 2) NULL DEFAULT NULL,
  `transaction_entity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `auction_buyer_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `auction_closing_date` datetime(6) NULL DEFAULT NULL,
  `auction_multi_item` int(11) NULL DEFAULT NULL,
  `for_auction` decimal(64, 2) NULL DEFAULT NULL,
  `amount` decimal(64, 2) NULL DEFAULT NULL,
  `amount_per_cycle` decimal(64, 2) NULL DEFAULT NULL,
  `initial_payment_amount` decimal(64, 2) NULL DEFAULT NULL,
  `next_payment_date` datetime(6) NULL DEFAULT NULL,
  `outstanding_balance` decimal(64, 2) NULL DEFAULT NULL,
  `payment_cycle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `period_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `profile_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `recurring_payment_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rp_invoice_id` varchar(127) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time_created` datetime(6) NULL DEFAULT NULL,
  `amount1` decimal(64, 2) NULL DEFAULT NULL,
  `amount2` decimal(64, 2) NULL DEFAULT NULL,
  `amount3` decimal(64, 2) NULL DEFAULT NULL,
  `mc_amount1` decimal(64, 2) NULL DEFAULT NULL,
  `mc_amount2` decimal(64, 2) NULL DEFAULT NULL,
  `mc_amount3` decimal(64, 2) NULL DEFAULT NULL,
  `password` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `period1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `period2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `period3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reattempt` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `recur_times` int(11) NULL DEFAULT NULL,
  `recurring` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `retry_at` datetime(6) NULL DEFAULT NULL,
  `subscr_date` datetime(6) NULL DEFAULT NULL,
  `subscr_effective` datetime(6) NULL DEFAULT NULL,
  `subscr_id` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `case_creation_date` datetime(6) NULL DEFAULT NULL,
  `case_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `case_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `receipt_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `currency_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `handling_amount` decimal(64, 2) NULL DEFAULT NULL,
  `transaction_subject` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ipaddress` char(39) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `flag` tinyint(1) NOT NULL,
  `flag_code` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `flag_info` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `query` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `response` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `from_view` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mp_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `option_selection1` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `option_selection2` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `paypal_ipn_8e113603`(`txn_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of paypal_ipn
-- ----------------------------

-- ----------------------------
-- Table structure for purchases
-- ----------------------------
DROP TABLE IF EXISTS `purchases`;
CREATE TABLE `purchases`  (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `txn_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `payer_email` varchar(75) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mc_gross` float(9, 2) NOT NULL,
  `donor` int(11) NULL DEFAULT NULL,
  `date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `donated_for` int(11) NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `method` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  UNIQUE INDEX `txn_id`(`txn_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of purchases
-- ----------------------------

-- ----------------------------
-- Table structure for tc_comments
-- ----------------------------
DROP TABLE IF EXISTS `tc_comments`;
CREATE TABLE `tc_comments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poster` int(11) NOT NULL,
  `comment` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `internal` tinyint(1) NOT NULL DEFAULT 0,
  `tcid` int(11) NOT NULL,
  `system_message` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tcid_idx`(`tcid`) USING BTREE,
  INDEX `comment_poster`(`poster`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tc_comments
-- ----------------------------

-- ----------------------------
-- Table structure for tc_subscribers
-- ----------------------------
DROP TABLE IF EXISTS `tc_subscribers`;
CREATE TABLE `tc_subscribers`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `subscriber_ticket`(`ticket_id`) USING BTREE,
  INDEX `subscriber_account`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tc_subscribers
-- ----------------------------

-- ----------------------------
-- Table structure for tc_tickets
-- ----------------------------
DROP TABLE IF EXISTS `tc_tickets`;
CREATE TABLE `tc_tickets`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creator` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `assign_to` int(11) NULL DEFAULT NULL,
  `subscribers` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ',',
  `date` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `subject` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `private` tinyint(1) NOT NULL DEFAULT 0,
  `last_updated` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `reference` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ticket_creator`(`creator`) USING BTREE,
  INDEX `ticket_assignee`(`assign_to`) USING BTREE,
  INDEX `ticket_status`(`status`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tc_tickets
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
