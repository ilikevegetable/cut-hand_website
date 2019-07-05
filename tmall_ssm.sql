/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : tmall_ssm

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2019-07-05 10:32:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一索引id',
  `name` varchar(255) NOT NULL COMMENT '分类的名字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '女装 /内衣');
INSERT INTO `category` VALUES ('2', '男装 /运动户外');
INSERT INTO `category` VALUES ('3', '女鞋 /男鞋 /箱包');
INSERT INTO `category` VALUES ('4', '美妆 /个人护理');
INSERT INTO `category` VALUES ('5', '腕表 /眼镜 /珠宝饰品');
INSERT INTO `category` VALUES ('6', '手机 /数码 /电脑办公');
INSERT INTO `category` VALUES ('7', '母婴玩具');
INSERT INTO `category` VALUES ('8', '零食 /茶酒 /进口食品');
INSERT INTO `category` VALUES ('9', '生鲜水果');
INSERT INTO `category` VALUES ('10', '大家电 /生活电器');
INSERT INTO `category` VALUES ('11', '家具建材');
INSERT INTO `category` VALUES ('12', '汽车 /配件 /用品');
INSERT INTO `category` VALUES ('13', '家纺 /家饰 /鲜花');
INSERT INTO `category` VALUES ('14', '医药保健');
INSERT INTO `category` VALUES ('15', '厨具 /收纳 /宠物');
INSERT INTO `category` VALUES ('16', '图书音像');

