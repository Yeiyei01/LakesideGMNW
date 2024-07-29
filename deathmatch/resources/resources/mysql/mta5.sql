
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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


SET FOREIGN_KEY_CHECKS = 1;
