/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50155
Source Host           : localhost:3306
Source Database       : ssm

Target Server Type    : MYSQL
Target Server Version : 50155
File Encoding         : 65001

Date: 2018-08-13 23:09:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_id` varchar(20) DEFAULT NULL,
  `cate_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('8', 'category-001', '杂谈');
INSERT INTO `category` VALUES ('9', 'category-002', 'JAVA');
INSERT INTO `category` VALUES ('10', 'category-003', 'Net');
INSERT INTO `category` VALUES ('11', 'category-004', '机器学习');
INSERT INTO `category` VALUES ('12', 'hot-003', '深度学习');
INSERT INTO `category` VALUES ('13', 'webtrace-001', '闲言碎语');
INSERT INTO `category` VALUES ('14', 'about', '关于我');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(500) DEFAULT NULL,
  `creatdate` datetime DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  `content` text,
  `category` varchar(20) DEFAULT NULL,
  `seo_desc` varchar(500) DEFAULT NULL,
  `seo_content` varchar(500) DEFAULT NULL,
  `hits` int(11) DEFAULT '0',
  `summary` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('2', 'asdfs', '2018-08-11 16:34:54', 'fdsaf', '', '2018-08-13 22:57:00', '<p>rtertret委屈二群翁群</p>', 'webtrace-001', '师傅的说法是', '  方师傅的说法', '0', '发顺丰大是大非');
INSERT INTO `news` VALUES ('3', 'asdfs', '2018-08-11 16:35:23', 'fdsaf', '', null, '<p>rtertret</p>', 'category-002', null, null, '0', null);
INSERT INTO `news` VALUES ('9', '撒旦发生', '2018-08-12 15:03:20', '阿斯顿发射点', '', null, '<p>士大夫暗室逢灯</p>', 'hot-003', null, null, '0', '撒范德萨的');
INSERT INTO `news` VALUES ('10', '个人历程', '2018-08-12 23:44:20', '个人历程', '', '2018-08-13 19:11:05', '<p>个人历程</p>', 'webtrace-001', null, null, '3', '个人历程');
INSERT INTO `news` VALUES ('11', '关于我', '2018-08-13 20:21:53', '', '', null, '<h2>Just about me</h2><ul class=\" list-paddingleft-2\"><p>一枚正在努力进步的javaWeb程序员。专长领域为Web开发、服务器端开发，目前正在向全栈工程师进发。。。</p></ul><h2>About my blog</h2><ul class=\" list-paddingleft-2\"><p>域 名：wfyvv.com 注册于2017年02月02日</p><p>服务器：腾讯云服务器 ，于2017年02月23日完成备案</p><p>备案号：皖ICP备17002922号</p><p>本站定位为IT技术博客站，博客内容主要涉及编程语言、前端开发、服务端开发及一些热门技术等方面，同时分享实用的开发资料。</p></ul><h2>Contact me</h2><ul class=\" list-paddingleft-2\"><p><em class=\"Hui-iconfont\">&amp;#xe67b;</em>qq : *********暂不公开 : (</p><p><em class=\"Hui-iconfont\">&amp;#xe6d1;</em>git：https://git.oschina.net/wilco</p><p><em class=\"Hui-iconfont\">&amp;#xe63b;</em>email : wfyv@qq.com</p></ul>', 'about', null, null, '0', '');

-- ----------------------------
-- Table structure for `sysuser`
-- ----------------------------
DROP TABLE IF EXISTS `sysuser`;
CREATE TABLE `sysuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `user_pwd` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `sys` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysuser
-- ----------------------------
INSERT INTO `sysuser` VALUES ('1', 'admin', 'admin888', '2018-08-11 19:21:20', '0');
