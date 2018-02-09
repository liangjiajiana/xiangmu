/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : xiangmu

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-02-09 16:41:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for indexgoods
-- ----------------------------
DROP TABLE IF EXISTS `indexgoods`;
CREATE TABLE `indexgoods` (
  `id` int(11) NOT NULL COMMENT '商品id',
  `name` varchar(255) NOT NULL COMMENT '商品名字',
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '1',
  `imgs` varchar(255) CHARACTER SET latin1 NOT NULL,
  `category` varchar(255) DEFAULT NULL COMMENT '分类',
  `add_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of indexgoods
-- ----------------------------
INSERT INTO `indexgoods` VALUES ('1', '52°白水杜康一坛老酒1000ml（双坛装）', '86.00', '1', 'img/jiu1.png', '白酒', '2018-02-07 10:49:04');
INSERT INTO `indexgoods` VALUES ('2', '52°白水杜康一坛老酒1000ml（双坛装）', '77.00', '2', 'img/jiu2.png', '白酒', '2018-02-07 13:47:09');
INSERT INTO `indexgoods` VALUES ('3', '42°汾酒集团优级杏花村酒(升级版)500ml', '33.00', '2', 'img/jiu3.png', '白酒', '2018-02-07 13:39:19');
INSERT INTO `indexgoods` VALUES ('4', '【汾酒特卖】53°杏花村汾酒集团红瓷镂空原浆酒', '22.00', '1', 'img/jiu4.png', '白酒', '2018-02-07 13:39:23');
INSERT INTO `indexgoods` VALUES ('5', '【礼盒】39°五粮液黄金酒万福礼盒升级版480ml*2', '44.00', '2', 'img/jiu5.png', '白酒', '2018-02-07 13:39:25');
INSERT INTO `indexgoods` VALUES ('6', '【礼盒】52°酒鬼酒书说500ml+酒器(酒杯*2）', '88.00', '2', 'img/jiu6.png', '白酒', '2018-02-07 13:39:29');
INSERT INTO `indexgoods` VALUES ('7', '\"42°牛栏山百年好合囍酒500ml整箱装', '99.00', '1', 'img/jiu7.png', '白酒', '2018-02-07 13:39:32');
INSERT INTO `indexgoods` VALUES ('8', '【酒仙甄选】54°董酒珍酿（20）500ml(双瓶装)+景德镇荷韵瓷酒器', '44.00', '2', 'img/jiu8.png', '白酒', '2018-02-07 13:39:35');
INSERT INTO `indexgoods` VALUES ('9', '53°贵州茅台集团 茅台醇香 珍藏级1949 酱香型白酒', '77.00', '1', 'img/jiu9.png', '白酒', '2018-02-07 13:39:38');
INSERT INTO `indexgoods` VALUES ('10', '52°台老大高粱酒（邮票黄）清香型白酒600ml*6', '78.00', '2', 'img/jiu10.png', '白酒', '2018-02-07 13:39:42');
INSERT INTO `indexgoods` VALUES ('11', '智利2018拉菲巴斯克卡本妮苏维翁精选干红葡萄酒', '22.00', '1', 'img/jiu21.png', '葡萄酒', '2018-02-07 14:01:58');
INSERT INTO `indexgoods` VALUES ('12', '智利2018拉菲巴斯克卡本妮苏维翁精选干红葡萄酒', '33.00', '1', 'img/jiu22.png', '葡萄酒', '2018-02-07 10:59:09');
INSERT INTO `indexgoods` VALUES ('13', '澳大利亚米隆庄园BIN55色拉子赤霞珠半干红葡萄酒750ml', '14.00', '1', 'img/jiu23.png', '葡萄酒', '2018-02-07 10:57:01');
INSERT INTO `indexgoods` VALUES ('14', '法国波尔多AOC圣骑士庄园主干红葡萄酒750ml*1', '15.00', '1', 'img/jiu21.png', '葡萄酒', '2018-02-07 11:11:24');
INSERT INTO `indexgoods` VALUES ('15', '智利2018拉菲巴斯克卡本妮苏维翁精选干红葡萄酒', '121.00', '1', 'img/jiu22.png', '葡萄酒', '2018-02-07 14:02:31');
INSERT INTO `indexgoods` VALUES ('16', '法国整箱红酒法国酒星干红葡萄酒750ml（6瓶装）', '77.00', '1', 'img/jiu26.png', '葡萄酒', '2018-02-07 10:59:00');
INSERT INTO `indexgoods` VALUES ('17', '法国整箱红酒法国米洛骑士干红葡萄酒750ml（6瓶装）', '99.00', '1', 'img/jiu27.png', '葡萄酒', '2018-02-07 10:59:58');
INSERT INTO `indexgoods` VALUES ('18', '法国整箱红酒法国米洛骑士干红葡萄酒750ml', '999.00', '1', 'img/jiu28.png', '葡萄酒', '2018-02-07 11:00:47');
INSERT INTO `indexgoods` VALUES ('19', '智利2018拉菲巴斯克卡本妮苏维翁精选干红葡萄酒', '222.00', '1', 'img/jiu26.png', '葡萄酒', '2018-02-07 14:03:03');
INSERT INTO `indexgoods` VALUES ('20', '智利2018拉菲巴斯克卡本妮苏维翁精选干红葡萄酒', '999.00', '1', 'img/jiu27.png', '葡萄酒', '2018-02-07 14:03:10');
INSERT INTO `indexgoods` VALUES ('21', '40°英国百龄坛特醇苏格兰威士忌500ml', '33.00', '1', 'img/jiu2.png', '洋酒', '2018-02-07 11:11:00');
INSERT INTO `indexgoods` VALUES ('22', '【超级大牌日】40°法国马爹利XO干邑700ml', '22.00', '1', 'img/jiu1.png', '洋酒', '2018-02-07 14:14:02');
INSERT INTO `indexgoods` VALUES ('23', '【超级大牌日】40°法国马爹利XO干邑700ml', '22.00', '1', 'img/jiu3.png', '洋酒', '2018-02-07 11:16:23');
INSERT INTO `indexgoods` VALUES ('24', '40°法国路易马西尼凯旋XO白兰地礼盒700mL', '233.00', '1', 'img/jiu4.png', '洋酒', '2018-02-07 11:17:31');
INSERT INTO `indexgoods` VALUES ('25', '【超级大牌日】40°英国芝华士12年苏格兰威士忌500ml', '22.00', '1', 'img/jiu5.png', '洋酒', '2018-02-07 11:18:27');
INSERT INTO `indexgoods` VALUES ('26', '40°美国杰克丹尼700ml Jack Daniels', '27.00', '1', 'img/jiu6.png', '洋酒', '2018-02-07 11:18:53');
INSERT INTO `indexgoods` VALUES ('27', '48°英国鹰勇特别窖藏调配型苏格兰威士忌700ml', '29.00', '1', 'img/jiu7.png', '洋酒', '2018-02-07 11:19:51');
INSERT INTO `indexgoods` VALUES ('28', '48°英国鹰勇特别窖藏调配型苏格兰威士忌700ml', '30.00', '1', 'img/jiu8.png', '洋酒', '2018-02-07 14:15:03');
INSERT INTO `indexgoods` VALUES ('29', '48°英国鹰勇特别窖藏调配型苏格兰威士忌700m', '333.00', '1', 'img/jiu9.png', '洋酒', '2018-02-07 14:14:26');
INSERT INTO `indexgoods` VALUES ('30', '40°美国杰克丹尼700ml Jack Danielsl', '444.00', '1', 'img/jiu6.png', '洋酒', '2018-02-07 14:31:07');
INSERT INTO `indexgoods` VALUES ('31', '【宏继】金华小酥饼浙江特产食品传统糕点心正宗小吃零食500g', '222.00', '1', 'img/food2.png', '食物', '2018-02-07 14:36:04');
INSERT INTO `indexgoods` VALUES ('32', '【宏继】金华小酥饼浙江特产食品传统糕点心正宗小吃零食500g', '122.00', '1', 'img/food2.png', '食物', '2018-02-07 14:20:27');
INSERT INTO `indexgoods` VALUES ('33', '稻香村糕点北京特产腰果酥14事实上5g', '111.00', '1', 'img/food3.png', '食物', '2018-02-07 14:21:09');
INSERT INTO `indexgoods` VALUES ('34', '川渝特色阿宽四川铺盖面番茄酸汤味/牛肉火锅味/酸菜牛肉味各2袋', '444.00', '1', 'img/food4.png', '食物', '2018-02-07 14:35:02');
INSERT INTO `indexgoods` VALUES ('35', '稻香村糕点饼干北京特产杏仁瓦片160g*2盒', '666.00', '1', 'img/food4.png', '食物', '2018-02-07 14:36:37');
INSERT INTO `indexgoods` VALUES ('36', '肯迪醒（韩国原装进口）100是大大的说ml', '22.00', '1', 'img/food6.png', '食物', '2018-02-07 14:23:16');
INSERT INTO `indexgoods` VALUES ('37', '中闽魏氏魏氏红6600高端红茶铁观音礼盒装生态品牌乌龙茶150克', '888.00', '1', 'img/food7.png', '食物', '2018-02-07 14:23:58');
INSERT INTO `indexgoods` VALUES ('38', '莲花居阳澄湖大闸蟹礼券888型公3.0两母2.0两4对/8只', '999.00', '1', 'img/food8.png', '食物', '2018-02-07 14:24:39');
INSERT INTO `indexgoods` VALUES ('39', '中闽魏氏尚天然安溪正宗铁观音茶清香型正味兰花香', '1000.00', '1', 'img/food9.png', '食物', '2018-02-07 14:25:08');
INSERT INTO `indexgoods` VALUES ('40', '中闽魏氏K03正宗安溪铁观音清香型兰花香250克', '555.00', '1', 'img/food10.png', '食物', '2018-02-07 14:25:35');
INSERT INTO `indexgoods` VALUES ('41', '48°英国鹰勇特别窖藏调配型苏格兰威士忌700ml', '199.00', '1', 'img/jiu10.png', '小酒', '2018-02-09 10:18:42');
INSERT INTO `indexgoods` VALUES ('42', '48°英国鹰勇特别窖藏调配型苏格兰威士忌700ml', '333.00', '1', 'img/jiu3.png', '小酒', '2018-02-09 10:19:26');
INSERT INTO `indexgoods` VALUES ('43', '48°英国鹰勇特别窖藏调配型苏格兰威士忌700ml', '444.00', '1', 'img/jiu2.png', '小酒', '2018-02-09 10:19:21');
INSERT INTO `indexgoods` VALUES ('44', '48°英国鹰勇特别窖藏调配型苏格兰威士忌700m', '666.00', '1', 'img/jiu3.png', '小酒', '2018-02-09 10:20:01');
INSERT INTO `indexgoods` VALUES ('45', '48°英国鹰勇特别窖藏调配型苏格兰威士忌700m', '777.00', '1', 'img/jiu4.png', '小酒', '2018-02-09 10:20:29');
INSERT INTO `indexgoods` VALUES ('46', '48°英国鹰勇特别窖藏调配型苏格兰威士忌700m', '888.00', '1', 'img/jiu10.png', '小酒', '2018-02-09 10:31:51');
INSERT INTO `indexgoods` VALUES ('47', '43°茅台飞天500ml', '666.00', '1', 'img/xiao1.png', '热销', '2018-02-09 10:56:14');
INSERT INTO `indexgoods` VALUES ('48', '43°茅台飞天500ml', '777.00', '1', 'img/xiao2.png', '热销', '2018-02-09 10:56:35');
INSERT INTO `indexgoods` VALUES ('49', '43°茅台飞天500ml', '999.00', '1', 'img/xiao3.png', '热销', '2018-02-09 10:56:54');
INSERT INTO `indexgoods` VALUES ('50', '43°茅台飞天500ml', '666.00', '1', 'img/xiao4.png', '热销', '2018-02-09 10:57:10');
INSERT INTO `indexgoods` VALUES ('51', '43°茅台飞天500ml', '999.00', '1', 'img/xiao1.png', '热销', '2018-02-09 12:56:31');
INSERT INTO `indexgoods` VALUES ('52', '法国思慕干红葡萄酒', '888.00', '1', 'img/xiao6.png', '小葡萄', '2018-02-09 11:32:44');
INSERT INTO `indexgoods` VALUES ('53', '法国思慕干红葡萄酒', '999.00', '1', 'img/xiao7.png', '小葡萄', '2018-02-09 11:33:01');
INSERT INTO `indexgoods` VALUES ('54', '法国思慕干红葡萄酒', '1000.00', '1', 'img/xiao8.png', '小葡萄', '2018-02-09 11:33:21');
INSERT INTO `indexgoods` VALUES ('55', '法国思慕干红葡萄酒', '1001.00', '1', 'img/xiao9.png', '小葡萄', '2018-02-09 11:33:41');
INSERT INTO `indexgoods` VALUES ('56', '法国思慕干红葡萄酒', '999.00', '1', 'img/xiao10.png', '小葡萄', '2018-02-09 11:37:56');

-- ----------------------------
-- Table structure for listgoods
-- ----------------------------
DROP TABLE IF EXISTS `listgoods`;
CREATE TABLE `listgoods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `add_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `imgs` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of listgoods
-- ----------------------------
INSERT INTO `listgoods` VALUES ('1', '【春节不打烊】52°贵州茅台集团白金原浆酒（精彩四礼）500ml*4瓶 手提礼盒', '23.00', '酒', '2018-02-07 15:21:31', '../img/list11.png');
INSERT INTO `listgoods` VALUES ('2', '【春节不打烊】52°宜宾五粮液股份出品100年传奇白酒500ml*6瓶 整箱装', '666.00', '酒', '2018-02-07 15:22:57', '../img/list12.png');
INSERT INTO `listgoods` VALUES ('3', '【泸州老窖特卖】42°泸州老窖浓香青瓷鉴藏9年500ml（6瓶装）', '777.00', '酒', '2018-02-07 16:45:52', '../img/list13.png');
INSERT INTO `listgoods` VALUES ('4', '【古井贡特卖】45°古井大曲250ml（6瓶装）', '999.00', '酒', '2018-02-07 16:45:56', '../img/list14.png');
INSERT INTO `listgoods` VALUES ('5', '【春节不打烊】52°宜宾五粮液股份出品100年传奇白酒500ml*6瓶 整箱装', '77.00', '酒', '2018-02-07 15:25:55', '../img/list15.png');
INSERT INTO `listgoods` VALUES ('6', '【礼盒】53°汾酒集团梅兰竹菊四君子1000ml*4', '88.00', '酒', '2018-02-07 15:27:50', '../img/list16.png');
INSERT INTO `listgoods` VALUES ('7', '【礼盒】53°汾酒集团梅兰竹菊四君子1000ml*4', '99.00', '酒', '2018-02-07 15:28:29', '../img/list18.png');
INSERT INTO `listgoods` VALUES ('8', '【礼盒】53°汾酒集团梅兰竹菊四君子1000ml*4', '100.00', '酒', '2018-02-07 16:46:51', '../img/list11.png');
INSERT INTO `listgoods` VALUES ('9', '【春节不打烊】52°宜宾五粮液股份出品100年传奇白酒500ml*6瓶 整箱装', '101.00', '酒', '2018-02-07 15:29:42', '../img/list13.png');
INSERT INTO `listgoods` VALUES ('10', '【春节不打烊】52°宜宾五粮液股份出品100年传奇白酒500ml*6瓶 整箱装', '102.00', '酒', '2018-02-07 15:29:37', '../img/list11.png');
INSERT INTO `listgoods` VALUES ('11', '【春节不打烊】52°宜宾五粮液股份出品100年传奇白酒500ml*6瓶 整箱装', '103.00', '酒', '2018-02-07 15:30:05', '../img/list12.png');
INSERT INTO `listgoods` VALUES ('12', '【春节不打烊】52°宜宾五粮液股份出品100年传奇白酒500ml*6瓶 整箱装', '104.00', '酒', '2018-02-07 15:30:24', '../img/list13.png');
INSERT INTO `listgoods` VALUES ('13', '【春节不打烊】52°宜宾五粮液股份出品100年传奇白酒500ml*6瓶 整箱装', '105.00', '酒', '2018-02-07 15:31:33', '../img/list14.png');
INSERT INTO `listgoods` VALUES ('14', '【泸州老窖特卖】42°泸州老窖浓香青瓷鉴藏9年500ml（6瓶装）', '106.00', '酒', '2018-02-07 15:31:27', '../img/list18.png');
INSERT INTO `listgoods` VALUES ('15', '【泸州老窖特卖】42°泸州老窖浓香青瓷鉴藏9年500ml（6瓶装）', '107.00', '酒', '2018-02-07 16:47:12', '../img/list14.png');
INSERT INTO `listgoods` VALUES ('16', '【泸州老窖特卖】42°泸州老窖浓香青瓷鉴藏9年500ml（6瓶装）', '108.00', '酒', '2018-02-07 15:32:23', '../img/list11.png');
INSERT INTO `listgoods` VALUES ('17', '【礼盒】53°汾酒集团梅兰竹菊四君子1000ml*4', '108.00', '酒', '2018-02-07 15:34:04', '../img/list12.png');
INSERT INTO `listgoods` VALUES ('18', '【礼盒】53°汾酒集团梅兰竹菊四君子1000ml*4', '109.00', '酒', '2018-02-07 15:35:02', '../img/list13.png');
INSERT INTO `listgoods` VALUES ('19', '【礼盒】53°汾酒集团梅兰竹菊四君子1000ml*4', '108.00', '酒', '2018-02-07 15:34:04', '../img/list14.png');
INSERT INTO `listgoods` VALUES ('20', '【春节不打烊】52°宜宾五粮液股份出品100年传奇白酒500ml*6瓶 整箱装', '101.00', '酒', '2018-02-07 15:29:42', '../img/list15.png');
INSERT INTO `listgoods` VALUES ('21', '【春节不打烊】52°宜宾五粮液股份出品100年传奇白酒500ml*6瓶 整箱装', '101.00', '酒', '2018-02-07 15:29:42', '../img/list16.png');
INSERT INTO `listgoods` VALUES ('22', '【春节不打烊】52°宜宾五粮液股份出品100年传奇白酒500ml*6瓶 整箱装', '101.00', '酒', '2018-02-07 15:29:42', '../img/list13.png');
INSERT INTO `listgoods` VALUES ('24', '【超级大牌日】53°茅台迎宾酒（新款）500ml（6瓶装）', '102.00', '酒', '2018-02-07 15:38:24', '../img/list11.png');
INSERT INTO `listgoods` VALUES ('25', '【礼盒】52°水井坊臻酿八号500ml+景德镇荷韵瓷酒器', '103.00', '酒', '2018-02-07 15:37:45', '../img/list14.png');
INSERT INTO `listgoods` VALUES ('26', '52°酒鬼馥郁天成1L（原酒鬼天工开物升级版）+52°酒鬼馥郁天成258ml', '104.00', '酒', '2018-02-07 15:38:15', '../img/list15.png');
INSERT INTO `listgoods` VALUES ('27', '【礼盒】52°孔府家酒·朋自远方1000ml升级版组合（3）', '105.00', '酒', '2018-02-07 15:39:00', '../img/list16.png');
INSERT INTO `listgoods` VALUES ('28', '【礼盒】52°孔府家酒·朋自远方1000ml升级版组合（3）', '106.00', '酒', '2018-02-07 15:39:23', '../img/list17.png');
INSERT INTO `listgoods` VALUES ('29', '【礼盒】52°孔府家酒·朋自远方1000ml升级版组合（3）', '107.00', '酒', '2018-02-07 15:39:43', '../img/list11.png');
INSERT INTO `listgoods` VALUES ('30', '52°金剑南K6 500ml+52°五粮液恭喜发财V6珍酿500ml', '108.00', '酒', '2018-02-07 15:40:20', '../img/list12.png');
INSERT INTO `listgoods` VALUES ('31', '52°金剑南K6 500ml+52°五粮液恭喜发财V6珍酿500ml', '109.00', '酒', '2018-02-07 15:40:40', '../img/list13.png');
INSERT INTO `listgoods` VALUES ('32', '52°金剑南K6 500ml+52°五粮液恭喜发财V6珍酿500ml', '110.00', '酒', '2018-02-07 15:40:55', '../img/list14.png');
INSERT INTO `listgoods` VALUES ('33', '50°古井贡酒·桃花春曲500ml+50°古井贡酒原浆献礼版500ml', '111.00', '酒', '2018-02-07 15:41:23', '../img/list15.png');
INSERT INTO `listgoods` VALUES ('34', '50°古井贡酒·桃花春曲500ml+50°古井贡酒原浆献礼版500ml', '112.00', '酒', '2018-02-07 15:41:43', '../img/list16.png');
INSERT INTO `listgoods` VALUES ('35', '50°古井贡酒·桃花春曲500ml+50°古井贡酒原浆献礼版500ml', '113.00', '酒', '2018-02-07 15:41:59', '../img/list17.png');
INSERT INTO `listgoods` VALUES ('36', '【春节不打烊】42°牛二犇原浆白酒浓香型480ml*12瓶', '114.00', '酒', '2018-02-07 15:42:55', '../img/list18.png');
INSERT INTO `listgoods` VALUES ('37', '【春节不打烊】42°牛二犇原浆白酒浓香型480ml*12瓶', '115.00', '酒', '2018-02-07 15:43:10', '../img/list11.png');
INSERT INTO `listgoods` VALUES ('38', '【春节不打烊】42°牛二犇原浆白酒浓香型480ml*12瓶', '116.00', '酒', '2018-02-07 15:43:25', '../img/list12.png');
INSERT INTO `listgoods` VALUES ('39', '【春节不打烊】42°牛二犇原浆白酒浓香型480ml*12瓶', '117.00', '酒', '2018-02-07 15:43:54', '../img/list13.png');
INSERT INTO `listgoods` VALUES ('40', '【礼盒】52°泸州老窖(鉴赏级)500ml*2+景德镇荷韵瓷酒器', '118.00', '酒', '2018-02-07 15:45:23', '../img/list14.png');
INSERT INTO `listgoods` VALUES ('41', '【礼盒】52°泸州老窖(鉴赏级)500ml*2+景德镇荷韵瓷酒器', '119.00', '酒', '2018-02-07 15:45:05', '../img/list18.png');
INSERT INTO `listgoods` VALUES ('42', '【礼盒】52°泸州老窖(鉴赏级)500ml*2+景德镇荷韵瓷酒器', '120.00', '酒', '2018-02-07 16:47:23', '../img/list14.png');
INSERT INTO `listgoods` VALUES ('43', '46°牛栏山二锅头大二（绿瓶）500ml（12瓶整箱装）', '121.00', '酒', '2018-02-07 15:46:20', '../img/list11.png');
INSERT INTO `listgoods` VALUES ('44', '46°牛栏山二锅头大二（绿瓶）500ml（12瓶整箱装）', '122.00', '酒', '2018-02-07 15:46:36', '../img/list12.png');
INSERT INTO `listgoods` VALUES ('45', '46°牛栏山二锅头大二（绿瓶）500ml（12瓶整箱装）', '123.00', '酒', '2018-02-07 15:47:06', '../img/list13.png');
INSERT INTO `listgoods` VALUES ('46', '【春节不打烊】42°北京二锅头500ml*12瓶 浓香型口粮白酒 整箱装', '124.00', '酒', '2018-02-07 15:47:50', '../img/list14.png');
INSERT INTO `listgoods` VALUES ('47', '【春节不打烊】42°北京二锅头500ml*12瓶 浓香型口粮白酒 整箱装', '125.00', '酒', '2018-02-07 15:48:09', '../img/list15.png');
INSERT INTO `listgoods` VALUES ('48', '【礼盒】52°酒鬼酒书说500ml+酒器(酒杯*2）', '126.00', '酒', '2018-02-07 15:48:48', '../img/list16.png');
INSERT INTO `listgoods` VALUES ('49', '【礼盒】52°酒鬼酒书说500ml+酒器(酒杯*2）', '127.00', '酒', '2018-02-07 15:49:09', '../img/list17.png');
INSERT INTO `listgoods` VALUES ('50', '【礼盒】52°孔府家酒·朋自远方1000ml升级版组合（3）', '128.00', '酒', '2018-02-07 15:49:35', '../img/list18.png');
INSERT INTO `listgoods` VALUES ('51', '【礼盒】52°孔府家酒·朋自远方1000ml升级版组合（3）', '129.00', '酒', '2018-02-07 16:47:27', '../img/list13.png');
INSERT INTO `listgoods` VALUES ('52', '【礼盒】42°汾酒集团优级杏花村酒(升级版)500ml（双瓶装）', '130.00', '酒', '2018-02-07 15:50:30', '../img/list11.png');
INSERT INTO `listgoods` VALUES ('53', '【礼盒】42°汾酒集团优级杏花村酒(升级版)500ml（双瓶装）', '131.00', '酒', '2018-02-07 15:51:16', '../img/list12.png');
INSERT INTO `listgoods` VALUES ('54', '【礼盒】42°汾酒集团优级杏花村酒(升级版)500ml（双瓶装）', '132.00', '酒', '2018-02-07 15:51:50', '../img/list13.png');
INSERT INTO `listgoods` VALUES ('55', '【礼盒】52°洋河蓝色经典海之蓝礼盒装480ml*2', '133.00', '酒', '2018-02-07 15:52:20', '../img/list14.png');
INSERT INTO `listgoods` VALUES ('56', '【礼盒】52°洋河蓝色经典海之蓝礼盒装480ml*2', '134.00', '酒', '2018-02-07 15:52:45', '../img/list15.png');
INSERT INTO `listgoods` VALUES ('57', '【礼盒】52°洋河蓝色经典海之蓝礼盒装480ml*2', '135.00', '酒', '2018-02-07 15:53:05', '../img/list16.png');
INSERT INTO `listgoods` VALUES ('58', '【礼盒】52°洋河蓝色经典海之蓝礼盒装480ml*2', '136.00', '酒', '2018-02-07 15:53:27', '../img/list17.png');
INSERT INTO `listgoods` VALUES ('59', '【礼盒】52°洋河蓝色经典海之蓝礼盒装480ml*2', '137.00', '酒', '2018-02-07 15:54:22', '../img/list11.png');
INSERT INTO `listgoods` VALUES ('60', '【礼盒】52°洋河蓝色经典海之蓝礼盒装480ml*2', '138.00', '酒', '2018-02-07 15:54:16', '../img/list12.png');
INSERT INTO `listgoods` VALUES ('61', '【礼盒】52°洋河蓝色经典海之蓝礼盒装480ml*2', '139.00', '酒', '2018-02-07 17:24:17', '../img/list13.png');
INSERT INTO `listgoods` VALUES ('62', '【礼盒】52°洋河蓝色经典海之蓝礼盒装480ml*2', '140.00', '酒', '2018-02-07 17:24:38', '../img/list14.png');
INSERT INTO `listgoods` VALUES ('63', '52°景芝老字号500ml（6瓶装）+52°景芝白干100ml', '141.00', '酒', '2018-02-07 17:25:36', '../img/list15.png');
INSERT INTO `listgoods` VALUES ('64', '52°景芝老字号500ml（6瓶装）+52°景芝白干100ml', '142.00', '酒', '2018-02-07 17:25:52', '../img/list16.png');
INSERT INTO `listgoods` VALUES ('65', '52°景芝老字号500ml（6瓶装）+52°景芝白干100ml', '143.00', '酒', '2018-02-07 17:26:37', '../img/list17.png');
INSERT INTO `listgoods` VALUES ('66', '52°景芝老字号500ml（6瓶装）+52°景芝白干100ml', '144.00', '酒', '2018-02-07 17:26:34', '../img/list18.png');
INSERT INTO `listgoods` VALUES ('67', '52°景芝老字号500ml（6瓶装）+52°景芝白干100ml', '145.00', '酒', '2018-02-07 17:27:28', '../img/list13.png');
INSERT INTO `listgoods` VALUES ('68', '52°景芝老字号500ml（6瓶装）+52°景芝白干100ml', '146.00', '酒', '2018-02-07 17:27:22', '../img/list14.png');
INSERT INTO `listgoods` VALUES ('69', '52°景芝老字号500ml（6瓶装）+52°景芝白干100ml', '146.00', '酒', '2018-02-07 17:28:30', '../img/list16.png');
INSERT INTO `listgoods` VALUES ('70', '52°景芝老字号500ml（6瓶装）+52°景芝白干100ml', '147.00', '酒', '2018-02-07 17:28:49', '../img/list17.png');
INSERT INTO `listgoods` VALUES ('71', '52°景芝老字号500ml（6瓶装）+52°景芝白干100ml', '148.00', '酒', '2018-02-07 17:29:25', '../img/list18.png');
INSERT INTO `listgoods` VALUES ('72', '53°汾酒集团杏花村一坛香百年老坛（珍品）清香型白酒475ml*6', '149.00', '酒', '2018-02-07 17:30:06', '../img/list11.png');
INSERT INTO `listgoods` VALUES ('73', '53°汾酒集团杏花村一坛香百年老坛（珍品）清香型白酒475ml*6', '150.00', '酒', '2018-02-07 17:30:26', '../img/list12.png');
INSERT INTO `listgoods` VALUES ('74', '53°汾酒集团杏花村一坛香百年老坛（珍品）清香型白酒475ml*6', '151.00', '酒', '2018-02-07 17:30:41', '../img/list13.png');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `add_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('16', 'as123123', '123456', '2018-02-08 23:12:20');
INSERT INTO `user` VALUES ('2', '1234', '1234', '2018-02-08 19:29:55');
INSERT INTO `user` VALUES ('3', '梁嘉健', '123456', '2018-02-08 19:31:30');
INSERT INTO `user` VALUES ('4', '1232', '12345623132', '2018-02-08 19:34:05');
INSERT INTO `user` VALUES ('5', '哈哈哈哈', '123456', '2018-02-08 19:40:41');
INSERT INTO `user` VALUES ('6', '9999', '123456', '2018-02-08 19:41:28');
INSERT INTO `user` VALUES ('7', '请问请问其二', 'qweqweqweqwe', '2018-02-08 19:50:24');
INSERT INTO `user` VALUES ('8', '萨丹哈科技时代', '123132123', '2018-02-08 20:09:46');
INSERT INTO `user` VALUES ('9', '其味无穷而且', 'wqeqweqwewqeqweqwe', '2018-02-08 20:09:59');
INSERT INTO `user` VALUES ('10', 'kb24888', '123456', '2018-02-08 20:45:09');
INSERT INTO `user` VALUES ('11', 'a123132', '123456', '2018-02-08 20:46:41');
INSERT INTO `user` VALUES ('12', 'laoxie', 'e10adc3949ba59abbe56e057f20f883e', '2018-02-08 21:54:04');
INSERT INTO `user` VALUES ('13', 'q1234567', 'e10adc3949ba59abbe56e057f20f883e', '2018-02-08 20:56:44');
INSERT INTO `user` VALUES ('14', 'a999999', 'e10adc3949ba59abbe56e057f20f883e', '2018-02-08 21:29:09');
INSERT INTO `user` VALUES ('15', 'a3333333', '1a100d2c0dab19c4430e7d73762b3423', '2018-02-08 21:48:22');
INSERT INTO `user` VALUES ('17', 'asd123456', '123456', '2018-02-08 23:33:11');
INSERT INTO `user` VALUES ('18', 'asdfg1234', '12345', '2018-02-08 23:33:52');
INSERT INTO `user` VALUES ('19', 'q11111', '11111', '2018-02-08 23:34:19');
INSERT INTO `user` VALUES ('20', 'a666666', '666666', '2018-02-09 08:58:11');
INSERT INTO `user` VALUES ('21', 's123123', '123456', '2018-02-09 09:15:53');
SET FOREIGN_KEY_CHECKS=1;
