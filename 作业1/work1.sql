/*
Navicat MySQL Data Transfer

Source Server         : Liusz
Source Server Version : 80025
Source Host           : localhost:3306
Source Database       : work1

Target Server Type    : MYSQL
Target Server Version : 80025
File Encoding         : 65001

Date: 2021-07-08 22:30:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `address`
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int DEFAULT NULL,
  `address` char(255) NOT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`address`),
  KEY `id` (`id`),
  CONSTRAINT `id` FOREIGN KEY (`id`) REFERENCES `liusz` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', 'a', '10');
INSERT INTO `address` VALUES ('2', 'b', '20');
INSERT INTO `address` VALUES ('3', 'c', '30');
INSERT INTO `address` VALUES ('0', '长春', '23');

-- ----------------------------
-- Table structure for `liusz`
-- ----------------------------
DROP TABLE IF EXISTS `liusz`;
CREATE TABLE `liusz` (
  `name` char(255) DEFAULT NULL,
  `id` int NOT NULL,
  `phone` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of liusz
-- ----------------------------
INSERT INTO `liusz` VALUES ('刘帅卓', '0', '15304407706');
INSERT INTO `liusz` VALUES ('刘', '1', '11111111111');
INSERT INTO `liusz` VALUES ('帅', '2', '22222222');
INSERT INTO `liusz` VALUES ('卓', '3', '333333333');
