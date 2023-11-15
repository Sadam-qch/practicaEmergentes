/*
 Navicat Premium Data Transfer

 Source Server         : ConexionDB
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : bd_agenda

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 15/11/2023 12:55:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for contactos
-- ----------------------------
DROP TABLE IF EXISTS `contactos`;
CREATE TABLE `contactos`  (
  `ID` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CORREO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TELEFONO` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contactos
-- ----------------------------
INSERT INTO `contactos` VALUES (2, 'María López', 'maria@example.com', '987-654-3210');
INSERT INTO `contactos` VALUES (4, 'luna', 'luna@mail.com', '73521262');
INSERT INTO `contactos` VALUES (6, 'Juan', 'juan@mail.com', '73525262');
INSERT INTO `contactos` VALUES (7, 'Miriam', 'Miriam@mail.com', '73525262');
INSERT INTO `contactos` VALUES (8, 'Juan', 'juan@mail.com', '73525262');
INSERT INTO `contactos` VALUES (9, 'Juan', 'juan@mail.com', '73525262');
INSERT INTO `contactos` VALUES (10, 'Juan', 'juan@mail.com', '73525262');
INSERT INTO `contactos` VALUES (11, 'Juan luan', 'juanlu@mail.com', '71225262');
INSERT INTO `contactos` VALUES (12, 'Juan', 'juan@mail.com', '73525262');
INSERT INTO `contactos` VALUES (13, 'Juan', 'juan@mail.comm', '73525262');
INSERT INTO `contactos` VALUES (18, 'Sadam Jose', 'guarnizo@mail.com', '71771112');

SET FOREIGN_KEY_CHECKS = 1;