-- ----------------------------
-- Table structure for `order_`
-- ----------------------------
DROP TABLE IF EXISTS `order_`;
CREATE TABLE `order_` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一索引id',
  `order_code` varchar(255) NOT NULL COMMENT '订单号',
  `address` varchar(255) NOT NULL COMMENT '收货地址',
  `post` varchar(255) NOT NULL COMMENT '邮编',
  `receiver` varchar(255) NOT NULL COMMENT '收货人姓名',
  `mobile` varchar(255) NOT NULL COMMENT '手机号码',
  `user_message` varchar(255) NOT NULL COMMENT '用户备注的信息',
  `create_date` datetime NOT NULL COMMENT '订单创建时间',
  `pay_date` datetime DEFAULT NULL COMMENT '订单支付时间',
  `delivery_date` datetime DEFAULT NULL COMMENT '发货日期',
  `confirm_date` datetime DEFAULT NULL COMMENT '确认收货日期',
  `user_id` int(11) DEFAULT NULL COMMENT '对应的用户id',
  `status` varchar(255) NOT NULL COMMENT '订单状态',
  PRIMARY KEY (`id`),
  KEY `fk_order_user` (`user_id`),
  CONSTRAINT `fk_order_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_
-- ----------------------------
INSERT INTO `order_` VALUES ('1', '20190702145029474', '', '', '', '', '', '2019-07-02 00:00:00', '2019-07-02 00:00:00', '2019-07-02 00:00:00', '2019-07-02 00:00:00', '1', 'finish');
INSERT INTO `order_` VALUES ('2', '20190702145120516', '', '', '', '', '', '2019-07-02 00:00:00', null, null, null, '1', 'delete');
INSERT INTO `order_` VALUES ('3', '20190702145358219', '', '', '', '', '', '2019-07-02 00:00:00', '2019-07-02 00:00:00', null, null, '1', 'delete');
INSERT INTO `order_` VALUES ('4', '20190702145437950', '', '', '', '', '', '2019-07-02 00:00:00', null, null, null, '1', 'delete');
INSERT INTO `order_` VALUES ('5', '20190702151758314', '', '', '', '', '', '2019-07-02 00:00:00', '2019-07-02 00:00:00', '2019-07-02 00:00:00', '2019-07-02 00:00:00', '1', 'delete');
INSERT INTO `order_` VALUES ('6', '20190702151955174', '', '', '', '', '', '2019-07-02 00:00:00', '2019-07-02 00:00:00', '2019-07-02 00:00:00', '2019-07-02 00:00:00', '1', 'finish');
INSERT INTO `order_` VALUES ('7', '20190702162157646', '', '', '', '', '', '2019-07-02 00:00:00', '2019-07-03 00:00:00', '2019-07-03 00:00:00', null, '1', 'delete');
INSERT INTO `order_` VALUES ('8', '20190703101857999', '华中科技大学16栋', '000000', 'hcy', '13513513511', 'hcynb', '2019-07-03 00:00:00', '2019-07-03 00:00:00', '2019-07-03 00:00:00', '2019-07-03 00:00:00', '2', 'finish');
INSERT INTO `order_` VALUES ('9', '20190703102811455', '', '', '', '', '', '2019-07-03 00:00:00', '2019-07-03 00:00:00', '2019-07-03 10:40:35', null, '2', 'waitConfirm');
INSERT INTO `order_` VALUES ('10', '20190703103733000', '', '', '', '', '', '2019-07-03 00:00:00', '2019-07-03 00:00:00', '2019-07-03 00:00:00', '2019-07-03 00:00:00', '1', 'finish');
INSERT INTO `order_` VALUES ('11', '20190704114453588', '', '', '', '', '', '2019-07-04 00:00:00', '2019-07-04 00:00:00', null, null, '1', 'delete');
INSERT INTO `order_` VALUES ('12', '20190704142430651', '', '', '', '', '', '2019-07-04 00:00:00', '2019-07-04 00:00:00', null, null, '1', 'delete');
INSERT INTO `order_` VALUES ('13', '20190704142627144', 'adfad', 'adf', 'adfadf', 'adfadfa', '', '2019-07-04 00:00:00', '2019-07-04 00:00:00', null, null, '1', 'delete');
INSERT INTO `order_` VALUES ('14', '20190704142728143', '华中科技大学', '000000', '蔡东鸿', '15827300631', 'M码 黑色', '2019-07-04 00:00:00', '2019-07-04 00:00:00', null, null, '1', 'delete');
INSERT INTO `order_` VALUES ('15', '20190704144834627', '', '', '', '', '', '2019-07-04 00:00:00', null, null, null, '1', 'delete');
INSERT INTO `order_` VALUES ('16', '20190704144919140', '', '', '', '', '', '2019-07-04 00:00:00', '2019-07-04 00:00:00', null, null, '1', 'delete');
INSERT INTO `order_` VALUES ('17', '20190704145442031', '', '', '', '', '', '2019-07-04 00:00:00', '2019-07-04 00:00:00', null, null, '1', 'delete');
INSERT INTO `order_` VALUES ('18', '20190704150517888', '', '', '', '', '', '2019-07-04 00:00:00', '2019-07-04 15:05:19', null, null, '1', 'waitDelivery');
INSERT INTO `order_` VALUES ('19', '20190704150549465', '', '', '', '', '', '2019-07-04 00:00:00', '2019-07-04 15:05:51', null, null, '1', 'waitDelivery');
INSERT INTO `order_` VALUES ('20', '20190704151537050', '', '', '', '', '', '2019-07-04 00:00:00', '2019-07-04 15:15:38', null, null, '1', 'waitDelivery');
INSERT INTO `order_` VALUES ('21', '20190704152405394', '', '', '', '', '', '2019-07-04 00:00:00', '2019-07-04 15:24:07', null, null, '1', 'waitDelivery');
INSERT INTO `order_` VALUES ('22', '20190704152707915', '1', '1', '1', '1', '1', '2019-07-04 00:00:00', '2019-07-04 00:00:00', '2019-07-04 00:00:00', '2019-07-04 00:00:00', '1', 'finish');
INSERT INTO `order_` VALUES ('23', '20190704153201596', '2', '2', '2', '2', '2', '2019-07-04 00:00:00', '2019-07-04 00:00:00', '2019-07-04 00:00:00', '2019-07-04 00:00:00', '1', 'finish');
INSERT INTO `order_` VALUES ('24', '20190704153531799', '3', '3', '3', '3', '3', '2019-07-04 00:00:00', '2019-07-04 00:00:00', '2019-07-04 00:00:00', '2019-07-04 00:00:00', '1', 'finish');
INSERT INTO `order_` VALUES ('25', '20190704153832920', '4', '4', '4', '4', '4', '2019-07-04 00:00:00', '2019-07-04 00:00:00', '2019-07-04 00:00:00', '2019-07-04 00:00:00', '1', 'finish');
INSERT INTO `order_` VALUES ('26', '20190704155244045', '1', '1', '1', '1', '1', '2019-07-04 00:00:00', '2019-07-04 00:00:00', '2019-07-04 00:00:00', '2019-07-04 15:53:05', '1', 'waitReview');

-- ----------------------------
-- Table structure for `order_item`
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一索引id',
  `product_id` int(11) NOT NULL COMMENT '对应产品id',
  `order_id` int(11) DEFAULT NULL COMMENT '对应订单id',
  `user_id` int(11) NOT NULL COMMENT '对应用户id',
  `number` int(11) DEFAULT NULL COMMENT '对应产品购买的数量',
  PRIMARY KEY (`id`),
  KEY `fk_order_item_product` (`product_id`),
  KEY `fk_order_item_order` (`order_id`),
  KEY `fk_order_item_user` (`user_id`),
  CONSTRAINT `fk_order_item_order` FOREIGN KEY (`order_id`) REFERENCES `order_` (`id`),
  CONSTRAINT `fk_order_item_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `fk_order_item_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_item
-- ----------------------------
INSERT INTO `order_item` VALUES ('1', '13', '4', '1', '13');
INSERT INTO `order_item` VALUES ('2', '12', '4', '1', '1');
INSERT INTO `order_item` VALUES ('3', '18', '4', '1', '1');
INSERT INTO `order_item` VALUES ('5', '5', '4', '1', '1');
INSERT INTO `order_item` VALUES ('6', '9', '1', '1', '3');
INSERT INTO `order_item` VALUES ('8', '9', '6', '1', '1');
INSERT INTO `order_item` VALUES ('10', '13', '8', '2', '1');
INSERT INTO `order_item` VALUES ('12', '11', '9', '2', '1');
INSERT INTO `order_item` VALUES ('13', '59', '10', '1', '4');
INSERT INTO `order_item` VALUES ('18', '9', '13', '1', '1');
INSERT INTO `order_item` VALUES ('29', '19', '18', '1', '16');
INSERT INTO `order_item` VALUES ('30', '19', '19', '1', '1');
INSERT INTO `order_item` VALUES ('36', '35', '20', '1', '6');
INSERT INTO `order_item` VALUES ('38', '35', '21', '1', '1');
INSERT INTO `order_item` VALUES ('40', '18', '22', '1', '1');
INSERT INTO `order_item` VALUES ('41', '17', '23', '1', '1');
INSERT INTO `order_item` VALUES ('42', '13', '23', '1', '1');
INSERT INTO `order_item` VALUES ('43', '20', '23', '1', '1');
INSERT INTO `order_item` VALUES ('44', '20', '24', '1', '1');
INSERT INTO `order_item` VALUES ('45', '20', '25', '1', '1');
INSERT INTO `order_item` VALUES ('46', '1', '26', '1', '1');
INSERT INTO `order_item` VALUES ('47', '2', '26', '1', '1');
INSERT INTO `order_item` VALUES ('48', '3', '26', '1', '1');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一索引id',
  `name` varchar(255) NOT NULL COMMENT '产品的名称',
  `sub_title` varchar(255) DEFAULT NULL COMMENT '小标题',
  `price` float DEFAULT NULL COMMENT '价格',
  `sale` int(11) DEFAULT NULL COMMENT '销量',
  `stock` int(11) DEFAULT NULL COMMENT '库存',
  `category_id` int(11) DEFAULT NULL COMMENT '对应的分类id',
  PRIMARY KEY (`id`),
  KEY `fk_product_category` (`category_id`),
  CONSTRAINT `fk_product_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', 'YSL圣罗兰纯口红 方管正红色1星星色52正橘色13豆沙色姨妈色 正品', null, '320', '35000', '9999', '4');
