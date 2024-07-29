
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account_details
-- ----------------------------
DROP TABLE IF EXISTS `account_details`;
CREATE TABLE `account_details`  (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `lastlogin` datetime(0) NULL DEFAULT NULL,
  `warn_style` int(1) NOT NULL DEFAULT 1,
  `hiddenadmin` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `adminjail` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `adminjail_time` int(11) NULL DEFAULT NULL,
  `adminjail_by` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `adminjail_reason` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `muted` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `globalooc` tinyint(3) UNSIGNED NULL DEFAULT 1,
  `friendsmessage` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Hi!',
  `adminjail_permanent` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `adminreports` int(11) NULL DEFAULT 0,
  `warns` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `chatbubbles` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `adminnote` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `appstate` tinyint(1) NULL DEFAULT 0,
  `appdatetime` datetime(0) NULL DEFAULT NULL,
  `appreason` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `help` int(1) NOT NULL DEFAULT 1,
  `adblocked` int(1) NOT NULL DEFAULT 0,
  `newsblocked` int(1) NULL DEFAULT 0,
  `mtaserial` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `d_addiction` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `loginhash` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `transfers` int(11) NULL DEFAULT 0,
  `monitored` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `autopark` int(1) NOT NULL DEFAULT 1,
  `forceUpdate` smallint(1) NOT NULL DEFAULT 0,
  `anotes` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `oldAdminRank` int(11) NULL DEFAULT 0,
  `suspensionTime` bigint(20) NULL DEFAULT NULL,
  `car_license` int(1) NOT NULL DEFAULT 0,
  `adminreports_saved` int(3) NULL DEFAULT 0,
  `cpa_earned` double NULL DEFAULT 0,
  `electionsvoted` int(11) NOT NULL DEFAULT 0,
  `serial_whitelist_cap` int(2) NOT NULL DEFAULT 2,
  `max_characters` int(10) UNSIGNED NOT NULL DEFAULT 30,
  `remember_token` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`account_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 70 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of account_details
-- ----------------------------
INSERT INTO `account_details` VALUES (1, '2021-10-07 16:23:41', 1, 1, 0, NULL, NULL, NULL, 0, 1, 'Epa menol que lo que', 0, 0, 0, 1, NULL, 3, NULL, NULL, 1, 0, 0, '6EC9AEABE01AAB0798611259447BA2A2', NULL, NULL, 0, '', 1, 0, NULL, 0, NULL, 0, 0, 0, 0, 2, 30, '');
INSERT INTO `account_details` VALUES (69, '2021-09-16 18:47:52', 1, 0, 0, NULL, NULL, NULL, 0, 1, 'Hi!', 0, 0, 0, 1, NULL, 0, NULL, NULL, 1, 0, 0, 'BC2D4003DD87B57C06C10CE5D1EB7A94', NULL, NULL, 0, '', 1, 0, NULL, 0, NULL, 0, 0, 0, 0, 2, 30, '');

-- ----------------------------
-- Table structure for account_settings
-- ----------------------------
DROP TABLE IF EXISTS `account_settings`;
CREATE TABLE `account_settings`  (
  `id` int(11) NOT NULL,
  `name` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `value` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`, `name`) USING BTREE,
  INDEX `id_idx`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of account_settings
-- ----------------------------
INSERT INTO `account_settings` VALUES (1, 'duty_admin', '1');
INSERT INTO `account_settings` VALUES (1, 'dynamic_lighting', '0');
INSERT INTO `account_settings` VALUES (1, 'graphic_motionblur', '0');
INSERT INTO `account_settings` VALUES (1, 'graphic_skyclouds', '1');
INSERT INTO `account_settings` VALUES (1, 'settings_hud_style', '1');
INSERT INTO `account_settings` VALUES (1, 'incoming_report_sound', '1');
INSERT INTO `account_settings` VALUES (1, 'incoming_priority_report_sound', '1');
INSERT INTO `account_settings` VALUES (1, 'social_classic_user_interface', '0');
INSERT INTO `account_settings` VALUES (1, 'hide_hud', '0');
INSERT INTO `account_settings` VALUES (1, 'report_panel_mod', '0');
INSERT INTO `account_settings` VALUES (1, 'social_friend_updates_on_off', '0');
INSERT INTO `account_settings` VALUES (1, 'social_friend_updates_msg', '0');
INSERT INTO `account_settings` VALUES (1, 'social_friend_updates_char', '0');
INSERT INTO `account_settings` VALUES (1, 'social_friend_updates_sound', '0');
INSERT INTO `account_settings` VALUES (1, 'social_friend_updates', '0');
INSERT INTO `account_settings` VALUES (1, 'streams', '1');
INSERT INTO `account_settings` VALUES (1, 'graphic_chatbub', '1');
INSERT INTO `account_settings` VALUES (1, 'graphic_shaderradar', '0');
INSERT INTO `account_settings` VALUES (1, 'graphic_shaderwater', '1');
INSERT INTO `account_settings` VALUES (1, 'graphic_shaderveh', '1');
INSERT INTO `account_settings` VALUES (1, 'misc_sounds', '1');
INSERT INTO `account_settings` VALUES (1, 'vehicle_rims', '1');
INSERT INTO `account_settings` VALUES (1, 'social_invite_only', '1');
INSERT INTO `account_settings` VALUES (1, 'social_friends_bypass_pmblock', '0');
INSERT INTO `account_settings` VALUES (1, 'speedo', '1');

-- ----------------------------
-- Table structure for admin_teleports
-- ----------------------------
DROP TABLE IF EXISTS `admin_teleports`;
CREATE TABLE `admin_teleports`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_value` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '/gotoplace #v',
  `location_description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `location_creator` int(10) NOT NULL COMMENT 'User ID',
  `posX` float(10, 6) NOT NULL DEFAULT 0.000000,
  `posY` float(10, 6) NOT NULL DEFAULT 0.000000,
  `posZ` float(10, 6) NOT NULL DEFAULT 0.000000,
  `rot` float(10, 6) NOT NULL DEFAULT 0.000000 COMMENT 'rotation',
  `int` int(6) NOT NULL DEFAULT 0 COMMENT 'interior',
  `dim` int(6) NOT NULL DEFAULT 0 COMMENT 'dimension',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `NAMEUNI`(`location_value`(100)) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = '/tps manager' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_teleports
-- ----------------------------

-- ----------------------------
-- Table structure for adminhistory
-- ----------------------------
DROP TABLE IF EXISTS `adminhistory`;
CREATE TABLE `adminhistory`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL,
  `user_char` int(11) NULL DEFAULT 0,
  `admin` int(10) NULL DEFAULT 0,
  `date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `action` tinyint(3) NOT NULL DEFAULT 6,
  `duration` int(10) NOT NULL DEFAULT 0,
  `reason` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `adminhistory_user_ea155d8a_uniq`(`user`) USING BTREE,
  INDEX `adminhistory_user_char_c1d4310b_uniq`(`user_char`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 22 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of adminhistory
-- ----------------------------

-- ----------------------------
-- Table structure for advertisements
-- ----------------------------
DROP TABLE IF EXISTS `advertisements`;
CREATE TABLE `advertisements`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `address` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `advertisement` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `start` int(11) NOT NULL,
  `expiry` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `section` int(11) NOT NULL,
  `faction` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of advertisements
-- ----------------------------

-- ----------------------------
-- Table structure for apb
-- ----------------------------
DROP TABLE IF EXISTS `apb`;
CREATE TABLE `apb`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `doneby` int(11) NOT NULL,
  `time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of apb
-- ----------------------------

-- ----------------------------
-- Table structure for applications
-- ----------------------------
DROP TABLE IF EXISTS `applications`;
CREATE TABLE `applications`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicant` int(11) NOT NULL DEFAULT 0,
  `dateposted` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `datereviewed` datetime(0) NULL DEFAULT NULL,
  `reviewer` int(11) NOT NULL DEFAULT 0,
  `note` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `question1` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `question2` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `question3` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `question4` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `answer1` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `answer2` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `answer3` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `answer4` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of applications
-- ----------------------------

-- ----------------------------
-- Table structure for applications_questions
-- ----------------------------
DROP TABLE IF EXISTS `applications_questions`;
CREATE TABLE `applications_questions`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `question` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `answer1` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `answer2` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `answer3` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `key` tinyint(1) NOT NULL DEFAULT 1,
  `createdBy` int(8) NOT NULL DEFAULT 0,
  `updatedBy` int(8) NOT NULL DEFAULT 0,
  `createDate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updateDate` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `part` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of applications_questions
-- ----------------------------

-- ----------------------------
-- Table structure for atm_cards
-- ----------------------------
DROP TABLE IF EXISTS `atm_cards`;
CREATE TABLE `atm_cards`  (
  `card_id` int(11) NOT NULL AUTO_INCREMENT,
  `card_owner` int(11) NULL DEFAULT NULL,
  `card_number` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `card_pin` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0000',
  `card_locked` tinyint(1) NOT NULL DEFAULT 0,
  `card_type` tinyint(1) NOT NULL DEFAULT 1,
  `limit_type` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`card_id`) USING BTREE,
  UNIQUE INDEX `card_id_UNIQUE`(`card_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of atm_cards
-- ----------------------------

-- ----------------------------
-- Table structure for atms
-- ----------------------------
DROP TABLE IF EXISTS `atms`;
CREATE TABLE `atms`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` decimal(10, 6) NULL DEFAULT 0.000000,
  `y` decimal(10, 6) NULL DEFAULT 0.000000,
  `z` decimal(10, 6) NULL DEFAULT 0.000000,
  `rotation` decimal(10, 6) NULL DEFAULT 0.000000,
  `dimension` int(5) NULL DEFAULT 0,
  `interior` int(5) NULL DEFAULT 0,
  `deposit` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `limit` int(10) UNSIGNED NULL DEFAULT 5000,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of atms
-- ----------------------------
INSERT INTO `atms` VALUES (1, 963.658203, 2097.229492, 1010.722644, 84.988770, 396, 1, 0, 5000);
INSERT INTO `atms` VALUES (2, 308.377930, -58.074219, 1.278125, 270.896790, 0, 0, 0, 5000);
INSERT INTO `atms` VALUES (4, 834.395508, 1.853516, 1003.887012, 86.647766, 400, 3, 1, 0);
INSERT INTO `atms` VALUES (5, 196.112305, -202.209961, 1.278125, 176.698547, 0, 0, 1, 0);
INSERT INTO `atms` VALUES (6, 242.428711, -172.791016, 1.278125, 92.613403, 0, 0, 1, 0);
INSERT INTO `atms` VALUES (7, 216.899414, -62.277344, 1.278125, 178.857422, 0, 0, 1, 0);
INSERT INTO `atms` VALUES (8, 307.638672, -172.259766, 1.278125, 179.840698, 0, 0, 1, 0);
INSERT INTO `atms` VALUES (9, 256.219727, -232.715820, 1.865885, 358.503082, 0, 0, 1, 0);
INSERT INTO `atms` VALUES (10, 67.729492, -188.950195, 1.417813, 181.691910, 0, 0, 1, 0);
INSERT INTO `atms` VALUES (11, 693.360535, -635.023254, 16.220103, 90.300720, 0, 0, 1, 0);
INSERT INTO `atms` VALUES (12, 661.271484, -575.969727, 16.035938, 82.489349, 0, 0, 1, 0);
INSERT INTO `atms` VALUES (13, 691.144531, -501.312500, 16.035938, 87.949646, 0, 0, 1, 0);
INSERT INTO `atms` VALUES (14, 801.330078, -569.564453, 16.035938, 86.872986, 0, 0, 1, 0);
INSERT INTO `atms` VALUES (15, -33.858398, 1046.446899, 19.484374, 1.892426, 0, 0, 1, 0);
INSERT INTO `atms` VALUES (16, -89.688477, 1107.846680, 19.442188, 181.538101, 0, 0, 1, 0);
INSERT INTO `atms` VALUES (17, -180.738281, 1175.504883, 19.442188, 91.685059, 0, 0, 1, 0);
INSERT INTO `atms` VALUES (18, -21.706055, 1175.231445, 19.263381, 358.964539, 0, 0, 1, 0);
INSERT INTO `atms` VALUES (19, -219.739258, 1178.780273, 19.442188, 277.906158, 0, 0, 1, 0);
INSERT INTO `atms` VALUES (20, -329.515625, 1061.121094, 19.442188, 181.631500, 0, 0, 1, 0);

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `author` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `book` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `readOnly` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = 'This is used for the book system. // Chaos' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES (1, 'New Book', 'Unknown', 'The begining of something great...', 0);
INSERT INTO `books` VALUES (2, 'New Book', 'Unknown', 'The begining of something great...', 0);

-- ----------------------------
-- Table structure for character_settings
-- ----------------------------
DROP TABLE IF EXISTS `character_settings`;
CREATE TABLE `character_settings`  (
  `id` int(11) NOT NULL,
  `name` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `value` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`, `name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of character_settings
-- ----------------------------

-- ----------------------------
-- Table structure for characters
-- ----------------------------
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `charactername` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `account` int(11) NULL DEFAULT 0,
  `x` float NULL DEFAULT 1169.73,
  `y` float NULL DEFAULT -1413.91,
  `z` float NULL DEFAULT 13.48,
  `rotation` float NULL DEFAULT 359.388,
  `interior_id` int(5) NULL DEFAULT 0,
  `dimension_id` int(5) NULL DEFAULT 0,
  `health` float NULL DEFAULT 100,
  `armor` float NULL DEFAULT 0,
  `skin` int(3) NULL DEFAULT 264,
  `money` bigint(20) NULL DEFAULT 500,
  `gender` int(1) NULL DEFAULT 0,
  `cuffed` int(11) NULL DEFAULT 0,
  `duty` int(3) NULL DEFAULT 0,
  `fightstyle` int(2) NULL DEFAULT 4,
  `pdjail` int(1) NULL DEFAULT 0,
  `pdjail_time` int(11) NULL DEFAULT 0,
  `cked` int(1) NULL DEFAULT 0,
  `lastarea` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `age` int(3) NULL DEFAULT 18,
  `skincolor` int(1) NULL DEFAULT 0,
  `weight` int(3) NULL DEFAULT 180,
  `height` int(3) NULL DEFAULT 180,
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `deaths` int(11) NULL DEFAULT 0,
  `faction_leader` int(1) NULL DEFAULT 0,
  `fingerprint` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `casualskin` int(3) NULL DEFAULT 0,
  `bankmoney` bigint(20) NULL DEFAULT 1000,
  `car_license` int(1) NULL DEFAULT 0,
  `bike_license` int(1) NULL DEFAULT 0,
  `pilot_license` int(1) NULL DEFAULT 0,
  `fish_license` int(1) NULL DEFAULT 0,
  `boat_license` int(1) NULL DEFAULT 0,
  `gun_license` int(1) NULL DEFAULT 0,
  `gun2_license` int(1) NULL DEFAULT 0,
  `tag` int(3) NULL DEFAULT 1,
  `hoursplayed` int(11) NULL DEFAULT 0,
  `pdjail_station` int(1) NULL DEFAULT 0,
  `timeinserver` int(2) NULL DEFAULT 0,
  `restrainedobj` int(11) NULL DEFAULT 0,
  `restrainedby` int(11) NULL DEFAULT 0,
  `dutyskin` int(3) NULL DEFAULT -1,
  `fish` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `blindfold` tinyint(4) NOT NULL DEFAULT 0,
  `lang1` tinyint(2) NULL DEFAULT 1,
  `lang1skill` tinyint(3) NULL DEFAULT 100,
  `lang2` tinyint(2) NULL DEFAULT 0,
  `lang2skill` tinyint(3) NULL DEFAULT 0,
  `lang3` tinyint(2) NULL DEFAULT 0,
  `lang3skill` tinyint(3) NULL DEFAULT 0,
  `currlang` tinyint(1) NULL DEFAULT 1,
  `lastlogin` datetime(0) NULL DEFAULT NULL,
  `creationdate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `election_candidate` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `election_canvote` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `election_votedfor` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `marriedto` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `photos` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maxvehicles` int(4) UNSIGNED NOT NULL DEFAULT 5,
  `ck_info` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alcohollevel` float NOT NULL DEFAULT 0,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `recovery` int(1) NULL DEFAULT 0,
  `recoverytime` bigint(20) NULL DEFAULT NULL,
  `walkingstyle` int(3) NOT NULL DEFAULT 0,
  `job` int(3) NOT NULL DEFAULT 0,
  `day` tinyint(2) NOT NULL DEFAULT 1,
  `month` tinyint(2) NOT NULL DEFAULT 1,
  `maxinteriors` int(4) NOT NULL DEFAULT 10,
  `clothingid` int(10) UNSIGNED NULL DEFAULT NULL,
  `death_date` datetime(0) NULL DEFAULT NULL,
  `max_clothes` int(10) UNSIGNED NOT NULL DEFAULT 3,
  `date_of_birth` date NULL DEFAULT NULL,
  `yo` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `hunger` int(100) NULL DEFAULT 100,
  `thirst` int(100) NULL DEFAULT 100,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 91 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of characters
-- ----------------------------
INSERT INTO `characters` VALUES (1, 'Rufus_Sewell', 1, 113.624, 1193.59, 18.0506, 90.2418, 0, 0, 68, 49, 162, 36988, 0, 0, 6, 4, 0, 0, 0, 'Fort Carson, Bone County', 27, 1, 85, 190, '[ [ \"Cafe Claros\", \"\", \"\", \"\", \"\", \"\", \"\" ] ]', 0, 0, '528DC7266506A2A2225F49A062EA4188', 0, 4169, 0, 0, 0, 0, 0, 0, 0, 1, 10, 0, 63, 0, 0, -1, 0, 0, 1, 100, 0, 0, 0, 0, 1, '2021-10-07 16:23:41', '2021-08-07 17:52:12', 0, 0, 0, 0, 0, 5, NULL, 0, 1, 0, NULL, 128, 0, 2, 1, 10, NULL, NULL, 3, '1994-01-02', NULL, 100, 100);
INSERT INTO `characters` VALUES (2, 'Bill_Hollister', 1, 186.66, -177.886, 8.63825, 15.8837, 0, 0, 76, 100, 285, 10367, 0, 0, 0, 4, 0, 0, 0, 'Blueberry, Red County', 16, 1, 50, 180, '', 0, 0, 'BA78B26E0180C5B3822AB54D4B74BA8E', 0, 14295, 1, 0, 0, 0, 0, 1, 1, 1, 55, 0, 75, 0, 0, -1, 0, 0, 1, 100, 0, 0, 0, 0, 1, '2021-09-22 17:17:07', '2021-08-19 23:10:14', 0, 0, 0, 0, 0, 5, NULL, 0, 1, 0, NULL, 128, 5, 2, 1, 10, NULL, NULL, 3, '1994-01-02', NULL, 100, 100);
INSERT INTO `characters` VALUES (90, 'Luka_Beccaria', 69, 345.101, 1027.45, 35.7057, 103.446, 0, 0, 8, 0, 56, 510, 1, 0, 0, 4, 0, 0, 0, 'Hunter Quarry, Bone County', 16, 1, 50, 150, '', 0, 0, '6FD45621822603730A9C1A1FA10FFF9A', 0, 1263, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 71, 0, 0, -1, 0, 0, 1, 100, 0, 0, 0, 0, 1, '2021-09-16 18:47:52', '2021-09-16 16:25:47', 0, 0, 0, 0, 0, 5, NULL, 0, 1, 0, NULL, 129, 0, 1, 1, 10, NULL, NULL, 3, '2005-01-01', NULL, 100, 100);

-- ----------------------------
-- Table structure for characters_faction
-- ----------------------------
DROP TABLE IF EXISTS `characters_faction`;
CREATE TABLE `characters_faction`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `character_id` int(11) NOT NULL,
  `faction_id` int(11) NOT NULL,
  `faction_rank` int(11) NOT NULL,
  `faction_leader` int(11) NOT NULL,
  `faction_phone` int(11) NULL DEFAULT NULL,
  `faction_perks` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 128 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of characters_faction
-- ----------------------------
INSERT INTO `characters_faction` VALUES (127, 2, 3, 101, 1, NULL, NULL);
INSERT INTO `characters_faction` VALUES (126, 2, 8, 50, 1, NULL, NULL);

-- ----------------------------
-- Table structure for clothing
-- ----------------------------
DROP TABLE IF EXISTS `clothing`;
CREATE TABLE `clothing`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `skin` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'A set of clean clothes.',
  `price` int(11) UNSIGNED NOT NULL DEFAULT 50,
  `date` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `creator_char` int(10) NOT NULL DEFAULT 0,
  `for_sale_until` datetime(0) NULL DEFAULT NULL,
  `distribution` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `manufactured_date` datetime(0) NULL DEFAULT NULL,
  `sold` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of clothing
-- ----------------------------

-- ----------------------------
-- Table structure for commands
-- ----------------------------
DROP TABLE IF EXISTS `commands`;
CREATE TABLE `commands`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `command` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `hotkey` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `explanation` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `permission` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 1,
  `last_update` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 554 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Saves all info about all kinds of supported commands and con' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of commands
-- ----------------------------
INSERT INTO `commands` VALUES (2, 'getkey', 'N/A', 'Spawns yourself a key of interior or vehicle that you\'re currently in.', 1, 3, '2014-06-19 16:42:52');
INSERT INTO `commands` VALUES (3, 'cr', 'N/A', 'without specified ID will close all your own accepted reports.', 21, 7, '2014-11-23 16:51:19');
INSERT INTO `commands` VALUES (4, 'createemitter [Emitter Type]', 'N/A', 'Spawns Synced Fire/Water Emitters', 1, 5, '2014-06-15 03:29:28');
INSERT INTO `commands` VALUES (5, 'nearbyemitters', 'N/A', 'Shows all nearby Fire/Water emitters.', 1, 5, '2014-06-26 11:42:01');
INSERT INTO `commands` VALUES (6, 'delemitters', 'N/A', 'Deletes all nearby Fire/Water emitters.', 1, 7, '2014-06-15 19:14:33');
INSERT INTO `commands` VALUES (7, 'delemitter [Emitter ID]', 'N/A', 'Deletes a Fire/Water emitters.', 1, 7, '2014-06-15 19:14:19');
INSERT INTO `commands` VALUES (8, 'delnearbyshops', 'N/A', 'Deletes nearby shops.', 1, 7, '2014-06-15 19:21:37');
INSERT INTO `commands` VALUES (9, 'reloadshop', 'N/A', 'Reloads a bugged shop.', 1, 4, '2014-06-26 12:02:29');
INSERT INTO `commands` VALUES (10, 'restoreshop', 'N/A', 'Restores a deleted NPC from SQL.', 1, 4, '2014-06-26 12:02:24');
INSERT INTO `commands` VALUES (11, 'delshop', 'N/A', 'Deletes a NPC from game, still exist in SQL.', 1, 4, '2014-06-15 19:23:02');
INSERT INTO `commands` VALUES (12, 'showallcustomshops', 'N/A', 'Shows all custom shops parameters and settings.', 1, 6, '2014-06-17 21:32:04');
INSERT INTO `commands` VALUES (13, 'fixnearbye', 'N/A', 'Fixes near by elevators. Players can use too.', 0, 7, '2014-06-26 11:58:47');
INSERT INTO `commands` VALUES (15, 'findvehid', 'N/A', 'Gets car\'s Model ID from Name.', 0, 3, '2014-06-26 11:57:13');
INSERT INTO `commands` VALUES (17, 'respawnint', 'N/A', 'Respawns all vehicle within current interior/dimension.', 0, 3, '2014-06-26 11:48:41');
INSERT INTO `commands` VALUES (18, 'restock', 'N/A', 'Restocks businesses, you must be inside an interior to restock. Or use SYNTAX: /restock [Interior ID] [Amount 1~300]', 1, 4, '2014-06-26 11:49:21');
INSERT INTO `commands` VALUES (19, 'ojail [Exact Username] [Minutes(>=1) 999=Perm] [Reason]', 'N/A', 'Jails an offline player.', 1, 7, '2014-06-26 11:43:48');
INSERT INTO `commands` VALUES (20, 'sojail', 'N/A', 'Silently jail an offline player, only informs other administrators', 1, 7, '2014-06-17 21:25:36');
INSERT INTO `commands` VALUES (21, 'oban [Exact Username] [Time in Hours, 0 = Infinite] [Reason]', 'N/A', 'Bans an offline player.', 1, 7, '2014-06-26 11:43:38');
INSERT INTO `commands` VALUES (22, 'delefromint [Interior ID, 0 = world map]', 'N/A', 'Deletes all elevators that connect to a specified interior.', 3, 7, '2014-06-15 19:12:33');
INSERT INTO `commands` VALUES (23, 'delnearbye', 'N/A', 'Deletes all nearby elevators.', 11, 7, '2015-01-22 01:08:27');
INSERT INTO `commands` VALUES (24, 'srd', 'N/A', 'stops all radios in the district you\'re in.', 1, 3, '2014-06-17 21:22:41');
INSERT INTO `commands` VALUES (25, 'adde', 'N/A', 'creates an elevator', 1, 7, '2014-06-19 16:30:30');
INSERT INTO `commands` VALUES (26, 'adde2', 'N/A', 'Create an elevator between you and another player', 1, 7, '2014-06-19 16:30:39');
INSERT INTO `commands` VALUES (27, 'dele', 'N/A', 'deletes an elevator', 0, 7, '2015-01-22 01:09:08');
INSERT INTO `commands` VALUES (28, 'nearbye', 'N/A', 'shows nearby elevators', 1, 4, '2014-06-26 11:41:51');
INSERT INTO `commands` VALUES (29, 'togglee', 'N/A', 'enables/disables an elevator', 1, 7, '2014-06-17 21:14:38');
INSERT INTO `commands` VALUES (30, 'togautocheck', 'N/A', 'Toogles auto opening player /check on /ar reports.', 11, 1, '2014-06-17 21:15:56');
INSERT INTO `commands` VALUES (31, 'changewarnstyle', 'N/A', 'changes warning message displaying style.', 1, 7, '2014-07-18 02:42:56');
INSERT INTO `commands` VALUES (32, 'ur', 'N/A', 'view unanswered reports.', 11, 1, '2014-06-15 15:48:55');
INSERT INTO `commands` VALUES (34, 'adminlounge', 'N/A', 'Chill out in the lounge', 1, 7, '2014-06-15 03:08:12');
INSERT INTO `commands` VALUES (35, 'check', 'N/A', 'retrieves specified player\'s information', 11, 7, '2014-06-15 19:07:21');
INSERT INTO `commands` VALUES (36, 'stats', 'N/A', 'shows players vehicle id\'s, languages etc', 1, 7, '2014-06-15 03:21:44');
INSERT INTO `commands` VALUES (37, 'history', 'N/A', 'Checks your own admin history', 0, 7, '2014-06-26 11:59:30');
INSERT INTO `commands` VALUES (38, 'auncuff', 'N/A', 'uncuffs the player', 1, 5, '2014-06-15 19:07:51');
INSERT INTO `commands` VALUES (39, 'revive', 'N/A', 'revives a player that has been PKd.', 1, 7, '2014-06-26 11:49:53');
INSERT INTO `commands` VALUES (40, 'pmute', 'N/A', 'mutes the player', 1, 1, '2014-07-15 11:36:44');
INSERT INTO `commands` VALUES (41, 'togooc', 'N/A', 'Toggles global OOC chat.', 1, 1, '2014-06-17 21:11:56');
INSERT INTO `commands` VALUES (42, 'stogooc', 'N/A', 'Silently toggles global OOC and only informs other administrators', 1, 1, '2014-06-17 21:24:31');
INSERT INTO `commands` VALUES (43, 'disarm', 'N/A', 'takes all weapon from the player', 1, 5, '2014-06-19 16:35:32');
INSERT INTO `commands` VALUES (44, 'freconnect', 'N/A', 'reconnects the player', 1, 7, '2014-06-15 16:06:40');
INSERT INTO `commands` VALUES (45, 'giveitem', 'N/A', 'gives the player the specified item, see /items for ids', 1, 5, '2014-06-21 14:41:56');
INSERT INTO `commands` VALUES (46, 'sethp', 'N/A', 'sets the health of the player', 1, 7, '2014-06-26 11:52:51');
INSERT INTO `commands` VALUES (47, 'setarmor', 'N/A', 'sets the armor of the player', 1, 5, '2014-11-02 19:16:47');
INSERT INTO `commands` VALUES (48, 'setskin', 'N/A', 'sets the skin of a player', 1, 7, '2014-06-26 11:54:47');
INSERT INTO `commands` VALUES (49, 'changename', 'N/A', 'Renames a player if they have less than (or) 5 hours player on it.', 11, 7, '2014-07-18 02:43:13');
INSERT INTO `commands` VALUES (50, 'slap', 'N/A', 'drops the player from a height of 15', 1, 7, '2014-06-17 21:26:58');
INSERT INTO `commands` VALUES (51, 'recon', 'N/A', 'spectate a player', 1, 7, '2014-06-26 11:44:58');
INSERT INTO `commands` VALUES (52, 'fuckrecon', 'N/A', 'forces recon to stop', 1, 7, '2014-06-19 16:40:43');
INSERT INTO `commands` VALUES (53, 'pkick', 'N/A', 'kicks the player from the server', 1, 7, '2014-06-26 11:44:24');
INSERT INTO `commands` VALUES (54, 'pban', 'N/A', 'bans the player for the given time, specify 0 as hours for permanent ban', 1, 7, '2014-06-26 11:44:16');
INSERT INTO `commands` VALUES (55, 'unban', 'N/A', 'unbans the player with the given character name', 1, 7, '2014-06-17 21:05:55');
INSERT INTO `commands` VALUES (58, 'gotoplace', 'N/A', 'Teleports you to a preset places', 11, 7, '2014-06-26 11:36:58');
INSERT INTO `commands` VALUES (59, 'jail', 'N/A', 'jails the player, if minutes >= 999 it\'s permanent', 1, 7, '2014-06-26 11:39:13');
INSERT INTO `commands` VALUES (60, 'unjail', 'N/A', 'unjails the player', 1, 7, '2014-06-15 03:04:53');
INSERT INTO `commands` VALUES (61, 'jailed', 'N/A', 'shows a list of players that are in adminjail, including time left and reason', 1, 7, '2014-06-26 11:39:21');
INSERT INTO `commands` VALUES (62, 'goto', 'N/A', 'Teleports you to another player [id/name]', 11, 7, '2014-06-26 11:35:42');
INSERT INTO `commands` VALUES (64, 'sendto', 'N/A', 'teleports a player to another one', 11, 7, '2014-06-26 11:50:35');
INSERT INTO `commands` VALUES (69, 'adminduty', 'N/A', '(un)marks you as admin on duty', 1, 1, '2014-10-05 13:11:37');
INSERT INTO `commands` VALUES (70, 'setmotd', 'N/A', 'updates the message of the day', 3, 1, '2014-06-26 11:54:20');
INSERT INTO `commands` VALUES (72, 'amotd', 'N/A', 'shows the current admin message of the day', 1, 1, '2014-06-19 16:32:03');
INSERT INTO `commands` VALUES (73, 'warn', 'N/A', 'issues a warning, player is banned when having 3 warnings', 1, 7, '2014-06-15 15:44:51');
INSERT INTO `commands` VALUES (74, 'showinv', 'N/A', 'views the inventory of the player', 1, 5, '2014-06-17 21:29:22');
INSERT INTO `commands` VALUES (75, 'togmytag', 'N/A', 'toggles your nametag on and off', 41, 7, '2014-06-17 21:12:38');
INSERT INTO `commands` VALUES (76, 'dropme', 'N/A', 'drops you off at the current freecam position', 1, 7, '2014-07-07 18:38:13');
INSERT INTO `commands` VALUES (77, 'disappear', 'N/A', 'disappear', 1, 7, '2014-06-19 16:35:23');
INSERT INTO `commands` VALUES (79, 'findalts', 'N/A', 'shows all characters the player has', 1, 7, '2014-06-19 16:36:55');
INSERT INTO `commands` VALUES (80, 'findip', 'N/A', 'shows all accounts the player has', 1, 7, '2014-06-19 16:37:03');
INSERT INTO `commands` VALUES (81, 'findserial', 'N/A', 'shows all accounts the player has', 1, 7, '2014-06-19 16:37:13');
INSERT INTO `commands` VALUES (82, 'setlanguage or /setlang', 'N/A', 'adjusts the skill of a player\'s language, or learns it to him', 1, 1, '2014-06-26 11:54:05');
INSERT INTO `commands` VALUES (83, 'dellanguage', 'N/A', 'deletes a language from the player\'s knowledge', 1, 7, '2014-06-15 19:16:50');
INSERT INTO `commands` VALUES (84, 'aunblindfold', 'N/A', 'unblindfold the player', 1, 5, '2014-06-15 19:05:37');
INSERT INTO `commands` VALUES (85, 'agivelicense', 'N/A', 'gives the player a license', 1, 5, '2014-06-15 03:06:45');
INSERT INTO `commands` VALUES (86, 'resetcontract', 'N/A', 'resets the job time limit for a person.', 1, 6, '2014-06-26 11:47:40');
INSERT INTO `commands` VALUES (88, 'freezead', 'N/A', 'Freeze an advert.', 1, 1, '2015-01-08 19:33:39');
INSERT INTO `commands` VALUES (89, 'unfreeze', 'N/A', 'Unfreeze a frozen advertisement', 11, 7, '2014-06-17 00:55:54');
INSERT INTO `commands` VALUES (90, 'deletead', 'N/A', 'Delete an advert', 1, 1, '2015-01-08 19:33:28');
INSERT INTO `commands` VALUES (92, 'itemprotect', 'P', 'Sets the value you set the items to. -100 (locked) or faction id', 11, 5, '2014-06-26 11:58:02');
INSERT INTO `commands` VALUES (94, 'delii', 'N/A', 'Deletes an information marker', 2, 7, '2014-06-19 16:33:41');
INSERT INTO `commands` VALUES (95, 'nearbyii', 'N/A', 'Shows all nearby information markers', 2, 7, '2014-06-26 11:42:18');
INSERT INTO `commands` VALUES (96, 'makeshop ', 'N/A', 'Creates a NPC.', 1, 4, '2014-06-26 11:40:38');
INSERT INTO `commands` VALUES (97, 'nearbyshops ', 'N/A', 'Shows all near by NPCs.', 1, 4, '2014-06-26 11:43:06');
INSERT INTO `commands` VALUES (98, 'gunlist or /gunchart', 'N/A', 'Showing a details weapon\'s properties table with IDs.', 2, 5, '2014-06-26 11:37:14');
INSERT INTO `commands` VALUES (99, 'setage ', 'N/A', 'Change player\'s age', 1, 7, '2014-06-26 11:50:55');
INSERT INTO `commands` VALUES (100, 'setrace ', 'N/A', 'Change player\'s race', 1, 7, '2014-06-26 11:54:42');
INSERT INTO `commands` VALUES (101, 'setheight  ', 'N/A', 'Change player\'s height', 1, 7, '2014-06-26 11:52:44');
INSERT INTO `commands` VALUES (102, 'setgender  ', 'N/A', 'Change player\'s gender', 1, 7, '2014-06-26 11:52:37');
INSERT INTO `commands` VALUES (109, 'skick', 'N/A', 'Silently kick a player, only informs lead administrators', 1, 7, '2014-06-17 21:27:53');
INSERT INTO `commands` VALUES (110, 'sjail  ', 'N/A', 'Silently jail a player, only informs other administrators', 1, 7, '2014-06-17 21:28:31');
INSERT INTO `commands` VALUES (113, 'setjob  ', 'N/A', 'Sets player job.', 1, 6, '2014-06-26 11:53:54');
INSERT INTO `commands` VALUES (114, 'deljob  ', 'N/A', 'Deletes player job.', 1, 6, '2014-06-15 19:21:23');
INSERT INTO `commands` VALUES (116, 'issuepc  ', 'N/A', 'Issues player a pilot license', 1, 3, '2014-06-26 11:38:31');
INSERT INTO `commands` VALUES (117, 'items or /itemlist ', 'N/A', 'Opens Item Creator.', 1, 5, '2014-06-26 11:39:02');
INSERT INTO `commands` VALUES (118, 'settrainrailed ', 'N/A', 'Sets a train off/on the rail.', 2, 3, '2014-06-26 11:55:27');
INSERT INTO `commands` VALUES (119, 'settraindirection', 'N/A', 'Sets a train direction to (counter)clockwise.', 2, 3, '2014-06-26 11:55:19');
INSERT INTO `commands` VALUES (121, 'unflip', 'N/A', 'unflips the vehicle you\'re in.', 11, 3, '2014-06-17 21:03:24');
INSERT INTO `commands` VALUES (122, 'unlockcivcars', 'N/A', 'unlocks all civilian vehicles', 1, 3, '2014-06-15 15:49:23');
INSERT INTO `commands` VALUES (123, 'oldcar', 'N/A', 'retrieves the id of the last car you drove', 0, 3, '2014-06-26 11:43:52');
INSERT INTO `commands` VALUES (124, 'thiscar', 'N/A', 'retrieves the id of the car you\'re in', 0, 3, '2014-06-17 21:16:20');
INSERT INTO `commands` VALUES (125, 'gotocar', 'N/A', 'teleports you to the car with that id', 11, 3, '2014-06-26 11:35:48');
INSERT INTO `commands` VALUES (126, 'getcar', 'N/A', 'teleports the car to you', 1, 3, '2014-06-19 16:41:45');
INSERT INTO `commands` VALUES (127, 'nearbyvehicles', 'N/A', 'shows all vehicles within a radius of 20', 1, 3, '2014-06-26 11:43:24');
INSERT INTO `commands` VALUES (128, 'respawnveh', 'N/A', 'respawns the vehicle with that id', 11, 3, '2014-10-01 22:15:26');
INSERT INTO `commands` VALUES (129, 'respawnall', 'N/A', 'respawns all vehicles', 1, 3, '2014-06-26 11:48:17');
INSERT INTO `commands` VALUES (130, 'respawndistrict', 'N/A', 'respawns all vehicles in the district you are in', 1, 3, '2014-06-26 11:48:31');
INSERT INTO `commands` VALUES (131, 'respawnciv', 'N/A', 'respawns all civilian (job) vehicles', 1, 3, '2014-06-26 11:48:22');
INSERT INTO `commands` VALUES (132, 'findveh', 'N/A', 'retrieves the model for that vehicle name', 0, 3, '2014-06-19 16:37:30');
INSERT INTO `commands` VALUES (134, 'fixvehs', 'N/A', 'repairs all vehicles', 1, 3, '2014-06-19 16:38:16');
INSERT INTO `commands` VALUES (135, 'fixvehis', 'N/A', 'fixes the vehicles look, engine may remain broken', 1, 3, '2014-06-19 16:38:10');
INSERT INTO `commands` VALUES (136, 'blowveh', 'N/A', 'blows up a players car', 1, 3, '2014-06-15 03:11:12');
INSERT INTO `commands` VALUES (137, 'setcarhp', 'N/A', 'sets the health of a car, full health is 1000.', 1, 3, '2014-06-26 11:51:32');
INSERT INTO `commands` VALUES (139, 'fuelvehs', 'N/A', 'refills all vehicles', 1, 3, '2014-06-19 16:41:02');
INSERT INTO `commands` VALUES (140, 'setcolor', 'N/A', 'changes the players vehicle colors', 1, 3, '2014-06-26 11:51:36');
INSERT INTO `commands` VALUES (141, 'getcolor', 'N/A', 'returns the colors of a vehicle', 1, 3, '2014-06-19 16:41:56');
INSERT INTO `commands` VALUES (142, 'entercar', 'N/A', 'puts the player into the given vehicle at either the specified seat, or if none then the first free seat', 11, 3, '2014-10-03 06:04:06');
INSERT INTO `commands` VALUES (143, 'getpos', 'N/A', 'outputs your current position, interior and dimension', 1, 7, '2014-06-19 16:42:58');
INSERT INTO `commands` VALUES (144, 'x', 'N/A', 'increases your x-coordinate by the given value', 1, 7, '2014-06-15 15:44:04');
INSERT INTO `commands` VALUES (145, 'y', 'N/A', 'increases your y-coordinate by the given value', 1, 7, '2014-06-15 15:43:53');
INSERT INTO `commands` VALUES (146, 'z', 'N/A', 'increases your z-coordinate by the given value', 1, 7, '2014-06-15 15:43:22');
INSERT INTO `commands` VALUES (147, 'set*', 'N/A', 'sets your coordinates - available combinations: x, y, z, xyz, xy, xz, yz', 1, 7, '2014-06-26 11:50:46');
INSERT INTO `commands` VALUES (148, 'reloadint', 'N/A', 'reloads an interior from the database', 1, 4, '2014-06-26 11:45:09');
INSERT INTO `commands` VALUES (149, 'nearbyints', 'N/A', 'shows nearby interiors', 1, 4, '2014-06-26 11:42:26');
INSERT INTO `commands` VALUES (150, 'setintname', 'N/A', 'changes an interior name', 1, 4, '2014-06-26 11:53:44');
INSERT INTO `commands` VALUES (151, 'setfee', 'N/A', 'sets an fee on entering the interior', 1, 4, '2014-06-26 11:52:28');
INSERT INTO `commands` VALUES (152, 'getintid', 'N/A', 'Gets the interior id', 1, 4, '2014-06-19 16:42:25');
INSERT INTO `commands` VALUES (153, 'setdim or /setdimension', 'N/A', 'Sets the players dimension id', 1, 7, '2014-06-26 11:51:51');
INSERT INTO `commands` VALUES (154, 'setint or /setinterior', 'N/A', 'Sets the players interior id', 1, 4, '2014-06-26 11:53:05');
INSERT INTO `commands` VALUES (158, 'showfactions', 'N/A', 'shows a list with factions', 11, 2, '2014-06-17 21:29:41');
INSERT INTO `commands` VALUES (159, 'respawnfaction', 'N/A', 'respawns faction vehicles', 1, 2, '2014-06-19 16:43:35');
INSERT INTO `commands` VALUES (160, 'resetbackup', 'N/A', 'Resets PD\'s backup unit', 1, 2, '2014-06-26 11:47:20');
INSERT INTO `commands` VALUES (161, 'resetassist', 'N/A', 'Resets ES\'s assist system', 1, 6, '2014-06-26 11:47:12');
INSERT INTO `commands` VALUES (162, 'resettowbackup', 'N/A', 'Resets towing backup system', 1, 2, '2014-06-26 11:48:03');
INSERT INTO `commands` VALUES (163, 'aremovespikes', 'N/A', 'Removes all the PD spikes', 1, 2, '2014-06-15 19:08:21');
INSERT INTO `commands` VALUES (164, 'clearnearbytag', 'N/A', 'Clears nearby tags', 1, 5, '2014-06-15 03:26:49');
INSERT INTO `commands` VALUES (165, 'nearbytags', 'N/A', 'Shows nearby tag and its creators', 1, 6, '2014-06-26 11:43:15');
INSERT INTO `commands` VALUES (166, 'changelock', 'N/A', 'changes the lock from the vehicle/interior', 1, 3, '2014-06-15 03:23:00');
INSERT INTO `commands` VALUES (167, 'restartgatekeepers', 'N/A', 'restarts the gatekeepers resource', 1, 7, '2014-06-26 11:49:08');
INSERT INTO `commands` VALUES (168, 'bury', 'N/A', 'buries the player; removes the ck corpse', 1, 7, '2014-06-15 03:22:53');
INSERT INTO `commands` VALUES (173, 'resetpos', 'N/A', 'Reset player\'s position, works when player\'s offline.', 1, 7, '2014-06-26 11:47:50');
INSERT INTO `commands` VALUES (174, 'delsupercar', 'N/A', 'deletes the supercar you\'re in, given that it meets the criteria for deletion.', 1, 3, '2014-06-19 16:34:26');
INSERT INTO `commands` VALUES (175, 'setbiznote', 'N/A', 'sets business greeting/notification message.', 0, 4, '2014-08-12 11:08:30');
INSERT INTO `commands` VALUES (177, 'ints or /interiors', 'N/A', 'Opens Interior Manager.', 2, 4, '2014-07-03 04:32:49');
INSERT INTO `commands` VALUES (178, 'delint', 'N/A', 'Deletes the interior from game and disables it from loading in next server/resource restarts.', 2, 4, '2014-06-19 16:33:51');
INSERT INTO `commands` VALUES (179, 'delthisint or /delthisinterior', 'N/A', 'Deletes the interior you\'re currently in it from game and disables it from loading in next server/resource restarts.', 2, 4, '2014-06-19 16:34:48');
INSERT INTO `commands` VALUES (180, 'restoreint ', 'N/A', 'Restores a deleted interior included safe, items and NPCs inside it.', 2, 4, '2014-06-26 11:49:28');
INSERT INTO `commands` VALUES (181, 'gotohouse', 'N/A', 'teleports to the house', 1, 4, '2014-06-26 11:36:12');
INSERT INTO `commands` VALUES (182, 'gotoint', 'N/A', 'teleports to the interior', 1, 4, '2014-06-26 11:36:19');
INSERT INTO `commands` VALUES (183, 'gotointi', 'N/A', 'teleports inside of an interior', 1, 4, '2014-06-26 11:36:25');
INSERT INTO `commands` VALUES (184, 'veh', 'N/A', 'spawns a temporary vehicle', 1, 3, '2014-06-15 15:47:50');
INSERT INTO `commands` VALUES (185, 'resetshopwage', 'N/A', 'Resets all shops wages to $0.', 1, 4, '2014-06-26 11:47:56');
INSERT INTO `commands` VALUES (186, 'forceupdateshopwage', 'N/A', 'Forces update all shop wages.', 2, 4, '2014-06-19 16:39:37');
INSERT INTO `commands` VALUES (187, 'delnearbyvehs', 'N/A', 'Deletes all the nearby (temporary) vehicles.', 2, 3, '2014-06-15 19:21:58');
INSERT INTO `commands` VALUES (188, 'delveh', 'N/A', 'Deletes the (temporary) vehicle with that id', 1, 3, '2014-06-19 16:35:15');
INSERT INTO `commands` VALUES (189, 'delthisveh', 'N/A', 'Deletes the (temporary) vehicle', 2, 3, '2014-06-19 16:34:53');
INSERT INTO `commands` VALUES (190, 'restoreveh', 'N/A', 'Restores a deleted vehicle.', 1, 3, '2014-09-07 21:25:46');
INSERT INTO `commands` VALUES (191, 'makeveh', 'N/A', 'creates a new permanent vehicle', 2, 3, '2014-06-26 11:40:51');
INSERT INTO `commands` VALUES (192, 'makecivveh', 'N/A', 'creates a new permanent civilian vehicle', 1, 3, '2014-06-26 11:40:11');
INSERT INTO `commands` VALUES (193, 'addupgrade', 'N/A', 'upgrades a players car', 1, 3, '2014-06-15 03:08:48');
INSERT INTO `commands` VALUES (194, 'setpaintjob', 'N/A', 'set another paintjob on a vehicle', 1, 3, '2014-06-26 11:54:30');
INSERT INTO `commands` VALUES (195, 'setvariant', 'N/A', 'set another variant on a vehicle', 1, 3, '2014-06-21 14:46:34');
INSERT INTO `commands` VALUES (196, 'delupgrade', 'N/A', 'removes a specific upgrade from the player\'s car', 1, 3, '2014-06-19 16:35:08');
INSERT INTO `commands` VALUES (197, 'resetupgrades', 'N/A', 'removes all upgrades on the player\'s car', 1, 3, '2014-06-26 11:48:09');
INSERT INTO `commands` VALUES (198, 'aunimpound', 'N/A', 'unimpounds the vehicle from the RT lot', 1, 3, '2014-12-31 21:58:12');
INSERT INTO `commands` VALUES (199, 'setvehtint', 'N/A', 'adds or removes vehicle tint', 1, 3, '2014-06-17 21:41:42');
INSERT INTO `commands` VALUES (200, 'atakelicense', 'N/A', 'revokes the player a license (use full name for offline players', 1, 5, '2014-06-15 19:08:03');
INSERT INTO `commands` VALUES (201, 'setvehplate', 'N/A', 'changes the plate of a vehicle', 1, 3, '2014-06-17 21:42:25');
INSERT INTO `commands` VALUES (202, 'setvehfaction', 'N/A', 'add a vehicle to faction, use -1 to remove (sets to you)', 1, 3, '2014-06-21 14:46:13');
INSERT INTO `commands` VALUES (203, 'gates', 'N/A', 'Opens Gate Manager', 2, 7, '2014-12-29 20:35:15');
INSERT INTO `commands` VALUES (204, 'gotogate', 'N/A', 'Teleports to a gate.', 2, 4, '2014-06-26 11:36:03');
INSERT INTO `commands` VALUES (205, 'delgate', 'N/A', 'Deletes to a gate.', 2, 7, '2014-06-19 16:33:32');
INSERT INTO `commands` VALUES (206, 'loginto [Exact Character Name] ', 'N/A', 'Logs into an other account\'s character.', 3, 7, '2014-06-15 03:05:11');
INSERT INTO `commands` VALUES (207, 'forcepayday [Player ID/Name] ', 'N/A', 'Forces a player to get payday.', 2, 7, '2014-06-19 16:39:06');
INSERT INTO `commands` VALUES (208, 'forcepaydayall ', 'N/A', 'Forces all players to get paydays.', 2, 7, '2014-06-19 16:39:17');
INSERT INTO `commands` VALUES (209, 'rwarn [warn #]', 'N/A', 'sends a predefined admin warnings or custom admin warning.', 1, 1, '2014-06-26 11:50:03');
INSERT INTO `commands` VALUES (210, 'soban', 'N/A', 'Silently ban an offline player, only notifies other administrators', 1, 7, '2014-06-17 21:26:19');
INSERT INTO `commands` VALUES (211, 'givesuperman', 'N/A', 'Allows a player the temp. ability to use superman. Use command again to remove, reconnects player.', 1, 7, '2014-09-23 20:30:27');
INSERT INTO `commands` VALUES (212, 'sw', 'N/A', 'changes the weather', 1, 1, '2014-12-09 03:46:17');
INSERT INTO `commands` VALUES (213, 'addatm', 'N/A', 'adds an ATM at this spot', 1, 7, '2014-12-09 03:43:21');
INSERT INTO `commands` VALUES (214, 'delatm [id]', 'N/A', 'deletes an ATM with the id', 1, 7, '2014-12-09 03:43:43');
INSERT INTO `commands` VALUES (215, 'nearbyatms', 'N/A', 'shows the nearby ATMs', 2, 5, '2014-06-26 11:41:42');
INSERT INTO `commands` VALUES (216, 'bigears', 'N/A', 'hook yourself between someone\'s chats', 2, 1, '2014-06-15 03:10:49');
INSERT INTO `commands` VALUES (217, 'bigearsf', 'N/A', 'hook yourself between faction chats', 2, 1, '2014-06-15 03:10:58');
INSERT INTO `commands` VALUES (219, 'gunmaker', 'N/A', 'Opens Weapon Creator', 2, 5, '2014-06-26 11:37:22');
INSERT INTO `commands` VALUES (220, 'makepaynspray', 'N/A', 'creates an pay n spray', 2, 3, '2014-06-26 11:40:28');
INSERT INTO `commands` VALUES (221, 'nearbypaynsprays', 'N/A', 'shows nearby pay n sprays', 1, 3, '2014-06-26 11:42:33');
INSERT INTO `commands` VALUES (222, 'delpaynspray', 'N/A', 'deletes an pay n spray', 2, 3, '2014-06-15 19:22:24');
INSERT INTO `commands` VALUES (223, 'addphone', 'N/A', 'creates a public phone', 1, 5, '2014-06-15 19:09:46');
INSERT INTO `commands` VALUES (224, 'nearbyphones', 'N/A', 'shows nearby public phone', 1, 7, '2014-06-26 11:42:41');
INSERT INTO `commands` VALUES (225, 'delphone', 'N/A', 'deletes a public phone', 1, 7, '2014-06-15 19:22:32');
INSERT INTO `commands` VALUES (226, 'enableallelevators', 'N/A', 'enables all elevators', 1, 7, '2014-06-19 16:36:24');
INSERT INTO `commands` VALUES (227, 'addint', 'N/A', 'adds an interior', 2, 4, '2014-06-15 03:13:38');
INSERT INTO `commands` VALUES (228, 'sellproperty', 'N/A', 'sells an interior for 35% of the original price.', 0, 4, '2014-08-12 11:08:12');
INSERT INTO `commands` VALUES (230, 'getintid', 'N/A', 'shows the current interior', 1, 4, '2014-06-15 21:04:32');
INSERT INTO `commands` VALUES (231, 'setintid', 'N/A', 'changes the interior', 2, 4, '2014-06-26 11:53:27');
INSERT INTO `commands` VALUES (232, 'getintprice', 'N/A', 'shows the interiors price', 1, 4, '2014-06-19 16:42:34');
INSERT INTO `commands` VALUES (233, 'setintprice', 'N/A', 'changes the interiors price', 2, 4, '2014-06-21 14:46:57');
INSERT INTO `commands` VALUES (234, 'getinttype', 'N/A', 'shows the interiors type', 1, 4, '2014-06-19 16:42:40');
INSERT INTO `commands` VALUES (235, 'setinttype', 'N/A', 'changes the interiors type', 2, 4, '2014-06-21 14:47:19');
INSERT INTO `commands` VALUES (236, 'togint', 'N/A', 'sets the interior enabled or disabled', 2, 4, '2014-06-17 21:12:54');
INSERT INTO `commands` VALUES (237, 'enableallinteriors', 'N/A', 'enables all the interiors', 2, 4, '2014-06-19 16:36:31');
INSERT INTO `commands` VALUES (238, 'setintexit', 'N/A', 'changes an interior exit marker', 2, 4, '2014-06-26 11:53:20');
INSERT INTO `commands` VALUES (239, 'setintentrance', 'N/A', 'changes an interior entrance marker', 2, 4, '2014-06-26 11:53:14');
INSERT INTO `commands` VALUES (240, 'fsell', 'N/A', 'force-sells an interior', 2, 4, '2014-06-19 16:40:34');
INSERT INTO `commands` VALUES (241, 'setfactionleader', 'N/A', 'puts a player into a faction and makes the player leader', 2, 2, '2014-06-27 01:42:56');
INSERT INTO `commands` VALUES (242, 'setfactionrank', 'N/A', 'sets a player to a specific faction rank', 2, 2, '2014-06-27 01:43:02');
INSERT INTO `commands` VALUES (243, 'makefaction', 'N/A', 'creates a faction', 2, 2, '2014-06-19 16:44:28');
INSERT INTO `commands` VALUES (244, 'renamefaction', 'N/A', 'renames a faction', 2, 2, '2014-06-19 16:45:26');
INSERT INTO `commands` VALUES (245, 'setfaction', 'N/A', 'puts an player into a faction', 1, 2, '2014-06-26 11:52:08');
INSERT INTO `commands` VALUES (246, 'delfaction', 'N/A', 'deletes a faction', 2, 2, '2014-06-19 16:33:04');
INSERT INTO `commands` VALUES (247, 'makefuel [skin, default = 50, -1 = random] [Firstname Lastname, -1 = random]', 'N/A', 'creates a new fuel NPC.', 1, 7, '2014-09-23 20:31:36');
INSERT INTO `commands` VALUES (248, 'nearbyfuelpoints', 'N/A', 'shows nearby fuelpoints', 2, 3, '2014-06-26 11:42:09');
INSERT INTO `commands` VALUES (249, 'delfuelpoint', 'N/A', 'deletes a fuelpoint', 2, 3, '2014-06-26 11:59:39');
INSERT INTO `commands` VALUES (250, 'ck', 'N/A', 'permanently kills the character; spawns a corpse at the location the player is at', 2, 7, '2014-06-19 16:32:27');
INSERT INTO `commands` VALUES (251, 'unck', 'N/A', 'reverts a character kill', 1, 7, '2014-06-17 21:03:45');
INSERT INTO `commands` VALUES (254, 'setmoney', 'N/A', 'sets the players money to that value', 2, 5, '2014-06-26 11:54:12');
INSERT INTO `commands` VALUES (255, 'givemoney', 'N/A', 'gives the player money in addition to his current cash', 2, 5, '2014-07-15 11:36:27');
INSERT INTO `commands` VALUES (256, 'resetcharacter', 'N/A', 'fully resets the character', 2, 7, '2014-06-26 11:47:33');
INSERT INTO `commands` VALUES (257, 'setvehlimit', 'N/A', 'Set the player\'s max vehicle slots limit.', 3, 3, '2014-06-17 21:42:00');
INSERT INTO `commands` VALUES (258, 'adminstats', 'N/A', 'shows admin stats', 3, 7, '2014-06-15 03:07:54');
INSERT INTO `commands` VALUES (259, 'removeshop', 'N/A', 'Deletes a NPC from SQL.', 3, 4, '2014-06-26 11:46:06');
INSERT INTO `commands` VALUES (260, 'forcesellinactiveints', 'N/A', 'Force-sells All inactive interiors.', 2, 4, '2014-06-19 16:39:26');
INSERT INTO `commands` VALUES (261, 'removeinactiveints', 'N/A', 'Removes All inactive interiors completedly and permanently from SQL.', 3, 4, '2014-06-26 11:45:51');
INSERT INTO `commands` VALUES (262, 'removedeletedints', 'N/A', 'Removes All deleted interiors completedly and permanently from SQL.', 3, 4, '2014-06-26 11:45:36');
INSERT INTO `commands` VALUES (263, 'removeforsaleints', 'N/A', 'Removes All for-sale interiors completedly and permanently from SQL.', 3, 4, '2014-06-26 11:45:42');
INSERT INTO `commands` VALUES (264, 'delallitems [Item ID] [Item Value]', 'N/A', 'Deletes all the item instances from everywhere in game.', 3, 5, '2014-06-15 03:32:11');
INSERT INTO `commands` VALUES (265, 'removeint [ID]', 'N/A', 'Deletes the interior from game and erases all the data from database completely and permanently include NPCs, items, safe and items inside the safe. If the deleted interior is a custom interior, the custom map will be gone forever.', 3, 4, '2014-06-26 11:45:58');
INSERT INTO `commands` VALUES (266, 'removeveh [ID]', 'N/A', 'Removes the vehicle from game and erases all the data from database completely and permanently include items inside. ', 3, 3, '2014-06-26 11:46:15');
INSERT INTO `commands` VALUES (269, 'hideadmin', 'N/A', 'toggles hidden/visible the admin status', 3, 7, '2014-06-26 11:37:35');
INSERT INTO `commands` VALUES (270, 'ho', 'N/A', 'send global ooc as hidden admin', 3, 1, '2014-06-26 11:37:54');
INSERT INTO `commands` VALUES (271, 'hw', 'N/A', 'send a pm as hidden admin', 3, 1, '2014-06-26 11:38:05');
INSERT INTO `commands` VALUES (274, 'toga', 'N/A', 'Toggles admin chat.', 3, 1, '2014-06-16 02:02:53');
INSERT INTO `commands` VALUES (275, 'togg', 'N/A', 'Toggles gamemaster chat.', 3, 1, '2014-06-17 21:14:57');
INSERT INTO `commands` VALUES (276, 'startres', 'N/A', 'starts a resource', 41, 7, '2014-06-17 21:25:04');
INSERT INTO `commands` VALUES (277, 'stopres', 'N/A', 'stops the resource', 41, 7, '2014-06-17 21:21:19');
INSERT INTO `commands` VALUES (278, 'restartres', 'N/A', 'restarts the resource', 1, 7, '2014-06-26 11:49:15');
INSERT INTO `commands` VALUES (279, 'rescheck', 'N/A', 'checks for certain down resources and starts them', 1, 7, '2014-06-26 11:46:57');
INSERT INTO `commands` VALUES (280, 'rcs', 'N/A', 'check if the resource \"Resource-Keeper\" is running', 41, 7, '2014-06-26 11:44:47');
INSERT INTO `commands` VALUES (281, 'generatecode', 'N/A', 'generates a donation code', 3, 7, '2014-06-19 16:41:37');
INSERT INTO `commands` VALUES (282, 'setdamageproof', 'N/A', 'makes a vehicle damageproof', 2, 3, '2014-06-26 11:51:44');
INSERT INTO `commands` VALUES (283, 'delitemsfromint', 'N/A', 'Deletes all the items within a specified interior that older than an interval of item\'s day old.', 1, 5, '2014-06-19 16:34:08');
INSERT INTO `commands` VALUES (285, 'aordersupplies', 'N/A', 'Orders supplies from RS Haul for the current interior without yourself being charged.', 1, 4, '2014-06-15 03:07:06');
INSERT INTO `commands` VALUES (286, 'setjoblevel', 'N/A', 'Sets player\'s city hall job\'s level and progress', 1, 6, '2014-06-26 11:53:59');
INSERT INTO `commands` VALUES (287, 'respawntrucks', 'N/A', 'Respawns all unoccupied Delivery Trucks', 1, 3, '2014-06-26 11:48:49');
INSERT INTO `commands` VALUES (288, 'checkactiveroutes', 'N/A', 'Shows all Delivery Job\'s routes that players are on', 41, 6, '2015-01-24 22:28:17');
INSERT INTO `commands` VALUES (289, 'fetchactualorders', 'N/A', 'Fetches player\'s Supplies Orders from SQL to game manually (Normally it\'s auto-fetched every 10 minutes)', 41, 6, '2015-01-24 22:28:26');
INSERT INTO `commands` VALUES (290, 'addactualorder', 'N/A', 'Creates a marker for Delivery Job, it looks exactly the same as actual order from other player.', 41, 6, '2015-01-24 22:28:04');
INSERT INTO `commands` VALUES (291, 'addtruckerjobmarker', 'N/A', 'Creates a generic drop-off marker for Delivery Driver job.', 41, 6, '2015-01-24 22:28:10');
INSERT INTO `commands` VALUES (292, 'showactualorders', 'N/A', 'Shows Delivery Job\'s actual supply orders from players.', 41, 6, '2015-01-24 22:28:40');
INSERT INTO `commands` VALUES (293, 'showalltruckmarkers', 'N/A', 'Shows all Delivery Job drop-off markers (both generic markers and actual order markers)', 41, 6, '2015-01-24 22:28:46');
INSERT INTO `commands` VALUES (294, 'skiproute', 'N/A', 'Skips Delivery Job\'s current route, jump instantly to next spot (useful when creating job markers)', 1, 6, '2014-06-17 21:27:18');
INSERT INTO `commands` VALUES (295, 'resetaccount', 'N/A', 'Reset one character or all characters within an account.', 2, 7, '2014-06-26 11:47:03');
INSERT INTO `commands` VALUES (296, 'deltruckmarker', 'N/A', 'Deletes a Delivery Job\'s marker', 41, 6, '2015-01-24 22:28:21');
INSERT INTO `commands` VALUES (297, 'aheal', 'N/A', 'Gives yourself full HP, or /aheal [ID] to give it someone else', 11, 7, '2014-06-15 03:05:38');
INSERT INTO `commands` VALUES (298, 'showadminreports', 'N/A', 'Subscribes to administrator reports, showing them as well.', 1, 1, '2014-06-26 11:55:33');
INSERT INTO `commands` VALUES (304, 'gmlounge', 'N/A', 'Teleports you to the staff lounge.', 11, 7, '2014-06-21 14:50:28');
INSERT INTO `commands` VALUES (305, 'g [Text]', 'N/A', 'Talk in supporter chat for communication with admins.', 11, 1, '2014-09-07 10:38:28');
INSERT INTO `commands` VALUES (306, 'ar', 'N/A', 'Accept a report.', 21, 7, '2014-11-23 16:51:14');
INSERT INTO `commands` VALUES (308, 'dr', 'N/A', 'Drop a report, leaving it unanswered.', 11, 7, '2014-06-19 16:35:43');
INSERT INTO `commands` VALUES (309, 'fr', 'N/A', 'Mark a report false', 11, 7, '2014-06-19 16:39:46');
INSERT INTO `commands` VALUES (311, 'sduty, gduty', 'N/A', 'Toggles Supporter duty (On/off)', 11, 7, '2014-06-26 11:50:23');
INSERT INTO `commands` VALUES (314, 'mark', 'N/A', 'Create a mark for you to teleport to using /gotomark (doing /mark without a specified name will create a temporary one)', 11, 7, '2014-06-26 11:41:01');
INSERT INTO `commands` VALUES (316, 'gotomark', 'N/A', 'Teleport to a pre-made /mark (/gotomark without a mark name teleports to a temporary one)', 11, 7, '2014-06-26 11:36:33');
INSERT INTO `commands` VALUES (335, 'forceapp', 'N/A', 'Force player that doesn\'t meet server standards -and- not willing to improve out of game.', 11, 7, '2014-06-19 16:38:51');
INSERT INTO `commands` VALUES (342, 'renameshop', 'N/A', 'or /renameped or /renamenpc, it renames NPCs in format of \'First Lastname\'', 1, 4, '2014-06-26 11:46:30');
INSERT INTO `commands` VALUES (345, 'togoverlay', 'N/A', 'Toggles overlay menus on top or buttom of screen. If it\'s disabled, the content will be all printed to chatbox.', 0, 7, '2014-06-17 21:11:09');
INSERT INTO `commands` VALUES (351, 'settrackingloc', 'N/A', 'Use this command to define where the tracking device in the vehicle is installed.', 1, 3, '2014-06-26 11:55:12');
INSERT INTO `commands` VALUES (358, 'hashtransactionid', 'N/A', 'Hashes a transaction ID from PayPal into the proper format for donation key.', 3, 7, '2014-06-26 11:37:28');
INSERT INTO `commands` VALUES (360, 'togreg', 'N/A', 'Toggle the registration of a vehicle.', 1, 3, '2014-06-17 21:08:51');
INSERT INTO `commands` VALUES (361, 'togplate', 'N/A', 'Toggle the plate visibility of a vehicle.', 1, 3, '2014-06-17 21:09:10');
INSERT INTO `commands` VALUES (362, 'togvin', 'N/A', 'Toggle the VIN visibility of a vehicle.', 1, 3, '2014-06-17 21:08:26');
INSERT INTO `commands` VALUES (363, 'addramp', 'N/A', 'Add a vehicle lift (requires a lift remote)', 1, 3, '2014-06-15 03:14:51');
INSERT INTO `commands` VALUES (364, 'delramp', 'N/A', 'Delete a vehicle lift.', 1, 3, '2014-06-15 19:22:47');
INSERT INTO `commands` VALUES (365, 'nearbyramps', 'N/A', 'Fetch all nearby vehicle lifts.', 1, 5, '2014-06-26 11:42:56');
INSERT INTO `commands` VALUES (368, 'vehlib', 'N/A', 'Opens vehicle library', 11, 3, '2014-10-01 22:36:44');
INSERT INTO `commands` VALUES (369, 'editveh', 'N/A', 'Create/Update Unique Properties for Vehicle.', 21, 3, '2015-01-09 19:50:49');
INSERT INTO `commands` VALUES (370, 'setdob', 'N/A', 'Set player\'s date of birth', 1, 7, '2014-06-26 11:51:57');
INSERT INTO `commands` VALUES (372, 'setintlimit', 'N/A', 'Set character\'s max interior slots', 3, 7, '2014-06-26 11:53:34');
INSERT INTO `commands` VALUES (373, 'setamotd', 'N/A', 'Set the admin message of the day', 3, 1, '2014-06-26 11:51:05');
INSERT INTO `commands` VALUES (376, 'delad', 'N/A', 'Stops an Advertisement from being aired.', 1, 1, '2015-01-08 19:33:35');
INSERT INTO `commands` VALUES (377, 'gethere', 'N/A', 'Teleports a player to you.', 11, 7, '2014-06-19 16:42:14');
INSERT INTO `commands` VALUES (379, 'freeze', 'N/A', 'Freeze a player.', 1, 7, '2014-06-19 16:40:15');
INSERT INTO `commands` VALUES (381, 'stats', 'N/A', 'Shows a GUI with your character\'s statistics.', 0, 7, '2014-06-15 03:21:18');
INSERT INTO `commands` VALUES (389, 'nudge', 'N/A', 'Nudges a player, getting their attention.', 11, 7, '2014-06-26 11:43:30');
INSERT INTO `commands` VALUES (390, 'places', 'N/A', 'Shows you a list of valid places you can /gotoplace.', 11, 7, '2014-06-26 11:44:30');
INSERT INTO `commands` VALUES (391, 'marks', 'N/A', 'Views all /mark\'s', 11, 7, '2014-06-26 11:41:12');
INSERT INTO `commands` VALUES (392, 'delmark', 'N/A', 'Deletes a mark, usage: \"/delmark [MARKNAME]\" Not ID', 11, 7, '2014-06-15 19:15:37');
INSERT INTO `commands` VALUES (393, 'ann', 'N/A', 'Announcements in the top bar for selective information.', 11, 1, '2014-06-15 03:22:25');
INSERT INTO `commands` VALUES (394, 'togpm', 'N/A', 'Toggles your private messages if you have the perk.', 0, 1, '2014-06-26 12:01:21');
INSERT INTO `commands` VALUES (395, 'monitor', 'N/A', 'Toggles monitor window.', 11, 7, '2014-10-05 13:10:22');
INSERT INTO `commands` VALUES (397, 'omonitor', 'N/A', 'Add an offline player to the monitor', 1, 7, '2014-06-26 11:43:58');
INSERT INTO `commands` VALUES (400, '\'F7\'', 'F7', 'Toggles the application panel.', 11, 7, '2014-12-16 23:26:43');
INSERT INTO `commands` VALUES (404, 'checkveh', 'N/A', 'Display details information of a vehicle', 11, 3, '2014-06-15 19:05:50');
INSERT INTO `commands` VALUES (405, 'makegeneric', 'N/A', 'or makegenericitem, creates to yourself a generic item', 11, 5, '2014-06-26 11:40:17');
INSERT INTO `commands` VALUES (406, 'unlock', 'K', '(Un)locks the closest vehicle to you, of which you have the key.', 0, 3, '2014-06-26 11:56:44');
INSERT INTO `commands` VALUES (410, 'fuelveh', 'N/A', 'Fuel a vehicle', 1, 3, '2014-06-19 16:40:56');
INSERT INTO `commands` VALUES (412, 'flip', 'N/A', 'Flip a vehicle', 11, 3, '2014-10-01 22:14:55');
INSERT INTO `commands` VALUES (413, 'park', 'N/A', 'Parks the vehicle you\'re in', 0, 3, '2014-06-26 11:44:07');
INSERT INTO `commands` VALUES (415, 'ed', 'N/A', 'Edit the vehicle description', 0, 3, '2014-06-19 16:35:58');
INSERT INTO `commands` VALUES (416, 'changename', 'N/a', 'Changes a player\'s character name.', 3, 7, '2014-06-15 03:24:26');
INSERT INTO `commands` VALUES (418, 'vehlib', 'N/A', 'Allows you to control aspects of custom vehicles in the library', 21, 1, '2014-06-15 15:46:39');
INSERT INTO `commands` VALUES (419, 'moveitem', 'N', 'Opens a panel for you to control position of an item', 1, 5, '2014-06-26 12:01:41');
INSERT INTO `commands` VALUES (420, 'apark', 'N/A', 'parks a vehicle without being inside', 1, 3, '2014-06-19 01:16:39');
INSERT INTO `commands` VALUES (421, 'cks', 'N/A', 'shows character kill requests', 1, 7, '2014-06-26 11:35:28');
INSERT INTO `commands` VALUES (422, 'advertisements', 'N/A', 'shows a list of post-listing advertisments', 0, 7, '2014-06-21 17:29:15');
INSERT INTO `commands` VALUES (423, 'showcol', 'N/A', 'show the collide objects in the world. Speed zone (yellow), Speedcam (blue), Restricted parking (Pink), Police Cars (Large Red), Normal (red)', 1, 7, '2014-06-22 00:23:51');
INSERT INTO `commands` VALUES (424, 'rf', 'N/A', 'restricted frequency database', 1, 2, '2014-10-05 13:12:48');
INSERT INTO `commands` VALUES (425, 'quitjob', 'N/A', 'Quits the job you currently have', 0, 6, '2014-06-26 12:01:33');
INSERT INTO `commands` VALUES (426, 'F [message]', 'N/A', 'Out of Character faction chat', 0, 2, '2014-07-06 14:41:50');
INSERT INTO `commands` VALUES (427, 'N/A', 'F3', 'Faction menu', 0, 2, '2014-06-26 12:03:42');
INSERT INTO `commands` VALUES (429, 'sendtovct', 'N/A', 'Sends a specific report to the VCT team (regarding request, questions,...)', 11, 3, '2014-07-06 14:39:51');
INSERT INTO `commands` VALUES (430, 'mt [message]', 'N/A', 'Mapping Team chat', 31, 7, '2014-08-23 18:40:58');
INSERT INTO `commands` VALUES (431, 'vct [message]', 'N/A', 'Vehicle Consultation Team chat', 21, 1, '2014-07-06 14:43:02');
INSERT INTO `commands` VALUES (432, 'sell [player name]', 'N/A', 'sells a property to specific player.', 0, 4, '2014-08-12 11:08:21');
INSERT INTO `commands` VALUES (433, 'showadminreports', 'N/A', 'Reveals reports sent out to the admin team, to supporters.', 11, 7, '2014-07-15 11:34:58');
INSERT INTO `commands` VALUES (434, 'supervise', 'N/A', 'Turns you half invisible, in order to supervise a roleplay.', 11, 7, '2014-07-15 11:35:16');
INSERT INTO `commands` VALUES (435, 'enterveh [player][car ID][seat]', 'N/A', 'Warps a player into a car.', 11, 3, '2014-07-15 11:35:48');
INSERT INTO `commands` VALUES (436, 'sendveh', 'N/A', 'Sends a vehicle to a player', 11, 7, '2014-07-15 11:35:08');
INSERT INTO `commands` VALUES (437, 'getvehweight', 'N/A', 'gives you the weight of a car and the price for the chopping', 1, 3, '2014-07-09 11:15:42');
INSERT INTO `commands` VALUES (438, 'texlist', 'N/A', 'shecks the textures in an interior, gives ability to edit and delete. ', 0, 4, '2014-08-12 11:08:37');
INSERT INTO `commands` VALUES (439, 'ads', 'N/A', 'Unveils a list of currently pending and recently aired adverts.', 11, 1, '2014-07-25 21:22:36');
INSERT INTO `commands` VALUES (440, 'getcar', 'N/A', 'Warps a car to the player.', 11, 3, '2014-08-03 13:45:23');
INSERT INTO `commands` VALUES (441, 'findalts2', 'N/A', 'More information than a /findalts', 1, 7, '2014-08-05 23:42:19');
INSERT INTO `commands` VALUES (442, 'ri', 'N/A', 'read a report', 21, 7, '2014-11-23 16:53:19');
INSERT INTO `commands` VALUES (443, 'srl', '', 'Set\'s the rain level of the current weather', 1, 7, '2014-08-10 02:41:56');
INSERT INTO `commands` VALUES (444, 'sms [contact_name/number] [message]', 'N/A', 'Send a SMS to a contact saved on your phone or a number.', 0, 1, '2014-10-04 12:13:43');
INSERT INTO `commands` VALUES (447, 'fixveh', 'N/A', 'Fixes the vehicle of the player who is in it.', 11, 3, '2014-08-12 11:11:07');
INSERT INTO `commands` VALUES (448, 'gate [password]', 'N/A', 'opens a gate near you, with or without a password.', 0, 7, '2014-08-12 11:12:00');
INSERT INTO `commands` VALUES (451, 'call [number/contact]', 'N/A', 'call to a phone number or a saved contact.', 0, 1, '2014-08-12 11:13:42');
INSERT INTO `commands` VALUES (452, 'anims', 'N/A', 'opens a list of anims on your chatbox.', 0, 7, '2014-08-12 11:16:08');
INSERT INTO `commands` VALUES (453, 'animselect', 'N/A', 'opens a full list of animations.', 0, 7, '2014-08-12 11:16:14');
INSERT INTO `commands` VALUES (455, 'writenote [text]', 'N/A', 'Writes a note that will spawn on your inventory.', 0, 5, '2014-08-16 10:28:40');
INSERT INTO `commands` VALUES (456, 'fish', 'N/A', 'Starts fishing', 0, 6, '2015-02-04 12:14:42');
INSERT INTO `commands` VALUES (457, 'totalcatch', 'N/A', 'Displays how much lbs of fishes you have caught so far', 0, 6, '2015-02-04 12:14:57');
INSERT INTO `commands` VALUES (458, 'sellFish', 'N/A', 'To sell your caught fish', 0, 6, '2015-02-04 12:14:47');
INSERT INTO `commands` VALUES (459, '911', 'N/A', 'Submit an NPC 911 call.', 11, 1, '2014-10-13 14:55:38');
INSERT INTO `commands` VALUES (460, 'tempsell', 'N/A', 'gives temporary selling ability like old /sell', 11, 3, '2014-10-01 22:36:33');
INSERT INTO `commands` VALUES (462, 'arrest', 'N/A', 'for administrators, you have full access to the arrest and management within arrest', 1, 2, '2014-08-25 21:55:01');
INSERT INTO `commands` VALUES (463, 'items', 'N/A', 'Shows a list of items - (spawning is disabled?)', 11, 5, '2015-02-04 12:15:13');
INSERT INTO `commands` VALUES (464, 'setjob [player] [job id]', 'N/A', 'Sets a job to a player, leave arguments blank to see ID\'s', 11, 6, '2015-02-04 12:15:01');
INSERT INTO `commands` VALUES (465, 'setvol [0-100]', 'N/A', 'Sets the radio volume', 0, 3, '2015-02-04 12:12:20');
INSERT INTO `commands` VALUES (468, 'nearbyshops', 'N/A', 'Shows any near by shop NPC\'s, along with their ID', 0, 7, '2015-02-04 12:13:19');
INSERT INTO `commands` VALUES (469, 'moveshop', 'N/A', 'Moves a shop NPC to your location', 11, 7, '2014-11-29 13:14:15');
INSERT INTO `commands` VALUES (471, 'unforceapp [Partial Username]', 'N/A', 'Unforceapp a player.', 11, 7, '2015-02-06 23:00:48');
INSERT INTO `commands` VALUES (473, 'nearbyfuels', 'N/A', 'Find nearby fuel NPCs.', 0, 7, '2015-02-04 12:13:10');
INSERT INTO `commands` VALUES (474, 'delfuel [id]', 'N/A', 'Delete a fuel NPC.', 1, 7, '2014-11-29 13:14:09');
INSERT INTO `commands` VALUES (477, 'nearbyitems', 'N/A', 'Shows nearby items.', 11, 5, '2015-02-04 12:15:18');
INSERT INTO `commands` VALUES (480, 'sw', '', 'Possibility to change the wather.', 3, 7, '2014-10-05 00:30:54');
INSERT INTO `commands` VALUES (481, 'srl ', '', 'Sets the amount of rain.', 3, 7, '2014-10-05 00:31:18');
INSERT INTO `commands` VALUES (482, 'delitem', '', 'Deletes an item', 1, 5, '2014-10-05 13:12:17');
INSERT INTO `commands` VALUES (486, 'processcustominterior [interior ID]', '', 'Manually process a custom interior upload', 3, 4, '2014-10-19 11:24:14');
INSERT INTO `commands` VALUES (487, 'processcustominterior [interior ID]', '', 'Manually process a custom interior upload', 41, 4, '2014-10-19 11:24:41');
INSERT INTO `commands` VALUES (488, 'showkills', '', 'Show the latest kills', 1, 7, '2014-10-19 21:36:23');
INSERT INTO `commands` VALUES (489, 'setserverpassword [Password, leave empty to remove]', '', '', 1, 7, '2014-10-25 21:29:19');
INSERT INTO `commands` VALUES (490, 'setintfaction [Faction Name or Faction ID]', '', 'Transfer an interior\'s ownership to a faction. ', 2, 2, '2014-10-25 21:44:56');
INSERT INTO `commands` VALUES (491, 'setinttomyfaction ', 'N/A', 'Transfer an interior\'s ownership from a faction leader to his faction.', 0, 2, '2015-02-04 12:12:30');
INSERT INTO `commands` VALUES (493, 'fuelveh [ID] [Liters, 0=full]', 'N/A', 'Refills the fuel tank of the given player ID', 11, 3, '2015-02-04 12:12:14');
INSERT INTO `commands` VALUES (494, 'delemitters', '', 'Deletes all emitters', 1, 5, '2015-01-01 15:53:02');
INSERT INTO `commands` VALUES (502, 'adddancer', 'N/A', 'Adds an NPC dancer', 2, 7, '2014-12-03 18:34:46');
INSERT INTO `commands` VALUES (503, 'fixinventory', 'N/A', 'Fixes your inventory client-side, for when it gets bugged.', 0, 5, '2014-12-06 16:10:42');
INSERT INTO `commands` VALUES (504, 'setinttomyfaction', 'N/A', 'Set an interior you own to your faction ', 0, 4, '2014-12-06 20:25:25');
INSERT INTO `commands` VALUES (506, 'groundsnow', 'N/A', 'Toggle the snow shader', 0, 7, '2014-12-07 03:37:56');
INSERT INTO `commands` VALUES (507, 'whitelists', 'N/A', 'List all staff serial whitelist', 0, 7, '2015-02-04 12:13:14');
INSERT INTO `commands` VALUES (508, 'addserialwl [Username] [Serial]', '', 'Add new item to serial whitelist.', 3, 7, '2014-12-13 22:07:16');
INSERT INTO `commands` VALUES (509, 'delserialwl [Whitelist ID]', '', 'Remove a staff from serial whitelist', 3, 7, '2014-12-13 22:07:47');
INSERT INTO `commands` VALUES (510, 'banserial [Serial Number] [Reason]', '', 'Ban a serial number.', 1, 7, '2014-12-30 01:45:41');
INSERT INTO `commands` VALUES (511, 'banip [IP Address] [Reason]', '', 'Ban an IP address.', 1, 7, '2015-01-07 23:25:29');
INSERT INTO `commands` VALUES (512, 'showban', '', 'Show details of a ban.', 1, 7, '2014-12-30 01:47:02');
INSERT INTO `commands` VALUES (513, 'staffs', '', 'Opens staff manager', 3, 7, '2015-01-08 05:30:50');
INSERT INTO `commands` VALUES (514, 'adde', 'N/A', 'adds an elevator your current spot. Type it again to set the second spot.', 11, 7, '2015-01-08 07:02:07');
INSERT INTO `commands` VALUES (515, '/entercar [player] [car ID] [seat]', 'N/A', 'Warps you inside a car.', 11, 1, '2015-02-04 12:12:38');
INSERT INTO `commands` VALUES (516, 'dutyadmin', '', 'Manages /duty systems', 3, 2, '2015-01-09 19:23:54');
INSERT INTO `commands` VALUES (517, 'watch [ID]', '', 'Watches another player', 1, 7, '2015-01-09 19:24:29');
INSERT INTO `commands` VALUES (518, 'autowatch [Time Interval]', '', 'it\'s like /watch, but scrolls through everyone online. Interval is in seconds', 1, 7, '2015-01-14 00:21:36');
INSERT INTO `commands` VALUES (519, 'injure', 'N/A', 'Base command for the \"Health\" System. It allows you to add an injury to yourself or another.', 0, 7, '2015-02-04 12:13:02');
INSERT INTO `commands` VALUES (520, 'irespond', 'N/A', 'Allows you to respond with either (y)es or (n)o to a request from /injure', 11, 7, '2015-02-04 12:12:52');
INSERT INTO `commands` VALUES (521, 'diagnose', 'N/A', 'Used to open the GUI of a player to view their current injuries. RP this accordingly.', 0, 7, '2015-02-04 12:13:32');
INSERT INTO `commands` VALUES (522, 'treat', 'N/A', 'Allows you to treat a person of an injury. This has an associated money cost. RP it accordingly.', 0, 7, '2015-02-04 12:12:57');
INSERT INTO `commands` VALUES (523, '/dele', 'N/A', 'Deletes an elevator ', 11, 7, '2015-02-04 12:13:06');
INSERT INTO `commands` VALUES (524, 'startbus', 'N/A', 'Begins a bus route if you are inside a bus as a driver.', 0, 6, '2015-01-29 09:31:10');
INSERT INTO `commands` VALUES (526, 'handbrake', 'G', 'Applies the handbrake or kickstand to vehicles.', 0, 3, '2015-01-29 09:36:46');
INSERT INTO `commands` VALUES (527, 'movesafe', 'N/A', 'Moves a safe placed in an interior. (Key holders only)', 0, 5, '2015-01-29 09:39:00');
INSERT INTO `commands` VALUES (528, 'ri [ID]', 'N/A', 'Shows report information.', 11, 7, '2015-01-29 09:42:06');
INSERT INTO `commands` VALUES (530, 'fp', 'N/A', 'Toggles first person view, type it again to switch back.', 0, 7, '2015-01-29 09:50:04');
INSERT INTO `commands` VALUES (531, 'togg', 'N/A', 'Toggle supporter chat on/off.', 11, 1, '2015-01-29 09:53:56');
INSERT INTO `commands` VALUES (532, '=', '=', 'Toggles hazard lights/flashers.', 0, 3, '2015-02-06 10:31:02');
INSERT INTO `commands` VALUES (533, '[', '[', 'Turns on a vehicle\'s left directional.', 0, 3, '2015-02-04 12:14:06');
INSERT INTO `commands` VALUES (534, ']', ']', 'Turns on a vehicle\'s right directional.', 0, 3, '2015-02-04 12:14:02');
INSERT INTO `commands` VALUES (535, 'radio [Message]', 'Y', 'Sends a message via radio to everyone on that frequency.', 0, 1, '2015-01-29 09:58:09');
INSERT INTO `commands` VALUES (537, 'say [Text]', 'T', 'To use in character chat.', 0, 1, '2015-01-29 10:04:06');
INSERT INTO `commands` VALUES (538, 'I', 'I', 'Opens your inventory.', 0, 5, '2015-02-04 12:14:33');
INSERT INTO `commands` VALUES (539, 'p [Text]', 'N/A', 'Send an in character message during a phone call.', 0, 1, '2015-01-29 10:03:16');
INSERT INTO `commands` VALUES (540, 'b [Text]', 'B', 'To use out of character chat.', 0, 1, '2015-01-29 10:03:49');
INSERT INTO `commands` VALUES (541, 'ooc [Text]', 'N/A', 'To use global out of character chat when enabled.', 0, 1, '2015-01-29 10:04:33');
INSERT INTO `commands` VALUES (542, 'seatbelt', 'Z', 'Buckles in your seatbelt.', 0, 3, '2015-01-29 10:06:24');
INSERT INTO `commands` VALUES (543, 'togwindow', 'X', 'Opens/Closes vehicle windows.', 0, 3, '2015-01-29 10:07:05');
INSERT INTO `commands` VALUES (544, 'pay [Player name/ID]', 'N/A', 'Sends money to another player. (Requires 10 hours on any character)', 0, 7, '2015-01-29 10:11:26');
INSERT INTO `commands` VALUES (545, 'banaccount', '', 'Ban an account permanently. (Excluding IP and serial)', 1, 7, '2015-02-03 11:18:31');
INSERT INTO `commands` VALUES (546, 'jailtime', 'N/A', 'Shows the time that you are jailed for.', 0, 7, '2015-02-04 10:22:44');
INSERT INTO `commands` VALUES (547, 'seefar [250 - 20000]', 'N/A', 'Changes the clip distance of the client to the selected value.', 0, 7, '2015-02-04 10:24:54');
INSERT INTO `commands` VALUES (548, 'clearchat', 'N/A', 'Clears your entire chatbox.', 0, 7, '2015-02-04 10:25:51');
INSERT INTO `commands` VALUES (549, 'togglehud', 'N/A', 'Toggles the in game HUD on or off.', 0, 7, '2015-02-04 10:26:42');
INSERT INTO `commands` VALUES (550, 'showfeedbacks', 'N/A', 'Shows your recieved feedback.', 11, 7, '2015-02-04 10:29:29');
INSERT INTO `commands` VALUES (551, 'staffs', 'N/A', 'A quick command to open up staff manager.', 11, 7, '2015-02-04 10:30:03');
INSERT INTO `commands` VALUES (552, 'findalts [Name/ID]', 'N/A', 'Shows the selected player\'s other characters as well as hours played on them.', 11, 7, '2015-02-08 19:21:25');
INSERT INTO `commands` VALUES (553, 'staff', 'N/A', 'Opens up a menu showing online staff members.', 0, 7, '2015-02-07 22:40:48');

-- ----------------------------
-- Table structure for commands_library
-- ----------------------------
DROP TABLE IF EXISTS `commands_library`;
CREATE TABLE `commands_library`  (
  `cmID` int(11) NOT NULL AUTO_INCREMENT,
  `cmType` int(11) NOT NULL DEFAULT 1,
  `cmLevel` int(11) NOT NULL DEFAULT 0,
  `cmSubType` int(11) NOT NULL DEFAULT 0,
  `cmName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `cmExplanation` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `cmCreationDate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`cmID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Saves all info about all kinds of commands in /cmds, /gh and' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of commands_library
-- ----------------------------
INSERT INTO `commands_library` VALUES (-2, 2, 0, 0, NULL, '8/6/13: Released Bank System v1.6 + ATM Card System -Maxime\n5/6/13: Released gate manager v2.0 (Fixed grid list bug, /nearbygates is made,  re-worked the system partially, it should work much faster now) -Maxime\n5/6/13: New external Report panel for Admins and GMs. New overlay menu for /stats and /admins -Maxime\n4/6/13: All interactions with NPCs, Shops, Sittable Chairs, Computer Items have been moved from left mouse to right mouse. -Maxime\n4/6/13: Added Ability to Drag & Drop Items to shelves - Maxime\n3/6/13: Released shop system v2.2 (All kinds of shops/NPC will work and profitable even when owner is offline) - Maxime\n2/6/13: Created new cmds /nearbynpcs and /renamenpc for Admins and GMs. - Maxime\n2/6/13: Added names to all kinds of NPC in format of \'Firstname Lastname\'. -Maxime\n1/6/13: Monitors will be now showing for all admins and GMs on duty. It doesn\'t show \"New Player\" monitor one, but still it existed in /monitor - Maxime\n1/6/13: GMs granted full access to add/modifiy/remove any monitors. -Maxime\n1/6/13: Modified /warn cmd - Maxime\n1/6/13: Re-worked 16 static shops, made the GUI look all consistent. -Maxime\n31/5/13: Created GM warning, moved adverts management to GMs.-Maxime\n31/5/13: Created 7 more new adm cmds to manage job system (check /ah for details) - Maxime\n31/5/13: Restricted GMs + Super Admin and below from viewing/editing their own admin note - Maxime\n31/5/13: Restricted GMs from seeing player\'s admin note and other abusable info via /check - Maxime\n31/5/13: Created new dynamic /ah and /gh, auto update itself every 10 minutes. -Maxime\n31/5/13: New Death Screen + Respawn button - Maxime\n31/5/13: Created new Trial+ GM, Trial+ Admin cmd \'forceapp\' - Maxime\n31/5/13: Created new Trial+ Admin cmd \'/aheal\' - Maxime\n28/5/13: Added 30+ more new interiors to official interiors list, /listints for details - Maxime\n24/5/13: Re-scripted new trucker job system, allowed people to order supplies from RS haul, removed supplies NPC - Maxime\n', '2013-06-08 02:31:19');
INSERT INTO `commands_library` VALUES (-1, 1, 0, 0, NULL, 'SDSDS\n', '2014-03-11 03:36:13');
INSERT INTO `commands_library` VALUES (1, 1, 0, 0, 'trace', 'traces a phone number and tells you who owns it. Player must be online.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (2, 1, 0, 0, 'getkey', 'Spawns yourself a key of interior or vehicle that you\'re currently in.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (3, 1, 0, 0, 'cr', 'without specified ID will closes all your own accepted reports.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (4, 1, 0, 0, 'createemitter [Emitter Type]', 'Spawns Synced Fire/Water Emitters', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (5, 1, 0, 0, 'nearbyemitters', 'Shows all nearby Fire/Water emitters.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (6, 1, 0, 0, 'delemitters', 'Deletes all nearby Fire/Water emitters.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (7, 1, 0, 0, 'delemitter [Emitter ID]', 'Deletes a Fire/Water emitters.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (8, 1, 0, 0, 'delnearbyshops', 'Deletes nearby shops.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (9, 1, 0, 0, 'reloadshop [ID]', 'Reloads a bugged shop.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (10, 1, 0, 0, 'restoreshop [ID]', 'Restores a deleted NPC from SQL.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (11, 1, 0, 0, 'delshop [ID]', 'Deletes a NPC from game, still exist in SQL.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (12, 1, 0, 0, 'showallcustomshops', 'Shows all custom shops parameters and settings.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (13, 1, 0, 0, 'fixnearbyeleators', 'Fixes near by elevators. Players can use too.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (14, 1, 0, 0, 'fixvehvis [Driver\'s partial Name/ID]', 'Fixes player\'s car\'s visual, leave the engine\'s health.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (15, 1, 0, 0, 'findvehid [Veh Name]', 'Gets car\'s Model ID from Name.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (16, 1, 0, 0, 'getcolor [Veh ID]', 'Gets car\'s color.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (17, 1, 0, 0, 'respawnint', 'Respawns all vehicle within current interior/dimension.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (18, 1, 0, 0, 'restock', 'Restocks businesses, you must be inside an interior to restock. Or use SYNTAX: /restock [Interior ID] [Amount 1~300]', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (19, 1, 0, 0, 'ojail [Exact Username] [Minutes(>=1) 999=Perm] [Reason]', 'Jails an offline player.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (20, 1, 0, 0, 'sojail [Exact Username] [Minutes(>=1) 999=Perm] [Reason]', 'Silently jails an offline player.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (21, 1, 0, 0, 'oban [Exact Username] [Time in Hours, 0 = Infinite] [Reason]', 'Bans an offline player.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (22, 1, 0, 0, 'delefromint [Interior ID, 0 = world map]', 'Deletes all elevators that connect to a specified interior.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (23, 1, 0, 0, 'delnearbye', 'Deletes all nearby elevators.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (24, 1, 0, 0, 'stopradiodistrict', 'Stops all car radios within current district.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (25, 1, 0, 0, 'adde', 'creates an elevator', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (26, 1, 0, 0, 'adde2', 'Create an elevator between you and another player', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (27, 1, 0, 0, 'dele', 'deletes an elevator', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (28, 1, 0, 0, 'nearbye', 'shows nearby elevators', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (29, 1, 0, 0, 'togglee', 'enables/disables an elevator', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (30, 1, 0, 0, 'togautocheck', 'Toogles auto opening player /check on /ar reports.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (31, 1, 0, 0, 'changewarnstyle', 'changes admin warning message displaying style.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (32, 1, 0, 0, 'ur', 'view unanswered reports.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (34, 1, 0, 0, 'adminlounge', 'Chill out in the lounge', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (35, 1, 0, 0, 'check', 'retrieves specified player\'s information', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (36, 1, 0, 0, 'stats', 'shows players vehicle id\'s, languages etc', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (37, 1, 0, 0, 'history', 'checks the admin history of the player, works also when offline.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (38, 1, 0, 0, 'auncuff', 'uncuffs the player', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (39, 1, 0, 0, 'revive', 'revives a player that has been PKd.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (40, 1, 0, 0, 'pmute', 'mutes the player', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (41, 1, 0, 0, 'togooc', 'Toggles OOC on/off', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (42, 1, 0, 0, 'stogooc', 'Siently Toggles OOC on/off', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (43, 1, 0, 0, 'disarm', 'takes all weapon from the player', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (44, 1, 0, 0, 'freconnect', 'reconnects the player', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (45, 1, 0, 0, 'giveitem', 'gives the player the specified item, see /itemlist for ids', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (46, 1, 0, 0, 'sethp', 'sets the health of the player', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (47, 1, 0, 0, 'setarmor', 'sets the armor of the player', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (48, 1, 0, 0, 'setskin', 'sets the skin of a player', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (49, 1, 0, 0, 'changename', 'changes the character name', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (50, 1, 0, 0, 'slap', 'drops the player from a height of 15', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (51, 1, 0, 0, 'recon', 'spectate a player', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (52, 1, 0, 0, 'fuckrecon', 'forces recon to stop', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (53, 1, 0, 0, 'pkick', 'kicks the player from the server', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (54, 1, 0, 0, 'pban', 'bans the player for the given time, specify 0 as hours for permanent ban', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (55, 1, 0, 0, 'unban', 'unbans the player with the given character name', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (56, 1, 0, 0, 'unbanip', 'unbans the specified ip', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (57, 1, 0, 0, 'unbanserial', 'unbans the specified serial', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (58, 1, 0, 0, 'gotoplace', 'teleports you to one of those 4 places', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (59, 1, 0, 0, 'jail', 'jails the player, if minutes >= 999 it\'s permanent', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (60, 1, 0, 0, 'unjail', 'unjails the player', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (61, 1, 0, 0, 'jailed', 'shows a list of players that are in adminjail, including time left and reason', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (62, 1, 0, 0, 'goto', 'teleport to another player', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (63, 1, 0, 0, 'gethere', 'teleports the player to you', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (64, 1, 0, 0, 'sendto', 'teleports a player to another one', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (65, 1, 0, 0, 'freeze', 'freezes the player', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (66, 1, 0, 0, 'unfreeze', 'unfreezes the player', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (67, 1, 0, 0, 'mark', 'saves your current position', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (68, 1, 0, 0, 'gotomark', 'teleports to the position where you did /mark [label]', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (69, 1, 0, 0, 'adminduty', '(un)marks you as admin on duty', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (70, 1, 0, 0, 'setmotd', 'updates the message of the day', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (71, 1, 0, 0, 'setamotd', 'updates the admin message of the day', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (72, 1, 0, 0, 'amotd', 'shows the current admin message of the day', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (73, 1, 0, 0, 'warn', 'issues a warning, player is banned when having 3 warnings', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (74, 1, 0, 0, 'showinv', 'views the inventory of the player', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (75, 1, 0, 0, 'togmytag', 'toggles your nametag on and off', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (76, 1, 0, 0, 'dropme', 'drops you off at the current freecam position', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (77, 1, 0, 0, 'disappear', 'disappear', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (78, 1, 0, 0, 'listcarprices', 'shows list with carprices in dealerships', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (79, 1, 0, 0, 'findalts', 'shows all characters the player has', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (80, 1, 0, 0, 'findip', 'shows all accounts the player has', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (81, 1, 0, 0, 'findserial', 'shows all accounts the player has', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (82, 1, 0, 0, 'setlanguage or /setlang', 'adjusts the skill of a player\'s language, or learns it to him', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (83, 1, 0, 0, 'dellanguage', 'deletes a language from the player\'s knowledge', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (84, 1, 0, 0, 'aunblindfold', 'unblindfold the player', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (85, 1, 0, 0, 'agivelicense', 'gives the player a license', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (86, 1, 0, 0, 'resetcontract', 'resets the job time limit for a person.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (87, 1, 0, 0, 'ads', 'Shows all pending adverts.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (88, 1, 0, 0, 'freezead', 'Freeze an advert.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (89, 1, 0, 0, 'unfreezead', 'Unfreeze an advert', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (90, 1, 0, 0, 'deletead', 'Delete an advert', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (91, 1, 0, 0, '\'P\'', 'Locks a world item. Make it unpickable.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (92, 1, 0, 0, 'itemprotect', 'Sets locked world item pickable by faction members.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (93, 1, 0, 0, 'addii', 'Adds an information marker', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (94, 1, 0, 0, 'delii', 'Deletes an information marker', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (95, 1, 0, 0, 'nearbyii', 'Shows all nearby information markers', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (96, 1, 0, 0, 'makeshop ', 'Creates a NPC.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (97, 1, 0, 0, 'nearbyshops ', 'Shows all near by NPCs.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (98, 1, 0, 0, 'gunlist or /gunchart', 'Showing a details weapon\'s properties table with IDs.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (99, 1, 0, 0, 'setage ', 'Change player\'s age', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (100, 1, 0, 0, 'setrace ', 'Change player\'s race', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (101, 1, 0, 0, 'setheight  ', 'Change player\'s height', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (102, 1, 0, 0, 'setgender  ', 'Change player\'s gender', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (103, 1, 0, 0, 'sll  ', 'Change suspension\'s height', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (104, 1, 0, 0, 'getsll  ', 'Gets suspension\'s height', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (105, 1, 0, 0, 'resetsll', 'Resets suspension\'s height for the current vehicle.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (106, 1, 0, 0, 'sdt  ', 'Change drivetrain type', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (107, 1, 0, 0, 'getsdt  ', 'Gets drivetrain type', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (108, 1, 0, 0, 'resetsdt', 'Resets drive type for the current vehicle.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (109, 1, 0, 0, 'skick', 'Silently kick a player', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (110, 1, 0, 0, 'sjail  ', 'Silently jail a player', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (111, 1, 0, 0, 'sjail  ', 'Silently jail a player', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (112, 1, 0, 0, 'stogooc  ', 'Silently toggle global OOC chat', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (113, 1, 0, 0, 'setjob  ', 'Sets player job.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (114, 1, 0, 0, 'deljob  ', 'Deletes player job.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (115, 1, 0, 0, 'issuepilotcertificate  ', 'Issues player a pilot license', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (116, 1, 0, 0, 'issuepc  ', 'Issues player a pilot license', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (117, 1, 0, 0, 'items or /itemlist ', 'Opens Item Creator.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (118, 1, 0, 0, 'settrainrailed ', 'Sets a train off/on the rail.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (119, 1, 0, 0, 'settraindirection', 'Sets a train direction to (counter)clockwise.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (120, 1, 0, 0, 'listcarprices', 'Shows an list of vehicles in car dealerships', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (121, 1, 0, 0, 'unflip', 'unflips the car', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (122, 1, 0, 0, 'unlockcivcars', 'unlocks all civilian vehicles', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (123, 1, 0, 0, 'oldcar', 'retrieves the id of the last car you drove', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (124, 1, 0, 0, 'thiscar', 'retrieves the id of your current car', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (125, 1, 0, 0, 'gotocar', 'teleports you to the car with that id', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (126, 1, 0, 0, 'getcar', 'teleports the car to you', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (127, 1, 0, 0, 'nearbyvehicles', 'shows all vehicles within a radius of 20', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (128, 1, 0, 0, 'respawnveh', 'respawns the vehicle with that id', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (129, 1, 0, 0, 'respawnall', 'respawns all vehicles', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (130, 1, 0, 0, 'respawndistrict', 'respawns all vehicles in the district you are in', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (131, 1, 0, 0, 'respawnciv', 'respawns all civilian (job) vehicles', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (132, 1, 0, 0, 'findveh', 'retrieves the model for that vehicle name', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (133, 1, 0, 0, 'fixveh', 'repairs a player\'s vehicle', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (134, 1, 0, 0, 'fixvehs', 'repairs all vehicles', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (135, 1, 0, 0, 'fixvehis', 'fixes the vehicles look, engine may remain broken', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (136, 1, 0, 0, 'blowveh', 'blows up a players car', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (137, 1, 0, 0, 'setcarhp', 'sets the health of a car, full health is 1000.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (138, 1, 0, 0, 'fuelveh', 'refills a players vehicle', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (139, 1, 0, 0, 'fuelvehs', 'refills all vehicles', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (140, 1, 0, 0, 'setcolor', 'changes the players vehicle colors', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (141, 1, 0, 0, 'getcolor', 'returns the colors of a vehicle', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (142, 1, 0, 0, 'entercar', 'puts the player into the given vehicle at either the specified seat, or if none then the first free seat', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (143, 1, 0, 0, 'getpos', 'outputs your current position, interior and dimension', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (144, 1, 0, 0, 'x', 'increases your x-coordinate by the given value', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (145, 1, 0, 0, 'y', 'increases your y-coordinate by the given value', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (146, 1, 0, 0, 'z', 'increases your z-coordinate by the given value', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (147, 1, 0, 0, 'set*', 'sets your coordinates - available combinations: x, y, z, xyz, xy, xz, yz', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (148, 1, 0, 0, 'reloadint', 'reloads an interior from the database', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (149, 1, 0, 0, 'nearbyints', 'shows nearby interiors', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (150, 1, 0, 0, 'setintname', 'changes an interior name', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (151, 1, 0, 0, 'setfee', 'sets an fee on entering the interior', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (152, 1, 0, 0, 'getintid', 'Gets the interior id', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (153, 1, 0, 0, 'setdim or /setdimension', 'Sets the players dimension id', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (154, 1, 0, 0, 'setint or /setinterior', 'Setst he players interior id', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (155, 1, 0, 0, 'addcandidate', 'add\'s player to election vote list', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (156, 1, 0, 0, 'delcandidate', 'deletes a player to election vote list', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (157, 1, 0, 0, 'showresults', 'shows the results of the election', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (158, 1, 0, 0, 'showfactions', 'shows a list with factions', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (159, 1, 0, 0, ' /respawnfaction', 'respawns faction vehicles', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (160, 1, 0, 0, 'resetbackup', 'Resets PD\'s backup unit', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (161, 1, 0, 0, 'resetassist', 'Resets ES\'s assist system', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (162, 1, 0, 0, 'resettowbackup', 'Resets towing backup system', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (163, 1, 0, 0, 'aremovespikes', 'Removes all the PD spikes', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (164, 1, 0, 0, 'clearnearbytag', 'Clears nearby tag', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (165, 1, 0, 0, 'nearbytags', 'Shows nearby tag and its creators', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (166, 1, 0, 0, 'changelock', 'changes the lock from the vehicle/interior', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (167, 1, 0, 0, 'restartgatekeepers', 'restarts the gatekeepers resource', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (168, 1, 0, 0, 'bury', 'buries the player; removes the ck corpse', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (169, 1, 0, 0, 'listadverts', 'gives a list with recently ran and pending adverts', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (170, 1, 0, 0, 'freeze', 'prevents an ad from being aired, max is 10 minutes.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (171, 1, 0, 0, 'unfreeze', 'Unfreezes an advert', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (172, 1, 0, 0, 'deletead', 'Marks an ad as aired', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (173, 1, 0, 0, 'resetpos', 'Reset player\'s position, works when player\'s offline.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (174, 1, 0, 0, 'delsupercar', 'deletes the supercar you\'re in, given that it meets the criteria for deletion.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (175, 1, 0, 0, 'setbiznote', 'Sets business greeting/notification message.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (176, 1, 0, 0, 'delitemsfromint [Int ID] [Day old of Items]', 'Deletes all the items within a specified interior that older than an interval of item\'s day old.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (177, 1, 0, 0, 'ints or /interiors', 'Opens Interior Manager.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (178, 1, 0, 0, 'delint', 'Deletes the interior from game and disables it from loading in next server/resource restarts.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (179, 1, 0, 0, 'delthisint or /delthisinterior', 'Deletes the interior you\'re currently in it from game and disables it from loading in next server/resource restarts.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (180, 1, 0, 0, 'restoreint ', 'Restores a deleted interior included safe, items and NPCs inside it.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (181, 1, 0, 0, 'gotohouse', 'teleports to the house', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (182, 1, 0, 0, 'gotoint', 'teleports to the interior', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (183, 1, 0, 0, 'gotointi', 'teleports inside of an interior', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (184, 1, 0, 0, 'veh', 'spawns a temporary vehicle', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (185, 1, 0, 0, 'resetshopwage', 'Resets all shops wages to $0.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (186, 1, 0, 0, 'forceupdateshopwage', 'Forces update all shop wages.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (187, 1, 0, 0, 'delnearbyvehs', 'Deletes all the nearby (temporary) vehicles.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (188, 1, 0, 0, 'delveh', 'Deletes the (temporary) vehicle with that id', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (189, 1, 0, 0, 'delthisveh', 'Deletes the (temporary) vehicle', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (190, 1, 0, 0, 'restoreveh', 'Restores a deleted vehicle.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (191, 1, 0, 0, 'makeveh', 'creates a new permanent vehicle', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (192, 1, 0, 0, 'makecivveh', 'creates a new permanent civilian vehicle', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (193, 1, 0, 0, 'addupgrade', 'upgrades a players car', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (194, 1, 0, 0, 'setpaintjob', 'set another paintjob on a vehicle', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (195, 1, 0, 0, 'setvariant', 'set another variant on a vehicle', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (196, 1, 0, 0, 'delupgrade', 'removes a specific upgrade from the player\'s car', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (197, 1, 0, 0, 'resetupgrades', 'removes all upgrades on the player\'s car', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (198, 1, 0, 0, 'aunimpound', 'unimpounds the vehicle from the BTR lot', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (199, 1, 0, 0, 'setvehtint', 'adds or removes vehicle tint', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (200, 1, 0, 0, 'atakelicense', 'revokes the player a license (use full name for offline players', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (201, 1, 0, 0, 'setvehplate', 'changes the plate of a vehicle', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (202, 1, 0, 0, 'setvehfaction', 'changes the owner of a vehicle to a faction, use factionid -1 to set it to yourself', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (203, 1, 0, 0, 'gates', 'Opens Gate Manager', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (204, 1, 0, 0, 'gotogate', 'Teleports to a gate.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (205, 1, 0, 0, 'delgate', 'Deletes to a gate.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (206, 1, 0, 0, 'loginto [Exact Character Name] ', 'Logs into an other account\'s character.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (207, 1, 0, 0, 'forcepayday [Player ID/Name] ', 'Forces a player to get payday.', '2013-06-29 17:04:41');
INSERT INTO `commands_library` VALUES (208, 1, 0, 0, 'forcepaydayall ', 'Forces all players to get paydays.', '2013-06-29 17:04:38');
INSERT INTO `commands_library` VALUES (209, 1, 0, 0, 'rwarn [warn #]', 'sends a predefined admin warnings or custom admin warning.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (210, 1, 0, 0, 'soban [Player Username] [Time in Hours, 0 = Infinite] [Reason]', 'Silently bans an offline player.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (211, 1, 0, 0, 'givesuperman [Player Partial Nick / ID]', 'Gives player temporary ability to fly. Execute the cmd again to revoke the ability. Ability will be automatically gone after player relogs.', '2013-06-29 17:06:01');
INSERT INTO `commands_library` VALUES (212, 1, 0, 0, 'sw', 'change the weather', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (213, 1, 0, 0, 'addatm', 'adds an ATM at this spot', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (214, 1, 0, 0, 'delatm', 'deletes an ATM with the id', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (215, 1, 0, 0, 'nearbyatms', 'shows the nearby ATMs', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (216, 1, 0, 0, 'bigears', 'hook yourself between someone\'s chats', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (217, 1, 0, 0, 'bigearsf', 'hook yourself between faction chats', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (218, 1, 0, 0, 'nearbyatms', 'shows the nearby ATMs', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (219, 1, 0, 0, 'gunmaker', 'Opens Weapon Creator', '2013-06-29 17:04:50');
INSERT INTO `commands_library` VALUES (220, 1, 0, 0, 'makepaynspray', 'creates an pay n spray', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (221, 1, 0, 0, 'nearbypaynsprays', 'shows nearby pay n sprays', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (222, 1, 0, 0, 'delpaynspray', 'deletes an pay n spray', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (223, 1, 0, 0, 'addphone', 'creates a public phone', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (224, 1, 0, 0, 'nearbyphones', 'shows nearby public phone', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (225, 1, 0, 0, 'delphone', 'deletes a public phone', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (226, 1, 0, 0, 'enableallelevators', 'enables all elevators', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (227, 1, 0, 0, 'addint', 'adds an interior', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (228, 1, 0, 0, 'sellproperty', 'sells an interior', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (229, 1, 0, 0, 'delint', 'deletes an interior', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (230, 1, 0, 0, 'getintid', 'shows the current interior', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (231, 1, 0, 0, 'setintid', 'changes the interior', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (232, 1, 0, 0, 'getintprice', 'shows the interiors price', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (233, 1, 0, 0, 'setintprice', 'changes the interiors price', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (234, 1, 0, 0, 'getinttype', 'shows the interiors type', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (235, 1, 0, 0, 'setinttype', 'changes the interiors type', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (236, 1, 0, 0, 'togint', 'sets the interior enabled or disabled', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (237, 1, 0, 0, 'enableallinteriors', 'enables all the interiors', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (238, 1, 0, 0, 'setintexit', 'changes an interior exit marker', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (239, 1, 0, 0, 'setintentrance', 'changes an interior entrance marker', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (240, 1, 0, 0, 'fsell', 'force-sells an interior', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (241, 1, 0, 0, 'setfactionleader', 'puts a player into a faction and makes the player leader', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (242, 1, 0, 0, 'setfactionrank', 'sets a player to a specific faction rank', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (243, 1, 0, 0, 'makefaction', 'creates a faction', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (244, 1, 0, 0, 'renamefaction', 'renames a faction', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (245, 1, 0, 0, 'setfaction', 'puts an player into a faction', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (246, 1, 0, 0, 'delfaction', 'deletes a faction', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (247, 1, 0, 0, 'addfuelpoint', 'creates a new fuelpoint', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (248, 1, 0, 0, 'nearbyfuelpoints', 'shows nearby fuelpoints', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (249, 1, 0, 0, 'delfuelpoint', 'deletes a fuelpoint', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (250, 1, 0, 0, 'ck', 'permanently kills the character; spawns a corpse at the location the player is at', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (251, 1, 0, 0, 'unck', 'reverts a character kill', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (252, 1, 0, 0, 'makegun', 'gives the player the specified weapon item', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (253, 1, 0, 0, 'makeammo', 'gives the player the specified ammo item', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (254, 1, 0, 0, 'setmoney', 'sets the players money to that value', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (255, 1, 0, 0, 'givemoney', 'gives the player money in addition to his current cash', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (256, 1, 0, 0, 'resetcharacter', 'fully resets the character', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (257, 1, 0, 0, 'setvehlimit', 'Set the players vehicle limit.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (258, 1, 0, 0, 'adminstats', 'shows admin stats', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (259, 1, 0, 0, 'removeshop', 'Deletes a NPC from SQL.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (260, 1, 0, 0, 'forcesellinactiveints', 'Force-sells All inactive interiors.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (261, 1, 0, 0, 'removeinactiveints', 'Removes All inactive interiors completedly and permanently from SQL.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (262, 1, 0, 0, 'removedeletedints', 'Removes All deleted interiors completedly and permanently from SQL.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (263, 1, 0, 0, 'removeforsaleints', 'Removes All for-sale interiors completedly and permanently from SQL.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (264, 1, 0, 0, 'delallitems [Item ID] [Item Value]', 'Deletes all the item instances from everywhere in game.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (265, 1, 0, 0, 'removeint [ID]', 'Deletes the interior from game and erases all the data from database completely and permanently include NPCs, items, safe and items inside the safe. If the deleted interior is a custom interior, the custom map will be gone forever.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (266, 1, 0, 0, 'removeveh [ID]', 'Removes the vehicle from game and erases all the data from database completely and permanently include items inside. ', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (267, 1, 0, 0, 'givedonPoints', 'awards a player donPoints', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (268, 1, 0, 0, 'givestattransfer', 'awards a player stat transfers', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (269, 1, 0, 0, 'hideadmin', 'toggles hidden/visible the admin status', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (270, 1, 0, 0, 'ho', 'send global ooc as hidden admin', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (271, 1, 0, 0, 'hw', 'send a pm as hidden admin', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (272, 1, 0, 0, 'makeadmin', 'gives the player an admin rank', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (273, 1, 0, 0, 'setaccountpassword', 'sets player\'s account password', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (274, 1, 0, 0, 'toga', 'Toggles admin chat.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (275, 1, 0, 0, 'togg', 'Toggles gamemaster chat.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (276, 1, 0, 0, 'startres', 'starts the resource', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (277, 1, 0, 0, 'stopres', 'stops the resource', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (278, 1, 0, 0, 'restartres', 'restarts the resource', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (279, 1, 0, 0, 'rescheck', 'checks for ceatain down resources and startes them', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (280, 1, 0, 0, 'rcs', 'check if the resource \"Resource-Keeper\" is running', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (281, 1, 0, 0, 'generatecode', 'generates a donation code', '2013-06-29 17:03:22');
INSERT INTO `commands_library` VALUES (282, 1, 0, 0, 'setdamageproof', 'makes a vehicle damageproof', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (283, 0, 0, 0, 'delitemsfromint', 'Deletes all the items within a specified interior that older than an interval of item\'s day old.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (285, 1, 0, 0, 'aordersupplies', 'Orders supplies from RS Haul for the current interior without yourself being charged.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (286, 1, 0, 0, 'setjoblevel', 'Sets player\'s city hall job\'s level and progress', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (287, 1, 0, 0, 'respawntrucks', 'Respawns all unoccupied Delivery Trucks', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (288, 1, 0, 0, 'checkactiveroutes', 'Shows all Delivery Job\'s routes that has player working on', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (289, 1, 0, 0, 'fetchactualorders', 'Fetches player\'s Supplies Orders from SQL to game manually (Normally it\'s auto-fetched every 10 minutes)', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (290, 1, 0, 0, 'addactualorder', 'Creates a marker for Delivery Job, it looks exactly the same as actual order from other player.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (291, 1, 0, 0, 'addtruckerjobmarker', 'Creates a generic drop-off marker for Delivery Driver job.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (292, 1, 0, 0, 'showactualorders', 'Shows Delivery Job\'s actual supply orders from players.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (293, 1, 0, 0, 'showalltruckmarkers', 'Shows all Delivery Job drop-off markers (both generic markers and actual order markers)', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (294, 1, 0, 0, 'skiproute', 'Skips Delivery Job\'s current route, jump instantly to next spot (Useful when creating job markers)', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (295, 1, 0, 0, 'resetaccount', 'Reset one character or all characters within an account.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (296, 1, 0, 0, 'deltruckmarker', 'Deletes a Delivery Job\'s marker', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (297, 1, 0, 0, 'aheal', 'Gives yourself full HP, or /aheal [ID] to give it someone else', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (298, 2, 0, 0, 'showadminreports', 'Subscribes to admin reports.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (300, 2, 0, 0, 'ads', 'Shows all pending adverts.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (301, 2, 0, 0, 'freezead', 'Freeze an advert.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (302, 2, 0, 0, 'unfreezead', 'Unfreeze an advert', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (303, 2, 0, 0, 'deletead', 'Delete an advert', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (304, 2, 0, 0, 'gmlounge', 'Teleports you to the GM lounge.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (305, 2, 0, 0, 'g [Text]', 'Talk in GM chat for communication with admins.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (306, 2, 0, 0, 'ar', 'Accept a report.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (307, 2, 0, 0, 'cr', 'Close a report.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (308, 2, 0, 0, 'dr', 'Drop a report, leaving it unanswered.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (309, 2, 0, 0, 'fr', 'Mark a report false', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (310, 2, 0, 0, 'ur', 'Shows all unanswered reports.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (311, 2, 0, 0, 'gmduty', 'Toggles GM duty (On/off)', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (312, 2, 0, 0, 'goto', 'Teleport to a player\'s location.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (313, 2, 0, 0, 'gotoplace', 'Teleport to a pre-determined place.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (314, 2, 0, 0, 'mark', 'Create a mark for you to teleport to (doing /mark without a name will create a temporary one)', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (315, 2, 0, 0, 'togautocheck', 'Toogles auto opening player /check on /ar reports.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (316, 2, 0, 0, 'gotomark', 'Teleport to a pre-made mark (/gotomark without a mark name teleports to a temporary one)', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (317, 2, 0, 0, 'setjob', 'Sets player job.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (318, 2, 0, 0, 'deljob', 'Deletes player job', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (319, 2, 0, 0, 'freeze', 'Freeze a player.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (320, 2, 0, 0, 'unfreeze', 'Unfreeze a frozen player.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (321, 2, 0, 0, 'gethere', 'Teleports a player to your location.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (322, 2, 0, 0, 'togpm', 'Disables your pm\'s.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (332, 2, 0, 0, 'makeadmin', 'gives the player an gm rank', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (335, 1, 0, 0, 'forceapp', 'Force player that doesn\'t meet server standards -and- not willing to improve out of game.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (336, 2, 0, 0, 'forceapp', 'Force player that doesn\'t meet server standards -and- not willing to improve out of game.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (337, 2, 0, 0, 'check', 'Display details information of a player', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (338, 1, 0, 0, 'checkinteriors', 'To check for custom int requests', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (339, 1, 0, 0, 'testinterior', 'Test the custom interior', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (340, 1, 0, 0, 'Savetestinterior', 'Save the tested interior', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (341, 1, 0, 0, 'deltestinterior', 'Deletes the tested interior', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (342, 1, 0, 0, 'renameshop', 'or /renameped or /renamenpc, it renames NPCs in format of \'First Lastname\'', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (343, 2, 0, 0, 'renameshop', 'or /renameped or /renamenpc, it renames NPCs in format of \'First Lastname\'', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (344, 2, 0, 0, 'nearbyshops', 'Gets near by NPC\'s info', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (345, 1, 0, 0, 'togoverlay', 'Toggles overlay menus on top or buttom of screen. If it\'s disabled, the content will be all printed to chatbox.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (346, 2, 0, 0, 'togoverlay', 'Toggles overlay menus on top or buttom of screen. If it\'s disabled, the content will be all printed to chatbox.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (347, 1, 0, 0, 'iastats', 'Returns reports done and hours played for specified user. Makes inputting to IA website easier.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (348, 1, 0, 0, '\'F5\'', 'Toggles Report Panel', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (349, 2, 0, 0, '\'F5\'', 'Toggles Report Panel', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (350, 1, 0, 0, 'settrackingloc', 'Use this command to define where the tracking device in the vehicle is installed.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (351, 3, 0, 0, 'settrackingloc', 'Use this command to define where the tracking device in the vehicle is installed.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (352, 1, 0, 0, 'gettrackingloc', 'Use this command to check where a tracking device has been installed.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (353, 1, 0, 0, 'infract', 'Gives an infraction to an administrator.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (354, 1, 0, 0, 'iahistory', 'View an administrators IA history.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (355, 1, 0, 0, 'Double right click an IA history entry', 'Removes an IA history entry.', '2013-06-29 17:10:19');
INSERT INTO `commands_library` VALUES (356, 1, 0, 0, 'awarn', 'Gives an warning to an administrator.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (357, 1, 0, 0, 'suspend [player] [hours]', 'Use this command to suspend an administrator.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (358, 1, 0, 0, 'hashtransactionid', 'Hashes a transaction ID from PayPal into the proper format for donation key.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (359, 1, 0, 0, 'unsuspend', 'Unsuspends an administrator.', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (360, 2, 0, 0, 'respawnveh', '/respawnveh [Vehicle ID] - To respawn a vehicle', '2013-06-29 17:07:57');
INSERT INTO `commands_library` VALUES (361, 1, 1, 0, '/check', 'Checks a players information', '2013-07-05 01:49:57');
INSERT INTO `commands_library` VALUES (362, 1, 1, 0, '/gethere', 'Teleports a player to you.', '2013-07-05 01:50:33');
INSERT INTO `commands_library` VALUES (363, 1, 1, 0, '/goto', 'Teleports you to a player', '2013-07-05 01:50:43');
INSERT INTO `commands_library` VALUES (364, 1, 1, 0, '/adminduty', 'Places you on/off Admin duty', '2013-07-05 01:52:24');
INSERT INTO `commands_library` VALUES (365, 1, 1, 0, '/warn', 'Warns a player (3 warns = perm ban)', '2013-07-05 01:52:39');
INSERT INTO `commands_library` VALUES (366, 1, 1, 0, '/jail', 'Jails a naughty player', '2013-07-05 01:52:58');
INSERT INTO `commands_library` VALUES (367, 1, 1, 0, '/sjail', 'Silently jails a player', '2013-07-05 01:53:53');
INSERT INTO `commands_library` VALUES (368, 1, 1, 0, '/ojail', 'Offline jails a player', '2013-07-05 01:54:11');
INSERT INTO `commands_library` VALUES (369, 1, 1, 0, '/sojail', 'Silently Offline jails a player', '2013-07-05 01:54:36');
INSERT INTO `commands_library` VALUES (370, 1, 1, 0, '/unjail', 'Unjails a player from admin jail.', '2013-07-05 01:54:53');
INSERT INTO `commands_library` VALUES (371, 1, 1, 0, '/sban [Player Partial Nick / ID] [Time in Hours, 0 = Infinite] [Reason]', 'Silently bans a player', '2013-07-05 01:59:25');
INSERT INTO `commands_library` VALUES (372, 1, 1, 0, '/soban', 'Silently offline bans a player', '2013-07-05 01:57:26');
INSERT INTO `commands_library` VALUES (373, 1, 1, 0, '/Trace', 'traces a phone number and tells you who owns it. Player must be online.', '2013-07-05 01:57:26');
INSERT INTO `commands_library` VALUES (374, 1, 1, 0, '/oban [Player Partial Nick / ID] [Time in Hours (0 = Perma)] [Reason]', 'Offline Bans a player', '2013-07-05 02:00:24');
INSERT INTO `commands_library` VALUES (375, 1, 1, 0, '/getkey', 'Spawns yourself a key of interior or vehicle that you\'re currently in.', '2013-07-05 01:57:47');
INSERT INTO `commands_library` VALUES (376, 1, 1, 0, '/cr [Report ID]', 'without specified ID will closes all your own accepted reports.', '2013-07-05 02:00:03');
INSERT INTO `commands_library` VALUES (377, 1, 1, 0, '/createemitter [Emitter Type]', 'Spawns Synced Fire/Water Emitters', '2013-07-05 01:58:32');
INSERT INTO `commands_library` VALUES (378, 1, 1, 0, '/history [Partial Player Nick / ID]', 'Checks a players admin history', '2013-07-05 01:59:53');
INSERT INTO `commands_library` VALUES (379, 1, 3, 0, '/makeveh', 'Makes a permanent vehicle.', '2013-07-05 01:59:32');
INSERT INTO `commands_library` VALUES (380, 1, 3, 0, '/makecivveh', 'Makes a civillian vehicle.', '2013-07-05 02:13:24');
INSERT INTO `commands_library` VALUES (381, 1, 1, 0, '/respawnall', 'Respawns all vehicles in the server (/respawnall', '2013-07-05 02:01:48');
INSERT INTO `commands_library` VALUES (382, 1, 1, 0, '/respawnciv', 'Respawns all civilian vehicles in the server (/respawnciv)', '2013-07-05 02:01:39');
INSERT INTO `commands_library` VALUES (383, 1, 1, 0, '/superman', 'Makes you superman! ', '2013-07-05 22:30:51');
INSERT INTO `commands_library` VALUES (384, 1, 5, 0, '/iahistory', 'Checks a administrators IA history', '2013-07-05 02:03:01');
INSERT INTO `commands_library` VALUES (385, 1, 5, 0, '/makeadmin ', 'Sets a players admin level ', '2013-07-05 02:03:27');
INSERT INTO `commands_library` VALUES (386, 1, 2, 0, '/delsupercar', 'deletes the supercar you\'re in, given that it meets the criteria for deletion.', '2013-07-05 02:03:41');
INSERT INTO `commands_library` VALUES (387, 1, 5, 0, '/generatecode', 'Generates a donation code', '2013-07-05 02:03:53');
INSERT INTO `commands_library` VALUES (388, 1, 2, 0, '/setbiznote [Message]', 'Sets business greeting/notification message.', '2013-07-05 02:03:58');
INSERT INTO `commands_library` VALUES (389, 1, 2, 0, '/delitemsfromint [Int ID] [Day old of Items]', 'Deletes all the items within a specified interior that older than an interval of item\'s day old.', '2013-07-05 02:04:14');
INSERT INTO `commands_library` VALUES (390, 1, 2, 0, '/ints or /interiors', 'Opens Interior Manager.', '2013-07-05 02:04:30');
INSERT INTO `commands_library` VALUES (391, 1, 2, 0, '/delint', 'Deletes the interior from game and disables it from loading in next server/resource restarts.', '2013-07-05 02:04:40');
INSERT INTO `commands_library` VALUES (392, 1, 2, 0, '/delthisint or /delthisinterior', 'Deletes the interior you\'re currently in it from game and disables it from loading in next server/resource restarts.', '2013-07-05 02:04:56');
INSERT INTO `commands_library` VALUES (393, 1, 2, 0, '/restoreint', 'Restores a deleted interior included safe, items and NPCs inside it.', '2013-07-05 02:05:12');
INSERT INTO `commands_library` VALUES (394, 1, 2, 0, '/gotohouse', 'teleports to the house', '2013-07-05 02:05:26');
INSERT INTO `commands_library` VALUES (395, 1, 2, 0, '/gotoint', 'teleports to the interior', '2013-07-05 02:05:38');
INSERT INTO `commands_library` VALUES (396, 1, 2, 0, '/gotointi', 'teleports inside of an interior', '2013-07-05 02:05:52');
INSERT INTO `commands_library` VALUES (397, 1, 2, 0, '/veh', 'spawns a temporary vehicle', '2013-07-05 02:06:03');
INSERT INTO `commands_library` VALUES (398, 1, 1, 0, '/nearbyvehicles', 'Gets nearbyvehicles ID - MODEL - OWNER', '2013-07-05 02:06:29');
INSERT INTO `commands_library` VALUES (399, 1, 1, 0, '/nearbyitems', 'Gets nearby items', '2013-07-05 02:07:14');
INSERT INTO `commands_library` VALUES (400, 1, 1, 0, '/entercar', 'Enters you into a vehicles seat. 0 - Driver', '2013-07-05 02:07:50');
INSERT INTO `commands_library` VALUES (401, 1, 1, 0, '/ann', 'Makes an admin announcement to the server', '2013-07-05 02:12:46');
INSERT INTO `commands_library` VALUES (402, 1, 1, 0, '/fuelveh ', 'Fuels a players vehicle', '2013-07-05 02:17:38');
INSERT INTO `commands_library` VALUES (403, 1, 1, 0, '/fuelvehs', 'Fuels all the vehicles in the server', '2013-07-05 02:18:00');
INSERT INTO `commands_library` VALUES (404, 1, 1, 0, '/fixveh', 'Fixes a players vehicle', '2013-07-05 02:18:20');
INSERT INTO `commands_library` VALUES (405, 1, 1, 0, '/fixvehs', 'Fixes all the vehicles in the server.', '2013-07-05 02:18:29');
INSERT INTO `commands_library` VALUES (407, 1, 1, 0, '/checkveh', 'Checks a vehicles note', '2013-07-05 02:29:34');
INSERT INTO `commands_library` VALUES (408, 1, 1, 0, '/checkint', 'Checks the interiors note.', '2013-07-05 02:29:42');
INSERT INTO `commands_library` VALUES (409, 1, 5, 0, '/loginto', 'Logs into a players character', '2013-07-05 02:30:19');
INSERT INTO `commands_library` VALUES (410, 1, 4, 0, '/bigears', 'Listens to a players PM\'s', '2013-07-05 02:42:16');
INSERT INTO `commands_library` VALUES (411, 1, 4, 0, '/bigearsf', 'Listens to a faction\'s OOC /f chat', '2013-07-05 02:42:32');
INSERT INTO `commands_library` VALUES (412, 1, 4, 0, '/resetaccount', 'Resets the entire account of a player', '2013-07-05 02:42:53');
INSERT INTO `commands_library` VALUES (413, 1, 4, 0, '/resetcharacter', 'Resets a players character', '2013-07-05 02:44:09');
INSERT INTO `commands_library` VALUES (414, 1, 4, 0, '/adminstats', 'Checks the admin statistics', '2013-07-05 02:45:43');
INSERT INTO `commands_library` VALUES (415, 1, 2, 0, '/addinterior', 'Creates an interior', '2013-07-05 02:57:02');
INSERT INTO `commands_library` VALUES (416, 1, 2, 0, '/setinteriorid', 'Sets the interiors ID', '2013-07-05 02:57:22');
INSERT INTO `commands_library` VALUES (417, 1, 2, 0, '/setinteriorprice', 'Sets the interiors price.', '2013-07-05 02:57:33');
INSERT INTO `commands_library` VALUES (418, 1, 5, 0, '/hideadmin', 'Appears hidden on /admin list.', '2013-07-05 03:10:02');
INSERT INTO `commands_library` VALUES (419, 1, 5, 0, '/ho', 'Sends a hidden announcement.', '2013-07-05 03:10:13');
INSERT INTO `commands_library` VALUES (420, 1, 1, 0, '/sdt', 'Sets a vehicle\'s drive terrain', '2013-07-05 14:31:47');
INSERT INTO `commands_library` VALUES (421, 1, 1, 0, '/sll', 'Sets a vehicle\'s height', '2013-07-05 14:32:09');
INSERT INTO `commands_library` VALUES (422, 1, 1, 0, '/adminlounge', 'Teleports you to the administration lounge', '2013-07-05 14:32:29');
INSERT INTO `commands_library` VALUES (423, 1, 1, 0, '/stopradiodistrict', 'Turns the radio off for all cars in a district.', '2013-07-05 14:33:13');
INSERT INTO `commands_library` VALUES (424, 1, 1, 0, '/findserial', 'Finds a players MTA Serial', '2013-07-05 14:33:27');
INSERT INTO `commands_library` VALUES (425, 1, 1, 0, '/findip ', 'Finds a players IP', '2013-07-05 14:33:36');
INSERT INTO `commands_library` VALUES (426, 1, 1, 0, '/findalts', 'Finds all charracters of a players account', '2013-07-05 14:33:54');
INSERT INTO `commands_library` VALUES (427, 1, 1, 0, '/restartcarshops', 'Resets the vehicles at the carshops', '2013-08-18 22:08:15');
INSERT INTO `commands_library` VALUES (428, 1, 1, 0, '/listcarprices', 'Lists all the vehicles spawned at the dealerships', '2013-07-05 14:37:32');
INSERT INTO `commands_library` VALUES (429, 1, 1, 0, '/makeshop', 'Creates an NPC', '2013-07-05 14:38:06');
INSERT INTO `commands_library` VALUES (430, 1, 1, 0, '/restartparachute', 'Restarts the parachute resource.', '2013-07-05 14:44:06');
INSERT INTO `commands_library` VALUES (431, 1, 3, 0, '/setpaintjob', 'Sets a vehicles paintjob', '2013-07-05 14:47:12');
INSERT INTO `commands_library` VALUES (432, 1, 3, 0, '/setvehtint', 'Sets a vehicles tint', '2013-07-05 14:47:21');
INSERT INTO `commands_library` VALUES (433, 1, 5, 0, '/hw', 'Sends a hidden admin PM', '2013-07-05 20:45:43');
INSERT INTO `commands_library` VALUES (434, 1, 1, 0, '/slap', 'Slaps a player', '2013-07-05 14:53:08');
INSERT INTO `commands_library` VALUES (435, 1, 1, 0, '/sethp', 'Sets a players HP', '2013-07-05 14:53:17');
INSERT INTO `commands_library` VALUES (436, 1, 1, 0, '/setcarhp', 'Sets a vehicle HP', '2013-07-05 14:53:30');
INSERT INTO `commands_library` VALUES (437, 1, 1, 0, '/aheal', 'Heals a player', '2013-07-05 14:53:39');
INSERT INTO `commands_library` VALUES (438, 1, 1, 0, '/togooc', 'Toggles the global OOC Chat', '2013-07-05 14:54:38');
INSERT INTO `commands_library` VALUES (439, 1, 1, 0, '/stogooc', 'Silently toggles the global OOC Chat', '2013-07-05 14:54:48');
INSERT INTO `commands_library` VALUES (440, 1, 1, 0, '/freconnect', 'Force reconnects a player', '2013-07-05 14:56:40');
INSERT INTO `commands_library` VALUES (441, 1, 1, 0, '/pkick', 'Kicks a player from the server', '2013-07-05 14:56:52');
INSERT INTO `commands_library` VALUES (442, 1, 1, 0, '/skick', 'Kicks a player from the server silently', '2013-07-05 14:57:00');
INSERT INTO `commands_library` VALUES (443, 1, 1, 0, '/delshop', 'Removes a NPC Shop', '2013-07-05 15:07:08');
INSERT INTO `commands_library` VALUES (444, 1, 4, 0, '/makepaynspray', 'Creates a pay n spray', '2013-07-05 15:07:54');
INSERT INTO `commands_library` VALUES (445, 1, 4, 0, '/delpaynspray', 'Deletes a pay n spray', '2013-07-05 15:08:08');
INSERT INTO `commands_library` VALUES (446, 1, 4, 0, '/addspeedcam', 'Creates a speedcam', '2013-07-05 15:08:26');
INSERT INTO `commands_library` VALUES (447, 1, 1, 0, '/togoverlay', 'Moves the GUI of /admins to your chatbox', '2013-07-05 15:10:59');
INSERT INTO `commands_library` VALUES (448, 1, 1, 0, '/changewarnstyle', 'Moves the warning style to your chatbox or right side of the screen', '2013-07-05 15:11:27');
INSERT INTO `commands_library` VALUES (449, 1, 1, 0, '/getpos', 'Gets your position', '2013-07-05 15:14:35');
INSERT INTO `commands_library` VALUES (452, 1, 1, 0, '/itemprotect', 'Sets locked world item pickable by..', '2013-07-05 15:15:33');
INSERT INTO `commands_library` VALUES (453, 1, 1, 0, '/ads', 'Shows all pending adverts.', '2013-07-05 15:15:57');
INSERT INTO `commands_library` VALUES (454, 1, 1, 0, '/delad', 'Deletes an advert', '2013-07-05 15:16:17');
INSERT INTO `commands_library` VALUES (455, 1, 1, 0, '/freezead', 'Freezes an advert', '2013-07-05 15:16:31');
INSERT INTO `commands_library` VALUES (456, 1, 1, 0, '/unfreezead', 'Unfreezes an advert', '2013-07-05 15:16:42');
INSERT INTO `commands_library` VALUES (457, 1, 1, 0, '/agivelicense', 'Gives a player a license', '2013-07-05 15:16:58');
INSERT INTO `commands_library` VALUES (458, 1, 1, 0, '/mark', 'Marks a position ', '2013-07-05 15:17:36');
INSERT INTO `commands_library` VALUES (459, 1, 1, 0, '/gotomark', 'TP\'s you to that mark', '2013-07-05 15:17:52');
INSERT INTO `commands_library` VALUES (460, 1, 1, 0, '/amotd', 'Displays the admin message of the day', '2013-07-05 15:18:10');
INSERT INTO `commands_library` VALUES (461, 1, 1, 0, '/setamotd', 'Sets the admin message of the day', '2013-07-05 15:18:20');
INSERT INTO `commands_library` VALUES (462, 1, 1, 0, '/setmotd', 'Sets the message of the day', '2013-07-05 15:18:37');
INSERT INTO `commands_library` VALUES (463, 1, 1, 0, '/disappear', 'Turns you invisible', '2013-07-05 15:19:28');
INSERT INTO `commands_library` VALUES (464, 1, 1, 0, '/jailed', 'Shows all players in admin & PD Jail', '2013-07-05 15:19:47');
INSERT INTO `commands_library` VALUES (465, 1, 1, 0, '/unjail', 'Releases a player from admin jail.', '2013-07-05 15:19:56');
INSERT INTO `commands_library` VALUES (466, 1, 1, 0, '/changename', 'Changes the name of a character.', '2013-07-05 15:20:18');
INSERT INTO `commands_library` VALUES (467, 1, 1, 0, '/bury', 'Removes a CK\'ed body', '2013-07-05 15:20:35');
INSERT INTO `commands_library` VALUES (468, 1, 1, 0, '/gotoplace', 'Teleports you to several marked places.', '2013-07-05 15:20:54');
INSERT INTO `commands_library` VALUES (469, 1, 1, 0, '/freeze', 'Freezes a player', '2013-07-05 15:21:09');
INSERT INTO `commands_library` VALUES (470, 1, 1, 0, '/unfreeze', 'unfreezes a player', '2013-07-05 15:21:23');
INSERT INTO `commands_library` VALUES (471, 1, 1, 0, '/stats', 'Checks a players stats.', '2013-07-05 15:22:01');
INSERT INTO `commands_library` VALUES (472, 1, 1, 0, '/auncuff', 'Uncuffs a player', '2013-07-05 15:22:28');
INSERT INTO `commands_library` VALUES (473, 1, 1, 0, '/spinout', 'Spins a players vehicle out.', '2013-07-05 15:42:06');
INSERT INTO `commands_library` VALUES (474, 1, 1, 0, '/recon', 'Recons a player', '2013-07-05 16:12:04');
INSERT INTO `commands_library` VALUES (475, 1, 1, 0, '/fuckrecon', 'Stops reconning a player', '2013-07-05 16:12:20');
INSERT INTO `commands_library` VALUES (476, 1, 2, 0, '/forcesell', 'Force sells an inactive interior', '2013-07-05 16:28:11');
INSERT INTO `commands_library` VALUES (477, 1, 3, 0, '/setvarient', 'Sets different varibles for a vehicle', '2013-07-05 16:46:14');
INSERT INTO `commands_library` VALUES (479, 1, 1, 0, '/setcolor', 'Sets the vehicles color', '2013-07-05 16:46:40');
INSERT INTO `commands_library` VALUES (480, 1, 1, 0, '/getcolor', 'Gets the vehicles color', '2013-07-05 16:46:49');
INSERT INTO `commands_library` VALUES (481, 1, 5, 0, '/restartres', 'Restarts a resource', '2013-07-05 16:58:01');
INSERT INTO `commands_library` VALUES (482, 1, 5, 0, '/rescheck', 'Runs the resource checker', '2013-07-05 16:58:17');
INSERT INTO `commands_library` VALUES (483, 1, 1, 0, '/itemlist', 'Displays all items.', '2013-07-05 17:01:44');
INSERT INTO `commands_library` VALUES (484, 1, 1, 0, '/delnearbyitems', 'Deletes all the items near you.', '2013-07-05 17:02:17');
INSERT INTO `commands_library` VALUES (485, 1, 1, 0, '/delitem', '/delitem <ID> ', '2013-07-05 17:02:34');
INSERT INTO `commands_library` VALUES (486, 1, 1, 0, '/showfactions', 'Displays a list of all factions.', '2013-07-05 17:03:26');
INSERT INTO `commands_library` VALUES (487, 1, 1, 0, '/respawnfaction', 'Respawns all vehicles for that faction.', '2013-07-05 17:03:45');
INSERT INTO `commands_library` VALUES (488, 1, 1, 0, '/blowveh', 'Blows the players vehicle up.', '2013-07-05 17:04:19');
INSERT INTO `commands_library` VALUES (489, 1, 1, 0, '/setheight', 'Sets a players character height', '2013-07-05 17:04:36');
INSERT INTO `commands_library` VALUES (490, 1, 1, 0, '/setrace', 'Sets a players character race', '2013-07-05 17:04:48');
INSERT INTO `commands_library` VALUES (491, 1, 1, 0, '/setage', 'Sets a players character age', '2013-07-05 17:04:55');
INSERT INTO `commands_library` VALUES (492, 1, 4, 0, '/gunmaker or \"F4\"', 'Displays the weapon creator', '2013-07-05 17:05:39');
INSERT INTO `commands_library` VALUES (493, 1, 1, 0, '/freecam', 'Sets you to freecam mode.', '2013-07-05 17:05:56');
INSERT INTO `commands_library` VALUES (494, 1, 1, 0, '/dropme', 'Drops you where you freecam', '2013-07-05 17:06:06');
INSERT INTO `commands_library` VALUES (495, 1, 1, 0, 'Hold P and click', 'Locks a world item. Make it unpickable', '2013-07-05 17:06:38');
INSERT INTO `commands_library` VALUES (496, 1, 1, 0, '/unban', 'Unbans a player', '2013-07-05 17:07:13');
INSERT INTO `commands_library` VALUES (497, 1, 1, 0, '/unbanserial', 'Unbans a players serial', '2013-07-05 17:07:21');
INSERT INTO `commands_library` VALUES (498, 1, 1, 0, '/unbanip', 'Unbans a players IP', '2013-07-05 17:07:28');
INSERT INTO `commands_library` VALUES (499, 1, 1, 0, '/ar', 'Accepts a report', '2013-07-05 17:07:57');
INSERT INTO `commands_library` VALUES (500, 1, 1, 0, '/cr', 'Closes a report', '2013-07-05 17:08:04');
INSERT INTO `commands_library` VALUES (501, 1, 1, 0, '/fr', 'Falses a report', '2013-07-05 17:08:12');
INSERT INTO `commands_library` VALUES (502, 1, 4, 0, '/hashtransactionid', 'Hashes a transaction IDI', '2013-07-05 17:09:18');
INSERT INTO `commands_library` VALUES (503, 1, 1, 0, '/giveitem', 'Gives a player an item.', '2013-07-05 17:09:42');
INSERT INTO `commands_library` VALUES (504, 1, 1, 0, '/takeitem', 'Takes a item from a players inventory', '2013-07-05 17:09:53');
INSERT INTO `commands_library` VALUES (505, 1, 1, 0, '/setskin ', 'Sets a players skin.', '2013-07-05 17:10:06');
INSERT INTO `commands_library` VALUES (506, 1, 1, 0, '/setarmor', 'Sets a players armor.', '2013-07-05 17:10:25');
INSERT INTO `commands_library` VALUES (507, 1, 1, 0, '/disarm', 'Disarms a player.', '2013-07-05 17:10:36');
INSERT INTO `commands_library` VALUES (508, 1, 1, 0, '/sendto', 'Sends a player to another player', '2013-07-05 17:12:51');
INSERT INTO `commands_library` VALUES (509, 1, 1, 0, '/showinv', 'Shows the inventory of a player.', '2013-07-05 17:13:24');
INSERT INTO `commands_library` VALUES (510, 1, 2, 0, '/restoreveh', 'Restores a deleted vehicle.', '2013-07-05 17:15:36');
INSERT INTO `commands_library` VALUES (511, 1, 1, 0, '/addelevator', 'Adds a elevator from A to B', '2013-07-05 17:21:18');
INSERT INTO `commands_library` VALUES (512, 1, 1, 0, '/restartgatekeepers', 'Restarts the gatekeepers resource', '2013-07-05 17:17:30');
INSERT INTO `commands_library` VALUES (513, 1, 1, 0, '/changelock', 'Deletes all old keys and gives you a new one', '2013-07-05 17:17:53');
INSERT INTO `commands_library` VALUES (514, 1, 2, 0, '/createemitter', 'Creates a fire/water emitter', '2013-07-05 17:25:41');
INSERT INTO `commands_library` VALUES (515, 1, 4, 0, '/delspeedcam', 'Deletes a speedcam', '2013-07-05 17:30:08');
INSERT INTO `commands_library` VALUES (516, 1, 1, 0, '/delallrbs', 'Deletes all roadblocks in the server', '2013-07-05 17:30:52');
INSERT INTO `commands_library` VALUES (517, 1, 1, 0, '/aremovespikes', 'Deletes all roadspikes in the server.', '2013-07-05 17:31:03');
INSERT INTO `commands_library` VALUES (518, 1, 1, 0, '/reloadint', 'Reloads a bugged interior.', '2013-07-05 17:31:34');
INSERT INTO `commands_library` VALUES (519, 1, 1, 0, '/respawndistrict', 'Respawns the vehicles in a district', '2013-07-05 17:33:02');
INSERT INTO `commands_library` VALUES (520, 1, 1, 0, '/unflip', 'Unflips a players vehicle', '2013-07-05 17:33:24');
INSERT INTO `commands_library` VALUES (521, 1, 1, 0, '/issuepc', 'Issues a pilot certificate to a player.', '2013-07-05 17:34:11');
INSERT INTO `commands_library` VALUES (522, 1, 1, 0, '/setjob', 'Sets a players job', '2013-07-05 17:34:38');
INSERT INTO `commands_library` VALUES (523, 1, 1, 0, '/deljob', 'Deletes a players job', '2013-07-05 17:34:53');
INSERT INTO `commands_library` VALUES (524, 1, 1, 0, '/setlanguage', 'Sets a players language', '2013-07-05 17:35:16');
INSERT INTO `commands_library` VALUES (525, 1, 1, 0, '/aunblindfold', 'Unblindfolds a player', '2013-07-05 17:35:51');
INSERT INTO `commands_library` VALUES (526, 1, 1, 0, '/pmute', 'Mutes a player from OOC Chat.', '2013-07-05 17:36:42');
INSERT INTO `commands_library` VALUES (527, 1, 4, 0, '/l ', 'Lead Admin Chat', '2013-07-05 17:37:16');
INSERT INTO `commands_library` VALUES (528, 1, 5, 0, '/h', 'Head Admin Chat', '2013-07-05 17:37:24');
INSERT INTO `commands_library` VALUES (529, 1, 1, 0, '/ur', 'Displays unawnsered reports.', '2013-07-05 17:37:58');
INSERT INTO `commands_library` VALUES (530, 1, 2, 0, '/togint', 'Toggles the interior to disabled', '2013-07-08 19:06:04');
INSERT INTO `commands_library` VALUES (532, 1, 1, 0, '/togautocheck', 'Toggles the /check to appear upon accepting a report.', '2013-07-05 18:06:15');
INSERT INTO `commands_library` VALUES (533, 1, 2, 0, '/restoreint', 'Restores a deleted interior', '2013-07-05 18:14:52');
INSERT INTO `commands_library` VALUES (534, 1, 1, 0, '/aordersupplies', 'Orders supplies to a shop', '2013-07-05 18:19:47');
INSERT INTO `commands_library` VALUES (535, 1, 1, 0, '/cleannearbytag', 'Cleans a nearby spray tag', '2013-07-05 19:21:19');
INSERT INTO `commands_library` VALUES (536, 1, 1, 0, '/nearbytags', 'Shows all nearby tags.', '2013-07-05 19:25:34');
INSERT INTO `commands_library` VALUES (537, 1, 1, 0, '/findveh', 'retrieves the model for that vehicle name', '2013-07-05 19:29:05');
INSERT INTO `commands_library` VALUES (538, 1, 1, 0, '/unlockcivcars', 'unlocks all civilian vehicles', '2013-07-05 19:33:50');
INSERT INTO `commands_library` VALUES (541, 1, 1, 0, '/restoreshop', '\"Restores a deleted NPC from SQL.', '2013-07-05 19:38:54');
INSERT INTO `commands_library` VALUES (542, 1, 1, 0, '/fixvehvis [Driver\'s partial Name/ID]', '\"Fixes player\'s car\'s visual, leave the engine\'s health.', '2013-07-05 19:41:18');
INSERT INTO `commands_library` VALUES (543, 1, 5, 0, '/givestattransfer', 'Gives a player a stat transfer.', '2013-07-05 19:47:23');
INSERT INTO `commands_library` VALUES (544, 1, 5, 0, '/givedontpoints', 'Gives a player donator points ', '2013-07-05 19:49:03');
INSERT INTO `commands_library` VALUES (546, 1, 1, 0, '/restock', 'Restocks businesses, you must be inside an interior to restock. Or use SYNTAX: /restock [Interior ID] [Amount 1~300]', '2013-07-05 19:58:05');
INSERT INTO `commands_library` VALUES (548, 1, 2, 0, '/nearbyemitters', 'Shows all nearby Fire/Water emitters.', '2013-07-05 20:08:38');
INSERT INTO `commands_library` VALUES (549, 1, 2, 0, '/delemitters', 'Deletes all nearby Fire/Water emitters.', '2013-07-05 20:09:10');
INSERT INTO `commands_library` VALUES (550, 1, 1, 0, '/delnearbyshops', 'Deletes nearby shops.', '2013-07-05 20:09:53');
INSERT INTO `commands_library` VALUES (551, 1, 4, 0, '/forcepayday', 'Forces a player to get payday.', '2013-07-05 20:15:57');
INSERT INTO `commands_library` VALUES (552, 1, 4, 0, '/forcepaydayall', 'Forces all players to get paydays.', '2013-07-05 20:18:05');
INSERT INTO `commands_library` VALUES (553, 1, 4, 0, '/givesuperman', 'Gives player temporary ability to fly. Execute the cmd again to revoke the ability. Ability will be automatically gone after player relogs.', '2013-07-05 20:18:55');
INSERT INTO `commands_library` VALUES (554, 1, 4, 0, '/addatm', 'adds an ATM at this spot', '2013-07-05 20:19:17');
INSERT INTO `commands_library` VALUES (555, 1, 4, 0, '/delatm', 'Deletes an ATM with that id.', '2013-07-05 20:19:29');
INSERT INTO `commands_library` VALUES (556, 1, 1, 0, '/nearbyatms', 'shows the nearby ATMs', '2013-07-05 20:19:56');
INSERT INTO `commands_library` VALUES (557, 1, 4, 0, '/setfactionleader', 'puts a player into a faction and makes the player leader', '2013-07-05 20:22:07');
INSERT INTO `commands_library` VALUES (558, 1, 4, 0, '/setfactionrank', 'Sets the players faction rank.', '2013-07-05 20:22:25');
INSERT INTO `commands_library` VALUES (559, 1, 4, 0, '/makefaction', 'Creates a faction.', '2013-07-05 20:22:53');
INSERT INTO `commands_library` VALUES (560, 1, 4, 0, '/renamefaction', 'Renames a faction.', '2013-07-05 20:23:12');
INSERT INTO `commands_library` VALUES (561, 1, 4, 0, '/delfaction', 'Deletes a faction.', '2013-07-05 20:23:33');
INSERT INTO `commands_library` VALUES (562, 1, 4, 0, '/ck', 'permanently kills the character; spawns a corpse at the location the player is a', '2013-07-05 20:24:47');
INSERT INTO `commands_library` VALUES (563, 1, 4, 0, '/unck', 'reverts a character kill', '2013-07-05 20:25:17');
INSERT INTO `commands_library` VALUES (564, 1, 4, 0, '/givemoney', 'gives the player money in addition to his current cash', '2013-07-05 20:25:46');
INSERT INTO `commands_library` VALUES (566, 1, 5, 0, '/forcesellinactiveints', 'Force-sells All inactive interiors.', '2013-07-05 20:40:22');
INSERT INTO `commands_library` VALUES (567, 1, 5, 0, '/delallitems [Item ID] [Item Value]', 'Deletes all the item instances from everywhere in game.', '2013-07-05 20:40:47');
INSERT INTO `commands_library` VALUES (568, 1, 5, 0, '/setdamageproof', 'makes a vehicle damageproof', '2013-07-05 20:41:30');
INSERT INTO `commands_library` VALUES (569, 1, 5, 0, '/rcs', 'check if the resource \"Resource-Keeper\" is running', '2013-07-05 20:41:49');
INSERT INTO `commands_library` VALUES (570, 1, 5, 0, '/stopres', 'Stops the resource', '2013-07-05 20:42:34');
INSERT INTO `commands_library` VALUES (571, 1, 5, 0, '/togg', 'Toggles gamemaster chat.', '2013-07-05 20:44:02');
INSERT INTO `commands_library` VALUES (572, 1, 5, 0, '/toga', 'Toggles administrator chat.', '2013-07-05 20:44:19');
INSERT INTO `commands_library` VALUES (574, 1, 5, 0, '/setaccountpassword', 'sets player\'s account password', '2013-07-05 20:44:36');
INSERT INTO `commands_library` VALUES (575, 1, 5, 0, '/removeveh [ID]', 'Removes the vehicle from game and erases all the data from database completely and permanently include items inside.', '2013-07-05 20:46:52');
INSERT INTO `commands_library` VALUES (576, 1, 4, 0, '/setmoney', 'Sets a players on hand money', '2013-07-05 21:26:14');
INSERT INTO `commands_library` VALUES (577, 1, 5, 0, '/removeint [ID]', 'Deletes the interior from game and erases all the data from database completely and permanently include NPCs, items, safe and items inside the safe. If the deleted interior is a custom interior, the custom map will be gone forever.', '2013-07-05 22:25:00');
INSERT INTO `commands_library` VALUES (578, 1, 1, 0, '/srd', 'Turns off all vehicle radios in a district', '2013-07-05 22:48:52');
INSERT INTO `commands_library` VALUES (580, 1, 1, 0, '/ah', 'Displays the index of admin commands', '2013-07-06 00:02:50');
INSERT INTO `commands_library` VALUES (581, 1, 4, 0, '/setfactiontype', 'Sets the type of a faction', '2013-07-06 00:09:01');
INSERT INTO `commands_library` VALUES (582, 1, 1, 0, '/setfaction', 'Sets you to a faction', '2013-07-06 17:36:04');
INSERT INTO `commands_library` VALUES (583, 1, 3, 0, '/setvehiclefaction', 'Sets a specific vehicle to a faction ', '2013-07-06 17:37:06');
INSERT INTO `commands_library` VALUES (584, 1, 3, 0, '/setvehicleplate', 'Sets a vehicle\'s plate', '2013-07-06 17:55:06');
INSERT INTO `commands_library` VALUES (585, 1, 4, 0, '/renamefaction', 'Changes the name of a faction', '2013-07-06 17:55:36');
INSERT INTO `commands_library` VALUES (586, 1, 4, 0, '/nearbyatms', 'Shows all nearby ATM\'s', '2013-07-06 18:53:38');
INSERT INTO `commands_library` VALUES (587, 1, 4, 0, '/nearbypaynsprays', 'Shows all nearby pay n sprays', '2013-07-06 18:54:09');
INSERT INTO `commands_library` VALUES (588, 1, 5, 0, '/delitemsfromint', 'Deletes all the items within a specified interior or world map that older than an interval of item\'s day old.', '2013-07-06 19:19:25');
INSERT INTO `commands_library` VALUES (589, 1, 4, 0, '/sw', 'Sets the weather.', '2013-07-06 23:43:46');
INSERT INTO `commands_library` VALUES (590, 1, 1, 0, '/srl', 'Sets the rain level.', '2013-07-06 23:44:13');
INSERT INTO `commands_library` VALUES (591, 1, 4, 0, '/etanow ', 'Sets the weather', '2013-07-07 01:45:15');
INSERT INTO `commands_library` VALUES (592, 1, 3, 0, '/aunimpound', 'Unimpounds a vehicle admin wise', '2013-07-07 08:34:41');
INSERT INTO `commands_library` VALUES (593, 1, 5, 0, '/delallitems', 'Deletes all the item instances from everywhere in game.', '2013-07-07 09:00:27');
INSERT INTO `commands_library` VALUES (594, 1, 5, 0, '/removeshop', 'Removes a shop from the datebase', '2013-07-07 19:18:37');
INSERT INTO `commands_library` VALUES (595, 1, 1, 0, '/vehpost', 'Creates an automatic forum post for vehicle thefts', '2013-07-08 18:55:01');
INSERT INTO `commands_library` VALUES (596, 1, 1, 0, '/intpost', 'Creates an automatic forum post for interior thefts.', '2013-07-08 18:59:14');
INSERT INTO `commands_library` VALUES (597, 1, 1, 0, '/forceapp', 'Sends a player back to the application stage.', '2013-07-09 21:42:10');
INSERT INTO `commands_library` VALUES (598, 1, 4, 0, '/setfactionmoney', 'Sets the faction bank money', '2013-07-11 10:35:34');
INSERT INTO `commands_library` VALUES (602, 2, 1, 0, '/gethere ', 'Teleports a player to you.', '2013-07-16 02:52:36');
INSERT INTO `commands_library` VALUES (603, 2, 1, 0, '/goto', 'Teleports you to a player.', '2013-07-16 02:52:52');
INSERT INTO `commands_library` VALUES (604, 2, 1, 0, '/forceapp', 'Sends a player to the application stage.', '2013-07-16 02:53:45');
INSERT INTO `commands_library` VALUES (605, 2, 5, 0, '/makeadmin', 'Set\'s a players Gamemaster rank.', '2013-07-16 02:54:05');
INSERT INTO `commands_library` VALUES (606, 2, 1, 0, '/gotoplace', 'Teleports you to a premade mark.', '2013-07-16 19:24:18');
INSERT INTO `commands_library` VALUES (607, 2, 1, 0, '/check', 'Shows you a players /check.', '2013-07-16 19:24:29');
INSERT INTO `commands_library` VALUES (608, 1, 4, 0, '/marry', 'Marrys two players', '2013-07-16 19:25:38');
INSERT INTO `commands_library` VALUES (609, 1, 4, 0, '/divorce', 'Divorces a married couple.', '2013-07-16 19:25:49');
INSERT INTO `commands_library` VALUES (611, 2, 1, 0, '/gh', 'Gamemaster Help', '2013-07-17 19:09:37');
INSERT INTO `commands_library` VALUES (612, 2, 1, 0, '/mark', 'Marks a specific point.', '2013-07-17 19:09:46');
INSERT INTO `commands_library` VALUES (613, 2, 1, 0, '/gotomark', 'Teleports you to that mark', '2013-07-17 19:10:04');
INSERT INTO `commands_library` VALUES (614, 2, 1, 0, '/delmark', 'Deletes a mark.', '2013-07-17 19:10:14');
INSERT INTO `commands_library` VALUES (615, 2, 1, 0, '/resetcontract', 'Resets a players contract so they can /quitjob', '2013-07-22 20:23:45');
INSERT INTO `commands_library` VALUES (616, 2, 1, 0, '/setjob', 'Sets a players job manually', '2013-07-23 20:12:05');
INSERT INTO `commands_library` VALUES (617, 2, 1, 0, '/ar ', 'Accept\'s a report', '2013-07-24 20:41:28');
INSERT INTO `commands_library` VALUES (618, 2, 1, 0, '/cr', 'Closes a report', '2013-07-24 20:41:39');
INSERT INTO `commands_library` VALUES (619, 2, 1, 0, '/fr', 'False\'s a report', '2013-07-24 20:41:47');
INSERT INTO `commands_library` VALUES (620, 2, 1, 0, '/ann', 'Makes a GM Announcement', '2013-07-25 03:12:33');
INSERT INTO `commands_library` VALUES (621, 1, 5, 0, '/infract', 'Infracts an administrator', '2013-07-26 17:35:02');
INSERT INTO `commands_library` VALUES (622, 1, 5, 0, '/suspend', 'Suspends an Administrator', '2013-07-31 08:57:36');
INSERT INTO `commands_library` VALUES (623, 1, 5, 0, '/acheck', 'Brings up an admins Internal Affairs check', '2013-07-31 09:18:58');
INSERT INTO `commands_library` VALUES (624, 1, 5, 0, '/tr', 'Transfers a report to an admin', '2013-08-02 19:39:48');
INSERT INTO `commands_library` VALUES (625, 1, 1, 0, '/addii', 'Add\'s a information Icon', '2013-08-06 02:11:51');
INSERT INTO `commands_library` VALUES (626, 1, 1, 0, '/delii', 'delete\'s a information Icon', '2013-08-06 02:12:00');
INSERT INTO `commands_library` VALUES (627, 1, 1, 0, '/nearbyii', 'Show\'s nearby Information Icons.', '2013-08-06 02:12:13');
INSERT INTO `commands_library` VALUES (628, 1, 3, 0, '/licensemonitor', 'Check who owns what firearms licenses', '2013-08-26 05:16:02');
INSERT INTO `commands_library` VALUES (629, 1, 1, 0, '/vginfo', 'or /serverinfo - Displays all Server Information', '2014-05-01 22:04:15');

-- ----------------------------
-- Table structure for dancers
-- ----------------------------
DROP TABLE IF EXISTS `dancers`;
CREATE TABLE `dancers`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rotation` float NOT NULL,
  `skin` smallint(5) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `interior` int(10) UNSIGNED NOT NULL,
  `dimension` int(10) UNSIGNED NOT NULL,
  `offset` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dancers
-- ----------------------------
INSERT INTO `dancers` VALUES (1, 1215.85, -33.4355, 1001.38, 90.0371, 246, 2, 3, 388, 1);
INSERT INTO `dancers` VALUES (4, 1209.28, -35.959, 1001.48, 351.23, 152, 2, 3, 388, 1);
INSERT INTO `dancers` VALUES (5, 1210.6, -39.0713, 1001.48, 297.748, 256, 2, 3, 388, 2);
INSERT INTO `dancers` VALUES (6, 1213.23, -40.3887, 1001.48, 3.72168, 237, 2, 3, 388, 3);
INSERT INTO `dancers` VALUES (7, 1206.74, -44.9043, 1000.95, 319.847, 246, 2, 3, 388, 1);

-- ----------------------------
-- Table structure for dog_users
-- ----------------------------
DROP TABLE IF EXISTS `dog_users`;
CREATE TABLE `dog_users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `charactername` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attack` int(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dog_users
-- ----------------------------

-- ----------------------------
-- Table structure for don_purchases
-- ----------------------------
DROP TABLE IF EXISTS `don_purchases`;
CREATE TABLE `don_purchases`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `cost` int(11) NULL DEFAULT 0,
  `date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `account` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 19 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of don_purchases
-- ----------------------------
INSERT INTO `don_purchases` VALUES (1, 'FREE GAMECOINS AWARD! (OWNER ALEJANDRO)', 250, '2021-08-17 19:28:11', 6);
INSERT INTO `don_purchases` VALUES (2, 'FREE GAMECOINS AWARD! (OWNER ALEJANDRO)', 250, '2021-08-17 19:28:19', 3);
INSERT INTO `don_purchases` VALUES (3, 'Instant 15 hours played', -250, '2021-08-17 19:28:56', 6);
INSERT INTO `don_purchases` VALUES (4, 'Instant 15 hours played', -250, '2021-08-17 19:29:30', 3);
INSERT INTO `don_purchases` VALUES (5, 'FREE GAMECOINS AWARD! (OWNER ALEJANDRO)', 150, '2021-08-19 20:04:31', 1);
INSERT INTO `don_purchases` VALUES (6, 'Automatically open any road tolling from 40 meters away', -150, '2021-08-19 20:04:41', 1);
INSERT INTO `don_purchases` VALUES (7, 'FREE GAMECOINS AWARD! (COORDINATOR DRIVER)', 200, '2021-08-24 16:19:16', 12);
INSERT INTO `don_purchases` VALUES (8, 'FREE GAMECOINS AWARD! (COORDINATOR DRIVER)', 1000, '2021-08-24 16:25:57', 12);
INSERT INTO `don_purchases` VALUES (9, 'Instant 15 hours played', -250, '2021-08-24 16:26:03', 12);
INSERT INTO `don_purchases` VALUES (10, 'Customized country flags typing icon', -150, '2021-08-24 16:27:20', 12);
INSERT INTO `don_purchases` VALUES (11, 'FREE GAMECOINS AWARD! (OWNER ALEJANDRO)', 150, '2021-08-28 13:19:07', 1);
INSERT INTO `don_purchases` VALUES (12, 'Automatically open any road tolling from 40 meters away', -150, '2021-08-28 13:19:23', 1);
INSERT INTO `don_purchases` VALUES (13, 'FREE GAMECOINS AWARD! (OWNER ALEJANDRO)', 500, '2021-08-29 17:18:41', 5);
INSERT INTO `don_purchases` VALUES (14, 'FREE GAMECOINS AWARD! (OWNER KATY)', 100, '2021-09-01 16:50:48', 61);
INSERT INTO `don_purchases` VALUES (15, 'Instant driver\'s licenses & fishing permit', -50, '2021-09-01 16:52:15', 61);
INSERT INTO `don_purchases` VALUES (16, 'FREE GAMECOINS AWARD! (OWNER ALEJANDRO)', 1000, '2021-09-16 16:04:24', 1);
INSERT INTO `don_purchases` VALUES (17, 'Automatically open any road tolling from 40 meters away', -150, '2021-09-16 16:04:37', 1);
INSERT INTO `don_purchases` VALUES (18, 'Automatically open any road tolling from 40 meters away', -150, '2021-10-07 16:05:34', 1);

-- ----------------------------
-- Table structure for donators
-- ----------------------------
DROP TABLE IF EXISTS `donators`;
CREATE TABLE `donators`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountID` int(11) NOT NULL,
  `charID` int(11) NOT NULL DEFAULT -1,
  `perkID` int(4) NOT NULL,
  `perkValue` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '1',
  `expirationDate` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of donators
-- ----------------------------
INSERT INTO `donators` VALUES (1, 1, -1, 27, '1', '2021-08-26 20:04:41');
INSERT INTO `donators` VALUES (2, 12, -1, 29, '19', '2021-08-31 16:27:20');
INSERT INTO `donators` VALUES (3, 1, -1, 27, '1', '2021-09-04 13:19:23');
INSERT INTO `donators` VALUES (4, 1, -1, 27, '1', '2021-09-23 16:04:37');
INSERT INTO `donators` VALUES (5, 1, -1, 27, '1', '2021-10-14 16:05:34');

-- ----------------------------
-- Table structure for duty_allowed
-- ----------------------------
DROP TABLE IF EXISTS `duty_allowed`;
CREATE TABLE `duty_allowed`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `faction` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `itemValue` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 74 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = 'Used for an admin allow list.' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of duty_allowed
-- ----------------------------
INSERT INTO `duty_allowed` VALUES (25, 1, -25, '200');
INSERT INTO `duty_allowed` VALUES (73, 19, 157, '1');
INSERT INTO `duty_allowed` VALUES (71, 2, 70, '1');
INSERT INTO `duty_allowed` VALUES (72, 19, 259, 'Tunning Perfomace');
INSERT INTO `duty_allowed` VALUES (35, 1, -32, '200');
INSERT INTO `duty_allowed` VALUES (34, 1, -31, '200');
INSERT INTO `duty_allowed` VALUES (30, 1, -23, '200');
INSERT INTO `duty_allowed` VALUES (36, 1, -33, '200');
INSERT INTO `duty_allowed` VALUES (32, 1, -22, '200');
INSERT INTO `duty_allowed` VALUES (33, 1, -24, '200');
INSERT INTO `duty_allowed` VALUES (37, 1, -30, '200');
INSERT INTO `duty_allowed` VALUES (38, 1, -29, '200');
INSERT INTO `duty_allowed` VALUES (39, 1, 162, '1');
INSERT INTO `duty_allowed` VALUES (40, 1, 6, '1');
INSERT INTO `duty_allowed` VALUES (41, 1, 64, 'Riverside Sheriff\'s Departament');
INSERT INTO `duty_allowed` VALUES (42, 1, 76, '');
INSERT INTO `duty_allowed` VALUES (43, 1, 126, '1');
INSERT INTO `duty_allowed` VALUES (44, 1, 26, '1');
INSERT INTO `duty_allowed` VALUES (45, 1, 216, '1');
INSERT INTO `duty_allowed` VALUES (46, 1, 172, '1');
INSERT INTO `duty_allowed` VALUES (47, 1, 70, '1');
INSERT INTO `duty_allowed` VALUES (48, 1, 118, '1');
INSERT INTO `duty_allowed` VALUES (49, 1, 205, '1');
INSERT INTO `duty_allowed` VALUES (50, 1, 111, '1');
INSERT INTO `duty_allowed` VALUES (51, 8, 236, 'Hollister and Sewell Inc. | Secutiry');
INSERT INTO `duty_allowed` VALUES (52, 8, 236, 'Hollister and Sewell Inc.');
INSERT INTO `duty_allowed` VALUES (53, 8, 219, '1');
INSERT INTO `duty_allowed` VALUES (54, 8, 45, '1');
INSERT INTO `duty_allowed` VALUES (55, 8, 47, '1');
INSERT INTO `duty_allowed` VALUES (56, 8, 163, '1');
INSERT INTO `duty_allowed` VALUES (57, 8, 126, '1');
INSERT INTO `duty_allowed` VALUES (58, 8, 6, '1');
INSERT INTO `duty_allowed` VALUES (59, 8, -24, '100');
INSERT INTO `duty_allowed` VALUES (60, 8, -25, '100');
INSERT INTO `duty_allowed` VALUES (67, 2, 65, 'Riverside Emergency Services');
INSERT INTO `duty_allowed` VALUES (62, 2, 132, '');
INSERT INTO `duty_allowed` VALUES (63, 2, 164, '');
INSERT INTO `duty_allowed` VALUES (64, 2, 119, '');
INSERT INTO `duty_allowed` VALUES (65, 1, 45, '1');
INSERT INTO `duty_allowed` VALUES (66, 1, 47, '1');
INSERT INTO `duty_allowed` VALUES (68, 2, -42, '500');

-- ----------------------------
-- Table structure for duty_custom
-- ----------------------------
DROP TABLE IF EXISTS `duty_custom`;
CREATE TABLE `duty_custom`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `factionid` int(11) NOT NULL,
  `name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `skins` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `locations` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `items` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = 'Used for custom duties.' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of duty_custom
-- ----------------------------
INSERT INTO `duty_custom` VALUES (3, 1, 'Sheriff', '[ [ [ 285, \"N\\/A\" ], [ 286, \"N\\/A\" ], [ 266, \"N\\/A\" ], [ 265, \"N\\/A\" ], [ 267, \"N\\/A\" ], [ 288, \"N\\/A\" ], [ 287, \"N\\/A\" ], [ 284, \"N\\/A\" ], [ 283, \"N\\/A\" ], [ 282, \"N\\/A\" ], [ 281, \"N\\/A\" ], [ 280, \"N\\/A\" ] ] ]', '[ { \"10\": \"VEHICLE\", \"11\": \"VEHICLE\", \"28\": \"VEHICLE\", \"29\": \"VEHICLE\", \"12\": \"VEHICLE\", \"13\": \"VEHICLE\", \"17\": \"VEHICLE\", \"16\": \"VEHICLE\", \"15\": \"VEHICLE\", \"14\": \"VEHICLE\", \"9\": \"VEHICLE\", \"2\": \"VEHICLE\", \"19\": \"VEHICLE\", \"18\": \"VEHICLE\", \"20\": \"VEHICLE\", \"21\": \"VEHICLE\", \"25\": \"VEHICLE\", \"24\": \"VEHICLE\", \"27\": \"VEHICLE\", \"26\": \"VEHICLE\", \"31\": \"Garage Exterior Duty\", \"30\": \"VEHICLE\", \"22\": \"VEHICLE\", \"23\": \"VEHICLE\" } ]', '[ { \"42\": [ 42, 76, \"\" ], \"43\": [ 43, 126, \"1\" ], \"40\": [ 40, 6, \"1\" ], \"41\": [ 41, 64, \"Sheriff Departament\" ], \"65\": [ \"65\", 45, \"1\" ], \"46\": [ 46, 172, \"1\" ], \"34\": [ 34, -31, 200, \"200\" ], \"66\": [ \"66\", 47, \"1\" ], \"48\": [ 48, 118, \"1\" ], \"49\": [ 49, 205, \"1\" ], \"39\": [ 39, 162, \"1\" ], \"38\": [ 38, -29, 200, \"200\" ], \"44\": [ 44, 26, \"1\" ], \"25\": [ 25, -25, 50, \"200\" ], \"45\": [ 45, 216, \"1\" ], \"47\": [ 47, 70, \"1\" ], \"50\": [ 50, 111, \"1\" ], \"37\": [ 37, -30, 200, \"200\" ], \"30\": [ 30, -23, 50, \"200\" ], \"33\": [ 33, -24, 50, \"200\" ], \"32\": [ 32, -22, 50, \"200\" ] } ]');
INSERT INTO `duty_custom` VALUES (8, 19, 'Taller', '[ [ [ 50, \"N\\/A\" ] ] ]', '[ { \"39\": \"Taller\", \"38\": \"VEHICLE\" } ]', '[ { \"73\": [ 73, 157, \"1\" ], \"72\": [ 72, 259, \"Speed Motors\" ] } ]');
INSERT INTO `duty_custom` VALUES (4, 1, 'Sargentos y Cabos', '[ [ [ 285, \"N\\/A\" ], [ 284, \"N\\/A\" ], [ 282, \"N\\/A\" ], [ 266, \"N\\/A\" ], [ 265, \"N\\/A\" ], [ 267, \"N\\/A\" ], [ 280, \"N\\/A\" ], [ 283, \"N\\/A\" ] ] ]', '[ { \"23\": \"VEHICLE\", \"22\": \"VEHICLE\", \"28\": \"VEHICLE\", \"29\": \"VEHICLE\", \"30\": \"VEHICLE\", \"31\": \"Garage Exterior Duty\", \"26\": \"VEHICLE\", \"27\": \"VEHICLE\", \"24\": \"VEHICLE\", \"25\": \"VEHICLE\", \"21\": \"VEHICLE\", \"2\": \"VEHICLE\", \"19\": \"VEHICLE\", \"18\": \"VEHICLE\", \"20\": \"VEHICLE\", \"9\": \"VEHICLE\", \"14\": \"VEHICLE\", \"15\": \"VEHICLE\", \"16\": \"VEHICLE\", \"17\": \"VEHICLE\", \"13\": \"VEHICLE\", \"12\": \"VEHICLE\", \"11\": \"VEHICLE\", \"10\": \"VEHICLE\" } ]', '[ { \"42\": [ 42, 76, \"\" ], \"43\": [ 43, 126, \"1\" ], \"40\": [ 40, 6, \"1\" ], \"41\": [ 41, 64, \"Sheriff Departament\" ], \"36\": [ 36, -33, 50, \"200\" ], \"37\": [ 37, -30, 50, \"200\" ], \"34\": [ 34, -31, 100, \"200\" ], \"44\": [ 44, 26, \"1\" ], \"48\": [ 48, 118, \"1\" ], \"49\": [ 49, 205, \"1\" ], \"39\": [ 39, 162, \"1\" ], \"38\": [ 38, -29, 100, \"200\" ], \"25\": [ 25, -25, 50, \"200\" ], \"45\": [ 45, 216, \"1\" ], \"46\": [ 46, 172, \"1\" ], \"47\": [ 47, 70, \"1\" ], \"50\": [ 50, 111, \"1\" ], \"30\": [ 30, -23, 50, \"200\" ], \"33\": [ 33, -24, 50, \"200\" ], \"32\": [ 32, -22, 50, \"200\" ] } ]');
INSERT INTO `duty_custom` VALUES (5, 1, 'Oficiales-SubOficiales', '[ [ [ 282, \"N\\/A\" ], [ 281, \"N\\/A\" ], [ 266, \"N\\/A\" ], [ 265, \"N\\/A\" ], [ 267, \"N\\/A\" ] ] ]', '[ { \"10\": \"VEHICLE\", \"11\": \"VEHICLE\", \"28\": \"VEHICLE\", \"29\": \"VEHICLE\", \"12\": \"VEHICLE\", \"20\": \"VEHICLE\", \"17\": \"VEHICLE\", \"16\": \"VEHICLE\", \"15\": \"VEHICLE\", \"9\": \"VEHICLE\", \"14\": \"VEHICLE\", \"2\": \"VEHICLE\", \"19\": \"VEHICLE\", \"18\": \"VEHICLE\", \"13\": \"VEHICLE\", \"21\": \"VEHICLE\", \"25\": \"VEHICLE\", \"24\": \"VEHICLE\", \"27\": \"VEHICLE\", \"26\": \"VEHICLE\", \"31\": \"Garage Exterior Duty\", \"30\": \"VEHICLE\", \"22\": \"VEHICLE\", \"23\": \"VEHICLE\" } ]', '[ { \"42\": [ 42, 76, \"\" ], \"43\": [ 43, 126, \"1\" ], \"40\": [ 40, 6, \"1\" ], \"41\": [ 41, 64, \"Sheriff Departament\" ], \"47\": [ 47, 70, \"1\" ], \"46\": [ 46, 172, \"1\" ], \"45\": [ 45, 216, \"1\" ], \"44\": [ 44, 26, \"1\" ], \"25\": [ 25, -25, 50, \"200\" ], \"49\": [ 49, 205, \"1\" ], \"39\": [ 39, 162, \"1\" ], \"48\": [ 48, 118, \"1\" ], \"33\": [ 33, -24, 200, \"200\" ], \"50\": [ 50, 111, \"1\" ] } ]');
INSERT INTO `duty_custom` VALUES (6, 8, 'Evento', '[ [ [ 146, \"N\\/A\" ] ] ]', '[ { \"32\": \"VEHICLE\", \"36\": \"Exterior\", \"33\": \"VEHICLE\", \"34\": \"VEHICLE\", \"35\": \"VEHICLE\" } ]', '[ { \"53\": [ 53, 219, \"1\" ], \"51\": [ 51, 236, \"Hollister and Sewell Inc. | Secutiry\" ], \"54\": [ 54, 45, \"1\" ], \"55\": [ 55, 47, \"1\" ], \"56\": [ 56, 163, \"1\" ], \"57\": [ 57, 126, \"1\" ], \"59\": [ 59, -24, 100, \"100\" ], \"58\": [ 58, 6, \"1\" ], \"60\": [ 60, -25, 100, \"100\" ] } ]');
INSERT INTO `duty_custom` VALUES (7, 2, 'Riverside Emergency Services', '[ [ [ 275, \"N\\/A\" ], [ 274, \"N\\/A\" ], [ 276, \"N\\/A\" ], [ 277, \"N\\/A\" ], [ 278, \"N\\/A\" ], [ 279, \"N\\/A\" ] ] ]', '[ { \"37\": \"duty\" } ]', '[ { \"71\": [ 71, 70, \"1\" ], \"62\": [ 62, 132, \"\" ], \"63\": [ 63, 164, \"\" ], \"64\": [ 64, 119, \"\" ], \"68\": [ 68, -42, 500, \"500\" ], \"67\": [ 67, 65, \"Riverside Emergency Services\" ] } ]');

-- ----------------------------
-- Table structure for duty_locations
-- ----------------------------
DROP TABLE IF EXISTS `duty_locations`;
CREATE TABLE `duty_locations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `factionid` int(11) NOT NULL,
  `name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `z` int(11) NULL DEFAULT NULL,
  `radius` int(11) NULL DEFAULT NULL,
  `dimension` int(11) NULL DEFAULT 0,
  `interior` int(11) NULL DEFAULT 0,
  `vehicleid` int(11) NULL DEFAULT NULL,
  `model` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 41 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = 'Used for custom duty locations.' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of duty_locations
-- ----------------------------
INSERT INTO `duty_locations` VALUES (31, 1, 'Garage Exterior Duty', 119, -108, 2, 10, 0, 0, NULL, NULL);
INSERT INTO `duty_locations` VALUES (2, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 1, 407);
INSERT INTO `duty_locations` VALUES (40, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 120, 597);
INSERT INTO `duty_locations` VALUES (39, 19, 'Taller', 525, 63, 1044, 10, 98, 24, NULL, NULL);
INSERT INTO `duty_locations` VALUES (9, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 99, 596);
INSERT INTO `duty_locations` VALUES (10, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 100, 596);
INSERT INTO `duty_locations` VALUES (11, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 101, 596);
INSERT INTO `duty_locations` VALUES (12, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 102, 596);
INSERT INTO `duty_locations` VALUES (13, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 103, 596);
INSERT INTO `duty_locations` VALUES (14, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 104, 596);
INSERT INTO `duty_locations` VALUES (15, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 105, 528);
INSERT INTO `duty_locations` VALUES (16, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 106, 528);
INSERT INTO `duty_locations` VALUES (17, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 107, 427);
INSERT INTO `duty_locations` VALUES (18, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 108, 427);
INSERT INTO `duty_locations` VALUES (19, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 109, 443);
INSERT INTO `duty_locations` VALUES (20, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 110, 525);
INSERT INTO `duty_locations` VALUES (21, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 115, 599);
INSERT INTO `duty_locations` VALUES (22, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 116, 599);
INSERT INTO `duty_locations` VALUES (23, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 118, 597);
INSERT INTO `duty_locations` VALUES (24, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 118, 597);
INSERT INTO `duty_locations` VALUES (25, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 120, 597);
INSERT INTO `duty_locations` VALUES (26, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 121, 523);
INSERT INTO `duty_locations` VALUES (27, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 122, 523);
INSERT INTO `duty_locations` VALUES (28, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 123, 523);
INSERT INTO `duty_locations` VALUES (29, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 124, 523);
INSERT INTO `duty_locations` VALUES (30, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 125, 523);
INSERT INTO `duty_locations` VALUES (32, 8, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 38, 495);
INSERT INTO `duty_locations` VALUES (33, 8, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 39, 495);
INSERT INTO `duty_locations` VALUES (34, 8, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 55, 402);
INSERT INTO `duty_locations` VALUES (35, 8, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 56, 402);
INSERT INTO `duty_locations` VALUES (36, 8, 'Exterior', -298, 1778, 43, 10, 0, 0, NULL, NULL);
INSERT INTO `duty_locations` VALUES (37, 2, 'duty', 282, -225, 2, 10, 0, 0, NULL, NULL);
INSERT INTO `duty_locations` VALUES (38, 19, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 241, 443);

-- ----------------------------
-- Table structure for elections
-- ----------------------------
DROP TABLE IF EXISTS `elections`;
CREATE TABLE `elections`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `electionsname` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `votes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `elections_UNIQUE`(`electionsname`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of elections
-- ----------------------------

-- ----------------------------
-- Table structure for elevators
-- ----------------------------
DROP TABLE IF EXISTS `elevators`;
CREATE TABLE `elevators`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` decimal(10, 6) NULL DEFAULT 0.000000,
  `y` decimal(10, 6) NULL DEFAULT 0.000000,
  `z` decimal(10, 6) NULL DEFAULT 0.000000,
  `tpx` decimal(10, 6) NULL DEFAULT 0.000000,
  `tpy` decimal(10, 6) NULL DEFAULT 0.000000,
  `tpz` decimal(10, 6) NULL DEFAULT 0.000000,
  `dimensionwithin` int(5) NULL DEFAULT 0,
  `interiorwithin` int(5) NULL DEFAULT 0,
  `dimension` int(5) NULL DEFAULT 0,
  `interior` int(5) NULL DEFAULT 0,
  `car` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `disabled` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `rot` decimal(10, 6) NULL DEFAULT 0.000000,
  `tprot` decimal(10, 6) NULL DEFAULT 0.000000,
  `oneway` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 121 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of elevators
-- ----------------------------
INSERT INTO `elevators` VALUES (1, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0, 0, 0, 0, 0, 0, 0.000000, 0.000000, 0);
INSERT INTO `elevators` VALUES (3, 100.699219, -116.573250, 11.382543, 109.049805, -116.322266, 1.607813, 0, 0, 0, 0, 0, 0, 265.326630, 267.518433, 0);
INSERT INTO `elevators` VALUES (4, 115.511719, -108.661133, 1.647951, 1926.908203, -2406.397461, 13.573814, 0, 0, 368, 56, 1, 0, 270.885803, 105.593933, 0);
INSERT INTO `elevators` VALUES (5, 86.621872, -103.840042, 5677.320313, 86.668747, -105.719925, 5677.320313, 1, 16, 1, 16, 0, 0, 182.839996, 352.647278, 0);
INSERT INTO `elevators` VALUES (6, 12.514648, 10.443359, 40.429688, 12.401367, 9.619141, 40.429688, 259, 24, 259, 24, 0, 0, 177.824707, 355.734497, 0);
INSERT INTO `elevators` VALUES (7, 1524.680664, 1467.035156, 16.953545, 1524.631836, 1469.264648, 16.953545, 9, 21, 9, 21, 0, 0, 353.306458, 180.516357, 0);
INSERT INTO `elevators` VALUES (8, 1542.359375, 1467.051758, 16.953545, 1542.402344, 1468.609375, 16.953545, 9, 21, 9, 21, 0, 0, 1.892426, 354.569916, 0);
INSERT INTO `elevators` VALUES (9, 1545.260742, 1491.527344, 16.953545, 1545.307617, 1493.205078, 16.953545, 9, 21, 9, 21, 0, 0, 0.749817, 185.537201, 0);
INSERT INTO `elevators` VALUES (10, 1521.023438, 1506.330078, 16.953545, 1520.962891, 1504.767578, 16.953545, 9, 21, 9, 21, 0, 0, 178.022461, 7.731720, 0);
INSERT INTO `elevators` VALUES (11, 1521.146484, 1500.674805, 16.953545, 1521.068359, 1502.271484, 16.953545, 9, 21, 9, 21, 0, 0, 7.067047, 178.434448, 0);
INSERT INTO `elevators` VALUES (12, 1526.130859, 1517.030273, 16.953545, 1524.828125, 1517.099609, 16.953545, 9, 21, 9, 21, 0, 0, 80.099792, 272.577698, 0);
INSERT INTO `elevators` VALUES (13, 1540.538086, 1517.310547, 16.953545, 1539.314453, 1517.580078, 16.953545, 9, 21, 9, 21, 0, 0, 84.845947, 265.760590, 0);
INSERT INTO `elevators` VALUES (14, 1545.287109, 1497.932617, 16.953545, 1545.587891, 1499.027344, 16.953545, 9, 21, 9, 21, 0, 0, 357.558258, 183.235535, 0);
INSERT INTO `elevators` VALUES (15, 1550.766602, 1461.474609, 29.153545, 1550.809570, 1459.875977, 29.153545, 9, 21, 9, 21, 0, 0, 177.962036, 356.800171, 0);
INSERT INTO `elevators` VALUES (16, 1552.867188, 1460.187500, 29.153545, 1553.049805, 1461.408203, 29.153545, 9, 21, 9, 21, 0, 0, 12.598755, 172.693970, 0);
INSERT INTO `elevators` VALUES (17, 1560.150391, 1461.465820, 29.153545, 1558.482422, 1461.514648, 29.153545, 9, 21, 9, 21, 0, 0, 79.967957, 278.598297, 0);
INSERT INTO `elevators` VALUES (18, 1559.996094, 1468.194336, 29.153545, 1558.505859, 1468.209961, 29.153545, 9, 21, 9, 21, 0, 0, 77.792603, 271.577942, 0);
INSERT INTO `elevators` VALUES (19, 1560.104492, 1473.862305, 29.153545, 1558.244141, 1473.971680, 29.153545, 9, 21, 9, 21, 0, 0, 86.988312, 265.826508, 0);
INSERT INTO `elevators` VALUES (20, 1555.615234, 1476.145508, 29.153545, 1555.624023, 1474.163086, 29.153545, 9, 21, 9, 21, 0, 0, 180.598755, 0.431213, 0);
INSERT INTO `elevators` VALUES (21, 1546.022461, 1474.201172, 29.153545, 1546.110352, 1475.988281, 29.153545, 9, 21, 9, 21, 0, 0, 0.733368, 181.334869, 0);
INSERT INTO `elevators` VALUES (22, 1543.033203, 1430.975586, 29.153545, 1542.891602, 1432.801758, 29.153545, 9, 21, 9, 21, 0, 0, 0.090637, 178.692566, 0);
INSERT INTO `elevators` VALUES (23, 1535.337891, 1424.535156, 29.153545, 1535.327148, 1425.984375, 29.153545, 9, 21, 9, 21, 0, 0, 357.272583, 185.586624, 0);
INSERT INTO `elevators` VALUES (24, 273.367188, 144.485352, 2.167711, 271.503113, 151.633789, 9.984375, 0, 0, 0, 0, 0, 0, 21.030914, 183.004807, 0);
INSERT INTO `elevators` VALUES (25, 993.238281, -217.607422, 979.409058, 986.250977, -223.237305, 972.711243, 25, 3, 25, 3, 0, 0, 272.050354, 1.974823, 0);
INSERT INTO `elevators` VALUES (26, 17.370117, 10.556641, 40.429688, 17.429688, 9.727539, 40.429688, 259, 24, 259, 24, 0, 0, 180.082397, 359.436951, 0);
INSERT INTO `elevators` VALUES (27, 216.061523, -45.229492, 10.064373, 2360.826172, 2381.416016, 2022.924316, 0, 0, 5, 3, 0, 0, 93.146240, 281.806366, 0);
INSERT INTO `elevators` VALUES (28, 2350.069336, 2351.603516, 2018.678711, 202.291992, -35.486328, 2.570313, 5, 3, 0, 0, 0, 0, 269.122467, 186.822601, 0);
INSERT INTO `elevators` VALUES (29, 724.625977, -673.078125, 5009.868652, 723.556641, -693.977539, 5000.968750, 70, 15, 70, 15, 0, 0, 1.277191, 9.467621, 0);
INSERT INTO `elevators` VALUES (30, 731.247070, -690.407227, 5009.868652, 731.438477, -689.185547, 5009.868652, 70, 15, 70, 15, 0, 0, 358.151520, 180.433960, 0);
INSERT INTO `elevators` VALUES (31, 739.453125, -690.597656, 5009.868652, 739.669922, -689.269531, 5009.868652, 70, 15, 70, 15, 0, 0, 347.868164, 176.160217, 0);
INSERT INTO `elevators` VALUES (32, 742.715820, -679.067383, 5009.868652, 740.986328, -678.958984, 5009.868652, 70, 15, 70, 15, 0, 0, 88.817566, 270.786896, 0);
INSERT INTO `elevators` VALUES (33, 24.017578, 10.613281, 40.429688, 23.975586, 9.792969, 40.429688, 259, 24, 259, 24, 0, 0, 179.604492, 359.436951, 0);
INSERT INTO `elevators` VALUES (34, -101.739258, 1093.012695, 19.742188, 1430.472656, 1347.912109, 10.830528, 0, 0, 261, 22, 2, 0, 0.590515, 268.825806, 0);
INSERT INTO `elevators` VALUES (35, -97.007813, 1081.205078, 24.483191, 1432.727539, 1371.772461, 10.830528, 0, 0, 261, 22, 0, 0, 272.522766, 356.602417, 0);
INSERT INTO `elevators` VALUES (36, 1910.026367, -2427.827148, 13.566853, -1785.144531, 673.696289, 968.462708, 265, 56, 263, 1, 1, 0, 272.297546, 91.981689, 0);
INSERT INTO `elevators` VALUES (37, -739.476563, 263.391205, 2.187530, 232.347656, 1085.703125, 1084.232056, 0, 0, 73, 6, 0, 0, 218.436264, 356.954010, 0);
INSERT INTO `elevators` VALUES (38, -792.625366, 217.163666, 1.237973, 2316.230469, -1010.790039, 1054.718750, 0, 0, 74, 9, 0, 0, 210.240326, 165.173706, 0);
INSERT INTO `elevators` VALUES (39, -691.719116, 289.175201, 1.072105, 2491.077148, -1699.895508, 1014.741089, 0, 0, 72, 3, 0, 0, 202.709076, 90.844604, 0);
INSERT INTO `elevators` VALUES (40, -482.324799, 431.874817, 45.168751, -482.461517, 428.604309, 2.574863, 0, 0, 0, 0, 0, 0, 311.772034, 341.831085, 0);
INSERT INTO `elevators` VALUES (41, 213.096680, -183.486328, 1.578125, 369.152344, -114.579102, 1001.499512, 0, 0, 382, 5, 0, 0, 178.379517, 359.173279, 0);
INSERT INTO `elevators` VALUES (42, 1869.811523, -2456.960938, 13.579086, 1869.191406, -2455.202148, 13.585888, 383, 27, 383, 27, 0, 0, 93.552765, 112.334167, 0);
INSERT INTO `elevators` VALUES (43, 150.659180, -177.329102, 1.578125, -2221.743164, 132.974609, 1035.757813, 0, 0, 93, 6, 0, 0, 89.641571, 175.643860, 0);
INSERT INTO `elevators` VALUES (44, 2128.395508, -1620.585938, 389.732819, 2128.021484, -1621.415039, 389.732819, 252, 56, 252, 56, 0, 0, 183.076218, 177.604919, 0);
INSERT INTO `elevators` VALUES (45, 155.699219, -186.487305, 1.578125, 214.945313, -126.363281, 1003.507813, 0, 0, 95, 3, 0, 0, 0.002747, 357.646149, 0);
INSERT INTO `elevators` VALUES (46, 2124.567383, -1630.713867, 389.732819, 2124.553711, -1629.886719, 389.732819, 252, 56, 252, 56, 0, 0, 7.924011, 177.121521, 0);
INSERT INTO `elevators` VALUES (47, 2122.990234, -1626.125000, 389.732819, 2123.809570, -1626.372070, 389.732819, 252, 56, 252, 56, 0, 0, 269.534454, 94.404205, 0);
INSERT INTO `elevators` VALUES (48, 253.879883, -163.953125, 5.078612, 284.626953, -57.022461, 1001.515625, 0, 0, 92, 4, 0, 0, 178.297119, 19.124756, 0);
INSERT INTO `elevators` VALUES (49, 2141.605469, -1620.488281, 389.732819, 2141.539063, -1621.307617, 389.732819, 252, 56, 252, 56, 0, 0, 187.124741, 359.151306, 0);
INSERT INTO `elevators` VALUES (50, 2144.278320, -1630.608398, 389.732819, 2144.325195, -1629.781250, 389.732819, 252, 56, 252, 56, 0, 0, 352.229797, 183.367371, 0);
INSERT INTO `elevators` VALUES (51, 2141.375000, -1630.608398, 389.732819, 2141.245117, -1629.785156, 389.732819, 252, 56, 252, 56, 0, 0, 359.436951, 186.476532, 0);
INSERT INTO `elevators` VALUES (52, 2117.141602, -1630.813477, 389.732819, 2116.757813, -1629.987305, 389.732819, 252, 56, 252, 56, 0, 0, 359.123810, 192.140076, 0);
INSERT INTO `elevators` VALUES (53, 2123.809570, -1617.853516, 389.732819, 2122.988281, -1617.844727, 389.732819, 252, 56, 252, 56, 0, 0, 87.460754, 274.522308, 0);
INSERT INTO `elevators` VALUES (54, 1565.572266, 1794.892578, 2083.383789, 1565.678711, 1793.666016, 2083.383789, 266, 10, 266, 10, 0, 0, 182.406052, 354.888519, 0);
INSERT INTO `elevators` VALUES (55, 251.596680, -231.085938, 1.568812, 1564.155273, 1791.657227, 2083.411621, 0, 0, 266, 10, 0, 0, 266.820801, 82.472870, 0);
INSERT INTO `elevators` VALUES (56, 1916.553711, -2407.013672, 15.540219, 288.647064, -234.925003, 1.567812, 271, 56, 0, 0, 1, 0, 89.894257, 84.933838, 0);
INSERT INTO `elevators` VALUES (58, -328.313477, -439.539063, 3.573438, 144.323242, 1387.215820, 1083.865112, 0, 0, 249, 5, 0, 0, 289.189270, 181.400787, 0);
INSERT INTO `elevators` VALUES (59, 2125.402344, -1444.598633, 291.425903, 2125.353516, -1446.235352, 291.425903, 331, 2, 331, 2, 0, 0, 169.881409, 354.751190, 0);
INSERT INTO `elevators` VALUES (60, -354.022461, -435.686523, 15.800000, 2126.886719, -1442.709961, 291.425903, 0, 0, 331, 2, 0, 0, 282.031586, 269.496002, 0);
INSERT INTO `elevators` VALUES (61, 2264.395508, 1675.738281, 1090.445313, 2124.500000, -1476.422852, 300.671143, 321, 1, 333, 2, 0, 0, 89.691040, 187.311508, 0);
INSERT INTO `elevators` VALUES (62, 714.638672, -569.393555, 16.335938, 1071.541992, -1285.950195, 79.170021, 0, 0, 343, 1, 0, 0, 87.175110, 175.913025, 0);
INSERT INTO `elevators` VALUES (64, -25.142578, 1038.004517, 19.984869, -25.945313, 1038.117798, 19.984869, 0, 0, 0, 0, 0, 0, 95.156799, 263.936829, 0);
INSERT INTO `elevators` VALUES (65, 2125.621094, -1447.041992, 291.425903, 2125.446289, -1443.813477, 291.425903, 353, 2, 353, 2, 0, 0, 0.442200, 179.082642, 0);
INSERT INTO `elevators` VALUES (66, -299.213867, 1735.025391, 42.687500, 1924.323242, -2331.751953, 13.757687, 0, 0, 352, 56, 2, 0, 269.561920, 178.972778, 0);
INSERT INTO `elevators` VALUES (67, 1916.126953, -2294.413086, 13.757687, -409.479492, 1331.149414, 12.877882, 352, 56, 0, 0, 2, 0, 86.801544, 194.051743, 0);
INSERT INTO `elevators` VALUES (68, 719.812500, -456.937500, 16.335938, 720.738281, -465.885742, 16.335938, 0, 0, 0, 0, 0, 0, 189.926300, 95.607239, 0);
INSERT INTO `elevators` VALUES (69, 320.365234, -33.634766, 1.578125, 1914.368164, -2406.839844, 16.075747, 0, 0, 358, 56, 0, 0, 194.145111, 91.476318, 0);
INSERT INTO `elevators` VALUES (70, -1033.642578, -529.393555, 32.007813, -1032.091797, -529.104492, 32.107819, 0, 0, 0, 0, 0, 0, 267.848022, 94.887604, 0);
INSERT INTO `elevators` VALUES (71, 1739.533203, 698.756836, 10.820313, 1737.505859, 683.015625, 10.820313, 0, 0, 0, 0, 0, 0, 286.612976, 177.011719, 0);
INSERT INTO `elevators` VALUES (72, 1677.008789, 669.717773, 25.956034, 1731.682617, 706.910156, 10.820313, 0, 0, 0, 0, 0, 0, 271.330750, 159.219055, 0);
INSERT INTO `elevators` VALUES (74, -679.784180, 947.181641, 12.351648, -679.887695, 948.783203, 12.351648, 0, 0, 0, 0, 0, 0, 178.055420, 207.262985, 0);
INSERT INTO `elevators` VALUES (75, 2359.803711, 2367.303711, 2022.931030, 2360.042969, 2364.323242, 2022.922485, 5, 3, 5, 3, 0, 0, 3.073456, 88.751648, 0);
INSERT INTO `elevators` VALUES (76, 2360.041992, 2375.861328, 2022.922485, 2360.044922, 2372.308594, 2022.922485, 5, 3, 5, 3, 0, 0, 359.711609, 359.711609, 0);
INSERT INTO `elevators` VALUES (77, 291.933594, -242.346680, 1.567812, 1917.456055, -2407.094727, 15.319167, 0, 0, 265, 56, 1, 0, 85.543579, 87.790344, 0);
INSERT INTO `elevators` VALUES (78, 1545.447266, 1500.209961, 16.953545, 1545.516602, 1498.191406, 16.953545, 377, 21, 377, 21, 0, 0, 356.816650, 356.816650, 0);
INSERT INTO `elevators` VALUES (79, -295.916016, 1776.999023, 42.700001, -295.950195, 1775.811523, 42.687500, 0, 0, 0, 0, 0, 0, 172.177612, 357.805450, 0);
INSERT INTO `elevators` VALUES (80, 1545.357422, 1491.071289, 16.953545, 1545.113281, 1492.913086, 16.953545, 377, 21, 377, 21, 0, 0, 184.993362, 178.747559, 0);
INSERT INTO `elevators` VALUES (81, 1521.022461, 1500.581055, 16.953545, 1520.946289, 1502.114258, 16.953545, 377, 21, 377, 21, 0, 0, 136.795593, 176.995239, 0);
INSERT INTO `elevators` VALUES (82, 1521.113281, 1506.508789, 16.953545, 1521.155273, 1504.993164, 16.953545, 377, 21, 377, 21, 0, 0, 269.397125, 89.399872, 0);
INSERT INTO `elevators` VALUES (83, 1538.909180, 1517.420898, 16.953545, 1540.508789, 1517.506836, 16.953545, 377, 21, 377, 21, 0, 0, 128.017395, 144.722351, 0);
INSERT INTO `elevators` VALUES (84, 1526.687500, 1517.215820, 16.953545, 1525.085938, 1517.168945, 16.953545, 377, 21, 377, 21, 0, 0, 78.204651, 261.734009, 0);
INSERT INTO `elevators` VALUES (85, 710.979492, -644.814636, 25.883533, 1564.849609, 1502.910156, 29.153545, 0, 0, 377, 21, 0, 0, 5.995880, 272.451355, 0);
INSERT INTO `elevators` VALUES (86, 1542.435547, 1469.155273, 16.953545, 1542.397461, 1467.493164, 16.953545, 377, 21, 377, 21, 0, 0, 174.633057, 356.723267, 0);
INSERT INTO `elevators` VALUES (87, 1524.663086, 1466.888672, 16.953545, 1524.744141, 1468.516602, 16.953545, 377, 21, 377, 21, 0, 0, 79.034088, 183.614563, 0);
INSERT INTO `elevators` VALUES (88, 1545.974609, 1476.113281, 29.153545, 1545.860352, 1474.592773, 29.153545, 377, 21, 377, 21, 0, 0, 175.451599, 355.772949, 0);
INSERT INTO `elevators` VALUES (89, 1555.611328, 1476.412109, 29.153545, 1555.653320, 1474.791016, 29.153545, 377, 21, 377, 21, 0, 0, 284.344238, 343.270325, 0);
INSERT INTO `elevators` VALUES (90, 1560.333008, 1474.088867, 29.153545, 1558.787109, 1473.815430, 29.153545, 377, 21, 377, 21, 0, 0, 78.413361, 348.411987, 0);
INSERT INTO `elevators` VALUES (91, 1560.580078, 1468.017578, 29.153545, 1558.687500, 1468.190430, 29.153545, 377, 21, 377, 21, 0, 0, 231.971619, 281.289978, 0);
INSERT INTO `elevators` VALUES (92, 1560.383789, 1461.596680, 29.153545, 1558.787109, 1461.588867, 29.153545, 377, 21, 377, 21, 0, 0, 211.317001, 265.436493, 0);
INSERT INTO `elevators` VALUES (93, 1552.993164, 1459.436523, 29.153545, 1552.974609, 1461.017578, 29.153545, 377, 21, 377, 21, 0, 0, 46.206451, 174.490234, 0);
INSERT INTO `elevators` VALUES (94, 1550.696289, 1459.206055, 29.153545, 1550.800781, 1460.914063, 29.153545, 377, 21, 377, 21, 0, 0, 283.679565, 169.348572, 0);
INSERT INTO `elevators` VALUES (95, 1542.827148, 1430.737305, 29.153545, 1543.044922, 1432.313477, 29.153545, 377, 21, 377, 21, 0, 0, 350.812561, 180.252686, 0);
INSERT INTO `elevators` VALUES (96, 1535.320313, 1424.046875, 29.153545, 1535.446289, 1425.595703, 29.153545, 377, 21, 377, 21, 0, 0, 331.921265, 171.941406, 0);
INSERT INTO `elevators` VALUES (97, 715.101746, -636.918762, 16.574770, 1564.846680, 1499.564453, 29.153545, 0, 0, 377, 21, 0, 0, 87.861725, 266.590057, 0);
INSERT INTO `elevators` VALUES (98, 2155.602539, -1422.778320, 293.730164, 2154.093750, -1422.999023, 293.730164, 381, 2, 381, 2, 0, 0, 181.433731, 274.956299, 0);
INSERT INTO `elevators` VALUES (99, 2146.303711, -1423.141602, 293.730164, 2148.184570, -1422.955078, 293.730164, 381, 2, 381, 2, 0, 0, 343.176941, 85.032715, 0);
INSERT INTO `elevators` VALUES (100, 2146.569336, -1432.637695, 293.730164, 2148.195313, -1432.189453, 293.730164, 381, 2, 381, 2, 0, 0, 103.616394, 102.808868, 0);
INSERT INTO `elevators` VALUES (101, 2155.654297, -1432.167969, 293.730164, 2154.089844, -1432.170898, 293.730164, 381, 2, 381, 2, 0, 0, 170.073730, 352.801117, 0);
INSERT INTO `elevators` VALUES (102, 172.585938, -299.448242, 1.578125, 1529.571289, 1631.999023, 10.833092, 0, 0, 385, 2, 2, 0, 273.220428, 177.918091, 0);
INSERT INTO `elevators` VALUES (103, 1207.503906, -42.537109, 1000.953125, 1207.418945, -41.250000, 1000.953125, 388, 3, 388, 3, 0, 0, 162.256836, 184.037552, 0);
INSERT INTO `elevators` VALUES (104, 609.692383, -7.313477, 1000.926514, -366.333984, -451.409180, 12.768513, 250, 1, 0, 0, 1, 0, 280.174866, 74.666962, 0);
INSERT INTO `elevators` VALUES (110, 42.465820, -269.589844, 1.934501, 1534.076172, 1619.034180, 10.820313, 0, 0, 0, 0, 1, 0, 351.449768, 0.579529, 0);
INSERT INTO `elevators` VALUES (113, 522.973633, 78.671875, 1044.458984, -37.420898, 1048.709595, 19.784374, 98, 24, 0, 0, 1, 0, 88.065002, 178.840942, 0);
INSERT INTO `elevators` VALUES (114, 1215.365234, -41.127930, 1000.953125, 368.016602, -99.635742, 1.359375, 388, 3, 0, 0, 0, 0, 168.947571, 84.681152, 0);
INSERT INTO `elevators` VALUES (115, 517.247070, 87.434570, 1042.857422, 522.538086, 87.440430, 1044.458984, 98, 24, 98, 24, 0, 0, 90.987427, 269.199341, 0);
INSERT INTO `elevators` VALUES (116, 517.655273, 79.061523, 1042.857422, 520.331055, 79.123047, 1044.458984, 98, 24, 98, 24, 0, 0, 85.889648, 264.925598, 0);
INSERT INTO `elevators` VALUES (117, -366.944336, -448.029297, 11.643750, 609.660156, -5.247070, 1000.918457, 0, 0, 250, 1, 1, 0, 90.487518, 84.703125, 0);
INSERT INTO `elevators` VALUES (119, -124.658592, 1123.682373, 20.018314, -125.107811, 1121.117920, 20.010937, 0, 0, 0, 0, 0, 0, 290.386810, 1.051971, 0);
INSERT INTO `elevators` VALUES (120, 964.873047, 2073.622070, 10.856549, -521.853516, -489.541016, 25.523438, 401, 28, 0, 0, 1, 0, 93.294586, 353.993134, 0);

-- ----------------------------
-- Table structure for emailaccounts
-- ----------------------------
DROP TABLE IF EXISTS `emailaccounts`;
CREATE TABLE `emailaccounts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `password` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `creator` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of emailaccounts
-- ----------------------------

-- ----------------------------
-- Table structure for emails
-- ----------------------------
DROP TABLE IF EXISTS `emails`;
CREATE TABLE `emails`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime(0) NOT NULL,
  `sender` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `receiver` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `subject` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `message` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `inbox` int(1) NOT NULL DEFAULT 0,
  `outbox` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of emails
-- ----------------------------

-- ----------------------------
-- Table structure for faa_registry
-- ----------------------------
DROP TABLE IF EXISTS `faa_registry`;
CREATE TABLE `faa_registry`  (
  `codeid` int(11) NOT NULL,
  `owner` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `condition` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `notes` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `x` float NULL DEFAULT NULL,
  `y` float NULL DEFAULT NULL,
  PRIMARY KEY (`codeid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of faa_registry
-- ----------------------------

-- ----------------------------
-- Table structure for faction_ranks
-- ----------------------------
DROP TABLE IF EXISTS `faction_ranks`;
CREATE TABLE `faction_ranks`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `faction_id` int(11) NULL DEFAULT NULL,
  `name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `permissions` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `isDefault` int(11) NOT NULL DEFAULT 0,
  `isLeader` int(11) NOT NULL DEFAULT 0,
  `wage` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 108 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of faction_ranks
-- ----------------------------
INSERT INTO `faction_ranks` VALUES (1, 1, 'Sheriff', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17', 0, 1, 2000);
INSERT INTO `faction_ranks` VALUES (2, 1, 'Aspirante a SubOficial', '', 1, 0, 1100);
INSERT INTO `faction_ranks` VALUES (38, 2, 'Director General E.S.', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17', 0, 1, 2500);
INSERT INTO `faction_ranks` VALUES (39, 2, 'Aspirante', '', 1, 0, 0);
INSERT INTO `faction_ranks` VALUES (42, 4, 'Leader Rank', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18', 0, 1, 0);
INSERT INTO `faction_ranks` VALUES (43, 4, 'Default Rank', '', 1, 0, 0);
INSERT INTO `faction_ranks` VALUES (44, 5, 'Leader Rank', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18', 0, 1, 0);
INSERT INTO `faction_ranks` VALUES (45, 5, 'Default Rank', '', 1, 0, 0);
INSERT INTO `faction_ranks` VALUES (46, 6, 'Leader Rank', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18', 0, 1, 0);
INSERT INTO `faction_ranks` VALUES (47, 6, 'Default Rank', '', 1, 0, 0);
INSERT INTO `faction_ranks` VALUES (48, 7, 'Pakhan', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15', 0, 1, 0);
INSERT INTO `faction_ranks` VALUES (49, 7, 'Novichok', '', 1, 0, 0);
INSERT INTO `faction_ranks` VALUES (50, 8, 'Director', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17', 0, 1, 2500);
INSERT INTO `faction_ranks` VALUES (51, 8, 'Miembro', '', 1, 0, 600);
INSERT INTO `faction_ranks` VALUES (54, 7, 'Sovietnik', '1,2,6,8,11,13,14', 0, 0, 0);
INSERT INTO `faction_ranks` VALUES (55, 7, 'Brigadier', '', 0, 0, 0);
INSERT INTO `faction_ranks` VALUES (56, 7, 'Boyevik', '', 0, 0, 0);
INSERT INTO `faction_ranks` VALUES (57, 7, 'Torpedo', '', 0, 0, 0);
INSERT INTO `faction_ranks` VALUES (58, 7, 'Kryshas', '', 0, 0, 0);
INSERT INTO `faction_ranks` VALUES (59, 7, 'Obschak', '1,2,3,4,5,6,9,10,11,12,13,14,15', 0, 0, 0);
INSERT INTO `faction_ranks` VALUES (60, 8, 'Jefe', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17', 0, 0, 2250);
INSERT INTO `faction_ranks` VALUES (65, 1, 'SubOficial', '', 0, 0, 1200);
INSERT INTO `faction_ranks` VALUES (66, 1, 'Oficial ', '', 0, 0, 1300);
INSERT INTO `faction_ranks` VALUES (67, 1, 'Cadete', '', 0, 0, 1000);
INSERT INTO `faction_ranks` VALUES (68, 1, 'Oficial II', '', 0, 0, 1400);
INSERT INTO `faction_ranks` VALUES (69, 1, 'Oficial III', '', 0, 0, 1500);
INSERT INTO `faction_ranks` VALUES (70, 1, 'Cabo', '', 0, 0, 1600);
INSERT INTO `faction_ranks` VALUES (71, 1, 'Cabo Segundo', '6', 0, 0, 1700);
INSERT INTO `faction_ranks` VALUES (72, 1, 'Sargento', '1,6', 0, 0, 1800);
INSERT INTO `faction_ranks` VALUES (73, 1, 'Sargento Mayor', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17', 0, 0, 1900);
INSERT INTO `faction_ranks` VALUES (74, 8, 'Supervisor', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17', 0, 0, 2000);
INSERT INTO `faction_ranks` VALUES (75, 8, 'Guardia de Seguridad', '', 0, 0, 800);
INSERT INTO `faction_ranks` VALUES (76, 8, 'Miembro de Seguridad', '', 0, 0, 1000);
INSERT INTO `faction_ranks` VALUES (77, 8, 'Comandante', '', 0, 0, 1800);
INSERT INTO `faction_ranks` VALUES (78, 8, 'Director de Seguridad', '', 0, 0, 1900);
INSERT INTO `faction_ranks` VALUES (79, 8, 'Especialista', '', 0, 0, 1500);
INSERT INTO `faction_ranks` VALUES (80, 2, 'Sub director', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17', 0, 0, 2300);
INSERT INTO `faction_ranks` VALUES (81, 2, 'Jefe de Bomberos', '', 0, 0, 2100);
INSERT INTO `faction_ranks` VALUES (82, 2, 'Jefe de Sanitario', '', 0, 0, 2100);
INSERT INTO `faction_ranks` VALUES (83, 2, 'Jefe de Brigada de Rescatistas', '', 0, 0, 2100);
INSERT INTO `faction_ranks` VALUES (84, 2, 'Rescatista', '', 0, 0, 1900);
INSERT INTO `faction_ranks` VALUES (85, 2, 'Bombero', '', 0, 0, 1700);
INSERT INTO `faction_ranks` VALUES (86, 2, 'MÃ©dico', '', 0, 0, 1700);
INSERT INTO `faction_ranks` VALUES (87, 2, 'ParamÃ©dico', '', 0, 0, 1700);
INSERT INTO `faction_ranks` VALUES (88, 2, 'Residente', '', 0, 0, 1000);
INSERT INTO `faction_ranks` VALUES (89, 2, 'Interno', '', 0, 0, 500);
INSERT INTO `faction_ranks` VALUES (90, 9, 'Jefe', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17', 0, 1, 375);
INSERT INTO `faction_ranks` VALUES (91, 9, 'Carnicero- Subrango 1', '', 1, 0, 150);
INSERT INTO `faction_ranks` VALUES (94, 10, 'Boss', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17', 0, 1, 0);
INSERT INTO `faction_ranks` VALUES (95, 10, 'Newcomer', '', 1, 0, 0);
INSERT INTO `faction_ranks` VALUES (96, 9, 'Gerente', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17', 0, 0, 315);
INSERT INTO `faction_ranks` VALUES (97, 9, 'Carnicero- Subrango 2', '', 0, 0, 250);
INSERT INTO `faction_ranks` VALUES (98, 9, 'Carnicero- Subrango 3', '', 0, 0, 200);
INSERT INTO `faction_ranks` VALUES (99, 9, 'Carnicero Aficionado -Subrango 1', '', 0, 0, 315);
INSERT INTO `faction_ranks` VALUES (100, 9, 'Carnicero Aficionado -Subrango 2', '', 0, 0, 295);
INSERT INTO `faction_ranks` VALUES (101, 3, 'Leader Rank', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17', 0, 1, 0);
INSERT INTO `faction_ranks` VALUES (102, 3, 'Default Rank', '', 1, 0, 0);
INSERT INTO `faction_ranks` VALUES (103, 3, 'A PRUEBA', '', 0, 0, 0);
INSERT INTO `faction_ranks` VALUES (104, 10, 'Hunter', '', 0, 0, 0);
INSERT INTO `faction_ranks` VALUES (105, 10, 'Informant/Spy', '', 0, 0, 0);
INSERT INTO `faction_ranks` VALUES (106, 20, 'Leader Rank', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18', 0, 1, 0);
INSERT INTO `faction_ranks` VALUES (107, 20, 'Default Rank', '', 1, 0, 0);

-- ----------------------------
-- Table structure for factions
-- ----------------------------
DROP TABLE IF EXISTS `factions`;
CREATE TABLE `factions`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `bankbalance` bigint(20) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `rank_order` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `motd` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `note` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `fnote` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `phone` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `max_interiors` int(11) UNSIGNED NOT NULL DEFAULT 20,
  `max_vehicles` int(11) UNSIGNED NOT NULL DEFAULT 40,
  `free_custom_ints` tinyint(1) UNSIGNED NULL DEFAULT 0,
  `free_custom_skins` tinyint(1) UNSIGNED NULL DEFAULT 0,
  `before_tax_value` int(6) NOT NULL DEFAULT 0,
  `before_wage_charge` int(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of factions
-- ----------------------------
INSERT INTO `factions` VALUES (1, 'Riverside Sheriff´s Department', 0, 2, '1,73,72,71,70,69,68,66,65,2,67', 'Freq: 911.01', '280 281 Cadetes\n284 265 266 Oficiales\nNivel 2 (Sargentos y eso) 71 y 282\ndetectives 267 y 290\naltos rangos 288 y 283\nSEB 285 y 287\n', NULL, NULL, 20, 40, 1, 1, 0, 0);
INSERT INTO `factions` VALUES (2, 'Riverside Emergency Services', 512727, 4, '38,80,81,82,83,84,85,86,87,88,89,39', 'Bienvenido a Riverside Emergency Services!', '', 'Bienvenido a Riverside Emergency Services, esto fue escrito por el Director General de la E.S. Drake Robinson. aca encontraras las informaciones que debes de tomar en cuenta a la hora de trabajar. El comando para curar a alguien es /heal [ID de la persona] [Precio] (Sin los corchetes) asi que bien, te preguntaras Â¿Cual es el precio que debo de cobrar al curar a alguien? Pues, simplemente te los dejo aca abajito.\n\nSi es una persona cuyo riesgo es menor, es decir, si por ejemplo sufre una fractura, enfermedad, golpe o atropello pues debes de cobrarle un precio que no sobre pase los 500 Dolares, dependiendo de lo que sufre\n\n\nSi es una persona cuyo riesgo es mayor, es decir, si por ejemplo, sufre de una herida de bala, quemadura, al borde de la muerte pues debes de cobrar un precio que no sobre pase los 1500 Dolares\n\n\nPara hablar por el departamento, es decir, hablar con otros servicios de emergencia como lo son la policia, se utiliza /dep, aun que necesitas una radio, que puedes adquirir en la tienda de electronica comodamente\n', NULL, 20, 40, 1, 1, 0, 0);
INSERT INTO `factions` VALUES (3, 'Tunning Perfomace', 280500, 5, '101,102,,103', 'Welcome to the faction.', '', NULL, NULL, 20, 40, 0, 0, 0, 0);
INSERT INTO `factions` VALUES (4, 'Riverside Municipal Government', 111978, 3, '40,41,', 'Welcome to the faction.', '', NULL, NULL, 20, 40, 1, 1, 0, 0);
INSERT INTO `factions` VALUES (5, 'Riverside Television', 0, 6, '44,45,', 'Welcome to the faction.', '', NULL, NULL, 20, 40, 0, 0, 0, 0);
INSERT INTO `factions` VALUES (6, 'Riverside Justice Department', 0, 3, '46,47,', 'Welcome to the faction.', '', NULL, NULL, 20, 40, 0, 0, 0, 0);
INSERT INTO `factions` VALUES (7, 'Bratva', 0, 1, '48,59,54,55,56,57,58,49', 'Frecuencia Voz: 15  Frecuencia Texto: 255.3', '', NULL, NULL, 20, 40, 0, 0, 0, 0);
INSERT INTO `factions` VALUES (8, 'Hollister and Sewell Inc.', 946300, 5, '50,60,74,78,77,79,76,75,51', 'Frecuencia 19.45 /hz para Cambiarla', '', NULL, NULL, 20, 40, 0, 0, 0, 0);
INSERT INTO `factions` VALUES (9, 'Golden Gate Company', 141796, 5, '90,96,100,99,98,97,91', 'Welcome to the faction.', '', NULL, NULL, 20, 40, 0, 0, 0, 0);
INSERT INTO `factions` VALUES (10, 'Sift Connection', 0, 5, '94,104,105,95', 'Welcome to the faction.', '', NULL, NULL, 20, 40, 0, 0, 0, 0);
INSERT INTO `factions` VALUES (20, 'RS American Transport', 0, 5, '106,107,', 'Welcome to the faction.', '', NULL, NULL, 2, 40, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for files
-- ----------------------------
DROP TABLE IF EXISTS `files`;
CREATE TABLE `files`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uploaded_by` int(11) NULL DEFAULT NULL,
  `file` mediumblob NOT NULL,
  `file_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `file_size` int(10) UNSIGNED NOT NULL,
  `dateline` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `connected_interior` int(11) NULL DEFAULT NULL COMMENT 'The purpose of this field is to auto delete file record on interior delete.',
  `avatar_for_account` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `connected_interior_UNIQUE`(`connected_interior`) USING BTREE,
  UNIQUE INDEX `avatar_for_account_UNIQUE`(`avatar_for_account`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Store file up to 21MB per record / By Maxime / Consult with him if you\'re unsure of something.' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of files
-- ----------------------------

-- ----------------------------
-- Table structure for force_apps
-- ----------------------------
DROP TABLE IF EXISTS `force_apps`;
CREATE TABLE `force_apps`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` int(11) NULL DEFAULT NULL,
  `forceapp_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = 'Save forceapped players information to keep them from resubm' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of force_apps
-- ----------------------------

-- ----------------------------
-- Table structure for friends
-- ----------------------------
DROP TABLE IF EXISTS `friends`;
CREATE TABLE `friends`  (
  `account_id` int(10) UNSIGNED NOT NULL,
  `friend_account_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`account_id`, `friend_account_id`) USING BTREE,
  UNIQUE INDEX `friends_account_id_friend_account_id_unique`(`account_id`, `friend_account_id`) USING BTREE,
  INDEX `friends_friend_account_id_accounts_foreign`(`friend_account_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of friends
-- ----------------------------
INSERT INTO `friends` VALUES (1, 69);
INSERT INTO `friends` VALUES (69, 1);

-- ----------------------------
-- Table structure for fuelpeds
-- ----------------------------
DROP TABLE IF EXISTS `fuelpeds`;
CREATE TABLE `fuelpeds`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL,
  `rotZ` float NOT NULL,
  `interior` int(11) NOT NULL DEFAULT 0,
  `dimension` int(11) NOT NULL DEFAULT 0,
  `skin` int(3) NULL DEFAULT 50,
  `name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deletedBy` int(11) NULL DEFAULT 0,
  `shop_link` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fuelpeds
-- ----------------------------
INSERT INTO `fuelpeds` VALUES (1, 73.3711, 1214.77, 19.051, 249.078, 0, 0, 164, 'Brandon_C._Moore', 1, 0);
INSERT INTO `fuelpeds` VALUES (2, 73.9404, 1216.36, 19.051, 72.0632, 0, 0, 237, 'Robert_K._Robinson', 1, 0);
INSERT INTO `fuelpeds` VALUES (3, 303.026, -185.098, 1.66406, 173.265, 0, 0, 87, 'Justin_D._Hummer', 1, 0);

-- ----------------------------
-- Table structure for gates
-- ----------------------------
DROP TABLE IF EXISTS `gates`;
CREATE TABLE `gates`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectID` int(11) NOT NULL,
  `startX` float NOT NULL,
  `startY` float NOT NULL,
  `startZ` float NOT NULL,
  `startRX` float NOT NULL,
  `startRY` float NOT NULL,
  `startRZ` float NOT NULL,
  `endX` float NOT NULL,
  `endY` float NOT NULL,
  `endZ` float NOT NULL,
  `endRX` float NOT NULL,
  `endRY` float NOT NULL,
  `endRZ` float NOT NULL,
  `gateType` tinyint(3) UNSIGNED NOT NULL,
  `autocloseTime` int(4) NOT NULL,
  `movementTime` int(4) NOT NULL,
  `objectDimension` int(11) NOT NULL,
  `objectInterior` int(11) NOT NULL,
  `gateSecurityParameters` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `creator` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `createdDate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `adminNote` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `triggerDistance` float NULL DEFAULT NULL,
  `triggerDistanceVehicle` float NULL DEFAULT NULL,
  `sound` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'metalgate',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 411 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gates
-- ----------------------------
INSERT INTO `gates` VALUES (4, 3055, 1588.5, -1637.8, 14.6, 0, 0, 0, 1588.5, -1640, 16.5, 270, 0, 0, 7, 50, 25, 0, 0, '1', 'GameStar', '2014-02-06 20:14:12', 'LSPD Gates', 0, 15, 'metalgate');
INSERT INTO `gates` VALUES (5, 10184, 1534.1, -1451.4, 14.9, 0, 0, 270, 1535.2, -1451.7, 19.7, 0, 0, 270, 7, 50, 30, 0, 0, '1', 'Franco', '2014-02-06 06:07:28', 'Detectives Gates', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (6, 988, 2639.8, -2582.4, 13.7, 0, 0, 180, 2642.4, -2582.4, 13.7, 0, 0, 179.995, 3, 30, 20, 0, 0, '82', 'Weimy', '2014-07-10 15:34:02', 'TTR Gate #1', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (7, 988, 2634.3, -2582.4, 13.7, 0, 0, 179.995, 2630.2, -2582.4, 13.7, 0, 0, 179.995, 3, 30, 20, 0, 0, '82', 'Weimy', '2014-07-10 15:35:31', 'TTR Gate #2', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (8, 2949, -572.5, -523.322, 33, 0, 0, -90, -572.5, -523.322, 33, 0, 0, -90, 7, 50, 15, 0, 0, '1', 'Dreko', '2015-01-08 11:24:24', 'LSPD Exterior Door', 5, 0, 'metalgate');
INSERT INTO `gates` VALUES (9, 968, 1544.7, -1630.9, 13.1, 0, 270, 270, 1544.7, -1630.7, 13, 0, 180, 270, 7, 40, 15, 0, 0, '1', 'Maxime', '2014-04-08 10:17:41', 'LSPD ex-gate', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (10, 976, 1643.6, -1718.3, 14.6, 0, 0, 90, 1643.6, -1711.22, 14.6, 0, 0, 90, 3, 40, 45, 0, 0, '86', 'Tylerc010', '2014-02-07 15:14:05', 'LSN Gate', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (11, 1495, 249.4, -1725.85, 5113, 0, 0, 0, 249.399, -1725.85, 5113, 0, 0, 90, 3, 15, 30, 6, 1, '86', 'Tylerc010', '2014-02-08 03:20:20', 'LSN INT GATE - SET', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (12, 2634, 1384.7, 1466.5, 11.4, 0, 0, 180, 1383.6, 1467.5, 11.4, 0, 0, 90, 2, 0, 30, 1575, 45, 'underground123', 'Belgica', '2014-07-14 18:59:35', 'vaultcollins', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (13, 1495, 1371.8, 1458.9, 10.6, 0, 0, 0, 1371.8, 1458.9, 10.6, 0, 0, 270, 10, 20, 20, 249, 1, 'ClubTec', 'Exciter', '2014-08-27 20:29:14', 'Blueberry Factory', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (14, 2957, 2054.9, -1694.8, 14.2, 0, 0, 90, 2053.4, -1694.8, 15.5, 90, 0, 90, 2, 0, 30, 0, 0, '2616', 'Firebird', '2014-02-28 00:45:08', '8, Washington Street - Garage', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (15, 969, 781.788, -1384.9, 12.7, 0, 0, 180, 774, -1384.9, 12.7, 0, 0, 179.995, 7, 50, 50, 0, 0, '20', 'GameStar', '2014-02-11 03:14:18', 'LSN Studio gate', 7, 8, 'metalgate');
INSERT INTO `gates` VALUES (16, 969, 774.11, -1330.3, 12.7, 0, 0, 0, 764, -1330.3, 12.7, 0, 0, 0, 7, 16, 100, 0, 0, '20', 'GameStar', '2014-02-11 03:17:38', 'LSN STUDIO GATE 2', 7, 8, 'metalgate');
INSERT INTO `gates` VALUES (17, 1569, 1391.8, 1490.2, 9.8, 0, 0, 180.495, 1391.8, 1490.2, 9.8, 0, 0, 270.495, 3, 30, 30, 6, 1, '65', 'Alejandro', '2014-05-06 21:54:17', 'LSFD int2', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (18, 985, 2680.1, -2565, 14.4, 0, 0, 0, 2687, -2565, 14.4, 0, 0, 0, 7, 15, 30, 0, 0, '4', 'Dionysos', '2014-11-10 15:51:46', 'RT Main Gate 1', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (19, 986, 2673.8, -2565, 14.4, 0, 0, 0, 2687.1, -2565, 14.4, 0, 0, 0, 7, 15, 30, 0, 0, '4', 'Dionysos', '2014-11-10 15:53:32', 'RT Main Gate 2', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (20, 2933, -714.3, 996.4, 12, 0, 0, 270, -714.3, 996.4, 8, 0, 0, 270, 7, 3, 100, 0, 0, '8', 'Alejandro', '2018-12-23 00:46:12', 'Deposito', 100, 100, 'metalgate');
INSERT INTO `gates` VALUES (21, 989, 1964.3, -2189.8, 14.4, 0, 0, 106.745, 1968.8, -2189.8, 14.4, 0, 0, 106.743, 7, 50, 30, 0, 0, '1, 2, 3, 4', 'Serenity', '2014-02-26 02:49:58', 'LSIA Entrance Left', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (22, 989, 1958.8, -2189.8, 14.4, 0, 0, 106.743, 1954.3, -2189.8, 14.4, 0, 0, 106.743, 7, 50, 30, 0, 0, '1, 2, 3, 4', 'Serenity', '2014-02-26 02:52:15', 'LSIA Entrance Right', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (23, 980, -495.1, -562.8, 27.1, 0, 0, 180, -503.1, -562.8, 27.1, 0, 0, 180, 1, 0, 50, 0, 0, '0', 'Alejandro', '2014-05-31 02:10:27', 'Flint County DragTrack2', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (24, 1536, 2088, 475.8, 0.8, 0, 0, 268, 2088, 475.8, 0.8, 0, 0, 0, 2, 0, 30, 1787, 2, 'Throttle', 'Belgica', '2014-07-30 19:51:30', '1, Mint Street1', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (25, 9625, 1725.5, -1142.2, 25.9, 0, 0, 270, 1725.5, -1142.2, 31.6, 0, 0, 270, 7, 50, 50, 0, 0, '1', 'FiredS', '2014-03-12 20:36:22', 'LSFD ex', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (26, 9625, 1733.8, -1142.2, 25.9, 0, 0, 270, 1733.8, -1142.2, 31.6, 0, 0, 270, 7, 50, 50, 0, 0, '1', 'FiredS', '2014-03-12 20:38:38', 'LSFD ex2', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (27, 9625, 1742.9, -1142.2, 25.9, 0, 0, 270, 1742.9, -1142.2, 31.6, 0, 0, 270, 7, 50, 50, 0, 0, '1', 'FiredS', '2014-03-12 20:40:32', 'LSFD ex3', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (28, 9625, 1751.1, -1142.2, 25.9, 0, 0, 270, 1751.1, -1142.2, 31.6, 0, 0, 270, 7, 50, 50, 0, 0, '1', 'FiredS', '2014-03-12 20:41:18', 'LSFD ex4', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (29, 9625, 1759.8, -1142.2, 25.9, 0, 0, 270, 1759.8, -1142.2, 31.6, 0, 0, 270, 7, 50, 50, 0, 0, '1', 'FiredS', '2014-03-12 20:41:54', 'LSFD ex5', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (30, 9625, 1768, -1142.2, 25.9, 0, 0, 270, 1768, -1142.2, 31.6, 0, 0, 270, 7, 50, 50, 0, 0, '1', 'FiredS', '2014-03-12 20:42:40', 'LSFD ex6', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (31, 9625, 1733.3, -1108.8, 25.9, 0, 0, 90, 1733.3, -1108.8, 31.6, 0, 0, 90, 7, 50, 50, 0, 0, '1', 'FiredS', '2014-04-08 10:40:04', 'LSFD ex7', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (32, 9625, 1723.9, -1108.8, 25.9, 0, 0, 90, 1723.9, -1108.8, 31.6, 0, 0, 90, 7, 50, 50, 0, 0, '1', 'FiredS', '2014-04-08 10:50:52', 'LSFD ex8', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (33, 1536, 2088, 472.8, 0.8, 0, 0, 89.995, 2088, 472.8, 0.8, 0, 0, 359.995, 2, 0, 30, 1787, 2, 'Throttle', 'Belgica', '2014-07-30 19:52:07', '1, Mint Street2', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (34, 985, -1040, -532.888, 31.9592, 0, 0, 0, -1040, -532.888, 25, 0, 0, 0, 8, 30, 30, 0, 0, 'F=59 OR F=1 OR F=50', 'Err0r', '2014-08-29 18:19:34', 'Prison EXT gate 1', 20, 20, 'metalgate');
INSERT INTO `gates` VALUES (35, 2948, 1901.1, -2441.53, 15.03, 0, 0, 0, 1901.1, -2441.53, 15.03, 0, 0, 270, 7, 25, 20, 1806, 5, '59', 'Nadr', '2014-07-31 18:16:12', 'San Andreas County Jail', 3, NULL, NULL);
INSERT INTO `gates` VALUES (36, 2948, 1901.1, -2443.45, 15.03, 0, 0, 180, 1901.1, -2443.4, 15.03, 0, 0, 270, 7, 25, 20, 1806, 5, '59', 'Nadr', '2014-07-31 18:16:40', 'San Andreas Count Jail', 3, NULL, NULL);
INSERT INTO `gates` VALUES (37, 1569, 1897.33, -2418.2, 16.465, 0, 0, 270, 1897.33, -2418.2, 16.465, 0, 0, 180, 1, 30, 25, 1806, 5, '', 'Nadr', '2014-07-31 18:17:21', 'San Andreas County Jail', 3, NULL, NULL);
INSERT INTO `gates` VALUES (38, 1566, -1792.95, 649.257, 960.55, 0, 0, 0, -1792.95, 649.257, 960.55, 0, 0, 270, 7, 30, 30, 6, 1, '2', 'Alejandro', '2014-03-13 13:22:40', 'LSFD - Internal Door', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (39, 3089, 1556, -1679.5, 64.8, 0, 0, 0, 1555.9, -1679.5, 64.8, 0, 0, 90, 7, 30, 30, 69, 3, '50', 'Alejandro', '2014-04-29 07:23:38', 'Court Door 1', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (40, 971, 1577.5, -1695.3, 60.2, 0, 0, 0, 1577.4, -1694.7, 67.5, 0, 0, 0, 7, 20, 20, 1225, 3, '50', 'Belgica', '2014-04-29 06:58:03', 'Celldoor 2', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (41, 3037, -401.5, -1443.3, 28.2, 0, 0, 90, -401.5, -1445.6, 30, 0, 90, 90, 2, 0, 40, 0, 0, 'niggerhatinme', 'CharChar', '2015-01-25 10:52:21', 'FCRG', 10, 10, 'metalgate');
INSERT INTO `gates` VALUES (42, 971, 961.2, -942.1, 39.2, 0, 0, 0, 971.2, -942.1, 39.2, 0, 0, 0, 2, 30, 50, 0, 0, 'gate', 'AlcatraZ', '2014-10-18 02:33:05', 'elizabethstarks', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (43, 2948, 1892.8, -2446.7, 15.2, 0, 0, 270, 1892.8, -2446.7, 15.2, 0, 0, 180, 7, 25, 20, 1806, 5, '59', 'Nadr', '2014-07-31 18:17:49', 'San Andreas County Jail', 3, NULL, NULL);
INSERT INTO `gates` VALUES (44, 2948, 1890.9, -2446.7, 15.2, 0, 0, 90, 1890.9, -2446.7, 15.2, 0, 0, 180, 7, 25, 20, 1806, 5, '59', 'Nadr', '2014-07-31 18:18:13', 'San Andreas County Jail', 3, NULL, NULL);
INSERT INTO `gates` VALUES (45, 14843, 1912.8, -2418.3, 17.8, 0, 0, 0, 1910, -2418.3, 17.8, 0, 0, 0, 7, 50, 25, 1, 10, '1', 'Alejandro', '2014-03-27 16:14:30', 'lspd de1', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (46, 1569, 1897.33, -2418.2, 16.465, 0, 0, 0, 1897.33, -2418.2, 16.465, 0, 0, -90, 7, 50, 25, 1, 10, '1', 'Alejandro', '2014-03-27 16:17:37', 'LSPD de2', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (47, 2948, 1901.1, -2441.53, 15.03, 0, 0, 0, 1901.1, -2441.53, 15.03, 0, 0, 90, 7, 50, 25, 1, 10, '1', 'Alejandro', '2014-03-27 16:27:16', 'LSPD de 3', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (48, 2948, 1901.1, -2443.45, 15.03, 0, 0, 180, 1901.1, -2443.45, 15.03, 0, 0, 90, 7, 50, 25, 1, 10, '1', 'Alejandro', '2014-03-27 16:29:50', 'LSPD de 4', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (49, 16773, 1385.4, 1820.7, 25, 0, 0, 90, 1385.4, 1820.7, 17, 0, 0, 90, 7, 30, 30, 17, 18, '56', 'AndreC', '2014-08-10 17:20:22', 'Cargo group int gate', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (50, 3095, -1346.2, 928.1, 809.2, 270, 0, 0, -1346.2, 924.7, 809.2, 270, 0, 0, 10, 10, 15, 2145, 1, 'Falafel69', 'Weedex', '2014-12-07 22:11:02', 'Warehouse Gate', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (51, 1496, 1564.1, -1662.7, 27.4, 0, 0, 0, 1564.1, -1662.7, 27.4, 0, 0, 270, 7, 20, 40, 0, 0, '1', 'CharChar', '2014-12-10 20:51:33', 'LSPD Roof Gate', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (52, 3055, 961.064, -4.4873, 1001.15, 0, 0, 181.291, 961.064, -4.4873, 1001.15, 0, 0, 181.291, 7, 50, 30, 666, 3, '0', 'GameStar', '2014-06-05 20:33:14', 'Motel', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (53, 988, 4002.14, 1930.38, 10.9375, 0, 0, 45, 3995.14, 1924.38, 10.9375, 0, 0, 45, 7, 30, 30, 0, 0, 'F=47 OR 170=FAA access card for flyUS', 'Exciter', '2014-08-19 16:47:18', 'San Tortuguilla', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (54, 5422, 2692.6, -1466, 1153.2, 0, 0, 89.75, 2692.6, -1466, 1156, 0, 0, 89.75, 3, 50, 30, 264, 56, '156', 'Theno', '2014-04-24 23:40:15', 'Court Evidence room', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (55, 971, 2414.57, -2233.46, 13.5469, 0, 0, 0, 1568.5, -1695.3, 67.5, 0, 0, 0, 7, 20, 20, 0, 22222, '50', 'HereDUR', '2014-04-29 06:59:06', 'Celldoor', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (56, 3089, 1565.6, -1674.7, 64.8, 0, 0, 270, 1565.6, -1674.7, 64.8, 0, 0, 178, 7, 30, 30, 69, 3, '50', 'Alejandro', '2014-04-29 07:16:17', 'Court Door 2', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (57, 3089, 1582.98, -1691.3, 62.2, 0, 0, 0, 1583.1, -1691.3, 62.3, 0, 0, 102, 7, 30, 30, 69, 3, '50', 'Alejandro', '2014-04-29 07:45:11', 'Court Door 3', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (58, 3089, 2700.5, -1466.2, 1152.5, 0, 0, 0, 2702, -1466.2, 1152.5, 0, 0, 52, 3, 30, 30, 264, 56, '156', 'Max1', '2014-04-29 08:01:30', 'Court Door 4', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (59, 9625, 1780.9, -1094.8, 25.9, 0, 0, 270, 1780.9, -1094.9, 31.2, 0, 0, 270, 7, 30, 30, 0, 0, '1', 'FiredS', '2014-04-29 22:44:42', 'FD Employee Parking', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (60, 2948, 1901.1, -2441.53, 15.03, 0, 0, 0, 1901.1, -2441.53, 15.03, 0, 0, 270, 7, 20, 13, 18, 10, '59', 'anumaz', '2014-07-25 08:11:30', 'SASD', 3, NULL, NULL);
INSERT INTO `gates` VALUES (61, 2948, 1901.1, -2443.45, 15.03, 0, 0, 180, 1901.1, -2443.4, 15.03, 0, 0, 270, 7, 20, 13, 18, 10, '59', 'anumaz', '2014-07-25 08:16:51', 'SASD', 3, NULL, NULL);
INSERT INTO `gates` VALUES (62, 1569, 1897.33, -2418.2, 16.465, 0, 0, 0, 1897.33, -2418.2, 16.465, 0, 0, 270, 1, 0, 13, 18, 10, '', 'Nadr', '2014-07-25 08:18:39', 'SASD', 3, NULL, NULL);
INSERT INTO `gates` VALUES (63, 1569, 1395.8, 1490.2, 9.8, 0, 0, 179.744, 1395.8, 1490.2, 9.8, 0, 0, 269.744, 3, 30, 30, 6, 1, '65', 'Alejandro', '2014-05-06 21:54:44', 'LSFD int1', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (64, 1569, 1388.8, 1490.2, 9.8, 0, 0, 0.245, 1388.8, 1490.2, 9.8, 0, 0, 270.245, 3, 30, 30, 6, 1, '65', 'Alejandro', '2014-05-06 22:01:00', 'LSFD int3', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (65, 1569, 1392.8, 1490.2, 9.8, 0, 0, 359.995, 1392.8, 1490.2, 9.8, 0, 0, 270.995, 3, 30, 30, 6, 1, '65', 'Alejandro', '2014-05-06 22:01:30', 'LSFD int4', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (66, 1569, 1392.8, 1507, 9.8, 0, 0, 359.498, 1392.8, 1507, 9.8, 0, 0, 270.498, 3, 30, 30, 6, 1, '65', 'Alejandro', '2014-05-06 22:10:01', 'LSFD int5', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (67, 1569, 1395.8, 1507, 9.8, 0, 0, 179.248, 1395.8, 1507, 9.8, 0, 0, 270.248, 3, 30, 30, 6, 1, '65', 'Alejandro', '2014-05-06 22:10:32', 'LSFD int6', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (68, 1569, 1391.8, 1507, 9.8, 0, 0, 180.248, 1391.8, 1507, 9.8, 0, 0, 270.248, 3, 30, 30, 6, 1, '65', 'Alejandro', '2014-05-06 22:11:06', 'LSFD int7', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (69, 1569, 1388.8, 1507, 9.8, 0, 0, 359.5, 1388.8, 1507, 9.8, 0, 0, 270.5, 3, 30, 30, 6, 1, '65', 'Alejandro', '2014-05-06 22:11:59', 'LSFD int8', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (70, 1569, 1385.8, 1511.2, 9.8, 0, 0, 0, 1385.8, 1511.2, 9.8, 0, 0, 270, 3, 0, 30, 6, 1, '65', 'Alejandro', '2014-05-06 22:15:02', 'LSFD int9', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (71, 1569, 1393.8, 1511.2, 9.8, 0, 0, 0, 1393.8, 1511.2, 9.8, 0, 0, 90, 3, 30, 30, 6, 1, '65', 'Alejandro', '2014-05-06 22:17:18', 'LSFD int10', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (72, 1569, 1397.9, 1511.2, 9.8, 0, 0, 0, 1397.9, 1511.2, 9.8, 0, 0, 270, 3, 0, 15, 6, 1, '65', 'Alejandro', '2014-05-06 22:17:54', 'LSFD int11', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (73, 3037, -402.3, -1443.3, 26.9, 0, 0, 90, -402.3, -1445.5, 30, 0, 90, 90, 2, 0, 40, 0, 0, 'niggerhatinme', 'CharChar', '2015-01-25 10:53:01', 'FCRG', 10, 10, 'metalgate');
INSERT INTO `gates` VALUES (74, 1557, 1992.3, -2220.7, 13.2, 0, 0, 0, 1992.3, -2220.7, 13.2, 0, 0, 290, 3, 0, 20, 0, 0, '127', 'anumaz', '2014-07-06 14:40:39', 'LSIA - Aeroclub in', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (75, 1557, 1989.1, -2232.5, 13.2, 0, 0, 357.995, 1989.1, -2232.5, 13.2, 0, 0, 279.989, 3, 0, 20, 0, 0, '127', 'anumaz', '2014-07-06 14:41:41', 'LSIA - Aeroclub out', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (76, 2930, 2077, -2231.2, 15.2, 0, 0, 0, 2077, -2231.2, 15.2, 0, 0, 90, 2, 20, 20, 0, 0, '124', 'HereDUR', '2014-07-06 14:43:10', 'LSIA - Pilots entrance', 5, 5, 'metalgate');
INSERT INTO `gates` VALUES (77, 988, 2080.2, -2333, 13.6, 0, 0, 179.995, 2085.5, -2333, 13.6, 0, 0, 179.995, 8, 40, 30, 0, 0, 'F=47 OR 64 OR 65 OR 127', 'einschtein', '2014-07-06 14:44:52', 'LSIA - MIL area', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (78, 988, 1946.7, -2204.1, 13.6, 0, 0, 89.995, 1946.7, -2198.8, 13.6, 0, 0, 89.995, 8, 40, 30, 0, 0, 'F=47 OR PILOT OR 64 OR 65', 'einschtein', '2014-07-06 14:47:02', 'LSIA - Apron entrance', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (79, 969, -943.1, -1723.9, 76.6, 0, 0, 90, -943.1, -1733, 76.6, 0, 0, 90, 2, 40, 40, 0, 0, 'zaferinyarraÄŸÄ±', 'Bazarov', '2014-08-14 02:03:46', 'The McCullah Ranch', 12, 12, 'alarmbell');
INSERT INTO `gates` VALUES (80, 2933, -712.3, 933.4, 12.2, 0, 0, 212, -712.3, 933.4, 0, 0, 0, 212, 7, 3, 100, 0, 0, '20', 'Alejandro', '2018-12-23 01:08:00', 'Puerto', 100, 100, 'metalgate');
INSERT INTO `gates` VALUES (83, 2930, 1364.1, 382, 21.4, 0, 0, 337.497, 1364.1, 382, 21.4, 0, 0, 425, 7, 30, 20, 0, 0, '1', 'Alejandro', '2015-01-28 07:29:36', 'SAHP Monty Station', 4, 5, 'metalgate');
INSERT INTO `gates` VALUES (84, 1553, 2094.5, -1310.8, 24.2, 0, 0, 0, 2092.6, -1310.8, 24.2, 0, 0, 0, 5, 0, 30, 0, 0, 'trelementra', 'Violent', '2014-07-06 17:33:25', '2, Belview Road', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (85, 969, 841.9, -577, 15.6, 0, 0, 0, 841.9, -577, 11.6, 0, 0, 0, 1, 30, 30, 0, 0, '0', 'Alejandro', '2014-05-14 23:41:19', 'Oficinas', 15, 15, 'metalgate');
INSERT INTO `gates` VALUES (86, 3089, 2749.7, -2373.1, 819.6, 0, 0, 269.496, 2749.7, -2373.1, 819.6, 0, 0, 359.495, 3, 30, 15, 220, 2, '156', 'Nadr', '2014-05-15 13:19:15', 'SCOSA Gate 1', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (87, 3089, 2750.7, -2371.1, 819.6, 0, 0, 226.243, 2750.7, -2371.1, 819.6, 0, 0, 308.241, 3, 30, 15, 220, 2, '156', 'Nadr', '2014-05-15 13:20:10', 'SCOSA Gate 2', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (88, 3089, 2767.4, -2371.3, 819.6, 0, 0, 329.996, 2767.4, -2371.4, 819.6, 0, 0, 225.991, 3, 30, 15, 220, 2, '156', 'Nadr', '2014-05-15 13:20:46', 'SCOSA Gate 3', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (89, 980, -35.0137, 1064.5, 18.8, 0, 0, 270, -35.0137, 1064.5, 14, 0, 0, 270, 2, 60, 35, 0, 0, '191919', 'Dreko', '2018-04-14 14:46:25', '', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (91, 2948, 1892.8, -2446.7, 15.2, 0, 0, 270, 1892.8, -2446.7, 15.2, 0, 0, 180, 7, 10, 13, 18, 10, '59', 'Nadr', '2014-07-25 08:22:22', 'SASD', 3, NULL, NULL);
INSERT INTO `gates` VALUES (92, 10575, 1549.9, 17.4, 25.1, 0, 0, 190, 1549.9, 17.4, 21.1, 0, 0, 190, 2, 0, 10, 0, 0, 'JalluK0la', 'Keksii', '2014-05-16 00:15:34', 'Red County - Wooden House', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (93, 11102, 161.19, -22.25, 2.67, 0, 0, 180, 161.19, -22.25, 6.6, 0, 0, 179.995, 1, 45, 45, 0, 0, 'anumaz', 'TheDarK', '2014-05-17 10:17:32', 'Dennis Simmons\' garage', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (94, 985, 318.366, -1190.6, 75.671, 0, 0, 218, 315.688, -1192.59, 75.671, 0, 0, 217.996, 8, 30, 30, 0, 0, '4=2632', 'AndreC', '2015-01-19 21:29:30', 'Mansion gate', 55, 55, 'metalgate');
INSERT INTO `gates` VALUES (95, 11102, 1554.3, -27.6, 22.5, 0, 0, 0, 1554.3, -27.6, 17.5, 0, 0, 0, 2, 0, 20, 0, 0, 'JalluK0la', 'Keksii', '2014-05-17 22:48:21', 'Red County - Wooden House', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (96, 11102, 1524.3, 13.1, 23.5, 0, 0, 10.75, 1524.3, 13.1, 17.5, 0, 0, 10.75, 2, 0, 20, 0, 0, 'JalluK0la', 'Keksii', '2014-05-17 22:55:27', 'test1', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (97, 11102, 1522.6, 23.4, 23.6, 0, 0, 10.75, 1522.6, 23.4, 17.6, 0, 0, 10.75, 2, 0, 20, 0, 0, 'JalluK0la', 'Keksii', '2014-05-17 22:55:56', 'test2', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (98, 11102, 1545.5, -27.4, 22.5, 0, 0, 0, 1545.5, -27.4, 17.5, 0, 0, 0, 2, 0, 20, 0, 0, 'JalluK0la', 'Keksii', '2014-05-17 22:56:25', 'test3', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (99, 2933, 1414.01, -1649.07, 14.25, 0, 0, 91.8, 1414.2, -1657.07, 14.25, 0, 0, 91.8, 2, 30, 35, 0, 0, 'istihbarat', 'HereDUR', '2014-05-17 22:56:49', 'ÅŸirket', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (100, 11102, 1508.1, 20.5, 23.9, 0, 0, 10.9973, 1508.1, 20.5, 17.9, 0, 0, 10.9973, 2, 20, 20, 0, 0, 'JalluK0la', 'Keksii', '2014-05-17 22:57:27', 'test5', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (101, 968, 2808.39, -1468.68, 16, 0, 90, 1, 2808.39, -1468.68, 16, 0, 180, 1, 8, 0, 30, 0, 0, '170 = 7335', 'Belgica', '2014-06-01 23:56:33', 'Tay Automobiles Parking ', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (102, 1569, 444.3, 93.5, 1060.3, 0, 0, 0, 442.8, 93.5, 1060.3, 0, 0, 0, 1, 30, 30, 550, 3, '19', 'Poffy', '2014-05-20 19:21:42', 'KingEnt 1', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (103, 2773, 1451.68, 1448.45, 26.5, 0, 0, 90, 1452.68, 1448.45, 26.5, 0, 0, 0, 2, 0, 30, 731, 22, 'entrance', 'anumaz', '2014-05-22 20:45:03', 'Peacock entrance', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (104, 1569, 472.7, 89.1, 1059.3, 0, 0, 0, 471.2, 89.1, 1059.3, 0, 0, 0, 2, 30, 30, 550, 3, 'SupDean', 'Keksii', '2014-05-20 19:27:05', 'KingEnt 2', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (105, 1569, 493.7, 89.2, 1059.3, 0, 0, 0, 492.3, 89.2, 1059.3, 0, 0, 0, 2, 30, 30, 550, 3, 'SupDean', 'Keksii', '2014-05-20 19:29:52', 'KingEnt 3', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (106, 1569, 463.1, 92, 1060.3, 0, 0, 270, 463.1, 93.4, 1060.3, 0, 0, 270, 2, 30, 30, 550, 3, 'SupDean', 'Keksii', '2014-05-20 19:31:10', 'KingEnt 4', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (107, 1569, 469.2, 90.7, 1060.3, 0, 0, 270, 469.2, 90.7, 1060.3, 0, 0, 90, 2, 30, 30, 550, 3, 'SupDean', 'Keksii', '2014-05-20 19:38:12', 'KingEnt 5', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (108, 2773, 1553.8, 1541.42, 19.8, 0, 0, 0, 1552.86, 1540.45, 19.8, 0, 0, 90, 2, 20, 20, 2015, 21, 'sushi', 'FAILCAKEZ', '2014-10-20 04:32:10', 'Restaurant pole', 5, 5, NULL);
INSERT INTO `gates` VALUES (109, 3055, 1364.3, -1544.1, 14.7, 0, 0, 345.998, 1364.3, -1544.1, 18.4, 0, 0, 345.998, 3, 20, 20, 0, 0, '156', 'Maxime', '2014-10-21 15:31:38', 'Court', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (110, 1557, 1458.1, 1461.3, 26, 0, 0, 90, 1458.1, 1461.3, 26, 0, 0, 180, 2, 30, 30, 731, 22, 'pcprivate', 'Rilind', '2014-05-22 20:49:55', 'ElizabethStarks', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (111, 1557, 1458.1, 1464.3, 26, 0, 0, 270, 1458.1, 1464.3, 26, 0, 0, 180, 2, 30, 30, 731, 22, 'pcprivate', 'Rilind', '2014-05-22 20:50:53', 'ElizabethStarks', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (112, 2634, 1526, 1333.67, 12, 0, 0, 180, 1526.8, 1332.6, 12, 0, 0, 90, 8, 0, 90, 732, 24, '4=732', 'AndreC', '2014-05-22 21:03:53', 'Peacock vault', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (113, 1495, 1532.3, 1330.3, 10.3, 0, 0, 90, 1532.3, 1330.3, 10.3, 0, 0, 0, 2, 30, 30, 732, 24, 'test', 'anumaz', '2014-05-22 21:08:56', 'Peacock vault 1', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (114, 1495, 1532.4, 1325.8, 10.3, 0, 0, 90, 1532.4, 1325.8, 10.3, 0, 0, 0, 2, 30, 30, 732, 24, 'test', 'anumaz', '2014-05-22 21:10:21', 'Peacock vault 2', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (115, 1495, 1532.4, 1321.2, 10.3, 0, 0, 90, 1532.4, 1321.2, 10.3, 0, 0, 0, 2, 30, 30, 732, 24, 'test', 'anumaz', '2014-05-22 21:10:45', 'Peacock vault 3', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (116, 1495, 1532.4, 1316.5, 10.3, 0, 0, 90, 1532.4, 1316.5, 10.3, 0, 0, 0, 2, 30, 30, 732, 24, 'test', 'anumaz', '2014-05-22 21:11:11', 'Peacock vault 4', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (117, 8673, -87.3, -1126.2, -5, 0, 0, 70.5, -87.3, -1126.2, -5, 0, 0, 70.5, 2, 0, 300, 0, 0, 'rshaul', 'Nadr', '2014-06-08 18:39:32', 'RS HAUL', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (118, 3037, -401.5, -1443.2, 26.9, 0, 0, 90, -401.5, -1445.6, 30, 0, 90, 90, 2, 0, 40, 0, 0, 'niggerhatinme', 'CharChar', '2015-01-25 10:53:39', 'FCRG', 10, 10, 'metalgate');
INSERT INTO `gates` VALUES (119, 980, -483.6, -562.8, 27.1, 0, 0, 179.997, -475.6, -562.8, 27.1, 0, 0, 179.997, 1, 0, 50, 0, 0, '0', 'Alejandro', '2014-05-31 02:19:57', 'Flint County DragTrack1', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (120, 2930, 1913.8, -2449.9, 16.6, 0, 0, 2, 1913.8, -2448.3, 16.6, 0, 0, 0.25, 3, 30, 20, 1806, 5, '64 112', 'Nadr', '2014-07-31 18:18:50', 'San Andreas County Jail', 3, NULL, 'metalgate');
INSERT INTO `gates` VALUES (121, 1553, 2222.2, -1230.7, 24.2, 0, 0, 0, 2220.9, -1229.4, 24.2, 0, 0, -90, 8, 0, 30, 0, 0, '170=65891', 'Belgica', '2014-07-31 18:45:30', 'mabako1', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (122, 3115, 709.108, -512.692, 5.36875, 0, 0, 0, 709.108, -512.692, -21.0687, 0, 0, 0, 2, 0, 150, 0, 0, '106', 'AlcatraZ', '2014-08-11 21:28:35', 'mittim', 10, 10, NULL);
INSERT INTO `gates` VALUES (123, 975, 1092.3, -628.4, 111.8, 0, 14, 353.25, 1091.6, -628.4, 108, 0, 14, 353.25, 10, 25, 25, 0, 0, 'Almeida', 'Lewis', '2015-01-29 20:48:13', 'Almeida House Gate', 10, 10, 'metalgate');
INSERT INTO `gates` VALUES (124, 968, 1578.8, 711.1, 10.6, 1, 270, 270, 1578.8, 711.1, 10.6, 1, 180, 270, 7, 30, 30, 0, 0, '8', 'Alejandro', '2014-09-12 06:07:09', 'PD-SD training grounds', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (125, 980, 984.6, -1585.1, 15.3, 0, 0, 0, 984.6, -1585.1, 9.7, 0, 0, 0, 8, 35, 30, 0, 0, '170=556847', 'Belgica', '2014-09-26 18:34:10', 'Panopticon Avenue Garage', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (126, 2774, 1101.3, -630, 102.1, 0, 0, 0, 1101.3, -630, 102.1, 0, 0, 0, 10, 25, 25, 0, 0, 'Almeida', 'Lewis', '2015-01-29 20:50:18', 'Almeida House', 10, 10, NULL);
INSERT INTO `gates` VALUES (127, 3037, -402.3, -1443.4, 28.2, 0, 0, 90, -402.3, -1445.6, 30, 0, 90, 90, 2, 0, 40, 0, 0, 'niggerhatinme', 'CharChar', '2015-01-25 10:54:05', 'FCRG', 10, 10, 'metalgate');
INSERT INTO `gates` VALUES (128, 4084, -2104.04, -2404.82, 32.24, 0, 0, 321, -2104.04, -2404.82, 35.62, 0, 0, 321, 10, 0, 40, 0, 0, 'bratva', 'BrukONE', '2015-01-25 18:39:29', 'Bratva', 15, 15, 'metalgate');
INSERT INTO `gates` VALUES (129, 971, 923.55, -1216.5, 17.7, 0, 0, 90, 923.2, -1216.2, 11.4, 0, 0, 90.2, 10, 60, 25, 0, 0, 'VinewoodGardens', 'Err0r', '2014-06-18 06:56:59', 'Gated Community in Vinewood', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (130, 971, 923.55, -1226.3, 17.7, 0, 0, 90, 923.3, -1226.8, 11.4, 0, 0, 270.25, 10, 50, 25, 0, 0, 'VinewoodGardens', 'Mirazoka', '2014-06-18 06:59:11', 'Gated Community in Vinewood', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (131, 2948, 1890.9, -2446.7, 15.2, 0, 0, 90, 1890.9, -2446.7, 15.2, 0, 0, 180, 7, 10, 13, 18, 10, '59', 'Nadr', '2014-07-25 08:24:45', 'SASD', 3, NULL, NULL);
INSERT INTO `gates` VALUES (132, 2930, 1917, -2462.4, 15.2, 0, 0, 270, 1915.4, -2462.4, 15.2, 0, 0, 270, 7, 0, 13, 18, 10, '59', 'Nadr', '2014-07-25 08:26:27', 'SASD', 2, NULL, 'metalgate');
INSERT INTO `gates` VALUES (133, 2930, 1912.5, -2462.4, 15.2, 0, 0, 270, 1910.9, -2462.4, 15.2, 0, 0, 270, 7, 0, 13, 18, 10, '59', 'Nadr', '2014-07-25 08:28:06', 'SASD', 2, NULL, 'metalgate');
INSERT INTO `gates` VALUES (134, 1569, 1615.07, 1569.4, 9.9, 0, 0, 0, 1615.07, 1569.4, 9.9, 0, 0, 90, 3, 40, 20, 6, 24, '86', 'Lewis', '2014-06-12 00:32:57', 'LSN Door', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (135, 1536, 1420.5, 1394.8, 12.3, 0, 0, 270, 1420.5, 1394.8, 12.3, 0, 0, 347.061, 3, 35, 18, 785, 2, '64', 'Ron', '2014-06-12 23:20:58', 'OCI Main door', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (136, 14843, 1432, 1418.2, 15, 0, 0, 0, 1433.5, 1418.2, 15, 0, 0, 0, 3, 30, 30, 785, 2, '64', 'Theno', '2014-06-12 23:21:19', 'OCI Cell door', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (137, 971, 2071.3, -2533.8, 25.7, 0, 0, 90, 2071.3, -2525, 25.7, 0, 0, 90, 1, 30, 30, 1123, 56, 'Metro - I', 'GameStar', '2014-06-13 02:04:15', 'PD Metro Garage', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (138, 3089, 1810.07, -2499.68, 13.888, 0, 0, 90, 1810.07, -2499.68, 13.888, 0, 0, 180, 1, 20, 10, 1529, 23, 'Metro - I', 'GameStar', '2014-06-13 02:16:50', 'Metro Int Door 1', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (139, 3089, 1810.07, -2509.68, 13.899, 0, 0, 90, 1810.07, -2509.68, 13.899, 0, 0, 180, 1, 20, 10, 1529, 23, 'Metro - I', 'GameStar', '2014-06-13 02:22:54', 'Metro Int Door 2', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (140, 3089, 1799.59, -2478.67, 13.89, 0, 0, 0, 1799.59, -2478.67, 13.89, 0, 0, -90, 1, 20, 10, 1529, 23, 'Metro - I', 'GameStar', '2014-06-13 02:24:44', 'Metro Int Door 3', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (141, 11313, 1574.1, 1582.6, 20.1, 0, 0, 90, 1574, 1584.7, 21.584, 0, -90, 90, 7, 0, 30, 1220, 25, '56', 'AndreC', '2014-06-14 20:22:16', 'Cargo Group Interior', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (142, 969, 1284.98, -1609.41, 12.71, 0, 0, 270, 1284.98, -1617.38, 12.71, 0, 0, 270, 10, 0, 40, 0, 0, 'democrats', 'BrukONE', '2015-01-06 22:10:08', 'Democratic Buildings', 15, 15, 'metalgate');
INSERT INTO `gates` VALUES (143, 2930, 923.6, -1209.1, 18.6, 0, 0, 0, 923.6, -1209.1, 18.6, 0, 0, 260, 10, 45, 15, 0, 0, 'VinewoodGardens', 'Mirazoka', '2014-06-18 07:13:58', 'Gated Community in Vinewood  - Foot Entrance', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (144, 2930, 923.53, -1209.1, 18.6, 0, 0, 180, 923.53, -1209.1, 18.6, 0, 0, 180, 10, 0, 0, 0, 0, 'VinewoodGardens', 'Mirazoka', '2014-06-18 07:15:27', 'Gated Community in Vinewood - Null', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (145, 988, 1564.4, -2422.56, 17.5078, 0, 0, 0, 1564.4, -2422.56, 13.5078, 0, 0, 0, 2, 0, 100, 186, 47, '0539', 'AlcatraZ', '2014-08-11 21:47:32', 'Kafkaflar dÃ¶vÃ¼ÅŸÃ¼', 100, 100, 'metalgate');
INSERT INTO `gates` VALUES (146, 988, 1561.5, -2419.56, 17.5078, 0, 0, -90, 1561.5, -2419.56, 13.5078, 0, 0, -90, 2, 0, 100, 186, 47, '0539', 'AlcatraZ', '2014-08-11 21:54:54', 'Kafesler dÃ¶vÃ¼ÅŸÃ¼', 100, 100, 'metalgate');
INSERT INTO `gates` VALUES (147, 1569, -2223.1, 135.4, 1034.4, 0, 0, 91.999, -2223.1, 135.4, 1034.4, 0, 0, 181.994, 2, 30, 30, 414, 6, 'Snipes316', 'Belgica', '2014-06-26 20:21:06', 'Vinewood Pawns - Interior', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (148, 2930, 1512.84, 1497.22, 25.9, 0, 0, 0, 1512.84, 1497.22, 25.9, 0, 0, 270, 2, 30, 30, 993, 29, 'IHMC', 'DutchLars', '2014-07-01 17:49:35', 'IHMC Club House ', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (149, 2933, 2446.6, -1461.2, 24.7, 0, 0, 270, 2449, -1461.2, 27.45, 90, 0, 269.995, 2, 0, 30, 0, 0, '199', 'Papyrus', '2014-07-01 18:46:01', 'CarWash Front', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (150, 988, 2506.9, -1457.6, 23.9, 0, 0, 90, 2506.9, -1467.1, 23.9, 0, 0, 90, 2, 0, 30, 0, 0, '199', 'Dionysos', '2014-07-01 18:49:09', 'CarWash Back Right', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (151, 988, 2506.8, -1463, 23.9, 0, 0, 90, 2506.8, -1467.1, 23.9, 0, 0, 90, 2, 0, 30, 0, 0, '199', 'Dionysos', '2014-07-01 18:50:13', 'Carwash Back Left', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (152, 3095, 2457.6, -1461.3, 27.1, 0, 0, 0, 2457.8, -1461.2, 24, 0, 0, 0, 2, 0, 100, 0, 0, '241996a', 'Belgica', '2014-07-01 18:51:22', 'Crusher', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (153, 1569, -62.57, 129.31, 1007.2, 0, 0, 90, -62.57, 129.31, 1007.2, 0, 0, 180, 7, 30, 20, 1614, 3, '1 or 59', 'Nadr', '2014-11-29 22:13:45', 'Training Grounds', 4, NULL, NULL);
INSERT INTO `gates` VALUES (154, 1553, 2097.3, -1310.8, 24.2, 0, 0, 0, 2099.4, -1310.8, 24.2, 0, 0, 0, 5, 0, 30, 0, 0, 'trelementra', 'Violent', '2014-07-06 17:34:11', '2, Belview Road2', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (155, 2930, 1908, -2462.4, 15.2, 0, 0, 270, 1906.4, -2462.4, 15.2, 0, 0, 270, 7, 0, 13, 18, 10, '59', 'Nadr', '2014-07-25 08:30:09', 'SASD', 2, NULL, 'metalgate');
INSERT INTO `gates` VALUES (156, 2930, 1913.8, -2449.9, 16.6, 0, 0, 2, 1913.8, -2448.3, 16.6, 0, 0, 0.25, 7, 0, 13, 18, 10, '59', 'Nadr', '2014-07-25 08:31:49', 'SASD', 2, NULL, 'metalgate');
INSERT INTO `gates` VALUES (157, 3037, -261.6, -2169.4, 30.3, 0, 0, 56, -261.6, -2169.4, 26.1, 0, 0, 55.997, 7, 30, 20, 0, 0, '59', 'Nadr', '2014-11-10 06:03:09', 'SAHP Gate 1', 7, 9, 'metalgate');
INSERT INTO `gates` VALUES (158, 974, 1896.5, -2446.6, 19.1, 0, 0, 0, 1896.5, -2446.6, 20.3, 0, 0, 0, 7, 0, 30, 18, 10, '59', 'Nadr', '2014-07-25 09:55:24', 'SASD', 5, NULL, 'metalgate');
INSERT INTO `gates` VALUES (159, 10184, 1905, -2428.9, 16.9, 0, 0, 357.995, 1905.1, -2427.9, 21.9, 0, 0, 357.995, 7, 45, 40, 2248, 21, '1 or 50 or 59', 'Nadr', '2014-12-01 07:41:27', 'PD/HP/CoSA Impound', 4, 7, 'metalgate');
INSERT INTO `gates` VALUES (160, 1553, 2225, -1230.7, 24.2, 0, 0, 0, 2226.3, -1229.4, 24.2, 0, 0, 90, 8, 0, 30, 0, 0, '170=65891', 'Belgica', '2014-07-31 18:45:54', 'mabako2', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (161, 1553, 2050.5, -1126, 24.2, 0, 0, 0, 2047.5, -1126, 24.2, 0, 0, 0, 10, 40, 40, 0, 0, 'rip187', 'Nadr', '2014-07-26 23:23:43', 'Park Avenue 1 - Glenpark', 5, 7, NULL);
INSERT INTO `gates` VALUES (162, 1553, 2053.3, -1126, 24.2, 0, 0, 0, 2056.3, -1126, 24.2, 0, 0, 0, 10, 40, 40, 0, 0, 'rip187', 'Nadr', '2014-07-26 23:25:34', 'Park Avenue 1 - Glenpark (2)', 5, 7, NULL);
INSERT INTO `gates` VALUES (164, 2930, 1918.4, -2455, 16.5, 0, 0, 90, 1916.7, -2455, 16.5, 0, 0, 90, 7, 25, 20, 18, 10, '59', 'Nadr', '2014-07-28 14:09:19', 'SASD', 3, NULL, 'metalgate');
INSERT INTO `gates` VALUES (165, 2930, 1920.1, -2455, 16.5, 0, 0, 90, 1920.1, -2455, 16.5, 0, 0, 90, 7, 25, 20, 18, 10, '59', 'Nadr', '2014-07-28 14:17:30', 'SASD', 3, NULL, 'metalgate');
INSERT INTO `gates` VALUES (166, 2930, 1914.35, -2446.8, 16.5, 0, 0, 90, 1912.7, -2446.8, 16.5, 0, 0, 90, 7, 25, 20, 18, 10, '59', 'Nadr', '2014-07-28 14:26:15', 'SASD', 3, NULL, NULL);
INSERT INTO `gates` VALUES (167, 2930, 1916, -2446.8, 16.5, 0, 0, 90, 1916, -2446.8, 16.5, 0, 0, 90, 7, 25, 20, 18, 10, '59', 'Nadr', '2014-07-28 14:30:53', 'SASD', 3, NULL, 'metalgate');
INSERT INTO `gates` VALUES (168, 2930, 1914, -2442.4, 17.8, 0, 0, 0.75, 1914, -2443.8, 17.8, 0, 0, 0.75, 3, 30, 20, 1806, 5, '64 112', 'Nadr', '2014-07-31 19:05:06', 'San Andreas County Jail', 3, NULL, 'metalgate');
INSERT INTO `gates` VALUES (169, 2930, 1914, -2440.7, 17.8, 0, 0, 0.747, 1914, -2439.3, 17.8, 0, 0, 0.747, 3, 30, 20, 1806, 5, '64 112', 'Nadr', '2014-07-31 19:05:36', 'San Andreas County Jail', 3, NULL, 'metalgate');
INSERT INTO `gates` VALUES (170, 2930, 1914, -2443.45, 19.5, 87.984, 277.122, 84.371, 1914, -2443.45, 19.5, 87.984, 277.122, 84.371, 3, 30, 20, 1806, 5, '64 112', 'Nadr', '2014-07-31 19:06:08', 'San Andreas County Jail', 3, NULL, NULL);
INSERT INTO `gates` VALUES (171, 2930, 1916.4, -2446.7, 16.6, 0, 0, 270.497, 1918, -2446.7, 16.6, 0, 0, 270.497, 3, 30, 20, 1806, 5, '64 112', 'Nadr', '2014-07-31 19:06:31', 'San Andreas County Jail', 3, NULL, 'metalgate');
INSERT INTO `gates` VALUES (172, 2930, 1914.7, -2446.7, 16.6, 0, 0, 270.494, 1914.7, -2446.7, 16.6, 0, 0, 270.494, 3, 30, 20, 1806, 5, '64 112', 'Nadr', '2014-07-31 19:06:58', 'San Andreas County Jail', 3, NULL, NULL);
INSERT INTO `gates` VALUES (173, 2930, 1920.1, -2455, 16.6, 0, 0, 270.494, 1918.5, -2455, 16.6, 0, 0, 270.494, 3, 30, 20, 1806, 5, '64 112', 'Nadr', '2014-07-31 19:08:18', 'San Andreas County Jail', 3, NULL, 'metalgate');
INSERT INTO `gates` VALUES (174, 2930, 1921.8, -2455, 16.6, 0, 0, 270.494, 1921.8, -2455, 16.6, 0, 0, 270.494, 3, 30, 20, 1806, 5, '64 112', 'Nadr', '2014-07-31 19:08:38', 'San Andreas County Jail', 3, NULL, NULL);
INSERT INTO `gates` VALUES (175, 2930, 1914.05, -2446.1, 19.5, 87.984, 277.119, 84.37, 1914.05, -2446.1, 19.5, 87.984, 277.119, 84.37, 3, 30, 20, 1806, 5, '64 112', 'Nadr', '2014-07-31 19:09:19', 'San Andreas County Jail', 3, NULL, NULL);
INSERT INTO `gates` VALUES (176, 3504, 694.8, -470.604, 11.9, 0, 0, 0, 694.8, -467.404, 11.9, 0, 0, 0, 2, 20, 20, 0, 0, '106', 'AlcatraZ', '2014-07-31 21:23:25', 'mittt', 10, 10, NULL);
INSERT INTO `gates` VALUES (177, 10154, 1911.67, -2295.73, 15.37, 0, 0, 0, 1911.67, -2295.73, 17, 0, 90, 0, 7, 30, 20, 1081, 56, '59', 'Nadr', '2014-08-02 02:43:24', 'SASD', 5, 6, 'metalgate');
INSERT INTO `gates` VALUES (178, 10154, 1911.67, -2290.2, 15.37, 0, 0, 0, 1911.67, -2290.2, 15.37, 0, 0, 0, 7, 30, 20, 1081, 56, '59', 'Maxime', '2014-08-02 02:45:24', 'SASD', 5, 6, 'metalgate');
INSERT INTO `gates` VALUES (179, 1569, 2148.2, -1415.9, 292.69, 0, 0, 0, 2148.2, -1415.9, 292.69, 0, 0, 85, 7, 25, 20, 1397, 2, '59', 'Nadr', '2014-08-02 03:17:46', 'SASD', 4, NULL, NULL);
INSERT INTO `gates` VALUES (180, 976, 1283.2, -621.8, 102, 357.75, 0.25, 31.01, 1290, -617.8, 102, 357.75, 0.25, 31.01, 1, 0, 45, 0, 0, '122', 'oKarosa', '2014-11-14 17:28:02', 'Snipes', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (181, 968, 2702.4, -2534.1, 13.3, 0, 270, 0, 2702.4, -2534.1, 13.3, 0, 182, 0, 7, 0, 30, 0, 0, '4', 'GameStar', '2014-11-10 15:35:40', 'RT Auction Lot 1', 9, 9, NULL);
INSERT INTO `gates` VALUES (182, 968, 2736.8, -2564.3, 13.3, 0, 270, 0, 2736.8, -2564.3, 13.3, 0, 182, 0, 3, 0, 30, 0, 0, '82', 'BrukONE', '2014-11-10 15:38:11', 'RT Auction Lot 2', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (183, 985, 2664.3, -2688.8, 14.4, 0, 0, 270, 2664.3, -2696.6, 14.4, 0, 0, 270, 7, 15, 30, 0, 0, '4', 'Dionysos', '2014-11-10 16:48:01', 'RT Inside Gate', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (184, 969, 1342.4, -912.1, 34.9, 0, 0, 179.995, 1335, -912.09, 34.9, 0, 0, 180, 1, 0, 30, 0, 0, '170=7636', 'GameStar', '2014-08-05 18:37:15', 'Peckers Pawnshop', 7, 7, 'metalgate');
INSERT INTO `gates` VALUES (185, 988, -265.7, -255.8, 999.8, 0, 0, 270, -265.7, -260.8, 999.8, 0, 0, 270, 2, 0, 30, 1793, 38, 'pooop', 'BrukONE', '2014-08-07 14:08:14', '37 Auto\'s Building Facility', 30, 30, 'metalgate');
INSERT INTO `gates` VALUES (186, 986, 2676, -2704.8, 14.4, 0, 0, 180, 2684, -2704.8, 14.4, 0, 0, 180, 7, 15, 30, 0, 0, '4', 'Dionysos', '2014-11-10 00:19:15', 'RT Back Gate 1', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (187, 985, 2668.1, -2704.8, 14.4, 0, 0, 180, 2660.1, -2704.8, 14.4, 0, 0, 180, 7, 15, 30, 0, 0, '4', 'Dionysos', '2014-11-10 00:20:03', 'RT Back Gate 2', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (188, 0, 2226.7, -2217.5, 12.7, 0, 0, 315.747, 2233.1, -2223.7, 12.7, 0, 0, 315.742, 0, 30, 30, 0, 0, '180', 'GameStar', '2014-12-13 22:07:57', 'saptgate', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (189, 1569, 1577.3, -1637.33, 12.54, 0, 0, 90, 1577.3, -1637.33, 12.54, 0, 0, 180, 7, 30, 20, 0, 0, '1', 'Lemonth', '2015-01-09 22:03:19', 'LSPD Side Door', 5, 0, 'metalgate');
INSERT INTO `gates` VALUES (190, 988, 1386.9, 1328.99, 21.6, 0, 0, 270, 1386.9, 1324, 21.6, 0, 0, 269.995, 2, 100, 30, 1810, 3, 'rafiko', 'Belgica', '2014-08-09 13:38:50', 'IdlewoodMall', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (191, 988, 1386.8, 1334.4, 21.6, 0, 0, 269.995, 1386.8, 1323.99, 21.6, 0, 0, 269.995, 2, 100, 30, 1810, 3, 'rafiko', 'Belgica', '2014-08-09 13:39:28', 'IdlewoodMall2', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (193, 986, 324.606, -1185.66, 75.671, 0, 0, 218.726, 326.953, -1183.72, 75.671, 0, 0, 218.721, 8, 30, 30, 0, 0, '4=2632', 'AndreC', '2015-01-19 21:31:53', '', 55, 55, 'metalgate');
INSERT INTO `gates` VALUES (194, 988, -113.5, 173.6, 1016.1, 0, 0, 88, -113.5, 179.6, 1016.1, 0, 0, 88, 2, 0, 30, 1861, 38, 'Serenity', 'Serenity', '2014-08-12 14:24:22', 'Papyrus Das Auto Garage Depo', 6, 6, 'metalgate');
INSERT INTO `gates` VALUES (196, 968, 391.6, 2553.94, 16.3, 0, 90, 0, 391.6, 2553.94, 16.11, 0, 160, 0, 2, 0, 30, 0, 0, 'detoke123z', 'Alejandro', '2014-08-14 01:11:27', 'Drag Track Bone County', 7, 7, 'metalgate');
INSERT INTO `gates` VALUES (197, 968, 427.9, 2504.4, 16.2, 0, 90, 180, 427.9, 2504.4, 16.2, 0, 160, 180, 2, 0, 30, 0, 0, 'detoke123z', 'Alejandro', '2014-08-14 01:13:31', 'Drag Track Bone County', 8, 7, 'metalgate');
INSERT INTO `gates` VALUES (198, 968, 17, 2504.6, 16.2, 355, 270, 0, 17, 2504.6, 16.11, 355, 200, 0, 2, 0, 30, 0, 0, 'detoke123z', 'Alejandro', '2014-08-14 01:19:30', 'Drag Track Bone County', 8, 7, 'metalgate');
INSERT INTO `gates` VALUES (199, 968, 17, 2484, 16.2, 355, 270, 0, 17, 2484, 16.12, 355, 200, 0, 2, 0, 30, 0, 0, 'detoke123z', 'Alejandro', '2014-08-14 01:23:05', 'Drag Track Bone County', 7, 7, 'metalgate');
INSERT INTO `gates` VALUES (200, 988, 4006.14, 1934.38, 10.9375, 0, 0, 45, 4010.14, 1938.38, 10.9375, 0, 0, 45, 8, 30, 30, 0, 0, 'F=47 OR 170=FAA access card for flyUS', 'Exciter', '2014-08-19 16:50:42', 'San Tortuguilla 2', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (201, 1495, 1652.2, -2291.4, 1276, 0, 0, 180, 1652.2, -2291.4, 1276, 0, 0, 90, 8, 0, 20, 2337, 4, 'F=47 OR 170=FAA access card for flyUS', 'Exciter', '2014-08-25 18:41:52', 'LSIA terminal - Gate C', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (202, 1495, 1673, -2291.4, 1276, 0, 0, 0, 1673, -2291.4, 1276, 0, 0, 90, 8, 0, 20, 2337, 4, 'F=47 OR 170=FAA access card for flyUS', 'Exciter', '2014-08-25 18:43:47', 'LSIA terminal - Gate D', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (203, 1495, 1694.1, -2291.2, 1276, 0, 0, 0, 1694.1, -2291.2, 1276, 0, 0, 90, 8, 0, 20, 2337, 4, 'F=47 OR 170=FAA access card for flyUS', 'Exciter', '2014-08-25 18:45:56', 'LSIA terminal - Gate E', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (204, 985, -1041.04, -587.749, 31.9592, 0, 0, 0, -1041.04, -587.749, 25, 0, 0, 0, 8, 30, 30, 0, 0, 'F=59 OR F=1 OR F=50', 'Err0r', '2014-08-29 18:22:25', 'Prison EXT gate 2', 20, 20, 'metalgate');
INSERT INTO `gates` VALUES (205, 2930, -980.615, -655.193, 34.0157, 0, 0, 270, -980.615, -655.193, 34.0157, 0, 0, 0, 8, 30, 30, 0, 0, 'F=59 OR F=1 OR F=50', 'Nadr', '2014-08-29 18:24:45', 'Prison EXT gate 3', 3, 9, 'metalgate');
INSERT INTO `gates` VALUES (206, 971, -1112.86, -677.301, 32.9681, 0, 0, 359.742, -1112.86, -677.301, 25, 0, 0, 359.742, 8, 30, 30, 0, 0, 'F=59 OR 64=prison access', 'Nadr', '2014-08-29 18:30:02', 'Prison EXT gate 4', 3, 9, 'metalgate');
INSERT INTO `gates` VALUES (207, 971, -1043.83, -744.119, 32.9681, 0, 0, 359.742, -1043.83, -744.119, 25, 0, 0, 359.742, 8, 30, 30, 0, 0, 'F=59 OR 64=prison access', 'Nadr', '2014-08-29 18:31:36', 'Prison EXT gate 5', 3, 9, 'metalgate');
INSERT INTO `gates` VALUES (208, 2930, -1071.44, -690.959, 33.6659, 0, 0, 270, -1071.44, -690.959, 33.6659, 0, 0, 0, 8, 30, 30, 0, 0, 'F=59 OR 64=prison access', 'Nadr', '2014-08-29 18:32:57', 'Prison EXT gate 6', 3, 9, 'metalgate');
INSERT INTO `gates` VALUES (209, 2930, -1023.91, -691.882, 33.6659, 0, 0, 270, -1023.91, -691.882, 33.6659, 0, 0, 0, 8, 30, 30, 0, 0, 'F=59 OR 64=prison access', 'Nadr', '2014-08-29 18:33:46', 'Prison EXT gate 7', 3, 9, 'metalgate');
INSERT INTO `gates` VALUES (210, 2930, 1498.29, 1532.13, 12.6085, 0, 0, 0, 1498.29, 1532.13, 12.6085, 0, 0, 90, 8, 30, 30, 861, 3, 'F=59 OR 64=prison access', 'Nadr', '2014-08-29 18:41:13', 'Prison INT Eating Hall 1', 3, 9, 'metalgate');
INSERT INTO `gates` VALUES (211, 2930, 1438.72, 1542.06, 12.4966, 0, 0, 0, 1438.72, 1542.06, 12.4966, 0, 0, 90, 8, 30, 30, 881, 3, 'F=59 OR 64=prison access', 'Nadr', '2014-08-29 18:43:24', 'Prison INT Christian 1', 3, 9, 'metalgate');
INSERT INTO `gates` VALUES (212, 2930, 1436.06, 1544.14, 12.4966, 0, 0, 90, 1436.06, 1544.14, 12.4966, 0, 0, 0, 8, 0, 30, 881, 3, 'F=59 OR 64=prison access', 'tomtiger11', '2014-08-29 18:44:26', 'Prison INT Christian 2', 3, 9, 'metalgate');
INSERT INTO `gates` VALUES (213, 2930, 1410.27, 1543.9, 12.4754, 0, 0, 90, 1410.27, 1543.9, 12.4754, 0, 0, 0, 8, 0, 30, 881, 3, 'F=59 OR 64=prison access', 'tomtiger11', '2014-08-29 18:45:20', 'Prison INT Christian 3', 3, 9, 'metalgate');
INSERT INTO `gates` VALUES (214, 1569, 1468.66, 1546.02, 12.4531, 0, 0, 0, 1468.66, 1546.02, 12.4531, 0, 0, 90, 7, 30, 30, 812, 3, '1', 'Luferne', '2014-08-29 18:54:06', 'Prison INT lobby 1', 3, 9, NULL);
INSERT INTO `gates` VALUES (215, 1569, 1478.45, 1551.09, 12.4531, 0, 0, 269.989, 1478.45, 1551.09, 12.4531, 0, 0, 0, 7, 30, 30, 812, 3, '1', 'Luferne', '2014-08-29 18:57:10', 'Prison INT lobby 2', 3, 9, NULL);
INSERT INTO `gates` VALUES (216, 1569, 1478.76, 1544.47, 12.4531, 0, 0, 0, 1478.76, 1544.47, 12.4531, 0, 0, 90, 7, 30, 30, 812, 3, '1', 'Luferne', '2014-08-29 18:58:40', 'Prison INT lobby 3', 3, 9, NULL);
INSERT INTO `gates` VALUES (217, 2930, 1470.93, 1516.2, 12.59, 0, 0, 270, 1470.93, 1516.2, 12.59, 0, 0, 0, 2, 30, 30, 851, 3, 'F=59', 'AlcatraZ', '2014-08-29 19:10:08', 'Prison INT visit 1', 3, 9, 'metalgate');
INSERT INTO `gates` VALUES (218, 2930, 1452.76, 1503.41, 12.5158, 0, 0, 270, 1452.76, 1503.41, 12.5158, 0, 0, 0, 2, 30, 30, 851, 3, 'F=59', 'AlcatraZ', '2014-08-29 19:14:34', 'Prison INT visit 2', 3, 9, 'metalgate');
INSERT INTO `gates` VALUES (219, 2930, 1448.36, 1503.66, 12.5158, 0, 0, 270, 1448.36, 1503.66, 12.5158, 0, 0, 0, 2, 30, 30, 851, 3, 'F=59', 'AlcatraZ', '2014-08-29 19:32:44', 'Prison INT visit 3', 3, 9, 'metalgate');
INSERT INTO `gates` VALUES (220, 2930, 1443.87, 1518.11, 12.5158, 0, 0, 180, 1443.87, 1518.11, 12.5158, 0, 0, 270, 2, 30, 30, 851, 3, 'F=59', 'AlcatraZ', '2014-08-29 19:33:36', 'Prison INT visit 4', 3, 9, 'metalgate');
INSERT INTO `gates` VALUES (221, 2930, 1434.56, 1504.29, 12.4416, 0, 0, 180, 1434.56, 1504.29, 12.4416, 0, 0, 270, 7, 30, 30, 851, 3, '1', 'Luferne', '2014-08-29 19:34:56', 'Prison INT process 1', 3, 0, 'metalgate');
INSERT INTO `gates` VALUES (222, 2930, 1432.16, 1508.2, 12.4522, 0, 0, 270, 1432.16, 1508.2, 12.4522, 0, 0, 180, 7, 30, 30, 851, 3, '11', 'Luferne', '2014-08-29 19:36:18', 'Prison INT process 2', 3, 9, 'metalgate');
INSERT INTO `gates` VALUES (223, 13817, 1483.51, 1530.3, 11.1369, 0, 0, 270, 1483.51, 1530.3, 7, 0, 0, 270, 8, 30, 30, 812, 3, 'F=59', 'Nadr', '2014-08-29 19:59:13', 'Prison INT hole 1', 3, 9, 'metalgate');
INSERT INTO `gates` VALUES (224, 13817, 1487.93, 1530.32, 11.1369, 0, 0, 270, 1487.93, 1530.32, 7, 0, 0, 270, 8, 30, 30, 812, 3, 'F=59', 'Nadr', '2014-08-29 20:00:18', 'Prison INT hole 2', 3, 9, 'metalgate');
INSERT INTO `gates` VALUES (225, 13817, 1492.44, 1530.4, 11.1369, 0, 0, 270, 1492.44, 1530.4, 7, 0, 0, 270, 8, 30, 30, 812, 3, 'F=59', 'Nadr', '2014-08-29 20:02:10', 'Prison INT hole 3', 3, 9, 'metalgate');
INSERT INTO `gates` VALUES (226, 1495, 1491.68, 1539.43, 11.175, 0, 0, 90, 1491.68, 1539.43, 11.175, 0, 0, 0, 8, 30, 30, 3, 3, 'F=59 OR 64=prison access', 'Alejandro', '2014-08-29 20:08:16', 'Prison INT lobby 4', 3, 9, 'metalgate');
INSERT INTO `gates` VALUES (227, 1495, 1497.5, 1534, 10, 0, 0, 180, 1497.5, 1534, 10, 0, 0, 90, 8, 30, 30, 812, 3, 'F=59 OR 64=prison access', 'Alejandro', '2014-08-29 20:11:34', 'Prison INT lobby 5', 3, 3, 'metalgate');
INSERT INTO `gates` VALUES (228, 3095, 709.342, -510.853, 14.569, 0, 0, 0, 709.342, -516.853, 14.569, 0, 0, 0, 2, 10, 30, 0, 0, '106', 'AlcatraZ', '2014-08-31 22:16:54', '', 10, 10, NULL);
INSERT INTO `gates` VALUES (229, 2930, 1039.2, 1224.55, 1494.7, 0, 180, 0, 1039.2, 1224.55, 1494.7, 0, 180, 270, 7, 30, 20, 3, 3, '1', 'Alejandro', '2014-09-01 01:09:14', 'Prison INT Block 1', 3, NULL, 'metalgate');
INSERT INTO `gates` VALUES (230, 2930, 1035.25, 1224.6, 1494.7, 0, 180, 0, 1035.25, 1224.6, 1494.7, 0, 180, 90, 7, 30, 20, 3, 3, '1', 'Alejandro', '2014-09-01 07:45:31', 'Prison INT Block 2', 3, NULL, 'metalgate');
INSERT INTO `gates` VALUES (231, 2930, 1027, 1249.85, 1493, 0, 0, 0, 1027, 1249.85, 1493, 0, 0, 90, 8, 0, 20, 3, 3, 'F=59 OR 64=prison access', 'Alejandro', '2014-09-01 07:54:35', 'Prison INT Block 3', 4, NULL, 'metalgate');
INSERT INTO `gates` VALUES (232, 2930, 1027, 1248.15, 1493, 0, 0, 0, 1027, 1248.15, 1493, 0, 0, 0, 8, 0, 20, 3, 3, 'F=59 OR 64=prison access', 'Alejandro', '2014-09-01 08:03:08', 'Prison INT Block 3 Spacer', 4, NULL, NULL);
INSERT INTO `gates` VALUES (233, 2930, 1027, 1256.4, 1493, 0, 0, 180, 1027, 1256.4, 1493, 0, 0, 90, 8, 0, 20, 3, 3, 'F=59 OR 64=prison access', 'Alejandro', '2014-09-01 08:09:03', 'Prison INT Block 4', 4, NULL, 'metalgate');
INSERT INTO `gates` VALUES (234, 2930, 1027.07, 1259.8, 1493, 0, 0, 0, 1027.07, 1259.8, 1493, 0, 0, 90, 7, 0, 20, 3, 3, '11', 'Alejandro', '2014-09-01 08:31:06', 'Prison INT Block 4', 4, NULL, 'metalgate');
INSERT INTO `gates` VALUES (236, 2930, 1038.94, 1261.08, 1492.98, 0, 0, 270, 1038.94, 1261.08, 1492.98, 0, 0, 90, 8, 0, 40, 3, 3, 'F=59 OR 64=prison access', 'Alejandro', '2014-09-01 10:07:09', 'Prison INT Block 5', 4, NULL, 'metalgate');
INSERT INTO `gates` VALUES (237, 3115, -407.9, 1001.7, 390.5, 0, 0, 0, -407.9, 1001.7, 369.9, 0, 0, 0, 2, 0, 100, 218, 6, 'mansack', 'Capone', '2014-09-01 20:33:42', 'Interior 218', 9.9, 9.9, 'metalgate');
INSERT INTO `gates` VALUES (238, 3089, 1806.87, -1374.11, 29.6, 0, 0, 0, 1806.87, -1374.11, 29.6, 0, 0, 96.75, 7, 30, 20, 14, 3, '4', 'DutchLars', '2014-09-02 01:33:48', 'Chase INT', 3, NULL, NULL);
INSERT INTO `gates` VALUES (239, 971, 263.8, -1333.4, 55.1, 0, 0.648, 216.749, 263.8, -1333.4, 47.2, 0, 0.643, 216.744, 5, 30, 20, 0, 0, '107', 'SwindLer', '2014-09-04 20:30:12', 'Lewis House', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (240, 968, 1578.8, 710.9, 10.65, 0, 90, 270, 1578.8, 710.9, 10.65, 0, 180, 270, 7, 30, 30, 0, 0, '8', 'Alejandro', '2014-09-12 06:07:33', 'PD-SD training grounds', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (241, 980, -491.6, -527.9, 26.3, 0, 0, 89.5, -496, -532.2, 26.3, 0, 0, 180.245, 1, 0, 60, 0, 0, '0', 'Alejandro', '2014-09-15 13:07:00', 'Gate to enter race track in Doriland', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (243, 3055, 2177.52, -1779.52, 14.4004, 0, 0, 90, 2177.52, -1779.52, 14.4004, 0, 0, 90, 1, 30, 20, 0, 0, '59', 'GameStar', '2015-01-28 07:31:18', 'Motel', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (244, 11327, 1481.4, 1313.1, 12.9, 0, 0, 0, 1481.4, 1313.09, 16.8, 0, 0, 0, 8, 0, 30, 822, 27, '170 = 7335', 'Belgica', '2014-12-02 21:55:43', 'Belgica', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (245, 11102, 958, -1179.1, 18.1, 0, 0, 90, 961.8, -1210.6, 16.1, 0, 0, 180, 2, 30, 30, 0, 0, '0143', 'Rilind', '2014-12-07 00:02:56', '30', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (246, 1569, 1513.8, 1348.5, 10, 0, 0, 0, 1513.8, 1348.5, 10, 0, 0, -90, 7, 20, 20, 617, 1, '1', 'tron', '2015-01-11 16:41:51', 'lsfdlobby', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (247, 975, 2453.87, 85.269, 25, 0, 0, 270, 2453.87, 85.269, 22, 0, 0, 270, 10, 10, 50, 0, 0, 'Sarah123', 'CharChar', '2015-01-21 18:01:55', '9', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (248, 968, 988.8, -1776.5, 13.97, 0, 270, 346, 988.8, -1776.5, 13.97, 0, 180, 346, 2, 0, 30, 0, 0, 'jasondanielmassivemastwine1433', 'Judge', '2014-09-18 20:55:44', 'Marina garage', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (249, 2930, 1861.4, -2461, 19.7, 0, 0, 270, 1859.8, -2461, 19.7, 0, 0, 270, 5, 30, 20, 630, 27, '', 'Lewis', '2014-09-19 23:56:57', 'LSPD Evidence', 3, NULL, 'metalgate');
INSERT INTO `gates` VALUES (250, 3049, 2173.35, -1016.54, 64.16, 0, 0, 171, 2173.35, -1016.54, 64.16, 0, 0, 252, 10, 30, 25, 0, 0, 'mk1', 'Papyrus', '2014-09-24 00:05:26', 'Papyrus Ev Gate', 5, 15, 'metalgate');
INSERT INTO `gates` VALUES (251, 17951, 100, -164.8, 3.4, 0, 0, 0, 97.9, -164.8, 4.5, 0, 267.5, 1.5, 1, 0, 25, 0, 0, 'lennox', 'TheDarK', '2014-09-27 09:05:26', 'blueberry garage', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (252, 3055, 948.059, -8.61523, 1001.15, 0, 0, 269.589, 948.059, -8.61523, 1001.15, 0, 0, 269.589, 7, 0, 0, 666, 3, '0', 'GameStar', '2015-01-28 07:33:32', 'motel', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (253, 1553, 2329, -108.4, 26, 0, 0, 179.995, 2329, -108.4, 24, 0, 0, 179.995, 10, 15, 40, 0, 0, 'Konjamani-69', 'BrukONE', '2015-01-28 15:41:46', 'Palo Gate', 10, 10, 'metalgate');
INSERT INTO `gates` VALUES (254, 3037, -279.1, -2170.5, 30.3, 0, 0, 109.747, -279.1, -2170.5, 26.1, 0, 0, 109.742, 7, 30, 20, 0, 0, '59', 'Nadr', '2014-11-10 06:03:51', 'SAHP Gate 2', 7, 9, 'metalgate');
INSERT INTO `gates` VALUES (255, 1553, 2326.2, -108.4, 26, 0, 0, 179.995, 2326.2, -108.4, 24, 0, 0, 179.995, 10, 15, 40, 0, 0, 'Konjamani-69', 'BrukONE', '2015-01-28 15:42:29', 'Palo Gate 2', 10, 10, 'metalgate');
INSERT INTO `gates` VALUES (256, 2933, 200.6, -1386.6, 148, 0, 359.25, 226, 206.8, -1380.4, 148, 0, 359.247, 226, 8, 32, 30, 1, 1, '4=1979', 'Papyrus', '2014-10-04 19:45:22', 'Richman-garage gate', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (257, 4100, 2039.4, 1452.1, 972.5, 39.998, 270.42, 359.593, 2039.4, 1452.1, 968, 39.998, 270.42, 359.593, 1, 30, 40, 2250, 10, '', 'GameStar', '2015-02-03 22:17:55', 'Metro Evidence - 1', 6, 1, NULL);
INSERT INTO `gates` VALUES (258, 4100, 2039, 1457.4, 971.2, 39.996, 270.417, 359.588, 2039, 1457.4, 968, 39.996, 270.417, 359.588, 1, 30, 40, 2250, 10, 'Metro - III', 'GameStar', '2015-02-03 22:20:46', 'Metro evidence 2', 6, NULL, NULL);
INSERT INTO `gates` VALUES (259, 16775, 1278.5, -1652.2, 16.5, 0, 0, 270, 1278.5, -1652.2, 24.4, 0, 0, 270, 7, 30, 20, 0, 0, '1', 'Rilind', '2014-10-10 19:15:54', '', 10, 10, 'metalgate');
INSERT INTO `gates` VALUES (260, 1553, 2149.7, -1230.8, 24.2, 0, 0, 180.5, 2150.7, -1229.6, 24.2, 0, 0, 107.25, 2, 30, 30, 0, 0, 'Richie', 'BlueBerry', '2014-11-26 21:42:30', 'Richard Barbero', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (261, 1553, 2146.9, -1230.8, 24.2, 0, 0, 178.75, 2146, -1229.6, 24.2, 0, 0, 252.5, 2, 30, 30, 0, 0, 'Richie', 'BlueBerry', '2014-11-26 21:43:09', 'Richard Barbero', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (262, 1569, 1635.2, -1674.2, 13.5, 0, 0, 269.25, 1635.2, -1674.2, 13.5, 0, 0, 180.497, 3, 15, 15, 0, 0, '86', 'Rilind', '2014-10-21 21:50:42', 'lsnGate', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (263, 1569, 1635.2, -1677.2, 13.5, 0, 0, 90.5, 1635.2, -1677.2, 13.5, 0, 0, 180.744, 3, 15, 15, 0, 0, '86', 'Rilind', '2014-10-21 21:51:45', 'lsnGate2', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (264, 976, 2747.9, -1182.1, 66.3, 0, 0, 90, 2747.9, -1188.4, 66.3, 0, 0, 90, 2, 50, 50, 0, 0, 'test', 'BlueBerry', '2014-10-23 18:20:49', 'Holson House', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (265, 2708, 802.3, -1390.3, 2968.4, 0, 0, 270, 802.3, -1388.9, 2968.4, 0, 0, 270, 2, 0, 30, 1846, 1, 'JalluK0la', 'Rilind', '2014-10-25 01:18:16', 'MonaMcLaughlin', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (266, 2708, 802.3, -1392.7, 2968.4, 0, 0, 270, 802.3, -1394.3, 2968.4, 0, 0, 270, 2, 0, 30, 1846, 1, 'JalluK0la', 'Rilind', '2014-10-25 01:20:03', 'MonaMcLaughlin', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (267, 3055, 1378.5, -1821, 14.4, 0, 0, 90, 1375.5, -1824, 14.4, 0, 0, 0, 2, 30, 30, 0, 0, 'apox', 'Papyrus', '2014-10-26 18:31:19', 'Rocky PershingSquare Gate', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (268, 980, 1812.8, -2071.7, 13.6, 0, 0, 270, 1812.8, -2062, 13.6, 0, 0, 270, 7, 0, 30, 0, 0, '105', 'Cybertron', '2014-10-27 23:11:16', '1', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (269, 2933, 895.9, -717.03, 107.06, 0, 347.7, 67.8, 895.92, -716.89, 105.92, 0, 347.7, 67.8, 10, 0, 15, 0, 0, 'einschtein', 'einschtein', '2014-10-29 22:49:46', '8, Palin Street', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (270, 986, 1200.72, -989.95, 44.19, 0, 0, 270, 1200.72, -984.3, 44.19, 0, 0, 270, 7, 30, 30, 0, 0, '95', 'Papyrus', '2014-12-22 03:35:22', 'Arp Motors', 44, 44, 'metalgate');
INSERT INTO `gates` VALUES (271, 986, 1250.67, -971.24, 39.56, 0, 0, 270, 1250.67, -966.7, 39.56, 0, 0, 270, 7, 30, 30, 0, 0, '95', 'Papyrus', '2014-12-22 03:35:58', 'Arp Motors', 44, 44, 'metalgate');
INSERT INTO `gates` VALUES (272, 1495, 2248.45, 168.915, 26.4, 0, 0, 180, 2248.45, 168.915, 26.4, 0, 0, 90, 8, 12, 12, 0, 0, '', 'AndreC', '2014-11-16 02:10:22', 'Jay walters palomino house', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (273, 3055, 1358, -1566.7, 14.7, 0, 0, 345.998, 1358, -1566.7, 18.6, 0, 0, 345.998, 3, 20, 20, 0, 0, '156', 'Rilind', '2014-10-31 22:16:44', 'Courts', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (274, 1569, 1543.9, 1486.4, 28.1, 0, 0, 180, 1543.9, 1486.4, 28.1, 0, 0, 90, 7, 30, 20, 2695, 21, '3', 'tomtiger11', '2015-01-17 19:01:10', 'GovDoorleft', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (275, 1569, 1540.9, 1486.4, 28.1, 0, 0, 0, 1540.9, 1486.4, 28.1, 0, 0, 90, 7, 30, 20, 2695, 21, '3', 'tomtiger11', '2015-01-17 19:02:03', 'GovDoorRight', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (276, 975, 1117.5, -1222.6, 18.6, 0, 0, 0, 1126, -1222.6, 18.6, 0, 0, 0, 7, 0, 30, 0, 0, '117', 'Violent', '2014-11-02 04:43:08', 'Creason and Creason back lot gate', 22, 22, 'metalgate');
INSERT INTO `gates` VALUES (277, 980, 2131.87, -1869.35, 13, 0, 0, 90, 2131.87, -1869.35, 9.77, 0, 0, 90, 8, 30, 30, 0, 0, '170=JohnstreetGate', 'BlueBerry', '2014-11-02 13:02:48', 'Johnstreet, back entrance', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (278, 16773, 1924.21, -2406.98, 14.21, 0, 0, 90, 1924.21, -2406.98, 8.6, 0, 0, 90, 8, 30, 30, 2140, 56, '170=PantopicanAvenueHotel', 'BlueBerry', '2014-11-02 19:44:15', 'Pantopican Avenue Hotel', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (279, 3037, 2482, -1900.74, 12.5, 0, 90, 90, 2469, -1900.74, 12.5, 0, 90, 90, 2, 20, 20, 0, 0, 'anan', 'Hattori', '2015-02-03 22:22:51', 'Nacht Wolfe', 50, 50, 'metalgate');
INSERT INTO `gates` VALUES (280, 3089, 2759.7, -2379.9, 819.6, 0, 0, 180, 2759.7, -2379.9, 819.6, 0, 0, 270, 7, 0, 20, 220, 2, '50', 'Nadr', '2014-11-04 10:23:49', 'SCoSA', 4, NULL, NULL);
INSERT INTO `gates` VALUES (281, 968, 1623.42, -1882.46, 13.25, 0, 90, 180, 1623.42, -1882.46, 13.25, 0, 165, 180, 10, 0, 30, 0, 0, 'hiroto69', 'Belgica', '2015-01-22 03:54:58', 'Next to Unity Station', 15, 15, NULL);
INSERT INTO `gates` VALUES (284, 2946, 2120.8, -2442.25, 12.658, 0, 0, 180, 2120.8, -2442.25, 12.658, 0, 0, 95, 3, 0, 30, 1637, 56, '82', 'BrukONE', '2014-11-11 17:26:07', 'RT Auction Lot Office Door', 9, 9, NULL);
INSERT INTO `gates` VALUES (285, 980, 1042.99, 806.12, -73.2, 0, 0, 0, 1042.99, 806.12, -83.2, 0, 0, 0, 8, 30, 50, 1452, 17, '170=1452', 'Belgica', '2015-01-25 19:21:10', 'gate', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (286, 988, 2044.8, 1471.1, 976, 0, 0, 270, 2044.8, 1474.5, 976, 0, 0, 270, 10, 30, 40, 2250, 10, 'Metro - III', 'Sloth', '2015-02-03 22:24:31', 'Metro evidence 4', 6, NULL, NULL);
INSERT INTO `gates` VALUES (287, 2948, 489.855, -61.04, 975.1, 0, 0, 270, 489.855, -61.04, 975.1, 0, 0, 0, 8, 0, 30, 2090, 29, '55=Whispers', 'Belgica', '2014-11-22 13:14:26', 'IntID2090', 9, 9, NULL);
INSERT INTO `gates` VALUES (288, 2988, 480, -81.8, 975.2, 0, 0, 0, 480, -81.8, 975.2, 0, 0, -90, 2, 0, 30, 2090, 29, 's14', 'Belgica', '2014-11-22 13:17:05', 'Int2090Ext', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (289, 2988, 480, -90.2, 975.2, 0, 0, 180, 480, -90.2, 975.2, 0, 0, -90, 2, 0, 30, 2090, 29, 's14', 'Belgica', '2014-11-22 13:20:22', 'Int2090Ext2', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (290, 3049, -75.9, -326.9, 6.6, 0, 0, 90, -75.9, -326.9, 2.8, 0, 0, 90, 7, 30, 40, 0, 0, '1', 'Alejandro', '2015-02-03 22:26:31', 'Gate SD 3 D SD.', 6, NULL, 'metalgate');
INSERT INTO `gates` VALUES (293, 1569, -27.96, 123.73, 1006.2, 0, 0, 0, -27.96, 123.73, 1006.2, 0, 0, 270, 7, 30, 20, 1614, 3, '1 or 59', 'Nadr', '2014-11-29 22:17:05', 'Training Grounds', 4, NULL, NULL);
INSERT INTO `gates` VALUES (294, 1569, -6.99, 123.7, 1006.2, 0, 0, 0, -6.99, 123.7, 1006.2, 0, 0, 270, 7, 30, 20, 1614, 3, '1 or 59', 'Nadr', '2014-11-29 22:20:04', 'Training Grounds', 4, NULL, NULL);
INSERT INTO `gates` VALUES (295, 4100, 2039.4, 1452.1, 972.5, 39.998, 270.42, 359.593, 2039.4, 1452.1, 968, 39.998, 270.42, 359.593, 7, 30, 40, 2247, 2, '59', 'Nadr', '2014-12-01 06:51:45', 'SAHP', 6, NULL, 'metalgate');
INSERT INTO `gates` VALUES (296, 4100, 2039, 1457.4, 971.2, 39.996, 270.417, 359.588, 2039, 1457.4, 968, 39.996, 270.417, 359.588, 7, 30, 40, 2247, 2, '59', 'Nadr', '2014-12-01 06:52:35', 'SAHP', 6, NULL, 'metalgate');
INSERT INTO `gates` VALUES (297, 2634, 2039, 1477.8, 976.7, 0, 0, 180, 2040, 1478.6, 976.7, 0, 0, 270, 7, 60, 40, 2247, 2, '59', 'Nadr', '2014-12-01 06:57:36', 'SAHP', 2, NULL, 'metalgate');
INSERT INTO `gates` VALUES (298, 988, 2044.8, 1471.1, 976, 0, 0, 270, 2044.8, 1474.5, 976, 0, 0, 270, 7, 60, 40, 2247, 2, '59', 'Nadr', '2014-12-01 07:02:16', 'SAHP', 3, NULL, 'metalgate');
INSERT INTO `gates` VALUES (299, 988, 2044.8, 1465.2, 976, 0, 0, 270, 2044.8, 1462, 976, 0, 0, 270, 7, 60, 40, 2247, 2, '59', 'Nadr', '2014-12-01 07:02:56', 'SAHP', 3, NULL, 'metalgate');
INSERT INTO `gates` VALUES (300, 988, 2031.7, 1465.4, 976, 0, 0, 90, 2031.7, 1462, 976, 0, 0, 90, 2, 60, 40, 2247, 2, 'deltaseven', 'Nadr', '2014-12-01 07:03:17', 'SAHP', 3, NULL, 'metalgate');
INSERT INTO `gates` VALUES (301, 988, 2031.7, 1471.2, 976, 0, 0, 90, 2031.7, 1474.5, 976, 0, 0, 90, 7, 60, 40, 2247, 2, '59', 'Nadr', '2014-12-01 07:03:39', 'SAHP', 3, NULL, 'metalgate');
INSERT INTO `gates` VALUES (302, 3036, 2197.95, -1001.27, 61.4, 0, 0, 339.311, 2197.95, -1001.27, 61.4, 0, 0, -106, 2, 30, 30, 0, 0, '0143', 'Rilind', '2014-12-01 10:16:52', 'Dominick Carter', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (303, 3089, 1565.6, -1674.7, 64.8, 0, 0, 270, 1565.5, -1674.7, 64.8, 0, 0, 144, 8, 30, 30, 2249, 7, 'F=50', 'dfajoe', '2014-12-02 05:46:28', 'Superior Court of San Andreas', 2, 2, NULL);
INSERT INTO `gates` VALUES (304, 3089, 1555.9, -1679.5, 64.8, 0, 0, 0, 1555.9, -1679.5, 64.8, 0, 0, 132, 8, 30, 30, 2249, 7, 'F=50', 'dfajoe', '2014-12-02 05:56:56', 'Superior Court of San Andreas', 2, 2, NULL);
INSERT INTO `gates` VALUES (305, 3089, 1583.3, -1688.3, 63.6, 0, 0, 0, 1583.3, -1688.3, 63.6, 0, 0, 110, 8, 30, 30, 2249, 7, 'F=50', 'dfajoe', '2014-12-02 05:59:19', 'Superior Court of San Andreas', 2, 2, NULL);
INSERT INTO `gates` VALUES (306, 3089, 1565.7, -1655.3, 66.2, 0, 0, 179.995, 1565.7, -1655.3, 66.2, 0, 0, 301.995, 8, 30, 30, 2249, 7, 'F=50', 'dfajoe', '2014-12-02 06:01:12', 'Superior Court of San Andreas', 2, 2, NULL);
INSERT INTO `gates` VALUES (307, 2963, 1562, -1651, 66.1, 0, 0, 90, 1559.2, -1651.1, 66.3, 0, 0, 90, 8, 30, 30, 2249, 7, 'F=50', 'dfajoe', '2014-12-02 06:02:49', 'Superior Court of San Andreas', 2, 2, 'metalgate');
INSERT INTO `gates` VALUES (308, 3089, 1569.7, -1655.3, 66.2, 0, 0, 179.995, 1569.7, -1655.3, 66.2, 0, 0, 305.995, 8, 30, 30, 2249, 7, 'F=50', 'dfajoe', '2014-12-02 06:04:12', 'Superior Court of San Andreas', 2, 2, NULL);
INSERT INTO `gates` VALUES (309, 3089, 1567.94, -1663.2, 66.2, 0, 0, 90, 1568, -1663.2, 66.2, 0, 0, 320, 8, 30, 30, 2249, 7, 'F=50', 'dfajoe', '2014-12-02 06:05:10', 'Superior Court of San Andreas', 2, 2, NULL);
INSERT INTO `gates` VALUES (310, 2774, 1084.9, -627.9, 105.8, 0, 0, 0, 1084.9, -627.9, 105.8, 0, 0, 0, 10, 25, 25, 0, 0, 'Almeida', 'Lewis', '2015-01-29 20:51:15', 'Almeida House ', 10, 10, NULL);
INSERT INTO `gates` VALUES (311, 3109, -1337.2, 932.1, 794, 0, 0, 0, -1337.2, 930.6, 794, 0, 0, 0, 10, 10, 10, 2145, 1, 'Falafel96', 'Weedex', '2014-12-07 22:05:57', 'Gate.', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (312, 2909, 2094.99, -1290.68, 23.66, 0, 0, 90, 2094.99, -1290.68, 20.66, 0, 0, 90, 5, 10, 30, 0, 0, '654321a321', 'Violent', '2014-12-19 12:51:29', '1, Belview Road', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (313, 1505, 1335.75, 1382.85, 10.3, 0, 0, 0, 1336, 1383.2, 10.3, 0, 0, -272, 2, 30, 30, 1883, 24, '1453', 'AlcatraZ', '2014-12-14 16:36:16', 'sapthqgate', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (314, 2909, 2103.51, -1290.68, 23.66, 0, 0, 90, 2103.51, -1290.68, 20.66, 0, 0, 90, 5, 20, 30, 0, 0, '654321a321', 'Violent', '2014-12-19 12:53:20', '1, Belview Road', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (315, 3089, 1867.8, -2241.4, 1359.7, 0, 0, 270, 1867.8, -2241.4, 1359.7, 0, 0, 170, 8, 20, 20, 2340, 4, 'F=47', 'Exciter', '2014-12-19 19:03:10', 'LSIA - ATC', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (316, 3089, 1735.4, -1637.6, 1521.4, 0, 0, 270, 1735.4, -1637.6, 1521.4, 0, 0, 180, 8, 20, 20, 1462, 3, '170=ClubX 150207 OR 170=ClubX 1502', 'Exciter', '2014-12-22 02:07:11', 'Club X - VIP', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (317, 1497, 2640.92, -1343.48, 1010.17, 0, 0, 90, 2640.92, -1343.48, 1010.17, 0, 0, 0, 2, 0, 50, 2219, 1, 's14', 'Err0r', '2014-12-23 20:54:58', '2219', 5, 6, NULL);
INSERT INTO `gates` VALUES (318, 3055, 2595.7, -1320.5, 997.9, 0, 0, 0, 2595.7, -1320.5, 994.67, 0, 0, 0, 2, 0, 50, 2219, 1, 's14', 'Err0r', '2014-12-23 21:10:07', '2219', 15, 20, NULL);
INSERT INTO `gates` VALUES (319, 3055, 2608.41, -1324.5, 997.9, 0, 0, 90, 2608.41, -1324.5, 994.66, 0, 0, 90, 2, 0, 50, 2219, 1, 's14', 'Err0r', '2014-12-23 21:11:33', '2219', 5, 7, NULL);
INSERT INTO `gates` VALUES (320, 2988, 2630.9, -1321.05, 1003.8, 0, 0, 90, 2630.9, -1321.05, 1003.8, 0, 0, 150, 2, 0, 50, 2219, 1, 's14', 'Err0r', '2014-12-23 21:15:11', '2219', 5, 4, NULL);
INSERT INTO `gates` VALUES (321, 1497, 2641.25, -1324.96, 1003.84, 0, 0, 270, 2641.25, -1324.96, 1003.84, 0, 0, 0, 2, 0, 50, 2219, 1, 's14', 'Err0r', '2014-12-23 21:17:31', '2219', 3, 3, NULL);
INSERT INTO `gates` VALUES (322, 1497, 2641.27, -1327.97, 1003.84, 0, 0, 90, 2641.28, -1327.97, 1003.84, 0, 0, 0, 2, 0, 50, 2219, 1, 's14', 'Err0r', '2014-12-23 21:18:41', '2219', 5, 1, NULL);
INSERT INTO `gates` VALUES (323, 1497, 2628.81, -1324.25, 997.5, 0, 0, 90, 2628.81, -1324.25, 997.5, 0, 0, 180, 2, 0, 50, 2219, 1, 's14', 'Err0r', '2014-12-23 21:22:50', '2219', 4, 4, NULL);
INSERT INTO `gates` VALUES (324, 1497, 2628.78, -1321.24, 997.5, 0, 0, 270, 2628.78, -1321.24, 997.5, 0, 0, 180, 2, 0, 50, 2219, 1, 's14', 'Err0r', '2014-12-23 21:24:04', '2219', 5, 5, NULL);
INSERT INTO `gates` VALUES (325, 1497, 2640.89, -1340.47, 1010.17, 0, 0, 270, 2640.89, -1340.47, 1010.17, 0, 0, 0, 2, 0, 50, 2219, 1, 's14', 'Err0r', '2014-12-23 21:31:34', '2219', 5, 5, NULL);
INSERT INTO `gates` VALUES (326, 976, 2609, -1332.23, 1010.13, 0, 0, 0, 2609, -1332.23, 1006, 0, 0, 0, 2, 0, 50, 2219, 1, 's11', 'CharChar', '2014-12-24 02:28:57', 's14', 90, 5, NULL);
INSERT INTO `gates` VALUES (327, 985, 1081.57, -1301.25, 79.0625, 0, 0, 90, 1081.57, -1292.56, 79.0625, 0, 0, 90, 7, 30, 22, 1060, 1, '1', 'AndreC', '2014-12-24 03:58:13', 'LSPD Impound Gate', 50, 50, 'metalgate');
INSERT INTO `gates` VALUES (328, 3089, 450.3, 188.05, 1016.8, 0, 0, 90, 450.3, 188.05, 1016.8, 0, 0, 10, 7, 30, 20, 2380, 5, '59', 'Nadr', '2014-12-24 06:23:08', 'SAHP Meeting', 2, NULL, NULL);
INSERT INTO `gates` VALUES (329, 3055, 1564, -1609.96, 13.3828, 0, 0, 90, 1560.87, -1610.09, 17.02, 99, 0, 90, 7, 40, 17, 0, 0, '1', 'Maxime', '2014-12-24 06:23:51', 'PD impound', 14, 14, 'metalgate');
INSERT INTO `gates` VALUES (330, 3089, 450.4, 176.57, 1016.8, 0, 0, 90, 450.4, 176.57, 1016.8, 0, 0, 170, 7, 30, 20, 2380, 5, '59', 'Nadr', '2014-12-24 06:24:03', 'SAHP Interrogation', 2, 0, NULL);
INSERT INTO `gates` VALUES (331, 2930, 463.8, 179.7, 1018.08, 0, 0, 270, 465.3, 179.7, 1018.08, 0, 0, 270, 7, 30, 30, 2380, 5, '59', 'Nadr', '2014-12-24 06:26:20', 'SAHP Cell', 2, NULL, 'metalgate');
INSERT INTO `gates` VALUES (332, 3089, 470, 201.7, 1028.6, 0, 0, 90, 470, 201.7, 1028.6, 0, 0, 170, 7, 30, 20, 2380, 5, '59', 'Nadr', '2014-12-24 06:27:10', 'SAHP Rec Room', 2, NULL, NULL);
INSERT INTO `gates` VALUES (333, 3089, 449.775, 175.4, 1016.64, 0, 0, 180, 449.775, 175.4, 1016.64, 0, 0, 100, 7, 30, 20, 2380, 5, '59', 'Nadr', '2014-12-24 06:28:00', 'SAHP Private Interrogation', 2, NULL, NULL);
INSERT INTO `gates` VALUES (334, 3089, 450.3, 191.5, 1016.8, 0, 0, 90, 450.3, 191.5, 1016.8, 0, 0, 170, 7, 30, 20, 2380, 5, '59', 'Nadr', '2014-12-24 06:28:48', 'SAHP Side', 2, NULL, NULL);
INSERT INTO `gates` VALUES (335, 3089, 458.3, 191.5, 1016.8, 0, 0, 90, 458.3, 191.5, 1016.8, 0, 0, 10, 7, 30, 20, 2380, 5, '59', 'Nadr', '2014-12-24 06:29:23', 'SAHP Main', 2, NULL, NULL);
INSERT INTO `gates` VALUES (336, 3089, 462.24, 176.4, 1016.8, 0, 0, 0, 462.24, 176.4, 1016.8, 0, 0, 280, 7, 30, 20, 2380, 5, '59', 'Nadr', '2014-12-24 06:29:45', 'SAHP Back', 2, NULL, NULL);
INSERT INTO `gates` VALUES (337, 3089, 480.4, 191.4, 1016.8, 0, 0, 180, 480.4, 191.4, 1016.8, 0, 0, 100, 7, 30, 20, 2380, 5, '59', 'Nadr', '2014-12-24 06:30:19', 'SAHP Office', 2, NULL, NULL);
INSERT INTO `gates` VALUES (338, 3089, 449.4, 182.8, 1028.5, 0, 0, 90, 449.4, 182.8, 1028.5, 0, 0, 170, 7, 30, 20, 2380, 5, '59', 'Nadr', '2014-12-24 06:30:57', 'SAHP Cubicles', 2, NULL, NULL);
INSERT INTO `gates` VALUES (339, 3089, 445.48, 189.2, 1028.6, 0, 0, 180, 445.48, 189.2, 1028.6, 0, 0, 100, 7, 30, 20, 2380, 5, '59', 'Nadr', '2014-12-24 06:31:24', 'SAHP Duty', 2, NULL, NULL);
INSERT INTO `gates` VALUES (340, 975, 2178.06, -1918.32, 14.2, 0, 0, 180, 2171, -1918.32, 14.2, 0, 0, 180, 8, 30, 30, 0, 0, '5=2381', 'AndreC', '2014-12-25 05:25:47', 'Standards shop gate', 22, 22, 'metalgate');
INSERT INTO `gates` VALUES (341, 3475, 1084.9, -627.9, 113.2, 348, 0, 272, 1084.9, -627.9, 113.2, 348, 0, 272, 10, 25, 25, 0, 0, 'Almeida', 'Lewis', '2015-01-29 20:51:41', 'Almeida House', 10, 10, NULL);
INSERT INTO `gates` VALUES (342, 10184, 2235.3, 2457.5, -5.94, 0, 0, 180, 2235.3, 2457.5, -11, 0, 0, 180, 8, 50, 40, 2399, 0, 'F=59 AND 170=authorized', 'Nadr', '2014-12-28 07:20:59', 'SAHP Garage', 4, 7, 'metalgate');
INSERT INTO `gates` VALUES (343, 988, 1567.5, -2419.37, 17.5078, 0, 0, 90, 1567.5, -2419.37, 13.5078, 0, 0, 90, 2, 0, 100, 186, 47, '0539', 'AlcatraZ', '2014-12-26 02:23:28', 'Kafescik DÃ¶vÃ¼ÅŸÃ¼', 100, 100, 'metalgate');
INSERT INTO `gates` VALUES (344, 988, 1564.37, -2416.5, 17.5078, 0, 0, 180, 1564.37, -2416.5, 13.5078, 0, 0, 180, 2, 0, 100, 186, 47, '0539', 'AlcatraZ', '2014-12-26 02:43:38', 'Kafes DÃ¶vÃ¼ÅŸÃ¼', 100, 100, 'metalgate');
INSERT INTO `gates` VALUES (345, 1536, 1483.62, -1928.12, 290.15, 0, 0, 270, 1483.62, -1928.12, 290.15, 0, 0, 0, 2, 15, 30, 9, 1, '1907', 'Judge', '2015-01-02 19:19:12', 'Gov door', 15, 15, NULL);
INSERT INTO `gates` VALUES (346, 16775, 1500.36, -568.762, 408.413, 0, 0, 0, 1500.36, -568.762, 412.371, 0, 0, 0, 8, 0, 30, 972, 1, '5=972', 'AndreC', '2014-12-29 04:41:54', 'Creason and Creason int Garage', 15, 15, NULL);
INSERT INTO `gates` VALUES (347, 9020, 1514.6, -539.8, 427.8, 270, 180, 270, 1514.6, -539.8, 431.457, 270, 179.995, 270, 8, 0, 30, 972, 1, '5=972', 'Lemonth', '2014-12-29 04:44:27', 'Creason and creason int gate', 30, 30, 'metalgate');
INSERT INTO `gates` VALUES (348, 900, -2005.6, -1555.68, 84.8436, 0, 0, 180, -2005.6, -1555.68, 70.8436, 0, 0, 180, 2, 50, 50, 0, 0, 'orospum', 'AlcatraZ', '2014-12-31 17:00:19', '', 20, 20, NULL);
INSERT INTO `gates` VALUES (349, 8957, 2614.2, -1338.07, 1011.9, 0, 0, 270, 2614.2, -1338.07, 1007.28, 0, 0, 270, 8, 0, 30, 0, 2, '5=972', 'Weedex', '2014-12-31 17:39:22', 'Creason and Creason int Garage', 15, 15, NULL);
INSERT INTO `gates` VALUES (350, 8957, 2614.2, -1338.07, 1011.9, 0, 0, 270, 2614.2, -1338.07, 1007.28, 0, 0, 270, 10, 0, 30, 0, 2, 'xmax12', 'Weedex', '2014-12-31 17:42:36', 'House gate.', 15, 15, 'alarmbell');
INSERT INTO `gates` VALUES (351, 3109, 2169.2, -1435.1, 299.2, 0, 0, 0, 2169.2, -1435.1, 299.2, 0, 0, -90, 10, 30, 40, 2138, 2, 'Metro - I', 'Sloth', '2015-01-02 02:03:12', 'LSPD Metro Staircase', 5, NULL, NULL);
INSERT INTO `gates` VALUES (352, 971, 2093.85, -2590.1, 26.46, 0, 0, 90, 2093.85, -2590.1, 17, 0, 0, 90, 10, 0, 20, 1123, 56, 'Metro - II', 'Sloth', '2015-01-02 02:25:53', 'Metro SWAT garage', 10, 10, NULL);
INSERT INTO `gates` VALUES (353, 16775, 629.7, -1115.8, 44.5, 0, 180, 213.25, 629.7, -1115.8, 41.7, 0, 180, 213.25, 10, 0, 30, 0, 0, 'gottschalk', 'BrukONE', '2015-01-02 02:47:32', 'MisterClane\'s house', 15, 15, 'metalgate');
INSERT INTO `gates` VALUES (354, 980, 1442.35, -1328.79, 15.2477, 0, 0, 270, 1442.35, -1315.79, 15.2477, 0, 0, 270, 2, 30, 30, 0, 0, 'sehitlerolmez', 'Papyrus', '2015-01-02 02:52:14', 'kirtay gate', 20, 20, 'metalgate');
INSERT INTO `gates` VALUES (355, 3276, -1289.8, -2160, 23.299, 0, 13.236, 160.223, -1289.8, -2160, 20.29, 0, 13.236, 160.223, 2, 0, 30, 0, 0, '1907', 'Judge', '2015-01-02 11:57:30', '', 20, 20, 'metalgate');
INSERT INTO `gates` VALUES (356, 989, 855.1, -894.3, 65.4, 0, 0, 70, 849.6, -890.5, 65.4, 2, 0, 76, 2, 30, 30, 0, 0, 'singhisking', 'Manjot', '2015-01-02 22:35:46', 'ManjotPrivate', 10, 10, 'metalgate');
INSERT INTO `gates` VALUES (357, 1536, -37.5, -99.91, 1014.32, 0, 0, 270, -37.5, -99.91, 1014.32, 0, 0, 173, 10, 45, 15, 2517, 22, 'REALTY', 'CharChar', '2015-01-03 09:49:23', 'Interior door', 5, 5, 'metalgate');
INSERT INTO `gates` VALUES (359, 11319, 1519.69, -507.07, 407.57, 0, 0, 0, 1519.69, -507.07, 413.03, 0, 0, 0, 8, 0, 55, 972, 1, '5=972', 'Lemonth', '2015-01-03 21:30:43', 'C&C Paint Booth', 12, 15, NULL);
INSERT INTO `gates` VALUES (360, 1497, 2618.8, -1332.08, 1013.7, 0, 0, 0, 2618.8, -1332.08, 1013.7, 0, 0, 90, 10, 0, 15, 2253, 3, 'S14', 'Kamil3052', '2015-01-04 02:24:33', '-', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (361, 3117, 2611.6, -1331.1, 1013.6, 0, 0, 0, 2611.6, -1331.1, 1010.1, 0, 0, 0, 10, 0, 15, 2253, 3, 'S14', 'Kamil3052', '2015-01-04 02:25:52', '-', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (362, 2909, -367.97, 1580.99, 76.32, 0, 0, 225, -362.44, 1575.38, 76.32, 0, 0, 225, 7, 37, 30, 0, 0, '1', 'Alejandro', '2015-01-28 19:30:53', 'Sat Gate', 15, 15, 'metalgate');
INSERT INTO `gates` VALUES (364, 8378, 2009.3, -2388, 22.5, 0, 0, 90, 2009.3, -2388, 3.1, 0, 0, 90, 7, 0, 100, 0, 0, '47', 'anumaz', '2015-01-04 21:57:12', 'LSIA Hangar A', 15, 15, 'alarmbell');
INSERT INTO `gates` VALUES (365, 1553, 2470.5, 121.8, 26.7, 0, 0, 0, 2472.8, 121.7, 26.7, 0, 0, 0, 8, 60, 30, 0, 0, '4=2315', 'Lemonth', '2015-01-07 00:19:17', '22. Clean St.', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (366, 2933, 1924.56, -2427.8, 14.25, 0, 0, 90, 1924.56, -2463.5, 14.25, 0, 0, 90, 10, 30, 40, 2167, 56, 'TheMonopoly', 'Lemonth', '2015-01-09 05:07:59', 'The Monopoly', 5, 5, 'metalgate');
INSERT INTO `gates` VALUES (367, 2933, 1924.56, -2427.8, 14.25, 0, 0, 90, 1924.56, -2436.5, 14.25, 0, 0, 90, 7, 30, 40, 693, 56, '1', 'tomtiger11', '2015-01-05 20:56:56', 'CTUGate', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (368, 1495, 522.63, 68.7, 1043.49, 0, 0, 270, 522.63, 68.7, 1043.49, 0, 0, 170, 8, 50, 15, 2580, 24, '4=2580', 'Lemonth', '2015-01-06 22:17:17', 'Titan Protection and Consulting Garage', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (369, 969, 875.6, -1046.61, 24.3, 0, 0, 179, 871.6, -1046.44, 24.3, 0, 0, 179, 8, 60, 30, 0, 0, '4=2580', 'BrukONE', '2015-01-06 22:42:50', 'Titan Protection and Consulting', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (370, 1553, 2467.7, 121.8, 26.7, 0, 0, 0, 2465.5, 121.8, 26.7, 0, 0, 0, 8, 60, 30, 0, 0, '4=2315', 'Lemonth', '2015-01-07 00:19:43', '22. Clean St.', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (371, 16773, 530.7, 87.63, 1047.42, 0, 0, 270, 530.7, 87.63, 1051.42, 0, 0, 270, 8, 60, 30, 2580, 24, '4=2580', 'Lemonth', '2015-01-07 00:41:03', 'Titan Protection and Consulting Garage', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (372, 16773, -3.1, -268.2, 8.4, 0, 0, 180, -3, -264.5, 10.4, 270, 0, 180, 7, 0, 50, 0, 0, '1', 'Alejandro', '2015-01-07 01:47:25', 'Blueberry Factory parking', 10, NULL, 'metalgate');
INSERT INTO `gates` VALUES (373, 968, -1182.3, 7.9, 2486.2, 0, 90, 0, -1182.3, 7.90039, 2486.2, 0, 180, 0, 10, 0, 30, 1061, 2, 'Monarch Staff', 'Kamil3052', '2015-01-10 21:32:01', 'Monarch Gate', 2, NULL, NULL);
INSERT INTO `gates` VALUES (374, 971, 1098.79, -1727.4, 1145.9, 0, 0, 90, 1098.79, -1722.2, 1145.9, 0, 0, 90, 10, 0, 30, 1924, 24, 'ikeia', 'BrukONE', '2015-01-11 00:35:30', 'IKEA Interior gate', 15, 15, 'metalgate');
INSERT INTO `gates` VALUES (375, 1569, 1512.3, 1352.9, 10, 0, 0, 90, 1512.3, 1352.9, 10, 0, 0, 0, 7, 20, 20, 617, 1, '1', 'Luferne', '2015-01-11 16:44:07', 'lsfdoffice1', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (376, 1569, 1512.3, 1361, 10, 0, 0, 90, 1512.3, 1361, 10, 0, 0, 0, 7, 20, 20, 617, 1, '1', 'Luferne', '2015-01-11 16:47:45', 'lsfdoffice2', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (377, 1569, 1522.1, 1353.2, 10, 0, 0, 0, 1522.1, 1353.2, 10, 0, 0, -90, 7, 20, 20, 617, 1, '1', 'Luferne', '2015-01-11 16:50:00', 'lsfdacademy', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (378, 1569, 1526.5, 1348.5, 10, 0, 0, 0, 1526.5, 1348.5, 10, 0, 0, -270, 7, 20, 20, 617, 1, '1', 'Luferne', '2015-01-11 16:52:05', 'lsfdlounge', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (379, 975, 2544.12, 11.79, 25.33, 0, 0, 90, 2543.98, 20.72, 25.33, 0, 0, 90, 8, 60, 35, 0, 0, '4=2674', 'Lemonth', '2015-01-11 23:33:23', '35. Crest St. Palamino', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (380, 969, 1937.4, -2039.7, 12.5, 0, 0, 180, 1945.7, -2039.7, 12.5, 0, 0, 180, 2, 30, 30, 0, 0, 'hba', 'Rilind', '2015-01-13 01:15:59', '1', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (381, 969, 1929, -2008.3, 12.5, 0, 0, 0, 1936.2, -2008.3, 12.5, 0, 0, 0, 2, 30, 30, 0, 0, 'hba', 'Rilind', '2015-01-13 01:16:31', '2', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (382, 969, -386.3, -1054.8, 58.1, 0, 0, 300, -389.6, -1047.3, 58.1, 0, 0, 300, 8, 60, 20, 0, 0, '4=510', 'Lemonth', '2015-01-14 02:39:04', 'The Ranch - Flint County (#510)', 5, 15, 'metalgate');
INSERT INTO `gates` VALUES (383, 2927, 1434, -2445.1, 13.7703, 0, 0, 0, 1436, -2445.1, 13.7703, 0, 0, 0, 2, 20, 30, 127, 38, 'SkennyMT', 'AlcatraZ', '2015-01-14 05:24:24', 'Skenny Motors', NULL, NULL, NULL);
INSERT INTO `gates` VALUES (384, 0, 2496.5, -1742.3, 12.5469, 0, 0, 90, 2496.5, -1742.3, 10.5469, 0, 0, 90, 2, 0, 30, 0, 0, 'galerimbe', 'GameStar', '2015-01-14 05:29:46', '', 20, 20, 'metalgate');
INSERT INTO `gates` VALUES (387, 976, 197.9, -316.9, 0.6, 0, 0, 276, 197.9, -316.9, -3, 0, 0, 275.999, 1, 0, 30, 0, 0, '', 'Alejandro', '2015-01-29 00:26:05', 'Final Construction', 15, 15, 'metalgate');
INSERT INTO `gates` VALUES (388, 3475, 1099.7, -629.2, 110.5, 12, 0, 84, 1099.7, -629.2, 110.5, 12, 0, 84, 10, 25, 25, 0, 0, 'Almeida', 'Lewis', '2015-01-29 20:52:02', 'Almeida House', 10, 10, NULL);
INSERT INTO `gates` VALUES (389, 2909, 1746.2, -1581.6, 13.8, 0, 0, 88.748, 1746.2, -1581.6, 10.8, 0, 0, 88.748, 10, 15, 40, 0, 0, 'babyboy', 'CharChar', '2015-01-30 12:54:54', 'Panopticon Gate', 10, 10, 'metalgate');
INSERT INTO `gates` VALUES (390, 1553, 2139.3, -1290.7, 24.2, 0, 0, 0, 2141.9, -1290.7, 24.2, 0, 0, 0, 2, 0, 30, 0, 0, '199', 'Dionysos', '2015-01-30 15:24:22', 'Jefferson house', 15, 15, 'metalgate');
INSERT INTO `gates` VALUES (391, 1553, 2136.45, -1290.7, 24.2, 0, 0, 0, 2133.65, -1290.7, 24.2, 0, 0, 0, 2, 0, 30, 0, 0, '199', 'Dionysos', '2015-01-30 15:25:12', 'Jefferson house', 15, 15, 'metalgate');
INSERT INTO `gates` VALUES (392, 10671, 29.1, 2023.52, 1040.8, 0, 0, 89.5, 29.1, 2023.5, 1038.6, 0, 0, 89.495, 1, 30, 16, 95, 3, '', 'GameStar', '2015-02-01 23:18:44', 'AccessHouse1 - 12 Grove Street', 10, 10, NULL);
INSERT INTO `gates` VALUES (393, 10671, 35.2, 2016.9, 1040.59, 0, 0, 0, 35.2, 2016.9, 1038.6, 0, 0, 0, 1, 30, 16, 95, 3, '', 'GameStar', '2015-02-01 23:21:16', 'AccessHouse2 - 12 Grove Street', 10, 10, NULL);
INSERT INTO `gates` VALUES (394, 980, 282.4, -1319.9, 55.1, 0, 0, 34.7, 282.4, -1319.9, 49.1, 0, 0, 34.7, 10, 20, 60, 0, 0, 'Botkyrka', 'CharChar', '2015-02-02 05:33:04', 'Richman Gate', 10, 10, 'metalgate');
INSERT INTO `gates` VALUES (396, 3049, -75.9, -377.6, 6.6, 0, 0, 90, -75.9, -377.6, 2.8, 0, 0, 90, 7, 30, 40, 0, 0, '1', 'Alejandro', '2015-02-03 22:27:50', 'Gate 2 D. SD', 6, 9, 'metalgate');
INSERT INTO `gates` VALUES (397, 971, -75.85, -352.8, 2.1, 0, 0, 270, -75.85, -352.8, -8, 0, 0, 270, 7, 30, 40, 0, 0, '1', 'Alejandro', '2015-02-03 22:29:55', 'Gate D. SD', 6, 9, 'metalgate');
INSERT INTO `gates` VALUES (398, 968, 122.6, -112.2, 1.5, 0, 0, 0, 122.6, -112.2, 1.5, 0, 25, 90, 7, 0, 30, 0, 0, '1', 'Alejandro', '2015-02-04 19:25:25', 'Barrier Gate SD', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (399, 1553, 2213.9, -45.1, 26.7, 0, 0, 90.246, 2213.9, -45.1, 23, 0, 0, 90.246, 10, 30, 37, 0, 0, 'babyboy', 'dfajoe', '2015-02-04 21:30:58', '', 6, 7, 'metalgate');
INSERT INTO `gates` VALUES (400, 1553, 2213.9, -47.9, 26.7, 0, 0, 90.246, 2213.9, -47.9, 23, 0, 0, 90.246, 10, 30, 37, 0, 0, 'babyboy', 'dfajoe', '2015-02-04 21:33:03', '', 6, 7, 'metalgate');
INSERT INTO `gates` VALUES (401, 2930, -141.861, 97.5, 999.51, 0, 0, 180, -141.861, 99.0634, 999.51, 0, 0, 180, 7, 40, 20, 1614, 3, '59', 'dfajoe', '2015-02-06 00:23:47', 'SAHP LV HQ', 3, 5, NULL);
INSERT INTO `gates` VALUES (402, 3037, 2025.3, -132, -1.4, 0, 0, 0, 2025.3, -132, -3.5, 0, 0, 0, 7, 75, 45, 633, 1, '59', 'Nadr', '2015-02-06 11:52:51', 'SAHP Boat Impound Bottom', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (403, 3037, 2025.3, -132, 3, 0, 0, 0, 2024.9, -132, 7.4, 0, 10, 0, 7, 60, 60, 633, 1, '59', 'Nadr', '2015-02-06 11:53:55', 'SAHP Boat Impound Top', 9, 9, 'metalgate');
INSERT INTO `gates` VALUES (404, 969, 269.2, 3169.1, 1.8, 0, 0, 180, 262.5, 3169.1, 1.8, 0, 0, 180, 7, 20, 40, 0, 0, '8', 'Alejandro', '2015-02-07 00:36:12', 'Enrique E. Young House Gate', 10, 10, 'metalgate');
INSERT INTO `gates` VALUES (405, 3037, -701.5, 958.9, 13.7, 0, 0, 358, -701.5, 958.9, 8, 0, 0, 358, 7, 30, 40, 0, 0, '8', 'Alejandro', '2015-02-07 09:22:25', 'Test', NULL, NULL, 'metalgate');
INSERT INTO `gates` VALUES (406, 2949, 1383.9, 1466.44, 9.91, 0, 0, 90, 1383.9, 1466.58, 9.91, 0, 0, 0, 10, 0, 20, 27654, 31, 'Metro - II', 'Sloth', '2015-02-08 23:58:03', 'PD Rescue 1', 5, NULL, NULL);
INSERT INTO `gates` VALUES (407, 976, -304.8, 1731.6, 41.8, 0, 0, 90, 1731.6, 1731.6, 36.6, 0, 0, 90, 7, 60, 30, 0, 0, '8', 'Alejandro', '2015-02-09 22:56:56', 'Residencias Hillister and Sewell', 20, 20, 'metalgate');
INSERT INTO `gates` VALUES (408, 3050, -470.7, -183.1, 79.7, 0, 0, 0, -466.1, -183.1, 79.7, 0, 0, 0, 1, 0, 15, 0, 0, 'Milesliveshere', 'TheDarK', '2015-02-11 02:06:19', 'Miles Morrison', 10, 10, 'metalgate');
INSERT INTO `gates` VALUES (409, 3050, -485.7, -182.9, 79.7, 0, 0, 0, -481.1, -182.9, 79.7, 0, 0, 0, 1, 0, 15, 0, 0, 'Mileslivesherealso', 'TheDarK', '2015-02-11 02:05:16', 'Miles Morrison ', 10, 10, 'metalgate');
INSERT INTO `gates` VALUES (410, 898, -439, 1441.3, 20, 0, 0, 0, -439, 1441.3, 8, 0, 0, 0, 7, 30, 40, 0, 0, '8', 'Alejandro', '2015-02-10 19:03:32', 'Cueva', 9, 9, NULL);

-- ----------------------------
-- Table structure for health_diagnose
-- ----------------------------
DROP TABLE IF EXISTS `health_diagnose`;
CREATE TABLE `health_diagnose`  (
  `uniqueID` int(11) NULL DEFAULT NULL,
  `int_diagnose` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ext_diagnose` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of health_diagnose
-- ----------------------------

-- ----------------------------
-- Table structure for informationicons
-- ----------------------------
DROP TABLE IF EXISTS `informationicons`;
CREATE TABLE `informationicons`  (
  `id` int(10) NULL DEFAULT NULL,
  `createdby` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `x` float NULL DEFAULT NULL,
  `y` float NULL DEFAULT NULL,
  `z` float NULL DEFAULT NULL,
  `rx` float NULL DEFAULT NULL,
  `ry` float NULL DEFAULT NULL,
  `rz` float NULL DEFAULT NULL,
  `interior` float NULL DEFAULT NULL,
  `dimension` float NULL DEFAULT NULL,
  `information` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of informationicons
-- ----------------------------
INSERT INTO `informationicons` VALUES (3, 'John Philip', 94.248, -293.271, 1.57812, 0, 0, 0.705872, 0, 0, '[Cartel] Â¡Epa Cuidado! Zona de Carga');
INSERT INTO `informationicons` VALUES (4, 'John Philip', 95.5742, -279.594, 1.57812, 0, 0, 85.9336, 0, 0, '[Cartel] Â¡Epa Cuidado! Zona de Carga');
INSERT INTO `informationicons` VALUES (5, 'John Philip', 72.6855, -278.61, 1.57812, 0, 0, 271.743, 0, 0, '[Cartel] Â¡Epa Cuidado! Zona de Descarga');
INSERT INTO `informationicons` VALUES (6, 'John Philip', 77.4941, -222.942, 1.57812, 0, 0, 358.371, 0, 0, '[Entorno] Se Notarian Guaridas y Camaras de Seguridad en la Zona');
INSERT INTO `informationicons` VALUES (7, 'John Philip', 64.8721, -219.5, 1.58568, 0, 0, 354.466, 0, 0, '[Cartel] Zona de Camioneros');
INSERT INTO `informationicons` VALUES (8, 'John Philip', 90.5137, -220.35, 1.58363, 0, 0, 353.526, 0, 0, '[Cartel] Garajes Rentables');
INSERT INTO `informationicons` VALUES (9, 'John Philip', 199.731, -324.883, 1.68054, 0, 0, 273.621, 0, 0, '[Cartel] Desguace La Californiana');
INSERT INTO `informationicons` VALUES (10, 'John Philip', 271.593, -221.09, 1.57812, 0, 0, 357.575, 0, 0, '[Entorno] Se Notarian Guaridas y Camaras de Seguridad en la Zona');
INSERT INTO `informationicons` VALUES (12, 'John Philip', 1570.29, 1797.25, 2083.38, 0, 0, 89.0922, 10, 7, '[Entorno] Se Notarian al Personal y Pacientes en el Hospital las 24 horas');
INSERT INTO `informationicons` VALUES (13, 'John Philip', 1579.55, 1790.01, 2083.38, 0, 0, 359.794, 10, 7, '[STAFF] Use /duty para entrar en Servicio');
INSERT INTO `informationicons` VALUES (14, 'John Philip', 1592.18, 1796.73, 2083.38, 0, 0, 87.2136, 10, 7, '[STAFF] Aprete M > Luego Click Derecho sobre el NPC');
INSERT INTO `informationicons` VALUES (15, 'John Philip', 1587.17, 1815.24, 2083.38, 0, 0, 358.877, 10, 7, '[STAFF] Aprete M > Luego Click Derecho sobre el NPC para ser Atentido Medicamente');
INSERT INTO `informationicons` VALUES (16, 'John Philip', 123.789, -120.299, 1.57812, 0, 0, 268.007, 0, 0, '[Entorno] Se Notarian Oficiales y Camaras en la Comisaria');
INSERT INTO `informationicons` VALUES (17, 'John Philip', 109.476, -114.912, 1.60781, 0, 0, 271.765, 0, 0, '[Cartel] Escaleras al Techo - Solo Personal Autorizado');
INSERT INTO `informationicons` VALUES (18, 'John Philip', 244.407, 110.988, 1003.22, 0, 0, 256.027, 10, 1, '[Entorno] Se Notarian Oficiales y Camaras en la Comisaria');
INSERT INTO `informationicons` VALUES (19, 'John Philip', 240.258, 116.74, 1003.23, 0, 0, 262.679, 10, 1, '[Cartel] Solo Personal Autorizado');
INSERT INTO `informationicons` VALUES (20, 'John Philip', 252.636, 108.759, 1003.22, 0, 0, 80.0064, 10, 1, '[Cartel] Solo Personal Autorizado');
INSERT INTO `informationicons` VALUES (23, 'John Philip', 279.557, -56.3154, 2.95312, 0, 0, 179.67, 0, 0, '[Entorno] Se Notarian Guaridas y Camaras de Seguridad en la Zona');
INSERT INTO `informationicons` VALUES (24, 'John Philip', 283.039, -65.9814, 1.57812, 0, 0, 173.864, 0, 0, '[STAFF] Â¡Epa mi Pana! Bienvenido a Nine Nine Roleplay, si necesitas ayuda usa el F2');
INSERT INTO `informationicons` VALUES (25, 'John Philip', 278.62, -64.291, 1.57812, 0, 0, 181.066, 0, 0, '[STAFF] Para las texturas /mods y tambien F5');
INSERT INTO `informationicons` VALUES (26, 'John Philip', 285.979, -64.4092, 1.57812, 0, 0, 175.814, 0, 0, '[STAFF] Puedes revisar el F4 y el F1 para mayor informacion');
INSERT INTO `informationicons` VALUES (27, 'John Philip', 1537.88, 1481.61, 16.9535, 0, 0, 177.764, 21, 9, '[Entorno] Se Notarian Guaridas y Camaras de Seguridad en la Zona');
INSERT INTO `informationicons` VALUES (28, 'John Philip', 1534.99, 1484.66, 16.9535, 0, 0, 177.764, 21, 9, '[STAFF] Aprete M > Luego Click Derecho sobre el NPC');
INSERT INTO `informationicons` VALUES (29, 'John Philip', 1545.43, 1517.65, 16.9535, 0, 0, 185.285, 21, 9, '[Cartel] Solo Personal Autorizado');
INSERT INTO `informationicons` VALUES (30, 'John Philip', 1544.01, 1438.37, 29.1535, 0, 0, 86.6093, 21, 9, '[Cartel] Solo Personal Autorizado');
INSERT INTO `informationicons` VALUES (31, 'John Philip', 1541.35, 1469.47, 16.9535, 0, 0, 348.873, 21, 9, '[Cartel] Solo Personal Autorizado');
INSERT INTO `informationicons` VALUES (32, 'John Philip', 1525.58, 1469.54, 16.9535, 0, 0, 351.691, 21, 9, '[Cartel] Solo Personal Autorizado');
INSERT INTO `informationicons` VALUES (33, 'John Philip', -134.276, 54.4775, 3.11719, 0, 0, 339.37, 0, 0, '[STAFF] Â¡Epa! Para empezar a recolectar patatas utiliza /patatas');
INSERT INTO `informationicons` VALUES (34, 'John Philip', -146.458, -48.6816, 3.11719, 0, 0, 39.2905, 0, 0, '[STAFF] Â¡Epa! Para vender las patatas utiliza /vender');
INSERT INTO `informationicons` VALUES (35, 'John Philip', 944.183, 2136.96, 1011.02, 0, 0, 356.663, 1, 66, '[STAFF] Aprete M > Luego Click Derecho sobre la Caja');
INSERT INTO `informationicons` VALUES (36, 'John Philip', 951.042, 2120.52, 1011.02, 0, 0, 88.7846, 1, 66, '[Cartel] Primera Estacion, Corte de Carne');
INSERT INTO `informationicons` VALUES (37, 'John Philip', 943.755, 2117.86, 1011.03, 0, 0, 181.219, 1, 66, '[Cartel] Segunda Estacion, Empaquetamiento');
INSERT INTO `informationicons` VALUES (38, 'John Philip', 960.089, 2104.62, 1011.02, 0, 0, 9.19846, 1, 66, '[Cartel] Oficina de Empleo');
INSERT INTO `informationicons` VALUES (39, 'John Philip', 935.601, 2152.6, 1011.02, 0, 0, 247.622, 1, 66, '[Cartel] Aqui dejas las Cajas');
INSERT INTO `informationicons` VALUES (40, 'John Philip', 523.875, 2380.41, 435.4, 0, 0, 181.884, 43, 67, '[STAFF] Utilice /farmacia');
INSERT INTO `informationicons` VALUES (42, 'John Philip', -88.2734, -299.573, 2.76462, 0, 0, 183.565, 0, 0, '[Cartel] Vacantes abiertas para Carnicero');
INSERT INTO `informationicons` VALUES (43, 'John Philip', 689.531, -635.014, 16.3359, 0, 0, 82.0389, 0, 0, '[Entorno] Se Notarian Guaridas y Camaras de Seguridad en la Zona');
INSERT INTO `informationicons` VALUES (44, 'John Philip', 373.156, 167.409, 1008.38, 0, 0, 1.20029, 3, 69, '[Cartel] Solo Personal Autorizado');
INSERT INTO `informationicons` VALUES (45, 'John Philip', 368.423, 195.622, 1008.38, 0, 0, 357.465, 3, 69, '[Cartel] Acceso al Techo');
INSERT INTO `informationicons` VALUES (11, 'Bill Hollister', 1578.1, 711.021, 10.7165, 0, 0, 88.2792, 0, 0, '[Cartel] Centro de Instalaciones de Entrenamiento de Hollister and Sewell Inc.');
INSERT INTO `informationicons` VALUES (21, 'Bill Hollister', 1576.81, 729.095, 10.8203, 0, 0, 270.249, 0, 0, '[Cartel] Centro de Instalaciones de Entrenamiento de Hollister and Sewell Inc.');
INSERT INTO `informationicons` VALUES (22, 'Bill Hollister', 1576.7, 699.216, 10.8203, 0, 0, 266.612, 0, 0, '[Cartel] Centro de Instalaciones de Entrenamiento de Hollister and Sewell Inc.');
INSERT INTO `informationicons` VALUES (46, 'Bill Hollister', 1653.5, 619.252, 10.8223, 0, 0, 177.654, 0, 0, '[Cartel] Centro de Instalaciones de Entrenamiento de Hollister and Sewell Inc.');
INSERT INTO `informationicons` VALUES (47, 'Bill Hollister', 1588.56, 619.838, 10.8223, 0, 0, 177.078, 0, 0, '[Cartel] Centro de Instalaciones de Entrenamiento de Hollister and Sewell Inc.');
INSERT INTO `informationicons` VALUES (48, 'Bill Hollister', 1572.44, 711.162, 10.8325, 0, 0, 267.617, 0, 0, '[Entorno] Se notaria personal de seguridad, y camaras de vigilancia en las Instalaciones');
INSERT INTO `informationicons` VALUES (49, 'Bill Hollister', -302.28, 1506.79, 75.3798, 0, 0, 358.487, 0, 0, '[Entorno] Se notaria personal de seguridad, y camaras de vigilancia en las Instalaciones');
INSERT INTO `informationicons` VALUES (50, 'Bill Hollister', -394.174, 1745.99, 42.4079, 0, 0, 64.867, 0, 0, '[Entorno] Se notaria personal de seguridad, y camaras de vigilancia en la Propiedad');
INSERT INTO `informationicons` VALUES (51, 'Bill Hollister', -310.673, 1736.04, 42.6875, 0, 0, 266.975, 0, 0, '[Entorno] Se notaria personal de seguridad, y camaras de vigilancia en la Propiedad');
INSERT INTO `informationicons` VALUES (52, 'Bill Hollister', -296.165, 1776.06, 42.6875, 0, 0, 359.761, 0, 0, '[Entorno] Se notaria personal de seguridad, y camaras de vigilancia en la Propiedad');
INSERT INTO `informationicons` VALUES (53, 'Bill Hollister', 89.915, -160.312, 2.58656, 0, 0, 2.77686, 0, 0, '[Cartel] Zona de Ensamblaje de Vehiculos \"No Aparcar\"');
INSERT INTO `informationicons` VALUES (54, 'Bill Hollister', 96.3828, -197.317, 1.50133, 0, 0, 181.461, 0, 0, '[Cartel] Deposito de Piezas');
INSERT INTO `informationicons` VALUES (55, 'Bill Hollister', 97.6943, -186.044, 1.4853, 0, 0, 89.6526, 0, 0, '[Cartel] Deposito de Piezas');
INSERT INTO `informationicons` VALUES (56, 'Bill Hollister', 1024.6, -362.964, 73.9345, 0, 0, 356.58, 0, 0, '[Entorno] Se notaria personal de seguridad, y camaras de vigilancia en la Propiedad');
INSERT INTO `informationicons` VALUES (87, 'Vinnie Jenkins', 92.5342, -220.268, 1.58325, 0, 0, 6.08926, 0, 0, '[Cartel] Parking Publico');
INSERT INTO `informationicons` VALUES (99, 'Bill Hollister', 317.238, -112.943, 1011.01, 0, 0, 177.638, 40, 371, '[Cartel] Uniformes - Seguridad');
INSERT INTO `informationicons` VALUES (100, 'Bill Hollister', 321.802, -112.941, 1011.01, 0, 0, 177.638, 40, 371, '[Cartel] Uniformes - Operativos');
INSERT INTO `informationicons` VALUES (101, 'Bill Hollister', 306.564, -160.734, 999.594, 0, 0, 85.7194, 6, 354, '[Cartel] Almacen de Uniformes - Solo Personal Autorizado');
INSERT INTO `informationicons` VALUES (102, 'Bill Hollister', 1418.52, 1461.83, 10.8986, 0, 0, 91.5807, 1, 351, '[Cartel] Solo Personal Autorizado');
INSERT INTO `informationicons` VALUES (103, 'Bill Hollister', 1423.57, 1453.78, 18.5801, 0, 0, 181.917, 1, 351, '[Cartel] Sala de Juntas - Solo Personal Autorizado');
INSERT INTO `informationicons` VALUES (104, 'Bill Hollister', 1423.03, 1435.31, 10.903, 0, 0, 178.967, 1, 351, '[Cartel] Garaje - Solo Personal Autorizado');
INSERT INTO `informationicons` VALUES (105, 'Bill Hollister', 1383.27, 1467.58, 10.8644, 0, 0, 91.74, 45, 374, '[Entorno] Estarian conectadas a las Camaras Exteriores y de Lugares Contratados para Vigilar');
INSERT INTO `informationicons` VALUES (106, 'Bill Hollister', 1957.18, -2314.36, 16.5123, 0, 0, 179.566, 56, 352, '[Cartel] Zona Restringida - Solo Personal Autorizado');
INSERT INTO `informationicons` VALUES (107, 'Bill Hollister', 1956.84, -2314.91, 16.6889, 0, 0, 179.566, 56, 352, '[Cartel] Zona Restringida - Solo Personal Autorizado');
INSERT INTO `informationicons` VALUES (108, 'Bill Hollister', 576.775, 868.83, -43.4616, 0, 0, 271.726, 0, 0, '[STAFF] Aqui podras obtener el Job de Minero - Para dejar usa \"/quitironminer\"');
INSERT INTO `informationicons` VALUES (109, 'Bill Hollister', 637.264, 860.47, -41.6652, 0, 0, 249.726, 0, 0, '[STAFF] Aqui podras minar el Hierro');
INSERT INTO `informationicons` VALUES (110, 'Bill Hollister', 623.319, 900.438, -37.1285, 0, 0, 239.86, 0, 0, '[STAFF] Aqui dejaras el hierro para ser procesado');
INSERT INTO `informationicons` VALUES (111, 'Drake Robinson', 251.37, -229.098, 1.56881, 0, 0, 174.073, 0, 0, '[Cartel] Solo personal Autorizado');
INSERT INTO `informationicons` VALUES (112, 'Bill Hollister', 943.675, 2136.73, 1011.02, 0, 0, 353.795, 1, 376, '[STAFF] M > Click Derecho Sobre la Caja y la llevas');
INSERT INTO `informationicons` VALUES (114, 'Bill Hollister', 941.28, 2117.49, 1011.03, 0, 0, 174.704, 1, 376, '[STAFF] Aqui dejas la Carne');
INSERT INTO `informationicons` VALUES (113, 'Drake Robinson', 1566.9, 1795.02, 2083.38, 0, 0, 173.798, 10, 266, '[Cartel] Solo Personal Autorizado');
INSERT INTO `informationicons` VALUES (115, 'Bill Hollister', 958.222, 2122.28, 1011.02, 0, 0, 86.428, 1, 376, '[STAFF] Tienes que golpear la carne hasta que la barra se complete');
INSERT INTO `informationicons` VALUES (116, 'Bill Hollister', 945.199, 2114.69, 1011.02, 0, 0, 180.467, 1, 376, '[Cartel] Oficia de Empleo >>>');
INSERT INTO `informationicons` VALUES (117, 'Bill Hollister', 960.241, 2103.72, 1011.02, 0, 0, 179.127, 1, 376, '[Cartel] Oficia de Empleo >>>');
INSERT INTO `informationicons` VALUES (118, 'Drake Robinson', 1595.77, 1786.21, 2077.58, 0, 0, 92.3113, 10, 266, '[Cartel] Solo personal Autorizado');
INSERT INTO `informationicons` VALUES (119, 'Drake Robinson', -1763.94, 673.581, 960.377, 0, 0, 4.91919, 1, 263, '[Cartel] Solo personal Autorizado');
INSERT INTO `informationicons` VALUES (120, 'Bill Hollister', -298.129, 1778.05, 42.7, 0, 0, 85.7029, 0, 0, '[STAFF] Utiliza /duty para Entrar en Servicio');
INSERT INTO `informationicons` VALUES (165, 'Bill Hollister', 940.47, 2136.4, 1011.02, 0, 0, 357.624, 1, 376, '[STAFF] Tienes que esperar un momento, hasta que salga la caja');
INSERT INTO `informationicons` VALUES (41, 'Drake Robinson', 191.985, -166.669, 1.57812, 0, 0, 86.0984, 0, 0, '[Cartel] Parking Publico');
INSERT INTO `informationicons` VALUES (166, 'Drake Robinson', 222.068, -149.669, 1.57812, 0, 0, 258.889, 0, 0, '[Entorno] Parking Publico]');
INSERT INTO `informationicons` VALUES (167, 'Drake Robinson', 135.047, -245.215, 1.57812, 0, 0, 2.66696, 0, 0, '[Cartel] Parking Publico');
INSERT INTO `informationicons` VALUES (168, 'Drake Robinson', 135.126, -243.092, 1.57812, 0, 0, 180.577, 0, 0, '[Cartel] Parking Publico');
INSERT INTO `informationicons` VALUES (169, 'Drake Robinson', -289.892, 1053.97, 19.7422, 0, 0, 344.407, 0, 0, '[Cartel] Parking Publico');
INSERT INTO `informationicons` VALUES (170, 'Drake Robinson', -200.926, 1207.74, 19.7422, 0, 0, 180.599, 0, 0, '[Entorno] Parking Publico');
INSERT INTO `informationicons` VALUES (171, 'Drake Robinson', -75.0186, 1359.19, 10.4309, 0, 0, 276.884, 0, 0, '[Cartel] Bienvenido al Casino de Riverside en Fort Carson!');
INSERT INTO `informationicons` VALUES (172, 'Drake Robinson', 288.974, 1418.54, 10.4027, 0, 0, 255.768, 0, 0, '[Entorno] Parking Publico');
INSERT INTO `informationicons` VALUES (173, 'Drake Robinson', 178.392, 1105.85, 16.1281, 0, 0, 111.972, 0, 0, '[Entorno] Parking Publico');
INSERT INTO `informationicons` VALUES (174, 'Drake Robinson', 361.959, 985.582, 29.8333, 0, 0, 295.891, 0, 0, '[Entorno] Trabajo de Mineria al bajar');
INSERT INTO `informationicons` VALUES (175, 'Drake Robinson', 480.257, -24.6328, 1003.1, 0, 0, 279.878, 17, 15, '[Entorno] Zona VIP, Entrar solo autorizados');
INSERT INTO `informationicons` VALUES (176, 'Drake Robinson', 191.829, -144.991, 1.57812, 0, 0, 280.565, 0, 0, '[Entorno] Parking Publico');
INSERT INTO `informationicons` VALUES (177, 'Drake Robinson', -20.3281, -314.325, 5.42969, 0, 0, 171.502, 0, 0, '[Cartel] Se le agradece a los oficiales ordenar los autos en el deposito');
INSERT INTO `informationicons` VALUES (178, 'Drake Robinson', -78.3057, -360.834, 1.42969, 0, 0, 5.47403, 0, 0, '[Cartel] DEPOSITO DE RIVERSIDE');
INSERT INTO `informationicons` VALUES (179, 'Drake Robinson', 721.46, -609.552, 16.2455, 0, 0, 178.671, 0, 0, '[Cartel] Parking Privado, solo personal autorizado');
INSERT INTO `informationicons` VALUES (180, 'Drake Robinson', 280.209, -248.197, 1.61, 0, 0, 85.6535, 0, 0, '[Entorno] Parking Privado');
INSERT INTO `informationicons` VALUES (181, 'Vichenzo Di Marco', 656.284, -453.895, 16.3359, 0, 0, 72.8927, 0, 0, '[Entorno] Parking Publico');
INSERT INTO `informationicons` VALUES (182, 'Katy Testt', 330.955, -41.7744, 2.09245, 0, 0, 3.24924, 0, 0, '[Cartel] Alquiler de bicicletas');
INSERT INTO `informationicons` VALUES (183, 'Vichenzo Di Marco', 700.805, -473.471, 16.3359, 0, 0, 182.917, 0, 0, '[Entorno] Parking Publico');
INSERT INTO `informationicons` VALUES (185, 'Drake Robinson', 282.037, -224.306, 1.62993, 0, 0, 162.762, 0, 0, '[OOC] Zona Duty');
INSERT INTO `informationicons` VALUES (186, 'Drake Robinson', 280.417, -65.6797, 1.57812, 0, 0, 324.857, 0, 0, '[STAFF] Para interactuar con los peds o bots del mapa preciona la M y darle click derecho');
INSERT INTO `informationicons` VALUES (187, 'Drake Robinson', 282.175, -226.997, 1.62993, 0, 0, 140.608, 0, 0, '[STAFF] Para laburar pon aca /duty');
INSERT INTO `informationicons` VALUES (191, 'Vinnie Jenkins', 1538.19, 1619.19, 10.8203, 0, 0, 357.36, 0, 0, '[STAFF] SI TE BUGUEASTE USA EL ASENSOR CON VEHICULO INCLUIDO');
INSERT INTO `informationicons` VALUES (203, 'Vinnie Jenkins', 285.528, -55.3057, 2.95312, 0, 0, 258.098, 0, 0, '[STAFF] Los trabajos los podras encontar en el ayuntamiento');
INSERT INTO `informationicons` VALUES (204, 'Bill Hollister', 524.839, 63.1953, 1044.46, 0, 0, 271.232, 24, 98, '[STAFF] Utiliza /duty para entrar en servicio');
INSERT INTO `informationicons` VALUES (205, 'Bill Hollister', 823.971, 0.878906, 1006.69, 0, 0, 90.8062, 3, 400, '[Entorno] Se podrian ver en los televisores la carrera de caballos');
INSERT INTO `informationicons` VALUES (206, 'Bill Hollister', 826.579, 6.00977, 1006.77, 0, 0, 90.8062, 3, 400, '[Entorno] Se podrian ver en los televisores la carrera de caballos');
INSERT INTO `informationicons` VALUES (207, 'Bill Hollister', 832.466, 10.3066, 1006.91, 0, 0, 90.8062, 3, 400, '[Entorno] Se podrian ver en los televisores la carrera de caballos');
INSERT INTO `informationicons` VALUES (208, 'Bill Hollister', 691.066, -503.77, 16.3359, 0, 0, 85.8127, 0, 0, '[Cartel] Â¡Casa de Apuestas! Â¡Que esperas para apostar y llevarte el premio grande!');
INSERT INTO `informationicons` VALUES (209, 'Bill Hollister', 690.928, -508.894, 16.3359, 0, 0, 88.7846, 0, 0, '[Cartel] Â¡Casa de Apuestas! Â¡Que esperas para apostar y llevarte el premio grande!');
INSERT INTO `informationicons` VALUES (79, 'Vinnie Jenkins', 690.075, -505.402, 16.3359, 0, 0, 259.636, 0, 0, '[Entorno] El lugar estarÃ­a cerrado, debido a un robo, la cinta policial estarÃ­a en la puerta y habria guardias vigilando las puertas ahora');
INSERT INTO `informationicons` VALUES (80, 'Vinnie Jenkins', 695.441, -500.123, 16.3359, 0, 0, 169.634, 0, 0, '[Entorno] El lugar estarÃ­a cerrado, debido a un robo, la cinta policial estarÃ­a en la puerta y habria guardias vigilando las puertas ahora');
INSERT INTO `informationicons` VALUES (57, 'Bill Hollister', 265.954, 3167.26, 2.89941, 0, 0, 350.466, 0, 0, '[Entorno] Se notaria abandonado, sucio y poco cuidado');
INSERT INTO `informationicons` VALUES (58, 'Bill Hollister', 273.639, 3167.28, 6.99848, 0, 0, 39.6146, 0, 0, '[Entorno] Camara Activa 24/7');
INSERT INTO `informationicons` VALUES (59, 'Bill Hollister', 258.581, 3193.58, 6.56843, 0, 0, 178.934, 0, 0, '[Entorno] Camara Activa 24/7');
INSERT INTO `informationicons` VALUES (60, 'Bill Hollister', 279.443, 3226.69, 6.70483, 0, 0, 355.031, 0, 0, '[Entorno] Camara Activa 24/7');
INSERT INTO `informationicons` VALUES (61, 'Bill Hollister', 244.168, 3226.97, 6.50327, 0, 0, 314.453, 0, 0, '[Entorno] Camara Activa 24/7');
INSERT INTO `informationicons` VALUES (62, 'Bill Hollister', 241.389, 3171.65, 8.30238, 0, 0, 166.498, 0, 0, '[Entorno] Camara Activa 24/7');
INSERT INTO `informationicons` VALUES (63, 'Bill Hollister', 259.061, 3187.94, 2.53309, 0, 0, 269.765, 0, 0, '[Entorno] Puerta Reforzada - Cerrada con Codigo de Acceso');
INSERT INTO `informationicons` VALUES (64, 'Bill Hollister', 255.075, 3180.07, 2.43471, 0, 0, 180.483, 0, 0, '[Entorno] Puerta Reforzada - Cerrada con Codigo de Acceso');
INSERT INTO `informationicons` VALUES (65, 'Bill Hollister', 253.192, 3186.93, 2.37975, 0, 0, 356.267, 0, 0, '[Entorno] Guardias Armados en el Recinto 24/7');
INSERT INTO `informationicons` VALUES (66, 'Bill Hollister', 271.702, 2852.93, 20.9983, 0, 0, 0.00274658, 0, 0, '[Entorno] Prision de Alta Seguridad \"La Islita de California\" - 1969');
INSERT INTO `informationicons` VALUES (67, 'Bill Hollister', 351.194, 1011.53, 28.5372, 0, 0, 287.429, 0, 0, '[Entorno] Se notarian piezas de construccion, basura y suciedad por la calle');
INSERT INTO `informationicons` VALUES (68, 'Bill Hollister', 392.73, 1014.23, 28.6304, 0, 0, 275.824, 0, 0, '[Entorno] Se notarian piezas de construccion, basura y suciedad por la calle');
INSERT INTO `informationicons` VALUES (69, 'Bill Hollister', 375.834, 1070.29, 21.7259, 0, 0, 345.802, 0, 0, '[Entorno] Se notarian piezas de construccion, basura y suciedad por la calle');
INSERT INTO `informationicons` VALUES (70, 'Bill Hollister', 454.229, 1161.32, 8.73287, 0, 0, 271.077, 0, 0, '[Entorno] Se notarian piezas de construccion, basura y suciedad por la calle');
INSERT INTO `informationicons` VALUES (71, 'Bill Hollister', -711.678, 934.274, 12.588, 0, 0, 241.788, 0, 0, '[Cartel] RS American Transport');
INSERT INTO `informationicons` VALUES (72, 'Bill Hollister', -693.076, 917.02, 12.2473, 0, 0, 86.7851, 0, 0, '[Entorno] Se notaria algo de personal, poca seguridad y alguna que otra camara en la zona');
INSERT INTO `informationicons` VALUES (73, 'Bill Hollister', -702.283, 959.039, 16.6874, 0, 0, 86.6752, 0, 0, '[Cartel] Cuartel de Operaciones de la Guardia Nacional de California - 1989');
INSERT INTO `informationicons` VALUES (74, 'Bill Hollister', -706.601, 966.371, 12.4566, 0, 0, 230.587, 0, 0, '[Entorno] Se notaria el oxido en el metal, la suciedad y el abandono de la propiedad');
INSERT INTO `informationicons` VALUES (75, 'Bill Hollister', -706.862, 952.277, 12.4566, 0, 0, 293.842, 0, 0, '[Entorno] Se escucharian ruidos extraÃ±os por las noches');
INSERT INTO `informationicons` VALUES (76, 'Bill Hollister', -714.729, 997.354, 12.2046, 0, 0, 274.248, 0, 0, '[Cartel] Campo de Entrenamiento de la Guardia Nacional de California - 1989');
INSERT INTO `informationicons` VALUES (77, 'Bill Hollister', -717.651, 992.142, 12.1328, 0, 0, 251.11, 0, 0, '[Entorno] Se notaria el oxido en el metal, la suciedad y el abandono de la propiedad');
INSERT INTO `informationicons` VALUES (78, 'Bill Hollister', -705.7, 996.152, 12.4209, 0, 0, 25.8045, 0, 0, '[Entorno] El pasto estaria bien cuidado, estaria en bien estado el campo');
INSERT INTO `informationicons` VALUES (81, 'Bill Hollister', 271.847, 2853.2, 20.3828, 0, 0, 0.00274658, 0, 0, '[Cartel] Prision de Alta Seguridad \"La Islita de California\" - 1969');
INSERT INTO `informationicons` VALUES (82, 'Bill Hollister', 994.572, 352.121, 19.8857, 0, 0, 269.408, 0, 0, '[Entorno] Se notarian familias en el lugar, seria una zona bastante agradable');

-- ----------------------------
-- Table structure for insurance_data
-- ----------------------------
DROP TABLE IF EXISTS `insurance_data`;
CREATE TABLE `insurance_data`  (
  `policyid` int(11) NOT NULL AUTO_INCREMENT,
  `customername` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `vehicleid` int(11) NOT NULL,
  `protection` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deductible` int(11) NOT NULL,
  `date` date NOT NULL,
  `claims` float NOT NULL,
  `cashout` float NOT NULL,
  `premium` int(11) NOT NULL,
  `insurancefaction` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`policyid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of insurance_data
-- ----------------------------

-- ----------------------------
-- Table structure for insurance_factions
-- ----------------------------
DROP TABLE IF EXISTS `insurance_factions`;
CREATE TABLE `insurance_factions`  (
  `factionID` int(11) NOT NULL,
  `name` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gen_maxi` float NOT NULL DEFAULT 0.005,
  `news` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `subscription` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`factionID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of insurance_factions
-- ----------------------------

-- ----------------------------
-- Table structure for interior_business
-- ----------------------------
DROP TABLE IF EXISTS `interior_business`;
CREATE TABLE `interior_business`  (
  `intID` int(11) NOT NULL,
  `businessNote` varchar(101) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Welcome to our business!',
  PRIMARY KEY (`intID`) USING BTREE,
  UNIQUE INDEX `intID_UNIQUE`(`intID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Saves info about businesses - Maxime' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of interior_business
-- ----------------------------
INSERT INTO `interior_business` VALUES (43, 'Welcome to our business!');
INSERT INTO `interior_business` VALUES (44, 'Welcome to our business!');
INSERT INTO `interior_business` VALUES (47, 'Welcome to our business!');
INSERT INTO `interior_business` VALUES (54, 'Welcome to our business!');
INSERT INTO `interior_business` VALUES (119, 'Welcome to our business!');
INSERT INTO `interior_business` VALUES (237, 'Welcome to our business!');
INSERT INTO `interior_business` VALUES (245, 'Welcome to our business!');
INSERT INTO `interior_business` VALUES (251, 'Welcome to our business!');
INSERT INTO `interior_business` VALUES (252, 'Welcome to our business!');
INSERT INTO `interior_business` VALUES (253, 'Welcome to our business!');
INSERT INTO `interior_business` VALUES (295, 'Welcome to our business!');
INSERT INTO `interior_business` VALUES (296, 'Welcome to our business!');
INSERT INTO `interior_business` VALUES (307, 'Welcome to our business!');
INSERT INTO `interior_business` VALUES (318, 'Welcome to our business!');
INSERT INTO `interior_business` VALUES (319, 'Welcome to our business!');
INSERT INTO `interior_business` VALUES (320, 'Welcome to our business!');
INSERT INTO `interior_business` VALUES (341, 'Welcome to our business!');
INSERT INTO `interior_business` VALUES (344, 'Welcome to our business!');
INSERT INTO `interior_business` VALUES (355, 'Welcome to our business!');
INSERT INTO `interior_business` VALUES (363, 'Welcome to our business!');
INSERT INTO `interior_business` VALUES (378, 'Welcome to our business!');
INSERT INTO `interior_business` VALUES (379, 'Welcome to our business!');
INSERT INTO `interior_business` VALUES (380, 'Welcome to our business!');
INSERT INTO `interior_business` VALUES (384, 'Welcome to our business!');
INSERT INTO `interior_business` VALUES (387, 'Welcome to our business!');
INSERT INTO `interior_business` VALUES (396, 'Bienvenidos a la Industria CÃ¡rnica Federikov. Â¡Mas de 20 aÃ±os en el rubro! Â¡Ahora en Riverside!');
INSERT INTO `interior_business` VALUES (398, 'Welcome to our business!');
INSERT INTO `interior_business` VALUES (399, 'Welcome to our business!');

-- ----------------------------
-- Table structure for interior_logs
-- ----------------------------
DROP TABLE IF EXISTS `interior_logs`;
CREATE TABLE `interior_logs`  (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `intID` int(11) NULL DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `actor` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE,
  INDEX `log_interior`(`intID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5620 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Stores all admin actions on interiors - Monitored by Interio' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of interior_logs
-- ----------------------------
INSERT INTO `interior_logs` VALUES (1, '2021-08-07 18:15:17', 1, 'addint - id 1 - price $0 - name A', 1);

-- ----------------------------
-- Table structure for interior_notes
-- ----------------------------
DROP TABLE IF EXISTS `interior_notes`;
CREATE TABLE `interior_notes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intid` int(11) NOT NULL,
  `creator` int(11) NOT NULL DEFAULT 0,
  `note` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of interior_notes
-- ----------------------------

-- ----------------------------
-- Table structure for interior_textures
-- ----------------------------
DROP TABLE IF EXISTS `interior_textures`;
CREATE TABLE `interior_textures`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interior` int(11) NOT NULL,
  `texture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rotation` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of interior_textures
-- ----------------------------

-- ----------------------------
-- Table structure for interiors
-- ----------------------------
DROP TABLE IF EXISTS `interiors`;
CREATE TABLE `interiors`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` float NULL DEFAULT 0,
  `y` float NULL DEFAULT 0,
  `z` float NULL DEFAULT 0,
  `type` int(1) NULL DEFAULT 0,
  `owner` int(11) NULL DEFAULT -1,
  `locked` int(1) NULL DEFAULT 0,
  `cost` int(11) NULL DEFAULT 0,
  `name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `interior` int(5) NULL DEFAULT 0,
  `interiorx` float NULL DEFAULT 0,
  `interiory` float NULL DEFAULT 0,
  `interiorz` float NULL DEFAULT 0,
  `dimensionwithin` int(5) NULL DEFAULT 0,
  `interiorwithin` int(5) NULL DEFAULT 0,
  `angle` float NULL DEFAULT 0,
  `angleexit` float NULL DEFAULT 0,
  `supplies` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `safepositionX` float NULL DEFAULT NULL,
  `safepositionY` float NULL DEFAULT NULL,
  `safepositionZ` float NULL DEFAULT NULL,
  `safepositionRZ` float NULL DEFAULT NULL,
  `disabled` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `lastused` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `deleted` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `deletedDate` datetime(0) NULL DEFAULT NULL,
  `createdDate` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `creator` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `isLightOn` tinyint(4) NOT NULL DEFAULT 0,
  `keypad_lock` int(11) NULL DEFAULT NULL,
  `keypad_lock_pw` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keypad_lock_auto` tinyint(1) NULL DEFAULT NULL,
  `faction` int(11) NULL DEFAULT 0,
  `protected_until` datetime(0) NULL DEFAULT NULL,
  `furniture` int(1) NOT NULL DEFAULT 1,
  `interior_id` int(11) NULL DEFAULT NULL,
  `tokenUsed` int(1) NOT NULL DEFAULT 0,
  `settings` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `address` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 403 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of interiors
-- ----------------------------
INSERT INTO `interiors` VALUES (1, -66.375, -173.089, 2.54472, 2, 0, 0, 0, 'A', 3, 975.26, -8.64, 1001.14, 0, 0, 90, 245.87, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-07 18:16:39', 'Alejandro', '2021-08-17 18:03:52', '2021-08-07 18:15:17', 'Alejandro', 0, NULL, NULL, NULL, 0, NULL, 1, 1, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (2, 604.782, -1206.86, 18.4062, 2, 0, 0, 0, 'a', 11, 501.84, -67.84, 998.75, 0, 0, 180, 210.575, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-07 18:44:58', 'Alejandro', '2021-08-17 18:04:12', '2021-08-07 18:43:44', 'Alejandro', 0, NULL, NULL, NULL, 0, NULL, 1, 2, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (3, 2025.91, -2031.45, 35.0158, 2, 0, 0, 0, 'aa', 5, 772.43, -5.19, 1000.72, 0, 0, 0, 189.833, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-07 18:47:16', 'Alejandro', '2021-08-17 18:04:19', '2021-08-07 18:46:45', 'Alejandro', 0, NULL, NULL, NULL, 0, NULL, 1, 3, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (4, 2024.96, -2033.58, 35.0158, 0, -1, 1, 1, 'aa', 5, 772.43, -5.19, 1000.72, 0, 0, 0, 161.768, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-07 18:47:27', 'Alejandro', '2021-08-17 18:04:34', '2021-08-07 18:47:27', 'Alejandro', 0, NULL, NULL, NULL, 0, NULL, 1, 3, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (5, 207.935, -61.7002, 1.97656, 2, 0, 0, 0, 'Riverside Municipal Bank', 3, 2324.27, 2369.23, 2022.93, 0, 0, 271, 180.401, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-09-11 15:23:00', '0', NULL, '2021-08-17 18:05:48', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 184, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (6, 252.816, -92.4316, 3.53539, 0, -1, 1, 30000, 'Casa#6', 2, 446.97, 1397.22, 1084.3, 0, 0, 0, 271.693, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-19 23:16:22', '0', NULL, '2021-08-17 18:20:54', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 72, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (7, 252.648, -121.388, 3.53539, 0, -1, 1, 30000, 'Casa#7', 2, 446.97, 1397.22, 1084.3, 0, 0, 0, 269.963, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-26 21:29:55', '0', NULL, '2021-08-17 18:22:48', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 72, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (8, 312.74, -121.288, 3.53539, 0, -1, 1, 30000, 'Casa#8', 2, 446.97, 1397.22, 1084.3, 0, 0, 0, 89.8448, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 18:24:40', '0', NULL, '2021-08-17 18:24:40', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 72, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (9, 313.109, -92.2266, 3.53539, 0, -1, 1, 30000, 'Casa#9', 2, 446.97, 1397.22, 1084.3, 0, 0, 0, 91.1412, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 18:25:13', '0', NULL, '2021-08-17 18:25:13', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 72, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (10, 265.688, -276.657, 1.57812, 0, -1, 1, 50000, 'Casa#1', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 358.607, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-28 23:04:46', '0', NULL, '2021-08-17 18:32:15', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 78, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (11, 265.523, -290.692, 1.57812, 0, -1, 1, 50000, 'Casa#2', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 185.026, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 18:35:35', 'TheDarK', '2021-08-17 18:36:05', '2021-08-17 18:35:35', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 78, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (12, 236.27, -310.057, 1.58358, 0, -1, 1, 50000, 'Casa#2', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 95.0359, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 18:37:32', '0', NULL, '2021-08-17 18:37:32', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 78, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (13, 265.629, -290.842, 1.57812, 0, -1, 1, 50000, 'Casa#3', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 181.038, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-28 23:05:03', '0', NULL, '2021-08-17 18:38:21', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 78, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (14, -25.2582, 52.4121, 3.85862, 0, -1, 1, 15000, 'Casa', 10, 422.26, 2536.37, 10, 0, 0, 90, 359.146, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 18:49:14', 'Dreko', '2021-08-17 18:49:20', '2021-08-17 18:42:02', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 82, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (15, 273.197, -180.613, 1.57812, 2, 0, 0, 0, 'Discoteca de Riverside', 17, 493.34, -24.48, 1000.67, 0, 0, 0, 90.6688, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-29 15:54:42', '0', NULL, '2021-08-17 18:49:43', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 42, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (16, -24.7084, 52.3916, 3.8983, 0, -1, 1, 15000, 'Casa', 10, 422.26, 2536.37, 10, 0, 0, 90, 176.023, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 19:44:20', '0', NULL, '2021-08-17 18:49:44', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 82, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (17, -21.1592, 83.6377, 3.3125, 0, -1, 1, 15000, 'Casa #2', 10, 422.26, 2536.37, 10, 0, 0, 90, 80.1657, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 18:50:48', '0', NULL, '2021-08-17 18:50:48', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 82, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (18, -22.8125, 74.0645, 3.30156, 0, -1, 1, 15000, 'Casa #3', 10, 422.26, 2536.37, 10, 0, 0, 90, 14.3621, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 18:50:56', '0', NULL, '2021-08-17 18:50:56', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 82, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (19, -10.2568, 71.7803, 3.18651, 0, -1, 1, 22500, 'Casa #3', 2, 2237.52, -1081.64, 1049.02, 0, 0, 0, 245.007, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 19:43:56', '0', NULL, '2021-08-17 18:53:04', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 88, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (20, -39.7191, 92.3258, 3.50636, 0, -1, 0, 30000, 'Casa #4', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 78.3914, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 18:59:08', '0', NULL, '2021-08-17 18:57:52', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 78, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (21, -45.5, 117.318, 3.69375, 0, -1, 1, 30000, 'Casa #4', 5, 22.98, 1403.6, 1084.42, 0, 0, 0, 341.595, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-31 01:45:21', '0', NULL, '2021-08-17 19:07:07', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 94, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (22, 207.074, -112.336, 4.89647, 3, -1, 1, 250, 'Cuarto', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 268.958, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 19:26:31', '0', NULL, '2021-08-17 19:08:00', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (23, 201.507, -118.231, 4.89647, 3, -1, 1, 250, 'Cuarto', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 178.011, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 19:26:52', '0', NULL, '2021-08-17 19:09:40', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (24, 201.464, -96.9717, 4.89647, 3, -1, 1, 250, 'Cuarto', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 5.38614, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 19:27:17', '0', NULL, '2021-08-17 19:09:53', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (25, 189.433, -96.9727, 4.89647, 3, -1, 1, 250, 'Cuarto', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 1.06296, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-09-01 16:02:30', '0', NULL, '2021-08-17 19:09:57', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (26, 201.453, -120.219, 1.55143, 3, -1, 1, 250, 'Cuarto', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 174.023, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 19:28:25', '0', NULL, '2021-08-17 19:10:14', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (27, 189.485, -120.234, 1.54851, 3, -1, 1, 250, 'Cuarto', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 186.998, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 19:28:41', '0', NULL, '2021-08-17 19:10:18', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (28, -57.735, 135.579, 3.62969, 0, -1, 1, 38000, 'Casa #4', 8, 2807.66, -1174.54, 1025.57, 0, 0, 0, 321.347, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-25 22:04:25', '0', NULL, '2021-08-17 19:10:20', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 91, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (29, 178.264, -120.234, 1.54904, 3, -1, 1, 250, 'Cuarto', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 181.714, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 19:32:01', '0', NULL, '2021-08-17 19:10:22', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (30, 166.18, -120.234, 1.55494, 3, -1, 1, 250, 'Cuarto', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 181.23, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-26 07:04:07', '0', NULL, '2021-08-17 19:10:27', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (31, 158.638, -112.719, 1.55671, 3, -1, 1, 250, 'Cuarto', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 85.1426, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 19:31:40', '0', NULL, '2021-08-17 19:10:30', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (32, 158.634, -102.754, 1.55671, 3, -1, 1, 250, 'Cuarto', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 77.452, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 19:31:30', '0', NULL, '2021-08-17 19:10:34', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (33, 166.136, -94.9746, 1.55496, 3, -1, 1, 250, 'Cuarto', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 352.417, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 19:31:19', '0', NULL, '2021-08-17 19:10:38', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (34, 201.441, -94.9727, 1.55497, 3, -1, 1, 250, 'Cuarto', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 2.02426, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 19:27:53', '0', NULL, '2021-08-17 19:10:47', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (35, 160.636, -102.657, 4.89647, 3, -1, 1, 250, 'Cuarto', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 95.7116, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 19:29:18', '0', NULL, '2021-08-17 19:11:00', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (36, 160.632, -112.722, 4.89647, 3, -1, 1, 250, 'Cuarto', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 87.5432, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 19:29:10', '0', NULL, '2021-08-17 19:11:03', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (37, 166.232, -118.233, 4.89647, 3, -1, 1, 250, 'Cuarto', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 150.637, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 19:29:34', '0', NULL, '2021-08-17 19:11:08', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (38, 178.327, -118.231, 4.89647, 3, -1, 1, 250, 'Cuarto', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 188.438, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 19:29:45', '0', NULL, '2021-08-17 19:11:13', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (39, 166.439, -96.9766, 4.89647, 3, -1, 1, 250, 'Cuarto', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 8.27008, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 19:30:00', '0', NULL, '2021-08-17 19:11:23', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (40, 178.39, -96.9717, 4.89647, 3, -1, 1, 250, 'Cuarto', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 1.54086, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 19:30:59', '0', NULL, '2021-08-17 19:11:28', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (41, 209.078, -112.593, 1.55078, 3, -1, 1, 250, 'Cuarto', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 322.945, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 19:28:15', '0', NULL, '2021-08-17 19:11:57', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (42, 209.085, -102.566, 1.55825, 3, -1, 1, 250, 'Cuarto', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 267.854, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 19:28:05', '0', NULL, '2021-08-17 19:12:33', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (43, 273.196, -157.534, 1.74052, 1, -1, 0, 35000, 'Sex-Shop', 3, -100.4, -24.96, 1000.71, 0, 0, 0, 278.197, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 19:20:05', 'Dreko', '2021-08-17 19:20:28', '2021-08-17 19:14:48', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 14, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (44, 273.194, -158.044, 1.74052, 1, -1, 1, 40000, 'Tienda Electronica', 6, -2240.69, 128.43, 1035.41, 0, 0, 270, 92.8332, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-09-01 15:56:08', '0', NULL, '2021-08-17 19:20:59', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 59, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (45, 273.181, -195.378, 1.57045, 2, 0, 0, 30000, 'FERRETERIA DON JUAN', 8, 2480.6, -1687.23, 2031.49, 0, 0, 0, 91.8279, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 19:22:44', 'elcocainas123', '2021-08-17 19:22:46', '2021-08-17 19:22:22', 'elcocainas123', 0, NULL, NULL, NULL, 0, NULL, 1, 115, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (46, 273.173, -195.583, 1.57045, 3, -1, 1, 20000, 'FERRETERIA VALENTINO', 8, 2480.6, -1687.23, 2031.49, 0, 0, 0, 90.8885, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 19:23:58', 'elcocainas123', '2021-08-17 19:24:00', '2021-08-17 19:23:27', 'elcocainas123', 0, NULL, NULL, NULL, 0, NULL, 1, 115, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (47, 273.173, -195.434, 1.57045, 1, -1, 1, 20000, 'FerreterÃ­a Don Juan', 6, -2240.69, 128.43, 1035.41, 0, 0, 270, 91.8279, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-31 01:48:54', '0', NULL, '2021-08-17 19:25:17', 'elcocainas123', 0, NULL, NULL, NULL, 0, NULL, 1, 59, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (48, -438.496, -43.0172, 59.6496, 0, -1, 1, 15000, 'Chabola', 10, 422.26, 2536.37, 10, 0, 0, 90, 4.1886, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 19:45:16', '0', NULL, '2021-08-17 19:45:16', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 82, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (49, -440.7, -62.4494, 59.3496, 0, -1, 1, 15000, 'Chabola', 10, 422.26, 2536.37, 10, 0, 0, 90, 268.331, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-26 23:31:50', '0', NULL, '2021-08-17 19:45:29', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 82, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (50, -450.234, -79.6309, 59.441, 2, 0, 0, 0, 'Iglesia', 20, 1412.26, 1525.49, 1542.8, 0, 0, 0, 269.897, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-26 23:30:51', '0', NULL, '2021-08-17 19:46:18', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 118, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (51, -570.791, -180.524, 78.9938, 0, -1, 1, 27500, 'Casa', 8, -42.65, 1405.46, 1084.42, 0, 0, 0, 0.046692, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 19:50:28', '0', NULL, '2021-08-17 19:50:05', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 67, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (52, -528.813, -196.19, 78.4047, 0, -1, 1, 27500, 'Casa', 8, 2365.14, -1135.35, 1050.87, 0, 0, 0, 186.795, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 19:51:14', '0', NULL, '2021-08-17 19:50:55', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 66, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (53, -506.578, -195.14, 78.5563, 0, -1, 1, 20000, 'Casa', 2, 2237.52, -1081.64, 1049.02, 0, 0, 0, 172.359, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 19:52:29', '0', NULL, '2021-08-17 19:51:42', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 88, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (54, -476.885, -109.647, 63.0744, 1, -1, 1, 0, 'prueba', 10, 246.37, 107.51, 1003.21, 0, 0, 0, 165.734, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 20:13:20', 'elcocainas123', '2021-08-17 20:13:24', '2021-08-17 19:52:30', 'elcocainas123', 0, NULL, NULL, NULL, 0, NULL, 1, 101, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (55, 119.103, -265.655, 1.57812, 3, -1, 1, 100, 'Garaje', 6, 2438.35, -2537.32, 1095.43, 0, 0, 0, 359.81, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 20:10:24', 'TheDarK', '2021-08-18 10:29:48', '2021-08-17 20:03:08', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 113, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (56, 124.941, -264.075, 1.57812, 3, -1, 1, 100, 'Garaje', 6, 2438.35, -2537.32, 1095.43, 0, 0, 0, 182.027, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-31 20:57:02', '0', NULL, '2021-08-17 20:06:36', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 113, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (57, 132.84, -264.083, 1.57812, 3, -1, 1, 100, 'Garaje', 6, 2438.35, -2537.32, 1095.43, 0, 0, 0, 184.285, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-26 20:17:56', '0', NULL, '2021-08-17 20:06:52', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 113, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (58, 140.836, -264.142, 1.57812, 3, -1, 1, 100, 'Garaje', 6, 2438.35, -2537.32, 1095.43, 0, 0, 0, 182.999, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-31 20:32:52', '0', NULL, '2021-08-17 20:07:00', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 113, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (59, 148.644, -264.187, 1.57812, 3, -1, 1, 100, 'Garaje', 6, 2438.35, -2537.32, 1095.43, 0, 0, 0, 180.917, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-28 23:24:53', '0', NULL, '2021-08-17 20:07:09', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 113, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (60, 155.878, -263.437, 1.57237, 3, -1, 1, 100, 'Garaje', 6, 2438.35, -2537.32, 1095.43, 0, 0, 0, 210.861, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-09-01 00:07:15', '0', NULL, '2021-08-17 20:07:14', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 113, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (61, 158.591, -258.218, 1.57237, 3, -1, 1, 100, 'Garaje', 6, 2438.35, -2537.32, 1095.43, 0, 0, 0, 275.242, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 20:13:35', '0', NULL, '2021-08-17 20:07:19', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 113, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (62, 158.367, -250.315, 1.57812, 3, -1, 1, 100, 'Garaje', 6, 2438.35, -2537.32, 1095.43, 0, 0, 0, 277.165, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-09-01 00:01:47', '0', NULL, '2021-08-17 20:07:29', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 113, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (63, 158.522, -242.729, 1.57812, 0, -1, 1, 5000, 'Garaje', 2, 1.9, -3.2, 999.4, 0, 0, 0, 278.45, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 20:07:35', '0', NULL, '2021-08-17 20:07:35', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 112, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (64, 158.854, -234.787, 1.57812, 3, -1, 1, 100, 'Garaje', 6, 2438.35, -2537.32, 1095.43, 0, 0, 0, 272.204, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-28 23:23:34', '0', NULL, '2021-08-17 20:07:39', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 113, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (65, 158.634, -226.916, 1.57812, 3, -1, 1, 100, 'Garaje', 6, 2438.35, -2537.32, 1095.43, 0, 0, 0, 274.127, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-26 13:26:20', '0', NULL, '2021-08-17 20:07:44', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 113, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (66, -13.9867, 59.5631, 3.32434, 3, -1, 1, 50, 'Casilla', 2, 1.9, -3.2, 999.4, 0, 0, 0, 233.493, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-31 21:29:08', '0', NULL, '2021-08-17 20:15:45', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 112, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (67, -51.0711, 85.5705, 3.29518, 3, -1, 1, 50, 'Casilla', 2, 1.9, -3.2, 999.4, 0, 0, 0, 351.285, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 20:15:55', '0', NULL, '2021-08-17 20:15:55', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 112, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (68, -45.9186, 76.6469, 3.29518, 3, -1, 1, 50, 'Casilla', 2, 1.9, -3.2, 999.4, 0, 0, 0, 250.077, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 20:16:08', '0', NULL, '2021-08-17 20:16:08', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 112, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (69, -56.258, 72.9057, 3.29518, 3, -1, 1, 50, 'Casilla', 2, 1.9, -3.2, 999.4, 0, 0, 0, 121.294, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-25 11:12:26', '0', NULL, '2021-08-17 20:16:11', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 112, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (70, -480.328, -134.794, 69.5422, 0, -1, 0, 0, 'test', 2, 1.9, -3.2, 999.4, 0, 0, 0, 160.559, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 20:17:24', 'TheDarK', '2021-08-17 20:17:35', '2021-08-17 20:17:06', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 112, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (71, -452.153, -53.5537, 59.7172, 0, -1, 1, 10000, 'Casa Remolque', 2, 1.9, -3.2, 999.4, 0, 0, 0, 271.594, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 20:19:25', '0', NULL, '2021-08-17 20:19:13', 'elcocainas123', 0, NULL, NULL, NULL, 0, NULL, 1, 112, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (72, -450.585, -42.0807, 59.8952, 0, -1, 1, 5000, 'Casilla', 2, 1.9, -3.2, 999.4, 0, 0, 0, 333.185, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 20:19:14', '0', NULL, '2021-08-17 20:19:14', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 112, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (73, -455.723, -62.4043, 59.764, 0, -1, 1, 5000, 'Casilla', 2, 1.9, -3.2, 999.4, 0, 0, 0, 123.711, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 20:19:33', '0', NULL, '2021-08-17 20:19:33', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 112, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (74, -458.316, -58.3156, 60.1952, 0, -1, 1, 5000, 'Casilla', 2, 1.9, -3.2, 999.4, 0, 0, 0, 109.038, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 20:19:35', 'TheDarK', '2021-08-17 20:19:55', '2021-08-17 20:19:35', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 112, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (75, -485.856, -63.082, 60.707, 0, -1, 1, 10000, 'Casa Remolque', 2, 1.9, -3.2, 999.4, 0, 0, 0, 263.761, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 20:20:00', '0', NULL, '2021-08-17 20:19:50', 'elcocainas123', 0, NULL, NULL, NULL, 0, NULL, 1, 112, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (76, 291.004, 145.117, 3.53125, 0, -1, 1, 45000, 'Casa', 8, 2365.14, -1135.35, 1050.87, 0, 0, 0, 168.244, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 20:25:36', '0', NULL, '2021-08-17 20:25:01', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 66, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (77, 310.771, 148.613, 3.69375, 0, -1, 1, 45000, 'Casa', 8, 2365.14, -1135.35, 1050.87, 0, 0, 0, 205.099, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-26 13:19:17', '0', NULL, '2021-08-17 20:26:26', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 66, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (78, 327.497, 157.294, 4.04925, 0, -1, 1, 45000, 'Casa', 1, 223.22, 1287.17, 1082.14, 0, 0, 0, 290.618, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 20:27:29', '0', NULL, '2021-08-17 20:26:59', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 77, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (79, 795.114, -506.148, 18.0129, 0, -1, 1, 35000, 'Casa', 2, 446.97, 1397.22, 1084.3, 0, 0, 0, 1.33762, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 20:51:36', '0', NULL, '2021-08-17 20:51:23', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 72, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (80, 617.898, -576.561, 17.9848, 0, -1, 1, 35000, 'Casa', 2, 446.97, 1397.22, 1084.3, 0, 0, 0, 90.8446, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 20:52:14', '0', NULL, '2021-08-17 20:52:14', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 72, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (81, 745.672, -591.146, 18.0129, 0, -1, 1, 35000, 'Casa', 2, 446.97, 1397.22, 1084.3, 0, 0, 0, 266.354, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 20:52:25', '0', NULL, '2021-08-17 20:52:25', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 72, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (82, 317.704, 54.5625, 3.375, 0, -1, 0, 10000, 'Chabola', 10, 2259.68, -1136.09, 1050.63, 0, 0, 270, 233.537, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-26 13:44:45', '0', NULL, '2021-08-17 20:59:05', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 81, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (83, 309.132, 44.4258, 3.08797, 0, -1, 1, 10000, 'Chabola', 10, 2259.68, -1136.09, 1050.63, 0, 0, 270, 19.7565, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 21:01:34', '0', NULL, '2021-08-17 21:01:34', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 81, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (84, 316.453, 18.2412, 4.51562, 0, -1, 1, 10000, 'Chabola', 10, 2259.68, -1136.09, 1050.63, 0, 0, 270, 13.8293, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-26 07:36:34', '0', NULL, '2021-08-17 21:01:48', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 81, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (85, 293.733, 5.36601, 2.81094, 0, -1, 0, 10000, 'Chabola', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 138.125, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 21:05:50', '0', NULL, '2021-08-17 21:04:15', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (86, 255.705, -144.62, 1.57812, 2, 0, 0, 0, 'Gimnasio Riverside', 47, 1573.45, -2413.11, 13.6078, 0, 0, 270, 181.088, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-26 23:56:23', '0', NULL, '2021-08-17 21:04:39', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 172, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (87, 286.942, 30.5889, 2.72031, 0, -1, 1, 10000, 'Chabola', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 195.491, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 21:06:23', '0', NULL, '2021-08-17 21:06:23', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (88, 340.089, 33.5771, 6.40734, 0, -1, 1, 10000, 'Chabola', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 142.014, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 21:06:31', '0', NULL, '2021-08-17 21:06:31', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (89, 357.86, 33.748, 6.41094, 0, -1, 1, 10000, 'Chabola', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 317.859, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 21:06:36', '0', NULL, '2021-08-17 21:06:36', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (90, 343.787, 16.0986, 6.31371, 0, -1, 1, 10000, 'Chabola', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 322.665, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 21:06:40', '0', NULL, '2021-08-17 21:06:40', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (91, 342.628, 62.7168, 3.86296, 0, -1, 1, 10000, 'Chabola', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 302.005, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 21:06:52', '0', NULL, '2021-08-17 21:06:52', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (92, 243.292, -178.157, 1.58216, 2, 0, 0, 0, 'Ammu-Nation', 4, 285.71, -86.37, 1001.52, 0, 0, 0, 267.496, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-29 20:35:59', '0', NULL, '2021-08-17 21:07:20', 'elcocainas123', 0, NULL, NULL, NULL, 0, NULL, 1, 52, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (93, 142.438, -180.828, 1.57812, 2, 0, 0, 0, 'Tienda Electronica', 6, -2240.69, 128.43, 1035.41, 0, 0, 270, 100.804, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-09-01 16:08:29', '0', NULL, '2021-08-17 21:10:03', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 59, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (94, -463.065, -66.748, 60.0035, 0, -1, 1, 5000, 'Casilla', 2, 1.9, -3.2, 999.4, 0, 0, 0, 205.241, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-17 21:10:53', '0', NULL, '2021-08-17 21:10:53', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 112, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (95, 171.816, -200.901, 1.57031, 2, 0, 0, 0, 'Tienda de Ropa', 3, 207.01, -139.91, 1003.5, 0, 0, 0, 214.498, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-31 22:30:53', '0', NULL, '2021-08-17 21:11:57', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 13, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (96, 202.664, -201.944, 1.57812, 2, 0, 0, 0, 'BurgerShot', 10, 362.88, -75.11, 1001.5, 0, 0, 315, 179.868, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-25 13:32:13', 'TheDarK', '2021-08-25 13:32:26', '2021-08-17 21:38:01', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 31, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (97, 259.65, -121.134, 3.53539, 0, -1, 1, 1500, 'Garaje', 24, 529.506, 63.9219, 1044.46, 0, 0, 0, 96.596, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 12:44:45', '0', NULL, '2021-08-17 22:14:13', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 149, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (98, -32.0684, 1045.98, 20.0172, 2, -1, 0, 0, 'SpeedMotors', 24, 529.506, 63.9219, 1044.46, 0, 0, 0, 4.71594, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-09-01 16:44:17', '0', NULL, '2021-08-18 01:37:45', 'Dreko', 0, NULL, NULL, NULL, 19, NULL, 1, 149, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (99, 215.132, -252.76, 1.60781, 0, 11, 0, 0, 'test', 3, 390.44, 173.91, 1008.38, 0, 0, 90, 152.204, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 02:55:31', 'Dreko', '2021-08-18 02:55:40', '2021-08-18 01:49:35', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 12, 1, NULL, NULL);
INSERT INTO `interiors` VALUES (100, 743.281, -509.32, 18.0129, 0, -1, 0, 30000, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 3.45798, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 08:00:52', '0', NULL, '2021-08-18 08:00:03', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 74, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (101, 766.664, -556.782, 18.0129, 0, -1, 1, 30000, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 184.73, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-26 07:38:50', '0', NULL, '2021-08-18 08:01:25', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 74, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (102, 818.2, -509.319, 18.0129, 0, -1, 1, 30000, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 0.574036, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 08:01:34', '0', NULL, '2021-08-18 08:01:34', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 74, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (103, 621.055, -603.045, 17.9848, 0, -1, 1, 30000, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 94.2669, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 08:01:55', '0', NULL, '2021-08-18 08:01:55', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 74, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (104, 620.952, -553.589, 17.9848, 0, -1, 1, 30000, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 91.3829, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 08:02:03', '0', NULL, '2021-08-18 08:02:03', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 74, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (105, 250.886, -309.508, 1.57812, 0, -1, 0, 45000, 'Casa', 3, 235.44, 1186.83, 1080.25, 0, 0, 0, 272.946, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 09:12:53', '0', NULL, '2021-08-18 09:12:12', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 75, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (106, -410.647, -403.051, 16.2031, 0, -1, 0, 0, 'Test', 43, 522.45, 2379.21, 435.4, 0, 0, 0, 244.595, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 10:15:10', 'TheDarK', '2021-08-18 10:15:22', '2021-08-18 09:21:11', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 166, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (107, 681.647, -473.347, 16.5363, 1, -1, 1, 20000, 'Bar', 1, 681.542, -451.207, -25.6172, 0, 0, 180, 1.15085, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-30 22:24:58', '0', NULL, '2021-08-18 09:53:18', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 47, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (108, 65.0383, -186.638, 1.90426, 2, 0, 0, 0, 'Libreria', 22, 1910.78, -2395.6, 13.56, 0, 0, 0, 358.509, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-30 06:28:30', '0', NULL, '2021-08-18 10:01:31', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 120, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (109, 215.868, 14.5986, 2.5708, 3, -1, 0, 550, 'Oficina', 18, -18.2, -139.9, 1043.9, 0, 0, 180, 89.4548, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-25 22:20:32', '0', NULL, '2021-08-18 10:19:37', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 170, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (110, -74.668, 59.8447, 3.11719, 0, -1, 1, 5000, 'Casilla', 2, 1.9, -3.2, 999.4, 0, 0, 0, 340.101, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 10:26:39', '0', NULL, '2021-08-18 10:26:39', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 112, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (111, 503.942, -11.7305, 1000.68, 2, 0, 0, 0, 'BaÃ±o', 8, 2480.6, -1687.23, 2031.49, 15, 17, 0, 274.044, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-26 18:37:38', '0', NULL, '2021-08-18 10:42:01', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 115, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (112, -734.514, 254.239, 2.18438, 0, -1, 1, 45000, 'Casa', 10, 563.12, 2641.36, 9.29688, 0, 0, 90, 36.7581, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-09-11 14:44:10', '0', NULL, '2021-08-18 11:00:01', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 146, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (113, -781.882, 213.729, 1.24531, 0, -1, 1, 35000, 'Casa', 10, 563.12, 2641.36, 9.29688, 0, 0, 90, 301.489, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-09-11 14:43:19', '0', NULL, '2021-08-18 11:01:19', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 146, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (114, -686.331, 282.574, 1.07211, 0, -1, 1, 35000, 'Casa', 10, 563.12, 2641.36, 9.29688, 0, 0, 90, 18.8391, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-09-11 14:45:01', '0', NULL, '2021-08-18 11:04:15', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 146, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (115, -3.92578, 77.0869, 3.11719, 0, -1, 1, 5000, 'Casilla', 2, 1.9, -3.2, 999.4, 0, 0, 0, 271.463, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:48:04', '0', NULL, '2021-08-18 11:23:01', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 112, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (116, 259.592, -92.2998, 3.53539, 0, -1, 1, 1500, 'Garaje', 24, 529.506, 63.9219, 1044.46, 0, 0, 0, 97.2057, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 12:45:18', '0', NULL, '2021-08-18 12:45:18', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 149, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (117, 306.019, -92.1562, 3.53539, 0, -1, 1, 1500, 'Garaje', 24, 529.506, 63.9219, 1044.46, 0, 0, 0, 263.278, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 12:45:26', '0', NULL, '2021-08-18 12:45:26', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 149, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (118, 305.992, -121.121, 3.53539, 0, -1, 1, 1500, 'Garaje', 24, 529.506, 63.9219, 1044.46, 0, 0, 0, 262.646, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 12:45:33', '0', NULL, '2021-08-18 12:45:33', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 149, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (119, 302.548, -172.236, 1.57812, 1, -1, 1, 35000, 'Gasolinera', 4, -27.3, -31.41, 1003.55, 0, 0, 0, 177.588, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-31 22:37:55', '0', NULL, '2021-08-18 12:47:04', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 54, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (120, 161.868, -51.2334, 1.57812, 2, 0, 0, 0, 'Auto Escuela de Riverside', 3, -2029.61, -119.36, 1035.17, 0, 0, 0, 93.6407, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:15:52', 'TheDarK', '2021-08-25 13:41:51', '2021-08-18 13:15:42', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 65, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (121, 70.1826, 1161.96, 20.9402, 3, -1, 1, 50, 'HabitaciÃ³n #2', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 177.006, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:34:09', '0', NULL, '2021-08-18 13:30:07', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (122, 68.7031, 1161.96, 20.9402, 3, -1, 1, 50, 'HabitaciÃ³n #1', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 176.693, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:38:11', '0', NULL, '2021-08-18 13:30:10', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (123, 76.709, 1162.02, 20.9402, 3, -1, 1, 50, 'HabitaciÃ³n #3', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 176.693, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:36:34', '0', NULL, '2021-08-18 13:30:15', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (124, 78.2461, 1161.96, 20.9402, 3, -1, 1, 50, 'HabitaciÃ³n #4', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 176.693, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:36:47', '0', NULL, '2021-08-18 13:30:19', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (125, 84.8799, 1161.96, 20.9402, 3, -1, 1, 50, 'HabitaciÃ³n #5', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 176.693, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:37:21', '0', NULL, '2021-08-18 13:30:24', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (126, 86.3301, 1161.96, 20.9402, 3, -1, 1, 50, 'HabitaciÃ³n #6', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 176.693, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:37:42', '0', NULL, '2021-08-18 13:30:27', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (127, 68.8135, 1161.96, 18.6641, 3, -1, 1, 50, 'HabitaciÃ³n #7', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 181.708, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:38:37', '0', NULL, '2021-08-18 13:30:39', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (128, 70.0459, 1161.97, 18.6641, 3, -1, 1, 50, 'HabitaciÃ³n #8', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 181.395, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:38:48', '0', NULL, '2021-08-18 13:30:41', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (129, 76.7207, 1161.96, 18.6641, 3, -1, 1, 50, 'HabitaciÃ³n #9', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 183.9, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:39:01', '0', NULL, '2021-08-18 13:30:47', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (130, 78.29, 1161.96, 18.6641, 3, -1, 1, 50, 'HabitaciÃ³n #10', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 183.9, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:39:14', '0', NULL, '2021-08-18 13:30:54', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (131, 84.5391, 1161.96, 18.6565, 3, -1, 1, 50, 'HabitaciÃ³n #11', 6, 297.05, -111.79, 1001.51, 0, 0, 0, 183.9, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:31:06', '0', NULL, '2021-08-18 13:31:06', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 60, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (132, 86.2988, 1161.96, 18.6565, 3, -1, 1, 50, 'HabitaciÃ³n #12', 6, 297.05, -111.79, 1001.51, 0, 0, 0, 183.9, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:31:08', '0', NULL, '2021-08-18 13:31:08', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 60, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (133, -247.772, 1001.48, 20.9399, 0, -1, 1, 45000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 348.225, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:34:40', '0', NULL, '2021-08-18 13:31:16', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (134, -239.711, 1000.14, 19.7493, 0, -1, 1, 1000, 'Garage', 3, 620.01, -119.85, 998.84, 0, 0, 180, 356.135, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:40:56', '0', NULL, '2021-08-18 13:34:42', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 70, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (135, -459.515, -48.2959, 59.9449, 0, -1, 0, 10000, 'Chabola', 10, 422.26, 2536.37, 10, 0, 0, 90, 270.007, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:37:49', '0', NULL, '2021-08-18 13:37:33', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 82, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (136, -463.934, -44.2168, 59.9557, 0, -1, 1, 10000, 'Chabola', 10, 422.26, 2536.37, 10, 0, 0, 90, 91.7565, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:38:13', '0', NULL, '2021-08-18 13:38:13', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 82, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (137, 99.2812, 1162.21, 20.9402, 3, -1, 1, 50, 'Habitacion #1', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 267.156, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:40:04', '0', NULL, '2021-08-18 13:40:04', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (138, 99.2842, 1163.56, 20.9402, 3, -1, 1, 50, 'Habitacion #2', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 267.156, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:40:08', '0', NULL, '2021-08-18 13:40:08', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (139, 99.2852, 1170.25, 20.9402, 3, -1, 1, 50, 'Habitacion #3', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 267.156, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:40:11', '0', NULL, '2021-08-18 13:40:11', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (140, 99.2344, 1171.57, 20.9402, 3, -1, 1, 50, 'Habitacion #4', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 267.156, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:40:13', '0', NULL, '2021-08-18 13:40:13', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (141, 99.2852, 1177.99, 20.9402, 3, -1, 1, 50, 'Habitacion #5', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 267.156, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:40:16', '0', NULL, '2021-08-18 13:40:16', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (142, 99.2852, 1179.52, 20.9402, 3, -1, 1, 50, 'Habitacion #6', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 267.156, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:40:19', '0', NULL, '2021-08-18 13:40:19', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (143, 99.2842, 1162.2, 18.6565, 3, -1, 1, 50, 'Habitacion #7', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 264.645, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:40:31', '0', NULL, '2021-08-18 13:40:31', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (144, 99.2842, 1163.95, 18.6641, 3, -1, 1, 50, 'Habitacion #8', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 264.332, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:40:37', '0', NULL, '2021-08-18 13:40:37', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (145, 99.2852, 1170.32, 18.6641, 3, -1, 1, 50, 'Habitacion #9', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 264.332, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:40:44', '0', NULL, '2021-08-18 13:40:44', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (146, 99.2852, 1171.89, 18.6641, 3, -1, 1, 50, 'Habitacion #10', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 264.332, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:40:47', '0', NULL, '2021-08-18 13:40:47', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (147, 99.2803, 1178.12, 18.6641, 3, -1, 1, 50, 'Habitacion #11', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 264.332, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:40:50', '0', NULL, '2021-08-18 13:40:50', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (148, 99.2822, 1179.75, 18.6641, 3, -1, 1, 50, 'Habitacion #12', 5, 2233.53, -1115.26, 1050.88, 0, 0, 0, 264.332, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:40:54', '0', NULL, '2021-08-18 13:40:54', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 79, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (149, -278.92, 1003.76, 20.9399, 0, -1, 1, 35000, 'Casa', 5, 22.98, 1403.6, 1084.42, 0, 0, 0, 255.746, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:42:01', '0', NULL, '2021-08-18 13:41:27', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 94, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (150, 13.8877, 1210.48, 22.5032, 3, -1, 1, 50, 'Habitacion #1', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 274.989, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:41:28', '0', NULL, '2021-08-18 13:41:28', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (151, 13.8857, 1219.98, 22.5032, 3, -1, 1, 50, 'Habitacion #2', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 274.989, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:41:33', '0', NULL, '2021-08-18 13:41:33', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (152, 13.876, 1229, 22.5032, 3, -1, 1, 50, 'Habitacion #3', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 274.989, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:41:36', '0', NULL, '2021-08-18 13:41:36', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (153, 13.8867, 1220.12, 19.3387, 3, -1, 1, 50, 'Habitacion #4', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 264.645, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:41:45', '0', NULL, '2021-08-18 13:41:45', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (154, 13.8848, 1229.48, 19.3414, 3, -1, 1, 50, 'Habitacion #5', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 264.645, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:41:49', '0', NULL, '2021-08-18 13:41:49', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (155, 13.8848, 1210.27, 19.3452, 3, -1, 1, 50, 'Habitacion #6', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 271.853, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:41:56', '0', NULL, '2021-08-18 13:41:56', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (156, -17.5967, 1215.41, 22.4648, 3, -1, 1, 50, 'Habitacion #7', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 8.96771, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:42:07', '0', NULL, '2021-08-18 13:42:07', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (157, -26.9961, 1215.41, 22.4648, 3, -1, 1, 50, 'Habitacion #8', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 8.96771, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:42:12', '0', NULL, '2021-08-18 13:42:12', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (158, -36.0273, 1215.41, 22.4648, 3, -1, 1, 50, 'Habitacion #9', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 8.96771, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:42:18', '0', NULL, '2021-08-18 13:42:18', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (159, -259.138, 1044.09, 20.9399, 0, -1, 1, 35000, 'Casa', 5, 22.98, 1403.6, 1084.42, 0, 0, 0, 167.366, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:42:39', '0', NULL, '2021-08-18 13:42:30', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 94, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (160, -17.5586, 1215.41, 19.3527, 3, -1, 1, 50, 'Habitacion #9', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 359.563, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:42:32', '0', NULL, '2021-08-18 13:42:32', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (161, -26.6396, 1215.41, 19.3523, 3, -1, 1, 50, 'Habitacion #9', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 8.336, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:42:37', '0', NULL, '2021-08-18 13:42:37', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (162, -36.0029, 1215.41, 19.3523, 3, -1, 1, 50, 'Habitacion #10', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 8.336, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:42:41', '0', NULL, '2021-08-18 13:42:41', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (163, -258.935, 1083.82, 20.9399, 0, -1, 1, 35000, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 275.44, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:43:35', '0', NULL, '2021-08-18 13:43:07', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 74, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (164, -90.5156, 1229.74, 22.4403, 3, -1, 1, 50, 'Habitacion #1', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 9.02264, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:43:16', '0', NULL, '2021-08-18 13:43:16', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (165, -89.1279, 1229.74, 22.4403, 3, -1, 1, 50, 'Habitacion #2', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 359.624, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-31 22:49:07', '0', NULL, '2021-08-18 13:43:18', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (166, -89.0449, 1229.73, 19.7422, 3, -1, 1, 50, 'Habitacion #3', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 359.624, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:43:26', '0', NULL, '2021-08-18 13:43:26', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (167, -90.8008, 1229.68, 19.7422, 3, -1, 1, 50, 'Habitacion #4', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 359.624, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-31 23:30:41', '0', NULL, '2021-08-18 13:43:28', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (168, -101.608, 1234.53, 19.7422, 3, -1, 1, 50, 'Habitacion #5', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 270.007, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:43:39', '0', NULL, '2021-08-18 13:43:39', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (169, -101.609, 1234.4, 22.4403, 3, -1, 1, 50, 'Habitacion #6', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 286.3, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:43:50', '0', NULL, '2021-08-18 13:43:50', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (170, -78.1709, 1234.59, 22.4403, 3, -1, 1, 50, 'Habitacion #7', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 104.276, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-31 22:48:57', '0', NULL, '2021-08-18 13:44:00', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (171, -258.75, 1126.14, 20.968, 0, -1, 1, 45000, 'Casa', 5, 22.98, 1403.6, 1084.42, 0, 0, 0, 348.049, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:44:23', '0', NULL, '2021-08-18 13:44:07', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 94, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (172, -78.1699, 1234.59, 19.7422, 3, -1, 1, 50, 'Habitacion #8', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 94.2504, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-31 22:49:24', '0', NULL, '2021-08-18 13:44:13', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (173, -255.368, 1134.01, 19.7774, 0, -1, 1, 1000, 'Garage', 3, 620.01, -119.85, 998.84, 0, 0, 180, 92.0092, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:44:56', '0', NULL, '2021-08-18 13:44:39', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 70, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (174, -255.829, 1159.11, 19.7774, 0, -1, 1, 1000, 'Garage', 3, 620.01, -119.85, 998.84, 0, 0, 180, 92.1025, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:45:45', '0', NULL, '2021-08-18 13:45:45', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 70, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (175, -259.082, 1151.03, 20.968, 0, -1, 1, 45000, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 7.19888, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:46:20', '0', NULL, '2021-08-18 13:46:10', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 74, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (176, -68.0879, 1221.91, 19.6603, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 287.459, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:50:09', '0', NULL, '2021-08-18 13:50:09', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (177, -68.0771, 1223.36, 19.6516, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 287.459, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:50:11', '0', NULL, '2021-08-18 13:50:11', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (178, -68.0732, 1221.82, 22.4403, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 281.213, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:50:17', '0', NULL, '2021-08-18 13:50:17', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (179, -68.0811, 1223.71, 22.4403, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 274.484, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:50:19', '0', NULL, '2021-08-18 13:50:19', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (180, -63.3594, 1234.38, 22.4403, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 181.758, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:50:26', '0', NULL, '2021-08-18 13:50:26', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (181, -63.3193, 1210.95, 22.4365, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 11.0552, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:50:35', '0', NULL, '2021-08-18 13:50:35', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (182, -63.2676, 1234.39, 19.5283, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 173.589, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:50:45', '0', NULL, '2021-08-18 13:50:45', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (183, -63.2842, 1210.95, 19.6644, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 358.086, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:50:55', '0', NULL, '2021-08-18 13:50:55', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (184, -0.894531, 1185.72, 19.4023, 3, -1, 1, 50, 'Habitacion #1', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 91.1412, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:51:36', '0', NULL, '2021-08-18 13:51:36', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (185, -0.889648, 1178.8, 19.4486, 3, -1, 1, 50, 'Habitacion #2', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 90.8281, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:51:40', '0', NULL, '2021-08-18 13:51:40', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (186, -0.893555, 1171.84, 19.4979, 3, -1, 1, 50, 'Habitacion #3', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 90.8281, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:51:44', '0', NULL, '2021-08-18 13:51:44', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (187, -0.891602, 1165.11, 19.5495, 3, -1, 1, 50, 'Habitacion #4', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 90.8281, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:51:49', '0', NULL, '2021-08-18 13:51:49', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (188, 26.1699, 1161.19, 19.6366, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 270.161, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:51:53', '0', NULL, '2021-08-18 13:51:53', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (189, 26.1611, 1167.69, 19.5233, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 342.813, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-30 21:41:02', '0', NULL, '2021-08-18 13:51:53', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (190, 26.1387, 1174.76, 19.387, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 8.33051, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:51:58', '0', NULL, '2021-08-18 13:51:58', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (191, 26.1797, 1181.56, 19.2559, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 315.266, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:52:43', '0', NULL, '2021-08-18 13:52:02', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (192, -159.133, 1082.49, 19.7422, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 205.555, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:57:40', '0', NULL, '2021-08-18 13:57:40', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (193, -151.669, 1082.54, 19.7422, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 196.43, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:57:43', '0', NULL, '2021-08-18 13:57:43', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (194, -149.908, 1082.49, 19.7422, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 196.43, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:57:44', '0', NULL, '2021-08-18 13:57:44', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (195, -142.29, 1082.54, 19.75, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 196.43, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:57:46', '0', NULL, '2021-08-18 13:57:46', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (196, -140.353, 1082.49, 19.7422, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 196.43, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:57:47', '0', NULL, '2021-08-18 13:57:47', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (197, -133.207, 1082.49, 19.7539, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 181.495, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:57:52', '0', NULL, '2021-08-18 13:57:52', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (198, -130.945, 1082.5, 19.7631, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 207.801, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:57:54', '0', NULL, '2021-08-18 13:57:54', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (199, -123.841, 1082.49, 19.7692, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 230.989, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:57:57', '0', NULL, '2021-08-18 13:57:57', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (200, -126.496, 1072.47, 19.7902, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 359.442, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:58:03', '0', NULL, '2021-08-18 13:58:03', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (201, -128.333, 1072.47, 19.7828, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 359.442, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:58:04', '0', NULL, '2021-08-18 13:58:04', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (202, -135.855, 1072.35, 19.7524, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 359.442, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:58:07', '0', NULL, '2021-08-18 13:58:07', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (203, -137.692, 1072.47, 19.7422, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 19.4434, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:58:08', '0', NULL, '2021-08-18 13:58:08', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (204, -145.155, 1072.47, 19.75, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 0.403748, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:58:12', '0', NULL, '2021-08-18 13:58:12', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (205, -147.11, 1072.47, 19.75, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 0.403748, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:58:13', '0', NULL, '2021-08-18 13:58:13', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (206, -154.381, 1072.47, 19.75, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 0.403748, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:58:16', '0', NULL, '2021-08-18 13:58:16', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (207, -156.296, 1072.47, 19.7422, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 36, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:58:18', '0', NULL, '2021-08-18 13:58:18', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (208, -159.165, 1082.49, 23.0786, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 182.637, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:58:30', '0', NULL, '2021-08-18 13:58:30', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (209, -151.667, 1082.49, 23.0786, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 188.668, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:58:33', '0', NULL, '2021-08-18 13:58:33', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (210, -149.85, 1082.49, 23.0786, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 182.637, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:58:35', '0', NULL, '2021-08-18 13:58:35', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (211, -142.46, 1082.49, 23.0786, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 182.637, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:58:37', '0', NULL, '2021-08-18 13:58:37', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (212, -140.426, 1082.49, 23.0786, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 187.8, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:58:39', '0', NULL, '2021-08-18 13:58:39', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (213, -132.995, 1082.5, 23.0786, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 182.637, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:58:41', '0', NULL, '2021-08-18 13:58:41', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (214, -131.257, 1082.49, 23.0786, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 151.842, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:58:43', '0', NULL, '2021-08-18 13:58:43', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (215, -123.212, 1082.73, 23.0786, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 182.637, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:58:46', 'TheDarK', '2021-08-18 13:58:56', '2021-08-18 13:58:46', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (216, -123.879, 1082.49, 23.0786, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 181.198, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:58:58', '0', NULL, '2021-08-18 13:58:58', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (217, -126.421, 1072.47, 23.0786, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 358.146, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:59:03', '0', NULL, '2021-08-18 13:59:03', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (218, -128.464, 1072.47, 23.0786, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 358.146, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:59:05', '0', NULL, '2021-08-18 13:59:05', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (219, -135.776, 1072.47, 23.0786, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 359.591, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:59:09', '0', NULL, '2021-08-18 13:59:09', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (220, -137.772, 1072.47, 23.0786, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 358.146, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:59:11', '0', NULL, '2021-08-18 13:59:11', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (221, -145.019, 1072.47, 23.0786, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 1.5079, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:59:15', '0', NULL, '2021-08-18 13:59:15', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (222, -147.046, 1072.47, 23.0786, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 1.5079, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:59:17', '0', NULL, '2021-08-18 13:59:17', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (223, -154.256, 1072.45, 23.0786, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 1.5079, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:59:20', '0', NULL, '2021-08-18 13:59:20', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (224, -156.492, 1072.46, 23.0786, 3, -1, 1, 50, 'Habitacion', 1, 2218.24, -1076.27, 1050.48, 0, 0, 90, 1.5079, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 13:59:21', '0', NULL, '2021-08-18 13:59:21', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 89, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (225, -258.969, 1176.14, 20.968, 0, -1, 1, 45000, 'Casa', 5, 22.98, 1403.6, 1084.42, 0, 0, 0, 12.4504, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 14:51:02', '0', NULL, '2021-08-18 14:51:02', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 94, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (226, -256.244, 1183.7, 19.7774, 0, -1, 1, 1000, 'Garage', 3, 620.01, -119.85, 998.84, 0, 0, 180, 88.3781, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 14:51:23', '0', NULL, '2021-08-18 14:51:23', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 70, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (227, -290.143, 1176.75, 20.9399, 0, -1, 1, 35000, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 182.252, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 14:51:50', '0', NULL, '2021-08-18 14:51:50', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 74, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (228, -324.472, 1164.01, 20.9399, 0, -1, 1, 35000, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 282.998, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 14:52:09', '0', NULL, '2021-08-18 14:52:09', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 74, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (229, -369.593, 1169.08, 20.2719, 0, -1, 1, 50000, 'Casa', 2, 226.48, 1239.87, 1082.14, 0, 0, 90, 234.295, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-26 23:35:23', '0', NULL, '2021-08-18 14:53:08', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 76, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (230, -360.553, 1190.7, 19.7422, 0, -1, 1, 1000, 'Garage', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 181.516, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-26 23:35:54', '0', NULL, '2021-08-18 14:53:59', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 24, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (231, -360.051, 1141.57, 20.9399, 0, -1, 1, 35000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 184.477, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 14:55:10', '0', NULL, '2021-08-18 14:54:43', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (232, -362.291, 1110.73, 20.9399, 0, -1, 1, 45000, 'Casa', 5, 22.98, 1403.6, 1084.42, 0, 0, 0, 178.017, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-31 22:53:29', '0', NULL, '2021-08-18 14:55:32', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 94, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (233, -365.252, 1102.68, 19.7493, 0, -1, 1, 1000, 'Garage', 3, 620.01, -119.85, 998.84, 0, 0, 180, 269.776, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-31 22:53:43', '0', NULL, '2021-08-18 14:55:41', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 70, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (234, -328.663, 1118.76, 20.9399, 0, -1, 1, 35000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 185.043, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 14:56:14', '0', NULL, '2021-08-18 14:56:06', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (235, -298.505, 1115.14, 20.9399, 0, -1, 1, 45000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 117.586, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 14:56:42', '0', NULL, '2021-08-18 14:56:42', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (236, -305.875, 1118.58, 19.7493, 0, -1, 1, 1000, 'Garage', 3, 620.01, -119.85, 998.84, 0, 0, 180, 178.599, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 14:56:50', '0', NULL, '2021-08-18 14:56:50', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 70, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (237, 45.2168, 1216.08, 18.9933, 1, -1, 1, 35000, 'Gasolinera', 10, 6.05, -31.27, 1003.54, 0, 0, 0, 273.819, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 15:01:48', '0', NULL, '2021-08-18 14:59:41', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 22, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (238, -36.1689, 1115.24, 20.9399, 0, -1, 1, 35000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 255.686, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 15:02:17', '0', NULL, '2021-08-18 15:02:17', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (239, -18.1836, 1115.34, 20.9399, 0, -1, 1, 45000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 86.5104, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 15:02:28', '0', NULL, '2021-08-18 15:02:28', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (240, -25.9404, 1118.34, 19.7493, 0, -1, 1, 1000, 'Garage', 3, 620.01, -119.85, 998.84, 0, 0, 180, 176.512, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 15:02:36', '0', NULL, '2021-08-18 15:02:36', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 70, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (241, -90.3984, 1118.33, 20.786, 0, -1, 1, 1000, 'Garage', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 354.125, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 15:04:00', '0', NULL, '2021-08-18 15:03:52', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 24, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (242, 12.7314, 1113.18, 20.9399, 0, -1, 1, 35000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 102.831, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 15:04:15', '0', NULL, '2021-08-18 15:04:15', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (243, 3.73145, 1084.08, 19.7493, 0, -1, 1, 1000, 'Garage', 3, 620.01, -119.85, 998.84, 0, 0, 180, 86.1534, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 15:04:27', '0', NULL, '2021-08-18 15:04:27', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 70, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (244, 1.06641, 1075.96, 20.9399, 0, -1, 1, 45000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 3.08447, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 15:04:36', '0', NULL, '2021-08-18 15:04:36', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (245, -181.235, 1071.31, 19.7422, 1, -1, 1, 35000, 'Licoreria', 11, 501.84, -67.84, 998.75, 0, 0, 180, 93.5528, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 15:07:50', '0', NULL, '2021-08-18 15:05:39', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 2, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (246, -206.382, 1063.21, 19.8288, 2, 0, 0, 0, 'Pizzeria', 5, 372.18, -133.28, 1001.49, 0, 0, 0, 270.88, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 15:12:01', '0', NULL, '2021-08-18 15:08:45', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 18, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (247, -205.72, 1049.39, 19.9136, 2, 0, 0, 0, 'Ammunation', 1, 285.39, -41.44, 1001.51, 0, 0, 0, 267.453, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-26 17:37:53', '0', NULL, '2021-08-18 15:12:38', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 25, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (248, -366.438, -450.729, 11.6438, 0, -1, 1, 1000, 'Garage', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 87.9167, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-18 21:04:48', 'nox', '2021-08-18 21:09:15', '2021-08-18 21:04:48', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 24, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (249, -364.616, -436.293, 11.6438, 0, -1, 0, 0, 'Mansion-Bratva', 5, 140.39, 1366.36, 1083.85, 0, 0, 0, 99.3317, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-09-01 00:18:46', '0', NULL, '2021-08-18 21:04:50', 'Dreko', 0, NULL, NULL, NULL, 7, NULL, 1, 95, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (250, 134.648, 1371.86, 1083.86, 0, -1, 0, 0, 'Garaje', 1, 613.52, 3.31, 1000.92, 249, 5, 180, 272.605, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-31 22:28:10', '0', NULL, '2021-08-18 21:08:21', 'Dreko', 0, NULL, NULL, NULL, 7, NULL, 1, 24, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (251, -139.814, 1109.05, 19.75, 1, -1, 1, 45000, 'Tienda de Ropa', 1, 203.79, -50.34, 1001.8, 0, 0, 0, 185.114, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-25 21:47:10', '0', NULL, '2021-08-19 19:08:07', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 26, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (252, -93.0381, 1109.28, 20.0438, 1, -1, 1, 45000, 'Oficina Tequila', 56, 2132.87, -1638.89, 389.733, 0, 0, 0, 185.092, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-19 19:18:41', '0', NULL, '2021-08-19 19:12:08', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 155, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (253, -101.47, 1109.45, 20.09, 1, -1, 1, 45000, 'TEQUI-LA-LA', 29, 2532.83, -1667.51, 246.67, 0, 0, 0, 342.902, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-19 19:13:48', '0', NULL, '2021-08-19 19:13:03', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 127, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (254, 165.748, -166.474, 6.77861, 3, -1, 1, 550, 'Oficina', 18, -18.2, -139.9, 1043.9, 0, 0, 180, 177.621, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-09-01 16:16:14', '0', NULL, '2021-08-19 19:20:08', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 170, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (255, -98.1215, 1367.71, 11.5031, 2, 0, 0, 0, 'Casino', 12, 1133.25, -15.26, 1000.67, 0, 0, 0, 135.51, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 20:31:00', '0', NULL, '2021-08-19 20:40:34', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 40, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (256, 1143.72, 6.31738, 1000.68, 2, 0, 0, 0, 'BaÃ±o', 8, 2480.6, -1687.23, 2031.49, 255, 12, 0, 270.375, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-19 20:51:16', '0', '2021-08-19 20:52:21', '2021-08-19 20:51:16', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 115, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (257, 854.523, -605.204, 18.4219, 3, -1, 1, 550, 'Oficinas', 2, 2111.56, -1442.17, 291.426, 0, 0, 270, 181.099, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-27 18:49:46', '0', NULL, '2021-08-19 21:12:06', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 151, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (258, 2126.83, -1442.7, 291.426, 0, -1, 1, 0, 'Oficinas', 2, 2517.21, -1296.71, 1076.94, 257, 2, 270, 269.353, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-27 18:49:39', '0', '2021-08-27 14:50:22', '2021-08-19 21:14:15', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 4, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (259, -78.459, 1086.05, 19.7995, 0, -1, 0, 0, 'Riverside TV/Radio', 24, 25.08, -6.73, 40.43, 0, 0, 0, 179.555, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-23 19:47:41', '0', NULL, '2021-08-20 16:44:46', 'TheDarK', 0, NULL, NULL, NULL, 5, NULL, 1, 122, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (260, -3.08203, -1.03418, 40.4297, 0, -1, 0, 0, 'Estudio', 77, 1150.19, -808.095, 2099.07, 259, 24, 180, 89.7569, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-23 19:46:16', '0', NULL, '2021-08-20 16:49:33', 'TheDarK', 0, NULL, NULL, NULL, 5, NULL, 1, 141, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (261, -101.62, 1089.51, 19.7422, 2, -1, 0, 0, 'Garaje', 22, 1433.62, 1363.21, 10.8305, 0, 0, 0, 187.773, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 16:56:07', '0', NULL, '2021-08-20 16:52:25', 'TheDarK', 0, NULL, NULL, NULL, 5, NULL, 1, 137, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (262, 117.977, -129.849, 1.64795, 2, 0, 0, 0, 'Riverside Sheriff Station', 10, 246.12, 107.983, 1003.22, 0, 0, 144, 83.1705, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-09-21 18:59:32', '0', NULL, '2021-08-20 17:02:22', 'Alejandro', 0, NULL, NULL, NULL, 0, NULL, 1, 189, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (263, 299.901, -226.401, 1.80222, 0, -1, 0, 0, 'Emergency Services [Fire Departament]', 1, -1800.77, 651.15, 960.386, 0, 0, 80, 268.694, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-26 13:53:02', '0', NULL, '2021-08-20 17:16:08', 'TheDarK', 0, NULL, NULL, NULL, 2, NULL, 1, 171, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (264, 321.033, -29.2012, 1.57812, 2, 0, 0, 0, 'Concesionario', 28, 962.51, 2054.07, 10.86, 0, 0, 0, 348.692, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-21 20:06:37', 'DjAngel', '2021-08-21 20:06:54', '2021-08-20 17:17:53', 'DjAngel', 0, NULL, NULL, NULL, 0, NULL, 1, 126, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (265, -1762.39, 673.812, 960.378, 0, -1, 0, 0, 'Garaje', 56, 1914.86, -2386.42, 13.5669, 263, 1, 270, 1.27719, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-26 11:29:33', '0', NULL, '2021-08-20 17:19:10', 'TheDarK', 0, NULL, NULL, NULL, 2, NULL, 1, 157, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (266, 262.374, -233.094, 2.16588, 0, -1, 0, 0, 'Emergency Services [Medical Departament]', 10, 1564.16, 1799.51, 2083.41, 0, 0, 271, 177.457, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-09-01 16:10:50', '0', NULL, '2021-08-20 17:24:56', 'TheDarK', 0, NULL, NULL, NULL, 2, NULL, 1, 181, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (267, -151.897, 881.889, 18.4522, 0, -1, 1, 10000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 259.647, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:29:01', '0', NULL, '2021-08-20 17:28:48', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (268, -123.251, 875.188, 18.7309, 0, -1, 1, 5000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 5.47403, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:29:20', '0', NULL, '2021-08-20 17:29:20', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (269, -121.03, 857.869, 18.5824, 0, -1, 1, 5000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 359.014, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:29:59', '0', NULL, '2021-08-20 17:29:59', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (270, -92.2236, 887.089, 21.2543, 0, -1, 1, 5000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 54.4738, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:31:11', '0', NULL, '2021-08-20 17:31:11', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (271, 1594.68, 1787.82, 2077.57, 0, -1, 0, 0, 'Garaje', 56, 1914.86, -2386.42, 13.5669, 266, 10, 270, 88.6253, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-31 20:34:06', '0', NULL, '2021-08-20 17:31:19', 'TheDarK', 0, NULL, NULL, NULL, 2, NULL, 1, 157, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (272, -123.939, 917.622, 19.9253, 0, -1, 1, 6500, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 116.718, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:31:31', '0', NULL, '2021-08-20 17:31:31', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (273, -153.183, 906.8, 19.3012, 0, -1, 1, 5000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 165.696, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:32:00', '0', NULL, '2021-08-20 17:32:00', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (274, -151.035, 933.784, 19.7231, 0, -1, 1, 5000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 183.192, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:32:14', '0', NULL, '2021-08-20 17:32:14', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (275, -127.033, 974.332, 19.8516, 0, -1, 1, 6500, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 267.908, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:32:24', '0', NULL, '2021-08-20 17:32:24', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (276, -92.3857, 970.5, 19.9687, 0, -1, 1, 10000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 351.867, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:32:43', '0', NULL, '2021-08-20 17:32:43', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (277, -83.1172, 932.692, 20.7011, 0, -1, 1, 10000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 171.321, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:32:52', '0', NULL, '2021-08-20 17:32:52', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (278, -86.8877, 915.77, 21.0918, 0, -1, 1, 10000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 82.6926, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:33:00', '0', NULL, '2021-08-20 17:33:00', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (279, -67.3691, 971.457, 19.8913, 0, -1, 1, 10000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 88.5264, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:33:20', '0', NULL, '2021-08-20 17:33:20', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (280, -56.4512, 935.984, 21.2074, 0, -1, 1, 5000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 0.002747, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:33:33', '0', NULL, '2021-08-20 17:33:33', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (281, -54.5918, 918.717, 22.3715, 0, -1, 1, 5000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 108.071, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:33:43', '0', NULL, '2021-08-20 17:33:43', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (282, -52.8418, 894.161, 22.3871, 0, -1, 1, 5000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 152.05, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:33:51', '0', NULL, '2021-08-20 17:33:51', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (283, -15.4336, 934.293, 21.1059, 0, -1, 1, 5000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 346.116, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:34:03', '0', NULL, '2021-08-20 17:34:03', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (284, -37.6836, 962.553, 20.0512, 0, -1, 1, 5000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 138.625, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:34:26', '0', NULL, '2021-08-20 17:34:26', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (285, -12.8428, 975.111, 19.7998, 0, -1, 1, 10000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 133, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:34:34', '0', NULL, '2021-08-20 17:34:34', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (286, -4.17285, 950.991, 19.7031, 0, -1, 1, 6500, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 96.7004, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:34:44', '0', NULL, '2021-08-20 17:34:44', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (287, 282.798, -53.5117, 2.96237, 2, 0, 0, 0, 'Ayuntamiento de Riverside', 3, 390.44, 173.91, 1008.38, 0, 0, 90, 4.21057, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-09-01 15:40:22', '0', NULL, '2021-08-20 17:34:45', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 12, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (288, 20.79, 948.828, 20.3168, 0, -1, 1, 5000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 245.677, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:34:54', '0', NULL, '2021-08-20 17:34:54', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (289, 22.7549, 968.131, 19.8382, 0, -1, 1, 10000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 182.835, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:35:18', '0', NULL, '2021-08-20 17:35:18', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (290, 31.4561, 923.64, 23.601, 0, -1, 1, 10000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 81.4511, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:35:31', '0', NULL, '2021-08-20 17:35:31', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (291, 17.6777, 908.954, 23.959, 0, -1, 1, 6500, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 208.389, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:35:39', '0', NULL, '2021-08-20 17:35:39', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (292, 65.0049, 1005.24, 13.7606, 0, -1, 1, 6500, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 189.569, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:35:55', '0', NULL, '2021-08-20 17:35:55', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (293, 70.3467, 973.779, 15.7753, 0, -1, 1, 6500, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 3.84253, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:36:01', '0', NULL, '2021-08-20 17:36:01', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 73, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (294, 172.574, 1176.72, 14.7578, 2, 0, 0, 0, 'KFC', 5, 372.18, -133.28, 1001.49, 0, 0, 0, 233.125, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-09-01 15:39:36', '0', NULL, '2021-08-20 17:37:20', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 18, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (295, -310.84, 1303.49, 53.6643, 1, -1, 1, 10000, 'Bar', 1, 681.542, -451.207, -25.6172, 0, 0, 180, 88.8066, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:45:31', 'DjAngel', '2021-08-20 18:18:30', '2021-08-20 17:44:31', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 47, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (296, -53.9365, 1188.75, 19.3594, 1, -1, 1, 25000, 'Restaurante', 7, 403.233, -304.44, 1007.26, 0, 0, 0, 182.747, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 18:02:29', '0', NULL, '2021-08-20 17:45:36', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 148, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (297, -21.3301, 1348.13, 9.17188, 0, -1, 1, 5000, 'Casa -Rodante', 2, 1.9, -3.2, 999.4, 0, 0, 0, 191.992, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:49:55', '0', NULL, '2021-08-20 17:48:51', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 112, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (298, -29.3145, 1363.4, 9.28112, 0, -1, 1, 5000, 'Casa-Rodante', 2, 1.9, -3.2, 999.4, 0, 0, 0, 255.691, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:50:33', '0', NULL, '2021-08-20 17:50:27', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 112, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (299, -20.7998, 1388.15, 9.28112, 0, -1, 1, 5000, 'Casa-Rodante', 2, 1.9, -3.2, 999.4, 0, 0, 0, 242.266, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:50:45', '0', NULL, '2021-08-20 17:50:45', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 112, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (300, -1.49414, 1394.76, 9.17188, 0, -1, 1, 5000, 'Casa-Rodante', 2, 1.9, -3.2, 999.4, 0, 0, 0, 228.099, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:50:51', '0', NULL, '2021-08-20 17:50:51', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 112, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (301, 4.7207, 1380.79, 9.17814, 0, -1, 1, 5000, 'Casa-Rodante', 2, 1.9, -3.2, 999.4, 0, 0, 0, 190.976, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:50:56', '0', NULL, '2021-08-20 17:50:56', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 112, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (302, 26.4219, 1362.46, 9.17188, 0, -1, 1, 5000, 'Casa-Rodante', 2, 1.9, -3.2, 999.4, 0, 0, 0, 215.695, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:51:03', '0', NULL, '2021-08-20 17:51:03', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 112, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (303, 21.1738, 1344.2, 9.28112, 0, -1, 1, 5000, 'Casa-Rodante', 2, 1.9, -3.2, 999.4, 0, 0, 0, 185.883, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:51:08', '0', NULL, '2021-08-20 17:51:08', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 112, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (304, 4.61914, 1344.36, 9.28112, 0, -1, 1, 5000, 'Casa-Rodante', 2, 1.9, -3.2, 999.4, 0, 0, 0, 229.307, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:51:15', '0', NULL, '2021-08-20 17:51:15', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 112, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (305, -60.1055, 118.158, 3.11719, 0, -1, 1, 5000, 'Casa-Rodante', 2, 1.9, -3.2, 999.4, 0, 0, 0, 221.249, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-25 22:04:59', '0', NULL, '2021-08-20 17:51:47', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 112, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (306, -64.5469, 113.777, 3.11719, 0, -1, 1, 5000, 'Casa-Rodante', 2, 1.9, -3.2, 999.4, 0, 0, 0, 121.903, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:51:50', '0', NULL, '2021-08-20 17:51:50', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 112, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (307, -187.562, 1210.71, 19.7043, 1, -1, 1, 20000, 'Cafeteria', 4, 460.18, -88.41, 999.55, 0, 0, 90, 3.39758, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 18:02:53', '0', NULL, '2021-08-20 17:51:50', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 53, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (308, 752.358, -495.95, 17.3281, 0, -1, 1, 1000, 'Garage', 2, 620.18, -70.89, 997.99, 0, 0, 0, 181.928, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:55:54', '0', NULL, '2021-08-20 17:54:55', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 111, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (309, 762.818, -508.151, 17.2728, 0, -1, 1, 1000, 'Garage', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 177.682, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:56:11', '0', NULL, '2021-08-20 17:56:11', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 24, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (310, 785.863, -497.282, 17.3359, 0, -1, 1, 1000, 'Garage', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 184.103, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:56:48', '0', NULL, '2021-08-20 17:56:48', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 24, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (311, 827.329, -495.652, 17.3281, 0, -1, 1, 1000, 'Garage', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 179.659, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:57:06', '0', NULL, '2021-08-20 17:57:06', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 24, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (312, 345.637, -122.556, 1.34311, 2, 0, 0, 0, 'Sex Shop', 3, -100.4, -24.96, 1000.71, 0, 0, 0, 267.98, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-28 22:40:43', '0', NULL, '2021-08-20 17:57:10', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 14, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (313, 771.725, -552.57, 17.3083, 0, -1, 1, 1000, 'Garage', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 358.558, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-26 07:37:53', '0', NULL, '2021-08-20 17:57:42', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 24, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (314, 750.511, -553.713, 17.3432, 0, -1, 1, 1000, 'Garage', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 358.651, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:57:51', '0', NULL, '2021-08-20 17:57:51', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 24, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (315, 754.033, -582.026, 17.3359, 0, -1, 1, 1000, 'Garage', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 91.8828, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:58:05', '0', NULL, '2021-08-20 17:58:05', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 24, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (316, 608.581, -544.284, 17.3, 0, -1, 1, 1000, 'Garage', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 264.464, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:58:43', '0', NULL, '2021-08-20 17:58:43', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 24, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (317, 609.499, -594.637, 17.3, 0, -1, 1, 1000, 'Garage', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 272.358, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 17:58:58', '0', NULL, '2021-08-20 17:58:58', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 24, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (318, 143.811, -200.895, 1.57812, 1, -1, 1, 8000, 'Bar', 29, 2532.83, -1667.51, 246.67, 0, 0, 0, 317.271, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-26 08:32:30', '0', NULL, '2021-08-20 17:59:18', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 127, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (319, 30.7418, -194.979, 1.70078, 1, -1, 0, 15000, 'Donut Shop \'\'King Ring\'\'', 17, 377.16, -192.91, 1000.64, 0, 0, 0, 0.030212, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 21:09:38', '0', NULL, '2021-08-20 18:09:19', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 19, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (320, -144.065, 1225.22, 19.8992, 1, -1, 1, 15000, 'Donut Shop \'\'King Ring\'\'', 17, 377.16, -192.91, 1000.64, 0, 0, 0, 355.229, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 18:10:58', '0', NULL, '2021-08-20 18:10:52', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 19, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (321, -176.745, 1112, 19.7422, 2, 0, 0, 0, 'Motel', 1, 2266.32, 1647.59, 1084.23, 0, 0, 270, 318.424, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-09-01 15:22:53', '0', NULL, '2021-08-20 18:18:01', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 64, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (322, 2271.33, 1652.73, 1084.23, 3, -1, 0, 100, 'Habitacion', 5, 2233.57, -1115.08, 1050.88, 321, 1, 0, 268.507, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 18:20:36', '0', NULL, '2021-08-20 18:19:45', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 71, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (323, 2271.33, 1642.05, 1084.23, 3, -1, 1, 100, 'Habitacion', 5, 2233.57, -1115.08, 1050.88, 321, 1, 0, 268.507, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 18:21:09', '0', NULL, '2021-08-20 18:21:09', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 71, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (324, 2266.05, 1642.25, 1084.23, 3, -1, 1, 100, 'Habitacion', 5, 2233.57, -1115.08, 1050.88, 321, 1, 0, 104.193, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 18:21:12', '0', NULL, '2021-08-20 18:21:12', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 71, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (325, 2266.05, 1633.52, 1084.23, 3, -1, 1, 100, 'Habitacion', 5, 2233.57, -1115.08, 1050.88, 321, 1, 0, 113.323, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 18:21:16', '0', NULL, '2021-08-20 18:21:16', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 71, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (326, 2266.04, 1652.41, 1084.23, 3, -1, 1, 100, 'Habitacion', 5, 2233.57, -1115.08, 1050.88, 321, 1, 0, 84.9778, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 18:21:20', '0', NULL, '2021-08-20 18:21:20', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 71, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (327, 2266.04, 1662.62, 1084.23, 3, -1, 1, 100, 'Habitacion', 5, 2233.57, -1115.08, 1050.88, 321, 1, 0, 85.4557, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 18:21:23', '0', NULL, '2021-08-20 18:21:23', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 71, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (328, 2271.34, 1662.47, 1084.23, 3, -1, 1, 100, 'Habitacion', 5, 2233.57, -1115.08, 1050.88, 321, 1, 0, 274.418, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 18:21:28', '0', NULL, '2021-08-20 18:21:28', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 71, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (329, 2271.34, 1633.67, 1084.23, 3, -1, 1, 100, 'Habitacion', 5, 2233.57, -1115.08, 1050.88, 321, 1, 0, 263.849, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 18:21:35', '0', NULL, '2021-08-20 18:21:35', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 71, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (330, 2271.33, 1633.51, 1084.23, 3, -1, 1, 100, 'Habitacion', 5, 2233.57, -1115.08, 1050.88, 321, 1, 0, 258.422, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 18:22:20', '0', NULL, '2021-08-20 18:22:20', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 71, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (331, 134.64, 1380.02, 1088.37, 0, -1, 0, 0, 'Sala-Reuniones', 2, 2111.56, -1442.17, 291.426, 249, 5, 270, 90.3392, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-31 02:42:26', '0', NULL, '2021-08-20 18:23:05', 'Dreko', 0, NULL, NULL, NULL, 7, NULL, 1, 151, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (332, -311.29, 1303.39, 53.6643, 0, -1, 1, 0, 'Casa', 7, 225.71, 1021.44, 1084.01, 0, 0, 0, 81.6434, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-27 19:47:22', '0', NULL, '2021-08-20 18:23:15', 'DjAngel', 0, NULL, NULL, NULL, 0, NULL, 1, 114, 1, NULL, NULL);
INSERT INTO `interiors` VALUES (351, -311.65, 1771.02, 44.0031, 2, -1, 0, 0, 'Residencias Hollister and Sewell', 1, 1439.51, 1434.92, 12.6486, 0, 0, 0, 310.3, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-09-01 00:38:20', '0', NULL, '2021-08-21 14:59:41', 'Alejandro', 0, NULL, NULL, NULL, 8, NULL, 1, 178, 0, '[ { \"time\": 2, \"ooc\": false } ]', NULL);
INSERT INTO `interiors` VALUES (333, 2264.4, 1619.42, 1090.45, 2, 0, 0, 0, 'Segundo Piso', 2, 2124.55, -1437.17, 300.671, 321, 1, 180, 85.9391, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 18:25:19', '0', NULL, '2021-08-20 18:24:07', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 154, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (334, 2121.84, -1438.8, 300.671, 3, -1, 1, 100, 'Habitacion', 5, 2233.57, -1115.08, 1050.88, 333, 2, 0, 102.183, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 18:25:54', '0', NULL, '2021-08-20 18:25:54', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 71, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (335, 2127.21, -1446.82, 300.671, 3, -1, 1, 100, 'Habitacion', 5, 2233.57, -1115.08, 1050.88, 333, 2, 0, 258.328, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 18:25:56', '0', NULL, '2021-08-20 18:25:56', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 71, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (336, 2121.84, -1450.92, 300.671, 3, -1, 1, 100, 'Habitacion', 5, 2233.57, -1115.08, 1050.88, 333, 2, 0, 81.5226, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 18:25:59', '0', NULL, '2021-08-20 18:25:59', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 71, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (337, 2127.18, -1458.61, 300.671, 3, -1, 1, 100, 'Habitacion', 5, 2233.57, -1115.08, 1050.88, 333, 2, 0, 262.168, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 18:26:02', '0', NULL, '2021-08-20 18:26:02', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 71, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (338, 2121.85, -1462.88, 300.671, 3, -1, 1, 100, 'Habitacion', 5, 2233.57, -1115.08, 1050.88, 333, 2, 0, 91.6082, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 18:26:05', '0', NULL, '2021-08-20 18:26:05', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 71, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (339, 2127.16, -1470.7, 300.671, 3, -1, 1, 100, 'Habitacion', 5, 2233.57, -1115.08, 1050.88, 333, 2, 0, 351.208, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 18:26:08', '0', NULL, '2021-08-20 18:26:08', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 71, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (340, -217.843, 979.163, 19.5041, 2, 0, 0, 0, 'Department of Motor Vehicles', 3, -2029.61, -119.36, 1035.17, 0, 0, 0, 86.7411, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-09-01 16:52:19', '0', NULL, '2021-08-20 18:30:54', 'Alejandro', 0, NULL, NULL, NULL, 0, NULL, 1, 65, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (341, 822.066, -557.199, 16.3359, 1, -1, 1, 15000, '24/7 Shop', 17, -25.91, -188.05, 1003.54, 0, 0, 0, 92.4761, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 18:41:37', '0', NULL, '2021-08-20 18:41:18', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 17, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (342, 691.862, -546.805, 16.3359, 2, 0, 0, 0, 'Super Spa/Relaxing', 32, 2079.89, 477.98, 41.85, 0, 0, 0, 269.743, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-25 15:18:30', '0', NULL, '2021-08-20 18:50:32', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 130, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (343, 2121.1, 499.599, 41.8431, 2, 0, 0, 0, 'Garaje', 1, 1105.9, -1312.8, 79.0625, 342, 32, 0, 355.46, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-22 16:24:38', '0', NULL, '2021-08-20 19:03:43', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 147, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (344, 706.281, 1223.34, 13.0187, 1, -1, 0, 0, 'test-custom', 18, -31.02, -91.92, 1003.54, 0, 0, 0, 209.96, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 20:46:45', 'Dreko', '2021-08-20 20:47:48', '2021-08-20 20:46:06', 'Dreko', 0, NULL, NULL, NULL, 0, NULL, 1, 34, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (345, 698.479, 1226.82, 13.0067, 0, 19, 1, 40000, 'Casa-Rodante', 2, 1.9, -3.2, 999.4, 0, 0, 0, 167.772, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 20:48:32', 'nox', '2021-08-20 21:02:24', '2021-08-20 20:47:15', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 112, 1, NULL, NULL);
INSERT INTO `interiors` VALUES (346, 704.275, 1235.3, 12.7455, 0, -1, 1, 1, 'Garage', 3, 620.01, -119.85, 998.84, 0, 0, 180, 255.274, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 20:50:28', 'nox', '2021-08-20 20:51:10', '2021-08-20 20:50:18', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 70, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (347, 704.578, 1235.16, 12.7665, 0, -1, 1, 100, 'Garage', 3, 620.01, -119.85, 998.84, 0, 0, 180, 253.61, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 20:51:17', 'nox', '2021-08-20 20:52:18', '2021-08-20 20:51:17', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 70, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (348, 698.409, 1226.83, 13.0059, 0, 20, 1, 1, 'Casa-Rodante', 2, 1.9, -3.2, 999.4, 0, 0, 0, 185.147, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-25 17:46:26', 'nox', '2021-08-25 18:43:15', '2021-08-20 21:02:49', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 112, 1, NULL, NULL);
INSERT INTO `interiors` VALUES (360, -49.8311, -269.366, 6.63319, 2, 0, 0, 0, 'Oficinas del Deposito', 3, 390.44, 173.91, 1008.38, 0, 0, 90, 3.26575, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-23 19:40:48', '0', NULL, '2021-08-22 12:42:57', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 12, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (349, 704.414, 1235.34, 12.7495, 0, -1, 1, 1, 'Alexey_Mozgov Garage', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 60.9668, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-20 21:03:46', 'nox', '2021-08-20 21:04:00', '2021-08-20 21:03:46', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 24, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (350, 704.671, 1234.75, 12.7928, 0, 20, 0, 1, 'Garaje', 2, 620.18, -70.89, 997.99, 0, 0, 0, 58.8409, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-25 18:42:30', 'nox', '2021-08-25 18:42:40', '2021-08-20 21:04:17', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 111, 1, NULL, NULL);
INSERT INTO `interiors` VALUES (352, 1424.32, 1435.07, 10.903, 2, -1, 0, 0, 'Garaje Hollister and Sewell', 56, 1956.86, -2307.28, 14.0936, 351, 1, 0, 357.849, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-30 21:00:49', '0', NULL, '2021-08-21 15:01:07', 'Alejandro', 0, NULL, NULL, NULL, 8, NULL, 1, 156, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (353, 1423.78, 1454.55, 18.5801, 2, -1, 0, 0, 'Sale de Conferencias Hollister and Sewell', 2, 2111.56, -1442.17, 291.426, 351, 1, 270, 265.892, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-30 20:19:04', '0', NULL, '2021-08-21 15:03:05', 'Alejandro', 0, NULL, NULL, NULL, 8, NULL, 1, 151, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (354, 1419.49, 1462.23, 10.8986, 2, -1, 0, 0, 'Armeria Hollister and Sewell', 6, 316.37, -170.02, 999.59, 351, 1, 0, 177.803, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-09-01 00:38:07', '0', NULL, '2021-08-21 15:05:03', 'Alejandro', 0, NULL, NULL, NULL, 8, NULL, 1, 61, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (355, 364.319, -38.0195, 2.41847, 1, 16, 0, 1000, 'Prueba', 3, 390.44, 173.91, 1008.38, 0, 0, 90, 179.225, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-21 21:26:01', 'Alejandro', '2021-08-21 21:26:40', '2021-08-21 20:04:45', 'Alejandro', 0, NULL, NULL, NULL, 0, NULL, 1, 12, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (356, 362.711, -36.4297, 2.42764, 0, -1, 1, 100, 'Prueba2', 3, 390.44, 173.91, 1008.38, 0, 0, 90, 134.521, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-21 20:05:36', 'Alejandro', '2021-08-21 21:26:30', '2021-08-21 20:05:36', 'Alejandro', 0, NULL, NULL, NULL, 0, NULL, 1, 12, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (357, 361.82, -38.1133, 2.33369, 3, -1, 1, 50, 'Prueba 3', 3, 390.44, 173.91, 1008.38, 0, 0, 90, 230.664, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-21 20:06:14', 'Alejandro', '2021-08-21 21:26:16', '2021-08-21 20:06:14', 'Alejandro', 0, NULL, NULL, NULL, 0, NULL, 1, 12, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (358, 312.049, -29.1074, 1.57688, 2, 0, 0, 0, 'Consecionario', 56, 1914.86, -2386.42, 13.5669, 0, 0, 270, 1.48593, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-09-01 17:22:46', '0', NULL, '2021-08-22 10:24:34', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 157, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (359, -92.3984, 1188.43, 19.7422, 2, 0, 0, 0, 'Super Spa Relaxing', 32, 2079.89, 477.98, 41.85, 0, 0, 0, 179.78, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-28 19:32:53', '0', NULL, '2021-08-22 10:36:33', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 130, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (361, 2531.96, -1308.29, 1076.94, 2, 0, 0, 0, 'Oficinas', 5, 1104.17, -778.245, 976.252, 258, 2, 0, 181.895, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-27 21:55:09', '0', NULL, '2021-08-22 12:55:42', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 143, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (362, 820.066, -576.005, 16.5363, 2, 0, 0, 0, 'Bar', 29, 2532.83, -1667.51, 246.67, 0, 0, 0, 91.1412, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-22 13:05:28', 'TheDarK', '2021-08-22 13:05:43', '2021-08-22 13:03:56', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 127, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (363, 820.067, -575.927, 16.5363, 1, -1, 1, 20000, 'Bar', 29, 2532.83, -1667.51, 246.67, 0, 0, 0, 83.7913, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-22 13:06:22', '0', NULL, '2021-08-22 13:06:22', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 127, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (364, 672.066, -635.093, 16.3359, 3, -1, 1, 800, 'Oficina', 1, -2158.81, 643.14, 1052.37, 0, 0, 180, 91.4763, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-22 13:07:47', '0', NULL, '2021-08-22 13:07:47', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 38, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (365, 100.086, -274.656, 2.45702, 2, 0, 0, 0, 'Oficina', 3, 1494.28, 1303.91, 1093.28, 0, 0, 0, 2.16708, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-26 23:54:32', '0', NULL, '2021-08-22 13:13:48', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 58, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (385, 176.816, -295.249, 1.57812, 2, 0, 0, 0, 'Desguace', 2, 1517.58, 1627.61, 10.8331, 0, 0, 180, 271.463, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-09-11 16:57:42', '0', '2021-08-25 15:34:43', '2021-08-25 15:21:16', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 180, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (366, -1048.69, -637.998, 32.0078, 2, 0, 0, 0, 'California State Prision', 3, 1029.46, 1223.52, 1491.36, 0, 0, 5, 358.432, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-25 11:09:11', '0', NULL, '2021-08-23 19:36:23', 'Alejandro', 0, NULL, NULL, NULL, 0, NULL, 1, 185, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (367, 112.712, -108.834, 1.64795, 2, 0, 0, 0, 'Garage 0', 56, 1914.86, -2386.42, 13.5669, 0, 0, 270, 271.1, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-24 15:04:43', 'Driver', '2021-08-24 15:04:49', '2021-08-24 15:04:19', 'Driver', 0, NULL, NULL, NULL, 0, NULL, 1, 157, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (368, 109.912, -101.503, 1.60781, 2, 0, 0, 0, 'Entrada a Pie del Garage', 56, 1914.86, -2386.42, 13.5669, 0, 0, 270, 88.6802, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-10-07 16:03:45', '0', NULL, '2021-08-24 15:05:03', 'Driver', 0, NULL, NULL, NULL, 0, NULL, 1, 157, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (369, 1938.52, -2419.87, 13.5738, 3, -1, 1, 100, 'Habitacion', 5, 2233.57, -1115.08, 1050.88, 271, 56, 0, 164.306, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-24 17:49:34', 'TheDarK', '2021-08-25 08:49:17', '2021-08-24 17:49:34', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 71, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (370, 1937.25, -2422.9, 13.5738, 3, -1, 1, 100, 'Habitacion', 5, 2233.57, -1115.08, 1050.88, 271, 56, 0, 250.923, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-24 17:52:19', 'TheDarK', '2021-08-24 17:52:39', '2021-08-24 17:52:19', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 71, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (371, 306.496, -159.199, 999.594, 2, -1, 1, 0, 'Almacen Hollister and Sewell Inc.', 40, 315.457, -112.941, 1011.01, 354, 6, 0, 263.008, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-31 02:36:45', '0', NULL, '2021-08-24 19:06:24', 'Alejandro', 0, NULL, NULL, NULL, 8, NULL, 1, 163, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (372, 1956.89, -2314.63, 14.0936, 2, -1, 0, 0, 'Escaleras', 2, 2170.98, -1432.77, 281.597, 352, 56, 270, 174.737, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-30 20:58:32', '0', NULL, '2021-08-24 19:24:56', 'Alejandro', 0, NULL, NULL, NULL, 8, NULL, 1, 153, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (373, 2177.27, -1424.83, 285.402, 2, 0, 0, 0, 'Deposito', 45, 1384.83, 1464.5, 10.8644, 372, 2, 0, 176.336, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-26 18:50:01', 'Alejandro', '2021-08-26 18:50:14', '2021-08-24 19:26:51', 'Alejandro', 0, NULL, NULL, NULL, 0, NULL, 1, 168, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (374, 2177.08, -1424.84, 285.402, 2, -1, 0, 0, 'Deposito', 45, 1384.83, 1464.5, 10.8644, 372, 2, 0, 176.534, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-30 20:58:27', '0', NULL, '2021-08-24 19:27:52', 'Alejandro', 0, NULL, NULL, NULL, 8, NULL, 1, 168, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (375, -86.1855, -299.676, 2.76462, 0, -1, 1, 0, 'Carniceria la Andrea', 1, 964.94, 2159.97, 1011.03, 0, 0, 90, 177.88, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-25 08:28:29', 'Alejandro', '2021-08-25 08:29:10', '2021-08-25 08:28:29', 'Alejandro', 0, NULL, NULL, NULL, 0, NULL, 1, 55, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (376, -86.1934, -299.496, 2.76462, 2, 0, 0, 0, 'Carniceria \"La Profesora\"', 1, 964.94, 2159.97, 1011.03, 0, 0, 90, 357.8, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-31 21:36:49', '0', '2021-08-25 08:29:05', '2021-08-25 08:28:55', 'Alejandro', 0, NULL, NULL, NULL, 0, NULL, 1, 55, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (377, 695.441, -641.305, 16.7055, 2, 0, 0, 0, 'Departamento de Justicia de Riverside', 21, 1533.18, 1474.73, 16.9535, 0, 0, 271, 266.53, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-09-01 16:32:38', '0', NULL, '2021-08-25 11:15:50', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 182, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (378, 344.015, -67.9453, 1.49375, 1, -1, 0, 20000, '24/7', 6, -27.15, -57.87, 1003.54, 0, 0, 0, 267.969, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-31 18:50:19', '0', NULL, '2021-08-25 11:25:59', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 62, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (379, 691.86, -583.518, 16.3359, 1, -1, 0, 20000, '24/7', 16, -25.68, -140.99, 1003.54, 0, 0, 0, 265.618, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-25 11:30:50', '0', NULL, '2021-08-25 11:28:54', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 45, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (380, 296.183, -195.245, 1.6, 1, -1, 0, 5000, 'Tienda', 27, 1877.89, -2466.96, 13.58, 0, 0, 0, 178.369, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-31 01:48:08', '0', NULL, '2021-08-25 11:41:38', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 125, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (381, 1573.31, 1790.09, 2089.18, 2, 0, 0, 0, 'Oficinas', 2, 2153.19, -1417.49, 293.73, 266, 10, 90, 0.00824, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-25 14:30:08', '0', NULL, '2021-08-25 14:24:26', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 152, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (382, 202.645, -201.943, 1.57812, 2, 0, 0, 0, 'Stack\'s Pizza', 5, 372.18, -133.28, 1001.49, 0, 0, 0, 0.134583, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-30 21:00:08', '0', '2021-08-25 14:13:12', '2021-08-25 13:38:50', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 18, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (383, -145.828, 1172.39, 19.7422, 2, 0, 0, 0, 'Ferreteria', 27, 1877.89, -2466.96, 13.58, 0, 0, 0, 182.516, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-31 22:55:06', '0', NULL, '2021-08-25 13:51:46', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 125, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (384, 172.147, -152.644, 1.57524, 1, -1, 0, 15000, 'Bar', 29, 2532.83, -1667.51, 246.67, 0, 0, 0, 137.257, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-09-01 15:58:31', '0', NULL, '2021-08-25 14:33:53', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 127, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (386, 163.026, -337.789, 1.57812, 2, 0, 0, 0, 'Oficina del Desguace', 3, -2029.61, -119.36, 1035.17, 0, 0, 0, 178.462, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-09-11 16:58:01', '0', NULL, '2021-08-25 15:36:56', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 65, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (387, 359.162, -97.1143, 1.49375, 1, -1, 0, 0, 'Shopping Deluxe 24/7', 3, 1212.18, -25.93, 1000.95, 0, 0, 180, 269.892, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-25 15:51:38', 'TheDarK', '2021-08-25 15:51:53', '2021-08-25 15:44:09', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 8, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (388, 359.165, -97.0312, 1.49375, 2, 0, 0, 0, 'Puticlub', 3, 1212.18, -25.93, 1000.95, 0, 0, 180, 271.957, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-09-01 15:29:12', '0', NULL, '2021-08-25 15:52:50', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 8, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (389, 2360.83, 2381.46, 2022.92, 2, 0, 0, 0, 'Escaleras', 1, 2300.72, 1685.69, 1101.91, 5, 3, 180, 269.024, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-25 16:49:14', '0', NULL, '2021-08-25 16:48:28', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 135, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (390, 661.36, -573.376, 16.3359, 2, 0, 0, 0, '24/7', 4, -27.3, -31.41, 1003.55, 0, 0, 0, 273.061, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-29 16:17:30', '0', NULL, '2021-08-25 17:00:26', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 54, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (391, 870.459, -24.9492, 63.9809, 0, -1, 1, 2000, 'Casa', 10, 2259.68, -1136.09, 1050.63, 0, 0, 270, 338.167, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-27 22:16:33', '0', NULL, '2021-08-25 17:04:09', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 81, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (392, 698.322, 1226.84, 13.005, 0, 20, 0, 0, 'Casa-Rodante', 2, 1.9, -3.2, 999.4, 0, 0, 0, 339.826, '[ [ ] ]', 2.0498, 5.78418, 998.928, 180, 0, '2021-09-01 00:03:13', 'Alejandro', '2021-09-14 18:20:25', '2021-08-25 18:43:48', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 112, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (393, 704.254, 1235.23, 12.7484, 0, -1, 1, 0, 'Garage', 22, 1433.62, 1363.21, 10.8305, 0, 0, 0, 265.453, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-29 23:14:24', 'Alejandro', '2021-09-14 18:20:30', '2021-08-25 18:44:42', 'nox', 0, NULL, NULL, NULL, 0, NULL, 1, 137, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (394, 423.662, 2536.57, 16.1484, 1, -1, 1, 0, 'Picodromo', 18, -229.17, 1401.14, 27.76, 0, 0, 270, 96.3763, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-28 01:44:10', '0', NULL, '2021-08-25 20:50:07', 'Alejandro', 0, NULL, NULL, NULL, 0, NULL, 1, 51, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (395, 948.656, 2104.14, 1011.02, 1, -1, 1, 1500, 'Tienda Machetes', 3, -204.31, -44.08, 1002.27, 376, 1, 0, 180.022, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-27 20:49:00', '0', NULL, '2021-08-26 16:44:41', 'Alejandro', 0, NULL, NULL, NULL, 0, NULL, 1, 15, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (396, -573.271, -522.164, 34.1573, 1, -1, 0, 0, 'Golden Gate Company', 1, 964.94, 2159.97, 1011.03, 0, 0, 180.203, 11.9176, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-09-12 11:36:32', '0', NULL, '2021-08-27 17:46:20', 'Dreko', 0, NULL, NULL, NULL, 9, NULL, 1, 55, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (397, 826.647, -613.774, 16.3359, 0, -1, 1, 200, 'Garaje', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 183.016, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-27 21:38:58', '0', '2021-08-27 19:01:10', '2021-08-27 19:00:41', 'TheDarK', 0, NULL, NULL, NULL, 0, NULL, 1, 24, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (398, 948.558, 2103.82, 1011.02, 1, 16, 0, 1000, 'Tienda Machetes', 3, -204.31, -44.08, 1002.27, 396, 1, 0, 358.816, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-27 19:19:18', 'Alejandro', '2021-08-27 19:22:10', '2021-08-27 19:19:11', 'Alejandro', 0, NULL, NULL, NULL, 0, NULL, 1, 15, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (399, 948.512, 2105.21, 1011.02, 1, -1, 0, 1000, 'Tienda Machetes', 3, -204.31, -44.08, 1002.27, 396, 1, 0, 355.987, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-31 23:20:18', '0', NULL, '2021-08-27 19:22:18', 'Alejandro', 0, NULL, NULL, NULL, 16, NULL, 1, 15, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (400, 690.803, -506.201, 16.3359, 2, 0, 0, 0, 'Casa de Apuestas', 3, 834.61, 7.54, 1004.18, 0, 0, 90, 266.387, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-30 21:12:36', '0', NULL, '2021-08-29 15:27:05', 'Alejandro', 0, NULL, NULL, NULL, 0, NULL, 1, 6, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (401, -547.417, -493.55, 25.5234, 0, -1, 0, 0, 'Garaje', 28, 962.51, 2054.07, 10.86, 0, 0, 359.003, 277.84, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-08-31 22:22:06', '0', NULL, '2021-08-31 02:08:41', 'Dreko', 0, NULL, NULL, NULL, 16, NULL, 1, 126, 0, NULL, NULL);
INSERT INTO `interiors` VALUES (402, -712.352, 688.222, 17.1118, 2, 0, 0, 0, 'Pruebas', 0, 1363.87, -2076.38, -0.03125, 0, 0, 20, 248.424, '[ [ ] ]', NULL, NULL, NULL, NULL, 0, '2021-09-21 18:26:07', '0', NULL, '2021-09-21 18:14:40', 'Alejandro', 0, NULL, NULL, NULL, 0, NULL, 1, 195, 0, NULL, NULL);

-- ----------------------------
-- Table structure for ippc_airline_pilots
-- ----------------------------
DROP TABLE IF EXISTS `ippc_airline_pilots`;
CREATE TABLE `ippc_airline_pilots`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `airline` int(11) NOT NULL,
  `character` int(11) NOT NULL,
  `leader` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of ippc_airline_pilots
-- ----------------------------

-- ----------------------------
-- Table structure for ippc_airlines
-- ----------------------------
DROP TABLE IF EXISTS `ippc_airlines`;
CREATE TABLE `ippc_airlines`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ippc_airlines
-- ----------------------------

-- ----------------------------
-- Table structure for ippc_flights
-- ----------------------------
DROP TABLE IF EXISTS `ippc_flights`;
CREATE TABLE `ippc_flights`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `callsign` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `adep` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ades` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `etd` datetime(0) NOT NULL,
  `eta` datetime(0) NULL DEFAULT NULL,
  `vin` int(11) NOT NULL,
  `pilot1` int(11) NULL DEFAULT NULL,
  `pilot2` int(11) NULL DEFAULT NULL,
  `remarks` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `airline` int(11) NOT NULL,
  `category` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tickets` tinyint(1) NOT NULL,
  `seats1` int(3) NULL DEFAULT NULL,
  `seats2` int(3) NULL DEFAULT NULL,
  `seats3` int(3) NULL DEFAULT NULL,
  `price1` int(3) NULL DEFAULT NULL,
  `price2` int(3) NULL DEFAULT NULL,
  `price3` int(3) NULL DEFAULT NULL,
  `submitter` int(11) NOT NULL,
  `submitted` datetime(0) NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ippc_flights
-- ----------------------------

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items`  (
  `index` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `owner` int(10) UNSIGNED NOT NULL,
  `itemID` int(10) NOT NULL,
  `itemValue` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `protected` int(100) NOT NULL DEFAULT 0,
  `metadata` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL COMMENT 'additional data for the item that can be edited per individual item, JSON',
  PRIMARY KEY (`index`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15732 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES (1974, 1, 14, 16, '7', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2, 1, 1, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5, 1, 1, 152, 'Rufus_Sewell;Male;January 2nd, 1994;528DC7266506A2A2225F49A062EA4188', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (10, 2, 1, 261, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (7, 1, 1, 2, '591007', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15731, 1, 1, 134, '36988', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11, 2, 1, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2063, 1, 17, 16, '294', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (21, 1, 1, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14764, 1, 83, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14676, 1, 1, 56, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (27, 2, 5, 85, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (28, 2, 5, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (46, 2, 6, 140, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (329, 1, 6, 115, '31:mp9wN8br08QZOvcBmvb8:M4:0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14700, 1, 1, 270, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3365, 1, 25, 16, '153', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2056, 1, 16, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15648, 1, 90, 271, '7.62mm casing', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (50, 2, 2, 261, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (51, 2, 2, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14644, 1, 11, 3, '261', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13489, 3, 4475, 116, '5:25:mt9w0o9BN8hY08Wtmu5Z0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (103, 1, 2, 16, '77', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (104, 1, 2, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (107, 1, 2, 152, 'Katy_Test;Female;Abril 30th, 1997;69590BB7211C1375289D4F606CBAC6C8', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (108, 1, 2, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (109, 1, 2, 2, '736239', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2033, 1, 1, 116, '3:50:Ovbr0o9ZN8WVm8cRmuhZ0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (112, 1, 3, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4270, 2, 115, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4393, 1, 30, 2, '643305', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (115, 1, 3, 152, 'Voron_Morozov;Male;Agosto 22do, 1999;5BFBDC2FC3E98270305288C963053A80', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (116, 1, 3, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (117, 1, 3, 2, '383556', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (120, 1, 4, 16, '165', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (121, 1, 4, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (124, 1, 4, 152, 'Vinnie_Jenkins;Male;Enero 1er, 1991;34A15A55AF73C382FE6DFB11AD59A353', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9992, 1, 4, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (126, 1, 4, 2, '853704', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9998, 1, 73, 2, '732015', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (132, 1, 5, 16, '7', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (133, 1, 5, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4391, 1, 30, 152, 'Thommas_Shelby;Male;Enero 1er, 2005;1C68C71EE06C51445F175D2CE5F7D889', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (136, 1, 5, 152, 'Dreko_Test;Male;Enero 1er, 2005;59D7385A8E330A2C075A5BF0A6FD1881', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (137, 1, 5, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (138, 1, 5, 2, '751137', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2134, 1, 18, 16, '286', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (141, 1, 2, 145, '85', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4266, 1, 3, 127, 'Federal Security Service', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (273, 1, 7, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (266, 1, 6, 116, '31:false:MuniciÃ³n para M4', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15689, 1, 2, 26, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (157, 2, 7, 85, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (160, 2, 8, 261, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (297, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (296, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (239, 1, 6, 152, 'Andrei_Volivetskyy;Male;Febrero 17th, 1978;02E1BF1151E31A96816D7BBBC14BBED7', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (236, 1, 6, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (207, 1, 1, 115, '31:mp9ZN8brmu0VmvcBmvb8:M4:50', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (235, 1, 6, 16, '111', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11213, 2, 236, 80, '1', 0, '[ { \"item_name\": \"Iron Hammer\" } ]');
INSERT INTO `items` VALUES (2032, 1, 1, 116, '3:50:m8br0o9ZN8QVm8cRmuhZ0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (343, 1, 6, 163, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9997, 1, 73, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (241, 1, 6, 2, '764041', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3476, 1, 6, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (331, 1, 6, 115, '31:OF9wN8brOvbtOvcBmvb8:M4:0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (340, 1, 1, 19, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4030, 1, 28, 152, 'Katy_Testt;Female;Abril 30th, 1989;C931FE9E897F0FAB063714C9EFC81306', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (276, 1, 7, 152, 'Khalled_Allasad;Male;Octubre 31er, 1986;0DD289E15AE4D4C90413C4F5854D3B9E', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (277, 1, 7, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (278, 1, 7, 2, '680184', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3726, 2, 120, 85, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (293, 1, 6, 115, '22:mp9wN8brmv0qmHcBmvb8:Colt 45::', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (294, 1, 6, 116, '22:false:MuniciÃ³n para Colt 45', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (298, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (299, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (300, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (301, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (302, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (303, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (304, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (305, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (306, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (307, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (308, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (309, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (310, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (311, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (312, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (313, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (314, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (315, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (316, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (317, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (318, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (319, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (320, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (321, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (322, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (323, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (324, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (325, 1, 5, 116, '30:false:MuniciÃ³n para AK-47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (330, 1, 6, 116, '3:100:mt9wN8br08WZOvcBmvb8', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (332, 1, 6, 115, '31:Oo9ZN8brmvgtOvcBmvb8:M4:0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (333, 1, 6, 116, '3:50:0vbr0o9ZN8580HQVmvhZ0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (334, 1, 6, 116, '3:50:0ubr0o9ZN8gB0HQVmvhZ0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (344, 1, 3, 163, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14819, 1, 11, 172, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (349, 1, 6, 115, '31:mt9ZN8br08cMOvcBmvb8:M4:50', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (348, 1, 6, 115, '31:mp9wN8br0HWBOvcBmvb8:M4:0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (351, 1, 6, 115, '31:Oo9ZN8brm8gMOvcBmvb8:M4:0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (352, 1, 6, 116, '3:50:0vbr0o9ZN808muQVmvhZ0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14763, 1, 83, 2, '877912', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (364, 1, 8, 16, '111', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5875, 1, 48, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (368, 1, 8, 152, 'Andriy_Volivetskiy;Male;Febrero 17th, 1981;E2879E828F1542CD33CFB3BDE24101BA', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (370, 1, 8, 2, '771302', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14800, 1, 8, 134, '4', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2006, 1, 1, 116, '4:20:Oo9ZN8br0HWM0vWMmvb8', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (424, 1, 5, 115, '31:mt9MN8brmvgtOucBmvb8:M4:0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (417, 1, 5, 116, '3:50:mp9MN8brmHctOucBmvb8', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13664, 1, 18, 64, 'Sheriff Departament', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (716, 1, 5, 145, '0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (670, 1, 9, 16, '294', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (1314, 1, 12, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2031, 1, 1, 116, '3:50:mHbr0o9ZN8QVm8cRmuhZ0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2030, 1, 1, 116, '3:50:mubr0o9ZN81Vm8cRmuhZ0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3139, 1, 22, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (718, 1, 5, 134, '520', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2029, 1, 1, 116, '3:50:mvbr0o9ZN81Vm8cRmuhZ0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (558, 2, 21, 261, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3135, 1, 22, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2028, 1, 1, 116, '3:50:08br0o9ZN8DVm8cRmuhZ0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (575, 1, 8, 90, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13036, 1, 78, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (717, 2, 23, 117, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (1837, 1, 8, 163, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (671, 1, 9, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (674, 1, 9, 152, 'Alexey_Mozgov;Male;Junio 1er, 1989;0CD76B30F33AA28BC4DBD027A51E6050', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (702, 1, 9, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (676, 1, 9, 2, '615574', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2114, 1, 9, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14349, 1, 32, 115, '2:mp9Z0o9ZN8c80HWBmu5Z0V:Golfclub:0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (684, 1, 9, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (685, 1, 9, 85, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (689, 2, 22, 85, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (733, 1, 5, 116, '3:50:OF9MN8brmuhRmvgBmvb8', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (701, 1, 9, 84, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (731, 1, 5, 116, '3:50:mp9MN8br08bRmvgBmvb8', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (732, 1, 5, 116, '3:50:mt9MN8br0ugRmvgBmvb8', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6710, 1, 7, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (734, 1, 5, 116, '3:50:Oo9MN8brmuhRmvgBmvb8', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (735, 1, 5, 116, '3:50:0vbrmo9ZN85BOuhtmvhZ0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (736, 1, 5, 116, '3:50:0ubrmo9ZN8DBOuhtmvhZ0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (737, 1, 5, 116, '3:50:0Hbrmo9ZN8DBOuhtmvhZ0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (738, 1, 5, 116, '3:50:08brmo9ZN8DBOuhtmvhZ0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (739, 1, 5, 116, '3:50:mvbrmo9ZN8DBOuhtmvhZ0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (740, 1, 5, 116, '3:50:mubrmo9ZN81BOuhtmvhZ0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (955, 1, 11, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (781, 1, 10, 16, '7', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2027, 1, 1, 116, '3:50:0Hbr0o9ZN8DVm8cRmuhZ0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15469, 1, 88, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3551, 1, 26, 6, '19.450000', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2128, 1, 13, 73, '57', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2026, 1, 1, 116, '3:50:0ubr0o9ZN85Vm8cRmuhZ0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (940, 1, 10, 115, '30:mt9V0o9ZN8gwmvDtmvhZ0V:AK-47:1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2061, 1, 16, 2, '482096', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2286, 1, 20, 133, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (782, 1, 10, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4598, 1, 39, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (1031, 1, 1, 16, '286', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (956, 1, 11, 2, '452766', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (762, 1, 5, 115, '31:Oo9MN8brOv0VmugBmvb8:M4:0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2025, 1, 1, 116, '3:50:0vbr0o9ZN8hVm8cRmuhZ0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4387, 1, 24, 64, 'Red Country - Sheriff Departament', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4190, 1, 27, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (785, 1, 10, 152, 'Dreko_Testdos;Male;Enero 1er, 2005;06A81943717895BB3CBE22979B4B16EF', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (786, 1, 10, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (787, 1, 10, 2, '359545', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (893, 1, 10, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15667, 1, 2, 19, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (1346, 1, 4, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6865, 2, 205, 84, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (1157, 1, 11, 4, '99', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3725, 2, 118, 85, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2064, 1, 17, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (1847, 1, 3, 16, '286', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (1313, 1, 12, 16, '147', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (943, 1, 10, 116, '2:50:Oo9V0o9ZN8WwmvDtmvhZ0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5354, 1, 45, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (954, 1, 11, 152, 'Fedor_Sarikov;Male;Marzo 13th, 1995;3CC4F56F5208478CC3AA22A6723D8136', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (950, 1, 11, 16, '126', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (951, 1, 11, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2024, 1, 1, 116, '3:50:Oo9ZN8brmvcq0vWMmvb8', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (931, 1, 10, 115, '34:OF9V0o9ZN85w08DtmvhZ0V:Sniper:0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3727, 2, 104, 85, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13035, 1, 78, 115, '31:mp9Ymt9tN8QZm8QBmv5Z0V:M4 (D):138', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9975, 1, 20, 134, '689', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15705, 1, 2, 115, '31:0ubr0p9ZN8bt0ucq0u1Z0V:M4:50', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (899, 1, 10, 116, '3:44:0vbr0vbr0o9MOvQM0HhB0u0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (932, 1, 10, 116, '2:-1:Oo9V0o9ZN8cY08DtmvhZ0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2059, 1, 16, 152, 'Bill_Hollister;Male;Enero 1er, 2005;BA78B26E0180C5B3822AB54D4B74BA8E', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (1978, 1, 14, 152, 'Gaston_Hoxton;Male;Enero 1er, 2005;9D467C320F93CEBA11700B363BC677E4', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (1317, 1, 12, 152, 'Drake_Robinson;Male;Enero 1er, 1991;D13827138DE4746CA30CC03919D75E40', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2287, 1, 20, 153, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2273, 1, 11, 16, '127', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2143, 1, 11, 4, '250', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3545, 1, 26, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2446, 1, 16, 133, 'Bill Hollister', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (1898, 1, 13, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (1897, 1, 13, 16, '23', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2009, 1, 1, 116, '4:20:0Hbr0o9ZN80RmucRmuhZ0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2008, 1, 1, 116, '4:20:0ubr0o9ZN80RmucRmuhZ0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (1975, 1, 14, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4308, 1, 24, 127, 'Federal Security Service', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (1111, 1, 1, 162, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (1318, 1, 12, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (1319, 1, 12, 2, '898400', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6415, 1, 55, 16, '17', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13486, 3, 4475, 116, '5:13:mp9w0o9BN8bY08Wtmu5Z0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2060, 1, 16, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15004, 1, 85, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (1979, 1, 14, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (1980, 1, 14, 2, '329388', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3800, 2, 137, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3318, 1, 23, 16, '23', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3539, 1, 26, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5505, 1, 15, 134, '356', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13449, 1, 81, 2, '535042', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2018, 1, 15, 2, '827123', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2017, 1, 15, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3543, 1, 26, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2016, 1, 15, 152, 'Luka_Beccarie;Female;Mayo 4th, 2004;DCA168ED5A82ABDCF626878308461E6D', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14852, 1, 32, 134, '216', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2013, 1, 15, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2012, 1, 15, 16, '211', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13034, 1, 78, 162, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6177, 2, 173, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2011, 1, 1, 116, '4:20:mvbr0o9ZN85RmucRmuhZ0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3544, 1, 26, 2, '744200', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3542, 1, 26, 152, 'Alima_Volvkov;Female;Enero 4th, 2000;D39A82CAA0B3B30AA1FEAB1EFC6846D1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9761, 1, 66, 152, 'Nate_Martins;Male;Mayo 4th, 1998;8E0D3F1C94F7FE73F5430452881C6896', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4194, 1, 27, 6, '19.450000', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14576, 1, 41, 232, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3538, 1, 26, 16, '13', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2003, 1, 1, 116, '4:15:mp9ZN8br0vWM0vWMmvb8', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2004, 1, 1, 116, '4:20:mt9ZN8br0vWM0vWMmvb8', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2005, 1, 1, 116, '4:20:OF9ZN8br0uWM0vWMmvb8', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3799, 2, 138, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2007, 1, 1, 116, '4:20:0vbr0o9ZN8gRmucRmuhZ0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2142, 1, 11, 4, '249', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2010, 1, 1, 116, '4:20:08br0o9ZN8hRmucRmuhZ0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (1901, 1, 13, 152, 'Raul_Diaz;Male;Enero 13th, 1990;535ADBFF752E9C7C67CC34E6D3DCD163', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (1902, 1, 13, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (1903, 1, 13, 2, '679267', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9962, 1, 20, 73, '111', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4201, 1, 27, 176, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2067, 1, 17, 152, 'Alexey_Mozgov;Male;Junio 20th, 1985;45E0830CAAE073F88F6EBBF7DF5BC8CC', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2068, 1, 17, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2069, 1, 17, 2, '859670', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3700, 1, 18, 45, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2081, 1, 16, 163, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2082, 1, 16, 19, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3953, 1, 27, 2, '645965', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2084, 1, 16, 126, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9995, 1, 73, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3798, 2, 139, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2135, 1, 16, 16, '2', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2097, 1, 18, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4191, 1, 27, 172, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2100, 1, 18, 152, 'Staff_Driver;Male;Enero 1er, 1990;FF970D9F557037C53F1B1C3B9E7CA1E2', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2101, 1, 18, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2102, 1, 18, 2, '620625', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6106, 1, 11, 133, 'Fedor Sarikov', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3950, 1, 27, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3802, 2, 137, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6374, 1, 27, 45, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2145, 1, 19, 16, '294', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13033, 1, 78, 118, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4597, 1, 39, 16, '124', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11157, 1, 73, 73, '112', 0, '[ { \"key_name\": \"Garaje 2\", \"edited\": { \"key_name\": true } } ]');
INSERT INTO `items` VALUES (2284, 1, 20, 2, '532472', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15464, 1, 88, 16, '60', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4405, 2, 103, 118, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2149, 1, 19, 152, 'Alexey_Mozgov;Male;Junio 20th, 1986;BC3E530365B76EFC97B95EE5A2F053A6', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2152, 1, 11, 4, '331', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14761, 1, 83, 152, 'Bradford_Baldwin;Male;Enero 1er, 1998;841A1F816917D52291A25EF9AD9C3BE2', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2278, 1, 20, 16, '127', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4324, 1, 24, 56, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4593, 1, 15, 16, '93', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2211, 1, 11, 126, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4442, 1, 24, 163, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2282, 1, 20, 152, 'Alexey_Mozgov;Male;Junio 20th, 1985;E73CFD5C4F227E18A675CC99C377D7EF', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4371, 1, 29, 16, '73', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2290, 1, 20, 270, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2291, 1, 20, 56, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2292, 2, 205, 118, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2293, 2, 205, 130, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2294, 1, 20, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5353, 1, 45, 16, '23', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5701, 1, 47, 152, 'Alex_Delgado;Male;Septiembre 18th, 1998;7ECE98941AF277C10DC8BCDB4E2DBFD7', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3716, 1, 18, 73, '4', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12338, 1, 33, 9, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3130, 1, 3, 26, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3134, 1, 22, 16, '101', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3694, 1, 18, 270, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4192, 1, 27, 237, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3138, 1, 22, 152, 'Mario_Suares;Male;Mayo 31er, 1997;80B93B0874D66965ABACFA262C713AA5', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13371, 1, 79, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3360, 2, 58, 85, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3361, 2, 58, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3335, 1, 24, 152, 'Fitz_Munich;Male;Enero 1er, 1989;D8C259D750B3E23B908D8BD16D799113', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3952, 1, 27, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14630, 2, 167, 3, '167', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3465, 2, 56, 140, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14640, 1, 11, 73, '120', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3549, 1, 21, 6, '19.450000', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3550, 1, 16, 6, '19.450000', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3812, 1, 4, 176, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3693, 1, 18, 137, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3723, 2, 123, 85, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9186, 1, 27, 85, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2745, 1, 21, 2, '777089', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2744, 1, 21, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2743, 1, 21, 152, 'Viktoriya_Ivanovna;Female;Enero 1er, 1996;74E247FF9948DAA532B9C4B267251587', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6376, 1, 27, 163, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4154, 1, 12, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2740, 1, 21, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3701, 1, 18, 47, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2739, 1, 21, 16, '12', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4392, 1, 30, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3170, 1, 8, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3171, 1, 3, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4630, 1, 16, 45, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (10176, 1, 27, 134, '457', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3696, 1, 18, 163, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6879, 1, 20, 26, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4026, 1, 14, 115, '31:OF9B0o9ZN8cVOuQZ0v5Z0V:M4:17', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (2923, 1, 18, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14639, 1, 11, 4, '401', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3986, 1, 16, 4, '374', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3140, 1, 22, 2, '741073', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15395, 1, 30, 3, '232', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14999, 1, 84, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11811, 1, 35, 163, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11156, 1, 73, 73, '105', 0, '[ { \"key_name\": \"Garaje 1\", \"edited\": { \"key_name\": true } } ]');
INSERT INTO `items` VALUES (4664, 1, 27, 47, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4665, 1, 27, 163, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4666, 1, 27, 126, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3030, 1, 16, 4, '354', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3028, 1, 16, 4, '353', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3326, 1, 22, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3025, 1, 16, 4, '351', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15658, 1, 90, 3, '38', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15721, 2, 39, 3, '39', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3024, 1, 16, 4, '352', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (10500, 1, 25, 116, '4:56:mt9M0p9ZN8WtmH0M0H5Z0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4631, 1, 16, 47, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14681, 1, 7, 3, '167', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3949, 1, 27, 16, '25', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4441, 1, 29, 163, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15467, 1, 88, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3319, 1, 23, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4389, 1, 30, 16, '23', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6375, 1, 27, 47, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3322, 1, 23, 152, 'Patrick_Muller;Male;Agosto 22do, 1996;F3DB00E551C7F2A493A772FD29791B9A', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3323, 1, 23, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3324, 1, 23, 2, '861036', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3325, 1, 23, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3328, 1, 22, 16, '286', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3329, 1, 22, 163, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3330, 1, 22, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3331, 1, 24, 16, '18', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3337, 1, 24, 2, '419859', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13431, 1, 24, 134, '48', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3464, 2, 55, 140, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3366, 1, 25, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4390, 1, 30, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3951, 1, 27, 152, 'Vicenzo_Di_Marco;Male;Enero 1er, 1991;0456C03332845EDE0239F844CEE3282C', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3369, 1, 25, 152, 'John_Hollister;Male;Septiembre 21er, 1972;2524EBAF95D1ADFD1ED93004A0E362E7', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3370, 1, 25, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3371, 1, 25, 2, '827824', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (10612, 1, 25, 134, '545', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3466, 2, 38, 140, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3467, 2, 39, 140, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13624, 1, 8, 47, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5876, 1, 48, 2, '654825', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4403, 1, 24, 6, '499', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3703, 1, 18, 126, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3770, 2, 64, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3771, 2, 67, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3724, 2, 109, 85, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3728, 2, 103, 85, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3729, 2, 110, 85, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3730, 2, 102, 85, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3731, 2, 101, 85, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3732, 2, 100, 85, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3733, 2, 99, 85, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3734, 2, 105, 85, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3735, 2, 106, 85, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3736, 2, 107, 85, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3737, 2, 108, 85, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3738, 2, 126, 85, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3739, 2, 100, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3740, 2, 101, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3741, 2, 102, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3742, 2, 104, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3743, 2, 103, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3744, 2, 108, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3745, 2, 107, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3746, 2, 106, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3747, 2, 105, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3748, 2, 99, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3749, 2, 126, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3750, 2, 118, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3751, 2, 120, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3752, 2, 109, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3753, 2, 110, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3754, 2, 125, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3755, 2, 124, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3756, 2, 123, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3757, 2, 126, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3758, 2, 122, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3760, 2, 132, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3772, 2, 65, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3766, 2, 131, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3764, 2, 132, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3768, 2, 131, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3773, 2, 139, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3774, 2, 138, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3775, 2, 68, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3776, 2, 63, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3777, 2, 68, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3778, 2, 63, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3779, 2, 64, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3780, 2, 67, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3781, 2, 65, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9996, 1, 73, 152, 'Vinnie_Jenkins;Male;Enero 1er, 1991;34A15A55AF73C382FE6DFB11AD59A353', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3972, 1, 16, 4, '371', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4367, 1, 18, 64, 'Red Country - Sheriff Departament', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3804, 1, 18, 73, '74', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (3983, 1, 16, 4, '372', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4028, 1, 28, 16, '41', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4029, 1, 28, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14677, 2, 167, 3, '167', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4031, 1, 28, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4032, 1, 28, 2, '408788', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15520, 1, 28, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4050, 1, 28, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4273, 2, 140, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4328, 1, 18, 56, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5903, 1, 49, 16, '23', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5904, 1, 49, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4291, 1, 20, 16, '147', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4388, 1, 8, 64, 'Red Country - Sheriff Departament', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4372, 1, 29, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4373, 1, 29, 152, 'Marco_Fernandez;Male;Mayo 31er, 1992;60221159126573A83FD20F1702C17D37', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4374, 1, 29, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4375, 1, 29, 2, '414989', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15058, 1, 29, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4321, 1, 8, 56, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9876, 1, 68, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5573, 1, 3, 137, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4410, 1, 18, 126, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4411, 1, 18, 6, '480', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5237, 1, 44, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4413, 1, 18, 118, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8581, 1, 39, 56, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15549, 1, 16, 115, '2:mp9w0o9ZN818m8gMmuDZ0V:Golfclub:0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4420, 1, 29, 64, 'Red Country - Sheriff Departament', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4427, 1, 29, 6, '499', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4450, 1, 7, 237, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4428, 1, 29, 216, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4429, 1, 29, 26, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5970, 1, 50, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5969, 1, 50, 16, '23', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4432, 1, 29, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4436, 1, 18, 6, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4437, 1, 8, 6, '499', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4438, 1, 29, 6, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9981, 2, 205, 3, '205', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4458, 1, 24, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12287, 3, 4475, 4, '250', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4459, 1, 31, 16, '250', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4460, 1, 31, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4461, 1, 31, 152, 'Danila_Tatarin;Male;Marzo 7th, 1993;49D4C9A9226C502D9B101B90A2BF7C9C', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4462, 1, 31, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4463, 1, 31, 2, '722328', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13464, 1, 31, 134, '478', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4517, 1, 7, 16, '261', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9861, 1, 67, 16, '7', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4469, 1, 32, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4470, 1, 32, 152, 'Leandro_Ford;Male;Abril 22do, 1998;9F4346AB47EA434AC3780189DE8E8A7D', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4471, 1, 32, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4472, 1, 32, 2, '323367', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11398, 1, 76, 152, 'Dandy_Shelby;Male;Diciembre 18th, 1999;31FD8D2558CFCA6B8ECC3526043DE6FA', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4474, 1, 33, 16, '15', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14806, 1, 16, 26, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4476, 1, 33, 152, 'Kaito_Tenjo;Male;Mayo 3er, 2003;6A7F5952B9F4DD0E8525A3361D5A24D8', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12969, 1, 11, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4478, 1, 33, 2, '561892', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14978, 1, 33, 134, '160', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4480, 1, 34, 16, '261', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4481, 1, 34, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4482, 1, 34, 152, 'Daniel_Garcia;Male;Julio 11th, 2000;2F2A13FF3A27032CBE6CF0CD96F34A6D', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4483, 1, 34, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4484, 1, 34, 2, '703727', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9982, 1, 20, 3, '205', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4492, 1, 35, 16, '240', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4493, 1, 35, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4494, 1, 35, 152, 'Josef_DaVinci;Male;Abril 29th, 2000;043577D0B4C3CBB1E04086FC84E32DC7', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4495, 1, 35, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4496, 1, 35, 2, '687858', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4498, 1, 36, 16, '59', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4499, 1, 36, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4500, 1, 36, 152, 'Brayan_Martinez;Male;Enero 1er, 2005;084E301295CD0611A2EE395D5E9F3AF9', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4501, 1, 36, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4502, 1, 36, 2, '866230', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4503, 1, 36, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4504, 1, 37, 16, '23', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4505, 1, 37, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4506, 1, 37, 152, 'Armando_Casas;Male;Agosto 26th, 1993;ABDB33BD6155FAACE53623D85D37C3FD', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4507, 1, 37, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4508, 1, 37, 2, '744056', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4510, 1, 20, 4, '392', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15692, 2, 302, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (7261, 1, 58, 133, 'Bruno Crespo', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5024, 1, 42, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4540, 1, 38, 16, '217', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4541, 1, 38, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4542, 1, 38, 152, 'Armando_Caasas;Male;Agosto 26th, 1994;B46078803C4A6ADB7B117DF374B3A50F', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4543, 1, 38, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4544, 1, 38, 2, '860317', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8337, 1, 38, 134, '488', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13051, 1, 78, 134, '494', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4890, 1, 30, 145, '87', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4599, 1, 39, 152, 'Tomas_Carrizo;Male;Enero 13th, 1997;BE1C8C95045036A7A85C27C5041063CD', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4600, 1, 39, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4601, 1, 39, 2, '778329', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6119, 2, 173, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6701, 1, 21, 45, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13020, 1, 78, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5495, 1, 21, 45, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5496, 1, 21, 163, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12171, 1, 77, 26, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15637, 1, 90, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4663, 1, 27, 45, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4617, 1, 38, 236, 'Hollister and Sewell Inc. | Secutiry', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4618, 1, 38, 45, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4619, 1, 38, 47, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4620, 1, 38, 163, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4621, 1, 38, 126, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4622, 1, 38, 115, '24:OF9Y0t9tN85M0HQR0v5Z0V:Deagle (D):89', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4623, 1, 38, 6, '19.450000', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4624, 1, 38, 115, '25:Oo9Y0t9tN85M0HQR0v5Z0V:Shotgun (D):79', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8965, 1, 27, 219, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4680, 1, 35, 133, 'Josef DaVinci', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13558, 1, 18, 162, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15118, 1, 8, 115, '24:OF9YN8grOv0Mmugwmub8:Deagle (D):37', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5118, 1, 40, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4715, 1, 40, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4716, 1, 40, 2, '580924', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4714, 1, 40, 152, 'Brandon_Liget;Male;Enero 1er, 1989;55893954D50FADDD707E7C6478F57D5F', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4713, 1, 40, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4712, 1, 40, 16, '14', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5543, 1, 46, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5583, 1, 3, 172, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13595, 1, 3, 118, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5874, 1, 48, 152, 'Cristobal_Colon;Male;Enero 1er, 2005;1C4F41F315E9242943007360FE351472', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5873, 1, 48, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5872, 1, 48, 16, '23', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5582, 1, 3, 270, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13627, 1, 8, 45, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12410, 1, 30, 6, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5581, 1, 3, 47, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5112, 1, 31, 115, '24:mp9Z0t9tN81qOvbV0u5Z0V:Deagle (D):51', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4823, 1, 42, 16, '23', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13025, 1, 78, 115, '24:mp9qmt9ZN8gRmvQBmv5Z0V:Deagle:6', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12304, 1, 35, 115, '2:mp9M0t9ZN8QZ0uWw085Z0V:Golf Club:0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12319, 2, 233, 115, '2:mp9ZmF9ZN80wmHWw085Z0V:Golf Club:0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11918, 3, 4497, 16, '162', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5880, 1, 48, 16, '310', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15095, 1, 41, 134, '1949', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (7271, 1, 58, 154, 'Bruno Crespo', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (10589, 1, 73, 133, 'Vinnie Jenkins', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4763, 1, 41, 16, '12', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4764, 1, 41, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4765, 1, 41, 152, 'Mariana_Vicent;Female;Julio 15th, 2005;4F46EF94F914F914A550D49AEBE43733', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4766, 2, 233, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4767, 1, 41, 2, '324446', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5906, 1, 49, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11239, 2, 167, 80, '1', 0, '[ { \"item_name\": \"Phillips Screws (100)\" } ]');
INSERT INTO `items` VALUES (4785, 1, 7, 133, 'Khalled Allasad', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13821, 1, 32, 16, '127', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5113, 1, 31, 115, '31:mt9Z0t9tN81qOvbV0u5Z0V:M4 (D):162', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5114, 1, 31, 111, '10', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4824, 1, 42, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4825, 1, 42, 152, 'Jack_Mitchell;Male;Abril 9th, 1989;91337EA00DF102FFB4BE6DF5AF64930D', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4826, 1, 42, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4827, 1, 42, 2, '605600', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4852, 2, 212, 85, '3', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9866, 1, 67, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4832, 1, 3, 56, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4833, 1, 31, 56, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4850, 1, 41, 237, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4864, 2, 212, 61, '3', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4869, 1, 43, 16, '18', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4870, 1, 43, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4871, 1, 43, 152, 'Thomas_Eze;Male;Diciembre 11th, 1996;C2ACE4B54C5B1DCAFF39671BF29D0F57', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4886, 2, 167, 118, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4873, 1, 43, 2, '759620', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15498, 1, 43, 134, '6770', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4894, 1, 41, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4901, 1, 31, 163, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8521, 1, 49, 134, '195', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4911, 2, 221, 61, '2', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4915, 1, 39, 56, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4916, 2, 221, 85, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5036, 1, 33, 56, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4909, 1, 39, 163, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4908, 2, 213, 85, '2', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13242, 1, 30, 3, '253', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5115, 1, 31, 270, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5142, 1, 15, 115, '29:mp9M0o9ZN8cwOvgV0u5Z0V:MP5:3', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4924, 2, 213, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5120, 1, 42, 134, '366', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4932, 1, 42, 152, 'Jack_Mitchell;Male;Abril 9th, 1989;91337EA00DF102FFB4BE6DF5AF64930D', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4937, 1, 42, 62, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4939, 1, 42, 63, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4941, 1, 42, 9, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4943, 1, 42, 58, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4945, 1, 42, 62, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4947, 1, 42, 62, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9760, 1, 66, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15468, 1, 88, 2, '445361', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14805, 1, 16, 56, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15702, 1, 2, 116, '3:50:OF9tN8brmHbZ0v1Zm8b8', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9116, 1, 44, 6, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (4964, 1, 18, 126, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5702, 1, 47, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12016, 1, 13, 134, '1768', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13795, 1, 55, 64, 'Sheriff Departament', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5725, 1, 47, 152, 'Alex_Delgado;Male;Septiembre 18th, 1998;7ECE98941AF277C10DC8BCDB4E2DBFD7', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5703, 1, 47, 2, '319180', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13804, 2, 234, 118, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5078, 1, 39, 127, 'Federal Security Service', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15117, 1, 8, 115, '31:mt9YN8grOv0Mmugwmub8:M4 (D):201', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13591, 1, 3, 64, 'Sheriff Departament', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5082, 1, 39, 127, 'Federal Security Service', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5083, 1, 31, 127, 'Federal Security Service', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14808, 1, 11, 56, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15457, 1, 87, 16, '15', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5145, 1, 15, 116, '1:14:mt9M0o9ZN8bqOvgV0u5Z0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9065, 1, 63, 152, 'Rigoberto_Monroy;Male;Agosto 1er, 1996;9438369C60904D7EC2DC92C737A2ADA9', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5238, 1, 44, 152, 'Fernando_Fernandez;Male;Septiembre 8th, 1997;4C2B2CBDBA7A2905A5C6B83C58BF27CB', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5239, 1, 44, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5240, 1, 44, 2, '862744', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15310, 1, 44, 134, '11102', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15543, 1, 35, 134, '36937', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6749, 1, 57, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5302, 1, 13, 262, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15441, 1, 11, 134, '3232', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5355, 1, 45, 152, 'Gianluigi_Fanculo;Male;Enero 1er, 2005;F577B09B74883F6A8C12E5F32AD7FC51', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5356, 1, 45, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5357, 1, 45, 2, '878271', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9486, 1, 45, 134, '494', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5575, 1, 3, 76, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5699, 1, 47, 16, '124', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5700, 1, 47, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12965, 1, 3, 216, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9487, 1, 64, 16, '18', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9163, 1, 30, 158, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9490, 1, 64, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (10044, 1, 74, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13890, 1, 3, 15, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15437, 1, 7, 134, '6199', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (10383, 1, 21, 45, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5513, 2, 224, 85, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5542, 1, 46, 16, '24', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5517, 2, 224, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5905, 1, 49, 152, 'Agusto_Fernandez;Male;Enero 6th, 1996;24C873A182DFC1450701FBAEE0FFB932', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5544, 1, 46, 152, 'Daniel_Martinez;Male;Enero 1er, 2005;6DD80313B96732F6BE8AC73EB71AF4F5', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5545, 1, 46, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5546, 1, 46, 2, '746159', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5547, 1, 46, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5585, 1, 3, 29, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11182, 1, 47, 134, '495', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5971, 1, 50, 152, 'Nicolas_Mansoti;Male;Diciembre 23er, 1994;C7136018C1BF1BB60B5B18994157BB9A', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14643, 2, 167, 3, '167', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5907, 1, 49, 2, '820509', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5735, 1, 41, 16, '55', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5741, 1, 11, 6, '255.300000', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5743, 1, 7, 6, '255.300000', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11849, 1, 30, 157, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6131, 2, 150, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9064, 1, 63, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12412, 1, 30, 232, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5864, 1, 3, 16, '48', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6176, 2, 190, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6175, 2, 174, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6167, 2, 192, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6168, 2, 192, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6169, 1, 12, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6170, 2, 194, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6171, 1, 12, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6172, 2, 191, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6174, 1, 8, 16, '16', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6166, 2, 194, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6165, 2, 176, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6164, 2, 193, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6109, 1, 12, 6, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6103, 1, 30, 133, 'Thommas Shelby', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6258, 1, 56, 216, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15116, 1, 8, 115, '25:mp9YN8grOv0Mmugwmub8:Shotgun (D):30', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15384, 1, 30, 3, '252', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5972, 1, 50, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5973, 1, 50, 2, '318497', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6018, 1, 50, 134, '300', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5975, 1, 29, 124, 'Federal Security Service', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5976, 1, 29, 162, '100', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13039, 1, 78, 116, '4:4:mp9qmt9ZN8Wqm8QBmv5Z0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5979, 1, 29, 45, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5980, 1, 29, 47, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5981, 1, 29, 270, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5982, 1, 29, 126, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6003, 1, 51, 16, '23', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6000, 1, 51, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5988, 1, 51, 152, 'Jacob_Shelby;Male;Agosto 9th, 1992;CAA79662A5F3FD6C610104C626E7A40D', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5999, 1, 51, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (5990, 1, 51, 2, '549527', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6010, 1, 51, 134, '250', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6004, 2, 139, 6, '499', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6009, 1, 51, 6, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6011, 1, 51, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6013, 1, 49, 6, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6015, 1, 49, 115, '43:mp9RmF9ZN85q0vWV0u5Z0V:Camera:0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6017, 1, 49, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6019, 1, 50, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6036, 1, 52, 16, '125', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6037, 1, 52, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6038, 1, 52, 152, 'Juan_Gomes;Male;Octubre 24th, 1997;9A67F6F68C17DFE18A1B34BBE32F9885', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6039, 1, 52, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6040, 1, 52, 2, '759458', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6041, 1, 52, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6045, 1, 53, 16, '7', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6046, 1, 53, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6047, 1, 53, 152, 'Carl_Jhon;Male;Enero 1er, 1998;1356EE4EE9028AD7D0AEE6CA02A41174', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6048, 1, 53, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6049, 1, 53, 2, '551414', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6050, 1, 53, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6059, 1, 35, 79, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11816, 1, 7, 73, '113', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6132, 2, 115, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6133, 2, 156, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6134, 2, 161, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6135, 2, 159, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6136, 2, 158, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6137, 2, 148, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6138, 2, 160, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13021, 1, 78, 2, '419392', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12284, 1, 33, 26, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6255, 2, 31, 118, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (10003, 1, 73, 4, '361', 0, '[ { \"key_name\": \"Llave de las 3 oficinas\", \"edited\": { \"key_name\": true } } ]');
INSERT INTO `items` VALUES (6151, 2, 151, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6152, 2, 147, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6153, 2, 149, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6157, 1, 13, 133, 'Raul Diaz', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6178, 2, 191, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6179, 2, 175, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6180, 2, 177, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6181, 2, 174, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6182, 2, 190, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6183, 1, 12, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6184, 2, 175, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6185, 2, 176, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6186, 1, 12, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6187, 1, 12, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6193, 1, 12, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6194, 2, 177, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6195, 1, 12, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6196, 2, 173, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6197, 1, 12, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6334, 1, 54, 16, '7', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6746, 1, 57, 16, '15', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6747, 1, 57, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6267, 1, 8, 270, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6748, 1, 57, 152, 'Vyacheslav_Anisimov;Male;Enero 1er, 1990;2B401C9F5A7D66F2571C9A9338A840A6', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8542, 1, 39, 134, '1940', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8971, 1, 21, 45, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6303, 1, 54, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6304, 1, 54, 152, 'Johann_Santos;Male;Enero 1er, 2000;AAC6250B7AD0C03BD73B1075A9AB256C', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6305, 1, 54, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6306, 1, 54, 2, '317634', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6955, 2, 178, 57, '20', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6332, 1, 54, 158, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13592, 1, 3, 115, '25:OF98N8gr08Dq0u0Mmub8:Shotgun (D):44', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9835, 1, 44, 3, '232', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6377, 1, 27, 126, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (10477, 1, 25, 115, '24:mp9M0p9ZN8gtmu0M0H5Z0V:Deagle:7', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6379, 1, 27, 6, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11155, 3, 4475, 116, '1:73:Oo9w0o9BN8QBmvWq0H5Z0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6417, 1, 55, 152, 'Fernando_Orbita;Male;Septiembre 1er, 1989;A082F9D0C7BB08520EFDF4696CB25743', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6419, 1, 55, 2, '517573', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (10622, 1, 56, 162, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6421, 1, 56, 16, '18', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6422, 1, 56, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6423, 1, 56, 152, 'Pablo_Orbita;Male;Enero 1er, 1994;A2011DA4F7CAA85351C83705830B9C87', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6424, 1, 56, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6425, 1, 56, 2, '707933', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15093, 1, 41, 3, '233', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15688, 1, 2, 56, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6467, 1, 32, 133, 'Leandro Ford', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6600, 1, 0, 134, '221', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11934, 3, 4497, 16, '146', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6496, 1, 41, 19, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9759, 1, 66, 16, '17', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12763, 2, 233, 118, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6506, 1, 41, 133, 'Mariana Vicent', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6532, 1, 41, 73, '107', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13477, 1, 32, 6, '255.300000', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11089, 1, 21, 45, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6571, 2, 234, 122, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6573, 1, 56, 123, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6574, 1, 56, 16, '175', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6582, 1, 35, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6586, 1, 35, 6, '277.400000', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6587, 1, 35, 16, '23', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6589, 1, 35, 16, '29', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6591, 1, 35, 16, '46', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (10002, 1, 73, 73, '73', 0, '[ { \"key_name\": \"Entrada a las sala de reunion\", \"edited\": { \"key_name\": true } } ]');
INSERT INTO `items` VALUES (9994, 1, 73, 16, '165', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14821, 1, 11, 115, '42:mp9Z0o9ZN8Wq0u5ZmH5Z0V:Fire Extinguisher:0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6756, 1, 57, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6750, 1, 57, 2, '499242', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9118, 1, 44, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (10611, 1, 57, 134, '100', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6676, 2, 26, 121, '63', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9179, 1, 44, 237, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6762, 1, 39, 137, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6763, 1, 39, 76, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8925, 1, 39, 137, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8924, 1, 39, 124, 'Federal Security Service', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6766, 1, 39, 270, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6767, 1, 39, 172, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6768, 1, 39, 126, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6769, 1, 39, 29, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6878, 2, 205, 284, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6897, 1, 20, 163, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6866, 1, 20, 137, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6973, 1, 58, 16, '261', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6974, 1, 58, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6892, 1, 55, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6975, 1, 58, 152, 'Bruno_Crespo;Male;Julio 18th, 1988;AAEF9437EBD331D2F191855417D05B5F', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6917, 1, 12, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6976, 1, 58, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6977, 1, 58, 2, '737784', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (7289, 1, 58, 134, '103', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6981, 1, 58, 152, 'Bruno_Crespo;Male;Julio 18th, 1988;AAEF9437EBD331D2F191855417D05B5F', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6986, 1, 32, 16, '299', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6988, 1, 59, 16, '160', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6989, 1, 59, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6990, 1, 59, 152, 'Erick_Morales;Male;Abril 30th, 1998;28EF9FFBE4953D58EBA03D45DDA3E978', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12291, 1, 32, 56, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6992, 1, 59, 2, '860551', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6993, 1, 60, 16, '29', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6994, 1, 60, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6995, 1, 60, 152, 'Facundo_Trias;Male;Marzo 1er, 1995;8C4DCA06DAA3F8D1BBF78A1E57340141', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6996, 1, 60, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6997, 1, 60, 2, '603947', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (6998, 1, 60, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14467, 1, 59, 134, '4476', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15636, 1, 90, 16, '56', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (7032, 1, 3, 145, '95', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12229, 1, 77, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (7036, 1, 3, 6, '20', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9061, 1, 44, 16, '7', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12282, 1, 33, 172, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9068, 1, 63, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11149, 3, 4475, 115, '22:mp9w0o9BN8bR08Wq0H5Z0V:Colt 45:15', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15475, 1, 81, 134, '394', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9063, 1, 63, 16, '7', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15386, 1, 30, 3, '255', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13910, 1, 21, 236, 'Hollister and Sewell Inc. | Secutiry', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (7161, 1, 30, 16, '165', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (7114, 1, 16, 172, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (7116, 1, 16, 236, 'Hollister and Sewell Inc.', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13593, 1, 3, 162, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (7211, 1, 61, 152, 'Tej_Parker;Male;Febrero 11th, 1998;2A8F769EB4EC5440422BA04FD8B79FB9', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (7210, 1, 61, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (10649, 1, 56, 172, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8926, 1, 39, 115, '34:mt9R0t9tN81R0ubR0u5Z0V:Sniper (D):47', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13338, 1, 32, 70, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13334, 1, 30, 72, 'recibo de cuotas por tuneo en meca firma: Thommas_Shelby y Leandro_Ford', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (7209, 1, 61, 16, '7', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (7212, 1, 61, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (7213, 1, 61, 2, '671737', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12927, 1, 61, 134, '1088', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9865, 1, 67, 2, '824158', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13799, 1, 55, 26, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15639, 1, 90, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9067, 1, 63, 2, '650135', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8937, 1, 39, 270, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12283, 1, 33, 216, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12266, 1, 3, 70, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9170, 1, 30, 237, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9172, 1, 33, 162, '100', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8525, 1, 54, 134, '490', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8531, 1, 24, 163, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9792, 1, 24, 47, '45', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8533, 1, 24, 47, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8534, 1, 24, 270, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11420, 1, 77, 163, '.', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11917, 3, 4497, 16, '162', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12168, 1, 77, 70, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9783, 2, 140, 269, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9161, 1, 56, 152, 'Pablo_Orbita;Male;Enero 1er, 1994;A2011DA4F7CAA85351C83705830B9C87', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8553, 1, 18, 221, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8936, 1, 39, 47, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8493, 1, 62, 16, '15', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8494, 1, 62, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8495, 1, 62, 152, 'Lucas_Torres;Male;Enero 21er, 2000;6A4D904F42DC0BFCAFEB297A571A5AA9', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8496, 1, 62, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8497, 1, 62, 2, '593774', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8498, 1, 62, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8935, 1, 39, 45, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8934, 1, 39, 163, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8933, 1, 39, 111, '10', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8932, 1, 39, 115, '30:08brOu0r0p9qOubZOubM0u0:AK-47 (D):102', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8931, 1, 39, 115, '33:0HbrOu0r0p9qOubZOubM0u0:Rifle (D):50', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8930, 1, 39, 115, '25:0ubrOu0r0p9qOubZOubM0u0:Shotgun (D):60', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8929, 1, 39, 115, '31:0vbrOu0r0p9qOubZOubM0u0:M4 (D):0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8928, 1, 39, 115, '23:Oo9R0t9tN81R0ubR0u5Z0V:Silenced (D):34', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8810, 1, 12, 133, 'Drake Robinson', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13623, 1, 8, 162, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8927, 1, 39, 115, '24:OF9R0t9tN81R0ubR0u5Z0V:Deagle (D):37', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15703, 1, 2, 116, '3:50:Oo9tN8brm8bZ0v1Zm8b8', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14798, 1, 18, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (8465, 1, 8, 16, '30', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9066, 1, 63, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9877, 1, 68, 2, '790460', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9878, 1, 68, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (10045, 1, 74, 152, 'Leonardo_Pepe;Male;Enero 10th, 2005;DEB217ACA691CEBB3DF1612018D9C2F6', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13500, 3, 4475, 116, '5:25:0vbrmHbrmF9B0HhR0H5M0u0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9875, 1, 68, 152, 'Ed_Ackerman;Male;Enero 5th, 1999;55F7089952C8EAD8F5983126448EFD10', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9464, 1, 44, 133, 'Fernando Fernandez', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9492, 1, 64, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (10046, 1, 74, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9387, 1, 63, 62, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9388, 1, 63, 62, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15650, 1, 90, 134, '510', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9491, 1, 64, 2, '880662', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9489, 1, 64, 152, 'Tato_Gucci;Male;Julio 15th, 1999;4BD7AA910EDC022EF78014F1C68EC7B4', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9864, 1, 67, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9488, 1, 64, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9874, 1, 68, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9503, 1, 65, 16, '7', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9504, 1, 65, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9505, 1, 65, 152, 'Maikol_Xoro;Male;Enero 1er, 2005;7F92B373BB0ECC62C98A5C10A9C6B53C', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9506, 1, 65, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9507, 1, 65, 2, '805467', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9508, 1, 65, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15450, 1, 87, 152, 'Martin_Rodriguez;Male;Enero 1er, 1998;15E85007E1099E08AAB1D9EA327D6F18', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11892, 2, 39, 114, '1013', -100, '[ [ ] ]');
INSERT INTO `items` VALUES (9862, 1, 67, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9863, 1, 67, 152, 'Oscar_Salgueda;Male;Enero 1er, 2005;85BABB7A83B6D2DA3C54D7FBDE5A9905', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9762, 1, 66, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9763, 1, 66, 2, '732896', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11407, 1, 66, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11838, 2, 241, 144, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9873, 1, 68, 16, '171', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9938, 1, 69, 16, '7', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9939, 1, 69, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13018, 1, 78, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13019, 1, 78, 152, 'Ryder_Thompson;Male;Enero 4th, 1990;6B656469DB9FFB0AAECA00479A7D4EE7', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (10006, 1, 73, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9940, 1, 69, 152, 'Smith_Chesrt;Male;Enero 1er, 1985;871BB22CDD5C78A2BEC27F1E638CC5F4', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14451, 1, 35, 127, 'Federikov Inc', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9989, 1, 4, 176, '6:4', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9941, 1, 69, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9942, 1, 69, 2, '828489', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9943, 1, 69, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9944, 1, 70, 16, '40', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9945, 1, 70, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9946, 1, 70, 152, 'Yender_Maricon;Female;Enero 1er, 2001;F7778F0AD3A7B87FD36B5B05E50E4510', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9947, 1, 70, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9948, 1, 70, 2, '393027', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9949, 1, 70, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9950, 1, 71, 16, '12', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9951, 1, 71, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9952, 1, 71, 152, 'LuciferXD_Gonzales;Female;Mayo 17th, 2005;98E38E09839ED8B832CE9F440A5D117A', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9953, 1, 71, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9954, 1, 71, 2, '360030', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9955, 1, 71, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9956, 1, 72, 16, '12', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9957, 1, 72, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9958, 1, 72, 152, 'Elizabeth_Lapija;Female;Mayo 1er, 2002;0B2C7B46A40393140D9A9F8AB31ABA37', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9959, 1, 72, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9960, 1, 72, 2, '461680', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9980, 2, 222, 72, 'dreko la concha tuya si me hago un auto para que sea exclusivo para mi no te lo spawnees para vos', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (9983, 1, 12, 134, '238', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11397, 1, 76, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11087, 1, 55, 145, '99', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (10043, 1, 74, 16, '23', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (10620, 1, 56, 26, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11085, 1, 55, 6, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (10047, 1, 74, 2, '799194', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (10048, 1, 74, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13076, 1, 21, 270, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13081, 1, 21, 172, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11912, 3, 4497, 16, '162', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11400, 1, 76, 2, '653585', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14448, 3, 4475, 127, 'Federikov Inc', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11002, 1, 3, 115, '44:mp98N8br0u0Rmv1tmub8:Night Vision Goggles:0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13370, 1, 79, 16, '189', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11833, 1, 16, 137, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (10624, 2, 99, 118, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (10625, 1, 56, 163, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11904, 3, 4497, 16, '162', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13797, 1, 55, 172, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15686, 1, 2, 64, 'Riverside Sheriff Department', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (10716, 1, 73, 223, 'Safe:2332:50', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (10690, 1, 7, 115, '2:mp9Z0o9ZN8g8Ov1w0H5Z0V:Golfclub:0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15141, 1, 73, 134, '743', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14760, 1, 83, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (10822, 1, 31, 9, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (10824, 1, 11, 5, '399', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (10828, 1, 31, 6, '20', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (10830, 1, 3, 104, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15661, 1, 90, 115, '31:mp9tN8brOubMmvWRmHb8:M4:13', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14728, 1, 41, 4, '113', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13031, 1, 78, 64, 'Sheriff Departament', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15347, 1, 30, 134, '3068', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11081, 1, 55, 163, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15018, 1, 11, 145, '99', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15366, 1, 56, 134, '1023', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13471, 1, 3, 45, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15355, 1, 55, 134, '44', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12169, 1, 77, 172, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14814, 1, 16, 176, '6', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11913, 3, 4497, 16, '162', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13480, 3, 4475, 115, '25:mt9w0o9BN8ht08Wtmu5Z0V:Shotgun:8', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11841, 2, 39, 179, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13372, 1, 79, 152, 'Kevin_Velazques;Male;Julio 25th, 1993;DDC628BEE4BC33FF58678196DE75F7E5', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13914, 1, 82, 16, '14', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11844, 2, 39, 143, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11185, 3, 4475, 270, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11187, 1, 7, 270, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11189, 3, 4475, 270, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11191, 2, 239, 80, '1', 0, '[ { \"item_name\": \"Power Drill\" } ]');
INSERT INTO `items` VALUES (11193, 2, 239, 80, '1', 0, '[ { \"item_name\": \"Power Saw\" } ]');
INSERT INTO `items` VALUES (11195, 2, 239, 80, '1', 0, '[ { \"item_name\": \"Pneumatic Nail Gun\" } ]');
INSERT INTO `items` VALUES (11197, 2, 236, 80, '1', 0, '[ { \"item_name\": \"Pneumatic Paint Gun\" } ]');
INSERT INTO `items` VALUES (11199, 2, 236, 80, '1', 0, '[ { \"item_name\": \"Air Wrench\" } ]');
INSERT INTO `items` VALUES (11201, 2, 236, 80, '1', 0, '[ { \"item_name\": \"Mobile Torch Set\" } ]');
INSERT INTO `items` VALUES (11203, 2, 239, 80, '1', 0, '[ { \"item_name\": \"Mobile Electric Welder\" } ]');
INSERT INTO `items` VALUES (11205, 2, 236, 80, '1', 0, '[ { \"item_name\": \"Iron Crowbar\" } ]');
INSERT INTO `items` VALUES (11207, 2, 236, 80, '1', 0, '[ { \"item_name\": \"Hack Saw\" } ]');
INSERT INTO `items` VALUES (11209, 2, 236, 80, '1', 0, '[ { \"item_name\": \"Vise Grip\" } ]');
INSERT INTO `items` VALUES (11211, 2, 236, 80, '1', 0, '[ { \"item_name\": \"Wirecutters\" } ]');
INSERT INTO `items` VALUES (11219, 2, 239, 80, '1', 0, '[ { \"item_name\": \"Robinson Screwdriver\" } ]');
INSERT INTO `items` VALUES (11241, 2, 167, 80, '1', 0, '[ { \"item_name\": \"Flathead Screws (100)\" } ]');
INSERT INTO `items` VALUES (11243, 2, 167, 80, '1', 0, '[ { \"item_name\": \"Robinson Screws (100)\" } ]');
INSERT INTO `items` VALUES (11225, 2, 239, 80, '1', 0, '[ { \"item_name\": \"Torx Screwdriver\" } ]');
INSERT INTO `items` VALUES (11227, 2, 239, 80, '1', 0, '[ { \"item_name\": \"Needlenose Pliers\" } ]');
INSERT INTO `items` VALUES (11229, 2, 167, 80, '1', 0, '[ { \"item_name\": \"Tire Iron\" } ]');
INSERT INTO `items` VALUES (11231, 2, 167, 80, '1', 0, '[ { \"item_name\": \"Wrench\" } ]');
INSERT INTO `items` VALUES (11233, 2, 236, 80, '1', 0, '[ { \"item_name\": \"Monkey Wrench\" } ]');
INSERT INTO `items` VALUES (11235, 2, 236, 80, '1', 0, '[ { \"item_name\": \"Socket Wrench\" } ]');
INSERT INTO `items` VALUES (11245, 2, 167, 80, '1', 0, '[ { \"item_name\": \"Torx Screws (100)\" } ]');
INSERT INTO `items` VALUES (11247, 2, 167, 80, '1', 0, '[ { \"item_name\": \"Iron Nails (100)\" } ]');
INSERT INTO `items` VALUES (11249, 2, 167, 80, '1', 0, '[ { \"item_name\": \"Bosch 6 Gallon Air Compressor\" } ]');
INSERT INTO `items` VALUES (11251, 1, 32, 270, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11253, 2, 167, 80, '1', 0, '[ { \"item_name\": \"Paint Can\" } ]');
INSERT INTO `items` VALUES (11255, 2, 167, 80, '1', 0, '[ { \"item_name\": \"Chlorex Bleach\" } ]');
INSERT INTO `items` VALUES (11257, 2, 167, 80, '1', 0, '[ { \"item_name\": \"Red Metal Toolbox\" } ]');
INSERT INTO `items` VALUES (11259, 2, 167, 80, '1', 0, '[ { \"item_name\": \"Rubbermaid Plastic Trashcan\" } ]');
INSERT INTO `items` VALUES (11337, 1, 75, 152, 'Adam_Sandler;Male;Enero 9th, 1981;B5A50522D16D5D8C2E839A40A707D4DA', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11335, 1, 75, 16, '7', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11336, 1, 75, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11338, 1, 75, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11339, 1, 75, 2, '429852', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11340, 1, 75, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11399, 1, 76, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12926, 2, 12, 121, '357', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13448, 1, 81, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11396, 1, 76, 16, '106', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11386, 2, 11, 121, '476', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11401, 1, 76, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11410, 1, 77, 16, '294', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11411, 1, 77, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11412, 1, 77, 152, 'John_OConnor;Male;Septiembre 21er, 1979;8062F254F9293ED0D15ABCACB8A77C61', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11413, 1, 77, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11414, 1, 77, 2, '880518', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13015, 1, 77, 134, '494', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12167, 1, 77, 64, 'Sheriff Departament', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11462, 1, 77, 126, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11463, 1, 77, 6, '911.010000', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12165, 1, 77, 126, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11465, 1, 77, 70, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11467, 1, 77, 216, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13594, 1, 3, 115, '24:Oo98N8grmvDq0u0Mmub8:Deagle (D):181', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11470, 1, 77, 205, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12269, 1, 3, 205, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11916, 3, 4497, 16, '162', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11495, 1, 24, 205, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11494, 1, 24, 118, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11493, 1, 24, 216, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11915, 3, 4497, 16, '162', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11594, 1, 24, 126, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11919, 3, 4497, 16, '146', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11492, 1, 24, 70, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11497, 1, 24, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12968, 1, 3, 118, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11523, 1, 77, 73, '4', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11527, 2, 17, 121, '812', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11596, 1, 24, 70, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11597, 1, 24, 216, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11598, 1, 24, 118, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11914, 3, 4497, 16, '162', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11600, 1, 24, 115, '29:mp9B0p9tN8WB0818085Z0V:MP5 (D):101', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11601, 1, 24, 115, '30:mt9B0p9tN8WB0818085Z0V:AK-47 (D):0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11602, 1, 24, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11603, 1, 24, 115, '24:OF9B0p9tN8WB0818085Z0V:Deagle (D):39', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11911, 3, 4497, 16, '162', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11910, 3, 4497, 16, '162', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11909, 3, 4497, 16, '162', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11889, 1, 7, 16, '127', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11908, 3, 4497, 16, '162', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11907, 3, 4497, 16, '162', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11906, 3, 4497, 16, '162', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11905, 1, 1, 16, '162', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11894, 2, 39, 114, '1024', -100, '[ [ ] ]');
INSERT INTO `items` VALUES (11920, 3, 4497, 16, '146', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11921, 3, 4497, 16, '146', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11922, 3, 4497, 16, '146', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11923, 3, 4497, 16, '146', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11924, 3, 4497, 16, '146', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11925, 3, 4497, 16, '146', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11926, 3, 4497, 16, '146', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11927, 3, 4497, 16, '146', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11928, 3, 4497, 16, '146', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11929, 3, 4497, 16, '146', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11930, 3, 4497, 16, '146', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11931, 3, 4497, 16, '146', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11932, 3, 4497, 16, '146', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13032, 1, 78, 216, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14133, 1, 30, 3, '240', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12172, 2, 118, 118, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12863, 1, 61, 133, 'Tej Parker', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (11994, 1, 44, 115, '2:mp9BmF9ZN81Ymvcw085Z0V:Golf Club:0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14573, 1, 41, 145, '97', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14578, 1, 41, 2, '887150', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15704, 1, 2, 116, '3:50:0vbr0p9ZN81Z0ucq0u1Z0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15730, 1, 2, 134, '10367', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15382, 1, 30, 3, '49', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12174, 1, 77, 162, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12175, 1, 77, 115, '29:mp9qmt9tN8Wtm8Dw085Z0V:MP5 (D):189', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12176, 1, 77, 115, '25:mt9qmt9tN8Wtm8Dw085Z0V:Shotgun (D):51', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12177, 1, 77, 115, '24:OF9qmt9tN8Wtm8Dw085Z0V:Deagle (D):42', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14809, 1, 11, 270, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15000, 1, 84, 2, '353003', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12460, 1, 30, 80, '1', 0, '[ { \"item_name\": \"Pneumatic Paint Gun\" } ]');
INSERT INTO `items` VALUES (12280, 1, 33, 6, '911.010000', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15014, 1, 33, 64, 'Sheriff Departament', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12620, 1, 32, 47, '240', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12462, 1, 30, 80, '1', 0, '[ { \"item_name\": \"Pneumatic Nail Gun\" } ]');
INSERT INTO `items` VALUES (12464, 1, 30, 80, '1', 0, '[ { \"item_name\": \"Mobile Torch Set\" } ]');
INSERT INTO `items` VALUES (15449, 1, 87, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13447, 1, 81, 152, 'Pablo_Gomez;Male;Julio 1er, 1999;C1E72EB9D917334F36C2AA3B7BDB71C3', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13445, 1, 81, 16, '7', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13446, 1, 81, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13414, 1, 41, 178, 'New Book:Unknown:1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13412, 1, 41, 18, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13410, 1, 41, 50, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13408, 2, 233, 51, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13030, 1, 78, 126, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13017, 1, 78, 16, '17', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13468, 3, 4475, 115, '25:mp9w0o9BN80t0uWtmu5Z0V:Shotgun:10', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12781, 1, 30, 137, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12878, 1, 61, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14668, 1, 7, 4, '112', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14050, 2, 25, 121, '299', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (12924, 1, 16, 270, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13911, 1, 21, 115, '24:mp9Z0p9tN8c8OvD8mu5Z0V:Deagle (D):101', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13373, 1, 79, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13374, 1, 79, 2, '466568', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13383, 1, 79, 134, '520', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13377, 1, 80, 16, '7', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13378, 1, 80, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13379, 1, 80, 152, 'Jay_Jackson;Male;Enero 1er, 2000;35BB748B8128A5B8A8EF6886E1F8E911', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13380, 1, 80, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13381, 1, 80, 2, '702505', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15528, 1, 80, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13491, 3, 4475, 116, '5:25:OF9w0o9BN8QY08Wtmu5Z0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13494, 3, 4475, 116, '5:25:Oo9w0o9BN81R08Wtmu5Z0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13889, 1, 3, 134, '11799', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13798, 1, 55, 216, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13665, 1, 18, 162, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15465, 1, 88, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15255, 1, 84, 275, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15638, 1, 90, 152, 'Luka_Beccaria;Female;Enero 1er, 2005;6FD45621822603730A9C1A1FA10FFF9A', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13801, 1, 55, 205, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13666, 1, 18, 115, '25:mp9Y0o9tN8bY0Hg8mu5Z0V:Shotgun (D):12', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13667, 1, 18, 115, '24:mt9Y0o9tN8bY0Hg8mu5Z0V:Deagle (D):22', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13828, 3, 4475, 116, '5:5:mt9w0o9BN8gM0vh8mu5Z0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15466, 1, 88, 152, 'Nicolas_Carrascal;Male;Febrero 11th, 1999;F84EB282FD4B146330C910969283A3A4', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14449, 1, 84, 127, 'Federikov Inc', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14670, 1, 1, 45, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13830, 3, 4475, 116, '5:25:OF9w0o9BN8DM0vh8mu5Z0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14759, 1, 83, 16, '7', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13866, 1, 3, 8, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13888, 1, 3, 15, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13900, 1, 21, 115, '30:mt9w0o9ZN8DYmHD8mu5Z0V:AK-47:0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13951, 1, 32, 163, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15640, 1, 90, 2, '373599', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13899, 1, 16, 115, '30:mp9w0o9ZN8bYmHD8mu5Z0V:AK-47:14', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13902, 1, 16, 116, '2:103:OF9w0o9ZN8DVm8D8mu5Z0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13903, 1, 21, 116, '2:250:Oo9w0o9ZN80Zm8D8mu5Z0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13912, 1, 21, 115, '25:mt9Z0p9tN8c8OvD8mu5Z0V:Shotgun (D):101', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13915, 1, 82, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13916, 1, 82, 152, 'Axel_Swagger;Male;Febrero 6th, 1987;56C6A1C6EABC18A07CF41BDE1F863BCA', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13917, 1, 82, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (13918, 1, 82, 2, '641544', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14022, 1, 82, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15649, 1, 90, 271, '2 casings of 7.62mm', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14052, 2, 25, 121, '203', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14671, 1, 1, 47, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14064, 1, 30, 62, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14991, 1, 11, 163, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15182, 1, 32, 3, '240', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14673, 1, 1, 126, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14672, 1, 1, 163, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14053, 2, 25, 121, '84', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14054, 2, 25, 121, '112', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14055, 2, 25, 121, '2', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14675, 1, 1, 115, '25:mt9ZN8gr0HgMmH5Mmub8:Shotgun (D):101', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14674, 1, 1, 115, '24:mp9ZN8gr0HgMmH5Mmub8:Deagle (D):101', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14450, 1, 32, 127, 'Federikov Inc', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14355, 1, 32, 115, '25:0vbr0ubr0o9Bm8gRmv5M0u0:Shotgun:10', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15691, 1, 2, 16, '285', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15003, 1, 85, 16, '21', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14363, 1, 32, 116, '5:20:OF9Z0o9ZN8QZ08WBmu5Z0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14567, 1, 7, 4, '112', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14447, 1, 7, 127, 'Federikov Inc', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14445, 3, 4475, 127, 'Federikov Inc', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14444, 1, 41, 127, 'Federikov Inc', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14443, 3, 4475, 127, 'Federikov Inc', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14457, 1, 59, 16, '286', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14460, 1, 59, 115, '31:mp9Rmo9ZN8WtmubMmu5Z0V:M4:0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14462, 1, 59, 163, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14463, 1, 59, 115, '34:mp9Rmo9ZN8WYmHbMmu5Z0V:Sniper:1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14464, 1, 59, 116, '2:98:mt9Rmo9ZN85RmHbMmu5Z0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14823, 1, 11, 178, 'New Book:Unknown:2', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14827, 1, 11, 237, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14829, 1, 11, 237, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14831, 1, 11, 237, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14833, 1, 11, 237, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14835, 1, 11, 237, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14837, 1, 11, 237, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14839, 1, 11, 237, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14841, 1, 11, 237, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14843, 1, 11, 237, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14845, 1, 11, 237, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14847, 1, 11, 237, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14849, 1, 11, 237, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14851, 1, 32, 237, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14861, 1, 32, 172, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14868, 1, 11, 16, '133', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14873, 1, 11, 16, '147', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15693, 2, 302, 85, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15016, 1, 33, 115, '24:mt980t9tN8180HbtmH5Z0V:Deagle (D):201', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14947, 1, 16, 116, '2:500:mt9w0o9ZN8WqmHDZmH5Z0V', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14945, 1, 16, 115, '34:mp9w0o9BN80BmHDZmH5Z0V:Sniper:3', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15015, 1, 33, 115, '25:mp980t9tN8180HbtmH5Z0V:Shotgun (D):51', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15193, 1, 84, 125, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14993, 1, 11, 157, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14975, 1, 11, 26, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14996, 1, 84, 16, '41', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14997, 1, 84, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (14998, 1, 84, 152, 'Priscila_Arriaga;Female;Enero 10th, 2003;F0AC23B70D0AB7B5600717245D0C10F4', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15259, 1, 84, 134, '4490', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15005, 1, 85, 152, 'Franco_Anders;Male;Abril 30th, 1996;5C1164B07F7149785AD48E7CCBA9E61E', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15006, 1, 85, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15007, 1, 85, 2, '339165', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15008, 1, 85, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15045, 1, 41, 115, '5:mp9ZmF9ZN8180u0tmH5Z0V:Baseball Bat:0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15047, 1, 41, 48, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15049, 1, 41, 115, '4:mt9ZmF9ZN8WB0u0tmH5Z0V:Knife:0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15051, 1, 41, 6, '255.300000', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15053, 1, 41, 88, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15061, 1, 29, 172, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15062, 1, 29, 26, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15063, 1, 29, 115, '25:mp9R0p9tN8htmH0tmH5Z0V:Shotgun (D):45', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15064, 1, 29, 205, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15065, 1, 29, 115, '24:mt9R0p9tN8htmH0tmH5Z0V:Deagle (D):201', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15067, 1, 84, 133, 'Priscila Arriaga', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15131, 1, 84, 115, '2:mp9Z0o9ZN8hV0uDtmH5Z0V:Golfclub:0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15248, 1, 84, 172, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15643, 1, 16, 134, '60417', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15075, 2, 121, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15076, 2, 121, 85, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15262, 1, 86, 115, '2:mp9Z0o9ZN8DVOvWtmH5Z0V:Golfclub:0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15135, 1, 11, 127, 'Federikov Inc', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15136, 1, 11, 115, '2:mp9Z0o9ZN85VmuDtmH5Z0V:Golfclub:0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15458, 1, 87, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15460, 1, 87, 152, 'Martin_Rodriguez;Male;Enero 1er, 1998;15E85007E1099E08AAB1D9EA327D6F18', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15451, 1, 87, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15452, 1, 87, 2, '896711', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15519, 1, 87, 134, '79', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15440, 1, 7, 72, 'You never learn child with anger issues', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15227, 1, 86, 16, '122', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15228, 1, 86, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15229, 1, 86, 152, 'Lucas_Gaviria;Male;Enero 1er, 1997;C8E8AEF124842E1A5B96C0183641A4C0', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15230, 1, 86, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15231, 1, 86, 2, '405086', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15339, 1, 86, 134, '4034', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15478, 1, 88, 6, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15479, 1, 88, 64, 'Sheriff Departament', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15511, 1, 43, 126, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15481, 1, 88, 162, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15482, 1, 88, 216, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15485, 1, 87, 104, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15486, 1, 89, 16, '165', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15487, 1, 89, 17, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15488, 1, 89, 152, 'Cristobal_Cancino;Male;Septiembre 9th, 1996;EC4DCAF947668462FC9BF303115708E2', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15489, 1, 89, 160, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15490, 1, 89, 2, '811469', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15491, 1, 89, 134, '500', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15512, 1, 43, 115, '25:mp98mF9tN8DMmH0RmH5Z0V:Shotgun (D):50', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15554, 2, 275, 61, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15521, 1, 81, 133, 'Pablo Gomez', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15525, 1, 88, 45, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15513, 1, 43, 172, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15514, 1, 43, 70, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15515, 1, 43, 111, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15516, 1, 43, 115, '24:mt98mF9tN8DMmH0RmH5Z0V:Deagle (D):50', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15553, 2, 275, 85, '1', 0, '[ [ ] ]');
INSERT INTO `items` VALUES (15523, 1, 88, 47, '1', 0, '[ [ ] ]');

-- ----------------------------
-- Table structure for jailed
-- ----------------------------
DROP TABLE IF EXISTS `jailed`;
CREATE TABLE `jailed`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `charid` int(11) NOT NULL,
  `charactername` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jail_time` bigint(12) NOT NULL,
  `jail_time_online` int(10) NOT NULL DEFAULT 0,
  `convictionDate` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updatedBy` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `charges` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cell` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fine` int(5) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jailed
-- ----------------------------

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `jobID` int(11) NOT NULL DEFAULT 0,
  `jobCharID` int(11) NOT NULL DEFAULT -1,
  `jobLevel` int(11) NOT NULL DEFAULT 1,
  `jobProgress` int(11) NOT NULL DEFAULT 0,
  `jobTruckingRuns` int(11) NOT NULL DEFAULT 0
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Saves job info, skill level and progress - Maxime' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jobs
-- ----------------------------
INSERT INTO `jobs` VALUES (5, 13, 1, 0, 0);
INSERT INTO `jobs` VALUES (1, 16, 1, 10, 0);
INSERT INTO `jobs` VALUES (1, 4, 1, 21, 0);
INSERT INTO `jobs` VALUES (5, 11, 1, 0, 0);
INSERT INTO `jobs` VALUES (3, 16, 1, 0, 0);
INSERT INTO `jobs` VALUES (3, 11, 1, 0, 0);
INSERT INTO `jobs` VALUES (5, 4, 1, 0, 0);
INSERT INTO `jobs` VALUES (5, 12, 1, 0, 0);
INSERT INTO `jobs` VALUES (1, 13, 1, 0, 6);
INSERT INTO `jobs` VALUES (1, 35, 1, 19, 0);
INSERT INTO `jobs` VALUES (1, 12, 1, 5, 0);
INSERT INTO `jobs` VALUES (1, 11, 1, 0, 0);
INSERT INTO `jobs` VALUES (3, 35, 1, 0, 0);
INSERT INTO `jobs` VALUES (3, 12, 1, 0, 0);
INSERT INTO `jobs` VALUES (5, 30, 1, 0, 0);
INSERT INTO `jobs` VALUES (1, 30, 2, 10, 0);
INSERT INTO `jobs` VALUES (1, 32, 2, 3, 0);
INSERT INTO `jobs` VALUES (4, 61, 1, 0, 0);
INSERT INTO `jobs` VALUES (1, 7, 1, 35, 17);
INSERT INTO `jobs` VALUES (3, 13, 1, 0, 0);
INSERT INTO `jobs` VALUES (1, 41, 1, 0, 0);
INSERT INTO `jobs` VALUES (1, 44, 1, 33, 5);
INSERT INTO `jobs` VALUES (5, 41, 1, 0, 0);
INSERT INTO `jobs` VALUES (1, 73, 1, 0, 0);
INSERT INTO `jobs` VALUES (5, 35, 1, 0, 0);
INSERT INTO `jobs` VALUES (3, 61, 1, 0, 0);
INSERT INTO `jobs` VALUES (1, 61, 1, 0, 3);
INSERT INTO `jobs` VALUES (1, 84, 1, 3, 0);
INSERT INTO `jobs` VALUES (8, 16, 1, 0, 0);
INSERT INTO `jobs` VALUES (5, 2, 1, 0, 0);

-- ----------------------------
-- Table structure for jobs_trucker_orders
-- ----------------------------
DROP TABLE IF EXISTS `jobs_trucker_orders`;
CREATE TABLE `jobs_trucker_orders`  (
  `orderID` int(11) NOT NULL AUTO_INCREMENT,
  `orderX` float NOT NULL DEFAULT 0,
  `orderY` float NOT NULL DEFAULT 0,
  `orderZ` float NOT NULL DEFAULT 0,
  `orderName` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `orderInterior` int(11) NOT NULL DEFAULT 0,
  `orderSupplies` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`orderID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Saves info about customer orders to create markers for truck' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jobs_trucker_orders
-- ----------------------------
INSERT INTO `jobs_trucker_orders` VALUES (2, -106.6, -55.2109, 3.23684, 'Suministros Granja Blueberry', 0, '[ [ ] ]');
INSERT INTO `jobs_trucker_orders` VALUES (3, -116.839, -320.426, 1.55858, 'Suministros Carniceria', 0, '[ [ ] ]');
INSERT INTO `jobs_trucker_orders` VALUES (4, 667.241, -620.5, 16.4603, 'Suministros Tiendas', 0, '[ [ ] ]');
INSERT INTO `jobs_trucker_orders` VALUES (5, 716.079, -569.689, 16.364, 'Suministros Almacen', 0, '[ [ ] ]');
INSERT INTO `jobs_trucker_orders` VALUES (6, 720.46, -466.875, 16.4559, 'Suministros Taller', 0, '[ [ ] ]');
INSERT INTO `jobs_trucker_orders` VALUES (7, 844.588, -600.577, 18.5427, 'Suministros Industriales', 0, '[ [ ] ]');
INSERT INTO `jobs_trucker_orders` VALUES (8, -930.81, -514.151, 26.0785, 'Suministros Granja La HerrereÃ±a', 0, '[ [ ] ]');
INSERT INTO `jobs_trucker_orders` VALUES (9, -595.239, -526.565, 25.6329, 'Suministros Industriales', 0, '[ [ ] ]');
INSERT INTO `jobs_trucker_orders` VALUES (10, -216.309, 1049.49, 19.8562, 'Suministros Tiendas', 0, '[ [ ] ]');
INSERT INTO `jobs_trucker_orders` VALUES (11, -96.2754, 1130.5, 20.0185, 'Suministros Tequi-La-La', 0, '[ [ ] ]');
INSERT INTO `jobs_trucker_orders` VALUES (12, 47.5713, 1221.5, 19.0961, 'Suministros Gasolineria', 0, '[ [ ] ]');
INSERT INTO `jobs_trucker_orders` VALUES (13, 575.45, 1219.97, 11.8329, 'Suministros Industriales', 0, '[ [ ] ]');

-- ----------------------------
-- Table structure for jobs_trucker_orders_rs
-- ----------------------------
DROP TABLE IF EXISTS `jobs_trucker_orders_rs`;
CREATE TABLE `jobs_trucker_orders_rs`  (
  `orderID` int(11) NOT NULL AUTO_INCREMENT,
  `orderX` float NOT NULL DEFAULT 0,
  `orderY` float NOT NULL DEFAULT 0,
  `orderZ` float NOT NULL DEFAULT 0,
  `orderName` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `orderInterior` int(11) NOT NULL DEFAULT 0,
  `orderSupplies` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`orderID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Saves info about customer orders to create markers for truck' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jobs_trucker_orders_rs
-- ----------------------------
INSERT INTO `jobs_trucker_orders_rs` VALUES (29, 424.902, 2546.72, 16.7113, 'Suministros', 0, '[ [ ] ]');
INSERT INTO `jobs_trucker_orders_rs` VALUES (28, 385.482, 2600.91, 16.9211, 'Suministros', 0, '[ [ ] ]');
INSERT INTO `jobs_trucker_orders_rs` VALUES (27, 669.499, 1702.85, 7.63004, 'Suministros', 0, '[ [ ] ]');
INSERT INTO `jobs_trucker_orders_rs` VALUES (26, 579.092, 861.942, -42.6639, 'Suministros', 0, '[ [ ] ]');
INSERT INTO `jobs_trucker_orders_rs` VALUES (25, 644.438, 1237.43, 12.0905, 'Suministros', 0, '[ [ ] ]');
INSERT INTO `jobs_trucker_orders_rs` VALUES (24, -225.941, 1073.67, 20.1783, 'Suministros', 0, '[ [ ] ]');
INSERT INTO `jobs_trucker_orders_rs` VALUES (23, 50.0361, 1223.44, 19.3834, 'Suministros', 0, '[ [ ] ]');
INSERT INTO `jobs_trucker_orders_rs` VALUES (22, -47.6768, 1028.28, 20.1016, 'Suministros', 0, '[ [ ] ]');
INSERT INTO `jobs_trucker_orders_rs` VALUES (21, -216.325, 1139.37, 20.1802, 'Suministros', 0, '[ [ ] ]');
INSERT INTO `jobs_trucker_orders_rs` VALUES (20, -172.8, 1171.64, 20.1862, 'Suministros', 0, '[ [ ] ]');
INSERT INTO `jobs_trucker_orders_rs` VALUES (19, -169.612, 1124.89, 20.1868, 'Suministros', 0, '[ [ ] ]');
INSERT INTO `jobs_trucker_orders_rs` VALUES (18, -185.054, 1018.53, 20.0551, 'Suministros', 0, '[ [ ] ]');
INSERT INTO `jobs_trucker_orders_rs` VALUES (30, 271.413, 3164.25, 3.8419, 'Suministros', 0, '[ [ ] ]');
INSERT INTO `jobs_trucker_orders_rs` VALUES (31, -706.533, 960.115, 12.4861, 'Suministros', 0, '[ [ ] ]');

-- ----------------------------
-- Table structure for leo_impound_lot
-- ----------------------------
DROP TABLE IF EXISTS `leo_impound_lot`;
CREATE TABLE `leo_impound_lot`  (
  `lane` int(11) NOT NULL AUTO_INCREMENT,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rx` float NOT NULL,
  `ry` float NOT NULL,
  `rz` float NOT NULL,
  `int` float NOT NULL,
  `dim` float NOT NULL,
  `faction` int(11) NOT NULL,
  `veh` int(11) NOT NULL DEFAULT 0,
  `fine` int(11) NOT NULL DEFAULT 0,
  `release_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`lane`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of leo_impound_lot
-- ----------------------------

-- ----------------------------
-- Table structure for lift_floors
-- ----------------------------
DROP TABLE IF EXISTS `lift_floors`;
CREATE TABLE `lift_floors`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lift` int(11) NOT NULL,
  `x` float(10, 6) NULL DEFAULT 0.000000,
  `y` float(10, 6) NULL DEFAULT 0.000000,
  `z` float(10, 6) NULL DEFAULT 0.000000,
  `dimension` int(5) NULL DEFAULT 0,
  `interior` int(5) NULL DEFAULT 0,
  `floor` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lift_floors
-- ----------------------------

-- ----------------------------
-- Table structure for lifts
-- ----------------------------
DROP TABLE IF EXISTS `lifts`;
CREATE TABLE `lifts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  `comment` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lifts
-- ----------------------------

-- ----------------------------
-- Table structure for lottery
-- ----------------------------
DROP TABLE IF EXISTS `lottery`;
CREATE TABLE `lottery`  (
  `characterid` int(255) NOT NULL,
  `ticketnumber` int(3) NOT NULL
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lottery
-- ----------------------------

-- ----------------------------
-- Table structure for maps
-- ----------------------------
DROP TABLE IF EXISTS `maps`;
CREATE TABLE `maps`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `preview` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `purposes` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `used_by` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reasons` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `approved` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `uploader` int(10) UNSIGNED NOT NULL,
  `type` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'exterior',
  `upload_date` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `reviewer` int(10) UNSIGNED NULL DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of maps
-- ----------------------------

-- ----------------------------
-- Table structure for maps_objects
-- ----------------------------
DROP TABLE IF EXISTS `maps_objects`;
CREATE TABLE `maps_objects`  (
  `index` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `map_id` int(10) UNSIGNED NOT NULL,
  `id` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `interior` int(11) NOT NULL,
  `dimension` int(11) NULL DEFAULT NULL,
  `collisions` tinyint(1) NULL DEFAULT NULL,
  `breakable` tinyint(1) NULL DEFAULT NULL,
  `radius` double UNSIGNED NULL DEFAULT NULL,
  `model` int(10) UNSIGNED NOT NULL,
  `lodModel` int(10) UNSIGNED NULL DEFAULT NULL,
  `posX` double NOT NULL,
  `posY` double NOT NULL,
  `posZ` double NOT NULL,
  `rotX` double NOT NULL,
  `rotY` double NOT NULL,
  `rotZ` double NOT NULL,
  `doublesided` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `scale` double UNSIGNED NULL DEFAULT NULL,
  `alpha` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`index`) USING BTREE,
  UNIQUE INDEX `index_UNIQUE`(`index`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of maps_objects
-- ----------------------------

-- ----------------------------
-- Table structure for mdc_apb
-- ----------------------------
DROP TABLE IF EXISTS `mdc_apb`;
CREATE TABLE `mdc_apb`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_involved` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `doneby` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `organization` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'LSPD',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mdc_apb
-- ----------------------------

-- ----------------------------
-- Table structure for mdc_calls
-- ----------------------------
DROP TABLE IF EXISTS `mdc_calls`;
CREATE TABLE `mdc_calls`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caller` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `number` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `timestamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mdc_calls
-- ----------------------------

-- ----------------------------
-- Table structure for mdc_crimes
-- ----------------------------
DROP TABLE IF EXISTS `mdc_crimes`;
CREATE TABLE `mdc_crimes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crime` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `punishment` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `character` int(11) NOT NULL,
  `officer` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mdc_crimes
-- ----------------------------
INSERT INTO `mdc_crimes` VALUES (1, 'Ticket: Ser Gey\n', 'Fine: $100 (UNPAID)', 1, 532, 1628376779);

-- ----------------------------
-- Table structure for mdc_criminals
-- ----------------------------
DROP TABLE IF EXISTS `mdc_criminals`;
CREATE TABLE `mdc_criminals`  (
  `character` int(11) NOT NULL,
  `dob` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'mm/dd/yyyy',
  `ethnicity` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Unknown',
  `phone` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Unknown',
  `occupation` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Unknown',
  `address` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Unknown',
  `photo` int(11) NOT NULL DEFAULT -1,
  `details` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'None.',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `wanted` int(11) NOT NULL DEFAULT 0,
  `wanted_by` int(11) NOT NULL DEFAULT 0,
  `wanted_details` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pilot_details` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  UNIQUE INDEX `name`(`character`) USING BTREE,
  INDEX `phone`(`phone`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mdc_criminals
-- ----------------------------

-- ----------------------------
-- Table structure for mdc_dmv
-- ----------------------------
DROP TABLE IF EXISTS `mdc_dmv`;
CREATE TABLE `mdc_dmv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char` int(11) NOT NULL,
  `date` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `vehicle` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  UNIQUE INDEX `entryid`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mdc_dmv
-- ----------------------------

-- ----------------------------
-- Table structure for mdc_faa_events
-- ----------------------------
DROP TABLE IF EXISTS `mdc_faa_events`;
CREATE TABLE `mdc_faa_events`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crime` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `punishment` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `character` int(11) NOT NULL,
  `officer` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mdc_faa_events
-- ----------------------------

-- ----------------------------
-- Table structure for mdc_faa_licenses
-- ----------------------------
DROP TABLE IF EXISTS `mdc_faa_licenses`;
CREATE TABLE `mdc_faa_licenses`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `character` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `license` int(2) NOT NULL,
  `value` int(4) NULL DEFAULT NULL,
  `officer` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mdc_faa_licenses
-- ----------------------------

-- ----------------------------
-- Table structure for mdc_groups
-- ----------------------------
DROP TABLE IF EXISTS `mdc_groups`;
CREATE TABLE `mdc_groups`  (
  `faction_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `haveMdcInAllVehicles` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `canSeeWarrants` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `canSeeCalls` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `canAddAPB` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `canSeeVehicles` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `canSeeProperties` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `canSeeLicenses` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `canSeePilotStuff` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `impound_can_see` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `settingUsernameFormat` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`faction_id`) USING BTREE,
  UNIQUE INDEX `name_UNIQUE`(`name`) USING BTREE,
  UNIQUE INDEX `faction_id_UNIQUE`(`faction_id`) USING BTREE,
  INDEX `idx_idx`(`faction_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'User group\'s permissions based on factions.' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mdc_groups
-- ----------------------------

-- ----------------------------
-- Table structure for mdc_impounds
-- ----------------------------
DROP TABLE IF EXISTS `mdc_impounds`;
CREATE TABLE `mdc_impounds`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `veh` int(11) NOT NULL,
  `content` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `reporter` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `date` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mdc_impounds
-- ----------------------------

-- ----------------------------
-- Table structure for mdc_users
-- ----------------------------
DROP TABLE IF EXISTS `mdc_users`;
CREATE TABLE `mdc_users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pass` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `level` int(11) NOT NULL,
  `organization` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'LSPD',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mdc_users
-- ----------------------------
INSERT INTO `mdc_users` VALUES (1, 'RSSD', '15rssd', 2, 'RSSD');
INSERT INTO `mdc_users` VALUES (2, 'RSSD', '12rssd', 1, 'LSPD');

-- ----------------------------
-- Table structure for mdc_users_old
-- ----------------------------
DROP TABLE IF EXISTS `mdc_users_old`;
CREATE TABLE `mdc_users_old`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pass` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `level` int(11) NOT NULL,
  `organization` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'LSPD',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mdc_users_old
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `migration` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UNIQUE`(`resource`, `migration`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, 'interior_system', 1);
INSERT INTO `migrations` VALUES (2, 'interior_system', 2);
INSERT INTO `migrations` VALUES (3, 'interior_system', 3);
INSERT INTO `migrations` VALUES (4, 'mdc', 1);
INSERT INTO `migrations` VALUES (5, 'npc', 1);
INSERT INTO `migrations` VALUES (6, 'vehicle_manager', 1);

-- ----------------------------
-- Table structure for mobile_payments
-- ----------------------------
DROP TABLE IF EXISTS `mobile_payments`;
CREATE TABLE `mobile_payments`  (
  `payment_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sender_phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `operator` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N/A',
  `country` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N/A',
  `game_coin` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `account` int(11) UNSIGNED NOT NULL,
  `currency` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'USD',
  `cost` double NOT NULL DEFAULT 0,
  `revenue` double NOT NULL DEFAULT 0,
  `date` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `transaction_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`payment_id`) USING BTREE,
  UNIQUE INDEX `payment_id_UNIQUE`(`payment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mobile_payments
-- ----------------------------

-- ----------------------------
-- Table structure for motd_read
-- ----------------------------
DROP TABLE IF EXISTS `motd_read`;
CREATE TABLE `motd_read`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `motdid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = 'Note down everyone that read and dismissed the motd.' ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of motd_read
-- ----------------------------

-- ----------------------------
-- Table structure for motds
-- ----------------------------
DROP TABLE IF EXISTS `motds`;
CREATE TABLE `motds`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(70) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `content` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `creation_date` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `expiration_date` datetime(0) NULL DEFAULT NULL,
  `author` int(11) NULL DEFAULT NULL,
  `dismissable` tinyint(1) NOT NULL DEFAULT 1,
  `audiences` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of motds
-- ----------------------------

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `details` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `date` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `type` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'other',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `notification_user`(`userid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1186 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notifications
-- ----------------------------
INSERT INTO `notifications` VALUES (1, 1, 'Rufus Sewell is now a leader of your faction \'Riverside Sheriff Department\'', 'Set by (1) Head Admin Alejandro', '2021-08-07 18:02:41', 1, 'noti_faction_updates');

-- ----------------------------
-- Table structure for objects
-- ----------------------------
DROP TABLE IF EXISTS `objects`;
CREATE TABLE `objects`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` int(6) NOT NULL DEFAULT 0,
  `posX` float(12, 7) NOT NULL DEFAULT 0.0000000,
  `posY` float(12, 7) NOT NULL DEFAULT 0.0000000,
  `posZ` float(12, 7) NOT NULL DEFAULT 0.0000000,
  `rotX` float(12, 7) NOT NULL DEFAULT 0.0000000,
  `rotY` float(12, 7) NOT NULL DEFAULT 0.0000000,
  `rotZ` float(12, 7) NOT NULL DEFAULT 0.0000000,
  `interior` int(5) NOT NULL,
  `dimension` int(5) NOT NULL,
  `comment` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `solid` int(1) NOT NULL DEFAULT 1,
  `doublesided` int(1) NOT NULL DEFAULT 0,
  `scale` float(12, 7) NULL DEFAULT NULL,
  `breakable` int(1) NOT NULL DEFAULT 0,
  `alpha` int(11) NOT NULL DEFAULT 255,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of objects
-- ----------------------------

-- ----------------------------
-- Table structure for online_sessions
-- ----------------------------
DROP TABLE IF EXISTS `online_sessions`;
CREATE TABLE `online_sessions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `staff` int(10) UNSIGNED NOT NULL,
  `minutes_online` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `minutes_duty` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `date` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4299 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of online_sessions
-- ----------------------------
INSERT INTO `online_sessions` VALUES (1, 1, 5, 3, '2021-08-07 17:56:48');


-- ----------------------------
-- Table structure for paynspray
-- ----------------------------
DROP TABLE IF EXISTS `paynspray`;
CREATE TABLE `paynspray`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` decimal(10, 6) NULL DEFAULT 0.000000,
  `y` decimal(10, 6) NULL DEFAULT 0.000000,
  `z` decimal(10, 6) NULL DEFAULT 0.000000,
  `dimension` int(5) NULL DEFAULT 0,
  `interior` int(5) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of paynspray
-- ----------------------------

-- ----------------------------
-- Table structure for pd_tickets
-- ----------------------------
DROP TABLE IF EXISTS `pd_tickets`;
CREATE TABLE `pd_tickets`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehid` int(11) NOT NULL,
  `reason` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `issuer` int(11) NULL DEFAULT NULL,
  `time` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`, `time`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pd_tickets
-- ----------------------------

-- ----------------------------
-- Table structure for peds
-- ----------------------------
DROP TABLE IF EXISTS `peds`;
CREATE TABLE `peds`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `behaviour` int(3) NULL DEFAULT 1,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rotation` float NOT NULL,
  `interior` int(5) NOT NULL,
  `dimension` int(5) NOT NULL,
  `skin` int(1) NULL DEFAULT NULL,
  `money` bigint(20) NOT NULL DEFAULT 0,
  `gender` int(1) NULL DEFAULT NULL,
  `stats` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owner_type` int(1) NOT NULL DEFAULT 0,
  `owner` int(11) NULL DEFAULT NULL,
  `animation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `synced` tinyint(1) NOT NULL DEFAULT 0,
  `nametag` tinyint(1) NOT NULL DEFAULT 1,
  `frozen` tinyint(1) NOT NULL DEFAULT 0,
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 147 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of peds
-- ----------------------------
INSERT INTO `peds` VALUES (1, NULL, 'fuel', 1, 309.765, -185.073, 1.66406, 0, 0, 0, 50, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 1, '', 1, '2021-08-07 18:26:03');
INSERT INTO `peds` VALUES (2, 'Unnamed Ped', 'pd.tickets', 1, 2143.65, -2119.79, 13.3906, 56.5502, 0, 0, 264, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-07 18:53:33');
INSERT INTO `peds` VALUES (8, NULL, 'guard', 2, 273.073, -182.305, 1.57812, 273.446, 0, 0, 163, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 5, '2021-08-18 12:49:22');
INSERT INTO `peds` VALUES (9, 'Noah Carter', 'guard', 1, 272.898, -178.74, 1.57812, 273.446, 0, 0, 149, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 5, '2021-08-18 12:49:26');
INSERT INTO `peds` VALUES (12, NULL, 'bank.banking', 1, -119.289, 1111.43, 20.0109, 358.706, 0, 0, 164, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-19 19:17:23');
INSERT INTO `peds` VALUES (13, 'Daniel Fisher', 'bank.banking', 1, -125.68, 1111.15, 20.0109, 2.55162, 0, 0, 166, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-19 19:18:10');
INSERT INTO `peds` VALUES (14, NULL, 'dmv.license', 1, -2035.04, -118.053, 1035.17, 270.205, 3, 340, 165, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-20 18:32:24');
INSERT INTO `peds` VALUES (15, NULL, 'dmv.plates', 1, -2033.96, -114.33, 1035.17, 181.159, 3, 340, 164, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-20 18:32:32');
INSERT INTO `peds` VALUES (18, 'Seth Anderson', 'guard', 2, -309.111, 1731.45, 42.7366, 355.658, 0, 0, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 13:34:21');
INSERT INTO `peds` VALUES (19, NULL, 'guard', 2, -389.434, 1748.66, 43.0859, 244.502, 0, 0, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 13:35:03');
INSERT INTO `peds` VALUES (20, 'Jack Watson', 'guard', 2, -393.489, 1740.23, 42.085, 61.247, 0, 0, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 13:35:34');
INSERT INTO `peds` VALUES (21, 'Christopher Howard', 'guard', 2, -294.249, 1777.21, 42.7, 178.643, 0, 0, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 13:36:22');
INSERT INTO `peds` VALUES (22, NULL, 'guard', 2, -313.062, 1772.6, 44.0031, 302.659, 0, 0, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 13:38:13');
INSERT INTO `peds` VALUES (23, NULL, 'guard', 2, 1420.25, 1461.93, 10.8986, 176.479, 1, 351, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 13:38:44');
INSERT INTO `peds` VALUES (24, NULL, 'guard', 2, 1423.41, 1455.91, 18.5801, 262.69, 1, 351, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 13:39:29');
INSERT INTO `peds` VALUES (25, NULL, 'guard', 2, 2122.41, -1443.05, 291.426, 1.94185, 2, 353, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 13:39:53');
INSERT INTO `peds` VALUES (26, NULL, 'guard', 1, 1425.96, 1435.04, 10.903, 358.13, 1, 351, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 13:41:05');
INSERT INTO `peds` VALUES (27, NULL, 'guard', 2, 1917.52, -2289.18, 13.7577, 181.994, 56, 352, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 13:42:39');
INSERT INTO `peds` VALUES (28, NULL, 'guard', 2, 1918.59, -2333.56, 13.7577, 270.836, 56, 352, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 13:43:15');
INSERT INTO `peds` VALUES (29, NULL, 'guard', 2, 1958.62, -2306.47, 13.7577, 355.438, 56, 352, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 13:43:54');
INSERT INTO `peds` VALUES (30, NULL, 'guard', 2, 1954.98, -2306.29, 13.7577, 1.81552, 56, 352, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 13:44:05');
INSERT INTO `peds` VALUES (31, NULL, 'guard', 2, 1437.65, 1435.81, 12.6486, 267.134, 1, 351, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 13:46:13');
INSERT INTO `peds` VALUES (32, NULL, 'bank.banking', 1, 2352.03, 2370.71, 2022.93, 88.7681, 3, 5, 165, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 13:47:38');
INSERT INTO `peds` VALUES (33, NULL, 'bank.banking', 1, 2352.07, 2368.3, 2022.93, 89.7459, 3, 5, 165, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 13:47:49');
INSERT INTO `peds` VALUES (37, NULL, 'ch.jobboard', 1, 358.636, 174.647, 1008.39, 270.803, 3, 287, 166, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 19:22:40');
INSERT INTO `peds` VALUES (35, NULL, 'guard', 2, 1583.34, 719.495, 10.9484, 176.567, 0, 0, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 18:30:02');
INSERT INTO `peds` VALUES (36, NULL, 'guard', 2, 1579.53, 711.083, 10.7326, 89.4932, 0, 0, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 1, '', 1, '2021-08-23 19:07:38');
INSERT INTO `peds` VALUES (38, NULL, 'ch.reception', 1, 358.513, 172.62, 1008.38, 265.486, 3, 287, 165, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 19:22:52');
INSERT INTO `peds` VALUES (39, NULL, 'ch.bizreg', 1, 362.092, 201.122, 1008.38, 359.08, 3, 287, 163, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 19:24:02');
INSERT INTO `peds` VALUES (40, 'Aaron Young', 'ch.guard', 1, 389.887, 175.294, 1008.38, 86.7851, 3, 287, 164, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 19:25:01');
INSERT INTO `peds` VALUES (41, 'Gabriel Reed', 'ch.guard', 1, 389.61, 172.222, 1008.38, 87.7025, 3, 287, 163, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 19:25:16');
INSERT INTO `peds` VALUES (42, 'Justin Allen', 'ch.guard', 2, 370.25, 167, 1008.38, 0.27191, 3, 287, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 19:26:04');
INSERT INTO `peds` VALUES (43, NULL, 'guard', 2, 2344.46, 2376.04, 2022.93, 176.16, 3, 5, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 19:28:05');
INSERT INTO `peds` VALUES (44, NULL, 'guard', 2, 2345.13, 2352.79, 2022.88, 268.584, 3, 5, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 19:28:22');
INSERT INTO `peds` VALUES (45, NULL, 'guard', 2, 2349.94, 2354.44, 2022.93, 355.971, 3, 5, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 19:29:05');
INSERT INTO `peds` VALUES (46, 'Sergeant E. Stone', 'pd.tickets', 2, 253.888, 117.457, 1003.22, 90.6523, 10, 262, 288, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 19:32:09');
INSERT INTO `peds` VALUES (48, NULL, 'prison.arrival', 2, 1031.54, 1223.46, 1491.36, 359.305, 3, 366, 288, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 19:36:55');
INSERT INTO `peds` VALUES (50, NULL, 'hospital.frontdesk', 1, 1594.52, 1798.4, 2083.38, 91.1577, 10, 266, 279, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 19:41:24');
INSERT INTO `peds` VALUES (51, NULL, 'sfes.reception', 1, -1794.86, 646.616, 960.384, 57.2039, 1, 263, 279, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 19:42:33');
INSERT INTO `peds` VALUES (52, NULL, 'san.reception', 1, 7.64141, -3.44141, 40.4297, 269.48, 24, 259, 169, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 19:45:39');
INSERT INTO `peds` VALUES (53, NULL, 'guard', 2, 10.6932, -6.5752, 40.4297, 270.177, 24, 259, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 19:46:29');
INSERT INTO `peds` VALUES (54, NULL, 'guard', 2, 24.7998, -4.2998, 40.4297, 90.7842, 24, 259, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 19:47:01');
INSERT INTO `peds` VALUES (55, NULL, 'guard', 2, -113.354, 1110.51, 20.0109, 0.574036, 0, 0, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 19:48:08');
INSERT INTO `peds` VALUES (56, NULL, 'guard', 2, -126.823, 1119.02, 20.0109, 267.601, 0, 0, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 19:48:18');
INSERT INTO `peds` VALUES (58, 'Joe Davis', 'faa.reception', 1, 414.815, 2537.15, 19.1484, 177.275, 0, 0, 202, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 19:49:51');
INSERT INTO `peds` VALUES (66, NULL, 'guard', 2, 318.074, -169.515, 999.601, 2.93064, 6, 354, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-24 19:03:02');
INSERT INTO `peds` VALUES (63, NULL, 'fuel', 1, 302.646, -185.213, 1.66406, 176.111, 0, 0, 50, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 1, '', 1, '2021-08-24 08:46:29');
INSERT INTO `peds` VALUES (62, 'Chris Johnson', 'faa.gatekeeper.lsa', 1, 412.413, 2536.63, 19.1484, 265.519, 0, 0, 210, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-23 19:54:14');
INSERT INTO `peds` VALUES (64, NULL, 'fuel', 1, 73.7088, 1216.41, 19.051, 71.8984, 0, 0, 50, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 1, '', 1, '2021-08-24 08:47:56');
INSERT INTO `peds` VALUES (65, NULL, 'fuel', 1, 73.2098, 1214.86, 19.051, 254.192, 0, 0, 50, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 1, '', 1, '2021-08-24 08:48:00');
INSERT INTO `peds` VALUES (67, NULL, 'guard', 2, 2175.34, -1426.71, 285.731, 266.59, 2, 372, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-24 19:25:13');
INSERT INTO `peds` VALUES (68, NULL, 'guard', 2, 2175.41, -1424.79, 285.697, 270.034, 2, 372, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-24 19:25:18');
INSERT INTO `peds` VALUES (69, NULL, 'guard', 2, 2175.44, -1425.76, 285.68, 268.732, 2, 372, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-24 19:25:30');
INSERT INTO `peds` VALUES (70, NULL, 'guard', 2, 1383.47, 1465.87, 10.8644, 265.925, 45, 374, 162, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-24 19:28:40');
INSERT INTO `peds` VALUES (72, NULL, 'guard', 2, 1385.66, 1466.06, 10.8644, 88.065, 45, 374, 162, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-24 19:28:58');
INSERT INTO `peds` VALUES (73, NULL, 'guard', 2, 1386.22, 1474.17, 10.8644, 90.7237, 45, 374, 162, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-24 19:30:01');
INSERT INTO `peds` VALUES (74, NULL, 'guard', 2, 1383.4, 1478.44, 10.8644, 177.468, 45, 374, 162, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-24 19:30:34');
INSERT INTO `peds` VALUES (75, NULL, 'guard', 2, 1954.67, -2314.87, 14.0936, 180.868, 56, 352, 162, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-24 19:32:31');
INSERT INTO `peds` VALUES (76, NULL, 'guard', 2, 1958.81, -2314.93, 14.0936, 177.594, 56, 352, 162, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-24 19:32:48');
INSERT INTO `peds` VALUES (124, 'Alex Cooper', 'guard', 2, 834.257, 5, 1004.18, 84.1978, 3, 400, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-29 15:42:59');
INSERT INTO `peds` VALUES (123, 'Chris Ford', 'guard', 2, 824.8, 8.49805, 1004.2, 267.722, 3, 400, 146, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-08-29 15:42:51');
INSERT INTO `peds` VALUES (84, NULL, NULL, 1, 380.656, 986.719, 29.5538, 98.266, 0, 0, 260, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 4, '2021-08-25 12:08:44');
INSERT INTO `peds` VALUES (85, NULL, NULL, 1, 378.502, 984.199, 29.7331, 6.99566, 0, 0, 260, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 4, '2021-08-25 12:08:48');
INSERT INTO `peds` VALUES (86, NULL, NULL, 1, 377.777, 986.751, 29.9215, 243.518, 0, 0, 16, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 4, '2021-08-25 12:08:54');
INSERT INTO `peds` VALUES (87, NULL, NULL, 1, 358.095, 981.586, 29.3574, 285.317, 0, 0, 27, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 4, '2021-08-25 12:09:04');
INSERT INTO `peds` VALUES (88, NULL, 'guard', 2, 273.563, -178.831, 1.57812, 266.453, 0, 0, 164, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 4, '2021-08-25 12:20:26');
INSERT INTO `peds` VALUES (89, NULL, NULL, 1, 480.142, -22.0693, 1003.11, 223.232, 17, 15, 164, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 4, '2021-08-25 12:27:55');
INSERT INTO `peds` VALUES (90, NULL, NULL, 1, 488.263, -21.6836, 1003.11, 318.518, 17, 15, 164, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 4, '2021-08-25 12:28:03');
INSERT INTO `peds` VALUES (91, NULL, NULL, 1, 475.806, -22.2002, 1003.11, 177.918, 17, 15, 163, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 4, '2021-08-25 12:28:10');
INSERT INTO `peds` VALUES (94, 'Jason Hunter', NULL, 1, 484.701, -26.5918, 1003.11, 2.8867, 17, 15, 163, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 4, '2021-08-25 12:34:42');
INSERT INTO `peds` VALUES (96, NULL, NULL, 1, 499.644, -9.09668, 1000.68, 97.2003, 17, 15, 164, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 4, '2021-08-25 12:35:32');
INSERT INTO `peds` VALUES (97, NULL, NULL, 1, 494.327, -15.2354, 1000.68, 176.281, 17, 15, 164, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 4, '2021-08-25 12:36:03');
INSERT INTO `peds` VALUES (98, NULL, NULL, 1, 503.341, -13.9893, 1000.68, 84.9943, 17, 15, 163, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 4, '2021-08-25 12:36:13');
INSERT INTO `peds` VALUES (99, NULL, NULL, 1, 506.718, -4.24121, 1000.68, 86.9169, 17, 15, 163, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 4, '2021-08-25 12:38:08');
INSERT INTO `peds` VALUES (100, NULL, NULL, 1, 495.994, -2.61719, 1002.07, 175.463, 17, 15, 164, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 4, '2021-08-25 12:39:31');
INSERT INTO `peds` VALUES (101, NULL, NULL, 1, 478.915, -2.30371, 1002.08, 179.308, 17, 15, 164, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 4, '2021-08-25 12:39:56');
INSERT INTO `peds` VALUES (122, 'Daniel Watson', '275', 1, 281.864, -224.986, 1.62993, 270.056, 0, 0, 275, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 1, '', 4, '2021-08-25 17:49:42');
INSERT INTO `peds` VALUES (125, NULL, 'guard', 2, 250.009, 3174.8, 2.30591, 301.055, 0, 0, 162, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-09-14 19:11:49');
INSERT INTO `peds` VALUES (126, NULL, 'guard', 2, 249.989, 3172.48, 2.30726, 350.988, 0, 0, 162, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-09-14 19:11:59');
INSERT INTO `peds` VALUES (127, NULL, 'guard', 2, 255.424, 3172.16, 2.45023, 2.92515, 0, 0, 162, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-09-14 19:12:04');
INSERT INTO `peds` VALUES (128, NULL, 'guard', 2, 256.47, 3187.74, 2.46519, 87.3069, 0, 0, 162, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-09-14 19:12:38');
INSERT INTO `peds` VALUES (129, NULL, 'guard', 2, 251.883, 3180.58, 2.35047, 352.889, 0, 0, 162, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-09-14 19:12:42');
INSERT INTO `peds` VALUES (130, NULL, 'guard', 2, 249.617, 3190.2, 2.28324, 270.194, 0, 0, 162, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-09-14 19:12:47');
INSERT INTO `peds` VALUES (131, NULL, 'guard', 2, 247.243, 3196.28, 2.21601, 180.709, 0, 0, 162, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-09-14 19:12:53');
INSERT INTO `peds` VALUES (132, NULL, 'guard', 2, 246.672, 3171.99, 2.22052, 357.674, 0, 0, 162, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-09-14 19:13:04');
INSERT INTO `peds` VALUES (133, NULL, 'guard', 2, 989.061, 344.488, 20.4269, 261.602, 0, 0, 282, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-09-14 19:38:22');
INSERT INTO `peds` VALUES (134, NULL, 'guard', 2, 990.556, 344.163, 20.4284, 84.2856, 0, 0, 71, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-09-14 19:38:32');
INSERT INTO `peds` VALUES (135, NULL, 'guard', 2, -308.242, 1507.83, 75.3594, 181.796, 0, 0, 265, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-09-14 19:40:02');
INSERT INTO `peds` VALUES (136, NULL, 'guard', 2, -296.943, 1508.37, 75.3594, 3.84802, 0, 0, 284, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-09-14 19:40:08');
INSERT INTO `peds` VALUES (137, NULL, 'guard', 2, -334.097, 1533.33, 75.3594, 276.313, 0, 0, 287, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-09-14 19:41:12');
INSERT INTO `peds` VALUES (138, NULL, 'guard', 2, -332.992, 1533.1, 75.3594, 96.9311, 0, 0, 285, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-09-14 19:41:14');
INSERT INTO `peds` VALUES (139, NULL, 'guard', 2, -287.125, 1518.9, 75.3594, 32.3415, 0, 0, 290, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-09-14 19:42:11');
INSERT INTO `peds` VALUES (140, 'Oliver Lewis', 'guard', 2, -288.752, 1523.04, 75.3594, 222.216, 0, 0, 285, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-09-14 19:42:17');
INSERT INTO `peds` VALUES (141, NULL, 'guard', 2, -289.69, 1521.88, 75.3594, 222.216, 0, 0, 287, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-09-14 19:42:22');
INSERT INTO `peds` VALUES (142, 'David Brooks', 'guard', 2, -290.6, 1521.16, 75.3594, 222.369, 0, 0, 285, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-09-14 19:42:26');
INSERT INTO `peds` VALUES (145, 'David Anderson', 'guard', 2, -288.37, 1523, 75.3594, 218.359, 0, 0, 285, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-09-14 19:43:23');
INSERT INTO `peds` VALUES (146, NULL, 'guard', 2, -290.908, 1522.06, 75.3594, 222.062, 0, 0, 71, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 1, '2021-09-14 19:45:20');

-- ----------------------------
-- Table structure for phone_contacts
-- ----------------------------
DROP TABLE IF EXISTS `phone_contacts`;
CREATE TABLE `phone_contacts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` bigint(50) NOT NULL,
  `entryName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `entryNumber` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `entryEmail` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `entryAddress` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `entryFavorited` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of phone_contacts
-- ----------------------------
INSERT INTO `phone_contacts` VALUES (1, 383556, 'zarc', '561892', NULL, NULL, 0);

-- ----------------------------
-- Table structure for phone_history
-- ----------------------------
DROP TABLE IF EXISTS `phone_history`;
CREATE TABLE `phone_history`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `to` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 1,
  `date` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `private` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ID_UNIQUE`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of phone_history
-- ----------------------------
INSERT INTO `phone_history` VALUES (1, '383556', '666', 2, '2021-08-17 17:27:03', 0);
INSERT INTO `phone_history` VALUES (2, '383556', '911', 1, '2021-08-17 17:27:17', 0);
INSERT INTO `phone_history` VALUES (3, '549527', '911', 1, '2021-08-25 22:24:30', 0);
INSERT INTO `phone_history` VALUES (4, '383556', '911', 1, '2021-08-28 22:56:40', 0);
INSERT INTO `phone_history` VALUES (5, '383556', '311', 1, '2021-08-28 22:57:46', 0);
INSERT INTO `phone_history` VALUES (6, '383556', '561892', 3, '2021-08-28 22:59:18', 0);
INSERT INTO `phone_history` VALUES (7, '452766', '353003', 2, '2021-08-31 23:32:09', 0);
INSERT INTO `phone_history` VALUES (8, '896711', '911', 1, '2021-09-01 16:18:25', 0);

-- ----------------------------
-- Table structure for phone_sms
-- ----------------------------
DROP TABLE IF EXISTS `phone_sms`;
CREATE TABLE `phone_sms`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `to` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `viewed` tinyint(1) NOT NULL DEFAULT 0,
  `private` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ID_UNIQUE`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of phone_sms
-- ----------------------------

-- ----------------------------
-- Table structure for phones
-- ----------------------------
DROP TABLE IF EXISTS `phones`;
CREATE TABLE `phones`  (
  `phonenumber` int(9) NOT NULL,
  `turnedon` smallint(1) NOT NULL DEFAULT 1,
  `secretnumber` smallint(1) NOT NULL DEFAULT 0,
  `phonebook` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `ringtone` smallint(1) NOT NULL DEFAULT 3,
  `contact_limit` int(5) NOT NULL DEFAULT 50,
  `boughtby` int(11) NOT NULL DEFAULT -1,
  `bought_date` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `sms_tone` smallint(1) NOT NULL DEFAULT 7,
  `keypress_tone` smallint(1) NOT NULL DEFAULT 1,
  `tone_volume` smallint(2) NOT NULL DEFAULT 10,
  PRIMARY KEY (`phonenumber`) USING BTREE,
  UNIQUE INDEX `phonenumber_UNIQUE`(`phonenumber`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of phones
-- ----------------------------
INSERT INTO `phones` VALUES (591007, 1, 0, '0', 3, 50, -1, '2021-08-07 18:03:35', 7, 1, 10);
INSERT INTO `phones` VALUES (736239, 1, 0, '0', 3, 50, -1, '2021-08-17 16:46:57', 7, 1, 10);
INSERT INTO `phones` VALUES (383556, 1, 0, '0', 14, 50, -1, '2021-08-17 17:26:50', 6, 1, 10);
INSERT INTO `phones` VALUES (853704, 1, 0, '0', 14, 50, -1, '2021-08-18 10:46:22', 1, 0, 5);
INSERT INTO `phones` VALUES (482096, 1, 0, '0', 3, 50, -1, '2021-08-20 15:00:44', 7, 1, 10);
INSERT INTO `phones` VALUES (679267, 0, 0, '0', 3, 50, -1, '2021-08-22 13:00:57', 7, 1, 10);
INSERT INTO `phones` VALUES (771302, 1, 0, '0', 3, 50, -1, '2021-08-25 17:44:22', 7, 1, 10);
INSERT INTO `phones` VALUES (680184, 1, 0, '0', 3, 50, -1, '2021-08-25 17:52:20', 7, 1, 10);
INSERT INTO `phones` VALUES (561892, 1, 0, '0', 3, 50, -1, '2021-08-25 18:48:04', 7, 1, 10);
INSERT INTO `phones` VALUES (703727, 1, 0, '0', 3, 50, -1, '2021-08-25 18:57:35', 7, 1, 10);
INSERT INTO `phones` VALUES (323367, 1, 0, '0', 3, 50, -1, '2021-08-25 18:59:01', 7, 1, 10);
INSERT INTO `phones` VALUES (778329, 1, 0, '0', 3, 50, -1, '2021-08-25 19:22:21', 7, 1, 10);
INSERT INTO `phones` VALUES (419859, 1, 0, '0', 3, 50, -1, '2021-08-25 20:11:44', 7, 1, 10);
INSERT INTO `phones` VALUES (862744, 1, 0, '0', 3, 50, -1, '2021-08-25 20:57:59', 7, 1, 10);
INSERT INTO `phones` VALUES (324446, 1, 0, '0', 3, 50, -1, '2021-08-25 21:30:17', 7, 1, 10);
INSERT INTO `phones` VALUES (549527, 1, 0, '0', 3, 50, -1, '2021-08-25 22:23:57', 7, 1, 10);
INSERT INTO `phones` VALUES (318497, 1, 0, '0', 3, 50, -1, '2021-08-25 22:24:04', 7, 1, 10);
INSERT INTO `phones` VALUES (317634, 1, 0, '0', 3, 50, -1, '2021-08-25 23:37:42', 7, 1, 10);
INSERT INTO `phones` VALUES (687858, 1, 0, '0', 3, 50, -1, '2021-08-26 08:51:06', 7, 1, 10);
INSERT INTO `phones` VALUES (777089, 1, 0, '0', 4, 50, -1, '2021-08-26 13:18:28', 5, 1, 10);
INSERT INTO `phones` VALUES (517573, 1, 0, '0', 3, 50, -1, '2021-08-26 14:09:23', 7, 1, 10);
INSERT INTO `phones` VALUES (603947, 1, 0, '0', 3, 50, -1, '2021-08-26 15:52:23', 7, 1, 10);
INSERT INTO `phones` VALUES (593774, 0, 0, '0', 3, 50, -1, '2021-08-26 19:27:51', 7, 1, 10);
INSERT INTO `phones` VALUES (824158, 1, 0, '0', 3, 50, -1, '2021-08-26 23:51:48', 7, 1, 10);
INSERT INTO `phones` VALUES (732015, 1, 0, '0', 3, 50, -1, '2021-08-27 14:47:43', 7, 1, 10);
INSERT INTO `phones` VALUES (452766, 1, 0, '0', 3, 50, -1, '2021-08-27 20:33:35', 7, 1, 10);
INSERT INTO `phones` VALUES (641544, 1, 0, '0', 3, 50, -1, '2021-08-30 22:14:47', 7, 1, 10);
INSERT INTO `phones` VALUES (887150, 1, 0, '0', 14, 50, 41, '2021-08-31 01:50:03', 7, 1, 10);
INSERT INTO `phones` VALUES (877912, 1, 0, '0', 3, 50, -1, '2021-08-31 06:23:05', 7, 1, 10);
INSERT INTO `phones` VALUES (353003, 1, 0, '0', 3, 50, -1, '2021-08-31 23:32:20', 7, 1, 10);
INSERT INTO `phones` VALUES (896711, 1, 0, '0', 3, 50, -1, '2021-09-01 15:28:14', 7, 1, 10);
INSERT INTO `phones` VALUES (535042, 1, 0, '0', 3, 50, -1, '2021-09-01 16:15:04', 7, 1, 10);

-- ----------------------------
-- Table structure for pilot_notams
-- ----------------------------
DROP TABLE IF EXISTS `pilot_notams`;
CREATE TABLE `pilot_notams`  (
  `id` int(11) NOT NULL,
  `information` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pilot_notams
-- ----------------------------

-- ----------------------------
-- Table structure for publicphones
-- ----------------------------
DROP TABLE IF EXISTS `publicphones`;
CREATE TABLE `publicphones`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `dimension` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of publicphones
-- ----------------------------

-- ----------------------------
-- Table structure for radio_stations
-- ----------------------------
DROP TABLE IF EXISTS `radio_stations`;
CREATE TABLE `radio_stations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `station_name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `source` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `owner` int(11) NOT NULL DEFAULT 0,
  `register_date` datetime(0) NULL DEFAULT NULL,
  `expire_date` datetime(0) NULL DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `order` int(5) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = 'Dynamic radio stations.' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of radio_stations
-- ----------------------------
INSERT INTO `radio_stations` VALUES (1, 'Riverside 181FM Top 40', 'http://www.181.fm/winamp.pls?station=181-uktop40&file=181-uktop40.pls', 0, NULL, NULL, 1, 1);
INSERT INTO `radio_stations` VALUES (2, 'Energy 98', 'http://www.energhttp://www.energy981.com/playlist/Energy98_128WM.asx', 0, NULL, NULL, 1, 2);
INSERT INTO `radio_stations` VALUES (3, 'Power 181', 'http://www.181.fm/winamp.pls?station=181-power&file=181-power.pls', 0, NULL, NULL, 1, 3);
INSERT INTO `radio_stations` VALUES (4, 'Neradio', 'http://www4.no-ip.org:2000/listen.pls', 0, NULL, NULL, 1, 4);
INSERT INTO `radio_stations` VALUES (5, 'Radio Bouquet', 'http://listen.radionomy.com/a-radio-top-40.m3u', 0, NULL, NULL, 1, 5);
INSERT INTO `radio_stations` VALUES (6, 'Enery Radio FM', 'http://naxos.cdnstream.com/1366_128', 0, NULL, NULL, 1, 6);
INSERT INTO `radio_stations` VALUES (7, 'Russian FM', '149.202.22.75:8134/live', 0, NULL, NULL, 1, 6);
INSERT INTO `radio_stations` VALUES (8, 'DubBase FM', 'http://radio.dubbase.fm/listen192.m3u', 0, NULL, NULL, 1, 6);

-- ----------------------------
-- Table structure for ramps
-- ----------------------------
DROP TABLE IF EXISTS `ramps`;
CREATE TABLE `ramps`  (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `position` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `interior` int(2) NULL DEFAULT NULL,
  `dimension` int(2) NULL DEFAULT NULL,
  `rotation` int(5) NULL DEFAULT NULL,
  `creator` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `liftposition` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ramps
-- ----------------------------

-- ----------------------------
-- Table structure for reports
-- ----------------------------
DROP TABLE IF EXISTS `reports`;
CREATE TABLE `reports`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `handler` int(11) NOT NULL,
  `reporter` int(10) UNSIGNED NOT NULL,
  `date` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `details` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of reports
-- ----------------------------
INSERT INTO `reports` VALUES (1, 4, 5, 18, '2021-08-25 19:07:53', 'ssss\n');
INSERT INTO `reports` VALUES (2, 4, 5, 16, '2021-08-25 21:25:51', 'comoo cambio el estil de caminar?\n');
INSERT INTO `reports` VALUES (3, 4, 5, 34, '2021-08-25 22:32:32', 'Donde me postulo para Jefe de Faccion PD, quisiera hacer notar mi organizacion y sabiduria.\n\n');
INSERT INTO `reports` VALUES (4, 4, 5, 18, '2021-08-25 22:34:41', 'se me fue la llave de mi auto\n');
INSERT INTO `reports` VALUES (5, 4, 7, 16, '2021-08-25 23:47:46', 'hay gobierno? xd\n');
INSERT INTO `reports` VALUES (6, 5, 7, 39, '2021-08-26 14:40:54', 'El Vehiculo de tractor no prende  como lo hago\n');
INSERT INTO `reports` VALUES (7, 1, 7, 31, '2021-08-26 22:00:36', 'El usario Pablo Orbita esta cometiendo el concepto de rol NRH\n\n');
INSERT INTO `reports` VALUES (8, 4, 17, 39, '2021-08-27 13:34:44', 'Como se copian las llaves ? hay algun NPC\n');

-- ----------------------------
-- Table structure for restricted_freqs
-- ----------------------------
DROP TABLE IF EXISTS `restricted_freqs`;
CREATE TABLE `restricted_freqs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frequency` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `limitedto` int(5) NULL DEFAULT NULL,
  `addedby` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of restricted_freqs
-- ----------------------------
INSERT INTO `restricted_freqs` VALUES (1, '19.45', 8, 1);
INSERT INTO `restricted_freqs` VALUES (2, '911.01', 1, 17);

-- ----------------------------
-- Table structure for sapt_destinations
-- ----------------------------
DROP TABLE IF EXISTS `sapt_destinations`;
CREATE TABLE `sapt_destinations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `destinationID` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sapt_destinations
-- ----------------------------

-- ----------------------------
-- Table structure for sapt_locations
-- ----------------------------
DROP TABLE IF EXISTS `sapt_locations`;
CREATE TABLE `sapt_locations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route` int(11) NOT NULL,
  `stopID` int(11) NOT NULL,
  `name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sapt_locations
-- ----------------------------

-- ----------------------------
-- Table structure for sapt_routes
-- ----------------------------
DROP TABLE IF EXISTS `sapt_routes`;
CREATE TABLE `sapt_routes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `line` int(11) NOT NULL,
  `route` int(11) NOT NULL,
  `destination` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sapt_routes
-- ----------------------------

-- ----------------------------
-- Table structure for serial_whitelist
-- ----------------------------
DROP TABLE IF EXISTS `serial_whitelist`;
CREATE TABLE `serial_whitelist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `serial` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `creation_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `last_login_ip` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `last_login_date` datetime(0) NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE,
  INDEX `serial_whitelist_userid_4b8e2882_uniq`(`userid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of serial_whitelist
-- ----------------------------
INSERT INTO `serial_whitelist` VALUES (1, 1, '6EC9AEABE01AAB0798611259447BA2A2', '2021-08-07 17:50:21', '192.168.0.109', '2021-08-11 20:44:24', 1);

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `value` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for sfia_pilots
-- ----------------------------
DROP TABLE IF EXISTS `sfia_pilots`;
CREATE TABLE `sfia_pilots`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `charactername` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sfia_pilots
-- ----------------------------

-- ----------------------------
-- Table structure for shop_contacts_info
-- ----------------------------
DROP TABLE IF EXISTS `shop_contacts_info`;
CREATE TABLE `shop_contacts_info`  (
  `npcID` int(11) NOT NULL,
  `sOwner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sPhone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sEmail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sForum` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`npcID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Saves data about business\'s owners in shop system - MAXIME' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shop_contacts_info
-- ----------------------------
INSERT INTO `shop_contacts_info` VALUES (120, 'Thommas Shelby', '', '', '');

-- ----------------------------
-- Table structure for shop_products
-- ----------------------------
DROP TABLE IF EXISTS `shop_products`;
CREATE TABLE `shop_products`  (
  `npcID` int(11) NULL DEFAULT NULL,
  `pItemID` int(11) NULL DEFAULT NULL,
  `pItemValue` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pMetadata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pDesc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pPrice` int(11) NULL DEFAULT NULL,
  `pDate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `pID` int(11) NOT NULL AUTO_INCREMENT,
  `pQuantity` int(11) NOT NULL DEFAULT 1,
  `pSetQuantity` int(11) NOT NULL DEFAULT 1,
  `pRestockInterval` int(11) NULL DEFAULT 0,
  `pRestockedDate` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`pID`) USING BTREE,
  UNIQUE INDEX `pID_UNIQUE`(`pID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Saves on-sale products from players, business system by Maxi' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shop_products
-- ----------------------------
INSERT INTO `shop_products` VALUES (52, 115, '22:16:Colt 45:0', NULL, NULL, 1500, '2021-08-21 15:07:57', 1, 20, 20, 60, '2021-08-21 15:07:57');
INSERT INTO `shop_products` VALUES (52, 115, '23:16:Silenced:0', NULL, NULL, 2500, '2021-08-21 15:08:32', 2, 5, 5, 30, '2021-08-21 15:08:32');
INSERT INTO `shop_products` VALUES (52, 115, '25:16:Shotgun:0', NULL, NULL, 5000, '2021-09-15 16:10:51', 3, 5, 5, 25, '2021-09-15 16:10:51');
INSERT INTO `shop_products` VALUES (52, 116, '1:25:16', NULL, NULL, 100, '2021-08-21 15:10:27', 4, 50, 50, 50, '2021-08-21 15:10:27');
INSERT INTO `shop_products` VALUES (52, 116, '5:25:16', NULL, NULL, 150, '2021-08-21 15:11:00', 5, 50, 50, 50, '2021-08-21 15:11:00');
INSERT INTO `shop_products` VALUES (129, 115, '22:16:Colt 45:0', NULL, NULL, 1000, '2021-08-27 21:36:31', 6, 14, 15, 30, '2021-08-26 16:57:17');
INSERT INTO `shop_products` VALUES (129, 115, '25:16:Shotgun:0', NULL, NULL, 2500, '2021-08-30 20:20:47', 7, 5, 10, 15, '2021-08-26 16:57:32');
INSERT INTO `shop_products` VALUES (129, 116, '1:90:16', NULL, NULL, 500, '2021-08-27 21:37:28', 8, 59, 60, 35, '2021-08-26 16:57:53');
INSERT INTO `shop_products` VALUES (129, 116, '5:25:16', NULL, NULL, 1000, '2021-08-30 20:20:56', 9, 72, 80, 30, '2021-08-26 16:58:13');

-- ----------------------------
-- Table structure for shops
-- ----------------------------
DROP TABLE IF EXISTS `shops`;
CREATE TABLE `shops`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` float NULL DEFAULT 0,
  `y` float NULL DEFAULT 0,
  `z` float NULL DEFAULT 0,
  `dimension` int(5) NULL DEFAULT 0,
  `interior` int(5) NULL DEFAULT 0,
  `shoptype` tinyint(4) NULL DEFAULT 0,
  `rotationz` float NOT NULL DEFAULT 0,
  `skin` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sPendingWage` int(11) NOT NULL DEFAULT 0,
  `sIncome` bigint(20) NOT NULL DEFAULT 0,
  `sCapacity` int(11) NOT NULL DEFAULT 10,
  `sSales` varchar(5000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `pedName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `faction_belong` int(11) NOT NULL DEFAULT 0,
  `faction_access` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 169 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shops
-- ----------------------------
INSERT INTO `shops` VALUES (1, 491.876, -75.6357, 998.758, 2, 11, 5, 150.545, '1', 0, 0, 10, '', 'Dean_T._Taylor', 0, 0);
INSERT INTO `shops` VALUES (30, 251.786, -54.8281, 1.57764, 0, 0, 9, 182.049, '1', 0, 0, 10, '', 'James_U._Anderson', 0, 0);
INSERT INTO `shops` VALUES (5, -2236.69, 128.586, 1035.41, 44, 6, 8, 0.222473, '185', 0, 0, 10, '', 'Seymour_H._Martinez', 0, 0);
INSERT INTO `shops` VALUES (9, -2237.15, 128.583, 1035.41, 93, 6, 8, 8.05585, '21', 0, 0, 10, '', 'James_X._Johnson', 0, 0);
INSERT INTO `shops` VALUES (36, 1908.42, -2396.19, 13.5625, 108, 22, 10, 186.01, '101', 0, 0, 10, '', 'Lloyd_K._Martin', 0, 0);
INSERT INTO `shops` VALUES (14, 207.119, -127.807, 1003.51, 95, 3, 5, 183.768, '187', 0, 0, 10, '', 'Jody_I._Smith', 0, 0);
INSERT INTO `shops` VALUES (37, 1.56445, -30.7051, 1003.55, 237, 10, 1, 2.36484, '31', 0, 0, 10, '', 'James_L._Heath', 0, 0);
INSERT INTO `shops` VALUES (29, 297.779, -82.5303, 1001.52, 92, 4, 2, 358.025, '179', 0, 0, 10, '', 'Timothy_J._Dunbar', 0, 0);
INSERT INTO `shops` VALUES (31, -31.1631, -30.7285, 1003.56, 119, 4, 1, 358.844, '178', 0, 0, 10, '', 'Joseph_T._Thomas', 0, 0);
INSERT INTO `shops` VALUES (27, 293.544, -83.4062, 1001.52, 92, 4, 2, 87.642, '179', 0, 0, 10, '', 'Lloyd_R._Clark', 0, 0);
INSERT INTO `shops` VALUES (28, 295.493, -82.5322, 1001.52, 92, 4, 2, 358.025, '179', 0, 0, 10, '', 'Nicholas_D._Jones', 0, 0);
INSERT INTO `shops` VALUES (38, 374.069, -117.195, 1001.5, 246, 5, 3, 177.286, '49', 0, 0, 10, '', 'Michael_U._Davis', 0, 0);
INSERT INTO `shops` VALUES (39, 377.855, -117.269, 1001.49, 246, 5, 3, 174.139, '19', 0, 0, 10, '', 'Joshua_R._Thompson', 0, 0);
INSERT INTO `shops` VALUES (40, 297.477, -40.2207, 1001.52, 247, 1, 2, 2.82626, '233', 0, 0, 10, '', 'Andrew_B._Miller', 0, 0);
INSERT INTO `shops` VALUES (41, 204.088, -41.668, 1001.8, 251, 1, 5, 180.538, '239', 0, 0, 10, '', 'Norman_O._Alston', 0, 0);
INSERT INTO `shops` VALUES (52, 312.647, -168.529, 999.594, 354, 6, 19, 0.936615, '114', 0, 0, 10, '', 'George_L._Hummer', 8, 2);
INSERT INTO `shops` VALUES (47, 374.593, -117.277, 1001.49, 294, 5, 3, 190.542, '61', 0, 0, 10, '', 'Justin_T._Johnson', 0, 0);
INSERT INTO `shops` VALUES (46, 376.683, -117.278, 1001.49, 294, 5, 3, 174.523, '50', 0, 0, 10, '', 'Junior_W._Borunda', 0, 0);
INSERT INTO `shops` VALUES (48, 372.634, -117.27, 1001.49, 294, 5, 3, 190.542, '33', 0, 0, 10, '', 'Ryan_Z._White', 0, 0);
INSERT INTO `shops` VALUES (49, 681.535, -455.511, -25.6099, 295, 1, 9, 0.293884, '12', 0, 0, 10, '', 'Joseph_G._Moore', 0, 0);
INSERT INTO `shops` VALUES (54, 310.693, -168.532, 999.594, 354, 6, 18, 5.61136, '216', 0, 0, 10, '', 'Matthew_Z._Brown', 0, 0);
INSERT INTO `shops` VALUES (55, -2085.79, 996.434, 62.7182, 0, 0, 14, 182.813, '259', 0, 0, 10, '', 'Brandon_P._Smith', 0, 0);
INSERT INTO `shops` VALUES (137, 1419.7, 1440.77, 10.8986, 351, 1, 9, 266.151, '40', 0, 0, 10, '', 'Amelia_Hollister', 0, 0);
INSERT INTO `shops` VALUES (134, 1419.7, 1438.2, 10.8986, 351, 1, 9, 268.87, '11', 0, 0, 10, '', 'Tiffany_Smith', 0, 0);
INSERT INTO `shops` VALUES (59, 1035.17, 1223.23, 1491.36, 366, 3, 13, 356.103, '288', 0, 0, 10, '', 'Seymour_H._Jones', 0, 0);
INSERT INTO `shops` VALUES (61, -135.021, 1133.64, 19.75, 0, 0, 3, 265.7, '263', 0, 0, 10, '', 'Lloyd_W._Heath', 0, 0);
INSERT INTO `shops` VALUES (62, -134.954, 1131.6, 19.7578, 0, 0, 3, 274.693, '160', 0, 0, 10, '', 'Matthew_L._Skinner', 0, 0);
INSERT INTO `shops` VALUES (166, -700.676, 963.737, 12.5368, 0, 0, 15, 164.888, '162', 0, 0, 10, '', 'Seymour_R._Dunbar', 0, 0);
INSERT INTO `shops` VALUES (167, -690.521, 958.825, 12.399, 0, 0, 15, 255.444, '162', 0, 0, 10, '', 'Richard_T._Winslow', 0, 0);
INSERT INTO `shops` VALUES (164, -691.768, 969.12, 12.3892, 0, 0, 15, 88.8176, '162', 0, 0, 10, '', 'Michael_E._Jackson', 0, 0);
INSERT INTO `shops` VALUES (165, -691.852, 966.43, 12.4217, 0, 0, 15, 88.8176, '162', 0, 0, 10, '', 'Michael_Y._Moore', 0, 0);
INSERT INTO `shops` VALUES (146, 990.8, 365.357, 20.0122, 0, 0, 3, 201.127, '11', 0, 0, 10, '', 'Anthony_T._Thomas', 0, 0);
INSERT INTO `shops` VALUES (147, 984.131, 362.523, 20.0221, 0, 0, 3, 244.573, '7', 0, 0, 10, '', 'James_B._Williams', 0, 0);
INSERT INTO `shops` VALUES (148, 986.904, 355.982, 19.9577, 0, 0, 3, 284.026, '14', 0, 0, 10, '', 'Tommy_U._Decker', 0, 0);
INSERT INTO `shops` VALUES (149, 1009.41, 347.395, 20.1702, 0, 0, 3, 73.3156, '56', 0, 0, 10, '', 'James_P._Ames', 0, 0);
INSERT INTO `shops` VALUES (150, 994.066, 355.055, 19.9115, 0, 0, 15, 359.767, '55', 0, 0, 10, '', 'Jacob_I._Anderson', 0, 0);
INSERT INTO `shops` VALUES (151, 994.044, 356.346, 19.9224, 0, 0, 15, 185.015, '63', 0, 0, 10, '', 'Jody_U._Smith', 0, 0);
INSERT INTO `shops` VALUES (152, 994.979, 355.702, 19.9125, 0, 0, 15, 81.5005, '40', 0, 0, 10, '', 'Joseph_S._Davis', 0, 0);
INSERT INTO `shops` VALUES (153, 997.718, 354.369, 19.8901, 0, 0, 15, 267.469, '15', 0, 0, 10, '', 'Seymour_F._Jackson', 0, 0);
INSERT INTO `shops` VALUES (154, 999.278, 354.23, 19.8803, 0, 0, 15, 72.9146, '75', 0, 0, 10, '', 'Anthony_H._Johnson', 0, 0);
INSERT INTO `shops` VALUES (155, 1002.69, 359.337, 20.4421, 0, 0, 15, 1.42551, '17', 0, 0, 10, '', 'David_D._Trotter', 0, 0);
INSERT INTO `shops` VALUES (156, 1002.62, 362.401, 20.688, 0, 0, 15, 173.15, '18', 0, 0, 10, '', 'Zachary_J._Harris', 0, 0);
INSERT INTO `shops` VALUES (157, 992.835, 347.361, 19.9797, 0, 0, 15, 355.009, '20', 0, 0, 10, '', 'Dean_M._Davis', 0, 0);
INSERT INTO `shops` VALUES (158, 991.914, 347.605, 19.9734, 0, 0, 15, 355.009, '23', 0, 0, 10, '', 'Ryan_F._Miller', 0, 0);
INSERT INTO `shops` VALUES (159, 991.562, 350.685, 19.8187, 0, 0, 15, 176.193, '24', 0, 0, 10, '', 'Daniel_S._Moore', 0, 0);
INSERT INTO `shops` VALUES (160, 992.567, 350.604, 19.823, 0, 0, 15, 176.193, '76', 0, 0, 10, '', 'Willie_W._Duncan', 0, 0);
INSERT INTO `shops` VALUES (161, -692.405, 958.309, 12.4579, 0, 0, 15, 84.4999, '162', 0, 0, 10, '', 'Timothy_V._Duncan', 0, 0);
INSERT INTO `shops` VALUES (162, -691.841, 951.979, 12.4318, 0, 0, 15, 88.0485, '162', 0, 0, 10, '', 'Brandon_V._Moore', 0, 0);
INSERT INTO `shops` VALUES (163, -685.229, 947.172, 12.3453, 0, 0, 15, 79.2538, '162', 0, 0, 10, '', 'Justin_T._White', 0, 0);
INSERT INTO `shops` VALUES (90, -792.274, 880.159, 12.1483, 0, 0, 15, 317.831, '286', 0, 0, 10, '', 'Zachary_P._Alston', 0, 0);
INSERT INTO `shops` VALUES (91, -790.857, 882.674, 12.0735, 0, 0, 15, 250.11, '286', 0, 0, 10, '', 'Seth_P._Layfield', 0, 0);
INSERT INTO `shops` VALUES (168, -690.561, 954.661, 12.3913, 0, 0, 15, 270.254, '162', 0, 0, 10, '', 'Daniel_C._White', 0, 0);
INSERT INTO `shops` VALUES (97, 123.271, -133.557, 1.57812, 0, 0, 15, 295.88, '282', 0, 0, 10, '', 'Tommy_B._Christie', 0, 0);
INSERT INTO `shops` VALUES (98, 123.499, -132.642, 1.57812, 0, 0, 15, 159.884, '280', 0, 0, 10, '', 'Joshua_Y._Moore', 0, 0);
INSERT INTO `shops` VALUES (99, 124.528, -133.361, 1.57812, 0, 0, 15, 81.0941, '281', 0, 0, 10, '', 'Andrew_I._Jones', 0, 0);
INSERT INTO `shops` VALUES (101, -1770.37, 673.119, 960.375, 263, 1, 3, 178.632, '265', 0, 0, 10, '', 'Christopher_V._Touchet', 0, 0);
INSERT INTO `shops` VALUES (102, -1768.95, 673.116, 960.375, 263, 1, 11, 179.594, '282', 0, 0, 10, '', 'Seymour_N._Borunda', 0, 0);
INSERT INTO `shops` VALUES (103, -1767.43, 673.116, 960.375, 263, 1, 9, 179.594, '215', 0, 0, 10, '', 'William_X._Jones', 0, 0);
INSERT INTO `shops` VALUES (108, 501.85, -20.9893, 1000.68, 15, 17, 9, 94.4591, '172', 0, 0, 10, '', 'Danny__K._Anderson', 0, 0);
INSERT INTO `shops` VALUES (107, 501.828, -18.6172, 1000.67, 15, 17, 9, 94.4591, '171', 0, 0, 10, '', 'Tommy_L._Williams', 0, 0);
INSERT INTO `shops` VALUES (112, 375.894, -117.278, 1001.49, 382, 5, 3, 178.522, '155', 0, 0, 10, '', 'Willie_E._Johnson', 0, 0);
INSERT INTO `shops` VALUES (111, 373.715, -117.273, 1001.5, 382, 5, 3, 178.522, '155', 0, 0, 10, '', 'Joshua_W._Harris', 0, 0);
INSERT INTO `shops` VALUES (113, 378.038, -117.278, 1001.49, 382, 5, 3, 178.522, '155', 0, 0, 10, '', 'Robert_M._Borunda', 0, 0);
INSERT INTO `shops` VALUES (114, -414.543, -1759.34, 5.88496, 0, 0, 16, 21.5638, '51', 0, 0, 10, '', 'William_I._Williams', 0, 0);
INSERT INTO `shops` VALUES (115, 1878.38, -2457.2, 13.5791, 383, 27, 16, 92.1794, '211', 0, 0, 10, '', 'Brandon_X._Williams', 0, 0);
INSERT INTO `shops` VALUES (116, 1206.23, -28.6826, 1000.95, 388, 3, 9, 268.76, '116', 0, 0, 10, '', 'Brandon_U._Robinson', 0, 0);
INSERT INTO `shops` VALUES (119, 1206.23, -29.5928, 1000.95, 388, 3, 9, 270.683, '152', 0, 0, 10, '', 'Andrew_X._Davis', 0, 0);
INSERT INTO `shops` VALUES (120, 527.78, 68.3457, 1044.46, 98, 24, 14, 303.307, '46', 0, 0, 10, '', 'Lloyd_V._Dunbar', 0, 0);
INSERT INTO `shops` VALUES (129, 606.21, -23.5752, 1004.78, 250, 1, 19, 143.981, '182', 0, 0, 10, '', 'Daniel_H._Duncan', 7, 2);
INSERT INTO `shops` VALUES (130, -202.167, -42.124, 1002.27, 399, 3, 1, 84.3021, '278', 0, 50, 10, '- 28/08/2021 20:27 : A customer bought a Golf Club for $50.\n', 'Willie_Q._Taylor', 0, 0);
INSERT INTO `shops` VALUES (132, 1878.38, -2456.5, 13.5791, 383, 27, 1, 97.4694, '113', 0, 0, 10, '', 'Matthew_F._Smith', 0, 0);
INSERT INTO `shops` VALUES (143, -23.3311, -57.3301, 1003.55, 378, 6, 1, 1.96384, '269', 0, 0, 10, '', 'Zachary_W._Harris', 0, 0);
INSERT INTO `shops` VALUES (144, -2236.4, 128.579, 1035.41, 93, 6, 1, 358.075, '229', 0, 0, 10, '', 'Ryan_B._Ames', 0, 0);
INSERT INTO `shops` VALUES (145, 925.186, 2079.59, 10.8565, 401, 28, 14, 265.568, '15', 0, 0, 10, '', 'Seymour_J._Grenier', 0, 0);

-- ----------------------------
-- Table structure for speedcams
-- ----------------------------
DROP TABLE IF EXISTS `speedcams`;
CREATE TABLE `speedcams`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` float(11, 7) NOT NULL DEFAULT 0.0000000,
  `y` float(11, 7) NOT NULL DEFAULT 0.0000000,
  `z` float(11, 7) NOT NULL DEFAULT 0.0000000,
  `interior` int(3) NOT NULL DEFAULT 0 COMMENT 'Stores the location of the pernament speedcams',
  `dimension` int(5) NOT NULL DEFAULT 0,
  `maxspeed` int(4) NOT NULL DEFAULT 120,
  `radius` int(4) NOT NULL DEFAULT 2,
  `enabled` smallint(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of speedcams
-- ----------------------------
INSERT INTO `speedcams` VALUES (1, 1596.2548828, -2477.1748047, 13.5546885, 0, 1, 50, 0, 1);
INSERT INTO `speedcams` VALUES (2, 1808.5937500, -2477.4091797, 13.5546885, 0, 1, 50, 32, 1);
INSERT INTO `speedcams` VALUES (3, 1818.1337891, -2474.5019531, 15.1727057, 0, 1, 50, 29, 1);
INSERT INTO `speedcams` VALUES (4, 1833.6884766, -2476.3681641, 13.5546885, 0, 1, 50, 57, 1);

-- ----------------------------
-- Table structure for speedingviolations
-- ----------------------------
DROP TABLE IF EXISTS `speedingviolations`;
CREATE TABLE `speedingviolations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carID` int(11) NOT NULL,
  `time` datetime(0) NOT NULL,
  `speed` int(5) NOT NULL,
  `area` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `personVisible` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of speedingviolations
-- ----------------------------

-- ----------------------------
-- Table structure for staff_changelogs
-- ----------------------------
DROP TABLE IF EXISTS `staff_changelogs`;
CREATE TABLE `staff_changelogs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `team` int(11) NOT NULL,
  `from_rank` int(11) NOT NULL,
  `to_rank` int(11) NULL DEFAULT NULL,
  `by` int(11) NULL DEFAULT NULL,
  `details` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 50 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = 'Maxime 2015.01.08' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of staff_changelogs
-- ----------------------------
INSERT INTO `staff_changelogs` VALUES (1, 4, 1, 0, 4, 1, NULL, '2021-08-17 17:08:25');
INSERT INTO `staff_changelogs` VALUES (2, 2, 1, 8, 5, 1, NULL, '2021-08-17 17:15:12');
INSERT INTO `staff_changelogs` VALUES (3, 5, 1, 0, 4, 1, NULL, '2021-08-17 17:17:18');
INSERT INTO `staff_changelogs` VALUES (4, 6, 2, 0, 2, 1, NULL, '2021-08-17 18:38:55');
INSERT INTO `staff_changelogs` VALUES (5, 6, 1, 0, 2, 1, NULL, '2021-08-17 18:40:09');
INSERT INTO `staff_changelogs` VALUES (6, 7, 2, 0, 2, 5, NULL, '2021-08-17 18:59:44');
INSERT INTO `staff_changelogs` VALUES (7, 7, 1, 0, 2, 5, NULL, '2021-08-17 19:05:31');
INSERT INTO `staff_changelogs` VALUES (8, 7, 2, 2, 0, 5, NULL, '2021-08-17 19:05:31');
INSERT INTO `staff_changelogs` VALUES (9, 8, 1, 0, 2, 5, NULL, '2021-08-17 22:09:42');
INSERT INTO `staff_changelogs` VALUES (10, 9, 1, 0, 2, 1, NULL, '2021-08-19 19:02:33');
INSERT INTO `staff_changelogs` VALUES (11, 9, 1, 2, 3, 1, NULL, '2021-08-19 19:41:52');
INSERT INTO `staff_changelogs` VALUES (12, 10, 1, 0, 5, 1, NULL, '2021-08-19 20:31:19');
INSERT INTO `staff_changelogs` VALUES (13, 11, 1, 0, 1, 1, NULL, '2021-08-19 22:17:35');
INSERT INTO `staff_changelogs` VALUES (14, 7, 1, 2, 0, 1, NULL, '2021-08-20 15:01:42');
INSERT INTO `staff_changelogs` VALUES (15, 11, 1, 1, 4, 1, NULL, '2021-08-20 15:01:52');
INSERT INTO `staff_changelogs` VALUES (16, 6, 1, 2, 1, 1, NULL, '2021-08-20 15:02:08');
INSERT INTO `staff_changelogs` VALUES (17, 12, 1, 0, 1, 1, NULL, '2021-08-20 17:36:16');
INSERT INTO `staff_changelogs` VALUES (18, 9, 1, 3, 4, 1, NULL, '2021-08-22 17:19:18');
INSERT INTO `staff_changelogs` VALUES (19, 9, 1, 4, 3, 1, NULL, '2021-08-22 18:12:21');
INSERT INTO `staff_changelogs` VALUES (20, 17, 2, 0, 1, 1, NULL, '2021-08-23 14:27:16');
INSERT INTO `staff_changelogs` VALUES (21, 17, 2, 1, 2, 1, NULL, '2021-08-23 14:31:33');
INSERT INTO `staff_changelogs` VALUES (22, 6, 1, 1, 0, 1, NULL, '2021-08-24 13:02:00');
INSERT INTO `staff_changelogs` VALUES (23, 12, 1, 1, 3, 1, NULL, '2021-08-24 13:34:23');
INSERT INTO `staff_changelogs` VALUES (24, 12, 1, 3, 4, 1, NULL, '2021-08-24 13:38:05');
INSERT INTO `staff_changelogs` VALUES (25, 7, 2, 0, 2, 4, 'po ke ci', '2021-08-24 16:09:27');
INSERT INTO `staff_changelogs` VALUES (26, 12, 1, 4, 1, 1, NULL, '2021-08-25 09:08:53');
INSERT INTO `staff_changelogs` VALUES (27, 6, 2, 2, 0, 1, NULL, '2021-08-25 09:09:13');
INSERT INTO `staff_changelogs` VALUES (28, 6, 1, 0, 1, 1, NULL, '2021-08-25 09:09:18');
INSERT INTO `staff_changelogs` VALUES (29, 12, 1, 1, 2, 4, 'por ke ci', '2021-08-25 17:07:53');
INSERT INTO `staff_changelogs` VALUES (30, 9, 1, 0, 3, 1, NULL, '2021-08-26 16:14:22');
INSERT INTO `staff_changelogs` VALUES (31, 9, 3, 0, 2, 1, NULL, '2021-08-26 16:14:22');
INSERT INTO `staff_changelogs` VALUES (32, 7, 1, 0, 1, 1, NULL, '2021-08-26 16:14:40');
INSERT INTO `staff_changelogs` VALUES (33, 7, 2, 2, 0, 1, NULL, '2021-08-26 16:14:40');
INSERT INTO `staff_changelogs` VALUES (34, 11, 1, 4, 0, 1, NULL, '2021-08-26 16:15:42');
INSERT INTO `staff_changelogs` VALUES (35, 17, 1, 0, 2, 4, 'porke ci', '2021-08-27 12:59:16');
INSERT INTO `staff_changelogs` VALUES (36, 17, 2, 2, 0, 4, 'porke ci', '2021-08-27 12:59:16');
INSERT INTO `staff_changelogs` VALUES (37, 4, 6, 0, 2, 1, NULL, '2021-08-27 13:20:36');
INSERT INTO `staff_changelogs` VALUES (38, 17, 1, 2, 4, 4, 'ci', '2021-08-27 14:06:09');
INSERT INTO `staff_changelogs` VALUES (39, 6, 1, 1, 0, 17, NULL, '2021-08-27 17:02:45');
INSERT INTO `staff_changelogs` VALUES (40, 6, 2, 0, 2, 17, NULL, '2021-08-27 17:02:51');
INSERT INTO `staff_changelogs` VALUES (41, 12, 1, 2, 0, 1, NULL, '2021-08-28 12:44:34');
INSERT INTO `staff_changelogs` VALUES (42, 6, 2, 2, 0, 1, NULL, '2021-08-28 18:40:31');
INSERT INTO `staff_changelogs` VALUES (43, 10, 1, 5, 0, 1, NULL, '2021-08-28 19:36:50');
INSERT INTO `staff_changelogs` VALUES (44, 5, 6, 0, 2, 1, NULL, '2021-08-28 19:54:29');
INSERT INTO `staff_changelogs` VALUES (45, 18, 3, 0, 1, 1, NULL, '2021-08-29 22:11:48');
INSERT INTO `staff_changelogs` VALUES (46, 18, 3, 1, 2, 5, NULL, '2021-08-29 22:38:48');
INSERT INTO `staff_changelogs` VALUES (47, 17, 1, 4, 0, 5, NULL, '2021-08-30 18:50:54');
INSERT INTO `staff_changelogs` VALUES (48, 12, 1, 0, 2, 4, 'a', '2021-08-30 19:24:00');
INSERT INTO `staff_changelogs` VALUES (49, 12, 1, 2, 0, 1, NULL, '2021-08-31 00:40:24');

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` decimal(10, 6) NULL DEFAULT NULL,
  `y` decimal(10, 6) NULL DEFAULT NULL,
  `z` decimal(10, 6) NULL DEFAULT NULL,
  `interior` int(5) NULL DEFAULT NULL,
  `dimension` int(5) NULL DEFAULT NULL,
  `rx` decimal(10, 6) NULL DEFAULT NULL,
  `ry` decimal(10, 6) NULL DEFAULT NULL,
  `rz` decimal(10, 6) NULL DEFAULT NULL,
  `modelid` int(5) NULL DEFAULT NULL,
  `creationdate` datetime(0) NULL DEFAULT NULL,
  `creator` int(11) NOT NULL DEFAULT -1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tags
-- ----------------------------

-- ----------------------------
-- Table structure for tempinteriors
-- ----------------------------
DROP TABLE IF EXISTS `tempinteriors`;
CREATE TABLE `tempinteriors`  (
  `id` int(11) NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL,
  `interior` int(5) NOT NULL,
  `uploaded_by` int(11) NULL DEFAULT NULL,
  `uploaded_at` datetime(0) NOT NULL,
  `amount_paid` int(3) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tempinteriors
-- ----------------------------

-- ----------------------------
-- Table structure for tempobjects
-- ----------------------------
DROP TABLE IF EXISTS `tempobjects`;
CREATE TABLE `tempobjects`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` int(6) NOT NULL DEFAULT 0,
  `posX` float(12, 7) NOT NULL DEFAULT 0.0000000,
  `posY` float(12, 7) NOT NULL DEFAULT 0.0000000,
  `posZ` float(12, 7) NOT NULL DEFAULT 0.0000000,
  `rotX` float(12, 7) NOT NULL DEFAULT 0.0000000,
  `rotY` float(12, 7) NOT NULL DEFAULT 0.0000000,
  `rotZ` float(12, 7) NOT NULL DEFAULT 0.0000000,
  `interior` int(5) NOT NULL,
  `dimension` int(5) NOT NULL,
  `solid` int(1) NOT NULL DEFAULT 1,
  `doublesided` int(1) NOT NULL DEFAULT 0,
  `scale` float(12, 7) NOT NULL DEFAULT 1.0000000,
  `breakable` int(1) NOT NULL DEFAULT 0,
  `alpha` tinyint(3) UNSIGNED NOT NULL DEFAULT 255,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dimension`(`dimension`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of tempobjects
-- ----------------------------

-- ----------------------------
-- Table structure for textures_animated
-- ----------------------------
DROP TABLE IF EXISTS `textures_animated`;
CREATE TABLE `textures_animated`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `frames` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `speed` int(4) NOT NULL,
  `createdBy` int(11) NOT NULL,
  `createdAt` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of textures_animated
-- ----------------------------

-- ----------------------------
-- Table structure for towstats
-- ----------------------------
DROP TABLE IF EXISTS `towstats`;
CREATE TABLE `towstats`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `character` int(11) NOT NULL,
  `vehicle` int(11) NULL DEFAULT NULL,
  `vehicle_plate` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'vehicle plate at the time of towing, if any',
  `date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT 'date of towing',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `character_idx`(`character`) USING BTREE,
  INDEX `vehicle_idx`(`vehicle`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = 'Detailed information for TTR leaders who towed what and when' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of towstats
-- ----------------------------

-- ----------------------------
-- Table structure for tunnings
-- ----------------------------
DROP TABLE IF EXISTS `tunnings`;
CREATE TABLE `tunnings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char` int(11) NOT NULL,
  `optical` int(11) NOT NULL,
  `performance` int(11) NOT NULL,
  `handling` int(11) NOT NULL,
  `wheelwidth` int(11) NOT NULL,
  `offroadability` int(11) NOT NULL,
  `color` int(11) NOT NULL,
  `date` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `vehicle` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  UNIQUE INDEX `entryid`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tunnings
-- ----------------------------

-- ----------------------------
-- Table structure for vehicle_auctions
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_auctions`;
CREATE TABLE `vehicle_auctions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_id` int(11) NOT NULL,
  `advertisement_id` int(11) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `starting_bid` int(11) NOT NULL,
  `minimum_increase` int(11) NOT NULL,
  `current_bid` int(11) NULL DEFAULT NULL,
  `current_bidder_id` int(11) NULL DEFAULT NULL COMMENT 'Character ID of current bidder.',
  `buyout` int(11) NOT NULL,
  `expiry` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_by_faction` int(11) NULL DEFAULT NULL COMMENT 'Filled in when the vehicle belongs to a faction.',
  `awaiting_key_pickup` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'When the auction is completed, but the buyer has not picked up the car yet',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `vehicle_auctions_advertisement_id_index`(`advertisement_id`) USING BTREE,
  INDEX `vehicle_auctions_expiry_awaiting_key_pickup_index`(`expiry`, `awaiting_key_pickup`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of vehicle_auctions
-- ----------------------------

-- ----------------------------
-- Table structure for vehicle_logs
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_logs`;
CREATE TABLE `vehicle_logs`  (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `vehID` int(11) NULL DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `actor` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE,
  INDEX `log_vehicle`(`vehID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6779 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Stores all admin actions on vehicles - Monitored by Vehicle ' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of vehicle_logs
-- ----------------------------
INSERT INTO `vehicle_logs` VALUES (1, '2021-08-07 18:08:07', 1, 'makeveh Fire Truck ($0 - to Faction #1)', 1);

-- ----------------------------
-- Table structure for vehicle_notes
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_notes`;
CREATE TABLE `vehicle_notes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehid` int(11) NOT NULL,
  `creator` int(11) NOT NULL DEFAULT 0,
  `note` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of vehicle_notes
-- ----------------------------

-- ----------------------------
-- Table structure for vehicles
-- ----------------------------
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` int(3) NULL DEFAULT 0,
  `x` decimal(10, 6) NULL DEFAULT 0.000000,
  `y` decimal(10, 6) NULL DEFAULT 0.000000,
  `z` decimal(10, 6) NULL DEFAULT 0.000000,
  `rotx` decimal(10, 6) NULL DEFAULT 0.000000,
  `roty` decimal(10, 6) NULL DEFAULT 0.000000,
  `rotz` decimal(10, 6) NULL DEFAULT 0.000000,
  `currx` decimal(10, 6) NULL DEFAULT 0.000000,
  `curry` decimal(10, 6) NULL DEFAULT 0.000000,
  `currz` decimal(10, 6) NULL DEFAULT 0.000000,
  `currrx` decimal(10, 6) NULL DEFAULT 0.000000,
  `currry` decimal(10, 6) NULL DEFAULT 0.000000,
  `currrz` decimal(10, 6) NOT NULL DEFAULT 0.000000,
  `fuel` int(3) NULL DEFAULT 100,
  `engine` int(1) NULL DEFAULT 0,
  `locked` int(1) NULL DEFAULT 0,
  `lights` int(1) NULL DEFAULT 0,
  `sirens` int(1) NULL DEFAULT 0,
  `paintjob` int(11) NULL DEFAULT 0,
  `hp` float NULL DEFAULT 1000,
  `color1` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  `color2` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  `color3` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `color4` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `plate` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `faction` int(11) NULL DEFAULT -1,
  `owner` int(11) NULL DEFAULT -1,
  `job` int(11) NULL DEFAULT -1,
  `tintedwindows` int(1) NULL DEFAULT 0,
  `dimension` int(5) NULL DEFAULT 0,
  `interior` int(5) NULL DEFAULT 0,
  `currdimension` int(5) NULL DEFAULT 0,
  `currinterior` int(5) NULL DEFAULT 0,
  `enginebroke` int(1) NULL DEFAULT 0,
  `items` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `itemvalues` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `Impounded` int(3) NULL DEFAULT 0,
  `handbrake` int(1) NULL DEFAULT 0,
  `safepositionX` float NULL DEFAULT NULL,
  `safepositionY` float NULL DEFAULT NULL,
  `safepositionZ` float NULL DEFAULT NULL,
  `safepositionRZ` float NULL DEFAULT NULL,
  `upgrades` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]',
  `wheelStates` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '[ [ 0, 0, 0, 0 ] ]',
  `panelStates` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]',
  `doorStates` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '[ [ 0, 0, 0, 0, 0, 0 ] ]',
  `odometer` int(15) NULL DEFAULT 0,
  `headlights` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '[ [ 255, 255, 255 ] ]',
  `variant1` int(3) NULL DEFAULT NULL,
  `variant2` int(3) NULL DEFAULT NULL,
  `descriptionadmin` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `description1` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `description2` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `description3` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `description4` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `description5` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `suspensionLowerLimit` float NULL DEFAULT NULL,
  `driveType` char(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `deletedDate` datetime(0) NULL DEFAULT NULL,
  `chopped` tinyint(4) NOT NULL DEFAULT 0,
  `stolen` tinyint(4) NOT NULL DEFAULT 0,
  `lastUsed` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `creationDate` datetime(0) NULL DEFAULT NULL,
  `createdBy` int(11) NULL DEFAULT NULL,
  `trackingdevice` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `registered` int(2) NOT NULL DEFAULT 1,
  `show_plate` int(2) NOT NULL DEFAULT 1,
  `show_vin` int(2) NOT NULL DEFAULT 1,
  `paintjob_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `vehicle_shop_id` int(11) NULL DEFAULT NULL,
  `bulletproof` tinyint(4) NOT NULL DEFAULT 0,
  `textures` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '[ [ ] ]',
  `business` int(11) NOT NULL DEFAULT -1,
  `protected_until` datetime(0) NULL DEFAULT NULL,
  `tokenUsed` int(1) NOT NULL DEFAULT 0,
  `settings` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hotwired` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 303 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of vehicles
-- ----------------------------
INSERT INTO `vehicles` VALUES (1, 407, 17.751540, 160.335257, 2.429688, 0.000000, 0.000000, 225.769745, 2022.265625, -2044.702148, 35.255325, 0.302124, 0.016479, 163.937988, 366, 0, 0, 2, 0, 0, 300, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'JV0 5653', 1, -1, -1, 100, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 2, 2, 0, 0, 0, 2, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 7206, '[ [ 255, 255, 255 ] ]', 1, 255, NULL, '', '', '', '', '', NULL, NULL, 5, '2021-08-17 17:59:15', 0, 0, '2021-08-07 18:26:44', '2021-08-07 18:08:07', 1, NULL, 1, 1, 1, NULL, 1, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (2, 544, 30.707260, 146.751607, 2.421906, 0.000000, 0.000000, 245.160904, -105.353516, -95.520508, 3.341202, 359.390259, 359.769287, 138.087158, 170, 1, 0, 2, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'CY9 5945', 1, -1, -1, 100, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 3609, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-08-17 18:00:11', 0, 0, '2021-08-07 18:09:24', '2021-08-07 18:09:06', 1, NULL, 1, 1, 1, NULL, 2, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (3, 578, 251.492893, 50.643366, 2.078125, 0.000000, 0.000000, 234.306244, 312.596680, 69.563477, 3.471244, 1.972046, 0.153809, 299.756470, 99, 1, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'JW3 5104', 1, -1, -1, 100, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 1, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-08-17 18:46:58', 0, 0, '2021-08-07 18:14:12', '2021-08-07 18:13:57', 1, NULL, 1, 1, 1, NULL, 3, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (4, 528, 2186.269053, 39.525617, 26.335938, 0.000000, 0.000000, 261.887848, 1952.145508, 39.221680, 33.076256, 2.625732, 1.038208, 90.208740, 100, 1, 0, 2, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'YB8 3610', 1, -1, -1, 100, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 1, 0, 0, 0 ] ]', 180, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-08-17 18:00:02', 0, 0, '2021-08-07 19:08:24', '2021-08-07 19:08:18', 1, NULL, 1, 1, 1, NULL, 8, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (5, 596, 2006.001954, 40.989839, 30.876085, 0.000000, 0.000000, 105.962006, -1030.590820, -622.886719, 31.729450, 359.494629, 0.373535, 5.130615, 79, 1, 0, 2, 1, 0, 878, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'KF6 6437', 1, -1, -1, 100, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 0, 0, 0, 0, 2, 1 ] ]', '[ [ 2, 2, 0, 0, 0, 2 ] ]', 13566, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-08-17 18:00:48', 0, 0, '2021-08-08 19:29:59', '2021-08-07 19:09:17', 1, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (6, 443, -944.892575, -239.883372, 38.146469, 0.000000, 0.000000, 339.732666, 211.200195, -258.710938, 1.806532, 359.527588, 359.873657, 1.296387, 436, 1, 0, 2, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'ZH7 6105', -1, 1, -1, 100, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 2712, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-08-17 18:01:01', 0, 0, '2021-08-09 13:03:54', '2021-08-09 13:03:35', 1, NULL, 1, 1, 1, NULL, 10, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (7, 596, 182.091250, -180.604802, 1.429688, 0.000000, 0.000000, 58.417969, 175.612305, -209.354492, 1.150095, 359.747314, 0.170288, 79.469604, 100, 1, 0, 1, 0, 0, 988, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'TG2 3388', -1, 5, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 1, 0, 0, 0, 2, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 49, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-08-17 18:01:17', 0, 0, '2021-08-17 17:59:51', '2021-08-17 17:46:30', 5, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (8, 407, 169.042645, -213.459127, 1.428933, 0.000000, 0.000000, 157.796265, 199.104492, -156.681641, 1.807024, 0.329590, 359.912109, 179.967041, 93, 1, 0, 1, 0, 0, 982, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'TN2 6932', -1, 5, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 1, 0, 0, 0 ] ]', 80, '[ [ 255, 255, 255 ] ]', 1, 255, NULL, '', '', '', '', '', NULL, NULL, 5, '2021-08-17 17:59:24', 0, 0, '2021-08-17 17:47:58', '2021-08-17 17:47:48', 5, NULL, 1, 1, 1, NULL, 1, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (9, 414, 77.021484, -262.472656, 1.683618, 0.000000, 0.000000, 359.703369, 77.023438, -262.471680, 1.684857, 0.000000, 359.972534, 359.769287, 99, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'VO4 1810', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 32, '[ [ 255, 255, 255 ] ]', 2, 255, NULL, '', '', '', '', '', NULL, NULL, 5, '2021-08-17 22:38:48', 0, 0, '2021-08-17 20:31:24', '2021-08-17 20:26:12', 5, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (10, 418, 76.164169, -258.950887, 1.578125, 0.000000, 0.000000, 282.075531, 76.163086, -258.950195, 1.697183, 0.038452, 359.983521, 282.139893, 100, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'DZ2 9348', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 5, '2021-08-17 20:27:02', 0, 0, '2021-08-17 20:26:42', '2021-08-17 20:26:42', 5, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (11, 499, 67.904297, -262.336914, 1.566555, 359.302368, 0.000000, 359.620972, 346.220703, 2539.844727, 16.756218, 359.631958, 359.868164, 107.528687, 178, 1, 0, 1, 0, 0, 655.5, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'OG7 4501', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 2, 0, 0, 1, 3, 2 ] ]', '[ [ 3, 2, 0, 0, 0, 0 ] ]', 61806, '[ [ 255, 255, 255 ] ]', 3, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-28 18:16:30', '2021-08-17 20:28:07', 5, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (12, 440, 55.923828, -262.828125, 1.686617, 359.187012, 359.989014, 0.812988, -724.734375, -433.910156, 16.203571, 169.848633, 278.997803, 125.068359, 90, 0, 0, 1, 0, 0, 300, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'TW5 5584', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 3, 0, 0 ] ]', 126889, '[ [ 255, 255, 255 ] ]', 4, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-29 16:07:19', '2021-08-17 20:29:42', 5, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (13, 440, 52.624023, -262.795898, 1.743547, 358.604736, 1.560059, 359.214478, 1535.271484, 1583.011719, 10.930243, 359.664917, 0.181274, 166.102295, 86, 1, 0, 1, 0, 0, 997.5, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'UY0 7354', -1, -2, 1, 0, 0, 0, 66, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 2, 0, 0, 0 ] ]', 189383, '[ [ 255, 255, 255 ] ]', 5, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-31 21:28:14', '2021-08-17 20:31:12', 5, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (14, 414, 80.462891, -262.354492, 1.671856, 0.000000, 0.000000, 358.654175, 80.462891, -262.354492, 1.671856, 0.000000, 0.000000, 358.654175, 200, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'YJ7 1563', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 14, '[ [ 255, 255, 255 ] ]', 1, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-20 16:18:07', '2021-08-17 20:32:00', 5, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (15, 468, -327.600586, -124.346680, 9.374764, 54.409790, 40.759277, 293.697510, -327.600586, -124.346680, 9.374764, 54.409790, 40.759277, 293.697510, 15, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'BQ6 2598', -1, 8, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 19140, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-08-21 19:12:54', 0, 0, '2021-08-18 13:16:50', '2021-08-17 20:37:00', 6, NULL, 1, 1, 1, NULL, 15, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (16, 414, 68.962172, -260.729419, 1.578125, 0.000000, 0.000000, 290.430756, 68.962172, -260.729419, 1.578125, 0.000000, 0.000000, 290.430756, 100, 0, 0, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'PD7 2032', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 3, 255, NULL, '', '', '', '', '', NULL, NULL, 5, '2021-08-17 20:37:29', 0, 0, '2021-08-17 20:37:20', '2021-08-17 20:37:20', 5, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (17, 499, 71.033203, -262.376953, 1.569375, 359.318848, 0.000000, 0.450439, 313.089844, -65.501953, 1.535992, 1.779785, 0.038452, 345.701294, 135, 1, 0, 1, 0, 0, 912, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'UH8 2768', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 2, 0, 0, 0, 2, 1 ] ]', '[ [ 0, 2, 0, 0, 0, 0 ] ]', 16305, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-31 21:30:12', '2021-08-17 20:38:05', 5, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (19, 431, -322.256836, 1027.894531, 19.830376, 359.467163, 359.983521, 357.440186, -317.096680, 1058.368164, 19.828842, 0.131836, 357.885132, 172.320557, 712, 1, 0, 1, 0, 0, 916, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'NH8 3223', -1, -2, 3, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 1, 0 ] ]', '[ [ 0, 0, 2, 2, 0, 0 ] ]', 1696, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-17 13:51:33', 0, 0, '2021-08-25 22:19:57', '2021-08-17 20:40:52', 5, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (18, 468, -470.109375, 1548.368164, 34.206566, 352.067871, 8.272705, 181.642456, -290.774414, 1293.025391, 53.361145, 1.274414, 1.658936, 266.127319, 12, 1, 0, 1, 0, 0, 952.5, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'AU8 2859', -1, 3, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 21809, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-08-21 19:08:46', 0, 0, '2021-08-17 21:25:57', '2021-08-17 20:39:45', 6, NULL, 1, 1, 1, NULL, 15, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (20, 437, -315.890625, 1027.594727, 19.869755, 0.000000, 0.043945, 359.071655, -315.890625, 1027.594727, 19.869755, 0.000000, 0.043945, 359.071655, 900, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'GS7 4683', -1, -2, 3, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 3, '[ [ 255, 255, 255 ] ]', 1, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-17 13:51:30', 0, 0, '2021-08-20 23:10:14', '2021-08-17 20:41:24', 5, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (21, 407, 294.402344, -249.895508, 1.805313, 0.307617, 0.000000, 63.253784, 294.404297, -249.892578, 1.807794, 0.296631, 359.972534, 63.396606, 474, 0, 1, 1, 1, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'HI1 7597', -1, 5, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 998, '[ [ 255, 255, 255 ] ]', 2, 255, NULL, '', '', '', '', '', NULL, NULL, 4, '2021-08-18 11:36:40', 0, 0, '2021-08-18 10:24:24', '2021-08-17 22:22:26', 5, NULL, 1, 1, 1, NULL, 1, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (22, 596, 1574.498047, 2329.756836, 10.556187, 0.549316, 359.840698, 6.558838, 1574.498047, 2329.756836, 10.556187, 0.549316, 359.840698, 6.558838, 89, 1, 0, 1, 0, 0, 962, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'OB4 2817', -1, 5, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 1, 0, 0, 0, 1, 0 ] ]', '[ [ 0, 0, 2, 0, 2, 0 ] ]', 8287, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 5, '2021-08-17 22:38:58', 0, 0, '2021-08-17 22:36:00', '2021-08-17 22:26:59', 5, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (23, 578, -1912.309570, -80.790039, 25.605988, 1.790771, 353.968506, 115.526733, -1912.309570, -80.790039, 25.605988, 1.790771, 353.968506, 115.526733, 300, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'AN9 4588', -1, 5, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 245, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, -1, '2021-09-01 01:00:31', 0, 0, '2021-08-18 00:15:00', '2021-08-18 00:11:15', 5, NULL, 1, 1, 1, NULL, 3, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (24, 415, -332.126953, 1294.167969, 53.334343, 0.681152, 359.945068, 87.588501, 1725.533203, -2580.835938, 13.127226, 0.714111, 0.010986, 60.979614, 45, 0, 0, 1, 0, 3, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 255, 8, 159 ] ]', '[ [ 0, 0, 0 ] ]', 'SW0 2138', -1, 13, -1, 0, 0, 0, 1, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1073, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 47025, '[ [ 255, 255, 255 ] ]', 1, 255, NULL, '', '', '', '', '', NULL, NULL, 9, '2021-08-21 00:32:35', 0, 0, '2021-08-20 23:25:22', '2021-08-19 19:30:41', 9, NULL, 1, 1, 1, NULL, 18, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (30, 410, -209.772461, 997.878906, 19.276491, 359.692383, 358.780518, 88.895874, -219.839844, 1009.482422, 19.353149, 1.274414, 355.913086, 206.954956, 37, 1, 1, 2, 0, 0, 982, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'XK3 9134', -1, -2, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 2, 0, 0, 0, 2, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 14264, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-26 17:21:46', '2021-08-20 18:26:49', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (25, 440, 59.143555, -262.817383, 1.687159, 359.192505, 0.000000, 3.372803, 262.030273, 73.645508, 3.893177, 1.966553, 3.674927, 321.262207, 98, 1, 0, 1, 0, 0, 930, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'XD6 4621', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 1, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 332677, '[ [ 255, 255, 255 ] ]', 0, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-31 23:33:17', '2021-08-20 16:16:34', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (26, 440, -70.764648, -1119.832031, 1.194391, 359.247437, 0.000000, 91.752319, 87.672852, -306.870117, 1.685448, 359.176025, 0.010986, 177.517090, 67, 1, 0, 2, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'WB4 6160', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 25121, '[ [ 255, 255, 255 ] ]', 1, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-26 12:08:13', '2021-08-20 16:16:37', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (27, 414, 77.232422, -262.409180, 1.671876, 0.000000, 359.994507, 0.049438, 77.232422, -262.409180, 1.671876, 0.000000, 359.994507, 0.049438, 200, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'FI1 8272', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 154, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-20 16:25:17', '2021-08-20 16:17:39', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (28, 456, 59.653320, -273.525391, 1.751444, 359.934082, 0.000000, 224.780273, 59.653320, -273.525391, 1.751444, 359.934082, 0.000000, 224.780273, 200, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'UX7 7694', -1, -2, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 126, '[ [ 255, 255, 255 ] ]', 2, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-20 16:52:01', '2021-08-20 16:19:06', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (29, 573, 1599.396039, 1779.231959, 37.312500, 0.000000, 0.000000, 115.020386, 1599.395996, 1779.231934, 37.312500, 0.000000, 0.000000, 115.020386, 250, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'DZ6 3630', -1, -2, 0, 0, 266, 0, 266, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 739, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-20 17:38:51', '2021-08-20 17:36:56', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (31, 410, -210.329102, 994.194336, 19.205128, 359.824219, 358.813477, 82.820435, -221.423828, 1009.304688, 19.358147, 0.818481, 356.138306, 214.348755, 37, 1, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'OJ7 7708', -1, -2, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 118134, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-31 21:09:45', '2021-08-20 18:26:58', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (32, 468, -229.379883, 997.526367, 19.240778, 359.851685, 0.560303, 263.765259, -229.381836, 997.526367, 19.239773, 1.049194, 0.565796, 263.776245, 15, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'DF2 7123', -1, -2, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 432, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-20 23:02:43', '2021-08-20 18:28:09', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (33, 468, -229.136719, 1000.238281, 19.262802, 359.901123, 0.560303, 269.049683, -229.136719, 1000.238281, 19.262802, 359.901123, 0.560303, 269.049683, 15, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'NC9 2827', -1, -2, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 2516, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-21 19:09:18', '2021-08-20 18:28:32', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (34, 431, -334.982422, 1053.423828, 19.840004, 359.511108, 0.000000, 268.912354, -334.755859, 1046.305664, 19.849344, 359.533081, 359.950562, 269.296875, 631, 0, 1, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'TU6 7180', -1, -2, 3, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 7193, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-17 13:51:41', 0, 0, '2021-08-26 18:26:09', '2021-08-20 23:03:10', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (35, 431, -308.762695, 1044.861328, 19.832180, 359.577026, 0.098877, 30.371704, -308.762695, 1044.861328, 19.832180, 359.577026, 0.098877, 30.371704, 713, 1, 0, 1, 0, 0, 961, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'QO6 6118', -1, -2, 3, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 4, 3, 0, 0 ] ]', 1580, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-17 13:51:25', 0, 0, '2021-08-25 22:21:03', '2021-08-20 23:08:12', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (36, 415, -291.279297, 1294.486328, 53.292072, 359.582520, 358.137817, 79.035645, 324.692383, -64.341797, 1.158866, 0.845947, 0.027466, 91.082153, 38, 0, 0, 1, 0, 3, 981.5, '[ [ 245, 0, 0 ] ]', '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'MW1 9737', -1, 13, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 2, 0, 0, 0, 0, 0 ] ]', 34578, '[ [ 255, 255, 255 ] ]', 0, 255, NULL, '', '', '', '', '', NULL, NULL, 9, '2021-08-22 17:26:28', 0, 0, '2021-08-22 17:18:20', '2021-08-21 00:32:35', 5, NULL, 1, 1, 1, NULL, 18, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (37, 477, -290.932617, 1298.294922, 53.619488, 358.121338, 358.341064, 79.337769, -290.265625, 1298.743164, 53.638027, 358.406982, 358.368530, 82.749023, 44, 0, 1, 2, 0, 3, 1000, '[ [ 255, 245, 245 ] ]', '[ [ 255, 255, 255 ] ]', '[ [ 241, 241, 241 ] ]', '[ [ 255, 255, 255 ] ]', 'BX1 9034', -1, 13, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 3840, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 9, '2021-08-22 17:26:37', 0, 0, '2021-08-22 11:36:48', '2021-08-21 00:35:25', 5, NULL, 1, 1, 1, NULL, 44, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (38, 495, 1938.064453, -2311.419922, 14.181033, 0.950317, 0.016479, 54.673462, 113.624023, 1193.589844, 18.050552, 4.301147, 357.099609, 89.730835, 31, 1, 0, 1, 0, 0, 722, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'ER6 7646', 8, -1, -1, 100, 352, 56, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 1, 0 ] ]', '[ [ 2, 0, 0, 0, 0, 0 ] ]', 255739, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-10-07 16:03:14', '2021-08-21 14:39:14', 1, NULL, 1, 1, 1, NULL, 38, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (39, 495, -289.750000, 1776.390625, 42.882839, 0.417480, 0.307617, 142.624512, -46.126953, 1062.077148, 20.097450, 359.197998, 357.500610, 333.121948, 36, 1, 1, 1, 0, 0, 759.5, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'KP7 8469', 8, -1, -1, 100, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 2, 2, 0, 0, 0, 2, 2 ] ]', '[ [ 3, 2, 2, 2, 0, 0 ] ]', 43466, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-21 18:38:30', '2021-08-21 14:56:53', 1, NULL, 1, 1, 1, NULL, 38, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (40, 552, 410.171509, 2506.935108, 16.484375, 0.000000, 0.000000, 36.181274, 410.171509, 2506.935108, 16.484375, 0.000000, 0.000000, 36.181274, 100, 0, 0, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'DZ3 3043', -1, -2, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-08-22 18:00:52', 0, 0, '2021-08-21 21:37:37', '2021-08-21 21:37:37', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (41, 512, 325.505859, 2552.966797, 17.085714, 7.597046, 359.939575, 179.945068, 325.505859, 2552.966797, 17.085714, 7.597046, 359.939575, 179.945068, 150, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'LO2 7084', -1, -2, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 24545, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-08-26 12:37:05', 0, 0, '2021-08-22 17:59:51', '2021-08-21 21:38:01', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (42, 512, 325.413086, 2545.026367, 17.086905, 7.503662, 359.939575, 179.395752, 325.413086, 2545.026367, 17.086905, 7.503662, 359.939575, 179.395752, 150, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'RS5 6805', -1, -2, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 17643, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-08-26 12:37:09', 0, 0, '2021-08-22 17:21:22', '2021-08-21 22:00:56', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (43, 512, 325.157227, 2537.405273, 17.091385, 7.503662, 359.994507, 180.834961, 325.157227, 2537.405273, 17.091385, 7.503662, 359.994507, 180.834961, 150, 0, 0, 1, 0, 0, 328, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'JX8 9227', -1, -2, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 2, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 45923, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-08-26 12:37:14', 0, 0, '2021-08-23 13:17:37', '2021-08-21 22:02:59', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (44, 512, 290.272461, 2552.835938, 17.103090, 7.492676, 359.994507, 179.566040, 290.272461, 2552.835938, 17.103090, 7.492676, 359.994507, 179.566040, 150, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'RP0 2836', -1, -2, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 4587, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-08-26 12:37:26', 0, 0, '2021-08-23 19:55:40', '2021-08-21 22:06:50', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (45, 512, 289.989258, 2544.576172, 17.102131, 7.503662, 0.000000, 180.170288, 289.989258, 2544.576172, 17.102131, 7.503662, 0.000000, 180.170288, 150, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'MU4 8692', -1, -2, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 15991, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-08-26 12:37:23', 0, 0, '2021-08-23 14:24:57', '2021-08-21 22:07:21', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (46, 512, 290.094727, 2536.329102, 17.102825, 7.509155, 0.000000, 178.945313, 290.094727, 2536.329102, 17.102825, 7.503662, 359.989014, 178.945313, 99, 1, 0, 1, 0, 0, 954, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'LR4 2598', -1, -2, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 13, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 9, '2021-08-22 17:48:40', 0, 0, '2021-08-21 22:08:04', '2021-08-21 22:07:58', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (47, 477, 141.366576, 1221.634718, 18.944729, 0.000000, 0.000000, 34.065948, 141.366576, 1221.634718, 18.944729, 0.000000, 0.000000, 34.065948, 100, 0, 1, 0, 0, 3, 1000, '[ [ 255, 255, 255 ] ]', '[ [ 244, 238, 238 ] ]', '[ [ 255, 255, 255 ] ]', '[ [ 255, 255, 255 ] ]', 'PD7 6218', -1, 13, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 9, '2021-08-22 17:40:56', 0, 0, '2021-08-22 17:39:08', '2021-08-22 17:39:08', 9, NULL, 1, 1, 1, NULL, 44, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (48, 415, 235.542969, 594.086914, -1.396570, 41.176758, 284.221802, 325.947876, 235.542969, 594.086914, -1.396570, 41.176758, 284.221802, 325.947876, 35, 0, 0, 1, 0, 3, 300, '[ [ 255, 179, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'JY4 1808', -1, 7, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 2, 0, 0, 0, 3, 3 ] ]', '[ [ 4, 2, 2, 0, 0, 0 ] ]', 292909, '[ [ 255, 255, 255 ] ]', 0, 255, NULL, '', '', '', '', '', NULL, NULL, -1, '2021-09-15 16:00:37', 0, 0, '2021-09-01 00:41:26', '2021-08-22 17:39:21', 9, NULL, 1, 1, 1, NULL, 18, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (49, 477, 321.151367, 2543.486328, 16.599836, 359.923096, 359.967041, 202.851563, 321.153320, 2543.487305, 16.601503, 359.917603, 359.967041, 202.944946, 21, 0, 1, 1, 0, 3, 1000, '[ [ 255, 255, 255 ] ]', '[ [ 255, 0, 0 ] ]', '[ [ 255, 255, 255 ] ]', '[ [ 249, 249, 249 ] ]', 'DG1 1203', -1, 30, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1019, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 106225, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-12 11:38:50', 0, 0, '2021-09-01 00:04:33', '2021-08-22 17:40:48', 9, NULL, 1, 1, 1, NULL, 44, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (50, 504, -158.282845, 1258.444507, 20.540575, 0.000000, 0.000000, 119.750061, -158.282845, 1258.444507, 20.540575, 0.000000, 0.000000, 119.750061, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'FB6 2213', -1, 13, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 0, 255, NULL, '', '', '', '', '', NULL, NULL, 9, '2021-08-22 17:48:52', 0, 0, '2021-08-22 17:48:13', '2021-08-22 17:48:13', 9, NULL, 1, 1, 1, NULL, 46, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (51, 426, 314.316836, 2526.439415, 16.778267, 0.000000, 0.000000, 181.768829, 314.316836, 2526.439415, 16.778267, 0.000000, 0.000000, 181.768829, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'WA1 4522', -1, 13, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 9, '2021-08-22 17:55:08', 0, 0, '2021-08-22 17:54:50', '2021-08-22 17:54:50', 9, NULL, 1, 1, 1, NULL, 43, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (52, 512, 318.378605, 2517.638484, 16.648487, 0.000000, 0.000000, 176.127258, 325.211914, 2563.811523, 16.759859, 7.509155, 356.061401, 84.149780, 98, 1, 0, 1, 0, 0, 828, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'RP5 8424', -1, 13, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 108, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-08-22 18:00:02', 0, 0, '2021-08-22 17:58:51', '2021-08-22 17:58:19', 9, NULL, 1, 1, 1, NULL, 47, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (53, 512, 325.719727, 2552.167969, 17.097818, 7.531128, 359.945068, 181.928101, 325.717773, 2552.211914, 17.095108, 7.531128, 359.945068, 181.928101, 150, 0, 0, 1, 0, 0, 992.5, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'PA5 5908', -1, -2, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 13, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-08-26 12:36:59', 0, 0, '2021-08-22 18:02:16', '2021-08-22 18:02:06', 9, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (54, 444, -328.195313, 1295.675781, 54.035839, 0.016479, 0.082397, 270.939331, -328.195313, 1295.675781, 54.035839, 0.021973, 0.093384, 270.939331, 90, 0, 0, 2, 0, 3, 965.5, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'BW1 6519', -1, 13, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 2432, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 9, '2021-08-22 18:12:17', 0, 0, '2021-08-22 18:04:41', '2021-08-22 18:04:27', 9, NULL, 1, 1, 1, NULL, 48, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (55, 402, -301.805664, 1777.406250, 42.431454, 0.115356, 359.994507, 203.197632, -457.924805, -90.516602, 59.424076, 357.736816, 359.395752, 247.126465, 26, 1, 0, 1, 0, 0, 692.5, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'YB9 3907', 8, -1, -1, 100, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 1, 0, 0, 1, 2, 0 ] ]', '[ [ 4, 0, 0, 0, 0, 0 ] ]', 55300, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-31 02:58:39', '2021-08-22 18:10:08', 1, NULL, 1, 1, 1, NULL, 28, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (56, 402, -302.255859, 1770.618164, 42.430737, 0.115356, 359.989014, 204.916992, -302.255859, 1770.618164, 42.430737, 0.115356, 0.000000, 204.916992, 45, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'FA8 5041', 8, -1, -1, 100, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 1, 0, 0, 0 ] ]', 68937, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, '2021-08-23 18:46:07', 0, 0, '2021-08-28 21:17:31', '2021-08-22 18:10:12', 1, NULL, 1, 1, 1, NULL, 28, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (57, 508, 337.367707, 2522.831508, 16.756168, 0.000000, 0.000000, 328.823059, 337.367707, 2522.831508, 16.756168, 0.000000, 0.000000, 328.823059, 100, 0, 0, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'CQ8 1652', -1, -2, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-08-23 18:46:02', 0, 0, '2021-08-23 13:18:48', '2021-08-23 13:18:48', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (58, 528, 340.756540, 2519.304483, 16.641106, 0.000000, 0.000000, 162.251343, -769.024536, 2261.895264, 218.896744, 0.390015, 0.098877, 89.741821, 98, 1, 0, 2, 1, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'LE3 7972', -1, -2, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 85, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-08-23 18:45:49', 0, 0, '2021-08-23 13:21:01', '2021-08-23 13:20:36', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (59, 483, 338.383336, 2507.480269, 16.484375, 0.000000, 0.000000, 111.620056, 340.546875, 2505.666016, 16.722916, 359.835205, 0.010986, 181.164551, 100, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'ET6 3084', -1, -2, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 1, 0, 0, 0 ] ]', 2, '[ [ 255, 255, 255 ] ]', 1, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-08-23 18:45:35', 0, 0, '2021-08-23 13:23:31', '2021-08-23 13:23:31', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (60, 459, 329.602147, 2504.764658, 16.484375, 0.000000, 0.000000, 143.909363, 329.602147, 2504.764658, 16.484375, 0.000000, 0.000000, 143.909363, 100, 0, 0, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'DI6 2755', -1, -2, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 0, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-08-23 18:46:57', 0, 0, '2021-08-23 13:24:42', '2021-08-23 13:24:42', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (62, 426, -706.113467, 964.370059, 12.461910, 0.000000, 0.000000, 79.297760, -706.113467, 964.370059, 12.461910, 0.000000, 0.000000, 79.297760, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'PN6 7538', 1, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 13:38:21', 0, 0, '2021-08-24 13:38:00', '2021-08-24 13:38:00', 12, NULL, 1, 1, 1, NULL, 49, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (61, 507, 1930.443359, -2335.094727, 13.398616, 359.395752, 359.945068, 48.021240, -412.808594, 1676.909180, 37.433498, 355.968018, 6.591797, 261.990967, 40, 0, 0, 1, 0, 0, 465, '[ [ 11, 11, 0 ] ]', '[ [ 0 ] ]', '[ [ ] ]', '[ [ ] ]', 'KA6 5674', -1, 25, -1, 0, 352, 56, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 2, 0, 0, 3, 3, 2 ] ]', '[ [ 4, 2, 0, 2, 0, 3 ] ]', 819022, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-08-24 18:33:47', 0, 0, '2021-08-23 19:17:05', '2021-08-23 14:34:19', -1, NULL, 1, 1, 1, NULL, 29, 0, '[ [ ] ]', -1, NULL, 1, NULL, 0);
INSERT INTO `vehicles` VALUES (63, 426, -704.997070, 968.103516, 12.180613, 0.763550, 0.477905, 86.923828, -704.979492, 967.825195, 12.185686, 359.774780, 359.703369, 267.083130, 44, 1, 0, 2, 0, 0, 859, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'CR9 3277', 9, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 3, 1, 0, 0, 0, 2, 2 ] ]', '[ [ 0, 2, 0, 0, 0, 0 ] ]', 42574, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 17, '2021-08-28 12:25:53', 0, 0, '2021-08-27 18:56:03', '2021-08-24 13:39:02', 12, NULL, 1, 1, 1, NULL, 49, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (64, 426, -705.392578, 946.531250, 12.159052, 1.104126, 0.027466, 87.385254, -570.866211, 449.220703, 0.012514, 3.806763, 0.379028, 80.051880, 52, 1, 0, 2, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'TD0 3845', 9, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 4259, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 17, '2021-08-28 12:25:53', 0, 0, '2021-08-27 20:20:56', '2021-08-24 13:39:06', 12, NULL, 1, 1, 1, NULL, 49, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (65, 426, -705.337891, 953.658203, 12.214075, 0.214233, 359.071655, 89.005737, 124.783203, -169.510742, 1.226912, 355.709839, 359.868164, 111.758423, 48, 1, 1, 1, 0, 0, 500, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'QN3 1756', 9, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 2, 0, 2, 0 ] ]', '[ [ 3, 3, 0, 0, 1, 2, 3 ] ]', '[ [ 2, 2, 2, 2, 0, 0 ] ]', 49676, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 17, '2021-08-28 12:25:53', 0, 0, '2021-08-27 21:36:41', '2021-08-24 13:39:08', 12, NULL, 1, 1, 1, NULL, 49, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (66, 426, -718.009922, 962.516954, 12.228311, 0.000000, 0.000000, 127.012146, -718.009922, 962.516954, 12.228311, 0.000000, 0.000000, 127.012146, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'EM0 1992', 1, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 13:46:27', 0, 0, '2021-08-24 13:45:50', '2021-08-24 13:39:10', 12, NULL, 1, 1, 1, NULL, 49, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (67, 426, -705.430664, 950.168945, 12.178348, 0.571289, 359.555054, 87.692871, 1254.223633, -804.384766, 83.882278, 0.197754, 359.967041, 356.621704, 49, 0, 0, 2, 1, 0, 700, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'XQ5 4665', 9, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 7850, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 17, '2021-08-28 12:25:53', 0, 0, '2021-08-26 21:47:14', '2021-08-24 13:39:12', 12, NULL, 1, 1, 1, NULL, 49, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (68, 426, -704.736328, 971.296875, 12.168339, 1.131592, 0.021973, 87.775269, -704.543945, 971.223633, 12.164210, 1.131592, 0.005493, 88.769531, 49, 0, 0, 1, 0, 0, 997, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'ZH0 6556', 9, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 1, 0, 0, 0, 1, 0 ] ]', '[ [ 0, 0, 1, 0, 0, 0 ] ]', 8971, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 17, '2021-08-28 12:25:53', 0, 0, '2021-08-27 19:21:19', '2021-08-24 13:39:14', 12, NULL, 1, 1, 1, NULL, 49, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (69, 596, 1943.309916, -2394.103345, 13.566853, 0.000000, 0.000000, 358.547028, 1943.309916, -2394.103345, 13.566853, 0.000000, 0.000000, 358.547028, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'SY1 5102', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:07:21', 0, 0, '2021-08-24 15:07:16', '2021-08-24 15:07:16', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (70, 596, 1944.833978, -2394.192311, 13.566853, 0.000000, 0.000000, 348.543823, 1944.833978, -2394.192311, 13.566853, 0.000000, 0.000000, 348.543823, 100, 0, 1, 0, 0, 0, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 245, 245, 245 ] ]', 'AB7 8197', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:07:57', 0, 0, '2021-08-24 15:07:43', '2021-08-24 15:07:43', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (71, 596, 1941.725037, -2398.404363, 13.566853, 0.000000, 0.000000, 258.547974, 1941.725037, -2398.404363, 13.566853, 0.000000, 0.000000, 258.547974, 100, 0, 1, 0, 0, 0, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', 'HA6 8194', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:08:20', 0, 0, '2021-08-24 15:08:01', '2021-08-24 15:08:01', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (72, 596, 1947.985504, -2393.903009, 13.566853, 0.000000, 0.000000, 348.329590, 1947.985504, -2393.903009, 13.566853, 0.000000, 0.000000, 348.329590, 100, 0, 1, 0, 0, 0, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 132, 4, 16 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 132, 4, 16 ] ]', 'LP9 9281', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:08:18', 0, 0, '2021-08-24 15:08:07', '2021-08-24 15:08:07', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (73, 596, 1943.827697, -2387.690253, 13.566853, 0.000000, 0.000000, 78.330963, 1943.827697, -2387.690253, 13.566853, 0.000000, 0.000000, 78.330963, 100, 0, 1, 0, 0, 0, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 0, 0, 0 ] ]', 'VP8 5322', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:12:29', 0, 0, '2021-08-24 15:08:12', '2021-08-24 15:08:12', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (74, 596, 1944.514676, -2397.906312, 13.566853, 0.000000, 0.000000, 285.404419, 1944.514676, -2397.906312, 13.566853, 0.000000, 0.000000, 285.404419, 100, 0, 1, 0, 0, 0, 1000, '[ [ 134, 68, 110 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 134, 68, 110 ] ]', '[ [ 0, 0, 0 ] ]', 'DC0 7370', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:08:33', 0, 0, '2021-08-24 15:08:26', '2021-08-24 15:08:26', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (75, 596, 1944.514676, -2397.906312, 13.566853, 0.000000, 0.000000, 285.404419, 1944.514676, -2397.906312, 13.566853, 0.000000, 0.000000, 285.404419, 100, 0, 1, 0, 0, 0, 1000, '[ [ 215, 142, 16 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 215, 142, 16 ] ]', '[ [ 0, 0, 0 ] ]', 'CG5 5057', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:08:59', 0, 0, '2021-08-24 15:08:36', '2021-08-24 15:08:36', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (76, 596, 1944.514676, -2397.906312, 13.566853, 0.000000, 0.000000, 285.404419, 1944.514676, -2397.906312, 13.566853, 0.000000, 0.000000, 285.404419, 100, 0, 1, 0, 0, 0, 1000, '[ [ 76, 117, 183 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 76, 117, 183 ] ]', '[ [ 0, 0, 0 ] ]', 'NL5 4336', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:08:55', 0, 0, '2021-08-24 15:08:39', '2021-08-24 15:08:39', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (77, 596, 1944.514676, -2397.906312, 13.566853, 0.000000, 0.000000, 285.404419, 1944.514676, -2397.906312, 13.566853, 0.000000, 0.000000, 285.404419, 100, 0, 1, 0, 0, 0, 1000, '[ [ 76, 117, 183 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 76, 117, 183 ] ]', '[ [ 245, 245, 245 ] ]', 'US6 3225', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:09:35', 0, 0, '2021-08-24 15:08:46', '2021-08-24 15:08:46', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (78, 596, 1943.788299, -2400.954750, 13.566853, 0.000000, 0.000000, 278.120392, 1943.788299, -2400.954750, 13.566853, 0.000000, 0.000000, 278.120392, 100, 0, 1, 0, 0, 0, 1000, '[ [ 189, 190, 198 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 189, 190, 198 ] ]', '[ [ 245, 245, 245 ] ]', 'ON8 6218', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:09:33', 0, 0, '2021-08-24 15:09:09', '2021-08-24 15:09:09', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (79, 596, 1943.788299, -2400.954750, 13.566853, 0.000000, 0.000000, 278.120392, 1943.788299, -2400.954750, 13.566853, 0.000000, 0.000000, 278.120392, 100, 0, 1, 0, 0, 0, 1000, '[ [ 94, 112, 114 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 94, 112, 114 ] ]', '[ [ 245, 245, 245 ] ]', 'ZJ1 4220', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:09:31', 0, 0, '2021-08-24 15:09:15', '2021-08-24 15:09:15', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (80, 596, 1943.788299, -2400.954750, 13.566853, 0.000000, 0.000000, 278.120392, 1943.788299, -2400.954750, 13.566853, 0.000000, 0.000000, 278.120392, 100, 0, 1, 0, 0, 0, 1000, '[ [ 70, 89, 122 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 70, 89, 122 ] ]', '[ [ 245, 245, 245 ] ]', 'OW9 5381', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:09:28', 0, 0, '2021-08-24 15:09:23', '2021-08-24 15:09:23', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (81, 596, 1943.788299, -2400.954750, 13.566853, 0.000000, 0.000000, 278.120392, 1943.788299, -2400.954750, 13.566853, 0.000000, 0.000000, 278.120392, 100, 0, 1, 0, 0, 0, 1000, '[ [ 101, 106, 121 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 101, 106, 121 ] ]', '[ [ 245, 245, 245 ] ]', 'MZ9 1106', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:09:53', 0, 0, '2021-08-24 15:09:40', '2021-08-24 15:09:40', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (82, 596, 1943.788299, -2400.954750, 13.566853, 0.000000, 0.000000, 278.120392, 1943.788299, -2400.954750, 13.566853, 0.000000, 0.000000, 278.120392, 100, 0, 1, 0, 0, 0, 1000, '[ [ 93, 126, 141 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 93, 126, 141 ] ]', '[ [ 245, 245, 245 ] ]', 'MH6 2012', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:09:55', 0, 0, '2021-08-24 15:09:42', '2021-08-24 15:09:42', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (83, 596, 1943.788299, -2400.954750, 13.566853, 0.000000, 0.000000, 278.120392, 1943.788299, -2400.954750, 13.566853, 0.000000, 0.000000, 278.120392, 100, 0, 1, 0, 0, 0, 1000, '[ [ 88, 89, 90 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 88, 89, 90 ] ]', '[ [ 245, 245, 245 ] ]', 'YO1 9735', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:09:56', 0, 0, '2021-08-24 15:09:45', '2021-08-24 15:09:45', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (84, 596, 1943.788299, -2400.954750, 13.566853, 0.000000, 0.000000, 278.120392, 1943.788299, -2400.954750, 13.566853, 0.000000, 0.000000, 278.120392, 100, 0, 1, 0, 0, 0, 1000, '[ [ 156, 161, 163 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 156, 161, 163 ] ]', '[ [ 245, 245, 245 ] ]', 'JI4 2418', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:09:57', 0, 0, '2021-08-24 15:09:49', '2021-08-24 15:09:49', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (85, 596, 1939.346337, -2396.322001, 13.566853, 0.000000, 0.000000, 188.827652, 1939.346337, -2396.322001, 13.566853, 0.000000, 0.000000, 188.827652, 100, 0, 1, 0, 0, 0, 1000, '[ [ 134, 68, 110 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 134, 68, 110 ] ]', '[ [ 0, 0, 0 ] ]', 'LQ6 3602', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:10:43', 0, 0, '2021-08-24 15:10:10', '2021-08-24 15:10:10', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (86, 596, 1939.346337, -2396.322001, 13.566853, 0.000000, 0.000000, 188.827652, 1939.346337, -2396.322001, 13.566853, 0.000000, 0.000000, 188.827652, 100, 0, 1, 0, 0, 0, 1000, '[ [ 76, 117, 183 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 76, 117, 183 ] ]', '[ [ 0, 0, 0 ] ]', 'EM9 5113', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:10:41', 0, 0, '2021-08-24 15:10:14', '2021-08-24 15:10:14', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (87, 596, 1943.265942, -2400.596795, 13.566853, 0.000000, 0.000000, 254.471954, 1943.265942, -2400.596795, 13.566853, 0.000000, 0.000000, 254.471954, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 76, 117, 183 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 76, 117, 183 ] ]', 'BM0 5652', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:10:38', 0, 0, '2021-08-24 15:10:27', '2021-08-24 15:10:27', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (88, 596, 1943.265942, -2400.596795, 13.566853, 0.000000, 0.000000, 254.471954, 1943.265942, -2400.596795, 13.566853, 0.000000, 0.000000, 254.471954, 100, 0, 1, 0, 0, 0, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 76, 117, 183 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 76, 117, 183 ] ]', 'DX2 8153', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:10:36', 0, 0, '2021-08-24 15:10:32', '2021-08-24 15:10:32', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (89, 596, 1943.265942, -2400.596795, 13.566853, 0.000000, 0.000000, 254.471954, 1943.265942, -2400.596795, 13.566853, 0.000000, 0.000000, 254.471954, 100, 0, 1, 0, 0, 0, 1000, '[ [ 59, 78, 120 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 59, 78, 120 ] ]', '[ [ 0, 0, 0 ] ]', 'IR2 3768', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:11:30', 0, 0, '2021-08-24 15:10:54', '2021-08-24 15:10:54', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (90, 596, 1949.474847, -2397.633945, 13.566853, 0.000000, 0.000000, 335.832458, 1949.474847, -2397.633945, 13.566853, 0.000000, 0.000000, 335.832458, 100, 0, 1, 0, 0, 0, 1000, '[ [ 59, 78, 120 ] ]', '[ [ 101, 106, 121 ] ]', '[ [ 59, 78, 120 ] ]', '[ [ 101, 106, 121 ] ]', 'ZJ4 3703', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:11:25', 0, 0, '2021-08-24 15:11:05', '2021-08-24 15:11:05', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (91, 596, 1949.372448, -2393.106103, 13.566853, 0.000000, 0.000000, 22.113068, 1949.372448, -2393.106103, 13.566853, 0.000000, 0.000000, 22.113068, 100, 0, 1, 0, 0, 0, 1000, '[ [ 59, 78, 120 ] ]', '[ [ 156, 161, 163 ] ]', '[ [ 59, 78, 120 ] ]', '[ [ 156, 161, 163 ] ]', 'HR8 9140', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:11:22', 0, 0, '2021-08-24 15:11:10', '2021-08-24 15:11:10', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (92, 596, 1949.372448, -2393.106103, 13.566853, 0.000000, 0.000000, 22.113068, 1949.372448, -2393.106103, 13.566853, 0.000000, 0.000000, 22.113068, 100, 0, 1, 0, 0, 0, 1000, '[ [ 59, 78, 120 ] ]', '[ [ 159, 157, 148 ] ]', '[ [ 59, 78, 120 ] ]', '[ [ 159, 157, 148 ] ]', 'EB7 2273', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:11:20', 0, 0, '2021-08-24 15:11:15', '2021-08-24 15:11:15', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (93, 596, 1955.367991, -2401.012716, 13.566853, 0.000000, 0.000000, 272.259094, 1955.367991, -2401.012716, 13.566853, 0.000000, 0.000000, 272.259094, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'IM1 5258', -1, 18, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:13:05', 0, 0, '2021-08-24 15:12:19', '2021-08-24 15:12:19', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (94, 596, 1952.202443, -2392.574114, 13.566853, 0.000000, 0.000000, 124.468750, 1952.202443, -2392.574114, 13.566853, 0.000000, 0.000000, 124.468750, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'WD3 7634', -1, 18, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:13:12', 0, 0, '2021-08-24 15:12:24', '2021-08-24 15:12:24', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (95, 596, 1945.270522, -2386.726266, 13.566853, 0.000000, 0.000000, 100.249023, 1945.270522, -2386.726266, 13.566853, 0.000000, 0.000000, 100.249023, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'ZG8 7730', -1, 18, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:13:14', 0, 0, '2021-08-24 15:12:33', '2021-08-24 15:12:33', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (96, 596, 1940.626843, -2393.033275, 13.566853, 0.000000, 0.000000, 183.180588, 1940.626843, -2393.033275, 13.566853, 0.000000, 0.000000, 183.180588, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'YG4 2846', -1, 18, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:13:15', 0, 0, '2021-08-24 15:12:35', '2021-08-24 15:12:35', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (97, 596, 1945.601655, -2397.972288, 13.566853, 0.000000, 0.000000, 263.755554, 1945.601655, -2397.972288, 13.566853, 0.000000, 0.000000, 263.755554, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'TH3 9639', -1, 18, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:13:16', 0, 0, '2021-08-24 15:12:37', '2021-08-24 15:12:37', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (98, 596, 1955.477358, -2408.431719, 13.566853, 0.000000, 0.000000, 294.605621, 1955.477358, -2408.431719, 13.566853, 0.000000, 0.000000, 294.605621, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'MR9 3387', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:15:58', 0, 0, '2021-08-24 15:13:41', '2021-08-24 15:13:41', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (99, 596, 1938.082031, -2386.659180, 13.290062, 359.697876, 0.043945, 179.533081, 1937.564453, -2386.786133, 13.288558, 359.692383, 0.000000, 180.906372, 51, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'ZL0 5690', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 3272, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-11 15:48:35', 0, 0, '2021-08-30 20:19:03', '2021-08-24 15:13:45', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (100, 596, 1942.157227, -2386.484375, 13.289639, 359.692383, 0.043945, 180.120850, 1936.041992, -2405.158203, 13.180159, 0.038452, 11.178589, 313.813477, 55, 1, 0, 1, 0, 0, 200, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'DV2 3851', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 2, 2 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 1, 0, 0, 0 ] ]', 20890, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-11 15:48:42', 0, 0, '2021-08-30 19:58:17', '2021-08-24 15:13:46', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (101, 596, 1947.222656, -2385.999023, 13.296789, 359.714355, 359.994507, 180.181274, 1947.222656, -2385.999023, 13.296789, 359.714355, 359.994507, 180.181274, 100, 0, 1, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'RC6 4817', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-11 15:48:42', 0, 0, '2021-08-24 15:13:48', '2021-08-24 15:13:48', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (102, 596, 1951.470703, -2386.108398, 13.293805, 359.708862, 0.027466, 180.098877, 1951.470703, -2386.108398, 13.293805, 359.708862, 0.027466, 180.098877, 55, 0, 1, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'TL8 9167', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-11 15:48:43', 0, 0, '2021-08-24 15:13:50', '2021-08-24 15:13:50', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (103, 596, 1955.351563, -2385.939453, 13.292414, 359.697876, 359.994507, 179.511108, 114.870117, -92.922852, 1.328093, 359.697876, 0.038452, 82.463379, 42, 1, 0, 2, 0, 0, 993.5, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'IN7 8520', 1, -1, -1, 0, 368, 56, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 0, 0, 0, 0, 1, 0 ] ]', '[ [ 0, 0, 0, 2, 0, 0 ] ]', 34769, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-11 15:48:46', 0, 0, '2021-08-30 19:24:35', '2021-08-24 15:13:52', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (104, 596, 1959.718750, -2386.019531, 13.289833, 359.697876, 359.994507, 179.154053, 1959.718750, -2386.019531, 13.289833, 359.697876, 359.994507, 179.154053, 32, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'DX8 3832', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 14808, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-11 15:48:49', 0, 0, '2021-08-31 21:40:13', '2021-08-24 15:13:54', 12, NULL, 1, 1, 1, NULL, 9, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (105, 528, 1941.585938, -2402.258789, 13.566856, 0.631714, 359.989014, 91.274414, 1941.585938, -2402.258789, 13.566856, 0.631714, 359.983521, 91.274414, 75, 0, 1, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'UN5 8602', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 17, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-11 15:49:40', 0, 0, '2021-08-31 19:23:34', '2021-08-24 15:16:29', 12, NULL, 1, 1, 1, NULL, 8, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (106, 528, 1941.355469, -2406.447266, 13.566108, 0.626221, 359.978027, 89.176025, 666.773438, -466.172852, 16.335451, 0.631714, 359.950562, 177.363281, 63, 1, 1, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'HN0 5110', 1, -1, -1, 0, 368, 56, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 2227, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-14 19:37:05', 0, 0, '2021-08-30 21:00:55', '2021-08-24 15:17:00', 12, NULL, 1, 1, 1, NULL, 8, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (107, 427, 1941.308594, -2411.189453, 13.702996, 0.060425, 0.164795, 90.159302, 1941.308594, -2411.189453, 13.702996, 0.060425, 0.164795, 90.159302, 100, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'IP7 8491', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-11 15:49:45', 0, 0, '2021-08-24 15:18:46', '2021-08-24 15:18:30', 12, NULL, 1, 1, 1, NULL, 54, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (108, 427, 1941.725586, -2415.577148, 13.730993, 0.010986, 0.000000, 91.604004, 1937.392578, -2427.476563, 13.700635, 0.054932, 358.225708, 245.297241, 199, 1, 1, 1, 1, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'MH6 5981', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 24, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-11 15:49:48', 0, 0, '2021-08-31 21:47:36', '2021-08-24 15:18:34', 12, NULL, 1, 1, 1, NULL, 54, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (109, 443, 1953.197266, -2402.882813, 13.800335, 359.549561, 359.983521, 269.088135, 1952.684570, -2402.140625, 13.800232, 359.544067, 359.994507, 272.850952, 496, 0, 1, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'WF0 5121', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 2399, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-11 15:49:06', 0, 0, '2021-08-31 14:40:15', '2021-08-24 15:19:40', 12, NULL, 1, 1, 1, NULL, 10, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (110, 525, 1970.794922, -2427.864258, 13.445987, 358.159790, 0.000000, 43.632202, 1970.796875, -2427.861328, 13.447527, 358.187256, 359.994507, 43.725586, 100, 1, 0, 1, 0, 3, 1000, '[ [ 12, 55, 0 ] ]', '[ [ 12, 55, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'JF3 5180', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-11 15:50:53', '2021-08-24 15:21:15', 12, NULL, 1, 1, 1, NULL, 55, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (111, 528, 1967.341491, -2401.342774, 13.566853, 0.000000, 0.000000, 90.037079, 1967.341491, -2401.342774, 13.566853, 0.000000, 0.000000, 90.037079, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'IP2 7591', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:24:54', 0, 0, '2021-08-24 15:24:50', '2021-08-24 15:24:50', 12, NULL, 1, 1, 1, NULL, 56, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (112, 490, 1967.418408, -2401.318368, 13.566853, 0.000000, 0.000000, 89.894257, 1968.623047, -2401.390625, 13.694320, 0.411987, 359.939575, 90.142822, 100, 0, 0, 2, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'FJ8 9272', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:28:51', 0, 0, '2021-08-24 15:25:40', '2021-08-24 15:25:30', 12, NULL, 1, 1, 1, NULL, 57, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (113, 599, 1962.883794, -2386.146130, 13.566853, 0.000000, 0.000000, 179.917603, 1962.883794, -2386.146130, 13.566853, 0.000000, 0.000000, 179.917603, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'AN9 9627', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:29:20', 0, 0, '2021-08-24 15:29:01', '2021-08-24 15:29:01', 12, NULL, 1, 1, 1, NULL, 58, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (114, 599, 1964.197909, -2386.494596, 13.566853, 0.000000, 0.000000, 186.273285, 1964.197909, -2386.494596, 13.566853, 0.000000, 0.000000, 186.273285, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'RY4 8062', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:29:17', 0, 0, '2021-08-24 15:29:09', '2021-08-24 15:29:09', 12, NULL, 1, 1, 1, NULL, 58, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (115, 599, 1964.345703, -2385.583008, 13.764513, 0.269165, 359.604492, 179.923096, 1964.490234, -2385.111328, 13.789274, 0.164795, 359.588013, 182.400513, 62, 0, 1, 1, 0, 0, 943, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'UD4 3344', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 1, 0 ] ]', '[ [ 2, 0, 0, 0, 0, 0 ] ]', 61990, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-11 15:48:55', 0, 0, '2021-08-31 20:25:37', '2021-08-24 15:29:31', 12, NULL, 1, 1, 1, NULL, 58, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (116, 599, 1969.369141, -2385.524414, 13.789453, 0.159302, 359.642944, 181.483154, 1969.369141, -2385.524414, 13.789453, 0.159302, 359.642944, 181.483154, 100, 0, 1, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'JE6 1165', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-11 15:49:00', 0, 0, '2021-08-24 15:29:50', '2021-08-24 15:29:40', 12, NULL, 1, 1, 1, NULL, 58, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (117, 601, 1967.389259, -2400.371695, 13.566853, 0.000000, 0.000000, 90.888550, 1967.389259, -2400.371695, 13.566853, 0.000000, 0.000000, 90.888550, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'MU0 7820', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 3, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:31:48', 0, 0, '2021-08-24 15:31:26', '2021-08-24 15:31:15', 12, NULL, 1, 1, 1, NULL, 59, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (118, 597, 1969.003906, -2401.798828, 13.298497, 0.027466, 0.049438, 89.577026, 1969.003906, -2401.798828, 13.298497, 0.027466, 0.043945, 89.577026, 39, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'CI2 7659', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 34974, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-11 15:49:34', 0, 0, '2021-08-31 18:10:04', '2021-08-24 15:32:29', 12, NULL, 1, 1, 1, NULL, 60, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (119, 597, 1968.219379, -2392.408781, 13.296535, 0.000000, 0.000000, 88.571442, 1968.219379, -2392.408781, 13.296535, 0.000000, 0.000000, 88.571442, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'HN4 6446', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:33:02', 0, 0, '2021-08-24 15:32:49', '2021-08-24 15:32:49', 12, NULL, 1, 1, 1, NULL, 60, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (120, 597, 1969.950195, -2407.652344, 13.301083, 0.027466, 0.065918, 92.609253, 1158.953125, -932.935547, 42.770676, 359.978027, 0.153809, 206.488037, 49, 0, 0, 2, 0, 0, 679.5, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'WI3 3542', 1, -1, -1, 0, 368, 56, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 2, 1, 0, 0, 1, 2, 2 ] ]', '[ [ 2, 2, 1, 0, 2, 0 ] ]', 37112, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-11 15:49:31', 0, 0, '2021-09-01 17:07:21', '2021-08-24 15:33:28', 12, NULL, 1, 1, 1, NULL, 60, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (121, 523, 1967.490234, -2410.875000, 13.132931, 359.197998, 359.994507, 90.510864, 1968.653320, -2411.267578, 13.157169, 359.945068, 0.000000, 90.225220, 7, 0, 0, 2, 0, 0, 963, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'TN7 3855', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 14794, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-11 15:49:28', 0, 0, '2021-08-31 21:18:18', '2021-08-24 15:34:48', 12, NULL, 1, 1, 1, NULL, 61, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (122, 523, 1953.099609, -2415.059570, 13.139717, 359.263916, 0.000000, 270.933838, 1951.583008, -2415.275391, 13.157139, 359.950562, 359.994507, 269.604492, 10, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'QA2 5549', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 1751, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-11 15:49:15', 0, 0, '2021-08-31 19:17:44', '2021-08-24 15:34:51', 12, NULL, 1, 1, 1, NULL, 61, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (123, 523, 1953.309570, -2420.647461, 13.142618, 359.088135, 0.000000, 271.625977, 1919.333984, -2426.098633, 13.156947, 359.939575, 359.989014, 73.526001, 10, 1, 0, 2, 0, 0, 737.5, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'EW4 6086', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 259, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-11 15:49:19', 0, 0, '2021-08-31 21:41:44', '2021-08-24 15:34:54', 12, NULL, 1, 1, 1, NULL, 61, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (124, 523, 1967.084961, -2420.862305, 13.136412, 359.230957, 359.994507, 93.488159, 1969.768555, -2402.214844, 13.137954, 359.247437, 0.000000, 93.268433, 6, 0, 1, 1, 0, 0, 834, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'ZU8 8178', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 13823, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-11 15:49:23', 0, 0, '2021-08-28 23:15:32', '2021-08-24 15:34:56', 12, NULL, 1, 1, 1, NULL, 61, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (125, 523, 1967.627930, -2415.847656, 13.133970, 359.208984, 359.994507, 89.681396, 1967.708984, -2415.945313, 13.181416, 359.961548, 0.000000, 92.120361, 10, 1, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'RO8 6665', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 9085, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-11 15:49:25', 0, 0, '2021-08-31 19:21:38', '2021-08-24 15:34:58', 12, NULL, 1, 1, 1, NULL, 61, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (126, 428, 1942.291016, -2420.163086, 13.700680, 0.219727, 0.021973, 89.088135, 1950.539063, -2427.324219, 13.695189, 0.225220, 0.000000, 248.582153, 148, 1, 1, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'CL7 2521', 1, -1, -1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 0, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-11 15:49:52', 0, 0, '2021-08-31 21:47:19', '2021-08-24 15:37:47', 12, NULL, 1, 1, 1, NULL, 62, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (127, 433, -717.410530, 960.084574, 12.330192, 0.000000, 0.000000, 182.433517, -717.410530, 960.084574, 12.330192, 0.000000, 0.000000, 182.433517, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'CB6 5178', 1, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:56:36', 0, 0, '2021-08-24 15:56:30', '2021-08-24 15:56:30', 12, NULL, 1, 1, 1, NULL, 63, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (128, 433, -707.985352, 939.297852, 12.845428, 0.126343, 359.923096, 270.065918, 634.786133, -82.006836, 16.658714, 3.372803, 344.448853, 281.140137, 87, 1, 1, 2, 0, 0, 945, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'LS1 4987', 2, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 2131, '[ [ 255, 255, 255 ] ]', 1, 255, NULL, '', '', '', '', '', NULL, NULL, 5, '2021-08-29 17:11:59', 0, 0, '2021-08-25 20:19:21', '2021-08-24 15:56:37', 12, NULL, 1, 1, 1, NULL, 63, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (129, 433, -713.433436, 931.649493, 12.308966, 0.000000, 0.000000, 269.677277, -713.433436, 931.649493, 12.308966, 0.000000, 0.000000, 269.677277, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'BU3 8541', 1, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 15:57:47', 0, 0, '2021-08-24 15:57:42', '2021-08-24 15:57:42', 12, NULL, 1, 1, 1, NULL, 63, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (130, 433, -707.685547, 931.607422, 12.805035, 359.417725, 359.989014, 268.736572, -708.292969, 931.595703, 12.855214, 359.802246, 359.972534, 270.670166, 15, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'AF7 9362', 9, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 6786, '[ [ 255, 255, 255 ] ]', 0, 255, NULL, '', '', '', '', '', NULL, NULL, 17, '2021-08-28 12:25:53', 0, 0, '2021-08-26 19:52:19', '2021-08-24 15:57:52', 12, NULL, 1, 1, 1, NULL, 63, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (131, 597, -698.453125, 968.425781, 12.203296, 0.834961, 359.719849, 180.142822, 125.664063, -158.154297, 1.334331, 0.016479, 0.049438, 95.784302, 40, 1, 0, 2, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'OO7 5166', 9, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 49522, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 17, '2021-08-28 12:25:53', 0, 0, '2021-08-27 21:35:54', '2021-08-24 15:58:18', 12, NULL, 1, 1, 1, NULL, 60, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (132, 597, -695.288086, 969.417969, 12.187970, 0.966797, 359.857178, 176.874390, -695.600586, 969.270508, 12.189240, 0.950317, 0.032959, 175.968018, 45, 0, 0, 1, 0, 0, 926.5, '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 214, 218, 214 ] ]', 'ZF4 2597', 9, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 1, 0, 0, 0, 1, 0 ] ]', '[ [ 2, 0, 0, 0, 0, 0 ] ]', 84498, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 17, '2021-08-28 12:25:53', 0, 0, '2021-08-27 21:48:02', '2021-08-24 15:59:39', 12, NULL, 1, 1, 1, NULL, 60, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (133, 497, -779.555005, 954.565932, 12.957058, 0.000000, 0.000000, 325.867706, -779.457031, 954.574219, 13.681335, 1.977539, 0.631714, 325.288696, 100, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'HG0 7021', 1, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 16:21:34', 0, 0, '2021-08-24 16:20:48', '2021-08-24 16:20:48', 12, NULL, 1, 1, 1, NULL, 64, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (134, 548, -779.262658, 956.159750, 12.962756, 0.000000, 0.000000, 324.368042, -779.262658, 956.159750, 12.962756, 0.000000, 0.000000, 324.368042, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'NS5 6386', 1, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-24 16:22:42', 0, 0, '2021-08-24 16:22:33', '2021-08-24 16:22:33', 12, NULL, 1, 1, 1, NULL, 65, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (135, 487, -779.608398, 956.273438, 10.298706, 0.285645, 359.703369, 327.815552, -779.608398, 956.273438, 10.298706, 0.285645, 359.703369, 327.815552, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'HS0 8534', 1, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-25 17:59:17', 0, 0, '2021-08-24 16:22:45', '2021-08-24 16:22:45', 12, NULL, 1, 1, 1, NULL, 66, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (136, 563, -807.907227, 931.480469, 13.531604, 3.268433, 0.505371, 326.771851, -807.845703, 931.458984, 13.519412, 3.147583, 0.505371, 326.513672, 100, 0, 0, 1, 0, 0, 992.5, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'DC7 8588', 9, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 12, '2021-08-25 17:58:57', 0, 0, '2021-08-24 16:23:20', '2021-08-24 16:23:20', 12, NULL, 1, 1, 1, NULL, 67, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (137, 601, -729.079102, 988.064453, 12.295424, 356.429443, 358.802490, 261.447144, -714.089844, 922.551758, 12.086239, 0.626221, 2.307129, 188.058472, 135, 1, 1, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'JB8 8060', 9, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 1, 0, 0, 0 ] ]', 5569, '[ [ 255, 255, 255 ] ]', 1, 255, NULL, '', '', '', '', '', NULL, NULL, 17, '2021-08-28 12:25:53', 0, 0, '2021-08-26 23:27:57', '2021-08-24 16:24:38', 12, NULL, 1, 1, 1, NULL, 59, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (138, 601, -728.889648, 995.690430, 12.217232, 356.440430, 359.730835, 269.527588, -728.889648, 995.690430, 12.217232, 356.440430, 359.730835, 269.527588, 100, 0, 1, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'DK9 7051', 9, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 26, '[ [ 255, 255, 255 ] ]', 2, 255, NULL, '', '', '', '', '', NULL, NULL, 17, '2021-08-28 12:25:53', 0, 0, '2021-08-24 16:25:06', '2021-08-24 16:24:41', 12, NULL, 1, 1, 1, NULL, 59, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (139, 490, -728.504883, 959.203125, 12.496296, 357.352295, 1.483154, 265.753784, -728.535156, 959.240234, 12.497546, 357.374268, 1.961060, 270.010986, 46, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'TJ5 4059', 9, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 49071, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 17, '2021-08-28 12:25:53', 0, 0, '2021-08-27 20:49:40', '2021-08-24 16:28:51', 12, NULL, 1, 1, 1, NULL, 57, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (140, 490, -728.141602, 963.273438, 12.584897, 357.171021, 1.181030, 266.165771, -727.221680, 966.251953, 12.505920, 358.417969, 357.670898, 264.583740, 71, 1, 0, 1, 0, 0, 991, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'XJ5 7545', 9, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 2, 0, 0 ] ]', 23881, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 17, '2021-08-28 12:25:53', 0, 0, '2021-08-27 19:32:20', '2021-08-24 16:29:48', 12, NULL, 1, 1, 1, NULL, 57, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (141, 472, -659.557617, 874.411133, 0.094482, 2.400513, 359.956055, 226.730347, -660.125000, 874.932617, 0.083337, 2.400513, 359.967041, 230.081177, 100, 0, 1, 1, 0, 0, 991.5, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'NS9 7868', 9, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 9026, '[ [ 255, 255, 255 ] ]', 0, 255, NULL, '', '', '', '', '', NULL, NULL, 17, '2021-08-28 12:25:53', 0, 0, '2021-08-26 13:28:03', '2021-08-24 17:07:17', 12, NULL, 1, 1, 1, NULL, 68, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (142, 472, -636.536133, 860.496094, 2.000005, 0.000000, 0.000000, 313.264160, -409.099609, 296.265625, 1.454092, 359.154053, 348.283081, 77.854614, 100, 1, 0, 1, 0, 0, 999, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'SR3 5602', 9, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 1816, '[ [ 255, 255, 255 ] ]', 2, 255, NULL, '', '', '', '', '', NULL, NULL, 17, '2021-08-28 12:25:53', 0, 0, '2021-08-26 21:01:04', '2021-08-24 17:07:28', 12, NULL, 1, 1, 1, NULL, 68, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (143, 416, 1934.315610, -2412.434877, 13.566853, 0.000000, 0.000000, 269.062012, 1934.315430, -2412.444336, 13.743550, 0.032959, 359.664917, 268.950806, 100, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'NF9 1400', 2, -1, -1, 1, 271, 56, 271, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 1, '[ [ 255, 255, 255 ] ]', 0, 255, NULL, '', '', '', '', '', NULL, NULL, 4, '2021-08-24 17:16:15', 0, 0, '2021-08-24 17:12:51', '2021-08-24 17:10:39', 4, NULL, 1, 1, 1, NULL, 4, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (144, 415, 1937.249324, -2411.760919, 13.573814, 0.000000, 0.000000, 359.057922, 1937.249324, -2411.760919, 13.573814, 0.000000, 0.000000, 359.057922, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'SD4 1372', -1, 4, -1, 0, 271, 56, 271, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 4, '2021-08-24 17:19:22', 0, 0, '2021-08-24 17:18:57', '2021-08-24 17:18:57', 4, NULL, 1, 1, 1, NULL, 18, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (145, 416, 1933.186578, -2404.079995, 13.573814, 0.000000, 0.000000, 103.473572, 1933.186578, -2404.079995, 13.573814, 0.000000, 0.000000, 103.473572, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'EZ3 1972', -1, 4, -1, 0, 271, 56, 271, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 0, 255, NULL, '', '', '', '', '', NULL, NULL, 4, '2021-08-24 17:24:14', 0, 0, '2021-08-24 17:24:02', '2021-08-24 17:24:02', 4, NULL, 1, 1, 1, NULL, 4, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (146, 419, -111.775253, 1146.525146, 20.635662, 5.366821, 2.664185, 142.382813, -111.775253, 1146.525146, 20.635662, 5.366821, 2.664185, 142.382813, 69, 1, 1, 1, 0, 0, 477, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'MG8 1422', -1, 7, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 2, 0, 0 ] ]', 19100, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-08-24 18:32:24', 0, 0, '2021-08-24 18:32:00', '2021-08-24 17:32:31', 4, NULL, 1, 1, 1, NULL, 40, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (147, 416, 1941.783203, -2402.075195, 13.711870, 0.032959, 359.544067, 90.609741, 1941.783203, -2402.075195, 13.711870, 0.032959, 359.544067, 90.609741, 96, 0, 1, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 255, 0, 0 ] ]', '[ [ 255, 0, 0 ] ]', '[ [ 248, 0, 0 ] ]', 'UJ4 4196', 2, -1, -1, 0, 271, 56, 271, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 4, '[ [ 255, 255, 255 ] ]', 0, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-24 17:43:25', '2021-08-24 17:33:12', 4, NULL, 1, 1, 1, NULL, 4, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (148, 416, 1941.708984, -2406.339844, 13.715994, 0.038452, 359.609985, 89.088135, 1941.708984, -2406.339844, 13.715994, 0.038452, 359.609985, 89.088135, 99, 0, 1, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'CI9 4057', 2, -1, -1, 0, 271, 56, 271, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 33, '[ [ 255, 255, 255 ] ]', 1, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-24 17:42:10', '2021-08-24 17:40:21', 4, NULL, 1, 1, 1, NULL, 4, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (149, 416, 1941.659180, -2410.707031, 13.718046, 0.082397, 359.714355, 89.401245, 1941.659180, -2410.707031, 13.718046, 0.082397, 359.714355, 89.401245, 97, 0, 1, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'GD1 3107', 2, -1, -1, 0, 271, 56, 271, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 67, '[ [ 255, 255, 255 ] ]', 0, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-24 17:47:18', '2021-08-24 17:47:08', 4, NULL, 1, 1, 1, NULL, 4, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (150, 416, 1941.708984, -2415.634766, 13.723105, 0.038452, 359.609985, 90.823975, 1941.708984, -2415.634766, 13.723105, 0.038452, 359.609985, 90.823975, 99, 0, 1, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'UK7 6927', 2, -1, -1, 0, 271, 56, 271, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 2, '[ [ 255, 255, 255 ] ]', 0, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-24 17:50:44', '2021-08-24 17:49:33', 4, NULL, 1, 1, 1, NULL, 4, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (151, 416, 1941.749023, -2420.173828, 13.724099, 0.170288, 359.368286, 89.835205, 1941.749023, -2420.173828, 13.724099, 0.170288, 359.368286, 89.835205, 98, 0, 1, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'TR2 9387', 2, -1, -1, 0, 271, 56, 271, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 92, '[ [ 255, 255, 255 ] ]', 1, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-24 17:53:07', '2021-08-24 17:52:48', 4, NULL, 1, 1, 1, NULL, 4, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (152, 504, 1930.491211, -2409.002930, 13.224671, 0.032959, 359.978027, 236.771851, 1930.491211, -2409.002930, 13.224671, 0.032959, 359.978027, 236.771851, 100, 1, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'LH8 7400', -1, -2, 0, 0, 271, 56, 271, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 129, '[ [ 255, 255, 255 ] ]', 0, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-08-24 17:56:37', 0, 0, '2021-08-24 17:53:21', '2021-08-24 17:53:12', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (153, 407, 1941.928711, -2402.228516, 13.803983, 0.307617, 0.000000, 89.983521, 1941.928711, -2402.228516, 13.803983, 0.307617, 0.000000, 89.983521, 95, 0, 1, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'UJ7 6801', 2, -1, -1, 0, 265, 56, 265, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 227, '[ [ 255, 255, 255 ] ]', 1, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-24 18:10:43', '2021-08-24 17:56:27', 4, NULL, 1, 1, 1, NULL, 1, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (154, 544, 1960.527344, -2387.366211, 13.795012, 359.412231, 359.774780, 176.978760, 1960.528320, -2387.365234, 13.795960, 359.417725, 359.730835, 177.028198, 72, 0, 1, 1, 0, 3, 963.5, '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'QL0 8888', 2, -1, -1, 0, 265, 56, 265, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 2, 0, 0, 0 ] ]', 1686, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-24 18:07:48', '2021-08-24 17:56:54', 4, NULL, 1, 1, 1, NULL, 2, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (155, 560, 1938.237594, -2404.328707, 13.726028, 0.000000, 0.000000, 30.549469, -112.962891, 1157.694336, 19.251093, 359.934082, 359.994507, 180.433960, 96, 1, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'CN2 4481', -1, -2, 0, 0, 271, 56, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 1, 0, 0, 0 ] ]', 2313, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 4, '2021-08-25 08:48:52', 0, 0, '2021-08-24 18:31:48', '2021-08-24 17:56:56', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (156, 416, 1952.563477, -2420.326172, 13.721180, 359.994507, 359.505615, 270.120850, 1952.563477, -2420.326172, 13.721180, 359.994507, 359.505615, 270.120850, 96, 0, 1, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'HK8 2606', 2, -1, -1, 0, 271, 56, 271, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 310, '[ [ 255, 255, 255 ] ]', 0, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-24 18:16:17', '2021-08-24 18:13:51', 4, NULL, 1, 1, 1, NULL, 4, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (157, 468, -184.198242, 253.988281, 11.690542, 12.403564, 359.785767, 231.135864, -30.179688, 1129.190430, -35.504677, 287.704468, 350.645142, 204.911499, 99, 1, 0, 1, 0, 3, 784.5, '[ [ 127, 0, 6 ] ]', '[ [ 215, 142, 16 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'QT1 7273', -1, 16, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 6055851, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 4, '2021-08-24 18:33:10', 0, 0, '2021-08-24 18:18:22', '2021-08-24 18:16:08', -1, NULL, 1, 1, 1, NULL, 15, 0, '[ [ ] ]', -1, NULL, 1, NULL, 0);
INSERT INTO `vehicles` VALUES (158, 416, 1952.488281, -2415.559570, 13.715842, 0.038452, 359.609985, 270.692139, 1952.488281, -2415.559570, 13.715842, 0.038452, 359.609985, 270.692139, 99, 0, 1, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'TI7 6627', 2, -1, -1, 0, 271, 56, 271, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 1, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-24 18:17:58', '2021-08-24 18:17:31', 4, NULL, 1, 1, 1, NULL, 4, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (159, 416, 1952.472656, -2410.918945, 13.716002, 0.038452, 359.609985, 270.637207, 1952.472656, -2410.918945, 13.716002, 0.038452, 359.609985, 270.637207, 99, 0, 1, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'NT8 4539', 2, -1, -1, 0, 271, 56, 271, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 1, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-24 18:18:47', '2021-08-24 18:18:28', 4, NULL, 1, 1, 1, NULL, 4, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (160, 416, 1952.312500, -2402.305664, 13.716209, 0.038452, 359.609985, 271.213989, 1952.312500, -2402.305664, 13.716209, 0.038452, 359.609985, 271.213989, 99, 0, 1, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'YP0 4854', 2, -1, -1, 0, 271, 56, 271, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 4, '[ [ 255, 255, 255 ] ]', 0, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-24 18:21:45', '2021-08-24 18:20:20', 4, NULL, 1, 1, 1, NULL, 4, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (161, 416, 1952.393555, -2406.439453, 13.716001, 0.038452, 359.609985, 270.988770, 1952.393555, -2406.439453, 13.716001, 0.038452, 359.609985, 270.988770, 99, 0, 1, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'BI1 8439', 2, -1, -1, 0, 271, 56, 271, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 54, '[ [ 255, 255, 255 ] ]', 1, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-24 18:21:13', '2021-08-24 18:20:24', 4, NULL, 1, 1, 1, NULL, 4, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (162, 407, 1941.880859, -2406.509766, 13.801450, 0.313110, 0.000000, 88.643188, 1941.880859, -2406.509766, 13.801450, 0.313110, 0.000000, 88.643188, 93, 0, 1, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'KW0 9883', 2, -1, -1, 0, 265, 56, 265, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 4, '[ [ 255, 255, 255 ] ]', 1, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-24 19:25:02', '2021-08-24 19:24:20', 4, NULL, 1, 1, 1, NULL, 1, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (163, 407, 1941.842773, -2410.680664, 13.803353, 0.357056, 0.109863, 90.186768, 1941.842773, -2410.680664, 13.803353, 0.357056, 0.109863, 90.186768, 92, 0, 1, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'DB9 4104', 2, -1, -1, 0, 265, 56, 265, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 26, '[ [ 255, 255, 255 ] ]', 1, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-24 19:29:21', '2021-08-24 19:26:30', 4, NULL, 1, 1, 1, NULL, 1, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (164, 407, 1941.826172, -2415.254883, 13.807190, 0.357056, 0.109863, 91.312866, 1941.826172, -2415.254883, 13.807190, 0.357056, 0.109863, 91.312866, 93, 0, 1, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'JM1 8224', 2, -1, -1, 0, 265, 56, 265, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 0, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-24 19:28:33', '2021-08-24 19:26:36', 4, NULL, 1, 1, 1, NULL, 1, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (165, 407, 1941.833984, -2420.196289, 13.810397, 0.307617, 0.000000, 88.483887, 1941.833984, -2420.196289, 13.810397, 0.307617, 0.000000, 88.483887, 95, 0, 1, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'UJ4 6316', 2, -1, -1, 0, 265, 56, 265, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 8, '[ [ 255, 255, 255 ] ]', 0, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-24 19:30:02', '2021-08-24 19:26:36', 4, NULL, 1, 1, 1, NULL, 1, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (166, 407, 1968.875977, -2402.045898, 13.803610, 0.302124, 0.093384, 90.247192, 1968.875977, -2402.045898, 13.803610, 0.302124, 0.093384, 90.247192, 98, 0, 1, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'NG3 8496', 2, -1, -1, 0, 265, 56, 265, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 2, '[ [ 255, 255, 255 ] ]', 2, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-25 08:45:02', '2021-08-24 19:31:14', 4, NULL, 1, 1, 1, NULL, 1, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (167, 419, -368.835938, -432.378906, 11.157928, 1.560059, 359.813232, 4.515381, -368.835938, -432.378906, 11.157928, 1.560059, 359.813232, 4.515381, 43, 0, 1, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'allah', -1, 7, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 157258, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-12 11:37:09', 0, 0, '2021-08-31 02:37:34', '2021-08-24 19:31:16', 9, NULL, 1, 1, 1, NULL, 40, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (168, 407, 1968.851563, -2406.128906, 13.826052, 0.258179, 359.994507, 91.241455, 1968.890625, -2406.138672, 13.783971, 0.351563, 359.989014, 91.730347, 100, 0, 0, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'SU3 3192', -1, 27, -1, 0, 265, 56, 265, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 0, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-24 19:31:23', '2021-08-24 19:31:23', 4, NULL, 1, 1, 1, NULL, 1, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (169, 407, 1969.219727, -2410.858398, 13.868466, 0.159302, 0.000000, 88.967285, 1969.222656, -2410.856445, 13.794840, 0.324097, 359.884644, 89.044189, 100, 0, 0, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'PK4 4676', 2, -1, -1, 0, 265, 56, 265, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 2, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-24 19:31:27', '2021-08-24 19:31:27', 4, NULL, 1, 1, 1, NULL, 1, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (170, 407, 1969.437500, -2415.570313, 13.862159, 0.175781, 0.000000, 90.889893, 1969.437500, -2415.570313, 13.862159, 0.175781, 0.000000, 90.889893, 100, 0, 0, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'NZ7 6680', 2, -1, -1, 0, 265, 56, 265, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 2, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-24 19:31:32', '2021-08-24 19:31:32', 4, NULL, 1, 1, 1, NULL, 1, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (171, 407, 1969.834961, -2420.313477, 13.862687, 0.175781, 0.000000, 92.812500, 1969.837891, -2420.310547, 13.794799, 0.335083, 0.038452, 92.894897, 100, 0, 0, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'TV0 4658', 2, -1, -1, 0, 265, 56, 265, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 2, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-24 19:31:38', '2021-08-24 19:31:38', 4, NULL, 1, 1, 1, NULL, 1, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (172, 544, 1955.999023, -2387.149414, 13.793616, 359.406738, 359.774780, 179.055176, 1955.998047, -2387.148438, 13.795111, 359.412231, 359.824219, 179.126587, 99, 0, 1, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'AI2 9306', 2, -1, -1, 0, 265, 56, 265, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-25 08:44:28', '2021-08-25 08:43:48', 4, NULL, 1, 1, 1, NULL, 2, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (173, 552, 1968.535156, -2401.958984, 13.238080, 358.439941, 359.912109, 89.269409, 1968.594727, -2401.572266, 13.246511, 358.610229, 359.703369, 89.379272, 40, 0, 1, 1, 0, 0, 962.5, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'QR5 7270', 2, -1, -1, 0, 271, 56, 271, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 1, 1 ] ]', '[ [ 0, 2, 0, 0, 0, 0 ] ]', 26729, '[ [ 255, 255, 255 ] ]', 0, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-26 23:28:03', '2021-08-25 08:49:46', 4, NULL, 1, 1, 1, NULL, 69, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (174, 552, 1968.536133, -2406.586914, 13.240000, 358.467407, 359.912109, 88.341064, 1968.536133, -2406.586914, 13.240000, 358.467407, 359.912109, 88.341064, 100, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'RI5 3964', 2, -1, -1, 0, 271, 56, 271, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 36, '[ [ 255, 255, 255 ] ]', 1, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-25 08:50:53', '2021-08-25 08:50:45', 4, NULL, 1, 1, 1, NULL, 69, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (175, 552, 1968.620117, -2411.138672, 13.238400, 358.445435, 359.912109, 89.989014, 1968.621094, -2411.137695, 13.239719, 358.566284, 359.675903, 90.060425, 100, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'VP4 3423', 2, -1, -1, 0, 271, 56, 271, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 1, '[ [ 255, 255, 255 ] ]', 0, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-25 08:53:06', '2021-08-25 08:51:54', 4, NULL, 1, 1, 1, NULL, 69, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (176, 552, 1968.618164, -2415.857422, 13.227899, 358.280640, 359.912109, 88.775024, 1968.618164, -2415.857422, 13.227899, 358.280640, 359.912109, 88.775024, 100, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'PS9 8569', 2, -1, -1, 0, 271, 56, 271, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 1, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-25 08:53:34', '2021-08-25 08:52:21', 4, NULL, 1, 1, 1, NULL, 69, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (177, 552, 1968.543945, -2420.213867, 13.231898, 358.341064, 359.912109, 89.769287, 1968.545898, -2420.212891, 13.233436, 358.505859, 359.714355, 89.857178, 100, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'VK6 2864', 2, -1, -1, 0, 271, 56, 271, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 2, '[ [ 255, 255, 255 ] ]', 1, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-25 08:53:59', '2021-08-25 08:52:26', 4, NULL, 1, 1, 1, NULL, 69, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (178, 563, 248.894531, -229.584961, 8.545007, 3.339844, 0.000000, 1.268921, 248.894531, -229.584961, 8.545007, 3.339844, 0.000000, 1.268921, 26, 0, 0, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 255, 255, 255 ] ]', '[ [ 255, 0, 0 ] ]', '[ [ 255, 0, 0 ] ]', 'CF8 7475', 2, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 1, 0, 0, 0 ] ]', 1810, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-30 18:41:29', '2021-08-25 08:55:13', 4, NULL, 1, 1, 1, NULL, 67, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (179, 544, 1951.294922, -2386.964844, 13.762918, 359.269409, 359.725342, 179.296875, 157.480469, -163.494141, 1.805356, 359.406738, 359.791260, 268.286133, 85, 0, 0, 1, 0, 3, 999, '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'UA5 8715', 2, -1, -1, 0, 265, 56, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 692, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-25 19:10:02', '2021-08-25 08:57:38', 4, NULL, 1, 1, 1, NULL, 2, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (180, 552, 1946.863281, -2386.729492, 13.236806, 358.417969, 359.912109, 179.571533, 1946.868164, -2386.382813, 13.231151, 358.335571, 0.021973, 179.653931, 100, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'LG7 9616', 2, -1, -1, 0, 265, 56, 265, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-26 11:28:52', '2021-08-25 08:58:42', 4, NULL, 1, 1, 1, NULL, 69, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (181, 552, 1937.708008, -2386.583984, 13.257073, 358.731079, 359.868164, 181.543579, 1937.708984, -2386.583008, 13.258222, 358.736572, 359.972534, 181.604004, 100, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'HO4 4986', 2, -1, -1, 0, 265, 56, 265, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 3, '[ [ 255, 255, 255 ] ]', 0, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-25 08:59:43', '2021-08-25 08:59:43', 4, NULL, 1, 1, 1, NULL, 69, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (182, 552, 1942.370117, -2386.511719, 13.231214, 358.330078, 359.912109, 179.456177, 1942.370117, -2386.511719, 13.231214, 358.330078, 359.912109, 179.450684, 100, 0, 0, 1, 0, 0, 999.5, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'NN0 1207', 2, -1, -1, 0, 265, 56, 265, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 60, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-25 09:01:47', '2021-08-25 09:00:11', 4, NULL, 1, 1, 1, NULL, 69, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (183, 431, 375.744141, 2469.133789, 16.599476, 359.544067, 0.043945, 179.230957, 375.744141, 2469.133789, 16.599476, 359.544067, 0.043945, 179.230957, 800, 0, 0, 1, 0, 3, 1000, '[ [ 249, 0, 0 ] ]', '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'EZ2 8097', -1, -2, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 68, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-08-25 21:00:30', 0, 0, '2021-08-25 09:14:34', '2021-08-25 09:14:16', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (184, 431, 407.154297, 2561.428711, 16.517149, 359.895630, 359.373779, 94.542847, 407.154297, 2561.428711, 16.517149, 359.895630, 359.373779, 94.542847, 475, 1, 0, 2, 0, 3, 993, '[ [ 255, 0, 0 ] ]', '[ [ 253, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'LY1 2588', -1, -2, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 1, 0, 0 ] ]', 16888, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-08-25 21:00:21', 0, 0, '2021-08-25 20:49:27', '2021-08-25 09:14:26', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (185, 503, 419.879883, 2489.929688, 15.866590, 0.626221, 359.950562, 88.945313, 425.907227, 2499.772461, 15.871240, 0.774536, 0.065918, 258.299561, 39, 1, 0, 2, 0, 0, 717.5, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'FX0 3665', 8, -1, -1, 100, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 0, 0, 0, 0, 1, 2 ] ]', '[ [ 2, 2, 0, 0, 0, 0 ] ]', 8987, '[ [ 255, 255, 255 ] ]', 5, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-08-25 20:56:35', 0, 0, '2021-08-25 20:37:06', '2021-08-25 09:22:00', 1, NULL, 1, 1, 1, NULL, 70, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (186, 503, 424.181641, 2489.567383, 15.871074, 0.780029, 359.978027, 90.444946, 424.181641, 2489.567383, 15.871074, 0.780029, 359.978027, 90.444946, 30, 1, 0, 1, 0, 0, 918.5, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'BL9 1814', 8, -1, -1, 100, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 2, 0, 0, 0, 3, 1 ] ]', '[ [ 0, 3, 1, 0, 0, 0 ] ]', 8544, '[ [ 255, 255, 255 ] ]', 1, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-08-25 20:56:26', 0, 0, '2021-08-25 20:39:26', '2021-08-25 09:22:06', 1, NULL, 1, 1, 1, NULL, 70, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (187, 586, 1937.782227, -2386.447266, 13.597507, 0.554810, 359.994507, 178.956299, 1937.782227, -2386.447266, 13.597507, 0.554810, 359.994507, 178.956299, 15, 0, 0, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'AH1 8329', 2, -1, -1, 0, 271, 56, 271, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-25 09:27:21', '2021-08-25 09:27:14', 4, NULL, 1, 1, 1, NULL, 53, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (188, 586, 1942.538086, -2386.346680, 13.599170, 0.115356, 359.994507, 178.291626, 1942.538086, -2386.346680, 13.599170, 0.109863, 359.994507, 178.291626, 100, 0, 0, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'GS7 9007', 2, -1, -1, 0, 271, 56, 271, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-25 09:28:00', '2021-08-25 09:27:54', 4, NULL, 1, 1, 1, NULL, 53, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (189, 586, 1946.802734, -2386.225586, 13.599270, 0.126343, 0.000000, 181.285400, 1946.802734, -2386.225586, 13.599270, 0.126343, 0.000000, 181.285400, 15, 0, 0, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'XY5 7746', 2, -1, -1, 0, 271, 56, 271, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 33, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-25 09:29:03', '2021-08-25 09:28:23', 4, NULL, 1, 1, 1, NULL, 53, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (190, 490, 1969.602539, -2386.469727, 13.694207, 0.406494, 359.994507, 178.527832, 1969.602539, -2386.469727, 13.694207, 0.401001, 359.994507, 178.527832, 100, 0, 0, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 255, 255, 255 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'GV8 3648', 2, -1, -1, 0, 271, 56, 271, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-25 09:35:09', '2021-08-25 09:35:02', 4, NULL, 1, 1, 1, NULL, 57, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (191, 490, 1964.969727, -2386.394531, 13.695038, 0.406494, 359.994507, 179.494629, 1964.969727, -2386.394531, 13.695038, 0.406494, 359.994507, 179.494629, 100, 0, 0, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 255, 255, 255 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'UQ8 8221', 2, -1, -1, 0, 271, 56, 271, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 6, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-25 09:37:36', '2021-08-25 09:35:51', 4, NULL, 1, 1, 1, NULL, 57, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (192, 490, 1960.422852, -2386.200195, 13.694621, 0.406494, 359.994507, 176.830444, 1960.422852, -2386.200195, 13.694621, 0.401001, 359.994507, 176.830444, 100, 0, 0, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 255, 255, 255 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'OC7 1837', 2, -1, -1, 0, 271, 56, 271, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 56, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-25 09:39:16', '2021-08-25 09:39:09', 4, NULL, 1, 1, 1, NULL, 57, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (193, 560, 1951.464844, -2385.926758, 13.219653, 359.785767, 359.994507, 180.450439, 1951.198242, -2386.218750, 13.219824, 359.785767, 359.994507, 179.538574, 44, 0, 0, 2, 1, 3, 1000, '[ [ 137, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'VT8 9709', 2, -1, -1, 0, 271, 56, 271, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 28624, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-30 00:34:46', '2021-08-25 09:40:44', 4, NULL, 1, 1, 1, NULL, 21, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (194, 560, 1955.952148, -2386.094727, 13.220224, 359.785767, 359.994507, 178.862915, 1955.953125, -2386.093750, 13.221257, 359.785767, 0.027466, 178.917847, 100, 0, 0, 1, 0, 3, 1000, '[ [ 130, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'FS4 5936', 2, -1, -1, 0, 271, 56, 271, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-25 09:41:11', '2021-08-25 09:41:03', 4, NULL, 1, 1, 1, NULL, 21, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (237, 440, -616.228516, -525.428711, 25.626955, 359.187012, 359.945068, 353.655396, -619.234375, -525.186523, 25.644007, 359.324341, 359.934082, 1.582031, 99, 0, 0, 1, 0, 3, 965, '[ [ 0, 255, 69 ] ]', '[ [ 159, 157, 148 ] ]', '[ [ 51, 95, 63 ] ]', '[ [ 159, 157, 148 ] ]', 'BW0 9818', 16, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 2, 2, 0, 0 ] ]', 12042, '[ [ 255, 255, 255 ] ]', 2, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-31 01:24:07', '2021-08-27 20:39:14', 1, NULL, 1, 1, 1, NULL, 74, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (214, 428, 724.304846, -658.130228, 16.507813, 0.000000, 0.000000, 76.353394, 724.304846, -658.130228, 16.507813, 0.000000, 0.000000, 76.353394, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'WM7 1054', -1, 15, -1, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 1, 255, NULL, '', '', '', '', '', NULL, NULL, 11, '2021-08-25 19:31:17', 0, 0, '2021-08-25 19:31:08', '2021-08-25 19:31:08', 11, NULL, 1, 1, 1, NULL, 62, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (195, 490, 1965.112305, -2386.873047, 13.695745, 0.401001, 359.994507, 180.911865, 1965.112305, -2386.873047, 13.695745, 0.401001, 359.994507, 180.911865, 100, 0, 0, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 255, 255, 255 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'BA5 3855', 2, -1, -1, 0, 265, 56, 265, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-25 09:55:23', '2021-08-25 09:55:03', 4, NULL, 1, 1, 1, NULL, 57, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (196, 490, 1969.363281, -2386.833008, 13.695321, 0.406494, 359.994507, 179.511108, 1969.366211, -2386.832031, 13.696767, 0.390015, 359.862671, 179.593506, 100, 0, 0, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 255, 255, 255 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'AR8 7758', 2, -1, -1, 0, 265, 56, 265, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-25 09:55:46', '2021-08-25 09:55:14', 4, NULL, 1, 1, 1, NULL, 57, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (197, 586, 1952.089844, -2420.540039, 13.605560, 0.296631, 359.994507, 268.192749, 1952.089844, -2420.540039, 13.605791, 0.109863, 0.000000, 268.192749, 100, 0, 0, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'ZH2 8320', 2, -1, -1, 0, 265, 56, 265, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-25 09:58:26', '2021-08-25 09:57:52', 4, NULL, 1, 1, 1, NULL, 53, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (198, 586, 1951.774414, -2415.627930, 13.599120, 0.126343, 0.000000, 270.626221, 1951.774414, -2415.627930, 13.599120, 0.126343, 0.000000, 270.626221, 100, 0, 0, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'FF4 8761', 2, -1, -1, 0, 265, 56, 265, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-25 09:58:43', '2021-08-25 09:57:59', 4, NULL, 1, 1, 1, NULL, 53, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (199, 586, 1951.699219, -2410.943359, 13.599324, 0.159302, 0.000000, 272.839966, 1951.699219, -2410.943359, 13.599324, 0.159302, 0.000000, 272.839966, 100, 0, 0, 1, 0, 3, 1000, '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'KX1 7049', 2, -1, -1, 0, 265, 56, 265, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-25 09:58:59', '2021-08-25 09:58:14', 4, NULL, 1, 1, 1, NULL, 53, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (206, 477, -296.333035, 672.516215, 18.038649, 0.000000, 0.000000, 46.041656, -296.333035, 672.516215, 18.038649, 0.000000, 0.000000, 46.041656, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'SY7 9030', -1, 28, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 4, '2021-08-25 18:49:54', 0, 0, '2021-08-25 18:39:23', '2021-08-25 18:39:23', 2, NULL, 1, 1, 1, NULL, 44, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (200, 560, 1952.318359, -2406.673828, 13.220377, 359.785767, 359.994507, 270.576782, 1952.320313, -2406.671875, 13.222310, 359.769287, 0.131836, 270.681152, 100, 0, 0, 1, 0, 3, 1000, '[ [ 134, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'SS5 4929', 2, -1, -1, 0, 265, 56, 265, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-25 10:03:13', '2021-08-25 10:02:23', 4, NULL, 1, 1, 1, NULL, 21, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (201, 560, 1952.508789, -2402.353516, 13.219434, 359.780273, 0.000000, 270.016479, 1952.510742, -2402.351563, 13.221289, 359.659424, 0.230713, 270.109863, 100, 0, 0, 1, 0, 3, 1000, '[ [ 134, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'OF2 9476', 2, -1, -1, 0, 265, 56, 265, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-25 10:02:44', '2021-08-25 10:02:32', 4, NULL, 1, 1, 1, NULL, 21, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (202, 497, 106.355469, -130.466797, 12.177630, 1.697388, 0.000000, 271.609497, 106.355469, -130.466797, 12.177630, 1.697388, 0.000000, 271.609497, 300, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'FC6 4112', 1, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 12141, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-11 15:43:29', 0, 0, '2021-08-31 14:41:46', '2021-08-25 17:08:33', 12, NULL, 1, 1, 1, NULL, 64, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (222, 518, -79.022461, -309.895508, 1.292871, 359.774780, 359.829712, 263.715820, -79.022461, -309.895508, 1.292871, 359.774780, 359.829712, 263.715820, 95, 0, 1, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'KQ7 8392', -1, 11, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 2134, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 5, '2021-08-27 20:24:51', 0, 0, '2021-08-25 22:08:16', '2021-08-25 20:59:29', 1, NULL, 1, 1, 1, NULL, 41, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (225, 507, 351.805664, -96.915039, 0.975309, 359.368286, 0.208740, 1.944580, 351.808594, -96.914063, 0.976935, 359.478149, 0.313110, 2.054443, 55, 0, 1, 1, 0, 0, 1000, '[ [ 37, 37, 0 ] ]', '[ [ 0 ] ]', '[ [ ] ]', '[ [ ] ]', 'QC1 3631', -1, 21, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 621454, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, -1, '2021-09-11 15:00:33', 0, 0, '2021-08-27 21:05:39', '2021-08-25 21:12:45', -1, NULL, 1, 1, 1, NULL, 29, 0, '[ [ ] ]', -1, NULL, 1, NULL, 0);
INSERT INTO `vehicles` VALUES (228, 419, -40.531250, 1063.064453, 19.355036, 0.829468, 0.115356, 90.038452, -450.078125, 980.418945, -0.567490, 3.312378, 0.944824, 94.020996, 34, 1, 0, 1, 0, 3, 610, '[ [ 109, 89, 33 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'ZU1 7452', -1, 30, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 1, 0, 0, 0, 2, 0 ] ]', '[ [ 2, 0, 3, 0, 0, 0 ] ]', 214912, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 5, '2021-08-29 21:46:41', 0, 0, '2021-08-29 21:06:48', '2021-08-25 22:03:03', 5, NULL, 1, 1, 1, NULL, 40, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (203, 487, -779.644531, 955.555664, 13.081451, 0.263672, 0.197754, 322.882690, -778.805664, 958.489258, 13.109111, 0.241699, 359.077148, 146.788330, 383, 1, 1, 1, 0, 0, 962.5, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'XO6 5404', 9, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 1, 0, 0, 0 ] ]', 25958, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 17, '2021-08-28 12:25:53', 0, 0, '2021-08-26 21:41:38', '2021-08-25 17:59:43', 12, NULL, 1, 1, 1, NULL, 66, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (205, 518, 1422.630859, 1368.348633, 10.695607, 359.846191, 359.994507, 178.670654, 199.804688, -24.782227, 1.277184, 359.813232, 0.000000, 171.403198, 43, 0, 1, 2, 0, 3, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'btv 1704', -1, 20, -1, 1, 393, 22, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 34412, '[ [ 235, 255, 164 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-18 14:42:35', 0, 0, '2021-08-27 09:23:19', '2021-08-25 18:26:49', 9, NULL, 1, 1, 1, NULL, 41, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (204, 563, -807.710938, 931.478516, 13.566093, 3.471680, 0.510864, 327.546387, -809.494141, 931.458008, 13.553761, 3.790283, 359.439697, 38.754272, 486, 1, 1, 1, 0, 0, 826, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'JU6 4732', 9, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 12312, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 17, '2021-08-28 12:25:53', 0, 0, '2021-08-26 19:51:08', '2021-08-25 18:00:04', 12, NULL, 1, 1, 1, NULL, 67, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (256, 440, -613.590163, -519.016592, 25.517845, 0.000000, 0.000000, 175.967957, -613.590163, -519.016592, 25.517845, 0.000000, 0.000000, 175.967957, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'AY3 5124', 3, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 1, 255, NULL, '', '', '', '', '', NULL, NULL, 5, '2021-08-31 00:59:32', 0, 0, '2021-08-31 00:59:15', '2021-08-31 00:59:15', 5, NULL, 1, 1, 1, NULL, 74, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (240, 602, 616.625000, -11.323242, 1001.704285, 359.851685, 359.994507, 90.241699, 616.774414, -11.230469, 1001.697510, 359.835205, 359.994507, 90.236206, 51, 0, 1, 1, 0, 3, 986, '[ [ 217, 141, 9 ] ]', '[ [ 229, 26, 26 ] ]', '[ [ 213, 36, 36 ] ]', '[ [ 211, 13, 13 ] ]', 'BQ7 9528', -1, 32, -1, 1, 250, 1, 250, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 147365, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-31 22:22:19', '2021-08-28 13:29:00', 1, NULL, 1, 1, 1, NULL, 24, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (207, 528, 713.352975, -659.313820, 16.507813, 0.000000, 0.000000, 172.633545, 713.352975, -659.313820, 16.507813, 0.000000, 0.000000, 172.633545, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'US0 8588', -1, 15, -1, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, -1, '2021-09-11 15:00:35', 0, 0, '2021-08-25 18:51:32', '2021-08-25 18:51:32', 11, NULL, 1, 1, 1, NULL, 56, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (208, 528, 721.080907, -663.506416, 16.507813, 0.000000, 0.000000, 262.634918, 721.080907, -663.506416, 16.507813, 0.000000, 0.000000, 262.634918, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'FL6 4999', -1, 15, -1, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, -1, '2021-09-11 15:00:34', 0, 0, '2021-08-25 18:51:35', '2021-08-25 18:51:35', 11, NULL, 1, 1, 1, NULL, 56, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (209, 528, 721.080907, -663.506416, 16.507813, 0.000000, 0.000000, 262.634918, 721.080907, -663.506416, 16.507813, 0.000000, 0.000000, 262.634918, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'PT9 2653', -1, 11, -1, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 5, '2021-08-31 01:59:05', 0, 0, '2021-08-25 18:51:48', '2021-08-25 18:51:48', 11, NULL, 1, 1, 1, NULL, 56, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (210, 528, 718.100045, -658.857765, 16.507813, 0.000000, 0.000000, 172.633545, 720.695313, -651.966797, 16.509481, 0.637207, 359.945068, 271.576538, 100, 0, 1, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'JD3 1889', -1, 11, -1, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 11, '2021-08-25 19:52:39', 0, 0, '2021-08-25 18:52:23', '2021-08-25 18:52:09', 11, NULL, 1, 1, 1, NULL, 56, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (211, 489, 719.618366, -662.608688, 16.507813, 0.000000, 0.000000, 276.752563, 719.344727, -662.687500, 16.513815, 359.126587, 359.956055, 276.838989, 100, 0, 0, 1, 0, 0, 996.5, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'HN7 9859', -1, 15, -1, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 0, 0, 0, 0, 1, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 3, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 11, '2021-08-25 19:30:45', 0, 0, '2021-08-25 18:54:31', '2021-08-25 18:54:31', 11, NULL, 1, 1, 1, NULL, 36, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (212, 426, 723.778311, -652.961773, 16.507813, 0.000000, 0.000000, 94.393219, 385.365234, 119.249023, 6.061399, 184.971313, 355.929565, 265.841675, 88, 0, 0, 1, 0, 0, 300, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'TB7 3128', -1, 15, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 2, 0, 0, 0, 2, 2 ] ]', '[ [ 0, 2, 0, 2, 0, 2 ] ]', 6179, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 11, '2021-08-25 20:08:10', 0, 0, '2021-08-25 20:07:20', '2021-08-25 18:55:43', 11, NULL, 1, 1, 1, NULL, 49, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (213, 426, 720.877471, -641.228593, 16.507813, 0.000000, 0.000000, 96.129089, 720.807617, -658.582031, 16.248701, 0.192261, 0.208740, 267.319336, 94, 0, 1, 1, 0, 0, 916, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'LH1 9860', -1, 15, -1, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 1, 0, 0, 0, 1, 2 ] ]', '[ [ 0, 2, 0, 0, 0, 0 ] ]', 2124, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, -1, '2021-09-11 15:00:37', 0, 0, '2021-08-25 19:52:09', '2021-08-25 18:56:12', 11, NULL, 1, 1, 1, NULL, 49, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (215, 475, 724.120628, -659.690305, 16.507813, 0.000000, 0.000000, 71.030457, 724.120628, -659.690305, 16.507813, 0.000000, 0.000000, 71.030457, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'EW2 8376', -1, 15, -1, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 11, '2021-08-25 19:31:50', 0, 0, '2021-08-25 19:31:43', '2021-08-25 19:31:43', 11, NULL, 1, 1, 1, NULL, 16, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (216, 507, 726.546158, -663.460198, 16.507813, 0.000000, 0.000000, 7.424103, 726.546158, -663.460198, 16.507813, 0.000000, 0.000000, 7.424103, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'GS5 6001', -1, 15, -1, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 11, '2021-08-25 19:32:21', 0, 0, '2021-08-25 19:32:11', '2021-08-25 19:32:11', 11, NULL, 1, 1, 1, NULL, 29, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (217, 404, 719.686555, -637.682754, 16.507813, 0.000000, 0.000000, 152.808411, 719.686555, -637.682754, 16.507813, 0.000000, 0.000000, 152.808411, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'IP4 5591', -1, 15, -1, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 0, 255, NULL, '', '', '', '', '', NULL, NULL, 11, '2021-08-25 19:33:58', 0, 0, '2021-08-25 19:33:49', '2021-08-25 19:33:42', 11, NULL, 1, 1, 1, NULL, 35, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (218, 479, 723.844312, -636.455029, 16.507813, 0.000000, 0.000000, 78.424347, 723.844312, -636.455029, 16.507813, 0.000000, 0.000000, 78.424347, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'UH4 7942', -1, 15, -1, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 11, '2021-08-25 19:35:00', 0, 0, '2021-08-25 19:34:52', '2021-08-25 19:34:52', 11, NULL, 1, 1, 1, NULL, 37, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (219, 400, 718.053199, -638.608357, 16.507813, 0.000000, 0.000000, 178.714600, 718.053199, -638.608357, 16.507813, 0.000000, 0.000000, 178.714600, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'LB0 8767', -1, 15, -1, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 11, '2021-08-25 19:39:20', 0, 0, '2021-08-25 19:39:15', '2021-08-25 19:39:15', 11, NULL, 1, 1, 1, NULL, 32, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (220, 427, 724.599770, -635.687720, 16.507813, 0.000000, 0.000000, 75.002045, 724.599770, -635.687720, 16.507813, 0.000000, 0.000000, 75.002045, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'KA5 3163', -1, 15, -1, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 11, '2021-08-25 19:39:57', 0, 0, '2021-08-25 19:39:50', '2021-08-25 19:39:50', 11, NULL, 1, 1, 1, NULL, 54, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (221, 528, 723.219590, -658.494384, 16.507813, 0.000000, 0.000000, 309.311035, 719.360352, -648.693359, 16.508274, 0.631714, 359.961548, 89.489136, 58, 0, 0, 1, 1, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'LK2 8901', -1, 15, -1, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 3, 0, 0 ] ]', '[ [ 0, 0, 0, 1, 0, 0 ] ]', 14691, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, -1, '2021-09-11 15:00:34', 0, 0, '2021-08-25 21:07:25', '2021-08-25 19:53:19', 11, NULL, 1, 1, 1, NULL, 56, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (223, 518, 291.163086, 2546.843750, 16.685732, 359.846191, 0.010986, 178.593750, -32.180664, 1072.782227, 19.650490, 359.818726, 0.065918, 268.879395, 46, 0, 0, 2, 0, 3, 651, '[ [ 255, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'GA6 5899', -1, 30, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 1002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 2, 0 ] ]', '[ [ 2, 0, 0, 0, 0, 0 ] ]', 39121, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 5, '2021-08-29 21:46:38', 0, 0, '2021-08-29 21:21:24', '2021-08-25 20:59:38', 1, NULL, 1, 1, 1, NULL, 41, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (224, 490, 724.892112, -657.711990, 16.507813, 0.000000, 0.000000, 348.791046, 721.414063, -655.514648, 16.636032, 0.406494, 359.972534, 87.572021, 99, 0, 1, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'XK9 9638', -1, 15, -1, NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 8, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, -1, '2021-09-11 15:00:36', 0, 0, '2021-08-25 21:09:23', '2021-08-25 21:09:02', 11, NULL, 1, 1, 1, NULL, 57, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (226, 468, -303.546875, 1753.732422, 42.351376, 1.043701, 0.000000, 233.805542, -203.248047, 1107.525391, 19.411104, 359.862671, 359.401245, 288.643799, 12, 1, 0, 1, 0, 0, 992.5, '[ [ 6, 6, 0 ] ]', '[ [ 0 ] ]', '[ [ ] ]', '[ [ ] ]', 'FU9 7038', -1, 16, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 5198498, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, -1, '2021-10-07 16:00:42', 0, 0, '2021-09-12 20:34:36', '2021-08-25 21:14:05', -1, NULL, 1, 1, 1, NULL, 15, 0, '[ [ ] ]', -1, NULL, 1, NULL, 0);
INSERT INTO `vehicles` VALUES (235, 477, 101.403320, -224.392578, 1.369561, 359.307861, 359.994507, 177.445679, 101.403320, -224.392578, 1.369561, 359.307861, 359.994507, 177.445679, 88, 0, 1, 1, 0, 0, 997, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'IX0 9051', -1, 59, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 1, 0, 0, 0, 1, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 9110, '[ [ 255, 255, 255 ] ]', 0, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-08-26 16:19:58', 0, 0, '2021-08-26 15:55:33', '2021-08-26 15:55:14', 2, NULL, 1, 1, 1, NULL, 44, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (227, 586, -303.011719, 1758.034180, 42.720116, 0.115356, 0.000000, 232.146606, -303.011719, 1758.034180, 42.720116, 0.115356, 0.000000, 232.146606, 15, 0, 0, 1, 0, 0, 1000, '[ [ 10, 1, 0 ] ]', '[ [ 0 ] ]', '[ [ ] ]', '[ [ ] ]', 'GK2 8721', -1, 16, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 169761, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, -1, '2021-09-12 20:00:23', 0, 0, '2021-08-29 17:08:16', '2021-08-25 21:19:37', -1, NULL, 1, 1, 1, NULL, 53, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (229, 458, -290.547852, 1757.931641, 42.491821, 0.049438, 359.994507, 134.857178, 175.072266, -304.451172, 1.377561, 359.780273, 359.868164, 180.845947, 49, 1, 0, 1, 0, 3, 381, '[ [ 255, 255, 255 ] ]', '[ [ 2, 1, 1 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'XL7 3486', -1, 16, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 2, 0, 0, 1, 3, 3 ] ]', '[ [ 0, 2, 2, 3, 2, 2 ] ]', 2764221, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, -1, '2021-10-07 16:00:43', 0, 0, '2021-09-11 16:53:33', '2021-08-25 23:27:13', -1, NULL, 1, 1, 1, NULL, 22, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (230, 521, 335.960938, -66.662109, 1.098668, 359.582520, 359.934082, 283.233032, 335.958984, -66.660156, 1.108789, 359.736328, 359.895630, 283.183594, 10, 0, 0, 1, 0, 0, 1000, '[ [ 74, 74, 0 ] ]', '[ [ 0 ] ]', '[ [ ] ]', '[ [ ] ]', 'US2 1614', -1, 24, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 520825, '[ [ 255, 255, 255 ] ]', 1, 3, '', 'Ruedas AntiBalas', '', '', '', '', NULL, NULL, -1, '2021-09-11 15:00:36', 0, 0, '2021-08-26 23:02:55', '2021-08-25 23:37:17', -1, NULL, 1, 1, 1, NULL, 51, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (231, 579, 420.046875, 2543.787109, 16.280674, 0.428467, 358.769531, 270.208740, 420.047852, 2543.788086, 16.281517, 0.428467, 358.747559, 270.258179, 40, 0, 1, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'SG0 4626', -1, 30, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 26401, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-08-27 13:28:15', 0, 0, '2021-08-26 15:10:16', '2021-08-25 23:38:24', 9, NULL, 1, 1, 1, NULL, 34, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (236, 463, 967.552734, 1310.086914, 10.613415, 15.902710, 0.543823, 319.169312, 967.641602, 1310.247070, 10.254783, 358.439941, 0.000000, 321.240234, 50, 0, 0, 1, 0, 0, 1000, '[ [ 79, 79, 0 ] ]', '[ [ 0 ] ]', '[ [ ] ]', '[ [ ] ]', 'LM3 4445', -1, 7, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 1557959, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-01 03:15:58', 0, 0, '2021-08-29 23:12:55', '2021-08-26 23:04:19', -1, NULL, 1, 1, 1, NULL, 50, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (232, 496, 324.320313, 2537.877930, 16.595907, 359.873657, 359.967041, 179.368286, 324.232422, 2537.959961, 16.599224, 359.879150, 359.978027, 182.219238, 38, 0, 1, 2, 0, 3, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'XT5 1160', -1, 30, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 1006, 0, 0, 0, 0, 1075, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 137862, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-12 11:38:41', 0, 0, '2021-09-01 00:08:36', '2021-08-26 00:07:37', 9, NULL, 1, 1, 1, NULL, 26, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (233, 518, 2461.573242, -2531.869141, 1095.368652, 359.313354, 0.000000, 92.477417, 940.102539, 2134.741211, 1010.753967, 190.574341, 359.945068, 204.296265, 23, 0, 0, 1, 0, 0, 300, '[ [ 2, 39, 0 ] ]', '[ [ 0 ] ]', '[ [ ] ]', '[ [ ] ]', 'RU0 8302', -1, 41, -1, 0, 56, 6, 396, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 2, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 4, 4, 4, 4, 4, 4 ] ]', 15265328, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-31 22:05:48', '2021-08-26 06:21:28', -1, NULL, 1, 1, 1, NULL, 39, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (234, 521, 143.077148, -244.049805, 1.116589, 359.560547, 359.994507, 179.851685, 143.077148, -244.049805, 1.116589, 359.560547, 359.994507, 179.851685, 2, 0, 1, 1, 0, 0, 795.5, '[ [ 74, 74, 0 ] ]', '[ [ 0 ] ]', '[ [ ] ]', '[ [ ] ]', 'UT2 2924', -1, 56, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 1013532, '[ [ 255, 255, 255 ] ]', 2, 3, NULL, '', '', '', '', '', NULL, NULL, -1, '2021-09-15 16:00:37', 0, 0, '2021-09-01 00:02:10', '2021-08-26 08:04:34', -1, NULL, 1, 1, 1, NULL, 51, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (238, 440, -611.458984, -525.244141, 25.632631, 359.236450, 359.994507, 354.951782, -615.330078, -523.844727, 25.631065, 359.225464, 0.000000, 8.052979, 84, 0, 1, 1, 0, 3, 1000, '[ [ 0, 255, 68 ] ]', '[ [ 159, 157, 148 ] ]', '[ [ 51, 95, 63 ] ]', '[ [ 159, 157, 148 ] ]', 'VI9 6098', 16, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 14011, '[ [ 255, 255, 255 ] ]', 1, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-31 01:24:10', '2021-08-27 20:39:27', 1, NULL, 1, 1, 1, NULL, 74, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (239, 521, -366.811523, -430.253906, 11.180021, 359.445190, 0.000000, 328.754883, -568.866211, -488.053711, 25.070744, 359.692383, 359.983521, 175.347290, 9, 0, 1, 1, 0, 0, 887.5, '[ [ 118, 118, 0 ] ]', '[ [ 0 ] ]', '[ [ ] ]', '[ [ ] ]', 'KL3 2247', -1, 11, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 403878, '[ [ 255, 255, 255 ] ]', 0, 3, NULL, '', '', '', '', '', NULL, NULL, -1, '2021-09-15 16:00:38', 0, 0, '2021-08-31 19:16:42', '2021-08-27 21:27:24', -1, NULL, 1, 1, 1, NULL, 51, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (241, 443, -50.171875, 1050.807617, 20.011860, 359.538574, 0.021973, 270.439453, -50.169922, 1050.809570, 20.014061, 359.549561, 359.868164, 270.565796, 389, 0, 0, 1, 0, 0, 942.5, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'TR1 1306', 19, -1, -1, 15000, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 2, 0, 0, 0, 2, 1 ] ]', '[ [ 0, 4, 2, 0, 0, 0 ] ]', 9915, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-12 12:28:02', '2021-08-28 18:58:36', 1, NULL, 1, 1, 1, NULL, 10, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (248, 481, 80.090840, -256.316864, 1.578125, 0.000000, 0.000000, 320.154724, 89.712891, -302.731445, 1.094945, 358.780518, 359.994507, 174.396973, 100, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'NK7 7068', -1, 11, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 5, '2021-08-29 03:21:48', 0, 0, '2021-08-29 03:21:31', '2021-08-29 03:20:54', 5, NULL, 1, 1, 1, NULL, 75, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (243, 468, 120.702148, -242.492188, 1.241468, 1.098633, 359.983521, 179.307861, 120.702148, -242.492188, 1.241468, 1.098633, 359.983521, 179.307861, 14, 0, 1, 1, 0, 0, 1000, '[ [ 53, 53, 0 ] ]', '[ [ 0 ] ]', '[ [ ] ]', '[ [ ] ]', 'AD9 2719', -1, 33, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 6134326, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, -1, '2021-09-15 16:00:38', 0, 0, '2021-08-31 20:27:09', '2021-08-28 23:10:32', -1, NULL, 1, 1, 1, NULL, 15, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (246, 479, 147.919922, -245.069336, 1.161800, 359.412231, 0.032959, 177.022705, 788.308594, 900.195313, 18.874353, 359.763794, 1.862183, 171.414185, 25, 0, 0, 2, 0, 3, 300, '[ [ 255, 240, 0 ] ]', '[ [ 37, 37, 39 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'MQ1 8710', -1, 11, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 2, 2, 0, 0, 3, 3, 0 ] ]', '[ [ 4, 0, 2, 2, 2, 2 ] ]', 573687, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', '', NULL, NULL, -1, '2021-09-15 16:00:37', 0, 0, '2021-09-01 00:11:16', '2021-08-29 00:18:00', -1, NULL, 1, 1, 1, NULL, 37, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (242, 479, -73.925713, 1382.063967, 9.743146, 0.000000, 0.000000, 176.231628, -446.613281, 1509.189453, 34.759190, 355.177002, 355.303345, 206.427612, 94, 1, 0, 1, 0, 0, 720, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'DN6 3677', -1, 11, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 1, 0, 0, 0, 2, 0 ] ]', '[ [ 0, 0, 3, 1, 0, 0 ] ]', 1329, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 5, '2021-08-28 21:13:30', 0, 0, '2021-08-28 21:10:43', '2021-08-28 20:57:12', 5, NULL, 1, 1, 1, NULL, 37, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (247, 481, 424.958008, 2500.420898, 16.099337, 358.676147, 359.928589, 89.121094, 421.104492, 2503.431641, 16.103092, 358.989258, 0.000000, 261.529541, 100, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'PD9 1363', -1, 35, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 4, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 5, '2021-08-29 16:24:26', 0, 0, '2021-08-29 16:24:13', '2021-08-29 01:20:59', 5, NULL, 1, 1, 1, NULL, 75, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (244, 521, 317.883789, -331.908203, -0.049793, 341.911011, 0.411987, 132.901611, 317.883789, -331.908203, -0.049793, 341.911011, 0.411987, 132.901611, 91, 1, 0, 1, 0, 0, 901, '[ [ 36, 0, 0 ] ]', '[ [ 0 ] ]', '[ [ ] ]', '[ [ ] ]', 'GX0 7312', -1, 3, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 480767, '[ [ 255, 255, 255 ] ]', 1, 3, NULL, '', '', '', '', '', NULL, NULL, -1, '2021-09-14 16:00:15', 0, 0, '2021-08-30 19:04:31', '2021-08-28 23:20:26', -1, NULL, 1, 1, 1, NULL, 51, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (245, 440, -620.143555, -525.233398, 25.631361, 359.225464, 0.010986, 357.017212, -620.140625, -525.231445, 25.633196, 359.241943, 359.945068, 357.132568, 100, 0, 0, 1, 0, 3, 971, '[ [ 17, 116, 6 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'FJ8 3323', 16, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 2, 0, 0, 0, 1, 1 ] ]', '[ [ 0, 2, 0, 2, 0, 0 ] ]', 25119, '[ [ 255, 255, 255 ] ]', 3, 255, '', '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-31 01:34:44', '2021-08-28 23:30:28', 5, NULL, 1, 1, 1, NULL, 74, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (249, 426, 90.968152, -284.341383, 1.578125, 0.000000, 0.000000, 48.293884, 312.541992, -58.081055, 1.318840, 0.197754, 0.000000, 348.123779, 44, 0, 0, 2, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'KJ4 3721', -1, 11, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 8827, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 5, '2021-08-31 01:59:02', 0, 0, '2021-08-31 01:54:45', '2021-08-29 03:22:11', 5, NULL, 1, 1, 1, NULL, 71, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (250, 495, -289.870117, 1769.358398, 42.866905, 0.911865, 0.274658, 141.762085, -289.870117, 1769.358398, 42.866905, 0.911865, 0.274658, 141.762085, 45, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'LK6 3878', 8, -1, -1, 100, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 3078, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-31 01:57:01', '2021-08-29 17:02:38', 1, NULL, 1, 1, 1, NULL, 38, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (251, 419, -9.764052, 1038.836727, 19.593750, 0.000000, 0.000000, 333.816437, -9.764052, 1038.836727, 19.593750, 0.000000, 0.000000, 333.816437, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'FG0 9636', -1, 11, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 5, '2021-08-29 20:56:25', 0, 0, '2021-08-29 20:55:16', '2021-08-29 20:55:06', 5, NULL, 1, 1, 1, NULL, 40, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (252, 419, 325.250977, 2545.286133, 16.408487, 359.939575, 0.093384, 181.043701, 324.041992, 2545.152344, 16.313755, 1.664429, 359.670410, 180.554810, 44, 0, 1, 1, 0, 3, 996, '[ [ 111, 91, 37 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'PZ8 1107', -1, 30, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 2, 0, 0, 0 ] ]', 52788, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-12 11:38:45', 0, 0, '2021-09-01 00:07:12', '2021-08-29 21:47:02', 5, NULL, 1, 1, 1, NULL, 40, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (253, 518, 290.658203, 2540.718750, 16.686085, 359.659424, 0.010986, 179.609985, 290.655273, 2540.056641, 16.686031, 359.846191, 0.005493, 179.659424, 99, 0, 1, 1, 0, 3, 1000, '[ [ 253, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'NN7 4560', -1, 30, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-12 11:39:10', 0, 0, '2021-08-29 21:51:26', '2021-08-29 21:47:24', 5, NULL, 1, 1, 1, NULL, 41, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (254, 481, -63.403014, 1106.434614, 19.593750, 0.000000, 0.000000, 95.881866, -63.403014, 1106.434614, 19.593750, 0.000000, 0.000000, 95.881866, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'MX0 8740', -1, 30, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 5, '2021-08-29 22:37:41', 0, 0, '2021-08-29 22:37:29', '2021-08-29 22:37:29', 5, NULL, 1, 1, 1, NULL, 75, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (255, 559, 328.360352, 2544.222656, 16.454252, 0.093384, 359.972534, 149.611816, 328.360352, 2544.222656, 16.454252, 0.093384, 359.972534, 149.606323, 49, 0, 1, 1, 0, 3, 1000, '[ [ 255, 144, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'DF9 4615', -1, 30, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1082, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 116928, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-12 11:38:55', 0, 0, '2021-09-01 00:07:35', '2021-08-29 22:38:01', 5, NULL, 1, 1, 1, NULL, 76, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (262, 497, -290.379883, 1734.943359, 49.270615, 0.263672, 359.703369, 12.727661, -364.249023, -217.992188, 59.606426, 1.115112, 357.879639, 193.068237, 100, 1, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'WN6 8570', 8, -1, -1, 100, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 19301, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-16 17:10:24', 0, 0, '2021-08-31 18:28:04', '2021-08-31 18:27:50', 1, NULL, 1, 1, 1, NULL, 78, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (257, 440, -605.648679, -521.866866, 25.523438, 0.000000, 0.000000, 263.458923, -605.648679, -521.866866, 25.523438, 0.000000, 0.000000, 263.458923, 100, 0, 1, 0, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'OE6 2672', 3, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 5, '2021-08-31 01:00:37', 0, 0, '2021-08-31 01:00:12', '2021-08-31 01:00:12', 5, NULL, 1, 1, 1, NULL, 74, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (258, 440, -608.068359, -525.330078, 25.634808, 359.252930, 0.000000, 356.868896, -375.440430, -498.006836, 13.931082, 4.921875, 335.484009, 185.526123, 99, 1, 0, 2, 0, 3, 926.5, '[ [ 0, 255, 67 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'JX7 3387', 16, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 1, 0, 0, 0, 2, 0 ] ]', '[ [ 0, 0, 3, 0, 0, 0 ] ]', 4249, '[ [ 255, 255, 255 ] ]', 2, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-31 21:35:00', '2021-08-31 01:00:58', 5, NULL, 1, 1, 1, NULL, 74, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (259, 440, -602.063477, -525.770508, 25.626339, 359.187012, 0.032959, 356.802979, -602.063477, -525.770508, 25.626339, 359.187012, 0.032959, 356.802979, 100, 0, 0, 1, 0, 3, 1000, '[ [ 0, 255, 67 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'ZH0 7009', 16, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 3049, '[ [ 255, 255, 255 ] ]', 3, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-31 01:23:40', '2021-08-31 01:01:02', 5, NULL, 1, 1, 1, NULL, 74, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (260, 521, -302.969727, 1763.276367, 42.241573, 359.730835, 0.000000, 229.883423, 190.873047, -319.107422, 1.149770, 359.252930, 0.000000, 276.514893, 99, 1, 0, 1, 0, 0, 999.5, '[ [ 25, 118, 0 ] ]', '[ [ 0 ] ]', '[ [ ] ]', '[ [ ] ]', 'CF8 4871', -1, 16, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 793475, '[ [ 255, 255, 255 ] ]', 0, 4, NULL, '', '', '', '', '', NULL, NULL, -1, '2021-10-07 16:00:43', 0, 0, '2021-09-11 17:04:33', '2021-08-31 02:00:22', -1, NULL, 1, 1, 1, NULL, 51, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (261, 495, 928.184570, 2074.140625, 11.028574, 1.060181, 0.000000, 267.352295, 928.184570, 2074.140625, 11.028574, 1.060181, 0.000000, 267.352295, 97, 0, 0, 1, 0, 3, 1000, '[ [ 9, 62, 234 ] ]', '[ [ 174, 155, 127 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'QH0 4589', 7, -1, -1, 1, 401, 28, 401, 28, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 1858476, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-08-31 02:11:21', '2021-08-31 02:05:01', -1, NULL, 1, 1, 1, NULL, 38, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (263, 497, 105.654297, -130.465820, 12.153046, 1.972046, 359.994507, 267.269897, 105.654297, -130.465820, 12.153046, 1.972046, 359.994507, 267.269897, 100, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'AO2 9200', 1, -1, -1, 100, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 43, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-11 15:43:59', '2021-09-11 15:43:48', 1, NULL, 1, 1, 1, NULL, 79, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (264, 525, 1966.999023, -2429.723633, 13.450326, 358.099365, 0.060425, 44.291382, 1967.016602, -2429.688477, 13.453098, 358.137817, 0.043945, 44.417725, 100, 1, 0, 1, 0, 3, 991.5, '[ [ 13, 55, 1 ] ]', '[ [ 12, 55, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'BT5 6696', 1, -1, -1, 100, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-11 15:50:23', '2021-09-11 15:50:15', 1, NULL, 1, 1, 1, NULL, 55, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (265, 523, 1969.946289, -2410.676758, 13.137256, 359.241943, 0.000000, 88.692627, 1969.946289, -2410.676758, 13.137256, 359.241943, 0.000000, 88.692627, 100, 1, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'DF9 9152', 1, -1, -1, 100, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 157, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-11 15:54:04', '2021-09-11 15:53:14', 1, NULL, 1, 1, 1, NULL, 80, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (266, 523, 1969.966797, -2411.889648, 13.135945, 359.225464, 359.994507, 90.049438, 1969.966797, -2411.889648, 13.135945, 359.225464, 359.994507, 90.049438, 100, 1, 0, 1, 0, 3, 993, '[ [ 12, 55, 0 ] ]', '[ [ 12, 55, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'NE7 7550', 1, -1, -1, 100, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-11 16:27:50', '2021-09-11 15:53:18', 1, NULL, 1, 1, 1, NULL, 80, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (267, 523, 1967.509766, -2412.005859, 13.132712, 359.197998, 359.989014, 87.819214, 1967.509766, -2412.005859, 13.132712, 359.197998, 359.994507, 87.819214, 100, 1, 0, 1, 0, 0, 963.5, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'PV5 1792', 1, -1, -1, 100, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 58, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-11 16:28:27', '2021-09-11 15:53:20', 1, NULL, 1, 1, 1, NULL, 80, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (268, 523, 1967.451172, -2410.729492, 13.137557, 359.241943, 0.000000, 92.191772, 1967.451172, -2410.729492, 13.137557, 359.241943, 0.000000, 92.191772, 100, 1, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'CQ3 6534', 1, -1, -1, 100, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 61, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-11 15:54:28', '2021-09-11 15:53:22', 1, NULL, 1, 1, 1, NULL, 80, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (269, 596, 1937.744141, -2386.025391, 13.285906, 359.879150, 0.000000, 179.252930, 1937.746094, -2386.023438, 13.288105, 359.873657, 0.098877, 179.379272, 100, 1, 0, 1, 0, 3, 1000, '[ [ 12, 55, 0 ] ]', '[ [ 254, 254, 254 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'QV7 1303', 1, -1, -1, 100, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 21, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-11 15:56:05', '2021-09-11 15:54:56', 1, NULL, 1, 1, 1, NULL, 81, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (270, 596, 1942.322266, -2386.091797, 13.285813, 359.879150, 0.000000, 179.137573, 1942.324219, -2386.089844, 13.288020, 359.873657, 0.060425, 179.263916, 100, 1, 0, 1, 0, 3, 1000, '[ [ 12, 55, 0 ] ]', '[ [ 255, 255, 255 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'MN0 8177', 1, -1, -1, 100, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 35, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-11 15:56:56', '2021-09-11 15:55:01', 1, NULL, 1, 1, 1, NULL, 81, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (271, 596, 1946.987305, -2385.891602, 13.285772, 359.879150, 0.000000, 180.758057, 1946.988281, -2385.889648, 13.288110, 359.879150, 0.054932, 180.889893, 100, 1, 0, 1, 0, 3, 999.5, '[ [ 12, 55, 0 ] ]', '[ [ 255, 255, 255 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'QP7 1536', 1, -1, -1, 100, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 68, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-11 15:57:46', '2021-09-11 15:55:07', 1, NULL, 1, 1, 1, NULL, 81, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (272, 596, 1951.301758, -2386.024414, 13.285960, 359.879150, 0.000000, 179.373779, 1951.302734, -2386.023438, 13.287680, 359.879150, 0.065918, 179.472656, 100, 1, 0, 1, 0, 3, 994, '[ [ 12, 55, 0 ] ]', '[ [ 253, 251, 251 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'PQ3 7830', 1, -1, -1, 100, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 2, 0, 0, 0, 0 ] ]', 75, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-11 15:58:44', '2021-09-11 15:55:11', 1, NULL, 1, 1, 1, NULL, 81, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (273, 597, 1969.559570, -2401.781250, 13.288530, 359.978027, 0.000000, 88.500366, 1969.559570, -2401.781250, 13.288530, 359.978027, 0.000000, 88.500366, 100, 1, 0, 1, 0, 3, 989.5, '[ [ 12, 55, 0 ] ]', '[ [ 253, 253, 253 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'EN8 7309', 1, -1, -1, 100, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 2 ] ]', '[ [ 0, 2, 1, 0, 0, 0 ] ]', 67, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-11 16:00:57', '2021-09-11 16:00:37', 1, NULL, 1, 1, 1, NULL, 82, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (274, 597, 1969.231445, -2406.613281, 13.288754, 359.978027, 0.000000, 90.159302, 1969.233398, -2406.610352, 13.290924, 359.989014, 0.104370, 90.285645, 100, 1, 0, 1, 0, 3, 986, '[ [ 12, 55, 0 ] ]', '[ [ 255, 255, 255 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'HB7 6035', 1, -1, -1, 100, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 2 ] ]', '[ [ 0, 2, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-11 16:01:40', '2021-09-11 16:00:44', 1, NULL, 1, 1, 1, NULL, 82, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (275, 598, 1942.606445, -2402.010742, 13.433525, 359.456177, 0.000000, 88.654175, -1650.333008, -2236.822266, 30.021521, 358.247681, 350.606689, 233.459473, 93, 1, 0, 2, 0, 3, 1000, '[ [ 12, 55, 0 ] ]', '[ [ 255, 255, 255 ] ]', '[ [ 12, 55, 0 ] ]', '[ [ 12, 55, 0 ] ]', 'KA7 5850', 1, -1, -1, 100, 368, 56, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 1, 0, 0, 0 ] ]', 4407, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-11 16:43:45', '2021-09-11 16:02:07', 1, NULL, 1, 1, 1, NULL, 83, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (276, 598, 1942.507812, -2406.408203, 13.448168, 359.500122, 0.000000, 89.241943, 1942.510742, -2406.405273, 13.451121, 359.516602, 0.082397, 89.417725, 100, 1, 0, 1, 0, 3, 1000, '[ [ 12, 55, 0 ] ]', '[ [ 254, 253, 253 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'FK6 1986', 1, -1, -1, 100, 368, 56, 368, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-11 16:03:43', '2021-09-11 16:02:12', 1, NULL, 1, 1, 1, NULL, 83, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (277, 598, 1942.696289, -2410.850586, 13.452559, 359.549561, 359.846191, 89.197998, 1942.696289, -2410.850586, 13.452809, 359.516602, 0.000000, 89.197998, 100, 1, 0, 1, 0, 3, 1000, '[ [ 12, 55, 0 ] ]', '[ [ 255, 255, 255 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'TF4 5349', 1, -1, -1, 100, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 1, 0, 0, 0 ] ]', 1, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-11 16:04:14', '2021-09-11 16:02:14', 1, NULL, 1, 1, 1, NULL, 83, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (278, 598, 1942.875977, -2415.690430, 13.462602, 359.516602, 359.923096, 87.659912, 1942.878906, -2415.687500, 13.465549, 359.533081, 0.076904, 87.830200, 100, 1, 0, 1, 0, 3, 1000, '[ [ 12, 55, 0 ] ]', '[ [ 254, 253, 253 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'ST4 9171', 1, -1, -1, 100, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 2, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-11 16:04:43', '2021-09-11 16:02:17', 1, NULL, 1, 1, 1, NULL, 83, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (279, 598, 1942.943359, -2420.477539, 13.456492, 359.500122, 0.000000, 89.214478, 1942.946289, -2420.474609, 13.459144, 359.516602, 0.076904, 89.373779, 100, 1, 0, 1, 0, 3, 1000, '[ [ 12, 55, 0 ] ]', '[ [ 255, 249, 249 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'PK7 5506', 1, -1, -1, 100, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-11 16:05:14', '2021-09-11 16:02:19', 1, NULL, 1, 1, 1, NULL, 83, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (280, 599, 1968.958008, -2415.752930, 13.667552, 359.994507, 0.000000, 89.132080, 1968.960938, -2415.750000, 13.670547, 359.989014, 0.098877, 89.307861, 100, 1, 0, 1, 0, 3, 1000, '[ [ 12, 55, 0 ] ]', '[ [ 253, 252, 252 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'YR8 9387', 1, -1, -1, 100, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-11 16:07:33', '2021-09-11 16:06:40', 1, NULL, 1, 1, 1, NULL, 84, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (281, 599, 1969.125977, -2420.476562, 13.673883, 359.967041, 0.000000, 89.274902, 1969.128906, -2420.472656, 13.676881, 359.956055, 0.093384, 89.450684, 100, 1, 0, 1, 0, 3, 1000, '[ [ 12, 55, 0 ] ]', '[ [ 251, 249, 249 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'QQ0 5670', 1, -1, -1, 100, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 38, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-11 16:08:01', '2021-09-11 16:06:43', 1, NULL, 1, 1, 1, NULL, 84, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (282, 470, 1964.925781, -2386.358398, 13.593286, 0.054932, 359.994507, 180.543823, 1964.927734, -2386.356445, 13.595485, 0.054932, 0.038452, 180.664673, 100, 1, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'FH8 3205', 1, -1, -1, 100, 368, 56, 368, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 21, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-11 16:11:03', '2021-09-11 16:08:48', 1, NULL, 1, 1, 1, NULL, 85, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (283, 470, 1969.728516, -2386.310547, 13.558563, 359.725342, 359.994507, 181.845703, 1969.727539, -2386.302734, 13.613643, 0.049438, 359.994507, 181.845703, 100, 1, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'BQ2 9143', 1, -1, -1, 100, 368, 56, 368, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 3, '[ [ 255, 255, 255 ] ]', 2, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-11 16:11:36', '2021-09-11 16:08:52', 1, NULL, 1, 1, 1, NULL, 85, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (284, 426, 1956.051758, -2386.230469, 13.306410, 0.203247, 0.000000, 180.686646, 1956.056641, -2386.227539, 13.308218, 0.027466, 359.829712, 180.856934, 100, 1, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'TZ3 1864', 1, -1, -1, 100, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 1, 0, 0, 0 ] ]', 1, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-11 16:10:12', '2021-09-11 16:09:05', 1, NULL, 1, 1, 1, NULL, 86, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (285, 426, 1960.450195, -2386.071289, 13.303529, 0.203247, 0.000000, 179.692383, 1960.454102, -2386.068359, 13.305310, 0.032959, 359.824219, 179.868164, 100, 1, 0, 1, 0, 0, 999.5, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'BX8 6850', 1, -1, -1, 100, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 1, 0, 2, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-11 16:10:41', '2021-09-11 16:09:10', 1, NULL, 1, 1, 1, NULL, 86, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (286, 443, 1918.042969, -2427.533203, 13.791046, 359.527588, 0.126343, 271.131592, 1918.045898, -2427.530273, 13.794046, 359.368286, 0.192261, 271.301880, 94, 0, 0, 1, 0, 3, 986, '[ [ 12, 55, 0 ] ]', '[ [ 255, 255, 255 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'AY6 3315', 1, -1, -1, 100, 368, 56, 368, 56, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 1 ] ]', '[ [ 0, 3, 1, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-11 16:12:24', '2021-09-11 16:12:19', 1, NULL, 1, 1, 1, NULL, 90, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (287, 495, 177.677439, -314.351504, 1.578125, 0.000000, 0.000000, 85.477692, 168.962891, -317.140625, 1.752452, 1.148071, 0.093384, 189.953613, 100, 1, 0, 1, 0, 0, 957, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'LA6 8374', -1, 16, -1, 100, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 2, 0, 0, 0, 0 ] ]', 140, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, -1, '2021-10-07 16:00:43', 0, 0, '2021-09-11 17:05:18', '2021-09-11 17:05:00', 1, NULL, 1, 1, 1, NULL, 38, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (288, 542, 1933.790948, -2409.611979, 13.573814, 0.000000, 0.000000, 348.043945, 1930.249023, -2386.179688, 13.312869, 0.038452, 0.000000, 150.424805, 100, 1, 0, 1, 0, 0, 992, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'GP3 9694', -1, -2, 1, 0, 368, 56, 368, 56, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 1 ] ]', '[ [ 0, 2, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-14 17:11:27', 0, 0, '2021-09-14 17:11:01', '2021-09-14 17:10:38', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (289, 478, -675.274414, 906.021484, 12.591881, 359.313354, 359.994507, 113.966675, -709.599609, 932.306641, 12.571964, 359.126587, 359.994507, 29.306030, 54, 1, 0, 1, 0, 3, 1000, '[ [ 0, 186, 255 ] ]', '[ [ 255, 255, 255 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'CE0 6177', 20, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 1, 0, 0, 0 ] ]', 147, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-14 18:05:27', '2021-09-14 17:20:23', 1, NULL, 1, 1, 1, NULL, 91, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (290, 478, -681.139648, 906.112305, 12.583130, 359.230957, 359.994507, 120.536499, -681.139648, 906.112305, 12.583130, 359.230957, 359.994507, 120.536499, 48, 1, 0, 1, 0, 3, 1000, '[ [ 0, 186, 255 ] ]', '[ [ 255, 255, 255 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'FC0 6870', 20, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 1, 0, 0, 0 ] ]', 303, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-14 17:40:05', '2021-09-14 17:21:10', 1, NULL, 1, 1, 1, NULL, 91, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (291, 455, -699.125977, 904.640625, 12.752622, 359.351807, 0.878906, 358.099365, 197.994141, 2633.905273, 17.364590, 174.061890, 75.261841, 341.130981, 268, 1, 0, 1, 0, 3, 688, '[ [ 0, 186, 255 ] ]', '[ [ 255, 255, 255 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'AL2 3209', 20, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 0, 0, 0, 0, 1, 1 ] ]', '[ [ 4, 2, 4, 4, 0, 0 ] ]', 9877, '[ [ 255, 255, 255 ] ]', 2, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-15 16:53:12', '2021-09-14 17:34:12', 1, NULL, 1, 1, 1, NULL, 92, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (292, 573, -679.091797, 876.175781, 13.238042, 0.000000, 0.000000, 37.727051, -38.133789, 1057.931641, 22.270018, 41.429443, 344.141235, 268.868408, 91, 1, 0, 1, 0, 3, 955.5, '[ [ 0, 186, 255 ] ]', '[ [ 255, 255, 255 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'FU2 6260', 20, -1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 0, 0, 0, 0, 1, 2 ] ]', '[ [ 2, 2, 0, 0, 0, 0 ] ]', 16618, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-14 18:20:45', '2021-09-14 17:35:20', 1, NULL, 1, 1, 1, NULL, 93, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (293, 598, 989.417969, 340.911133, 20.742258, 354.847412, 353.935547, 297.262573, 989.419922, 340.912109, 20.744333, 354.836426, 353.957520, 297.366943, 55, 0, 0, 1, 1, 3, 1000, '[ [ 12, 55, 0 ] ]', '[ [ 254, 254, 254 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'QB2 3385', 1, -1, -1, 100, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 26, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-16 17:03:52', '2021-09-14 19:35:58', 1, NULL, 1, 1, 1, NULL, 83, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (294, 528, -284.038086, 1522.241211, 75.364708, 0.571289, 0.000000, 76.184692, -284.038086, 1522.241211, 75.364708, 0.571289, 0.000000, 76.184692, 100, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'UT4 3142', 1, -1, -1, 100, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-14 19:46:41', '2021-09-14 19:46:29', 1, NULL, 1, 1, 1, NULL, 87, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (295, 426, -288.001953, 1515.495117, 75.195099, 0.197754, 353.012695, 311.149292, -288.000000, 1515.499023, 75.197983, 0.181274, 353.254395, 311.325073, 100, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', 'NG2 6467', 1, -1, -1, 100, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 1, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-14 19:47:49', '2021-09-14 19:47:41', 1, NULL, 1, 1, 1, NULL, 86, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (296, 478, -681.013121, 896.296651, 12.587951, 0.000000, 0.000000, 302.851013, -681.012695, 896.296875, 12.587951, 0.000000, 0.000000, 302.849121, 55, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'HD6 8488', -1, -2, 8, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 51, '[ [ 255, 255, 255 ] ]', 1, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-16 17:09:16', 0, 0, '2021-09-15 16:48:12', '2021-09-15 16:48:05', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (297, 482, -316.527135, 1049.674104, 19.742188, 0.000000, 0.000000, 28.413818, 1309.740234, -1729.887695, 13.414430, 2.686157, 1.538086, 88.406982, 61, 1, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'KH4 1720', -1, -2, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 6863, '[ [ 255, 255, 255 ] ]', 0, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-17 13:43:59', '2021-09-17 13:43:04', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (298, 482, -332.136319, 1047.184056, 19.742188, 0.000000, 0.000000, 232.235306, -306.400391, 1046.692383, 19.559113, 359.467163, 359.956055, 45.961304, 99, 1, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'CB9 2334', -1, -2, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 67, '[ [ 255, 255, 255 ] ]', 0, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-18 14:28:19', 0, 0, '2021-09-17 13:52:47', '2021-09-17 13:52:36', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (299, 574, 603.001425, 1224.787494, 11.718750, 0.000000, 0.000000, 285.920807, 602.142578, 1227.374023, 11.445487, 359.994507, 359.994507, 253.866577, 100, 1, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'YJ3 7161', -1, -2, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-17 13:57:48', 0, 0, '2021-09-17 13:57:01', '2021-09-17 13:56:54', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (300, 433, 615.606408, 1666.618085, 6.992188, 0.000000, 0.000000, 18.586395, 610.530273, 1666.950195, 7.184324, 359.780273, 359.978027, 239.595337, 99, 1, 0, 1, 0, 0, 913.5, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'WK7 9961', -1, -2, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 0, 0, 0, 0, 2, 0 ] ]', '[ [ 2, 0, 1, 0, 0, 0 ] ]', 285, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-18 14:35:56', 0, 0, '2021-09-17 14:17:05', '2021-09-17 14:16:43', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (301, 498, 89.775053, -282.088661, 1.578125, 0.000000, 0.000000, 91.514771, 104.682617, -289.680664, 1.646633, 359.406738, 0.054932, 90.796509, 91, 1, 0, 1, 0, 0, 979.5, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'DS6 9045', -1, -2, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 0, 0, 0, 0, 2, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 399, '[ [ 255, 255, 255 ] ]', 255, 255, NULL, '', '', '', '', '', NULL, NULL, 1, '2021-09-17 17:45:33', 0, 0, '2021-09-17 17:42:27', '2021-09-17 17:42:21', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);
INSERT INTO `vehicles` VALUES (302, 459, -311.185165, 1044.822401, 19.731752, 0.000000, 0.000000, 170.090210, -343.111328, 1514.062500, 75.308540, 0.038452, 0.335083, 170.947266, 45, 1, 0, 2, 0, 0, 891, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'KH4 1720', -1, -2, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 1, 0, 0, 0, 1, 2 ] ]', '[ [ 2, 2, 0, 0, 0, 0 ] ]', 13691, '[ [ 255, 255, 255 ] ]', 0, 255, NULL, '', '', '', '', '', NULL, NULL, 0, NULL, 0, 0, '2021-09-18 18:38:46', '2021-09-18 14:31:59', 1, NULL, 1, 1, 1, NULL, NULL, 0, '[ [ ] ]', -1, NULL, 0, NULL, 0);

-- ----------------------------
-- Table structure for vehicles_custom
-- ----------------------------
DROP TABLE IF EXISTS `vehicles_custom`;
CREATE TABLE `vehicles_custom`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `model` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `year` int(11) NULL DEFAULT NULL,
  `duration` int(11) NULL DEFAULT NULL,
  `handling` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `tax` int(11) NULL DEFAULT NULL,
  `createdate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `createdby` int(11) NOT NULL DEFAULT 0,
  `updatedate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updatedby` int(11) NOT NULL DEFAULT 0,
  `notes` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `doortype` tinyint(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of vehicles_custom
-- ----------------------------

-- ----------------------------
-- Table structure for vehicles_shop
-- ----------------------------
DROP TABLE IF EXISTS `vehicles_shop`;
CREATE TABLE `vehicles_shop`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehmtamodel` int(11) NULL DEFAULT 0,
  `vehbrand` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `vehmodel` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `vehyear` int(11) NULL DEFAULT 2014,
  `vehprice` int(11) NULL DEFAULT 0,
  `vehtax` int(11) NULL DEFAULT 0,
  `createdate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `createdby` int(11) NOT NULL DEFAULT 0,
  `updatedate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updatedby` int(11) NOT NULL DEFAULT 0,
  `notes` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `handling` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `duration` int(11) NOT NULL DEFAULT 1000,
  `enabled` int(1) NOT NULL DEFAULT 0,
  `spawnto` tinyint(2) NOT NULL DEFAULT 0,
  `doortype` tinyint(4) NULL DEFAULT NULL,
  `stock` int(11) NULL DEFAULT NULL,
  `spawn_rate` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 94 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of vehicles_shop
-- ----------------------------
INSERT INTO `vehicles_shop` VALUES (1, 407, 'Ford', 'Truck', 2021, 1, 1, '2021-08-07 18:07:40', 1, '2021-08-07 18:07:40', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (2, 544, 'Mercedez', 'Fire Truck', 2010, 1, 1, '2021-08-07 18:08:55', 1, '2021-08-17 17:43:21', 5, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (3, 578, 'EE', 'ee', 2021, 1, 1, '2021-08-07 18:13:46', 1, '2021-08-07 18:13:46', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (4, 416, '1', '1', 2016, 1, 1, '2021-08-07 18:49:41', 1, '2021-08-07 18:49:41', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (5, 454, '1', '1', 2020, 1, 1, '2021-08-07 18:57:39', 1, '2021-08-07 18:57:39', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (6, 423, '1', '1', 2019, 1, 1, '2021-08-07 18:58:48', 1, '2021-08-07 18:58:48', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (7, 588, '1', '1', 2019, 1, 1, '2021-08-07 19:00:36', 1, '2021-08-07 19:00:36', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (8, 528, 'a', 'a', 2019, 1, 1, '2021-08-07 19:08:05', 1, '2021-08-07 19:08:05', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (9, 596, 'Ford', 'Police', 2019, 1, 1, '2021-08-07 19:09:04', 1, '2021-08-17 17:46:17', 5, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (10, 443, 'Ford', 'Truck Tow', 2019, 1, 1, '2021-08-09 12:59:38', 1, '2021-08-09 12:59:38', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (11, 411, 'Brade', 'Furis', 2020, 1, 1, '2021-08-09 12:59:58', 1, '2021-08-09 12:59:58', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (12, 520, 'BatiHydra', '12', 2019, 1, 1, '2021-08-11 20:49:59', 1, '2021-08-11 20:49:59', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (13, 434, 'Bati', 'Movil', 2020, 1, 1, '2021-08-11 20:50:25', 1, '2021-08-11 20:50:25', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (14, 468, '1', '1', 2019, 1, 1, '2021-08-17 17:23:47', 1, '2021-08-17 17:23:47', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (15, 468, 'Sanchez', 'SA', 2000, 15200, 15, '2021-08-17 20:35:33', 5, '2021-08-21 19:58:14', 1, '\n', NULL, 1000, 1, 2, NULL, 97, 5);
INSERT INTO `vehicles_shop` VALUES (16, 475, 'Sabre', 'SA', 1999, 25000, 25, '2021-08-17 23:06:52', 5, '2021-08-21 19:58:26', 1, '\n', NULL, 1000, 1, 1, NULL, 100, 5);
INSERT INTO `vehicles_shop` VALUES (17, 514, 'Mercedez', 'CV10', 2000, 200000, 200, '2021-08-17 23:33:35', 5, '2021-08-22 17:21:10', 9, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (18, 415, ' Mercedes', 'AMG GTR 2018', 2019, 2000000, 20, '2021-08-17 23:48:28', 5, '2021-08-25 23:17:51', 9, '\n', '[ [ 1200, 3000, 0.800000011920929, [ 0, -0.2000000029802322, -0.2000000029802322 ], 70, 0.800000011920929, 0.8999999761581421, 0.5, 5, 275, 49.90000152587891, 20, \"awd\", \"petrol\", 11.10000038146973, 0.5, false, 35, 0.800000011920929, 0.2000000029802322, 0, 0.1000000014901161, -0.1500000059604645, 0.5, 0.6000000238418579, 0.4000000059604645, 0.5400000214576721, 105000, 3221233668, 2129920, \"long\", \"long\", 1 ] ]', 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (19, 598, 'Police', 'LV', 2000, 200000, 20, '2021-08-18 02:11:48', 5, '2021-08-18 02:11:48', 0, '\n', NULL, 1000, 0, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (20, 484, 'Marquis', 'GT', 2000, 2000000, 200, '2021-08-18 03:02:41', 5, '2021-08-22 17:22:16', 9, '\n', NULL, 1000, 1, 6, NULL, 100, 5);
INSERT INTO `vehicles_shop` VALUES (21, 560, 'Subaru', 'Impreza WRX STI', 2017, 54500, 25, '2021-08-18 20:45:44', 5, '2021-08-21 20:01:53', 1, '\n', NULL, 1000, 1, 1, NULL, 100, 5);
INSERT INTO `vehicles_shop` VALUES (22, 458, 'KIA', 'Montero', 2009, 20000, 25, '2021-08-18 20:46:55', 5, '2021-08-21 20:03:08', 1, '\n', NULL, 1000, 1, 1, NULL, 99, 5);
INSERT INTO `vehicles_shop` VALUES (23, 531, 'Tractor', 'SA', 2000, 20000, 25, '2021-08-18 20:47:47', 5, '2021-08-18 20:47:47', 0, '\n', NULL, 1000, 0, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (24, 602, 'Nissan', '330sx', 2009, 95000, 35, '2021-08-18 20:48:40', 5, '2021-08-29 01:07:51', 5, '\n', '[ [ 1500, 3400, 1, [ 0, 0.1000000014901161, -0.2000000029802322 ], 38, 1, 0.800000011920929, 0.5, 5, 215, 17.39999961853027, 5, \"rwd\", \"petrol\", 7, 0.6000000238418579, false, 30, 1.200000047683716, 0.119999997317791, 0, 0.300000011920929, -0.1500000059604645, 0.5, 0.4000000059604645, 0.25, 0.5, 35000, 1073752064, 2097152, \"small\", \"small\", 0 ] ]', 1000, 1, 1, NULL, 100, 5);
INSERT INTO `vehicles_shop` VALUES (25, 424, 'Jeep', '4X4', 2012, 35350, 25, '2021-08-18 20:50:34', 5, '2021-08-21 19:54:40', 1, '\n', NULL, 1000, 1, 1, NULL, 100, 5);
INSERT INTO `vehicles_shop` VALUES (26, 496, 'Renault', 'Clio', 2009, 15000, 25, '2021-08-18 20:51:28', 5, '2021-08-21 20:01:14', 1, '\n', NULL, 1000, 1, 1, NULL, 100, 5);
INSERT INTO `vehicles_shop` VALUES (27, 422, 'Cadillac', 'Escalade', 2020, 67500, 25, '2021-08-18 20:52:21', 5, '2021-08-21 19:48:50', 1, '\n', '[ [ 5700, 4000, 0.5, [ 0, 0, 0 ], 38, 0.699999988079071, 0.8500000238418579, 0.4600000083446503, 5, 160, 12, 15, \"awd\", \"diesel\", 8.5, 0.5, false, 45, 1.5, 0.2000000029802322, 5, 0.3499999940395355, -0.1749999970197678, 0.550000011920929, 0, 0.2599999904632568, 0.2000000029802322, 26000, 64, 1064964, \"long\", \"small\", 0 ] ]', 1000, 1, 1, NULL, 100, 1);
INSERT INTO `vehicles_shop` VALUES (28, 402, 'Dodge', 'Challenger', 2017, 87500, 35, '2021-08-18 20:53:23', 5, '2021-08-21 20:01:02', 1, '\n', NULL, 1000, 1, 1, NULL, 100, 5);
INSERT INTO `vehicles_shop` VALUES (29, 507, 'Ford', 'Taurus', 2017, 35000, 35, '2021-08-18 20:54:08', 5, '2021-08-21 20:00:44', 1, '\n', NULL, 1000, 1, 1, NULL, 98, 5);
INSERT INTO `vehicles_shop` VALUES (30, 562, 'Toyota', 'Corolla', 2019, 54500, 35, '2021-08-18 20:54:52', 5, '2021-08-21 20:00:23', 1, '\n', NULL, 1000, 1, 1, NULL, 100, 5);
INSERT INTO `vehicles_shop` VALUES (31, 610, 'Farm', 'SA', 2000, 20000, 25, '2021-08-18 20:55:43', 5, '2021-08-18 20:55:43', 0, '\n', NULL, 1000, 0, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (32, 400, 'Mercedez', 'AMG V12', 2018, 125000, 35, '2021-08-18 20:56:20', 5, '2021-08-29 03:19:23', 5, '\n', '[ [ 1700, 5008.2998046875, 2.5, [ 0, 0, -0.300000011920929 ], 38, 0.75, 0.8500000238418579, 0.5, 5, 160, 10, 20, \"awd\", \"diesel\", 6.199999809265137, 0.6000000238418579, false, 35, 2.400000095367432, 0.07999999821186066, 0, 0.2800000011920929, -0.1400000005960464, 0.5, 0.25, 0.2700000107288361, 0.2300000041723251, 25000, 32, 5242882, \"long\", \"small\", 0 ] ]', 1000, 1, 1, NULL, 100, 5);
INSERT INTO `vehicles_shop` VALUES (33, 565, 'Ford', 'Raptor 2017', 2000, 70000, 25, '2021-08-18 20:56:58', 5, '2021-08-29 00:14:52', 5, '\n', NULL, 1000, 1, 1, NULL, 100, 5);
INSERT INTO `vehicles_shop` VALUES (34, 579, 'Dodge', 'Durango SRT', 2018, 67000, 45, '2021-08-18 20:57:41', 5, '2021-08-21 19:59:11', 1, '\n', NULL, 1000, 1, 1, NULL, 100, 5);
INSERT INTO `vehicles_shop` VALUES (35, 404, 'Mercedez', 'GLE 350', 2017, 110000, 25, '2021-08-18 20:58:19', 5, '2021-08-25 16:20:18', 2, '\n', NULL, 1000, 1, 1, NULL, 100, 5);
INSERT INTO `vehicles_shop` VALUES (36, 489, 'Nissan', 'Roadster', 1998, 35000, 45, '2021-08-18 20:58:53', 5, '2021-08-21 19:58:56', 1, '\n', NULL, 1000, 1, 1, NULL, 100, 5);
INSERT INTO `vehicles_shop` VALUES (37, 479, 'Nissan', 'Warrior', 2019, 25000, 35, '2021-08-18 20:59:20', 5, '2021-08-29 20:39:23', 5, '\n', '[ [ 1500, 3800, 2, [ 0, 0.2000000029802322, 0 ], 75, 0.6499999761581421, 0.8500000238418579, 0.3199999928474426, 4, 275, 12, 20, \"awd\", \"petrol\", 5, 0.6000000238418579, false, 30, 1, 0.1000000014901161, 0, 0.2700000107288361, -0.1700000017881393, 0.5, 0.2000000029802322, 0.239999994635582, 0.4799999892711639, 18000, 32, 1, \"small\", \"small\", 0 ] ]', 1000, 1, 1, NULL, 99, 5);
INSERT INTO `vehicles_shop` VALUES (38, 495, 'Ford', 'DAKAR', 2012, 65000, 25, '2021-08-18 20:59:53', 5, '2021-08-31 01:53:52', 5, '\n', '[ [ 2000, 4000, 2.200000047683716, [ 0, 0, -0.6000000238418579 ], 38, 0.75, 0.8500000238418579, 0.5, 5, 180, 12.5, 15, \"awd\", \"petrol\", 8, 0.5, false, 30, 0.800000011920929, 0.07999999821186066, 0, 0.3499999940395355, -0.3100000023841858, 0.5, 0, 0.3799999952316284, 0.3499999940395355, 40000, 0, 3246080, \"long\", \"small\", 22 ] ]', 1000, 1, 1, NULL, 99, 5);
INSERT INTO `vehicles_shop` VALUES (39, 518, 'Camaro', 'SS', 1969, 33500, 25, '2021-08-19 18:17:12', 5, '2021-08-21 19:54:18', 1, '\n', NULL, 1000, 1, 1, NULL, 99, 5);
INSERT INTO `vehicles_shop` VALUES (40, 419, 'BMW', 'M3 GTR', 2000, 20000, 25, '2021-08-19 18:18:37', 5, '2021-08-30 12:03:08', 18, '\n', '[ { \"1\": 1200, \"2\": 4350, \"3\": 0.800000011920929, \"4\": [ 0, -0.2000000029802322, -0.2000000029802322 ], \"5\": 38, \"6\": 0.800000011920929, \"7\": 0.8799999952316284, \"8\": 0.5, \"9\": 5, \"10\": 275, \"11\": 50, \"12\": 20, \"13\": \"awd\", \"14\": \"petrol\", \"15\": 11.10000038146973, \"16\": 0.5, \"17\": false, \"18\": 38, \"19\": 0.800000011920929, \"20\": 0.2000000029802322, \"21\": 1, \"22\": 0.3499999940395355, \"23\": -0.1500000059604645, \"24\": 0.5, \"25\": 0, \"26\": 0.3600000143051147, \"27\": 0.5400000214576721, \"28\": 19000, \"29\": 1073741824, \"30\": 268435456, \"31\": \"long\", \"33\": 0 } ]', 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (41, 518, 'Camaro', 'SS Limited Edition', 1969, 65300, 25, '2021-08-19 20:45:01', 1, '2021-08-22 17:22:58', 9, '\n', '[ [ 5000, 4500, 2, [ 0, 0.300000011920929, -0.009999999776482582 ], 38, 0.6000000238418579, 0.8600000143051147, 0.5, 4, 194.5, 25, 0.1000000014901161, \"awd\", \"petrol\", 50, 0.300000011920929, false, 35, 0.6000000238418579, 0.2000000029802322, 0, 0.2000000029802322, -0.1500000059604645, 0.6000000238418579, 0.4000000059604645, 0.300000011920929, 0.5199999809265137, 19000, 1077936132, 4, \"small\", \"small\", 1 ] ]', 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (69, 552, '1', '1', 2000, 1, 1, '2021-08-24 19:42:09', 4, '2021-08-24 19:43:15', 4, '\n', NULL, 1000, 0, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (43, 426, 'Premier', 'SA', 2000, 20000, 25, '2021-08-20 18:39:47', 5, '2021-08-20 18:39:47', 0, '\n', NULL, 1000, 0, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (75, 481, 'BMX', 'SA', 2000, 2000, 15, '2021-08-29 01:14:40', 5, '2021-08-29 01:22:45', 5, '\n', '[ [ 150, 39, 2, [ 0, 0.05000000074505806, -0.6399999856948853 ], 38, 6, 0.8999999761581421, 0.4799999892711639, 5, 275, 75, 1, \"rwd\", \"petrol\", 19, 0.5, false, 35, 0.800000011920929, 0.1500000059604645, 0, 0.2000000029802322, -0.1000000014901161, 0.5, 0, 0, 0.1500000059604645, 10000, 1090519040, 0, \"small\", \"small\", 9 ] ]', 1000, 0, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (44, 477, 'Toyota AE 86', 'Trueno', 2021, 2000000000, 25, '2021-08-21 00:34:54', 5, '2021-08-31 23:44:08', 18, '\n', '[ [ 1200, 2979.699951171875, 1, [ 0, 0, -0.1000000014901161 ], 70, 0.800000011920929, 0.800000011920929, 0.5, 5, 275, 35, 15, \"awd\", \"petrol\", 11.10000038146973, 0.5, false, 30, 1.200000047683716, 0.1000000014901161, 0, 0.3100000023841858, -0.1500000059604645, 0.5, 0.300000011920929, 0.239999994635582, 0.6000000238418579, 45000, 0, 12582912, \"small\", \"small\", 0 ] ]', 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (45, 559, '1', '1', 1960, 1, 1, '2021-08-22 17:44:08', 1, '2021-08-22 17:44:08', 0, '\n', NULL, 1000, 0, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (48, 444, 'Ford', 'Monster', 1997, 1, 1, '2021-08-22 18:04:13', 9, '2021-08-22 18:05:42', 9, '\n', '[ [ 5000, 20000, 3, [ 0, 0, -0.3499999940395355 ], 38, 0.6499999761581421, 0.8500000238418579, 0.550000011920929, 5, 200, 18, 25, \"awd\", \"petrol\", 7, 0.4000000059604645, false, 35, 1.5, 0.07000000029802322, 0, 0.449999988079071, -0.300000011920929, 0.5, 0.300000011920929, 0.4399999976158142, 0.3499999940395355, 40000, 40, 19923013, \"long\", \"small\", 20 ] ]', 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (49, 426, 'FSB', 'Premier', 2017, 1, 1, '2021-08-24 13:35:44', 1, '2021-08-24 13:35:44', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (50, 463, 'Harly', 'Davison', 2015, 15000, 20, '2021-08-24 14:14:56', 1, '2021-08-24 14:28:34', 1, '\n', NULL, 1000, 1, 2, NULL, 99, 5);
INSERT INTO `vehicles_shop` VALUES (51, 521, 'FCRT', 'Motors', 2018, 10500, 15, '2021-08-24 14:28:18', 1, '2021-08-24 14:31:26', 1, '\n', NULL, 1000, 1, 2, NULL, 95, 5);
INSERT INTO `vehicles_shop` VALUES (52, 471, 'Quater', 'Moq', 2018, 8000, 10, '2021-08-24 14:31:15', 1, '2021-08-24 14:31:40', 1, '\n', NULL, 1000, 1, 2, NULL, 100, 5);
INSERT INTO `vehicles_shop` VALUES (53, 586, 'Way', 'Ferer', 2019, 18000, 30, '2021-08-24 14:34:27', 1, '2021-08-24 14:34:35', 1, '\n', NULL, 1000, 1, 2, NULL, 99, 5);
INSERT INTO `vehicles_shop` VALUES (54, 427, '1', 'Police', 1090, 10000, 1, '2021-08-24 15:18:09', 12, '2021-08-24 15:18:09', 0, '\n', NULL, 1000, 0, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (55, 525, '1', 'Grua', 2000, 20000, 1, '2021-08-24 15:20:54', 12, '2021-08-24 15:20:54', 0, '\n', NULL, 1000, 0, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (56, 528, '1', 'Police', 2900, 30000, 1, '2021-08-24 15:24:36', 12, '2021-08-24 15:24:36', 0, '\n', NULL, 1000, 0, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (57, 490, '1', 'Police', 2000, 40000, 1, '2021-08-24 15:25:21', 12, '2021-08-24 15:25:21', 0, '\n', NULL, 1000, 0, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (58, 599, '1', 'Police', 2000, 50000, 1, '2021-08-24 15:28:46', 12, '2021-08-24 15:28:46', 0, '\n', NULL, 1000, 0, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (59, 601, '1', 'Police', 2000, 500000, 1, '2021-08-24 15:31:05', 12, '2021-08-24 15:31:05', 0, '\n', NULL, 1000, 0, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (60, 597, '1', '1', 2000, 50000, 1, '2021-08-24 15:32:24', 12, '2021-08-24 15:32:24', 0, '\n', NULL, 1000, 0, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (61, 523, '1', '1', 2000, 50000, 1, '2021-08-24 15:34:30', 12, '2021-08-24 15:34:30', 0, '\n', NULL, 1000, 0, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (62, 428, '1', '1', 2000, 500000, 1, '2021-08-24 15:37:28', 12, '2021-08-24 15:37:28', 0, '\n', NULL, 1000, 0, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (63, 433, '1', '1', 2000, 60000, 1, '2021-08-24 15:55:15', 12, '2021-08-24 15:55:15', 0, '\n', NULL, 1000, 0, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (64, 497, '1', '1', 2000, 200000, 1, '2021-08-24 16:20:21', 12, '2021-08-24 16:20:21', 0, '\n', NULL, 1000, 0, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (65, 548, '11', '1', 2000, 500000, 1, '2021-08-24 16:21:58', 12, '2021-08-24 16:21:58', 0, '\n', NULL, 1000, 0, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (66, 487, '1', '1', 2000, 500000, 1, '2021-08-24 16:22:23', 12, '2021-08-24 16:22:23', 0, '\n', NULL, 1000, 0, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (67, 563, '1', '1', 2000, 500000, 1, '2021-08-24 16:23:07', 12, '2021-08-24 16:23:07', 0, '\n', NULL, 1000, 0, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (68, 472, '1', '1', 2000, 50000, 1, '2021-08-24 17:06:56', 12, '2021-08-24 17:06:56', 0, '\n', NULL, 1000, 0, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (70, 503, 'Mazda', 'RX 7', 1997, 10000000, 0, '2021-08-24 21:24:24', 2, '2021-08-25 09:29:03', 1, '\n', '[ [ 1600, 4500, 1.399999976158142, [ 0, 0.2000000029802322, -0.4000000059604645 ], 38, 0.8500000238418579, 0.800000011920929, 0.4799999892711639, 5, 220, 11.80000019073486, 5, \"rwd\", \"petrol\", 10, 0.5, false, 30, 1.5, 0.1000000014901161, 10, 0.2899999916553497, -0.1599999964237213, 0.6000000238418579, 0.4000000059604645, 0.2000000029802322, 0.5600000023841858, 45000, 1073750020, 12582912, \"small\", \"small\", 0 ] ]', 1000, 1, 0, 1, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (71, 426, 'FSB', 'Premier', 2017, 1, 1, '2021-08-25 18:38:27', 11, '2021-08-25 18:38:27', 0, '\n', NULL, 1000, 0, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (72, 462, 'Faggio', 'SA', 2000, 2500, 25, '2021-08-25 20:50:10', 5, '2021-08-25 20:50:10', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (73, 587, 'Euros', 'SA', 2000, 20000, 25, '2021-08-25 21:49:34', 5, '2021-08-25 21:49:34', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (74, 440, 'Carge', 'Behh', 2012, 5000, 50, '2021-08-27 20:38:28', 1, '2021-08-27 20:38:28', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (76, 559, 'Supra', 'Toyota', 2019, 100000, 250, '2021-08-29 22:06:53', 1, '2021-08-29 23:07:32', 18, '\n', '[ [ 1500, 3600, 2.200000047683716, [ 0, 0, -0.05000000074505806 ], 75, 1, 0.800000011920929, 0.5, 5, 275, 37, 10, \"awd\", \"petrol\", 10, 0.4000000059604645, false, 55, 1.100000023841858, 0.1000000014901161, 0, 0.2800000011920929, -0.1500000059604645, 0.5, 0.300000011920929, 0.25, 0.6000000238418579, 35000, 3221235716, 67108864, \"small\", \"small\", 1 ] ]', 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (77, 480, 'no se', 'auto chimba', 2000, 20000, 25, '2021-08-29 23:10:55', 5, '2021-08-29 23:10:55', 0, '\n', NULL, 1000, 0, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (78, 497, 'Hollister Air', 'M-19', 2021, 1000000, 5000, '2021-08-31 18:21:58', 1, '2021-08-31 18:21:58', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (79, 497, 'AStarâ€™s', '350 B2', 2017, 1000000, 1000, '2021-09-11 15:36:48', 1, '2021-09-11 15:36:48', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (80, 523, 'BMW', 'Norwalk', 2016, 40000, 150, '2021-09-11 15:37:21', 1, '2021-09-11 15:37:21', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (81, 596, 'Ford', 'Crown Victoria', 2019, 45000, 200, '2021-09-11 15:37:49', 1, '2021-09-11 15:37:49', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (82, 597, 'Dodge', 'Charger', 2017, 50000, 280, '2021-09-11 15:38:39', 1, '2021-09-11 15:38:39', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (83, 598, 'Ford', 'Explorer', 2018, 35000, 180, '2021-09-11 15:39:17', 1, '2021-09-11 15:39:17', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (84, 599, 'Chevrolet', 'Tahoe', 2020, 60000, 300, '2021-09-11 15:39:54', 1, '2021-09-11 15:39:54', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (85, 470, 'Dodge', 'Charger Hellcat', 2020, 55000, 200, '2021-09-11 15:40:30', 1, '2021-09-11 15:40:30', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (86, 426, 'Ford', 'Crown Victoria', 2018, 35000, 50, '2021-09-11 15:41:04', 1, '2021-09-11 15:41:04', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (87, 528, 'GENERIC', 'Spartant', 2019, 85000, 600, '2021-09-11 15:41:35', 1, '2021-09-11 15:41:35', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (88, 416, 'Ford', 'E-350', 2018, 45000, 250, '2021-09-11 15:42:11', 1, '2021-09-11 15:42:11', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (89, 490, 'GMC', 'Sierra', 2021, 35000, 600, '2021-09-11 15:42:46', 1, '2021-09-11 15:42:46', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (90, 443, 'GMC', 'Sany', 2015, 65000, 400, '2021-09-11 15:43:17', 1, '2021-09-11 15:43:17', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (91, 478, 'Walton', 'Arm', 2012, 10000, 50, '2021-09-14 17:19:59', 1, '2021-09-14 17:19:59', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (92, 455, 'Flatbed', 'RES', 2014, 25000, 50, '2021-09-14 17:33:28', 1, '2021-09-14 17:33:28', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);
INSERT INTO `vehicles_shop` VALUES (93, 573, 'Ford', 'Dune', 2016, 35000, 150, '2021-09-14 17:33:58', 1, '2021-09-14 17:33:58', 0, '\n', NULL, 1000, 1, 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for wearables
-- ----------------------------
DROP TABLE IF EXISTS `wearables`;
CREATE TABLE `wearables`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bone` int(11) NOT NULL DEFAULT 1,
  `x` float NOT NULL DEFAULT 0,
  `y` float NOT NULL DEFAULT 0,
  `z` float NOT NULL DEFAULT 0,
  `rx` float NULL DEFAULT 0,
  `ry` float NOT NULL DEFAULT 0,
  `rz` float NOT NULL DEFAULT 0,
  `sz` float NOT NULL DEFAULT 1,
  `sy` float NOT NULL DEFAULT 1,
  `sx` float NOT NULL DEFAULT 1,
  `model` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of wearables
-- ----------------------------
INSERT INTO `wearables` VALUES (198, 1, 0, 0, 0.303, 0, 0, 0, 1, 1, 1, 1239, 1);
INSERT INTO `wearables` VALUES (199, 3, 0, 0.04, 0.06, 0, 0, 0, 1, 1.16, 1, 18207, 1);
INSERT INTO `wearables` VALUES (200, 1, 0, 0.001, 0.035, 0, 0, 0, 1.13, 1, 1, 7078, 1);

-- ----------------------------
-- Table structure for wiretransfers
-- ----------------------------
DROP TABLE IF EXISTS `wiretransfers`;
CREATE TABLE `wiretransfers`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `from` int(11) NULL DEFAULT 0,
  `to` int(11) NULL DEFAULT 0,
  `amount` int(11) NOT NULL,
  `reason` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `type` int(11) NOT NULL,
  `from_card` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `to_card` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `details` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1718 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wiretransfers
-- ----------------------------
INSERT INTO `wiretransfers` VALUES (1645, -8, 16, 2500, 'WAGE', '2021-09-11 15:00:44', 6, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1644, -17, 16, 144, 'BANKINTEREST', '2021-09-11 15:00:44', 12, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1707, -3, 90, 200, 'STATEBENEFITS', '2021-09-16 18:00:47', 6, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1706, -17, 90, 63, 'BANKINTEREST', '2021-09-16 18:00:47', 12, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1705, 16, -3, 80, 'VEHICLETAX', '2021-09-16 17:00:47', 11, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1704, -3, 16, 200, 'STATEBENEFITS', '2021-09-16 17:00:47', 6, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1703, -17, 16, 220, 'BANKINTEREST', '2021-09-16 17:00:47', 12, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1702, -8, -3, 5120, 'Vehicle Taxes to Government', '2021-09-16 17:00:46', 11, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1683, 16, -3, 80, 'VEHICLETAX', '2021-09-15 17:00:38', 11, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1682, -3, 16, 200, 'STATEBENEFITS', '2021-09-15 17:00:38', 6, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1681, -17, 16, 201, 'BANKINTEREST', '2021-09-15 17:00:38', 12, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1680, -8, -3, 5120, 'Vehicle Taxes to Government', '2021-09-15 17:00:37', 11, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1679, -20, -3, 250, 'Vehicle Taxes to Government', '2021-09-15 17:00:37', 11, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1678, 16, -3, 80, 'VEHICLETAX', '2021-09-15 16:00:42', 11, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1677, -3, 16, 200, 'STATEBENEFITS', '2021-09-15 16:00:42', 6, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1676, -17, 16, 198, 'BANKINTEREST', '2021-09-15 16:00:42', 12, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1701, -20, -3, 250, 'Vehicle Taxes to Government', '2021-09-16 17:00:46', 11, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1700, 16, -3, 80, 'VEHICLETAX', '2021-09-16 16:00:47', 11, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1699, -3, 16, 200, 'STATEBENEFITS', '2021-09-16 16:00:47', 6, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1698, -17, 16, 217, 'BANKINTEREST', '2021-09-16 16:00:47', 12, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1697, 16, -3, 80, 'VEHICLETAX', '2021-09-16 13:00:31', 11, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1696, -3, 16, 200, 'STATEBENEFITS', '2021-09-16 13:00:31', 6, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1695, -17, 16, 214, 'BANKINTEREST', '2021-09-16 13:00:31', 12, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1694, 16, -3, 80, 'VEHICLETAX', '2021-09-16 12:00:31', 11, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1693, -3, 16, 200, 'STATEBENEFITS', '2021-09-16 12:00:31', 6, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1692, -17, 16, 211, 'BANKINTEREST', '2021-09-16 12:00:31', 12, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1691, 16, -3, 80, 'VEHICLETAX', '2021-09-16 11:00:31', 11, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1690, -3, 16, 200, 'STATEBENEFITS', '2021-09-16 11:00:31', 6, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1689, -17, 16, 208, 'BANKINTEREST', '2021-09-16 11:00:31', 12, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1688, -8, -3, 5120, 'Vehicle Taxes to Government', '2021-09-16 11:00:30', 11, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1687, -20, -3, 250, 'Vehicle Taxes to Government', '2021-09-16 11:00:29', 11, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1686, 16, -3, 80, 'VEHICLETAX', '2021-09-16 10:00:31', 11, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1685, -3, 16, 200, 'STATEBENEFITS', '2021-09-16 10:00:31', 6, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1684, -17, 16, 204, 'BANKINTEREST', '2021-09-16 10:00:31', 12, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1709, -3, 2, 200, 'STATEBENEFITS', '2021-09-17 14:00:56', 6, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1708, -17, 2, 220, 'BANKINTEREST', '2021-09-17 14:00:56', 12, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1711, -3, 2, 200, 'STATEBENEFITS', '2021-09-17 18:00:04', 6, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1710, -17, 2, 224, 'BANKINTEREST', '2021-09-17 18:00:04', 12, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1713, -3, 2, 200, 'STATEBENEFITS', '2021-09-18 15:00:26', 6, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1712, -17, 2, 228, 'BANKINTEREST', '2021-09-18 15:00:25', 12, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1715, -3, 2, 200, 'STATEBENEFITS', '2021-09-21 19:00:17', 6, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1714, -17, 2, 231, 'BANKINTEREST', '2021-09-21 19:00:17', 12, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1717, -3, 2, 200, 'STATEBENEFITS', '2021-09-21 20:01:01', 6, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1716, -17, 2, 235, 'BANKINTEREST', '2021-09-21 20:01:01', 12, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1646, 16, -3, 250, 'INCOMETAX', '2021-09-11 15:00:44', 11, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1647, 16, -3, 85, 'VEHICLETAX', '2021-09-11 15:00:44', 11, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1648, 16, -3, 1, 'PROPERTYTAX', '2021-09-11 15:00:44', 11, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1649, -17, 16, 173, 'BANKINTEREST', '2021-09-11 16:00:37', 12, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1650, -3, 16, 200, 'STATEBENEFITS', '2021-09-11 16:00:37', 6, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1651, 16, -3, 85, 'VEHICLETAX', '2021-09-11 16:00:38', 11, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1652, -8, -3, 5120, 'Vehicle Taxes to Government', '2021-09-11 17:00:40', 11, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1653, -17, 16, 176, 'BANKINTEREST', '2021-09-11 17:00:59', 12, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1654, -3, 16, 200, 'STATEBENEFITS', '2021-09-11 17:00:59', 6, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1655, 16, -3, 85, 'VEHICLETAX', '2021-09-11 17:01:00', 11, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1656, -8, -3, 5120, 'Vehicle Taxes to Government', '2021-09-12 11:00:08', 11, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1657, -17, 16, 179, 'BANKINTEREST', '2021-09-12 11:00:10', 12, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1658, -3, 16, 200, 'STATEBENEFITS', '2021-09-12 11:00:10', 6, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1659, 16, -3, 110, 'VEHICLETAX', '2021-09-12 11:00:10', 11, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1660, -17, 16, 182, 'BANKINTEREST', '2021-09-12 12:00:09', 12, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1661, -3, 16, 200, 'STATEBENEFITS', '2021-09-12 12:00:09', 6, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1662, 16, -3, 110, 'VEHICLETAX', '2021-09-12 12:00:09', 11, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1663, -17, 16, 185, 'BANKINTEREST', '2021-09-12 20:00:26', 12, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1664, -3, 16, 200, 'STATEBENEFITS', '2021-09-12 20:00:26', 6, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1665, 16, -3, 80, 'VEHICLETAX', '2021-09-12 20:00:26', 11, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1666, -8, -3, 5120, 'Vehicle Taxes to Government', '2021-09-14 17:00:18', 11, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1667, -17, 16, 188, 'BANKINTEREST', '2021-09-14 17:00:19', 12, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1668, -3, 16, 200, 'STATEBENEFITS', '2021-09-14 17:00:20', 6, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1669, 16, -3, 80, 'VEHICLETAX', '2021-09-14 17:00:20', 11, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1670, -17, 16, 192, 'BANKINTEREST', '2021-09-14 18:00:18', 12, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1671, -3, 16, 200, 'STATEBENEFITS', '2021-09-14 18:00:18', 6, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1672, 16, -3, 80, 'VEHICLETAX', '2021-09-14 18:00:18', 11, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1673, -17, 16, 195, 'BANKINTEREST', '2021-09-14 19:00:20', 12, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1674, -3, 16, 200, 'STATEBENEFITS', '2021-09-14 19:00:21', 6, NULL, NULL, NULL);
INSERT INTO `wiretransfers` VALUES (1675, 16, -3, 80, 'VEHICLETAX', '2021-09-14 19:00:21', 11, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for worlditems
-- ----------------------------
DROP TABLE IF EXISTS `worlditems`;
CREATE TABLE `worlditems`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemid` int(11) NULL DEFAULT 0,
  `itemvalue` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `x` float NULL DEFAULT 0,
  `y` float NULL DEFAULT 0,
  `z` float NULL DEFAULT 0,
  `dimension` int(5) NULL DEFAULT 0,
  `interior` int(5) NULL DEFAULT 0,
  `creationdate` datetime(0) NULL DEFAULT NULL,
  `rx` float NULL DEFAULT 0,
  `ry` float NULL DEFAULT 0,
  `rz` float NULL DEFAULT 0,
  `creator` int(10) UNSIGNED NULL DEFAULT 0,
  `protected` int(100) NOT NULL DEFAULT 0,
  `perm_use` int(2) NOT NULL DEFAULT 1,
  `perm_move` int(2) NOT NULL DEFAULT 1,
  `perm_pickup` int(2) NOT NULL DEFAULT 1,
  `perm_use_data` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `perm_move_data` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `perm_pickup_data` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `useExactValues` int(1) NOT NULL DEFAULT 0,
  `metadata` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL COMMENT 'additional data for the item that can be edited per individual item, JSON',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5255 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of worlditems
-- ----------------------------
INSERT INTO `worlditems` VALUES (1662, 176, '6:34', 2085.2, 486.559, 46.9896, 342, 32, '2021-08-21 11:54:56', 0, 0, 270.798, 4, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5187, 72, 'venezuela mano, me entiendes? ahora te doy la oportunidad de unirte a mi o sufrir las consecuencias, espero que lo pienses bien porque solo habra una oportunidad.', 310.716, -166.703, 999.675, 354, 6, '2021-09-01 00:38:04', 0, 0, 182.126, 7, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5186, 72, 'entendido que yo mando, un venezolano jnunca debe dirigir un servidor, la economia de ellos falla todo falla cuando es de', 311.224, -166.843, 999.675, 354, 6, '2021-09-01 00:38:01', 0, 0, 182.126, 7, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5185, 72, 'ya tengo suficiente dinero para el host y buenos amigos para que me ayuden a hacerlo jose se va a lamentar por no haber', 312.083, -166.877, 999.675, 354, 6, '2021-09-01 00:37:59', 0, 0, 182.126, 7, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5184, 72, 'Nunca haria un servidor con un venezolano, son personas inferiores, de mala raza, por ende voy a crear mi propio servidor', 312.789, -166.858, 999.675, 354, 6, '2021-09-01 00:37:57', 0, 0, 182.126, 7, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5183, 72, 'venezuela mano, me entiendes? ahora te doy la oportunidad de unirte a mi o sufrir las consecuencias, espero que lo pienses bien porque solo habra una oportunidad.', 1434.91, 1453.73, 9.89856, 351, 1, '2021-09-01 00:35:27', 0, 0, 328.433, 7, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5182, 72, 'entendido que yo mando, un venezolano jnunca debe dirigir un servidor, la economia de ellos falla todo falla cuando es de', 1435.62, 1454.53, 9.89856, 351, 1, '2021-09-01 00:35:25', 0, 0, 328.433, 7, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5181, 72, 'ya tengo suficiente dinero para el host y buenos amigos para que me ayuden a hacerlo jose se va a lamentar por no haber', 1435.96, 1455.53, 9.89856, 351, 1, '2021-09-01 00:35:24', 0, 0, 328.433, 7, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5180, 72, 'Nunca haria un servidor con un venezolano, son personas inferiores, de mala raza, por ende voy a crear mi propio servidor', 1436.66, 1456.39, 9.89856, 351, 1, '2021-09-01 00:35:22', 0, 0, 328.433, 7, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5233, 271, '24 casings of 5.56mm', -639.077, 965.888, 10.6429, 0, 0, '2021-09-16 18:03:43', 0, 0, 102.853, 90, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5217, 271, '7.62mm casing', 1109.55, -1310.22, 24.6183, 0, 0, '2021-09-16 09:21:34', 0, 0, 185.576, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5218, 271, '11 casings of 7.62mm', -574.88, -85.2883, 63.5404, 0, 0, '2021-09-16 16:16:15', 0, 0, 322.885, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5219, 271, '17 casings of 7.62mm', -574.001, -84.428, 63.5185, 0, 0, '2021-09-16 16:16:20', 0, 0, 321.517, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5232, 271, '3 casings of 5.56mm', -638.294, 1009.65, 14.4268, 0, 0, '2021-09-16 18:02:34', 0, 0, 347.621, 90, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5222, 271, '7.62mm casing', -613.832, -81.2199, 62.7409, 0, 0, '2021-09-16 17:16:39', 0, 0, 161.955, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5223, 271, '7.62mm casing', -614.325, -80.4575, 62.756, 0, 0, '2021-09-16 17:16:41', 0, 0, 127.347, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5224, 271, '5 casings of 7.62mm', -613.485, -80.8685, 62.6752, 0, 0, '2021-09-16 17:16:45', 0, 0, 272.374, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5225, 271, '4 casings of 7.62mm', -601.529, -87.0783, 62.8926, 0, 0, '2021-09-16 17:17:20', 0, 0, 258.945, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5226, 271, '7.62mm casing', -568.701, -91.6517, 63.2258, 0, 0, '2021-09-16 17:17:33', 0, 0, 101.194, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5227, 271, '7.62mm casing', -581.217, -155.877, 77.1697, 0, 0, '2021-09-16 17:18:08', 0, 0, 265.255, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5228, 271, '7.62mm casing', -581.218, -155.888, 77.1712, 0, 0, '2021-09-16 17:18:11', 0, 0, 265.42, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5229, 271, '7.62mm casing', 520.74, 477.913, 17.9297, 0, 0, '2021-09-16 17:42:31', 0, 0, 160.076, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5230, 271, '3 casings of 5.56mm', -638.808, 1008.42, 14.5047, 0, 0, '2021-09-16 18:02:28', 0, 0, 338.672, 90, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5231, 271, '7 casings of 5.56mm', -638.635, 1008.39, 14.5002, 0, 0, '2021-09-16 18:02:31', 0, 0, 346.726, 90, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5083, 242, '1', 938.937, 2055.11, 10.3366, 401, 28, '2021-08-31 19:35:42', 0, 0, 268.269, 11, 0, 1, 1, 1, NULL, NULL, NULL, 1, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5084, 242, '1', 934.48, 2055.18, 10.3633, 401, 28, '2021-08-31 19:37:25', 0, 0, 91.387, 11, 0, 1, 1, 1, NULL, NULL, NULL, 1, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5081, 242, '1', 935.828, 2053.83, 10.3566, 401, 28, '2021-08-31 19:35:31', 0, 0, 180, 11, 0, 1, 1, 1, NULL, NULL, NULL, 1, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5090, 242, '1', 937.519, 2053.78, 10.3454, 401, 28, '2021-08-31 19:42:15', 0, 0, 178.657, 11, 0, 1, 1, 1, NULL, NULL, NULL, 1, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5078, 103, '1', 925.339, 2068.34, 11.7865, 401, 28, '2021-08-31 19:32:35', 0, 0, 179.285, 11, 0, 1, 1, 1, NULL, NULL, NULL, 1, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (4993, 115, '2:mp9Z0o9ZN8Qt08gq0H5Z0V:Golf Club:0', 148.794, 1372.83, 1091.37, 249, 5, '2021-08-31 03:21:38', 0, 0, 115.268, 11, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5254, 271, '5.56mm casing', -285.792, 1542.3, 76.833, 0, 0, '2021-09-18 18:51:29', 0, 0, 287.305, 2, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5253, 271, '5.56mm casing', -287.897, 1542.66, 76.974, 0, 0, '2021-09-18 18:51:26', 0, 0, 29.3861, 2, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5252, 271, '5.56mm casing', -287.86, 1542.54, 76.9638, 0, 0, '2021-09-18 18:51:23', 0, 0, 34.2312, 2, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5251, 271, '8 casings of 5.56mm', -307.175, 1543.45, 74.6188, 0, 0, '2021-09-18 18:51:09', 0, 0, 76.5402, 2, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5250, 271, '5 casings of 5.56mm', -306.969, 1543.02, 74.6188, 0, 0, '2021-09-18 18:51:06', 0, 0, 180.385, 2, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5249, 271, '4 casings of 5.56mm', -311.218, 1539.33, 74.6188, 0, 0, '2021-09-18 18:50:59', 0, 0, 334.668, 2, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5248, 271, '3 casings of 5.56mm', -311.581, 1537.5, 74.6188, 0, 0, '2021-09-18 18:50:58', 0, 0, 44.8661, 2, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5247, 271, '4 casings of 5.56mm', -354.427, 1544.51, 74.5625, 0, 0, '2021-09-18 18:50:41', 0, 0, 284.52, 2, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5246, 271, '2 casings of 5.56mm', -354.826, 1541.55, 74.5625, 0, 0, '2021-09-18 18:50:38', 0, 0, 341.716, 2, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5245, 271, '9 casings of 5.56mm', -363.597, 1512.96, 75.7797, 0, 0, '2021-09-18 18:50:23', 0, 0, 77.5399, 2, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5244, 271, '5 casings of 5.56mm', -369.933, 1520.43, 75.7868, 0, 0, '2021-09-18 18:50:09', 0, 0, 288.492, 2, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5243, 271, '4 casings of 5.56mm', -372.029, 1519.28, 75.7868, 0, 0, '2021-09-18 18:50:07', 0, 0, 353.839, 2, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5242, 271, '3 casings of 5.56mm', -371.669, 1519.79, 75.7868, 0, 0, '2021-09-18 18:50:05', 0, 0, 74.6176, 2, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5241, 271, '5.56mm casing', 433.372, 1169.68, 13.8868, 0, 0, '2021-09-16 18:46:08', 0, 0, 115.473, 90, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5240, 271, '11 casings of 5.56mm', 396.722, 1083.13, 23.3868, 0, 0, '2021-09-16 18:45:14', 0, 0, 343.715, 90, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5239, 271, '7 casings of 5.56mm', 1929.63, -1799.28, 13.7516, 0, 0, '2021-09-16 18:37:45', 0, 0, 38.428, 90, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5238, 271, '5.56mm casing', 1931.53, -1800.65, 13.3479, 0, 0, '2021-09-16 18:37:41', 0, 0, 285.207, 90, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5237, 271, '4 casings of 5.56mm', 1931.54, -1800.68, 13.3369, 0, 0, '2021-09-16 18:37:40', 0, 0, 282.965, 90, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5236, 271, '2 casings of 5.56mm', 1931.3, -1800.27, 13.46, 0, 0, '2021-09-16 18:37:35', 0, 0, 310.717, 90, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5235, 271, '24 casings of 5.56mm', 1923.34, -1805.41, 12.825, 0, 0, '2021-09-16 18:20:59', 0, 0, 16.5265, 90, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (2002, 176, '6', 2084.53, 488.31, 46.9896, 359, 32, '2021-08-22 10:38:51', 0, 0, 88.834, 4, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5234, 176, '1', 1920.11, -1798.99, 12.5469, 0, 0, '2021-09-16 18:20:23', 0, 0, 8.54474, 2, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5216, 271, '7.62mm casing', -111.221, 545.184, 6.09855, 0, 0, '2021-09-15 15:57:21', 0, 0, 305.977, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (4502, 81, '1', 326.528, -112.872, 1010.01, 371, 40, '2021-08-28 19:49:11', 0, 0, 172.474, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5215, 271, '18 casings of 7.62mm', 327.375, 759.386, 5.13998, 0, 0, '2021-09-14 18:46:17', 0, 0, 348.308, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5214, 271, '12 casings of 7.62mm', 330.095, 759.723, 5.14048, 0, 0, '2021-09-14 18:46:13', 0, 0, 21.4759, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5213, 271, '16 casings of 7.62mm', -44.4264, 1070.57, 18.7844, 0, 0, '2021-09-14 18:38:32', 0, 0, 255.521, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5212, 271, '7.62mm casing', 1936.99, -2400.38, 12.5669, 368, 56, '2021-09-14 17:09:51', 0, 0, 3.87549, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (4497, 103, '1', 321.541, -112.788, 1010.01, 371, 40, '2021-08-28 19:33:18', 0, 0, 179.901, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5211, 271, '7.62mm casing', 1937, -2400.95, 12.5669, 368, 56, '2021-09-14 17:09:46', 0, 0, 3.87549, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5210, 271, '7.62mm casing', -451.556, 572.893, 16.2325, 0, 0, '2021-09-14 17:06:50', 0, 0, 167.745, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5209, 271, '7.62mm casing', -449.647, 580.322, 16.3541, 0, 0, '2021-09-14 17:06:45', 0, 0, 151.199, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5208, 271, '2 casings of 7.62mm', -439.785, 586.615, 16.2662, 0, 0, '2021-09-14 17:06:17', 0, 0, 244.732, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5207, 271, '10 casings of 7.62mm', 1389.25, 452.859, 18.895, 0, 0, '2021-09-12 11:24:15', 0, 0, 272.122, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (4514, 54, '1', 522.971, 77.3689, -0.2, 98, 24, '2021-08-28 21:54:38', 0, 0, 248.715, 41, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (4921, 176, '6:98', 1434.57, 1446.84, 11.6265, 351, 1, '2021-08-31 00:16:44', 0, 0, 266.733, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5206, 271, '7.62mm casing', -1523.53, -2235.02, 5.95, 0, 0, '2021-09-11 17:16:41', 0, 0, 156.868, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5205, 271, '7.62mm casing', -1523.46, -2235.04, 5.95, 0, 0, '2021-09-11 17:16:40', 0, 0, 161.125, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5204, 271, '7.62mm casing', -1523.52, -2235.02, 5.95, 0, 0, '2021-09-11 17:16:38', 0, 0, 158.351, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (4494, 114, '1098', 528.932, 61.5162, 1043.46, 98, 24, '2021-08-28 19:26:20', 0, 0, 197.738, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (5203, 271, '7.62mm casing', -1561.46, -2110.03, 26.6494, 0, 0, '2021-09-11 17:14:13', 0, 0, 101.88, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (4493, 114, '1097', 528.377, 61.3317, 1043.46, 98, 24, '2021-08-28 19:26:17', 0, 0, 197.738, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (4492, 114, '1096', 528.818, 60.8969, 1043.54, 98, 24, '2021-08-28 19:26:15', 0, 0, 197.738, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (4491, 114, '1085', 528.26, 62.1835, 1043.46, 98, 24, '2021-08-28 19:26:13', 0, 0, 197.738, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (4490, 114, '1084', 528.458, 61.8372, 1043.46, 98, 24, '2021-08-28 19:26:11', 0, 0, 197.738, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (4489, 114, '1083', 528.579, 61.9078, 1043.46, 98, 24, '2021-08-28 19:25:54', 0, 0, 197.738, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (4475, 103, '1', 622.399, -26.8921, 999.922, 250, 1, '2021-08-28 18:40:21', 0, 0, 180.824, 11, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (4478, 114, '1073', 529.72, 61.4059, 1043.46, 98, 24, '2021-08-28 19:25:26', 0, 0, 197.738, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (4479, 114, '1074', 528.89, 61.0989, 1043.46, 98, 24, '2021-08-28 19:25:28', 0, 0, 197.738, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (4481, 114, '1076', 529.031, 61.8414, 1043.46, 98, 24, '2021-08-28 19:25:34', 0, 0, 197.738, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (4482, 114, '1077', 529.607, 60.8969, 1043.93, 98, 24, '2021-08-28 19:25:36', 0, 0, 197.738, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (4483, 114, '1082', 529.422, 61.2411, 1043.92, 98, 24, '2021-08-28 19:25:39', 0, 0, 197.738, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (4484, 114, '1077', 528.42, 61.6421, 1043.46, 98, 24, '2021-08-28 19:25:41', 0, 0, 197.738, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (4485, 114, '1078', 529.084, 60.8969, 1043.78, 98, 24, '2021-08-28 19:25:43', 0, 0, 197.738, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (4488, 114, '1081', 528.934, 62.5234, 1043.46, 98, 24, '2021-08-28 19:25:51', 0, 0, 197.738, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (4487, 114, '1080', 529.426, 61.1023, 1043.46, 98, 24, '2021-08-28 19:25:49', 0, 0, 197.738, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (4486, 114, '1079', 529.507, 62.0079, 1043.46, 98, 24, '2021-08-28 19:25:47', 0, 0, 197.738, 16, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (2291, 85, '1', 1952.95, -2414.39, 12.5669, 368, 56, '2021-08-24 15:49:54', 0, 0, 359.278, 18, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (2399, 176, '6:15', 1211.08, -32.5184, 1002.88, 388, 3, '2021-08-25 15:57:38', 0, 0, 346.764, 27, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');
INSERT INTO `worlditems` VALUES (1207, 176, '3', 1129.53, -1.88775, 1003.77, 255, 12, '2021-08-19 20:44:30', 0, 0, 98.5132, 4, 0, 1, 1, 1, NULL, NULL, NULL, 0, '[ [ ] ]');

-- ----------------------------
-- Table structure for worlditems_data
-- ----------------------------
DROP TABLE IF EXISTS `worlditems_data`;
CREATE TABLE `worlditems_data`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` int(11) NOT NULL,
  `key` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `value` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xitem_idx`(`item`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of worlditems_data
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
