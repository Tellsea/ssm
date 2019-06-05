/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50713
 Source Host           : localhost:3306
 Source Schema         : ssm

 Target Server Type    : MySQL
 Target Server Version : 50713
 File Encoding         : 65001

 Date: 05/06/2019 15:52:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_customer
-- ----------------------------
DROP TABLE IF EXISTS `tb_customer`;
CREATE TABLE `tb_customer`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_customer
-- ----------------------------
INSERT INTO `tb_customer` VALUES (1, '张三丰', '18386545500', '3210054449@qq.com', '贵州省贵阳市观山湖区云潭南路3号');
INSERT INTO `tb_customer` VALUES (2, '王歌', '13498066695', '1234566@cn.gg', '北京市海淀区中关村北大街清华大学');
INSERT INTO `tb_customer` VALUES (3, '刘子昂', '16509899000', '42394023@dd.cn', '贵州省普安县窝沿乡关田村红花组');
INSERT INTO `tb_customer` VALUES (5, '韩信', '13498066695', '42394023@dd.cn', '贵阳市南明区富源中路龙家寨');
INSERT INTO `tb_customer` VALUES (6, '上官婉儿 ', '18594945860', '42394023@dd.cn', '贵州省遵义市务川县涪洋镇当阳村鱼田溪组');
INSERT INTO `tb_customer` VALUES (7, '李白', '13498066695', '42394023@dd.cn', '贵州省安龙县栖凤街道办事处西河村段石街组116号');
INSERT INTO `tb_customer` VALUES (8, '妲己', '18594945860', '1234566@cn.gg', '贵州省纳雍县百兴镇新街村新街组');
INSERT INTO `tb_customer` VALUES (9, '蔡徐坤', '18594945860', '560000@11.com', '贵州省普安县青山镇范家寨村黑树林组');
INSERT INTO `tb_customer` VALUES (10, '迪丽热巴', '18386474459', '1234566@cn.gg', '贵州省罗甸县逢亭镇拱里村二组15号');
INSERT INTO `tb_customer` VALUES (11, '刘亦菲', '13498066695', '1234566@cn.gg', '贵州省凯里市西门街梁子巷');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, 'tellsea', '123456');

SET FOREIGN_KEY_CHECKS = 1;