INSERT INTO `product` VALUES ('2', '【官方正品】纪梵希口红小羊皮半哑光唇膏女304 306 307豆沙色', '真皮管身定制', '345', '15099', '9999', '4');
INSERT INTO `product` VALUES ('3', 'sk-iiskiisk2神仙水护肤精华露面部精华液补水紧致均匀肌肤正品A', '万千美誉神仙水 肌肤愈渐晶莹剔透', '1540', '42123', '9999', '4');
INSERT INTO `product` VALUES ('5', 'PANDORA潘多拉爱的豆荚925银手链597354CZ时尚简约手饰饰品礼物女', '饱满的造型 寓意爱的果实', '498', '1219', '9999', '5');
INSERT INTO `product` VALUES ('6', 'DR DarryRing雪花款正品1克拉钻石戒指单钻白18K金求婚结婚dr钻戒', '男士一生仅能定制一枚', '9389', '630', '9999', '5');
INSERT INTO `product` VALUES ('7', '周大福儿童长命百岁锁包金锁足金黄金吊坠计价F217678', '关注店铺，领券有优惠', '776.2', '2444', '9999', '5');
INSERT INTO `product` VALUES ('8', '【旗舰领航】Huawei/华为P30 Pro曲面屏超感光徕卡四摄变焦双景录像980智能手机p30pro', null, '5488', '48535', '9999', '6');
INSERT INTO `product` VALUES ('9', 'Stradivarius 黑色一字带凉鞋女高跟鞋细跟2019新款 12902041040', '鞋跟高度 8cm', '179', '456', '9999', '1');
INSERT INTO `product` VALUES ('10', 'Stradivarius 法式复古智熏裙V领碎花连衣裙女高腰裙 02382966001', '少女亚麻连衣裙', '159', '2213', '9999', '1');
INSERT INTO `product` VALUES ('11', 'Stradivarius 春夏款白色打底女短袖T恤宽松2019新款 02520446003', null, '49', '385', '9999', '1');
INSERT INTO `product` VALUES ('12', ': CHOCOOLATE男装休闲短裤2019春季新品潮流迷彩工装口袋5051ACC', null, '323', '214', '9999', '2');
INSERT INTO `product` VALUES ('13', 'Aape男装春夏烫金纹理猿颜哥特体字母印花潮流短袖T恤0214XXC', '烫金猿颜中融入纹理，倍显酷感奢华', '499', '450', '9999', '2');
INSERT INTO `product` VALUES ('14', 'ZARA新款 男装 夏季口袋饰休闲短裤 01701424406', null, '129', '2222', '9999', '2');
INSERT INTO `product` VALUES ('15', 'Abercrombie＆Fitch男装 潮流Pride扎染T恤 264617-1 AF', null, '228', '123', '9999', '2');
INSERT INTO `product` VALUES ('16', 'Vans范斯官方正品 黑色侧边条纹低帮男士运动休闲鞋', null, '465', '6666', '9999', '3');
INSERT INTO `product` VALUES ('17', 'FILA 斐乐官方 TRACER 男子复古跑鞋 2019新款休闲运动鞋老爹鞋男', '鞋身撞色拼接设计，潮流升级\r\n\r\n鞋身撞色拼接设计，潮流升级\r\n\r\n鞋身撞色拼接设计，潮流升级\r\n\r\n', '680', '5500', '9999', '3');
INSERT INTO `product` VALUES ('18', 'Jordan 官方 AIR JORDAN 1 MID SE GC AJ1男子运动鞋 CD6759', '全场上下 助力飞跃', '969', '4960', '9999', '3');
INSERT INTO `product` VALUES ('19', 'Crocs洞洞鞋 卡骆驰男女情侣鞋卡骆班夏季沙滩鞋平底凉鞋|11016S', 'Crocs洞洞鞋 卡骆驰男女情侣鞋卡骆班夏季沙滩鞋平底凉鞋|11016S', '399', '661', '9999', '3');
INSERT INTO `product` VALUES ('20', '阿迪达斯三叶草男鞋女鞋板鞋2019新款贝壳头金标休闲运动鞋C77124', null, '517', '1199', '9999', '3');
INSERT INTO `product` VALUES ('21', 'ZARA新款 女包 夏季自然色编织纸质手提购物包 16004004111', '高x宽x深 43.5x39x1cm', '299', '222', '9999', '3');
INSERT INTO `product` VALUES ('22', 'VH女包水墨风刺绣时尚小方包潮流中国风单肩包清新森系斜挎链条包', 'VH澳洲时尚潮流女包', '699', '389', '9999', '3');
INSERT INTO `product` VALUES ('23', 'Apple/苹果 iPhone 8 Plus', null, '7099', '38969', '9999', '6');
INSERT INTO `product` VALUES ('24', '【下单立减400元】Apple/苹果 iPhone Xs Max 256G 全网通4G手机 双卡双待苹果iphonexsmax', '官网价限时直降 到手价8688元', '9088', '38589', '9999', '6');
INSERT INTO `product` VALUES ('25', '【升级锁鲜盖】贝因美 菁爱幼儿配方奶粉3段900g*2罐添加乳铁蛋白', null, '398', '1327', '9999', '7');
INSERT INTO `product` VALUES ('26', '美国童年时光CHILDLIFE 三驾马车VC+第一防御液+紫锥雏菊三架儿童', '换季常备 ◆ 提前预防 ◆ 天然提取换季常备 ◆ 提前预防 ◆ 天然提取', '544', '392', '9999', '7');
INSERT INTO `product` VALUES ('27', '[好奇]心钻装纸尿裤L40片弱酸干爽超薄透气婴儿男女宝宝官方旗舰', '弱酸亲肤 超柔超细腻呵护', '230', '4629', '9999', '7');
INSERT INTO `product` VALUES ('28', '英國AHMAD TEA/亞曼進口茶葉伯爵+檸檬紅茶45包袋泡茶組合', '柠檬+伯爵的组合', '65', '8', '9999', '8');
INSERT INTO `product` VALUES ('29', '搶爆款福泰隆茉莉香米10KG大米10公斤長粒香米20斤非東北米家庭裝', '健康无污染 茉莉香米 进口原粮 国内包装', '80', '6032', '9999', '8');
INSERT INTO `product` VALUES ('30', '【童年记_南瓜子500gx2袋】 独立小包食品原味五香味零食坚果炒货', '镇店爆款 口味任选 来自大自然的馈赠', '32.8', '9877', '9999', '8');
INSERT INTO `product` VALUES ('31', 'OSA欧莎2019新款夏雪纺衬衫女洋气荷叶边短袖小衫宽松气质开衫', 'OSA显瘦雪纺衫', '169', '1535', '9999', '1');
INSERT INTO `product` VALUES ('32', 'Vero Moda2019春季新款ins风蕾丝七分袖印花连衣裙|31917C549', 'C19季浅粉色-预售2019.7.12日发货', '399', '580', '9999', '1');
INSERT INTO `product` VALUES ('33', '唐狮2019春高腰休闲白色牛仔裤cec裤子女显瘦直筒宽松阔腿老爹裤', '新款上架！三色可选~', '129', '5800', '9999', '1');
INSERT INTO `product` VALUES ('34', '名兰世家女装结婚宴会金丝绒改良旗袍妈妈装礼服女蕾丝连衣裙长款', '夏季焕新，领券后下单更实惠！', '1899', '220', '9999', '1');
INSERT INTO `product` VALUES ('35', '男装 麻棉拉链连帽外套 415954 优衣库UNIQLO', '初上市价格299元', '149', '2500', '9999', '2');
INSERT INTO `product` VALUES ('36', '男士短袖卫衣连帽潮牌男装韩版潮流夏季t恤男学生帅气夏装上衣服', '连帽短袖t恤 不起球不褪色', '89', '2222', '9999', '2');
INSERT INTO `product` VALUES ('37', 'JackJones杰克琼斯春季男百搭文艺格纹舒适潮修身休闲裤219114564', '低裆修身版型 文艺千鸟格格纹 可卷边裤脚', '249.5', '2233', '9999', '2');
INSERT INTO `product` VALUES ('38', '斯巴奴男装2019夏季防晒服男户外超薄透气速干皮肤衣运动夹克外套', '◆防晒透气◆轻薄舒适休闲运动连帽设计◆', '288', '589', '9999', '2');
INSERT INTO `product` VALUES ('39', 'Skechers斯凯奇2019年新品厚底熊猫鞋老爹鞋蝴蝶结休闲鞋女13168', '潮型熊猫鞋粉；轻奢与潮流的碰撞', '649', '5589', '9999', '3');
INSERT INTO `product` VALUES ('40', '哈根达斯冰淇淋2个品脱+4个小纸杯组合装 顺丰冷链配送到家', '哈根达斯顺丰配送 美味送到家', '306', '1589', '9999', '9');
INSERT INTO `product` VALUES ('41', '冰岛大西洋真鳕鱼带皮中段共400g 鳕鱼片婴幼儿童宝宝 进口辅食', '鳕鱼', '139', '5786', '9999', '9');
INSERT INTO `product` VALUES ('42', '小天鹅7.5公斤KG全自动家用脱水迷你波轮洗衣机宿舍 TB75-easy60W', 'WIFI智控 24h预约洗衣 8大洗护程序', '1299', '788', '9999', '10');
INSERT INTO `product` VALUES ('43', '美的烧水壶家用304不锈钢电热水壶小型开水自动断电保温一体茶壶', '隔热防烫设计 无缝一体内胆 带防尘盖', '89.9', '2563', '9999', '10');
INSERT INTO `product` VALUES ('44', '瑞福祥 美式乡村实木床1.8米 欧式1.5公主床单人床卧室双人床B230', '热卖千件，卧室爆款', '5203', '1205', '9999', '11');
INSERT INTO `product` VALUES ('45', '左右现代简约餐桌一桌4椅餐桌椅组合烤漆钢化玻璃饭桌DJW016E+Y', '钢化玻璃桌面 烤漆桌身 金属铁脚 7天闪发', '4096', '264', '9999', '11');
INSERT INTO `product` VALUES ('46', '一口价39.99万 沃尔沃volvo V60 18款2.0T Polestar 【大额订金】', '一口价新车39.99万', '399999', '9', '9999', '12');
INSERT INTO `product` VALUES ('47', '一口价51.7万 丰田18款超霸4.0标配 天窗版平行进口【大额订金】', '丰田', '517999', '4', '9999', '12');
INSERT INTO `product` VALUES ('48', '堂皇家纺刺绣花床上用品磨毛四件套全棉纯棉粉色少女田园风花之蔓', '全棉轻磨毛 精美花鸟刺绣', '539', '4215', '9999', '13');
INSERT INTO `product` VALUES ('49', '五星酒店全棉冬天被子纯棉冬被单人双人被芯春秋冬季8斤加厚保暖', '全棉磨毛工艺 柔软亲肤 绗缝定型不跑棉', '409', '689', '9999', '13');
INSERT INTO `product` VALUES ('50', '匯仁腎寶片成人男性溫陽補腎虧虛男補虧損腎保片中藥阿里藥房', null, '428', '9999', '9999', '14');
INSERT INTO `product` VALUES ('51', '鱼跃制氧机8F带雾化医用级3L升吸氧器家用老人吸氧仪器', '3L稳定供氧 带雾化功能 医用级', '7200', '123', '9999', '14');
INSERT INTO `product` VALUES ('52', '苏泊尔平底锅家用麦饭石色不粘锅炒锅煎饼蛋牛排锅电磁炉通用煎锅', '【28cm加大加深煎炒锅+送锅盖】', '159', '6789', '9999', '15');
INSERT INTO `product` VALUES ('53', '苏泊尔汤锅304不锈钢加厚家用奶锅煮粥锅煮锅锅具燃气电磁炉炖锅', null, '109', '2675', '9999', '15');
INSERT INTO `product` VALUES ('54', '【当当网 正版书籍】解忧杂货店 东野圭吾继白夜行疾风回旋曲之后又一新书文学救赎励志心理学读物畅销文艺书外', null, '27.3', '35648', '9999', '16');
INSERT INTO `product` VALUES ('55', '5折【当当网 正版图书】 小王子（袁泉推荐，畅销350万册，作者基金会官方认证简体中文版）', '法国“圣埃克苏佩里基金会”官方认证', '19.9', '23333', '9999', '16');
INSERT INTO `product` VALUES ('56', '兰蔻全新3D大眼精华20ml 眼部精华眼霜滋养睫毛淡眼纹', null, '680', '25063', '9999', '4');
INSERT INTO `product` VALUES ('57', '兰蔻菁纯臻颜精华粉底液30ml 持久遮瑕防晒保湿BB霜', '紧实饱满水润丰盈 滋润年轻光泽', '900', '788', '9999', '4');
INSERT INTO `product` VALUES ('58', '周大福珠宝首饰简约足金黄金戒指计价F217482精选', null, '779', '1649', '9999', '5');
INSERT INTO `product` VALUES ('59', 'RIGO 18K金眼镜架女 真黄金眼镜框无框镶钻纯 知性时尚奢华近视镜', '18k黄金眼镜框 镶真钻石眼镜架 碧玺装饰', '39900', '3', '9999', '5');
INSERT INTO `product` VALUES ('60', '【6期免息】OPPO Find X标准版超级闪充曲面全面屏拍照全网通手机官方旗舰正品oppo findx', '高通骁龙845|曲面全面屏|8G+128G/256G', '3999', '598', '9999', '6');
INSERT INTO `product` VALUES ('61', '【8+256GB到手2299元】Xiaomi/小米 MIX 2S全面屏骁龙845智能游戏商务AI双摄mix3米9官方旗舰', '8+256GB下单到手价2299元 赠无线充', '2299', '1309', '9999', '6');

