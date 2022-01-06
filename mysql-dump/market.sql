/*
 Navicat Premium Data Transfer

 Source Server         : afsdfsdf
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : market

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 05/01/2022 16:16:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `price` int NOT NULL,
  `barcode` varchar(12) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `owner` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `barcode` (`barcode`),
  UNIQUE KEY `description` (`description`),
  KEY `owner` (`owner`),
  CONSTRAINT `item_ibfk_1` FOREIGN KEY (`owner`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of item
-- ----------------------------
BEGIN;
INSERT INTO `item` VALUES (1, 'Iphone13', 1200, '235435234234', 'i13', NULL);
INSERT INTO `item` VALUES (2, 'Iphone1', 1, '5345345345', '1', NULL);
INSERT INTO `item` VALUES (3, 'Iphone2', 2, '3455345345', '2', NULL);
INSERT INTO `item` VALUES (5, 'Iphone3', 3, '34453454356', '3', NULL);
INSERT INTO `item` VALUES (6, 'Iphone4', 4, '4444', '4', NULL);
INSERT INTO `item` VALUES (7, 'Iphone5', 5, '5553454356', '5', NULL);
INSERT INTO `item` VALUES (8, 'Iphone6', 6, '6666', '6', NULL);
INSERT INTO `item` VALUES (9, 'Iphone7', 7, '77454356', '7', NULL);
INSERT INTO `item` VALUES (10, 'Iphone8', 8, '8888', '8', NULL);
INSERT INTO `item` VALUES (11, 'Iphone9', 9, '999877', '9', NULL);
INSERT INTO `item` VALUES (12, 'Iphone10', 10, '1000010010', '10', NULL);
INSERT INTO `item` VALUES (13, 'Iphone11', 11, '111111', '11', NULL);
INSERT INTO `item` VALUES (14, 'Iphone12', 12, '121212356', '12', NULL);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `password_hash` varchar(60) NOT NULL,
  `budget` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email_address` (`email_address`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'aaa111', '1231@dsf.aaa', '$2b$12$SPB9u5lHMpkty6G5X/TmCegBrw/ZqCrkr0gZ6kAz/Tw8HXw5uzGIi', 1000);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
