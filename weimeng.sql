/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : weimeng

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2017-06-08 11:29:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tp_action
-- ----------------------------
DROP TABLE IF EXISTS `tp_action`;
CREATE TABLE `tp_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '活动的主键id',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '活动内容',
  `title` varchar(100) NOT NULL COMMENT '活动标题',
  `money` float(6,2) NOT NULL DEFAULT '0.00' COMMENT '活动金额',
  `status` char(3) NOT NULL DEFAULT '3' COMMENT '活动状态0关闭1开启3未开启',
  `stime` int(11) NOT NULL DEFAULT '0' COMMENT '活动开始时间',
  `etime` int(11) NOT NULL COMMENT '活动结束时间',
  `summoney` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '活动总金额',
  `sumperson` int(11) NOT NULL DEFAULT '0' COMMENT '活动参与总人数',
  `maxperson` int(11) NOT NULL COMMENT '最大参与人数',
  `code` char(1) NOT NULL COMMENT '验证码位数',
  `pic` varchar(70) NOT NULL DEFAULT '' COMMENT '图片路径',
  `smallpic` varchar(70) NOT NULL DEFAULT '' COMMENT '缩略图',
  `dizhi` varchar(50) NOT NULL COMMENT '活动链接地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='抽奖活动表';

-- ----------------------------
-- Records of tp_action
-- ----------------------------
INSERT INTO `tp_action` VALUES ('29', '三月，春意浓浓的日子，三月，属于女人的日子。乍暖还寒中，阳光一天天明媚起来，忙碌辛劳中，女人也一天天成熟明媚起来。紧紧跟随着时代的步伐，现代女性与旧时代女性有了许多不同之处：思想的解放，观念的更新，视野的开阔，给在生活注入了新主张新概念。在这个属于世界妇女的节日里，妇女们要不要让自己放松一下，妩媚一下，野蛮一下，奢侈一下….浪漫不浪漫全由你自己!请姐妹们尽情娱乐，在我们的节日里，抒发自己的心绪和情三月，春意浓浓的日子，三月，属于女人的日子。乍暖还寒中，阳光一天天明媚起来，忙碌辛劳中，女人也一天天成熟明媚起来。紧紧跟随着时代的步伐，现代女性与旧时代女性有了许多不同之处：思想的解放，观念的更新，视野的开阔，给在生活注入了新主张新概念。在这个属于世界妇女的节日里，妇女们要不要让自己放松一下，妩媚一下，野蛮一下，奢侈一下….浪漫不浪漫全由你自己!请姐妹们尽情娱乐，在我们的节日里，抒发自己的心绪和情', '3.8女王节，豪礼等你拿', '0.01', '0', '1488866733', '1489039533', '0.01', '1', '20', '3', './Public/Upload/2017-02-28/58b523680748c.jpg', './Public/Upload/2017-02-28/s_58b523680748c.jpg', '1');
INSERT INTO `tp_action` VALUES ('30', '少时诵诗书所所所所所', '选择制作做做做做做做做', '0.01', '1', '1488500895', '1488587297', '0.01', '1', '20', '3', './Public/Upload/2017-03-03/58b8b8a7dbbfa.jpg', './Public/Upload/2017-03-03/s_58b8b8a7dbbfa.jpg', '4018');
INSERT INTO `tp_action` VALUES ('33', '美地方来得及酸辣粉讲道理', '抽奖活动测试', '0.01', '0', '1488593234', '1488679638', '0.01', '1', '20', '3', './Public/Upload/2017-03-04/58ba263b5beb0.jpg', './Public/Upload/2017-03-04/s_58ba263b5beb0.jpg', '5582');
INSERT INTO `tp_action` VALUES ('34', '活动抽奖开始案例', '四位抽奖号码', '0.01', '1', '1488594668', '1488767471', '0.01', '1', '20', '4', './Public/Upload/2017-03-04/58ba26f378b19.jpg', './Public/Upload/2017-03-04/s_58ba26f378b19.jpg', '9708');
INSERT INTO `tp_action` VALUES ('36', '少时诵诗书所所所所所所所所所所所所所所所', '六一儿童节六一儿童节六一儿童节六一儿童节', '0.01', '0', '1488595999', '1488682402', '0.01', '1', '20', '3', './Public/Upload/2017-03-04/58ba2c2403cef.jpg', './Public/Upload/2017-03-04/s_58ba2c2403cef.jpg', '361');
INSERT INTO `tp_action` VALUES ('37', '少时诵诗书所所所所所所所所所所', '抽奖测试', '0.01', '1', '1489195276', '1489281678', '0.00', '0', '20', '3', './Public/Upload/2017-03-11/58c3511334482.jpg', './Public/Upload/2017-03-11/s_58c3511334482.jpg', '3763');
INSERT INTO `tp_action` VALUES ('38', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', '抽奖活动开始啦', '0.01', '1', '1489195872', '1489282274', '0.00', '0', '20', '3', './Public/Upload/2017-03-11/58c3536fad26f.jpg', './Public/Upload/2017-03-11/s_58c3536fad26f.jpg', '9498');
INSERT INTO `tp_action` VALUES ('39', '少时诵诗书所所所所所所所所所', '活动测试活动', '0.01', '1', '1489198341', '1489284744', '0.00', '0', '20', '3', './Public/Upload/2017-03-11/58c35d0b3c5ea.jpg', './Public/Upload/2017-03-11/s_58c35d0b3c5ea.jpg', '8150');
INSERT INTO `tp_action` VALUES ('40', 'sssssssssssssssssssssssssss', '抽奖活动开始啦', '0.01', '3', '1489199779', '1489286182', '0.00', '0', '20', '3', '', '', '5171');
INSERT INTO `tp_action` VALUES ('41', 'sssssssssssssssssssssssssss', '抽奖活动开始啦', '0.01', '1', '1489199779', '1489286182', '0.00', '0', '20', '3', './Public/Upload/2017-03-11/58c362b2cccbb.png', './Public/Upload/2017-03-11/s_58c362b2cccbb.png', '7992');
INSERT INTO `tp_action` VALUES ('42', '活动测试测试', '六一儿童节六一儿童节六一儿童节六一儿童节', '0.01', '3', '1489221381', '1489307784', '0.00', '0', '20', '3', './Public/Upload/2017-03-11/58c3b70e155e3.png', './Public/Upload/2017-03-11/s_58c3b70e155e3.png', '3445');
INSERT INTO `tp_action` VALUES ('43', '少时诵诗书所所所所所所所所所', '六一儿童节', '0.01', '3', '1489221908', '1489394710', '0.00', '0', '20', '3', './Public/Upload/2017-03-11/58c3b9246995a.jpg', './Public/Upload/2017-03-11/s_58c3b9246995a.jpg', '1261');
INSERT INTO `tp_action` VALUES ('44', '少时诵诗书所所所所所所所所', 'ssssssss', '0.01', '3', '1489221937', '1489308340', '0.00', '0', '20', '3', './Public/Upload/2017-03-11/58c3b938cb0da.jpg', './Public/Upload/2017-03-11/s_58c3b938cb0da.jpg', '6079');
INSERT INTO `tp_action` VALUES ('45', '呃呃呃呃呃呃呃呃呃鹅鹅鹅鹅鹅鹅饿', '的点点滴滴多多多多多多多多多多多多', '0.01', '3', '1489222095', '1489222095', '0.00', '0', '20', '3', './Public/Upload/2017-03-11/58c3b9d0b78cc.jpg', './Public/Upload/2017-03-11/s_58c3b9d0b78cc.jpg', '2582');
INSERT INTO `tp_action` VALUES ('46', '的点点滴滴多多多多多多多多多', '六一儿童节六一儿童节六一儿童节六一儿童节', '0.01', '3', '1489222254', '1489222256', '0.00', '0', '20', '3', './Public/Upload/2017-03-11/58c3ba76b749d.jpg', './Public/Upload/2017-03-11/s_58c3ba76b749d.jpg', '6368');
INSERT INTO `tp_action` VALUES ('47', '少时诵诗书所所所所所所所所所所所', 'ssssssssssssssss', '0.01', '3', '1489222297', '1489222297', '0.00', '0', '20', '3', './Public/Upload/2017-03-11/58c3ba9a477be.png', './Public/Upload/2017-03-11/s_58c3ba9a477be.png', '3519');
INSERT INTO `tp_action` VALUES ('48', '少时诵诗书所所所所所所所所所所所所所所', 'ssssssssssssssss', '0.01', '3', '1489222372', '1489222372', '0.00', '0', '20', '3', './Public/Upload/2017-03-11/58c3bae534d86.jpg', './Public/Upload/2017-03-11/s_58c3bae534d86.jpg', '403');
INSERT INTO `tp_action` VALUES ('49', '少时诵诗书所所所所所所所所所过', '六一儿童节六一儿童节六一儿童节六一儿童节', '0.01', '3', '1489222595', '1489222595', '0.00', '0', '20', '3', './Public/Upload/2017-03-11/58c3bbc4722a0.jpg', './Public/Upload/2017-03-11/s_58c3bbc4722a0.jpg', '2798');
INSERT INTO `tp_action` VALUES ('50', '少时诵诗书', 'ssssssssssssssss', '0.01', '1', '1489369709', '1489456111', '0.00', '0', '20', '3', './Public/Upload/2017-03-13/58c5fa742227e.jpg', './Public/Upload/2017-03-13/s_58c5fa742227e.jpg', '9647');

-- ----------------------------
-- Table structure for tp_admin
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin`;
CREATE TABLE `tp_admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL COMMENT '管理员姓名',
  `pwd` varchar(10) NOT NULL COMMENT '管理员密码',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_admin
-- ----------------------------
INSERT INTO `tp_admin` VALUES ('1', 'admin', '123456', '1488160042');
INSERT INTO `tp_admin` VALUES ('2', 'root', 'root', '1488160042');
INSERT INTO `tp_admin` VALUES ('27', '11111', '1111', '1488160042');
INSERT INTO `tp_admin` VALUES ('28', 'wwwww', '1111', '1488160117');
INSERT INTO `tp_admin` VALUES ('29', 'aaaa', '1111', '1488160166');
INSERT INTO `tp_admin` VALUES ('30', 'eeee', '1111', '1488160206');

-- ----------------------------
-- Table structure for tp_cinfo
-- ----------------------------
DROP TABLE IF EXISTS `tp_cinfo`;
CREATE TABLE `tp_cinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主建id',
  `openid` varchar(100) NOT NULL DEFAULT '0' COMMENT '微信用户的openid',
  `aid` int(11) NOT NULL COMMENT '活动id',
  `cname` varchar(20) NOT NULL COMMENT '参与的用户名',
  `number` int(8) NOT NULL DEFAULT '0' COMMENT '幸运号码',
  `picture` varchar(200) NOT NULL DEFAULT '' COMMENT '用户头像',
  `ctime` int(11) NOT NULL COMMENT '参与活动时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_cinfo