-- ----------------------------
-- Table structure for `product_image`
-- ----------------------------
DROP TABLE IF EXISTS `product_image`;
CREATE TABLE `product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一索引id',
  `product_id` int(11) DEFAULT NULL COMMENT '对应的产品id',
  PRIMARY KEY (`id`),
  KEY `fk_product_image_product` (`product_id`),
  CONSTRAINT `fk_product_image_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=306 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_image
-- ----------------------------
INSERT INTO `product_image` VALUES ('1', '1');
INSERT INTO `product_image` VALUES ('2', '1');
INSERT INTO `product_image` VALUES ('3', '1');
INSERT INTO `product_image` VALUES ('4', '1');
INSERT INTO `product_image` VALUES ('5', '1');
INSERT INTO `product_image` VALUES ('6', '2');
INSERT INTO `product_image` VALUES ('7', '2');
INSERT INTO `product_image` VALUES ('8', '2');
INSERT INTO `product_image` VALUES ('9', '2');
INSERT INTO `product_image` VALUES ('10', '2');
INSERT INTO `product_image` VALUES ('11', '3');
INSERT INTO `product_image` VALUES ('12', '3');
INSERT INTO `product_image` VALUES ('13', '3');
INSERT INTO `product_image` VALUES ('14', '3');
INSERT INTO `product_image` VALUES ('15', '3');
INSERT INTO `product_image` VALUES ('21', '5');
INSERT INTO `product_image` VALUES ('22', '5');
INSERT INTO `product_image` VALUES ('23', '5');
INSERT INTO `product_image` VALUES ('24', '5');
INSERT INTO `product_image` VALUES ('25', '5');
INSERT INTO `product_image` VALUES ('26', '6');
INSERT INTO `product_image` VALUES ('27', '6');
INSERT INTO `product_image` VALUES ('28', '6');
INSERT INTO `product_image` VALUES ('29', '6');
INSERT INTO `product_image` VALUES ('30', '6');
INSERT INTO `product_image` VALUES ('31', '7');
INSERT INTO `product_image` VALUES ('32', '7');
INSERT INTO `product_image` VALUES ('33', '7');
INSERT INTO `product_image` VALUES ('34', '7');
INSERT INTO `product_image` VALUES ('35', '7');
INSERT INTO `product_image` VALUES ('36', '8');
INSERT INTO `product_image` VALUES ('37', '8');
INSERT INTO `product_image` VALUES ('38', '8');
INSERT INTO `product_image` VALUES ('39', '8');
INSERT INTO `product_image` VALUES ('40', '8');
INSERT INTO `product_image` VALUES ('41', '9');
INSERT INTO `product_image` VALUES ('42', '9');
INSERT INTO `product_image` VALUES ('43', '9');
INSERT INTO `product_image` VALUES ('44', '9');
INSERT INTO `product_image` VALUES ('45', '9');
INSERT INTO `product_image` VALUES ('46', '10');
INSERT INTO `product_image` VALUES ('47', '10');
INSERT INTO `product_image` VALUES ('48', '10');
INSERT INTO `product_image` VALUES ('49', '10');
INSERT INTO `product_image` VALUES ('50', '10');
INSERT INTO `product_image` VALUES ('51', '11');
INSERT INTO `product_image` VALUES ('52', '11');
INSERT INTO `product_image` VALUES ('53', '11');
INSERT INTO `product_image` VALUES ('54', '11');
INSERT INTO `product_image` VALUES ('55', '11');
INSERT INTO `product_image` VALUES ('56', '12');
INSERT INTO `product_image` VALUES ('57', '12');
INSERT INTO `product_image` VALUES ('58', '12');
INSERT INTO `product_image` VALUES ('59', '12');
INSERT INTO `product_image` VALUES ('60', '12');
INSERT INTO `product_image` VALUES ('61', '13');
INSERT INTO `product_image` VALUES ('62', '13');
INSERT INTO `product_image` VALUES ('63', '13');
INSERT INTO `product_image` VALUES ('64', '13');
INSERT INTO `product_image` VALUES ('65', '13');
INSERT INTO `product_image` VALUES ('66', '14');
INSERT INTO `product_image` VALUES ('67', '14');
INSERT INTO `product_image` VALUES ('68', '14');
INSERT INTO `product_image` VALUES ('69', '14');
INSERT INTO `product_image` VALUES ('70', '14');
INSERT INTO `product_image` VALUES ('71', '15');
INSERT INTO `product_image` VALUES ('72', '15');
INSERT INTO `product_image` VALUES ('73', '15');
INSERT INTO `product_image` VALUES ('74', '15');
INSERT INTO `product_image` VALUES ('75', '15');
INSERT INTO `product_image` VALUES ('76', '16');
INSERT INTO `product_image` VALUES ('77', '16');
INSERT INTO `product_image` VALUES ('78', '16');
INSERT INTO `product_image` VALUES ('79', '16');
INSERT INTO `product_image` VALUES ('80', '16');
INSERT INTO `product_image` VALUES ('81', '17');
INSERT INTO `product_image` VALUES ('82', '17');
INSERT INTO `product_image` VALUES ('83', '17');
INSERT INTO `product_image` VALUES ('84', '17');
INSERT INTO `product_image` VALUES ('85', '17');
INSERT INTO `product_image` VALUES ('86', '18');
INSERT INTO `product_image` VALUES ('87', '18');
INSERT INTO `product_image` VALUES ('88', '18');
INSERT INTO `product_image` VALUES ('89', '18');
INSERT INTO `product_image` VALUES ('90', '18');
INSERT INTO `product_image` VALUES ('91', '19');
INSERT INTO `product_image` VALUES ('92', '19');
INSERT INTO `product_image` VALUES ('93', '19');
INSERT INTO `product_image` VALUES ('94', '19');
INSERT INTO `product_image` VALUES ('95', '19');
INSERT INTO `product_image` VALUES ('96', '20');
INSERT INTO `product_image` VALUES ('97', '20');
INSERT INTO `product_image` VALUES ('98', '20');
INSERT INTO `product_image` VALUES ('99', '20');
INSERT INTO `product_image` VALUES ('100', '20');
INSERT INTO `product_image` VALUES ('101', '21');
INSERT INTO `product_image` VALUES ('102', '21');
INSERT INTO `product_image` VALUES ('103', '21');
INSERT INTO `product_image` VALUES ('104', '21');
INSERT INTO `product_image` VALUES ('105', '21');
INSERT INTO `product_image` VALUES ('106', '22');
INSERT INTO `product_image` VALUES ('107', '22');
INSERT INTO `product_image` VALUES ('108', '22');
INSERT INTO `product_image` VALUES ('109', '22');
INSERT INTO `product_image` VALUES ('110', '22');
INSERT INTO `product_image` VALUES ('111', '23');
INSERT INTO `product_image` VALUES ('112', '23');
INSERT INTO `product_image` VALUES ('113', '23');
INSERT INTO `product_image` VALUES ('114', '23');
INSERT INTO `product_image` VALUES ('115', '23');
INSERT INTO `product_image` VALUES ('116', '24');
INSERT INTO `product_image` VALUES ('117', '24');
INSERT INTO `product_image` VALUES ('118', '24');
INSERT INTO `product_image` VALUES ('119', '24');
INSERT INTO `product_image` VALUES ('120', '24');
INSERT INTO `product_image` VALUES ('121', '25');
INSERT INTO `product_image` VALUES ('122', '25');
INSERT INTO `product_image` VALUES ('123', '25');
INSERT INTO `product_image` VALUES ('124', '25');
INSERT INTO `product_image` VALUES ('125', '25');
INSERT INTO `product_image` VALUES ('126', '26');
INSERT INTO `product_image` VALUES ('127', '26');
INSERT INTO `product_image` VALUES ('128', '26');
INSERT INTO `product_image` VALUES ('129', '26');
INSERT INTO `product_image` VALUES ('130', '26');
INSERT INTO `product_image` VALUES ('131', '27');
INSERT INTO `product_image` VALUES ('132', '27');
INSERT INTO `product_image` VALUES ('133', '27');
INSERT INTO `product_image` VALUES ('134', '27');
INSERT INTO `product_image` VALUES ('135', '27');
INSERT INTO `product_image` VALUES ('136', '28');
INSERT INTO `product_image` VALUES ('137', '28');
INSERT INTO `product_image` VALUES ('138', '28');
INSERT INTO `product_image` VALUES ('139', '28');
INSERT INTO `product_image` VALUES ('140', '28');
INSERT INTO `product_image` VALUES ('141', '29');
INSERT INTO `product_image` VALUES ('142', '29');
INSERT INTO `product_image` VALUES ('143', '29');
INSERT INTO `product_image` VALUES ('144', '29');
INSERT INTO `product_image` VALUES ('145', '29');
INSERT INTO `product_image` VALUES ('146', '30');
INSERT INTO `product_image` VALUES ('147', '30');
INSERT INTO `product_image` VALUES ('148', '30');
INSERT INTO `product_image` VALUES ('149', '30');
INSERT INTO `product_image` VALUES ('150', '30');
INSERT INTO `product_image` VALUES ('151', '31');
INSERT INTO `product_image` VALUES ('152', '31');
INSERT INTO `product_image` VALUES ('153', '31');
INSERT INTO `product_image` VALUES ('154', '31');
INSERT INTO `product_image` VALUES ('155', '31');
INSERT INTO `product_image` VALUES ('156', '32');
INSERT INTO `product_image` VALUES ('157', '32');
INSERT INTO `product_image` VALUES ('158', '32');
INSERT INTO `product_image` VALUES ('159', '32');
INSERT INTO `product_image` VALUES ('160', '32');
INSERT INTO `product_image` VALUES ('161', '33');
INSERT INTO `product_image` VALUES ('162', '33');
INSERT INTO `product_image` VALUES ('163', '33');
INSERT INTO `product_image` VALUES ('164', '33');
INSERT INTO `product_image` VALUES ('165', '33');
INSERT INTO `product_image` VALUES ('166', '34');
INSERT INTO `product_image` VALUES ('167', '34');
INSERT INTO `product_image` VALUES ('168', '34');
INSERT INTO `product_image` VALUES ('169', '34');
INSERT INTO `product_image` VALUES ('170', '34');
INSERT INTO `product_image` VALUES ('171', '35');
INSERT INTO `product_image` VALUES ('172', '35');
INSERT INTO `product_image` VALUES ('173', '35');
INSERT INTO `product_image` VALUES ('174', '35');
INSERT INTO `product_image` VALUES ('175', '35');
INSERT INTO `product_image` VALUES ('176', '36');
INSERT INTO `product_image` VALUES ('177', '36');
INSERT INTO `product_image` VALUES ('178', '36');
INSERT INTO `product_image` VALUES ('179', '36');
INSERT INTO `product_image` VALUES ('180', '36');
INSERT INTO `product_image` VALUES ('181', '37');
INSERT INTO `product_image` VALUES ('182', '37');
INSERT INTO `product_image` VALUES ('183', '37');
INSERT INTO `product_image` VALUES ('184', '37');
INSERT INTO `product_image` VALUES ('185', '37');
INSERT INTO `product_image` VALUES ('186', '38');
INSERT INTO `product_image` VALUES ('187', '38');
INSERT INTO `product_image` VALUES ('188', '38');
INSERT INTO `product_image` VALUES ('189', '38');
INSERT INTO `product_image` VALUES ('190', '38');
INSERT INTO `product_image` VALUES ('191', '39');
INSERT INTO `product_image` VALUES ('192', '39');
INSERT INTO `product_image` VALUES ('193', '39');
INSERT INTO `product_image` VALUES ('194', '39');
INSERT INTO `product_image` VALUES ('195', '39');
INSERT INTO `product_image` VALUES ('196', '40');
INSERT INTO `product_image` VALUES ('197', '40');
INSERT INTO `product_image` VALUES ('198', '40');
INSERT INTO `product_image` VALUES ('199', '40');
INSERT INTO `product_image` VALUES ('200', '40');
INSERT INTO `product_image` VALUES ('201', '41');
INSERT INTO `product_image` VALUES ('202', '41');
INSERT INTO `product_image` VALUES ('203', '41');
INSERT INTO `product_image` VALUES ('204', '41');
INSERT INTO `product_image` VALUES ('205', '41');
INSERT INTO `product_image` VALUES ('206', '42');
INSERT INTO `product_image` VALUES ('207', '42');
INSERT INTO `product_image` VALUES ('208', '42');
INSERT INTO `product_image` VALUES ('209', '42');
INSERT INTO `product_image` VALUES ('210', '42');
INSERT INTO `product_image` VALUES ('211', '43');
INSERT INTO `product_image` VALUES ('212', '43');
INSERT INTO `product_image` VALUES ('213', '43');
INSERT INTO `product_image` VALUES ('214', '43');
INSERT INTO `product_image` VALUES ('215', '43');
INSERT INTO `product_image` VALUES ('216', '44');
INSERT INTO `product_image` VALUES ('217', '44');
INSERT INTO `product_image` VALUES ('218', '44');
INSERT INTO `product_image` VALUES ('219', '44');
INSERT INTO `product_image` VALUES ('220', '44');
INSERT INTO `product_image` VALUES ('221', '45');
INSERT INTO `product_image` VALUES ('222', '45');
INSERT INTO `product_image` VALUES ('223', '45');
INSERT INTO `product_image` VALUES ('224', '45');
INSERT INTO `product_image` VALUES ('225', '45');
INSERT INTO `product_image` VALUES ('226', '46');
INSERT INTO `product_image` VALUES ('227', '46');
INSERT INTO `product_image` VALUES ('228', '46');
INSERT INTO `product_image` VALUES ('229', '46');
INSERT INTO `product_image` VALUES ('230', '46');
INSERT INTO `product_image` VALUES ('231', '47');
INSERT INTO `product_image` VALUES ('232', '47');
INSERT INTO `product_image` VALUES ('233', '47');
INSERT INTO `product_image` VALUES ('234', '47');
INSERT INTO `product_image` VALUES ('235', '47');
INSERT INTO `product_image` VALUES ('236', '48');
INSERT INTO `product_image` VALUES ('237', '48');
INSERT INTO `product_image` VALUES ('238', '48');
INSERT INTO `product_image` VALUES ('239', '48');
INSERT INTO `product_image` VALUES ('240', '48');
INSERT INTO `product_image` VALUES ('241', '49');
INSERT INTO `product_image` VALUES ('242', '49');
INSERT INTO `product_image` VALUES ('243', '49');
INSERT INTO `product_image` VALUES ('244', '49');
INSERT INTO `product_image` VALUES ('245', '49');
INSERT INTO `product_image` VALUES ('246', '50');
INSERT INTO `product_image` VALUES ('247', '50');
INSERT INTO `product_image` VALUES ('248', '50');
INSERT INTO `product_image` VALUES ('249', '50');
INSERT INTO `product_image` VALUES ('250', '50');
INSERT INTO `product_image` VALUES ('251', '51');
INSERT INTO `product_image` VALUES ('252', '51');
INSERT INTO `product_image` VALUES ('253', '51');
INSERT INTO `product_image` VALUES ('254', '51');
INSERT INTO `product_image` VALUES ('255', '51');
INSERT INTO `product_image` VALUES ('256', '52');
INSERT INTO `product_image` VALUES ('257', '52');
INSERT INTO `product_image` VALUES ('258', '52');
INSERT INTO `product_image` VALUES ('259', '52');
INSERT INTO `product_image` VALUES ('260', '52');
INSERT INTO `product_image` VALUES ('261', '53');
INSERT INTO `product_image` VALUES ('262', '53');
INSERT INTO `product_image` VALUES ('263', '53');
INSERT INTO `product_image` VALUES ('264', '53');
INSERT INTO `product_image` VALUES ('265', '53');
INSERT INTO `product_image` VALUES ('266', '54');
INSERT INTO `product_image` VALUES ('267', '54');
INSERT INTO `product_image` VALUES ('268', '54');
INSERT INTO `product_image` VALUES ('269', '54');
INSERT INTO `product_image` VALUES ('270', '54');
INSERT INTO `product_image` VALUES ('271', '55');
INSERT INTO `product_image` VALUES ('272', '55');
INSERT INTO `product_image` VALUES ('273', '55');
INSERT INTO `product_image` VALUES ('274', '55');
INSERT INTO `product_image` VALUES ('275', '55');
INSERT INTO `product_image` VALUES ('276', '56');
INSERT INTO `product_image` VALUES ('277', '56');
INSERT INTO `product_image` VALUES ('278', '56');
INSERT INTO `product_image` VALUES ('279', '56');
INSERT INTO `product_image` VALUES ('280', '56');
INSERT INTO `product_image` VALUES ('281', '57');
INSERT INTO `product_image` VALUES ('282', '57');
INSERT INTO `product_image` VALUES ('283', '57');
INSERT INTO `product_image` VALUES ('284', '57');
INSERT INTO `product_image` VALUES ('285', '57');
INSERT INTO `product_image` VALUES ('286', '58');
INSERT INTO `product_image` VALUES ('287', '58');
INSERT INTO `product_image` VALUES ('288', '58');
INSERT INTO `product_image` VALUES ('289', '58');
INSERT INTO `product_image` VALUES ('290', '58');
INSERT INTO `product_image` VALUES ('291', '59');
INSERT INTO `product_image` VALUES ('292', '59');
INSERT INTO `product_image` VALUES ('293', '59');
INSERT INTO `product_image` VALUES ('294', '59');
INSERT INTO `product_image` VALUES ('295', '59');
INSERT INTO `product_image` VALUES ('296', '60');
INSERT INTO `product_image` VALUES ('297', '60');
INSERT INTO `product_image` VALUES ('298', '60');
INSERT INTO `product_image` VALUES ('299', '60');
INSERT INTO `product_image` VALUES ('300', '60');
INSERT INTO `product_image` VALUES ('301', '61');
INSERT INTO `product_image` VALUES ('302', '61');
INSERT INTO `product_image` VALUES ('303', '61');
INSERT INTO `product_image` VALUES ('304', '61');
INSERT INTO `product_image` VALUES ('305', '61');

