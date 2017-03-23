/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : demodb

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-03-23 21:04:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `info` varchar(500) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `price` decimal(10,2) DEFAULT '0.00',
  `picture` varchar(100) DEFAULT 'default.jpg',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('wqwqw', '1', 'Tops', '66.50', 'pi.png');
INSERT INTO `goods` VALUES ('sd', '3', '衬衫', '39.90', 'pi2.png');
INSERT INTO `goods` VALUES ('sghgh', '4', '益达', '25.90', 'pi3.png');
INSERT INTO `goods` VALUES ('erte', '5', '衬衫', '168.88', 'pi4.png');
INSERT INTO `goods` VALUES ('zb', '6', '麻辣', '39.88', 'pi5.png');
INSERT INTO `goods` VALUES ('ghndfg', '7', '荣业', '126.80', 'pi6.png');
INSERT INTO `goods` VALUES ('dgg', '8', '橄榄', '178.00', 'pi7.png');
INSERT INTO `goods` VALUES ('dsesgf', '42', 'iphone6', '666.00', '23a9a5e8-52e8-45e0-a53a-5649bf3af43b.png');
INSERT INTO `goods` VALUES ('SDf', '43', 'iphone7', '7777.00', 'da140412-0699-4595-a9fa-f247f3b24512.png');
INSERT INTO `goods` VALUES ('zfdg', '44', 'iphone8', '8888.00', 'e1b73eef-2d82-4d47-82ef-7ea81a221b82.png');
INSERT INTO `goods` VALUES ('zfgzf', '45', 'iphone6', '777.00', 'bd7908b9-965c-407d-bfd7-72b2ba17b616.png');
INSERT INTO `goods` VALUES ('nice car', '47', 'polp', '80000.00', '9366dae0-add1-4037-a72a-1850428f074c.png');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `buydate` datetime NOT NULL,
  `quantity` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `pname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('8', 'buyer', '2017-03-02 12:32:57', '1', '5', '/ShopMall/images/pi4.png', '168.88', '衬衫');
INSERT INTO `orders` VALUES ('9', 'buyer', '2017-03-02 12:32:57', '2', '4', '/ShopMall/images/pi3.png', '25.90', '益达');
INSERT INTO `orders` VALUES ('10', 'buyer', '2017-03-02 12:53:54', '1', '3', '/ShopMall/images/pi2.png', '39.90', '衬衫');
INSERT INTO `orders` VALUES ('11', 'buyer', '2017-03-02 12:53:54', '1', '5', '/ShopMall/images/pi4.png', '168.88', '衬衫');
INSERT INTO `orders` VALUES ('12', 'buyer', '2017-03-02 12:53:54', '1', '1', '/ShopMall/images/pi.png', '66.50', 'Tops');
INSERT INTO `orders` VALUES ('13', 'buyer', '2017-03-02 12:59:50', '1', '3', '/ShopMall/images/pi2.png', '39.90', '衬衫');
INSERT INTO `orders` VALUES ('14', 'buyer', '2017-03-02 12:59:50', '1', '4', '/ShopMall/images/pi3.png', '25.90', '益达');
INSERT INTO `orders` VALUES ('15', 'buyer', '2017-03-23 19:29:30', '1', '5', '/ShopMall/images/pi4.png', '168.88', '衬衫');
INSERT INTO `orders` VALUES ('16', 'buyer', '2017-03-23 19:29:30', '1', '4', '/ShopMall/images/pi3.png', '25.90', '益达');
INSERT INTO `orders` VALUES ('17', 'buyer', '2017-03-23 20:28:59', '1', '45', '/ShopMall/images/bd7908b9-965c-407d-bfd7-72b2ba17b616.png', '777.00', 'iphone6');
INSERT INTO `orders` VALUES ('18', 'buyer', '2017-03-23 20:28:59', '2', '4', '/ShopMall/images/pi3.png', '25.90', '益达');
INSERT INTO `orders` VALUES ('19', 'buyer', '2017-03-23 20:45:40', '1', '6', '/ShopMall/images/pi5.png', '39.88', '麻辣');
INSERT INTO `orders` VALUES ('20', 'buyer', '2017-03-23 20:52:04', '1', '4', '/ShopMall/images/pi3.png', '25.90', '益达');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(36) NOT NULL,
  `pass` varchar(36) NOT NULL,
  `flag` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'buyer', '37254660e226ea65ce6f1efd54233424', '0');
INSERT INTO `user` VALUES ('2', 'seller', '981c57a5cfb0f868e064904b8745766f', '1');
