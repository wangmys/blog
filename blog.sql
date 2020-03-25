/*
Navicat MySQL Data Transfer

Source Server         : 44444444444
Source Server Version : 50553
Source Host           : 127.0.0.1:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2020-03-23 08:31:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', 'Dashboard', 'fa-bar-chart', '/', null, null, null);
INSERT INTO `admin_menu` VALUES ('2', '0', '2', 'Admin', 'fa-tasks', '', null, null, null);
INSERT INTO `admin_menu` VALUES ('3', '2', '3', 'Users', 'fa-users', 'auth/users', null, null, null);
INSERT INTO `admin_menu` VALUES ('4', '2', '4', 'Roles', 'fa-user', 'auth/roles', null, null, null);
INSERT INTO `admin_menu` VALUES ('5', '2', '5', 'Permission', 'fa-ban', 'auth/permissions', null, null, null);
INSERT INTO `admin_menu` VALUES ('6', '2', '6', 'Menu', 'fa-bars', 'auth/menu', null, null, null);
INSERT INTO `admin_menu` VALUES ('7', '2', '7', 'Operation log', 'fa-history', 'auth/logs', null, null, null);
INSERT INTO `admin_menu` VALUES ('9', '2', '0', '文章列表', 'fa-align-left', 'info/list', 'auth.login', '2020-03-22 13:53:59', '2020-03-22 13:53:59');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-03-22 13:23:39', '2020-03-22 13:23:39');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-22 13:23:45', '2020-03-22 13:23:45');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-22 13:23:47', '2020-03-22 13:23:47');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-22 13:23:53', '2020-03-22 13:23:53');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-22 13:24:02', '2020-03-22 13:24:02');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-22 13:24:04', '2020-03-22 13:24:04');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-22 13:24:06', '2020-03-22 13:24:06');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-22 13:24:13', '2020-03-22 13:24:13');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-22 13:24:20', '2020-03-22 13:24:20');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-22 13:25:03', '2020-03-22 13:25:03');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-22 13:25:06', '2020-03-22 13:25:06');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-22 13:25:09', '2020-03-22 13:25:09');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2020-03-22 13:26:34', '2020-03-22 13:26:34');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-22 13:27:14', '2020-03-22 13:27:14');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-22 13:27:15', '2020-03-22 13:27:15');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-03-22 13:35:40', '2020-03-22 13:35:40');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5fae\\u4fe1\\u652f\\u4ed8\",\"icon\":\"fa-cog\",\"uri\":\"wx\",\"roles\":[\"1\",null],\"permission\":\"auth.setting\",\"_token\":\"QHIJRZSKBcFZry0UXKsYKF9buoGAgx3dEJKKDWNR\"}', '2020-03-22 13:36:37', '2020-03-22 13:36:37');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-03-22 13:36:37', '2020-03-22 13:36:37');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-03-22 13:36:49', '2020-03-22 13:36:49');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-03-22 13:37:09', '2020-03-22 13:37:09');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-03-22 13:51:42', '2020-03-22 13:51:42');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/auth/menu/8', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"QHIJRZSKBcFZry0UXKsYKF9buoGAgx3dEJKKDWNR\"}', '2020-03-22 13:52:53', '2020-03-22 13:52:53');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-22 13:52:53', '2020-03-22 13:52:53');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u6587\\u7ae0\\u5217\\u8868\",\"icon\":\"fa-align-left\",\"uri\":\"info\\/list\",\"roles\":[\"1\",null],\"permission\":\"auth.login\",\"_token\":\"QHIJRZSKBcFZry0UXKsYKF9buoGAgx3dEJKKDWNR\"}', '2020-03-22 13:53:59', '2020-03-22 13:53:59');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-03-22 13:54:00', '2020-03-22 13:54:00');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-03-22 13:54:07', '2020-03-22 13:54:07');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-03-22 14:05:13', '2020-03-22 14:05:13');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 14:12:34', '2020-03-22 14:12:34');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 14:13:06', '2020-03-22 14:13:06');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 14:13:46', '2020-03-22 14:13:46');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 14:14:19', '2020-03-22 14:14:19');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 14:15:19', '2020-03-22 14:15:19');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 14:15:52', '2020-03-22 14:15:52');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 14:16:05', '2020-03-22 14:16:05');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-03-22 14:18:42', '2020-03-22 14:18:42');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-22 14:18:47', '2020-03-22 14:18:47');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:21:14', '2020-03-22 14:21:14');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:21:18', '2020-03-22 14:21:18');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:22:02', '2020-03-22 14:22:02');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:22:22', '2020-03-22 14:22:22');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:23:33', '2020-03-22 14:23:33');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:24:08', '2020-03-22 14:24:08');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:24:19', '2020-03-22 14:24:19');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:26:15', '2020-03-22 14:26:15');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:26:21', '2020-03-22 14:26:21');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:26:28', '2020-03-22 14:26:28');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:26:29', '2020-03-22 14:26:29');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:26:34', '2020-03-22 14:26:34');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:26:35', '2020-03-22 14:26:35');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:26:37', '2020-03-22 14:26:37');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:26:42', '2020-03-22 14:26:42');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin/info/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-22 14:26:45', '2020-03-22 14:26:45');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:26:45', '2020-03-22 14:26:45');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin/info/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-22 14:26:48', '2020-03-22 14:26:48');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:26:49', '2020-03-22 14:26:49');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/info/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-22 14:27:43', '2020-03-22 14:27:43');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:27:43', '2020-03-22 14:27:43');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-22 14:27:45', '2020-03-22 14:27:45');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin/info/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-22 14:27:49', '2020-03-22 14:27:49');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:27:50', '2020-03-22 14:27:50');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:36:07', '2020-03-22 14:36:07');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin/info/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-22 14:36:11', '2020-03-22 14:36:11');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:36:12', '2020-03-22 14:36:12');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-22 14:36:35', '2020-03-22 14:36:35');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-22 14:36:48', '2020-03-22 14:36:48');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:36:51', '2020-03-22 14:36:51');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin/info/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-22 14:36:54', '2020-03-22 14:36:54');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:36:55', '2020-03-22 14:36:55');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin/info/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-22 14:41:19', '2020-03-22 14:41:19');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:41:19', '2020-03-22 14:41:19');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:46:57', '2020-03-22 14:46:57');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'admin/info/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-22 14:47:00', '2020-03-22 14:47:00');
INSERT INTO `admin_operation_log` VALUES ('73', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:47:00', '2020-03-22 14:47:00');
INSERT INTO `admin_operation_log` VALUES ('74', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:47:35', '2020-03-22 14:47:35');
INSERT INTO `admin_operation_log` VALUES ('75', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:47:49', '2020-03-22 14:47:49');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:48:17', '2020-03-22 14:48:17');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:53:01', '2020-03-22 14:53:01');
INSERT INTO `admin_operation_log` VALUES ('78', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:54:16', '2020-03-22 14:54:16');
INSERT INTO `admin_operation_log` VALUES ('79', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-03-22 14:54:54', '2020-03-22 14:54:54');
INSERT INTO `admin_operation_log` VALUES ('80', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 14:55:07', '2020-03-22 14:55:07');
INSERT INTO `admin_operation_log` VALUES ('81', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 14:56:19', '2020-03-22 14:56:19');
INSERT INTO `admin_operation_log` VALUES ('82', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 14:57:04', '2020-03-22 14:57:04');
INSERT INTO `admin_operation_log` VALUES ('83', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 14:57:18', '2020-03-22 14:57:18');
INSERT INTO `admin_operation_log` VALUES ('84', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 14:57:59', '2020-03-22 14:57:59');
INSERT INTO `admin_operation_log` VALUES ('85', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 14:58:05', '2020-03-22 14:58:05');
INSERT INTO `admin_operation_log` VALUES ('86', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 14:58:29', '2020-03-22 14:58:29');
INSERT INTO `admin_operation_log` VALUES ('87', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 14:59:52', '2020-03-22 14:59:52');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 15:00:06', '2020-03-22 15:00:06');
INSERT INTO `admin_operation_log` VALUES ('89', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 15:00:41', '2020-03-22 15:00:41');
INSERT INTO `admin_operation_log` VALUES ('90', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 15:01:05', '2020-03-22 15:01:05');
INSERT INTO `admin_operation_log` VALUES ('91', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 15:01:07', '2020-03-22 15:01:07');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 15:01:33', '2020-03-22 15:01:33');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 15:01:42', '2020-03-22 15:01:42');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 15:01:52', '2020-03-22 15:01:52');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 15:02:37', '2020-03-22 15:02:37');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 15:03:04', '2020-03-22 15:03:04');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 15:03:30', '2020-03-22 15:03:30');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 15:03:41', '2020-03-22 15:03:41');
INSERT INTO `admin_operation_log` VALUES ('99', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 15:05:26', '2020-03-22 15:05:26');
INSERT INTO `admin_operation_log` VALUES ('100', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 15:06:04', '2020-03-22 15:06:04');
INSERT INTO `admin_operation_log` VALUES ('101', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 15:06:15', '2020-03-22 15:06:15');
INSERT INTO `admin_operation_log` VALUES ('102', '1', 'admin/info/list', 'GET', '127.0.0.1', '[]', '2020-03-22 15:06:27', '2020-03-22 15:06:27');
INSERT INTO `admin_operation_log` VALUES ('103', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-22 15:50:00', '2020-03-22 15:50:00');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2020-03-22 13:23:00', '2020-03-22 13:23:00');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '9', null, null);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$pUSgxab2lSxQ8RAZ6Im37O2YcnZ0af7LsR.lGIzEHDK76o.BIE1l.', 'Administrator', null, 'ZtLdzUPX9z1EJ6jC08wsv6YtyBFMxGcsFLU5m1p89OF7KplEjDFkO51DznQ0', '2020-03-22 13:23:00', '2020-03-22 13:23:00');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for cates
-- ----------------------------
DROP TABLE IF EXISTS `cates`;
CREATE TABLE `cates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '分类名称',
  `sort` int(10) NOT NULL DEFAULT '0' COMMENT '分类排序',
  `createtime` int(11) NOT NULL COMMENT '分类创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cates
-- ----------------------------

-- ----------------------------
-- Table structure for infos
-- ----------------------------
DROP TABLE IF EXISTS `infos`;
CREATE TABLE `infos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uid` int(10) NOT NULL DEFAULT '0' COMMENT '发布者ID',
  `content` text NOT NULL COMMENT '文章内容',
  `reading` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '阅读人数',
  `sort` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  `createtime` int(11) NOT NULL COMMENT '文章发布时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of infos
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_04_173148_create_admin_tables', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
