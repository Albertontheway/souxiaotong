/*
 Navicat MySQL Data Transfer

 Source Server         : nongfu
 Source Server Type    : MySQL
 Source Server Version : 50635
 Source Host           : 121.42.246.5:3306
 Source Schema         : gaokao

 Target Server Type    : MySQL
 Target Server Version : 50635
 File Encoding         : 65001

 Date: 06/12/2018 10:08:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gaokao_admin
-- ----------------------------
DROP TABLE IF EXISTS `gaokao_admin`;
CREATE TABLE `gaokao_admin` (
  `admin_id` int(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `admin_phone` bigint(11) unsigned DEFAULT NULL COMMENT '管理员电话',
  `admin_name` varchar(50) DEFAULT NULL COMMENT '管理员姓名',
  `admin_account` varchar(50) DEFAULT NULL COMMENT '管理员账号',
  `admin_password` varchar(50) DEFAULT NULL COMMENT '管理员密码',
  `admin_salt` varchar(20) DEFAULT NULL COMMENT '管理员标识符',
  `admin_group` tinyint(1) unsigned DEFAULT NULL COMMENT '管理员类型',
  `admin_lastlogintime` int(10) unsigned DEFAULT NULL COMMENT '最后登陆时间',
  `admin_lastloginip` varchar(20) DEFAULT NULL COMMENT '最后登陆IP',
  `admin_logincount` int(10) unsigned DEFAULT '0' COMMENT '登陆次数',
  `admin_addtime` int(10) unsigned DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `admin_account` (`admin_account`),
  KEY `admin_phone` (`admin_phone`),
  KEY `admin_name` (`admin_name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='管理员信息表';

-- ----------------------------
-- Records of gaokao_admin
-- ----------------------------
BEGIN;
INSERT INTO `gaokao_admin` VALUES (1, 13636703826, 'admin', 'admin', '5f1d7a84db00d2fce00b31a7fc73224f', '123456', 1, 1496544892, '123.138.79.12', 9, NULL);
COMMIT;

-- ----------------------------
-- Table structure for gaokao_admingroup
-- ----------------------------
DROP TABLE IF EXISTS `gaokao_admingroup`;
CREATE TABLE `gaokao_admingroup` (
  `admingroup_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '管理员组ID',
  `admingroup_name` varchar(50) DEFAULT NULL COMMENT '管理员组名称',
  `admingroup_auth` varchar(600) DEFAULT NULL COMMENT '管理员组权限',
  `admingroup_type` tinyint(1) DEFAULT '0' COMMENT '管理员组类型',
  `admingroup_order` int(4) DEFAULT '99' COMMENT '管理员组权重',
  PRIMARY KEY (`admingroup_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='管理员分组表';

-- ----------------------------
-- Records of gaokao_admingroup
-- ----------------------------
BEGIN;
INSERT INTO `gaokao_admingroup` VALUES (1, '超级管理员', '7006|7005|7004|7003|7002|7001', 9, 1);
COMMIT;

-- ----------------------------
-- Table structure for gaokao_adminlog
-- ----------------------------
DROP TABLE IF EXISTS `gaokao_adminlog`;
CREATE TABLE `gaokao_adminlog` (
  `adminlog_id` int(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员日志ID',
  `adminlog_admin` int(10) DEFAULT NULL COMMENT '管理员账号的ID',
  `adminlog_time` varchar(50) DEFAULT NULL COMMENT '管理员操作时间',
  `adminlog_log` varchar(300) DEFAULT NULL COMMENT '管理员操作',
  `adminlog_ip` varchar(50) DEFAULT NULL COMMENT '管理员操作IP',
  PRIMARY KEY (`adminlog_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COMMENT='管理员日志';

-- ----------------------------
-- Records of gaokao_adminlog
-- ----------------------------
BEGIN;
INSERT INTO `gaokao_adminlog` VALUES (45, 1, '1495842830', '成功登录!', '::1');
INSERT INTO `gaokao_adminlog` VALUES (46, 1, '1495843323', '成功登录!', '::1');
INSERT INTO `gaokao_adminlog` VALUES (47, 1, '1495931479', '成功登录!', '::1');
INSERT INTO `gaokao_adminlog` VALUES (48, 1, '1496317960', '成功登录!', '123.138.79.11');
INSERT INTO `gaokao_adminlog` VALUES (49, 1, '1496407103', '成功登录!', '123.138.79.10');
INSERT INTO `gaokao_adminlog` VALUES (50, 1, '1496408699', '成功登录!', '123.138.79.12');
INSERT INTO `gaokao_adminlog` VALUES (51, 1, '1496412418', '成功登录!', '123.138.79.11');
INSERT INTO `gaokao_adminlog` VALUES (52, 1, '1496412832', '退出登录!', '123.138.79.11');
INSERT INTO `gaokao_adminlog` VALUES (53, 1, '1496412860', '成功登录!', '123.138.79.11');
INSERT INTO `gaokao_adminlog` VALUES (54, 1, '1496544892', '成功登录!', '123.138.79.12');
COMMIT;

-- ----------------------------
-- Table structure for gaokao_data
-- ----------------------------
DROP TABLE IF EXISTS `gaokao_data`;
CREATE TABLE `gaokao_data` (
  `data_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_xuexiao` varchar(50) DEFAULT NULL COMMENT '学校名称',
  `data_nianfen` float unsigned DEFAULT NULL COMMENT '年份',
  `data_shengfen` varchar(50) DEFAULT NULL COMMENT '省份',
  `data_kelei` varchar(50) DEFAULT NULL COMMENT '科类',
  `data_zhuanye` varchar(50) DEFAULT NULL COMMENT '专业',
  `data_zhuanyezuidifen` float unsigned DEFAULT NULL COMMENT '专业最低分',
  `data_zhuanyezuigaofen` float unsigned DEFAULT NULL COMMENT '专业最高分',
  `data_zhuanyepingjunfen` float unsigned DEFAULT NULL COMMENT '专业平均分',
  `data_pici` varchar(50) DEFAULT NULL COMMENT '批次',
  PRIMARY KEY (`data_id`),
  KEY `data_xuexiao` (`data_xuexiao`),
  KEY `data_nianfen` (`data_nianfen`),
  KEY `data_shengfen` (`data_shengfen`),
  KEY `data_kelei` (`data_kelei`),
  KEY `data_zhuanye` (`data_zhuanye`),
  KEY `data_zhuanyezuidifen` (`data_zhuanyezuidifen`),
  KEY `data_zhuenyezuigaofen` (`data_zhuanyezuigaofen`),
  KEY `data_zhuanyepingjunfen` (`data_zhuanyepingjunfen`),
  KEY `data_pici` (`data_pici`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='数据库导入表';

-- ----------------------------
-- Table structure for gaokao_pay
-- ----------------------------
DROP TABLE IF EXISTS `gaokao_pay`;
CREATE TABLE `gaokao_pay` (
  `pay_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pay_openid` varchar(60) DEFAULT NULL COMMENT 'openid',
  `pay_money` decimal(10,2) unsigned DEFAULT NULL COMMENT '金额',
  `pay_shengyuan` varchar(50) DEFAULT NULL COMMENT '生源',
  `pay_danwei` varchar(50) DEFAULT NULL COMMENT '单位',
  `pay_createtime` int(10) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`pay_id`),
  KEY `pay_danwei` (`pay_danwei`),
  KEY `pay_openid` (`pay_openid`),
  KEY `pay_shengyuan` (`pay_shengyuan`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='支付记录';

-- ----------------------------
-- Records of gaokao_pay
-- ----------------------------
BEGIN;
INSERT INTO `gaokao_pay` VALUES (1, 'ffdsafdsa', 12.00, 'fd', 'fd', 154325432);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