-- ----------------------------
INSERT INTO `tp_cinfo` VALUES ('48', 'oeKRRwDMYaWKn3GWzyicXSftYdkg', '29', '国伟', '546', 'http://wx.qlogo.cn/mmopen/oKrMOAxbwib6UAAmbiak9zenvDtlRf1hVFmOoJY6anIdlmYCcAheXuOMStdDV6jibdr0PR70ria3dCzfMo1QHlzcsBypLQEsuKvJ/0', '1488434229');
INSERT INTO `tp_cinfo` VALUES ('50', 'oeKRRwDMYaWKn3GWzyicXSftYdkg', '30', '国伟', '257', 'http://wx.qlogo.cn/mmopen/oKrMOAxbwib6UAAmbiak9zenvDtlRf1hVFmOoJY6anIdlmYCcAheXuOMStdDV6jibdr0PR70ria3dCzfMo1QHlzcsBypLQEsuKvJ/0', '1488503297');
INSERT INTO `tp_cinfo` VALUES ('51', 'oeKRRwDMYaWKn3GWzyicXSftYdkg', '33', '国伟', '698', 'http://wx.qlogo.cn/mmopen/oKrMOAxbwib6UAAmbiak9zenvDtlRf1hVFmOoJY6anIdlmYCcAheXuOMStdDV6jibdr0PR70ria3dCzfMo1QHlzcsBypLQEsuKvJ/0', '1488594579');
INSERT INTO `tp_cinfo` VALUES ('52', 'oeKRRwDMYaWKn3GWzyicXSftYdkg', '34', '国伟', '7724', 'http://wx.qlogo.cn/mmopen/oKrMOAxbwib6UAAmbiak9zenvDtlRf1hVFmOoJY6anIdlmYCcAheXuOMStdDV6jibdr0PR70ria3dCzfMo1QHlzcsBypLQEsuKvJ/0', '1488594778');
INSERT INTO `tp_cinfo` VALUES ('53', 'oeKRRwDMYaWKn3GWzyicXSftYdkg', '36', '国伟', '287', 'http://wx.qlogo.cn/mmopen/oKrMOAxbwib6UAAmbiak9zenvDtlRf1hVFmOoJY6anIdlmYCcAheXuOMStdDV6jibdr0PR70ria3dCzfMo1QHlzcsBypLQEsuKvJ/0', '1488596099');