-- ----------------------------
-- Table structure for `property`
-- ----------------------------
DROP TABLE IF EXISTS `property`;
CREATE TABLE `property` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一索引id',
  `name` varchar(255) DEFAULT NULL COMMENT '属性名称',
  `category_id` int(11) NOT NULL COMMENT '对应的分类id',
  PRIMARY KEY (`id`),
  KEY `fk_property_category` (`category_id`),
  CONSTRAINT `fk_property_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of property
-- ----------------------------
INSERT INTO `property` VALUES ('1', '尺寸', '1');
INSERT INTO `property` VALUES ('2', '厚薄', '1');
INSERT INTO `property` VALUES ('3', '材质成分', '1');
INSERT INTO `property` VALUES ('4', '货号', '1');
INSERT INTO `property` VALUES ('5', '基础风格', '1');
INSERT INTO `property` VALUES ('6', '品牌', '1');

-- ----------------------------
-- Table structure for `property_value`
-- ----------------------------
DROP TABLE IF EXISTS `property_value`;
CREATE TABLE `property_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一索引id',
  `product_id` int(11) NOT NULL COMMENT '对应产品id',
  `property_id` int(11) NOT NULL COMMENT '对应属性id',
  `value` varchar(255) DEFAULT NULL COMMENT '具体的属性值',
  PRIMARY KEY (`id`),
  KEY `fk_property_value_property` (`property_id`),
  KEY `fk_property_value_product` (`product_id`),
  CONSTRAINT `fk_property_value_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `fk_property_value_property` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of property_value
-- ----------------------------
INSERT INTO `property_value` VALUES ('1', '9', '1', '38');

-- ----------------------------
-- Table structure for `referal_link`
-- ----------------------------
DROP TABLE IF EXISTS `referal_link`;
CREATE TABLE `referal_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一索引id',
  `text` varchar(255) NOT NULL COMMENT '超链显示的文字',
  `link` varchar(255) NOT NULL COMMENT '超链的地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of referal_link
