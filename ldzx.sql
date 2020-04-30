/*
 Navicat Premium Data Transfer

 Source Server         : wyx
 Source Server Type    : MySQL
 Source Server Version : 50538
 Source Host           : localhost:3306
 Source Schema         : ldzx

 Target Server Type    : MySQL
 Target Server Version : 50538
 File Encoding         : 65001

 Date: 30/04/2020 21:16:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for about
-- ----------------------------
DROP TABLE IF EXISTS `about`;
CREATE TABLE `about`  (
  `a_id` int(5) NOT NULL AUTO_INCREMENT,
  `a_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `a_p1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `a_p2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `a_p3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `a_p4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `a_p5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `a_photo1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `a_photo2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `a_photo3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`a_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of about
-- ----------------------------
INSERT INTO `about` VALUES (1, '水电费水电费水电费所产从深V阿萨', '1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是 没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄 的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，正的强者，不是没有眼泪的人，1越有故事的人越沉静简单，越肤', '1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是 没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄 的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，正的强者，不是没有眼泪的人，1越有故事的人越沉静简单，越肤', '1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是 没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄 的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，正的强者，不是没有眼泪的人，1越有故事的人越沉静简单，越肤', '1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是 没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄 的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，正的强者，不是没有眼泪的人，1越有故事的人越沉静简单，越肤', '1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是 没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄 的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，正的强者，不是没有眼泪的人，1越有故事的人越沉静简单，越肤', '/apupload/57f7a2f4-b3af-417f-bcbe-a07bd1debfb1.jpg', '/apupload/30921758-dc2d-4eae-87f9-991775c26c8d.jpg', '/apupload/831573d4-67be-408f-b9ed-973b2eb132d8.jpg');

-- ----------------------------
-- Table structure for anli
-- ----------------------------
DROP TABLE IF EXISTS `anli`;
CREATE TABLE `anli`  (
  `a_id` int(5) NOT NULL AUTO_INCREMENT,
  `a_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `a_aword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `a_p1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `a_p2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `a_p3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `a_p4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `a_p5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `a_photo1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `a_photo2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `a_photo3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`a_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of anli
-- ----------------------------
INSERT INTO `anli` VALUES (11, '越有故事的人越沉静简单，越肤浅单薄的人越浮躁不', '越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼', '	1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是 没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄 的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，正的强者，不是没有眼泪的人，1越有故事的人越沉静简单，越', '	1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是 没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄 的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，正的强者，不是没有眼泪的人，1越有故事的人越沉静简单，越', '	1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是 没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄 的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，正的强者，不是没有眼泪的人，1越有故事的人越沉静简单，越', '	1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是 没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄 的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，正的强者，不是没有眼泪的人，1越有故事的人越沉静简单，越', '	1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是 没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄 的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，正的强者，不是没有眼泪的人，1越有故事的人越沉静简单，越', '/aapupload/0b623d9e-91ad-4c77-ac38-cfa660b5c687.jpg', '/aapupload/be2ad58d-0924-4655-b860-62082ba7ffec.jpg', '/aapupload/269d4fa3-bfba-4b53-a5e8-ae35664f5fdb.jpg');

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact`  (
  `c_id` int(5) NOT NULL AUTO_INCREMENT,
  `c_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `c_tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `c_weixin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `c_other` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES (1, '18468041823', '18468041823', '/cpupload/86274513-b795-4af1-aae0-108b9c29bc4a.jpg', '洒洒水大所大所	1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是 没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄 的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，正的强者，不是没有眼泪的人，1越有故事的人');

-- ----------------------------
-- Table structure for fileup
-- ----------------------------
DROP TABLE IF EXISTS `fileup`;
CREATE TABLE `fileup`  (
  `f_id` int(5) NOT NULL AUTO_INCREMENT,
  `f_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `f_aword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `f_file` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `f_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`f_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fileup
-- ----------------------------
INSERT INTO `fileup` VALUES (3, '111越有故事的人越沉静简单，越	1越有故事的人越', '111越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，而是含着眼泪依然奔跑的人。我们最先衰老的从来不是容貌，而是那份不顾一切的闯劲。越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的	1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人人，而是含着眼泪依然奔跑的人。', '/fpupload/f738a0d3-0fdd-4a85-b6d6-e6f9be777df8.pdf', '2020-03-18');

-- ----------------------------
-- Table structure for huodong
-- ----------------------------
DROP TABLE IF EXISTS `huodong`;
CREATE TABLE `huodong`  (
  `h_id` int(5) NOT NULL AUTO_INCREMENT,
  `h_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `h_aword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `h_p1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `h_p2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `h_p3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `h_p4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `h_p5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `h_photo1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `h_photo2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `h_photo3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `h_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`h_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of huodong
-- ----------------------------
INSERT INTO `huodong` VALUES (3, '1越有故事的人越沉静简单，越肤浅单薄的人	1越有故', '1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不	1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，', '1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，而是含着眼泪依然奔跑的人。我们最先衰老的从来不是容貌，而是那份不顾一切的闯劲。越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的	1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮强者，不是没有眼泪的人，而是含着眼泪依然奔跑的人。', '	1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是 没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄 的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，正的强者，不是没有眼泪的人，1越有故事的人越沉静简单，越', '	1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是 没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄 的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，正的强者，不是没有眼泪的人，1越有故事的人越沉静简单，越', '	1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是 没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄 的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，正的强者，不是没有眼泪的人，1越有故事的人越沉静简单，越', '	1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是 没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄 的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，正的强者，不是没有眼泪的人，1越有故事的人越沉静简单，越', '/hpupload/073b8eaa-9192-45ad-8f76-e64b14c01712.jpg', '/hpupload/b953c02b-078c-44c6-a88d-89272b625f6e.jpg', '/hpupload/8c709bde-c0fc-475d-945f-1ab02c1a2b55.jpg', '2020-03-25');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `u_id` int(5) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `u_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'c4ca4238a0b923820dcc509a6f75849b');

-- ----------------------------
-- Table structure for yewu
-- ----------------------------
DROP TABLE IF EXISTS `yewu`;
CREATE TABLE `yewu`  (
  `y_id` int(5) NOT NULL AUTO_INCREMENT,
  `y_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `y_p1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `y_p2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `y_p3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `y_p4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `y_p5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `y_photo1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `y_photo2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `y_photo3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`y_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yewu
-- ----------------------------
INSERT INTO `yewu` VALUES (1, '1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不', '	1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是 没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄 的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，正的强者，不是没有眼泪的人，1越有故事的人越沉静简单，越', '	1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是 没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄 的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，正的强者，不是没有眼泪的人，1越有故事的人越沉静简单，越', '	1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是 没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄 的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，正的强者，不是没有眼泪的人，1越有故事的人越沉静简单，越', '	1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是 没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄 的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，正的强者，不是没有眼泪的人，1越有故事的人越沉静简单，越', '	1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是 没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄 的人越浮躁不安。真正的强者，不是没有眼泪的人，。1越有故事的人越沉静简单，越肤浅单薄的人越浮躁不安。真正的强者，不是没有眼泪的人，正的强者，不是没有眼泪的人，1越有故事的人越沉静简单，越', '/ypupload/faf83691-f9f3-41a4-ada0-3b640cad0dd9.jpg', '/ypupload/6ee307b5-6479-40d2-83a7-70f72007d172.jpg', '/ypupload/ef37f482-a96c-4a11-a09f-991d708f927b.jpg');

SET FOREIGN_KEY_CHECKS = 1;