-- ----------------------------
-- Table structure for tp_loginrecord
-- ----------------------------
DROP TABLE IF EXISTS `tp_loginrecord`;
CREATE TABLE `tp_loginrecord` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '登录用户id',
  `num` int(11) NOT NULL COMMENT '登录次数',
  `logintime` int(11) NOT NULL COMMENT '登录时间',
  `ip` varchar(20) NOT NULL COMMENT '登录的ip地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='登录记录表';

-- ----------------------------
-- Records of tp_loginrecord
-- ----------------------------
INSERT INTO `tp_loginrecord` VALUES ('1', '1', '10', '1491547839', '127.0.0.1');
INSERT INTO `tp_loginrecord` VALUES ('8', '32', '1', '1488184822', '192.168.20.14');
INSERT INTO `tp_loginrecord` VALUES ('9', '32', '2', '1488184941', '192.168.20.14');
INSERT INTO `tp_loginrecord` VALUES ('13', '33', '2', '1488262038', '192.168.20.14');

-- ----------------------------
-- Table structure for tp_pay
-- ----------------------------
DROP TABLE IF EXISTS `tp_pay`;
CREATE TABLE `tp_pay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) NOT NULL DEFAULT '0' COMMENT '付款用户的openid',
  `money` float(6,2) NOT NULL COMMENT '付款金额',
  `out_trade_no` int(11) NOT NULL DEFAULT '0' COMMENT '订单号',
  `time` int(11) NOT NULL COMMENT '付款时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='用户付款表';

-- ----------------------------
-- Records of tp_pay
-- ----------------------------
INSERT INTO `tp_pay` VALUES ('29', 'oeKRRwDMYaWKn3GWzyicXSftYdkg', '0.01', '2147483647', '1488425041');
INSERT INTO `tp_pay` VALUES ('30', 'oeKRRwDMYaWKn3GWzyicXSftYdkg', '0.01', '2147483647', '1488425456');
INSERT INTO `tp_pay` VALUES ('31', 'oeKRRwDMYaWKn3GWzyicXSftYdkg', '0.01', '0', '1488425470');
INSERT INTO `tp_pay` VALUES ('32', 'oeKRRwDMYaWKn3GWzyicXSftYdkg', '0.01', '2147483647', '1488425517');
INSERT INTO `tp_pay` VALUES ('33', 'oeKRRwDMYaWKn3GWzyicXSftYdkg', '0.01', '0', '1488425659');
INSERT INTO `tp_pay` VALUES ('34', 'oeKRRwDMYaWKn3GWzyicXSftYdkg', '0.01', '2147483647', '1488425674');
INSERT INTO `tp_pay` VALUES ('35', 'oeKRRwDMYaWKn3GWzyicXSftYdkg', '0.01', '0', '1488425685');
INSERT INTO `tp_pay` VALUES ('36', 'oeKRRwDMYaWKn3GWzyicXSftYdkg', '0.01', '2147483647', '1488428705');
INSERT INTO `tp_pay` VALUES ('37', 'oeKRRwDMYaWKn3GWzyicXSftYdkg', '0.01', '0', '1488428899');
INSERT INTO `tp_pay` VALUES ('38', 'oeKRRwDMYaWKn3GWzyicXSftYdkg', '0.01', '0', '1488428969');
INSERT INTO `tp_pay` VALUES ('39', 'oeKRRwDMYaWKn3GWzyicXSftYdkg', '0.01', '0', '1488429825');
INSERT INTO `tp_pay` VALUES ('40', 'oeKRRwDMYaWKn3GWzyicXSftYdkg', '0.01', '0', '1488430191');
INSERT INTO `tp_pay` VALUES ('41', 'oeKRRwDMYaWKn3GWzyicXSftYdkg', '0.01', '0', '1488430260');
INSERT INTO `tp_pay` VALUES ('42', 'oeKRRwDMYaWKn3GWzyicXSftYdkg', '0.01', '0', '1488430261');
INSERT INTO `tp_pay` VALUES ('43', 'oeKRRwDMYaWKn3GWzyicXSftYdkg', '0.01', '0', '1488430322');
INSERT INTO `tp_pay` VALUES ('44', 'oeKRRwDMYaWKn3GWzyicXSftYdkg', '0.01', '0', '1488432970');
INSERT INTO `tp_pay` VALUES ('45', 'oeKRRwDMYaWKn3GWzyicXSftYdkg', '0.01', '0', '1488434229');
INSERT INTO `tp_pay` VALUES ('46', 'oeKRRwDMYaWKn3GWzyicXSftYdkg', '0.01', '0', '1488434488');
INSERT INTO `tp_pay` VALUES ('47', 'oeKRRwDMYaWKn3GWzyicXSftYdkg', '0.01', '0', '1488503296');
INSERT INTO `tp_pay` VALUES ('48', 'oeKRRwDMYaWKn3GWzyicXSftYdkg', '0.01', '0', '1488594578');
INSERT INTO `tp_pay` VALUES ('49', 'oeKRRwDMYaWKn3GWzyicXSftYdkg', '0.01', '0', '1488594778');
INSERT INTO `tp_pay` VALUES ('50', 'oeKRRwDMYaWKn3GWzyicXSftYdkg', '0.01', '0', '1488596099');