-- ----------------------------
INSERT INTO `referal_link` VALUES ('1', '飞猪旅游', '#nowhere');

-- ----------------------------
-- Table structure for `review`
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一索引id',
  `content` varchar(4000) DEFAULT NULL COMMENT '评价内容',
  `user_id` int(11) NOT NULL COMMENT '对应的用户id',
  `product_id` int(11) NOT NULL COMMENT '对应的产品id',
  `createDate` datetime DEFAULT NULL COMMENT '评价时间',
  PRIMARY KEY (`id`),
  KEY `fk_review_product` (`product_id`),
  KEY `fk_review_user` (`user_id`),
  CONSTRAINT `fk_review_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `fk_review_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of review
-- ----------------------------
INSERT INTO `review` VALUES ('1', '买了2双，穿坏了再穿另外一双，hhhh.', '1', '9', '2019-07-02 15:33:31');
INSERT INTO `review` VALUES ('2', '买的第三双，hhh', '1', '9', '2019-07-02 15:34:42');
INSERT INTO `review` VALUES ('3', 'nice', '2', '13', '2019-07-03 10:22:04');
INSERT INTO `review` VALUES ('4', 'hhhhhhhhhhh', '1', '10', '2019-07-03 10:34:16');
INSERT INTO `review` VALUES ('5', 'nice lol!', '1', '59', '2019-07-03 10:41:06');
INSERT INTO `review` VALUES ('6', 'nice 好穿', '1', '20', '2019-07-04 15:33:14');
INSERT INTO `review` VALUES ('7', 'hahahhah 好穿', '1', '20', '2019-07-04 15:36:27');
INSERT INTO `review` VALUES ('8', '123', '1', '20', '2019-07-04 15:42:48');
INSERT INTO `review` VALUES ('9', '123', '1', '18', '2019-07-04 15:45:22');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一索引id',
  `name` varchar(255) NOT NULL COMMENT '用户名称',
  `password` varchar(255) NOT NULL COMMENT '用户密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'cdh', '123456');
INSERT INTO `user` VALUES ('2', 'hcy', 'hcynb');
