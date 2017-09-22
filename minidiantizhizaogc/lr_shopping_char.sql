/*
Navicat MySQL Data Transfer

Source Server         : leren
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : xcxqiye

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2017-06-25 14:46:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `lr_shopping_char`
-- ----------------------------
DROP TABLE IF EXISTS `lr_shopping_char`;
CREATE TABLE `lr_shopping_char` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车表',
  `pid` int(11) NOT NULL COMMENT '商品ID',
  `price` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT '商品单价',
  `num` int(11) NOT NULL DEFAULT '1' COMMENT '数量',
  `buff` varchar(255) NOT NULL COMMENT '属性（序列化格式）',
  `addtime` int(10) NOT NULL COMMENT '添加时间',
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '商家ID',
  `gid` int(11) DEFAULT '0' COMMENT '规格id',
  `type` tinyint(2) DEFAULT '2' COMMENT '0是热卖，1是团购，2是普通商品',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of lr_shopping_char
-- ----------------------------
