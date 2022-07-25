/*
 Navicat Premium Data Transfer

 Source Server         : Local Mysql
 Source Server Type    : MySQL
 Source Server Version : 50738
 Source Host           : localhost:3306
 Source Schema         : ecommerce

 Target Server Type    : MySQL
 Target Server Version : 50738
 File Encoding         : 65001

 Date: 25/07/2022 11:12:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (8, 0, 0, 'Бренды', 'fa-apple', '/brands', NULL, '2022-05-24 10:59:19', '2022-05-24 10:59:19');
INSERT INTO `admin_menu` VALUES (9, 0, 0, 'Категории', 'fa-align-left', '/categories', NULL, '2022-05-24 11:23:02', '2022-05-24 11:23:02');
INSERT INTO `admin_menu` VALUES (10, 0, 0, 'Продукты', 'fa-shopping-cart', '/products', NULL, '2022-05-24 11:31:59', '2022-05-24 11:32:18');
INSERT INTO `admin_menu` VALUES (11, 0, 0, 'Акции', 'fa-dollar', '/promotions', NULL, '2022-06-29 08:28:07', '2022-06-29 08:28:07');
INSERT INTO `admin_menu` VALUES (12, 0, 0, 'Сервисы', 'fa-user', '/services', NULL, '2022-06-30 04:39:40', '2022-06-30 04:39:40');
INSERT INTO `admin_menu` VALUES (13, 0, 0, 'Баннеры', 'fa-image', '/banners', NULL, '2022-07-04 09:47:21', '2022-07-04 10:33:04');
INSERT INTO `admin_menu` VALUES (14, 0, 0, 'Публикации', 'fa-newspaper-o', 'posts', NULL, '2022-07-04 10:51:41', '2022-07-04 10:51:41');
INSERT INTO `admin_menu` VALUES (15, 0, 0, 'Заказы', 'fa-truck', '/orders', NULL, '2022-07-20 10:13:47', '2022-07-20 10:13:47');
INSERT INTO `admin_menu` VALUES (16, 0, 0, 'Настройки', 'fa-cog', '/settings', NULL, '2022-07-21 10:40:46', '2022-07-21 10:40:46');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2225 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-05-24 10:42:56', '2022-05-24 10:42:56');
INSERT INTO `admin_operation_log` VALUES (2, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-24 10:45:10', '2022-05-24 10:45:10');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-24 10:57:31', '2022-05-24 10:57:31');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-24 10:58:50', '2022-05-24 10:58:50');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u0411\\u0440\\u0435\\u043d\\u0434\\u044b\",\"icon\":\"fa-apple\",\"uri\":\"\\/brands\",\"roles\":[null],\"permission\":null,\"_token\":\"shm7P0DRnXXmtgHrwfyBOOGo7PHIC2s2g9bQwFjw\"}', '2022-05-24 10:59:19', '2022-05-24 10:59:19');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-05-24 10:59:19', '2022-05-24 10:59:19');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-05-24 10:59:21', '2022-05-24 10:59:21');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-24 10:59:23', '2022-05-24 10:59:23');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin/brands/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-24 10:59:25', '2022-05-24 10:59:25');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/brands/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:01:08', '2022-05-24 11:01:08');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/brands/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:01:14', '2022-05-24 11:01:14');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin/brands', 'POST', '127.0.0.1', '{\"name\":\"Apple\",\"_token\":\"shm7P0DRnXXmtgHrwfyBOOGo7PHIC2s2g9bQwFjw\",\"after-save\":\"1\"}', '2022-05-24 11:01:31', '2022-05-24 11:01:31');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/brands/1/edit', 'GET', '127.0.0.1', '[]', '2022-05-24 11:01:32', '2022-05-24 11:01:32');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/brands/1', 'PUT', '127.0.0.1', '{\"name\":\"Apple\",\"_token\":\"shm7P0DRnXXmtgHrwfyBOOGo7PHIC2s2g9bQwFjw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/brands\\/create\"}', '2022-05-24 11:01:48', '2022-05-24 11:01:48');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin/brands/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:01:49', '2022-05-24 11:01:49');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-24 11:01:55', '2022-05-24 11:01:55');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin/brands/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-24 11:01:57', '2022-05-24 11:01:57');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin/brands/1/edit', 'GET', '127.0.0.1', '[]', '2022-05-24 11:04:06', '2022-05-24 11:04:06');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin/brands/1/edit', 'GET', '127.0.0.1', '[]', '2022-05-24 11:04:09', '2022-05-24 11:04:09');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-24 11:04:39', '2022-05-24 11:04:39');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin/brands/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-24 11:04:43', '2022-05-24 11:04:43');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin/brands/1', 'PUT', '127.0.0.1', '{\"name\":\"Apple\",\"_token\":\"shm7P0DRnXXmtgHrwfyBOOGo7PHIC2s2g9bQwFjw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/brands\"}', '2022-05-24 11:04:55', '2022-05-24 11:04:55');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin/brands', 'GET', '127.0.0.1', '[]', '2022-05-24 11:04:55', '2022-05-24 11:04:55');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin/brands', 'GET', '127.0.0.1', '[]', '2022-05-24 11:20:02', '2022-05-24 11:20:02');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin/brands', 'GET', '127.0.0.1', '[]', '2022-05-24 11:20:10', '2022-05-24 11:20:10');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin/brands', 'GET', '127.0.0.1', '[]', '2022-05-24 11:20:45', '2022-05-24 11:20:45');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin/brands', 'GET', '127.0.0.1', '[]', '2022-05-24 11:20:51', '2022-05-24 11:20:51');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin/brands', 'GET', '127.0.0.1', '[]', '2022-05-24 11:21:09', '2022-05-24 11:21:09');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin/brands/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-24 11:21:21', '2022-05-24 11:21:21');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin/brands/1', 'PUT', '127.0.0.1', '{\"name\":\"Apple Updated\",\"_token\":\"shm7P0DRnXXmtgHrwfyBOOGo7PHIC2s2g9bQwFjw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/brands\"}', '2022-05-24 11:21:26', '2022-05-24 11:21:26');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin/brands', 'GET', '127.0.0.1', '[]', '2022-05-24 11:21:26', '2022-05-24 11:21:26');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin/brands/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-24 11:21:29', '2022-05-24 11:21:29');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin/brands/1', 'PUT', '127.0.0.1', '{\"name\":\"Apple\",\"_token\":\"shm7P0DRnXXmtgHrwfyBOOGo7PHIC2s2g9bQwFjw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/brands\"}', '2022-05-24 11:21:32', '2022-05-24 11:21:32');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin/brands', 'GET', '127.0.0.1', '[]', '2022-05-24 11:21:32', '2022-05-24 11:21:32');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin/brands/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-24 11:21:44', '2022-05-24 11:21:44');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-24 11:21:46', '2022-05-24 11:21:46');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-24 11:21:47', '2022-05-24 11:21:47');
INSERT INTO `admin_operation_log` VALUES (38, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-24 11:22:29', '2022-05-24 11:22:29');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"icon\":\"fa-align-left\",\"uri\":\"\\/categories\",\"roles\":[null],\"permission\":null,\"_token\":\"shm7P0DRnXXmtgHrwfyBOOGo7PHIC2s2g9bQwFjw\"}', '2022-05-24 11:23:02', '2022-05-24 11:23:02');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-05-24 11:23:02', '2022-05-24 11:23:02');
INSERT INTO `admin_operation_log` VALUES (41, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-05-24 11:23:03', '2022-05-24 11:23:03');
INSERT INTO `admin_operation_log` VALUES (42, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-24 11:23:06', '2022-05-24 11:23:06');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-24 11:23:10', '2022-05-24 11:23:10');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-24 11:23:11', '2022-05-24 11:23:11');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:24:10', '2022-05-24 11:24:10');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u044b \\u0438 \\u0430\\u043a\\u0441\\u0435\\u0441\\u0441\\u0443\\u0430\\u0440\\u044b\",\"parent_id\":null,\"_token\":\"shm7P0DRnXXmtgHrwfyBOOGo7PHIC2s2g9bQwFjw\"}', '2022-05-24 11:26:51', '2022-05-24 11:26:51');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-05-24 11:26:51', '2022-05-24 11:26:51');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-05-24 11:27:08', '2022-05-24 11:27:08');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-24 11:27:50', '2022-05-24 11:27:50');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-24 11:27:54', '2022-05-24 11:27:54');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-24 11:28:18', '2022-05-24 11:28:18');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-24 11:28:20', '2022-05-24 11:28:20');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d\\u044b\",\"parent_id\":\"1\",\"_token\":\"shm7P0DRnXXmtgHrwfyBOOGo7PHIC2s2g9bQwFjw\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/categories\"}', '2022-05-24 11:28:36', '2022-05-24 11:28:36');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-05-24 11:28:36', '2022-05-24 11:28:36');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-05-24 11:29:39', '2022-05-24 11:29:39');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-05-24 11:29:51', '2022-05-24 11:29:51');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-24 11:31:41', '2022-05-24 11:31:41');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u041f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u044b\",\"icon\":\"fa-bars\",\"uri\":\"\\/products\",\"roles\":[null],\"permission\":null,\"_token\":\"shm7P0DRnXXmtgHrwfyBOOGo7PHIC2s2g9bQwFjw\"}', '2022-05-24 11:31:59', '2022-05-24 11:31:59');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-05-24 11:31:59', '2022-05-24 11:31:59');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-05-24 11:32:00', '2022-05-24 11:32:00');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-24 11:32:02', '2022-05-24 11:32:02');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-24 11:32:05', '2022-05-24 11:32:05');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-24 11:32:08', '2022-05-24 11:32:08');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u041f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u044b\",\"icon\":\"fa-shopping-cart\",\"uri\":\"\\/products\",\"roles\":[null],\"permission\":null,\"_token\":\"shm7P0DRnXXmtgHrwfyBOOGo7PHIC2s2g9bQwFjw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2022-05-24 11:32:18', '2022-05-24 11:32:18');
INSERT INTO `admin_operation_log` VALUES (65, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-05-24 11:32:18', '2022-05-24 11:32:18');
INSERT INTO `admin_operation_log` VALUES (66, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-05-24 11:32:21', '2022-05-24 11:32:21');
INSERT INTO `admin_operation_log` VALUES (67, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-24 11:32:24', '2022-05-24 11:32:24');
INSERT INTO `admin_operation_log` VALUES (68, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-24 11:32:26', '2022-05-24 11:32:26');
INSERT INTO `admin_operation_log` VALUES (69, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:33:21', '2022-05-24 11:33:21');
INSERT INTO `admin_operation_log` VALUES (70, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:34:31', '2022-05-24 11:34:31');
INSERT INTO `admin_operation_log` VALUES (71, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:41:02', '2022-05-24 11:41:02');
INSERT INTO `admin_operation_log` VALUES (72, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:41:44', '2022-05-24 11:41:44');
INSERT INTO `admin_operation_log` VALUES (73, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:41:59', '2022-05-24 11:41:59');
INSERT INTO `admin_operation_log` VALUES (74, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:42:09', '2022-05-24 11:42:09');
INSERT INTO `admin_operation_log` VALUES (75, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:42:14', '2022-05-24 11:42:14');
INSERT INTO `admin_operation_log` VALUES (76, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:42:20', '2022-05-24 11:42:20');
INSERT INTO `admin_operation_log` VALUES (77, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:42:56', '2022-05-24 11:42:56');
INSERT INTO `admin_operation_log` VALUES (78, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:44:17', '2022-05-24 11:44:17');
INSERT INTO `admin_operation_log` VALUES (79, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:47:35', '2022-05-24 11:47:35');
INSERT INTO `admin_operation_log` VALUES (80, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:47:54', '2022-05-24 11:47:54');
INSERT INTO `admin_operation_log` VALUES (81, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:48:01', '2022-05-24 11:48:01');
INSERT INTO `admin_operation_log` VALUES (82, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:49:54', '2022-05-24 11:49:54');
INSERT INTO `admin_operation_log` VALUES (83, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:50:20', '2022-05-24 11:50:20');
INSERT INTO `admin_operation_log` VALUES (84, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:50:48', '2022-05-24 11:50:48');
INSERT INTO `admin_operation_log` VALUES (85, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:51:06', '2022-05-24 11:51:06');
INSERT INTO `admin_operation_log` VALUES (86, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:51:16', '2022-05-24 11:51:16');
INSERT INTO `admin_operation_log` VALUES (87, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:51:20', '2022-05-24 11:51:20');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:51:32', '2022-05-24 11:51:32');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:51:38', '2022-05-24 11:51:38');
INSERT INTO `admin_operation_log` VALUES (90, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:51:42', '2022-05-24 11:51:42');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:51:52', '2022-05-24 11:51:52');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:52:12', '2022-05-24 11:52:12');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:52:15', '2022-05-24 11:52:15');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:52:45', '2022-05-24 11:52:45');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:52:52', '2022-05-24 11:52:52');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:55:16', '2022-05-24 11:55:16');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:55:27', '2022-05-24 11:55:27');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:55:53', '2022-05-24 11:55:53');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:56:28', '2022-05-24 11:56:28');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:56:31', '2022-05-24 11:56:31');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:56:46', '2022-05-24 11:56:46');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:56:47', '2022-05-24 11:56:47');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:57:37', '2022-05-24 11:57:37');
INSERT INTO `admin_operation_log` VALUES (104, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:57:51', '2022-05-24 11:57:51');
INSERT INTO `admin_operation_log` VALUES (105, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:57:58', '2022-05-24 11:57:58');
INSERT INTO `admin_operation_log` VALUES (106, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:58:56', '2022-05-24 11:58:56');
INSERT INTO `admin_operation_log` VALUES (107, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 11:59:53', '2022-05-24 11:59:53');
INSERT INTO `admin_operation_log` VALUES (108, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 12:01:16', '2022-05-24 12:01:16');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 12:01:34', '2022-05-24 12:01:34');
INSERT INTO `admin_operation_log` VALUES (110, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 12:01:51', '2022-05-24 12:01:51');
INSERT INTO `admin_operation_log` VALUES (111, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 12:01:59', '2022-05-24 12:01:59');
INSERT INTO `admin_operation_log` VALUES (112, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 12:02:47', '2022-05-24 12:02:47');
INSERT INTO `admin_operation_log` VALUES (113, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 12:03:00', '2022-05-24 12:03:00');
INSERT INTO `admin_operation_log` VALUES (114, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 12:03:09', '2022-05-24 12:03:09');
INSERT INTO `admin_operation_log` VALUES (115, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 12:03:13', '2022-05-24 12:03:13');
INSERT INTO `admin_operation_log` VALUES (116, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 12:03:19', '2022-05-24 12:03:19');
INSERT INTO `admin_operation_log` VALUES (117, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 12:03:21', '2022-05-24 12:03:21');
INSERT INTO `admin_operation_log` VALUES (118, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 12:03:34', '2022-05-24 12:03:34');
INSERT INTO `admin_operation_log` VALUES (119, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 12:03:36', '2022-05-24 12:03:36');
INSERT INTO `admin_operation_log` VALUES (120, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 12:03:40', '2022-05-24 12:03:40');
INSERT INTO `admin_operation_log` VALUES (121, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 12:03:52', '2022-05-24 12:03:52');
INSERT INTO `admin_operation_log` VALUES (122, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 12:04:01', '2022-05-24 12:04:01');
INSERT INTO `admin_operation_log` VALUES (123, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 12:04:21', '2022-05-24 12:04:21');
INSERT INTO `admin_operation_log` VALUES (124, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 12:04:29', '2022-05-24 12:04:29');
INSERT INTO `admin_operation_log` VALUES (125, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 12:04:37', '2022-05-24 12:04:37');
INSERT INTO `admin_operation_log` VALUES (126, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 12:05:45', '2022-05-24 12:05:45');
INSERT INTO `admin_operation_log` VALUES (127, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 12:05:57', '2022-05-24 12:05:57');
INSERT INTO `admin_operation_log` VALUES (128, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 12:06:19', '2022-05-24 12:06:19');
INSERT INTO `admin_operation_log` VALUES (129, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 12:06:30', '2022-05-24 12:06:30');
INSERT INTO `admin_operation_log` VALUES (130, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 12:06:50', '2022-05-24 12:06:50');
INSERT INTO `admin_operation_log` VALUES (131, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 12:07:02', '2022-05-24 12:07:02');
INSERT INTO `admin_operation_log` VALUES (132, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 12:08:07', '2022-05-24 12:08:07');
INSERT INTO `admin_operation_log` VALUES (133, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 12:09:11', '2022-05-24 12:09:11');
INSERT INTO `admin_operation_log` VALUES (134, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-24 12:09:46', '2022-05-24 12:09:46');
INSERT INTO `admin_operation_log` VALUES (135, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-05-26 07:21:21', '2022-05-26 07:21:21');
INSERT INTO `admin_operation_log` VALUES (136, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 07:21:26', '2022-05-26 07:21:26');
INSERT INTO `admin_operation_log` VALUES (137, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 07:21:28', '2022-05-26 07:21:28');
INSERT INTO `admin_operation_log` VALUES (138, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-26 07:23:57', '2022-05-26 07:23:57');
INSERT INTO `admin_operation_log` VALUES (139, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-26 07:24:24', '2022-05-26 07:24:24');
INSERT INTO `admin_operation_log` VALUES (140, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-26 07:24:53', '2022-05-26 07:24:53');
INSERT INTO `admin_operation_log` VALUES (141, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-26 07:26:38', '2022-05-26 07:26:38');
INSERT INTO `admin_operation_log` VALUES (142, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-26 07:26:44', '2022-05-26 07:26:44');
INSERT INTO `admin_operation_log` VALUES (143, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-26 07:27:02', '2022-05-26 07:27:02');
INSERT INTO `admin_operation_log` VALUES (144, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-26 07:30:22', '2022-05-26 07:30:22');
INSERT INTO `admin_operation_log` VALUES (145, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-26 07:31:38', '2022-05-26 07:31:38');
INSERT INTO `admin_operation_log` VALUES (146, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-26 07:32:11', '2022-05-26 07:32:11');
INSERT INTO `admin_operation_log` VALUES (147, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-26 07:32:23', '2022-05-26 07:32:23');
INSERT INTO `admin_operation_log` VALUES (148, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-26 07:32:25', '2022-05-26 07:32:25');
INSERT INTO `admin_operation_log` VALUES (149, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-26 07:32:56', '2022-05-26 07:32:56');
INSERT INTO `admin_operation_log` VALUES (150, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-26 07:33:17', '2022-05-26 07:33:17');
INSERT INTO `admin_operation_log` VALUES (151, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-26 07:34:24', '2022-05-26 07:34:24');
INSERT INTO `admin_operation_log` VALUES (152, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-26 07:35:27', '2022-05-26 07:35:27');
INSERT INTO `admin_operation_log` VALUES (153, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-26 07:37:52', '2022-05-26 07:37:52');
INSERT INTO `admin_operation_log` VALUES (154, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-26 07:42:48', '2022-05-26 07:42:48');
INSERT INTO `admin_operation_log` VALUES (155, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"asdasd\",\"category_id\":\"1\",\"subcategory_id\":\"1\",\"brand_id\":\"1\",\"type\":\"0\",\"price\":null,\"in_stock\":\"0\",\"is_discount\":\"0\",\"tags\":[null],\"status\":\"on\",\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\",\"after-save\":\"1\"}', '2022-05-26 07:43:09', '2022-05-26 07:43:09');
INSERT INTO `admin_operation_log` VALUES (156, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-26 07:43:11', '2022-05-26 07:43:11');
INSERT INTO `admin_operation_log` VALUES (157, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-26 07:44:22', '2022-05-26 07:44:22');
INSERT INTO `admin_operation_log` VALUES (158, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-26 07:44:27', '2022-05-26 07:44:27');
INSERT INTO `admin_operation_log` VALUES (159, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-26 07:45:02', '2022-05-26 07:45:02');
INSERT INTO `admin_operation_log` VALUES (160, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"admin\",\"category_id\":\"1\",\"subcategory_id\":\"2\",\"brand_id\":\"1\",\"type\":\"0\",\"price\":null,\"in_stock\":\"0\",\"is_discount\":\"0\",\"tags\":[null],\"status\":\"on\",\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\"}', '2022-05-26 07:45:20', '2022-05-26 07:45:20');
INSERT INTO `admin_operation_log` VALUES (161, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"admin\",\"category_id\":\"1\",\"subcategory_id\":\"2\",\"brand_id\":\"1\",\"type\":\"0\",\"price\":null,\"in_stock\":\"0\",\"is_discount\":\"0\",\"tags\":[null],\"status\":\"on\",\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\"}', '2022-05-26 07:45:28', '2022-05-26 07:45:28');
INSERT INTO `admin_operation_log` VALUES (162, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"admin\",\"category_id\":\"1\",\"subcategory_id\":\"2\",\"brand_id\":\"1\",\"type\":\"0\",\"price\":null,\"in_stock\":\"0\",\"is_discount\":\"0\",\"tags\":[null],\"status\":\"on\",\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\"}', '2022-05-26 07:45:35', '2022-05-26 07:45:35');
INSERT INTO `admin_operation_log` VALUES (163, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"admin\",\"category_id\":\"1\",\"subcategory_id\":\"2\",\"brand_id\":\"1\",\"type\":\"0\",\"price\":null,\"in_stock\":\"0\",\"is_discount\":\"0\",\"tags\":[null],\"status\":\"on\",\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\"}', '2022-05-26 07:46:07', '2022-05-26 07:46:07');
INSERT INTO `admin_operation_log` VALUES (164, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-05-26 07:46:07', '2022-05-26 07:46:07');
INSERT INTO `admin_operation_log` VALUES (165, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 07:47:13', '2022-05-26 07:47:13');
INSERT INTO `admin_operation_log` VALUES (166, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"admin\",\"category_id\":\"1\",\"subcategory_id\":\"1\",\"brand_id\":\"1\",\"type\":\"0\",\"price\":null,\"in_stock\":\"0\",\"is_discount\":\"0\",\"tags\":[null],\"status\":\"on\",\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2022-05-26 07:47:50', '2022-05-26 07:47:50');
INSERT INTO `admin_operation_log` VALUES (167, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-26 07:47:51', '2022-05-26 07:47:51');
INSERT INTO `admin_operation_log` VALUES (168, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"admin\",\"category_id\":\"1\",\"subcategory_id\":\"1\",\"brand_id\":\"1\",\"type\":\"0\",\"price\":null,\"in_stock\":\"0\",\"is_discount\":\"0\",\"tags\":[null],\"status\":\"on\",\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\"}', '2022-05-26 07:48:04', '2022-05-26 07:48:04');
INSERT INTO `admin_operation_log` VALUES (169, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-05-26 07:48:04', '2022-05-26 07:48:04');
INSERT INTO `admin_operation_log` VALUES (170, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 07:49:08', '2022-05-26 07:49:08');
INSERT INTO `admin_operation_log` VALUES (171, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"admin\",\"category_id\":\"1\",\"subcategory_id\":\"1\",\"brand_id\":\"1\",\"type\":\"0\",\"price\":null,\"in_stock\":\"0\",\"is_discount\":\"0\",\"tags\":[null],\"status\":\"on\",\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2022-05-26 07:49:19', '2022-05-26 07:49:19');
INSERT INTO `admin_operation_log` VALUES (172, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-05-26 07:49:21', '2022-05-26 07:49:21');
INSERT INTO `admin_operation_log` VALUES (173, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 07:50:23', '2022-05-26 07:50:23');
INSERT INTO `admin_operation_log` VALUES (174, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 07:50:35', '2022-05-26 07:50:35');
INSERT INTO `admin_operation_log` VALUES (175, 1, 'admin/products/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 07:50:36', '2022-05-26 07:50:36');
INSERT INTO `admin_operation_log` VALUES (176, 1, 'admin/products/4', 'PUT', '127.0.0.1', '{\"key\":\"1\",\"attachments\":\"_file_del_\",\"_file_del_\":null,\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\",\"_method\":\"PUT\"}', '2022-05-26 07:50:41', '2022-05-26 07:50:41');
INSERT INTO `admin_operation_log` VALUES (177, 1, 'admin/products/4/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 07:51:04', '2022-05-26 07:51:04');
INSERT INTO `admin_operation_log` VALUES (178, 1, 'admin/products/4/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 07:52:09', '2022-05-26 07:52:09');
INSERT INTO `admin_operation_log` VALUES (179, 1, 'admin/products/4/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 07:52:16', '2022-05-26 07:52:16');
INSERT INTO `admin_operation_log` VALUES (180, 1, 'admin/products/4', 'PUT', '127.0.0.1', '{\"key\":\"2\",\"attachments\":\"_file_del_\",\"_file_del_\":null,\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\",\"_method\":\"PUT\"}', '2022-05-26 07:53:18', '2022-05-26 07:53:18');
INSERT INTO `admin_operation_log` VALUES (181, 1, 'admin/products/4/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 07:53:25', '2022-05-26 07:53:25');
INSERT INTO `admin_operation_log` VALUES (182, 1, 'admin/products/4/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 07:53:31', '2022-05-26 07:53:31');
INSERT INTO `admin_operation_log` VALUES (183, 1, 'admin/products/4', 'PUT', '127.0.0.1', '{\"name\":\"admin\",\"category_id\":\"1\",\"subcategory_id\":\"1\",\"brand_id\":\"1\",\"type\":\"0\",\"price\":\"0.00\",\"in_stock\":\"0\",\"is_discount\":\"0\",\"tags\":[null],\"status\":\"on\",\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2022-05-26 07:53:49', '2022-05-26 07:53:49');
INSERT INTO `admin_operation_log` VALUES (184, 1, 'admin/products/4/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 07:53:49', '2022-05-26 07:53:49');
INSERT INTO `admin_operation_log` VALUES (185, 1, 'admin/products/4', 'PUT', '127.0.0.1', '{\"key\":\"8\",\"attachments\":\"_file_del_\",\"_file_del_\":null,\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\",\"_method\":\"PUT\"}', '2022-05-26 07:53:55', '2022-05-26 07:53:55');
INSERT INTO `admin_operation_log` VALUES (186, 1, 'admin/products/4', 'PUT', '127.0.0.1', '{\"key\":\"7\",\"attachments\":\"_file_del_\",\"_file_del_\":null,\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\",\"_method\":\"PUT\"}', '2022-05-26 07:54:00', '2022-05-26 07:54:00');
INSERT INTO `admin_operation_log` VALUES (187, 1, 'admin/products/4', 'PUT', '127.0.0.1', '{\"key\":\"3\",\"attachments\":\"_file_del_\",\"_file_del_\":null,\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\",\"_method\":\"PUT\"}', '2022-05-26 07:54:02', '2022-05-26 07:54:02');
INSERT INTO `admin_operation_log` VALUES (188, 1, 'admin/products/4/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 07:55:30', '2022-05-26 07:55:30');
INSERT INTO `admin_operation_log` VALUES (189, 1, 'admin/products/4/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 07:55:31', '2022-05-26 07:55:31');
INSERT INTO `admin_operation_log` VALUES (190, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 07:55:35', '2022-05-26 07:55:35');
INSERT INTO `admin_operation_log` VALUES (191, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 07:55:36', '2022-05-26 07:55:36');
INSERT INTO `admin_operation_log` VALUES (192, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-26 07:56:42', '2022-05-26 07:56:42');
INSERT INTO `admin_operation_log` VALUES (193, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 07:56:50', '2022-05-26 07:56:50');
INSERT INTO `admin_operation_log` VALUES (194, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 07:56:52', '2022-05-26 07:56:52');
INSERT INTO `admin_operation_log` VALUES (195, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"name\":\"admin\",\"category_id\":\"1\",\"subcategory_id\":\"1\",\"brand_id\":\"1\",\"type\":\"0\",\"price\":\"0.00\",\"in_stock\":\"0\",\"_file_sort_\":{\"attachments\":null},\"is_discount\":\"0\",\"tags\":[null],\"status\":\"on\",\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2022-05-26 07:56:59', '2022-05-26 07:56:59');
INSERT INTO `admin_operation_log` VALUES (196, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 07:56:59', '2022-05-26 07:56:59');
INSERT INTO `admin_operation_log` VALUES (197, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 07:59:27', '2022-05-26 07:59:27');
INSERT INTO `admin_operation_log` VALUES (198, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 07:59:33', '2022-05-26 07:59:33');
INSERT INTO `admin_operation_log` VALUES (199, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 07:59:38', '2022-05-26 07:59:38');
INSERT INTO `admin_operation_log` VALUES (200, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 07:59:49', '2022-05-26 07:59:49');
INSERT INTO `admin_operation_log` VALUES (201, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:00:15', '2022-05-26 08:00:15');
INSERT INTO `admin_operation_log` VALUES (202, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:00:44', '2022-05-26 08:00:44');
INSERT INTO `admin_operation_log` VALUES (203, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:04:01', '2022-05-26 08:04:01');
INSERT INTO `admin_operation_log` VALUES (204, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:04:49', '2022-05-26 08:04:49');
INSERT INTO `admin_operation_log` VALUES (205, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:09:58', '2022-05-26 08:09:58');
INSERT INTO `admin_operation_log` VALUES (206, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:14:49', '2022-05-26 08:14:49');
INSERT INTO `admin_operation_log` VALUES (207, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:15:01', '2022-05-26 08:15:01');
INSERT INTO `admin_operation_log` VALUES (208, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:15:21', '2022-05-26 08:15:21');
INSERT INTO `admin_operation_log` VALUES (209, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:18:03', '2022-05-26 08:18:03');
INSERT INTO `admin_operation_log` VALUES (210, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:18:35', '2022-05-26 08:18:35');
INSERT INTO `admin_operation_log` VALUES (211, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:19:10', '2022-05-26 08:19:10');
INSERT INTO `admin_operation_log` VALUES (212, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:19:44', '2022-05-26 08:19:44');
INSERT INTO `admin_operation_log` VALUES (213, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:20:43', '2022-05-26 08:20:43');
INSERT INTO `admin_operation_log` VALUES (214, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"name\":\"admin\",\"category_id\":\"1\",\"subcategory_id\":\"1\",\"brand_id\":\"1\",\"type\":\"0\",\"price\":\"0.00\",\"in_stock\":\"0\",\"_file_sort_\":{\"attachments\":null},\"is_discount\":\"0\",\"tags\":[null],\"status\":\"on\",\"options\":{\"new_1\":{\"attribute_id\":\"1\",\"value\":\"Yellow\",\"price\":\"2.00\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"attribute_id\":\"1\",\"value\":\"Blue\",\"price\":\"120000.00\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\",\"_method\":\"PUT\"}', '2022-05-26 08:22:43', '2022-05-26 08:22:43');
INSERT INTO `admin_operation_log` VALUES (215, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:22:44', '2022-05-26 08:22:44');
INSERT INTO `admin_operation_log` VALUES (216, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"name\":\"admin\",\"category_id\":\"1\",\"subcategory_id\":\"1\",\"brand_id\":\"1\",\"type\":\"0\",\"price\":\"0.00\",\"in_stock\":\"0\",\"_file_sort_\":{\"attachments\":null},\"is_discount\":\"0\",\"tags\":[null],\"status\":\"on\",\"options\":{\"new___LA_KEY__\":{\"attribute_id\":\"1\",\"value\":\"Blue\",\"price\":\"120000.00\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\",\"_method\":\"PUT\"}', '2022-05-26 08:23:13', '2022-05-26 08:23:13');
INSERT INTO `admin_operation_log` VALUES (217, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-05-26 08:23:13', '2022-05-26 08:23:13');
INSERT INTO `admin_operation_log` VALUES (218, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 08:23:27', '2022-05-26 08:23:27');
INSERT INTO `admin_operation_log` VALUES (219, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-26 08:23:53', '2022-05-26 08:23:53');
INSERT INTO `admin_operation_log` VALUES (220, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"admin\",\"category_id\":\"1\",\"subcategory_id\":\"1\",\"brand_id\":\"1\",\"type\":\"1\",\"options\":{\"new_1\":{\"attribute_id\":\"1\",\"value\":\"Yellow\",\"price\":\"120000.00\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"attribute_id\":\"1\",\"value\":\"Blue\",\"price\":\"150000.00\",\"id\":null,\"_remove_\":\"0\"}},\"_file_sort_\":{\"attachments\":null},\"is_discount\":\"0\",\"tags\":[null],\"status\":\"on\",\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\\/3\\/edit\"}', '2022-05-26 08:24:51', '2022-05-26 08:24:51');
INSERT INTO `admin_operation_log` VALUES (221, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:24:51', '2022-05-26 08:24:51');
INSERT INTO `admin_operation_log` VALUES (222, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 08:25:05', '2022-05-26 08:25:05');
INSERT INTO `admin_operation_log` VALUES (223, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-05-26 08:25:07', '2022-05-26 08:25:07');
INSERT INTO `admin_operation_log` VALUES (224, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-05-26 08:26:32', '2022-05-26 08:26:32');
INSERT INTO `admin_operation_log` VALUES (225, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 08:26:41', '2022-05-26 08:26:41');
INSERT INTO `admin_operation_log` VALUES (226, 1, 'admin/products/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 08:26:48', '2022-05-26 08:26:48');
INSERT INTO `admin_operation_log` VALUES (227, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 08:28:03', '2022-05-26 08:28:03');
INSERT INTO `admin_operation_log` VALUES (228, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 08:28:04', '2022-05-26 08:28:04');
INSERT INTO `admin_operation_log` VALUES (229, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"Atribute\",\"category_id\":\"1\",\"subcategory_id\":\"1\",\"brand_id\":\"1\",\"type\":\"1\",\"options\":{\"new_1\":{\"attribute_id\":\"1\",\"value\":\"Yellow\",\"price\":\"120000.00\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"attribute_id\":\"1\",\"value\":\"Blue\",\"price\":\"150000.00\",\"id\":null,\"_remove_\":\"0\"}},\"_file_sort_\":{\"attachments\":null},\"is_discount\":\"0\",\"tags\":[\"tag1\",\"tag2\",\"tag3\",null],\"status\":\"on\",\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\",\"after-save\":\"1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2022-05-26 08:29:16', '2022-05-26 08:29:16');
INSERT INTO `admin_operation_log` VALUES (230, 1, 'admin/products/6/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:29:16', '2022-05-26 08:29:16');
INSERT INTO `admin_operation_log` VALUES (231, 1, 'admin/products/6/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:30:38', '2022-05-26 08:30:38');
INSERT INTO `admin_operation_log` VALUES (232, 1, 'admin/products/6/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:36:16', '2022-05-26 08:36:16');
INSERT INTO `admin_operation_log` VALUES (233, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 08:36:24', '2022-05-26 08:36:24');
INSERT INTO `admin_operation_log` VALUES (234, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 08:36:29', '2022-05-26 08:36:29');
INSERT INTO `admin_operation_log` VALUES (235, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"admin\",\"category_id\":\"1\",\"subcategory_id\":\"1\",\"brand_id\":\"1\",\"type\":\"1\",\"options\":{\"new_1\":{\"attribute_id\":\"1\",\"value\":\"Yellow\",\"price\":\"120000.00\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"attribute_id\":\"1\",\"value\":\"Blue\",\"price\":\"150000.00\",\"id\":null,\"_remove_\":\"0\"}},\"_file_sort_\":{\"attachments\":null},\"is_discount\":\"0\",\"tags\":[null],\"status\":\"on\",\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2022-05-26 08:37:07', '2022-05-26 08:37:07');
INSERT INTO `admin_operation_log` VALUES (236, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-26 08:37:07', '2022-05-26 08:37:07');
INSERT INTO `admin_operation_log` VALUES (237, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-26 08:38:08', '2022-05-26 08:38:08');
INSERT INTO `admin_operation_log` VALUES (238, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"admin\",\"category_id\":\"1\",\"subcategory_id\":\"1\",\"brand_id\":\"1\",\"type\":\"1\",\"options\":{\"new_1\":{\"attribute_id\":\"1\",\"value\":\"Yellow\",\"price\":\"120000.00\",\"id\":null,\"_remove_\":\"0\"}},\"_file_sort_\":{\"attachments\":null},\"is_discount\":\"0\",\"tags\":[null],\"status\":\"on\",\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\\/6\\/edit\"}', '2022-05-26 08:38:24', '2022-05-26 08:38:24');
INSERT INTO `admin_operation_log` VALUES (239, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-26 08:38:24', '2022-05-26 08:38:24');
INSERT INTO `admin_operation_log` VALUES (240, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-05-26 08:42:06', '2022-05-26 08:42:06');
INSERT INTO `admin_operation_log` VALUES (241, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"admin\",\"category_id\":\"1\",\"subcategory_id\":\"1\",\"brand_id\":\"1\",\"type\":\"1\",\"options\":{\"new_1\":{\"attribute_id\":\"1\",\"value\":\"Yellow\",\"price\":\"120000.00\",\"id\":null,\"_remove_\":\"0\"}},\"_file_sort_\":{\"options[new_1\":{\"images\":null},\"attachments\":null},\"is_discount\":\"0\",\"tags\":[null],\"status\":\"on\",\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\"}', '2022-05-26 08:42:23', '2022-05-26 08:42:23');
INSERT INTO `admin_operation_log` VALUES (242, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-05-26 08:42:23', '2022-05-26 08:42:23');
INSERT INTO `admin_operation_log` VALUES (243, 1, 'admin/products/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 08:42:37', '2022-05-26 08:42:37');
INSERT INTO `admin_operation_log` VALUES (244, 1, 'admin/products/9/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:42:57', '2022-05-26 08:42:57');
INSERT INTO `admin_operation_log` VALUES (245, 1, 'admin/products/9', 'PUT', '127.0.0.1', '{\"name\":\"admin\",\"category_id\":\"1\",\"subcategory_id\":\"1\",\"brand_id\":\"1\",\"type\":\"1\",\"options\":{\"6\":{\"attribute_id\":\"1\",\"value\":\"Yellow\",\"price\":\"120000.00\",\"id\":\"6\",\"_remove_\":\"0\"}},\"_file_sort_\":{\"options[6\":{\"images\":null},\"attachments\":null},\"is_discount\":\"0\",\"tags\":[null],\"status\":\"on\",\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\\/create\"}', '2022-05-26 08:43:06', '2022-05-26 08:43:06');
INSERT INTO `admin_operation_log` VALUES (246, 1, 'admin/products/9/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:43:07', '2022-05-26 08:43:07');
INSERT INTO `admin_operation_log` VALUES (247, 1, 'admin/products/9', 'PUT', '127.0.0.1', '{\"name\":\"admin\",\"category_id\":\"1\",\"subcategory_id\":\"1\",\"brand_id\":\"1\",\"type\":\"1\",\"options\":{\"6\":{\"attribute_id\":\"1\",\"value\":\"Yellow\",\"price\":\"120000.00\",\"id\":\"6\",\"_remove_\":\"0\"}},\"_file_sort_\":{\"options[6\":{\"images\":\"1,0\"},\"attachments\":null},\"is_discount\":\"0\",\"tags\":[null],\"status\":\"on\",\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2022-05-26 08:46:50', '2022-05-26 08:46:50');
INSERT INTO `admin_operation_log` VALUES (248, 1, 'admin/products/9/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:46:50', '2022-05-26 08:46:50');
INSERT INTO `admin_operation_log` VALUES (249, 1, 'admin/products/9/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:47:35', '2022-05-26 08:47:35');
INSERT INTO `admin_operation_log` VALUES (250, 1, 'admin/products/9/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:48:11', '2022-05-26 08:48:11');
INSERT INTO `admin_operation_log` VALUES (251, 1, 'admin/products/9/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:48:22', '2022-05-26 08:48:22');
INSERT INTO `admin_operation_log` VALUES (252, 1, 'admin/products/9/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:48:29', '2022-05-26 08:48:29');
INSERT INTO `admin_operation_log` VALUES (253, 1, 'admin/products/9/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:48:36', '2022-05-26 08:48:36');
INSERT INTO `admin_operation_log` VALUES (254, 1, 'admin/products/9/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:50:14', '2022-05-26 08:50:14');
INSERT INTO `admin_operation_log` VALUES (255, 1, 'admin/products/9/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:50:18', '2022-05-26 08:50:18');
INSERT INTO `admin_operation_log` VALUES (256, 1, 'admin/products/9/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:50:39', '2022-05-26 08:50:39');
INSERT INTO `admin_operation_log` VALUES (257, 1, 'admin/products/9/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:51:23', '2022-05-26 08:51:23');
INSERT INTO `admin_operation_log` VALUES (258, 1, 'admin/products/9', 'PUT', '127.0.0.1', '{\"name\":\"admin\",\"category_id\":\"1\",\"subcategory_id\":\"1\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"address\":null,\"phone\":null,\"company\":null,\"start_date\":null,\"end_date\":null,\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\",\"_method\":\"PUT\"}', '2022-05-26 08:51:33', '2022-05-26 08:51:33');
INSERT INTO `admin_operation_log` VALUES (259, 1, 'admin/products/9/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:51:34', '2022-05-26 08:51:34');
INSERT INTO `admin_operation_log` VALUES (260, 1, 'admin/products/9/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:52:06', '2022-05-26 08:52:06');
INSERT INTO `admin_operation_log` VALUES (261, 1, 'admin/products/9/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:52:50', '2022-05-26 08:52:50');
INSERT INTO `admin_operation_log` VALUES (262, 1, 'admin/products/9/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:53:08', '2022-05-26 08:53:08');
INSERT INTO `admin_operation_log` VALUES (263, 1, 'admin/products/9/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:53:20', '2022-05-26 08:53:20');
INSERT INTO `admin_operation_log` VALUES (264, 1, 'admin/products/9/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:53:53', '2022-05-26 08:53:53');
INSERT INTO `admin_operation_log` VALUES (265, 1, 'admin/products/9/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:55:05', '2022-05-26 08:55:05');
INSERT INTO `admin_operation_log` VALUES (266, 1, 'admin/products/9/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:55:27', '2022-05-26 08:55:27');
INSERT INTO `admin_operation_log` VALUES (267, 1, 'admin/products/9/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 08:57:35', '2022-05-26 08:57:35');
INSERT INTO `admin_operation_log` VALUES (268, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 08:57:48', '2022-05-26 08:57:48');
INSERT INTO `admin_operation_log` VALUES (269, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 08:57:50', '2022-05-26 08:57:50');
INSERT INTO `admin_operation_log` VALUES (270, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"\\u043e\\u0434\\u0434\\u0438\\u0439\",\"category_id\":\"1\",\"subcategory_id\":\"2\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"\\u0442\\u0435\\u04331\",\"\\u0442\\u043a\\u04332\",\"\\u0442\\u0435\\u04333\",null],\"status\":\"on\",\"type\":\"0\",\"price\":null,\"in_stock\":\"0\",\"is_discount\":\"0\",\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2022-05-26 08:58:23', '2022-05-26 08:58:23');
INSERT INTO `admin_operation_log` VALUES (271, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-05-26 08:58:23', '2022-05-26 08:58:23');
INSERT INTO `admin_operation_log` VALUES (272, 1, 'admin/products/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 08:58:26', '2022-05-26 08:58:26');
INSERT INTO `admin_operation_log` VALUES (273, 1, 'admin/products/10', 'PUT', '127.0.0.1', '{\"name\":\"\\u043e\\u0434\\u0434\\u0438\\u0439\",\"category_id\":\"1\",\"subcategory_id\":\"2\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"\\u0442\\u0435\\u04331\",\"\\u0442\\u043a\\u04332\",\"\\u0442\\u0435\\u04333\",null],\"status\":\"on\",\"type\":\"0\",\"price\":\"0.00\",\"in_stock\":\"0\",\"is_discount\":\"1\",\"discount_from\":\"2022-05-26 00:00:00\",\"discount_to\":\"2022-05-27 00:00:00\",\"discount_price\":\"123.00\",\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2022-05-26 08:59:41', '2022-05-26 08:59:41');
INSERT INTO `admin_operation_log` VALUES (274, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-05-26 08:59:41', '2022-05-26 08:59:41');
INSERT INTO `admin_operation_log` VALUES (275, 1, 'admin/products/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 08:59:51', '2022-05-26 08:59:51');
INSERT INTO `admin_operation_log` VALUES (276, 1, 'admin/products/10', 'PUT', '127.0.0.1', '{\"name\":\"\\u043e\\u0434\\u0434\\u0438\\u0439\",\"category_id\":\"1\",\"subcategory_id\":\"2\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"\\u0442\\u0435\\u04331\",\"\\u0442\\u043a\\u04332\",\"\\u0442\\u0435\\u04333\",null],\"status\":\"on\",\"type\":\"0\",\"price\":\"0.00\",\"in_stock\":\"0\",\"is_discount\":\"0\",\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2022-05-26 08:59:53', '2022-05-26 08:59:53');
INSERT INTO `admin_operation_log` VALUES (277, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-05-26 08:59:54', '2022-05-26 08:59:54');
INSERT INTO `admin_operation_log` VALUES (278, 1, 'admin/products/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 09:00:00', '2022-05-26 09:00:00');
INSERT INTO `admin_operation_log` VALUES (279, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 09:00:25', '2022-05-26 09:00:25');
INSERT INTO `admin_operation_log` VALUES (280, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 09:00:28', '2022-05-26 09:00:28');
INSERT INTO `admin_operation_log` VALUES (281, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2022-05-26 09:00:34', '2022-05-26 09:00:34');
INSERT INTO `admin_operation_log` VALUES (282, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-05-26 09:01:45', '2022-05-26 09:01:45');
INSERT INTO `admin_operation_log` VALUES (283, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 09:02:01', '2022-05-26 09:02:01');
INSERT INTO `admin_operation_log` VALUES (284, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 09:02:03', '2022-05-26 09:02:03');
INSERT INTO `admin_operation_log` VALUES (285, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 09:02:03', '2022-05-26 09:02:03');
INSERT INTO `admin_operation_log` VALUES (286, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 09:02:05', '2022-05-26 09:02:05');
INSERT INTO `admin_operation_log` VALUES (287, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"admin\\u0444\\u044b\\u0432\\u0432\\u044b\\u0444\",\"parent_id\":null,\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/categories\"}', '2022-05-26 09:02:12', '2022-05-26 09:02:12');
INSERT INTO `admin_operation_log` VALUES (288, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-05-26 09:02:12', '2022-05-26 09:02:12');
INSERT INTO `admin_operation_log` VALUES (289, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-05-26 09:02:17', '2022-05-26 09:02:17');
INSERT INTO `admin_operation_log` VALUES (290, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 09:02:19', '2022-05-26 09:02:19');
INSERT INTO `admin_operation_log` VALUES (291, 1, 'admin/brands/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 09:02:21', '2022-05-26 09:02:21');
INSERT INTO `admin_operation_log` VALUES (292, 1, 'admin/brands', 'POST', '127.0.0.1', '{\"name\":\"admin\",\"_token\":\"dZXqOjCh1jVONnaQ2KxAdQGjhC81zSggGcG0Kmk3\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/brands\"}', '2022-05-26 09:02:27', '2022-05-26 09:02:27');
INSERT INTO `admin_operation_log` VALUES (293, 1, 'admin/brands', 'GET', '127.0.0.1', '[]', '2022-05-26 09:02:27', '2022-05-26 09:02:27');
INSERT INTO `admin_operation_log` VALUES (294, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 09:02:44', '2022-05-26 09:02:44');
INSERT INTO `admin_operation_log` VALUES (295, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 09:02:45', '2022-05-26 09:02:45');
INSERT INTO `admin_operation_log` VALUES (296, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 09:03:19', '2022-05-26 09:03:19');
INSERT INTO `admin_operation_log` VALUES (297, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 09:03:39', '2022-05-26 09:03:39');
INSERT INTO `admin_operation_log` VALUES (298, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 09:03:58', '2022-05-26 09:03:58');
INSERT INTO `admin_operation_log` VALUES (299, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 09:03:59', '2022-05-26 09:03:59');
INSERT INTO `admin_operation_log` VALUES (300, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 09:06:06', '2022-05-26 09:06:06');
INSERT INTO `admin_operation_log` VALUES (301, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-05-26 09:06:08', '2022-05-26 09:06:08');
INSERT INTO `admin_operation_log` VALUES (302, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 09:06:10', '2022-05-26 09:06:10');
INSERT INTO `admin_operation_log` VALUES (303, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 09:06:11', '2022-05-26 09:06:11');
INSERT INTO `admin_operation_log` VALUES (304, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 09:06:13', '2022-05-26 09:06:13');
INSERT INTO `admin_operation_log` VALUES (305, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 09:06:13', '2022-05-26 09:06:13');
INSERT INTO `admin_operation_log` VALUES (306, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 09:06:14', '2022-05-26 09:06:14');
INSERT INTO `admin_operation_log` VALUES (307, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 09:06:44', '2022-05-26 09:06:44');
INSERT INTO `admin_operation_log` VALUES (308, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 09:06:45', '2022-05-26 09:06:45');
INSERT INTO `admin_operation_log` VALUES (309, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 09:06:46', '2022-05-26 09:06:46');
INSERT INTO `admin_operation_log` VALUES (310, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 09:06:48', '2022-05-26 09:06:48');
INSERT INTO `admin_operation_log` VALUES (311, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 09:06:49', '2022-05-26 09:06:49');
INSERT INTO `admin_operation_log` VALUES (312, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 09:06:50', '2022-05-26 09:06:50');
INSERT INTO `admin_operation_log` VALUES (313, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 09:07:28', '2022-05-26 09:07:28');
INSERT INTO `admin_operation_log` VALUES (314, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 09:07:31', '2022-05-26 09:07:31');
INSERT INTO `admin_operation_log` VALUES (315, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-05-26 11:53:05', '2022-05-26 11:53:05');
INSERT INTO `admin_operation_log` VALUES (316, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 11:53:08', '2022-05-26 11:53:08');
INSERT INTO `admin_operation_log` VALUES (317, 1, 'admin/categories/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 11:53:13', '2022-05-26 11:53:13');
INSERT INTO `admin_operation_log` VALUES (318, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 11:53:17', '2022-05-26 11:53:17');
INSERT INTO `admin_operation_log` VALUES (319, 1, 'admin/products/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-05-26 11:53:20', '2022-05-26 11:53:20');
INSERT INTO `admin_operation_log` VALUES (320, 1, 'admin/products/10/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 11:58:00', '2022-05-26 11:58:00');
INSERT INTO `admin_operation_log` VALUES (321, 1, 'admin/products/10/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 11:58:09', '2022-05-26 11:58:09');
INSERT INTO `admin_operation_log` VALUES (322, 1, 'admin/products/10/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 11:58:44', '2022-05-26 11:58:44');
INSERT INTO `admin_operation_log` VALUES (323, 1, 'admin/products/10/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 11:58:46', '2022-05-26 11:58:46');
INSERT INTO `admin_operation_log` VALUES (324, 1, 'admin/products/10/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 11:59:01', '2022-05-26 11:59:01');
INSERT INTO `admin_operation_log` VALUES (325, 1, 'admin/products/10/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 11:59:24', '2022-05-26 11:59:24');
INSERT INTO `admin_operation_log` VALUES (326, 1, 'admin/products/10/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 12:03:44', '2022-05-26 12:03:44');
INSERT INTO `admin_operation_log` VALUES (327, 1, 'admin/products/10/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 12:05:01', '2022-05-26 12:05:01');
INSERT INTO `admin_operation_log` VALUES (328, 1, 'admin/products/10/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 12:05:34', '2022-05-26 12:05:34');
INSERT INTO `admin_operation_log` VALUES (329, 1, 'admin/products/10/edit', 'GET', '127.0.0.1', '[]', '2022-05-26 12:06:16', '2022-05-26 12:06:16');
INSERT INTO `admin_operation_log` VALUES (330, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-07 06:17:10', '2022-06-07 06:17:10');
INSERT INTO `admin_operation_log` VALUES (331, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 06:17:15', '2022-06-07 06:17:15');
INSERT INTO `admin_operation_log` VALUES (332, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 06:17:18', '2022-06-07 06:17:18');
INSERT INTO `admin_operation_log` VALUES (333, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 06:24:06', '2022-06-07 06:24:06');
INSERT INTO `admin_operation_log` VALUES (334, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 06:45:12', '2022-06-07 06:45:12');
INSERT INTO `admin_operation_log` VALUES (335, 1, 'admin/brands/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 06:46:10', '2022-06-07 06:46:10');
INSERT INTO `admin_operation_log` VALUES (336, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 06:46:13', '2022-06-07 06:46:13');
INSERT INTO `admin_operation_log` VALUES (337, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 06:46:17', '2022-06-07 06:46:17');
INSERT INTO `admin_operation_log` VALUES (338, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 06:52:51', '2022-06-07 06:52:51');
INSERT INTO `admin_operation_log` VALUES (339, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-07 06:55:25', '2022-06-07 06:55:25');
INSERT INTO `admin_operation_log` VALUES (340, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-07 08:02:24', '2022-06-07 08:02:24');
INSERT INTO `admin_operation_log` VALUES (341, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 08:02:29', '2022-06-07 08:02:29');
INSERT INTO `admin_operation_log` VALUES (342, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 08:02:34', '2022-06-07 08:02:34');
INSERT INTO `admin_operation_log` VALUES (343, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 08:05:01', '2022-06-07 08:05:01');
INSERT INTO `admin_operation_log` VALUES (344, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 08:12:10', '2022-06-07 08:12:10');
INSERT INTO `admin_operation_log` VALUES (345, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-07 08:16:08', '2022-06-07 08:16:08');
INSERT INTO `admin_operation_log` VALUES (346, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 08:16:10', '2022-06-07 08:16:10');
INSERT INTO `admin_operation_log` VALUES (347, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 08:16:13', '2022-06-07 08:16:13');
INSERT INTO `admin_operation_log` VALUES (348, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-07 08:18:51', '2022-06-07 08:18:51');
INSERT INTO `admin_operation_log` VALUES (349, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-07 08:20:35', '2022-06-07 08:20:35');
INSERT INTO `admin_operation_log` VALUES (350, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-07 08:21:12', '2022-06-07 08:21:12');
INSERT INTO `admin_operation_log` VALUES (351, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-07 08:21:31', '2022-06-07 08:21:31');
INSERT INTO `admin_operation_log` VALUES (352, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-07 08:21:32', '2022-06-07 08:21:32');
INSERT INTO `admin_operation_log` VALUES (353, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-07 08:22:55', '2022-06-07 08:22:55');
INSERT INTO `admin_operation_log` VALUES (354, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-07 08:23:36', '2022-06-07 08:23:36');
INSERT INTO `admin_operation_log` VALUES (355, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-07 08:29:50', '2022-06-07 08:29:50');
INSERT INTO `admin_operation_log` VALUES (356, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-07 08:31:04', '2022-06-07 08:31:04');
INSERT INTO `admin_operation_log` VALUES (357, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-07 08:33:03', '2022-06-07 08:33:03');
INSERT INTO `admin_operation_log` VALUES (358, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-07 08:33:08', '2022-06-07 08:33:08');
INSERT INTO `admin_operation_log` VALUES (359, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-07 08:33:09', '2022-06-07 08:33:09');
INSERT INTO `admin_operation_log` VALUES (360, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-07 08:33:11', '2022-06-07 08:33:11');
INSERT INTO `admin_operation_log` VALUES (361, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-07 08:33:18', '2022-06-07 08:33:18');
INSERT INTO `admin_operation_log` VALUES (362, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-07 08:46:12', '2022-06-07 08:46:12');
INSERT INTO `admin_operation_log` VALUES (363, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-07 08:46:28', '2022-06-07 08:46:28');
INSERT INTO `admin_operation_log` VALUES (364, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-07 08:48:19', '2022-06-07 08:48:19');
INSERT INTO `admin_operation_log` VALUES (365, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-07 08:49:00', '2022-06-07 08:49:00');
INSERT INTO `admin_operation_log` VALUES (366, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 08:49:06', '2022-06-07 08:49:06');
INSERT INTO `admin_operation_log` VALUES (367, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 08:49:07', '2022-06-07 08:49:07');
INSERT INTO `admin_operation_log` VALUES (368, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"admin\",\"parent_id\":null,\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/categories\"}', '2022-06-07 08:49:16', '2022-06-07 08:49:16');
INSERT INTO `admin_operation_log` VALUES (369, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-06-07 08:49:16', '2022-06-07 08:49:16');
INSERT INTO `admin_operation_log` VALUES (370, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 08:49:21', '2022-06-07 08:49:21');
INSERT INTO `admin_operation_log` VALUES (371, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 08:49:23', '2022-06-07 08:49:23');
INSERT INTO `admin_operation_log` VALUES (372, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 08:49:26', '2022-06-07 08:49:26');
INSERT INTO `admin_operation_log` VALUES (373, 1, 'admin/brands/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 08:49:27', '2022-06-07 08:49:27');
INSERT INTO `admin_operation_log` VALUES (374, 1, 'admin/brands', 'POST', '127.0.0.1', '{\"name\":\"apple\",\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/brands\"}', '2022-06-07 08:49:36', '2022-06-07 08:49:36');
INSERT INTO `admin_operation_log` VALUES (375, 1, 'admin/brands', 'GET', '127.0.0.1', '[]', '2022-06-07 08:49:36', '2022-06-07 08:49:36');
INSERT INTO `admin_operation_log` VALUES (376, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 08:49:37', '2022-06-07 08:49:37');
INSERT INTO `admin_operation_log` VALUES (377, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 08:49:39', '2022-06-07 08:49:39');
INSERT INTO `admin_operation_log` VALUES (378, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-07 08:51:46', '2022-06-07 08:51:46');
INSERT INTO `admin_operation_log` VALUES (379, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"test\",\"category_id\":\"1\",\"subcategory_id\":\"1\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"tag1\",\"tag2\",\"tag3\",null],\"status\":\"on\",\"is_discount\":\"0\",\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\"}', '2022-06-07 08:52:13', '2022-06-07 08:52:13');
INSERT INTO `admin_operation_log` VALUES (380, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-07 08:52:13', '2022-06-07 08:52:13');
INSERT INTO `admin_operation_log` VALUES (381, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-07 08:52:29', '2022-06-07 08:52:29');
INSERT INTO `admin_operation_log` VALUES (382, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"test\",\"category_id\":\"1\",\"subcategory_id\":\"1\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"tag1\",\"tag2\",\"tag3\",null],\"status\":\"on\",\"is_discount\":\"0\",\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\"}', '2022-06-07 08:52:58', '2022-06-07 08:52:58');
INSERT INTO `admin_operation_log` VALUES (383, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 08:52:58', '2022-06-07 08:52:58');
INSERT INTO `admin_operation_log` VALUES (384, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 08:53:11', '2022-06-07 08:53:11');
INSERT INTO `admin_operation_log` VALUES (385, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"name\":\"test\",\"category_id\":\"1\",\"subcategory_id\":\"1\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"tag1\",\"tag2\",\"tag3\",null],\"status\":\"on\",\"options\":{\"new_1\":{\"option\":\"1\",\"value\":\"20GB\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"option\":\"2\",\"value\":\"4GB\",\"id\":null,\"_remove_\":\"0\"}},\"is_discount\":\"0\",\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2022-06-07 08:53:27', '2022-06-07 08:53:27');
INSERT INTO `admin_operation_log` VALUES (386, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-07 08:53:27', '2022-06-07 08:53:27');
INSERT INTO `admin_operation_log` VALUES (387, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-07 08:53:43', '2022-06-07 08:53:43');
INSERT INTO `admin_operation_log` VALUES (388, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"name\":\"test\",\"category_id\":\"1\",\"subcategory_id\":\"1\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"tag1\",\"tag2\",\"tag3\",null],\"status\":\"on\",\"options\":{\"new_1\":{\"option\":\"1\",\"value\":\"20GB\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"option\":\"2\",\"value\":\"4GB\",\"id\":null,\"_remove_\":\"0\"}},\"is_discount\":\"0\",\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\",\"_method\":\"PUT\"}', '2022-06-07 08:53:52', '2022-06-07 08:53:52');
INSERT INTO `admin_operation_log` VALUES (389, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-07 08:53:52', '2022-06-07 08:53:52');
INSERT INTO `admin_operation_log` VALUES (390, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"name\":\"test\",\"category_id\":\"1\",\"subcategory_id\":\"1\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"tag1\",\"tag2\",\"tag3\",null],\"status\":\"on\",\"options\":{\"new___LA_KEY__\":{\"option\":\"2\",\"value\":\"4GB\",\"id\":null,\"_remove_\":\"0\"}},\"is_discount\":\"0\",\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\",\"_method\":\"PUT\"}', '2022-06-07 08:54:08', '2022-06-07 08:54:08');
INSERT INTO `admin_operation_log` VALUES (391, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-07 08:54:08', '2022-06-07 08:54:08');
INSERT INTO `admin_operation_log` VALUES (392, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-07 08:54:15', '2022-06-07 08:54:15');
INSERT INTO `admin_operation_log` VALUES (393, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"name\":\"test\",\"category_id\":\"1\",\"subcategory_id\":\"1\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"tag1\",\"tag2\",\"tag3\",null],\"status\":\"on\",\"options\":{\"new_1\":{\"option_id\":\"1\",\"value\":\"20GB\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"option_id\":\"2\",\"value\":\"4GB\",\"id\":null,\"_remove_\":\"0\"}},\"is_discount\":\"0\",\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\",\"_method\":\"PUT\"}', '2022-06-07 08:54:22', '2022-06-07 08:54:22');
INSERT INTO `admin_operation_log` VALUES (394, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 08:54:22', '2022-06-07 08:54:22');
INSERT INTO `admin_operation_log` VALUES (395, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 08:54:25', '2022-06-07 08:54:25');
INSERT INTO `admin_operation_log` VALUES (396, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 08:56:12', '2022-06-07 08:56:12');
INSERT INTO `admin_operation_log` VALUES (397, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 08:56:14', '2022-06-07 08:56:14');
INSERT INTO `admin_operation_log` VALUES (398, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 08:56:52', '2022-06-07 08:56:52');
INSERT INTO `admin_operation_log` VALUES (399, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 08:58:06', '2022-06-07 08:58:06');
INSERT INTO `admin_operation_log` VALUES (400, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 08:58:08', '2022-06-07 08:58:08');
INSERT INTO `admin_operation_log` VALUES (401, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"\\u0412\\u0438\\u0434\\u0435\\u043e\\u043a\\u0430\\u0440\\u0442\\u044b\",\"parent_id\":null,\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/categories\"}', '2022-06-07 08:58:51', '2022-06-07 08:58:51');
INSERT INTO `admin_operation_log` VALUES (402, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-06-07 08:58:52', '2022-06-07 08:58:52');
INSERT INTO `admin_operation_log` VALUES (403, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 08:59:08', '2022-06-07 08:59:08');
INSERT INTO `admin_operation_log` VALUES (404, 1, 'admin/brands/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 08:59:10', '2022-06-07 08:59:10');
INSERT INTO `admin_operation_log` VALUES (405, 1, 'admin/brands', 'POST', '127.0.0.1', '{\"name\":\"Intel\",\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/brands\"}', '2022-06-07 08:59:42', '2022-06-07 08:59:42');
INSERT INTO `admin_operation_log` VALUES (406, 1, 'admin/brands', 'GET', '127.0.0.1', '[]', '2022-06-07 08:59:42', '2022-06-07 08:59:42');
INSERT INTO `admin_operation_log` VALUES (407, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 08:59:44', '2022-06-07 08:59:44');
INSERT INTO `admin_operation_log` VALUES (408, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 08:59:45', '2022-06-07 08:59:45');
INSERT INTO `admin_operation_log` VALUES (409, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-07 09:02:18', '2022-06-07 09:02:18');
INSERT INTO `admin_operation_log` VALUES (410, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"Inno 3D \\u2014 6GB GeForce GTX1660Ti Gaming OC X2 GDDR6\",\"category_id\":\"2\",\"subcategory_id\":\"2\",\"brand_id\":\"2\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"intel\",\"videocards\",null],\"status\":\"on\",\"options\":{\"new_1\":{\"option_id\":\"3\",\"value\":\"HDMI, DisplayPort x3\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"option_id\":\"4\",\"value\":\"1770 \\u041c\\u0413\\u0446\",\"id\":null,\"_remove_\":\"0\"},\"new_3\":{\"option_id\":\"5\",\"value\":\"6144 \\u041c\\u0411\",\"id\":null,\"_remove_\":\"0\"},\"new_4\":{\"option_id\":\"6\",\"value\":\"GDDR6\",\"id\":null,\"_remove_\":\"0\"},\"new_5\":{\"option_id\":\"8\",\"value\":\"192 \\u0431\\u0438\\u0442\",\"id\":null,\"_remove_\":\"0\"}},\"is_discount\":\"0\",\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\"}', '2022-06-07 09:04:35', '2022-06-07 09:04:35');
INSERT INTO `admin_operation_log` VALUES (411, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 09:04:35', '2022-06-07 09:04:35');
INSERT INTO `admin_operation_log` VALUES (412, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 09:04:39', '2022-06-07 09:04:39');
INSERT INTO `admin_operation_log` VALUES (413, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-07 09:13:24', '2022-06-07 09:13:24');
INSERT INTO `admin_operation_log` VALUES (414, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-07 09:13:46', '2022-06-07 09:13:46');
INSERT INTO `admin_operation_log` VALUES (415, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-07 09:13:56', '2022-06-07 09:13:56');
INSERT INTO `admin_operation_log` VALUES (416, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-07 09:33:47', '2022-06-07 09:33:47');
INSERT INTO `admin_operation_log` VALUES (417, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-07 09:34:19', '2022-06-07 09:34:19');
INSERT INTO `admin_operation_log` VALUES (418, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-07 09:35:09', '2022-06-07 09:35:09');
INSERT INTO `admin_operation_log` VALUES (419, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-07 09:35:24', '2022-06-07 09:35:24');
INSERT INTO `admin_operation_log` VALUES (420, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-07 09:35:37', '2022-06-07 09:35:37');
INSERT INTO `admin_operation_log` VALUES (421, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-07 09:35:50', '2022-06-07 09:35:50');
INSERT INTO `admin_operation_log` VALUES (422, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-07 09:56:59', '2022-06-07 09:56:59');
INSERT INTO `admin_operation_log` VALUES (423, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-07 09:59:41', '2022-06-07 09:59:41');
INSERT INTO `admin_operation_log` VALUES (424, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-07 10:05:40', '2022-06-07 10:05:40');
INSERT INTO `admin_operation_log` VALUES (425, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 10:05:42', '2022-06-07 10:05:42');
INSERT INTO `admin_operation_log` VALUES (426, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 10:06:57', '2022-06-07 10:06:57');
INSERT INTO `admin_operation_log` VALUES (427, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-06-07 10:07:50', '2022-06-07 10:07:50');
INSERT INTO `admin_operation_log` VALUES (428, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 10:07:52', '2022-06-07 10:07:52');
INSERT INTO `admin_operation_log` VALUES (429, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"\\u041a\\u043e\\u043c\\u043f\\u044c\\u044e\\u0442\\u0435\\u0440\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0442\\u0443\\u044e\\u0449\\u0438\\u0435\",\"parent_id\":null,\"_token\":\"2zm7ShHNgy65DyevK4gRwci6hJGooSGm1KQFi4gL\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/categories\"}', '2022-06-07 10:08:35', '2022-06-07 10:08:35');
INSERT INTO `admin_operation_log` VALUES (430, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-06-07 10:08:35', '2022-06-07 10:08:35');
INSERT INTO `admin_operation_log` VALUES (431, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 10:08:37', '2022-06-07 10:08:37');
INSERT INTO `admin_operation_log` VALUES (432, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 10:08:38', '2022-06-07 10:08:38');
INSERT INTO `admin_operation_log` VALUES (433, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-07 10:16:45', '2022-06-07 10:16:45');
INSERT INTO `admin_operation_log` VALUES (434, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 10:16:49', '2022-06-07 10:16:49');
INSERT INTO `admin_operation_log` VALUES (435, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 10:16:51', '2022-06-07 10:16:51');
INSERT INTO `admin_operation_log` VALUES (436, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-07 10:17:01', '2022-06-07 10:17:01');
INSERT INTO `admin_operation_log` VALUES (437, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-07 10:17:27', '2022-06-07 10:17:27');
INSERT INTO `admin_operation_log` VALUES (438, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-07 10:17:31', '2022-06-07 10:17:31');
INSERT INTO `admin_operation_log` VALUES (439, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-07 11:12:35', '2022-06-07 11:12:35');
INSERT INTO `admin_operation_log` VALUES (440, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-07 11:12:53', '2022-06-07 11:12:53');
INSERT INTO `admin_operation_log` VALUES (441, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-07 11:12:54', '2022-06-07 11:12:54');
INSERT INTO `admin_operation_log` VALUES (442, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-07 11:12:54', '2022-06-07 11:12:54');
INSERT INTO `admin_operation_log` VALUES (443, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-07 11:12:54', '2022-06-07 11:12:54');
INSERT INTO `admin_operation_log` VALUES (444, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-07 11:12:55', '2022-06-07 11:12:55');
INSERT INTO `admin_operation_log` VALUES (445, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 11:13:07', '2022-06-07 11:13:07');
INSERT INTO `admin_operation_log` VALUES (446, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-07 11:14:54', '2022-06-07 11:14:54');
INSERT INTO `admin_operation_log` VALUES (447, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 11:14:55', '2022-06-07 11:14:55');
INSERT INTO `admin_operation_log` VALUES (448, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2022-06-07 11:14:56', '2022-06-07 11:14:56');
INSERT INTO `admin_operation_log` VALUES (449, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2022-06-07 11:14:57', '2022-06-07 11:14:57');
INSERT INTO `admin_operation_log` VALUES (450, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2022-06-07 11:15:37', '2022-06-07 11:15:37');
INSERT INTO `admin_operation_log` VALUES (451, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2022-06-07 11:15:52', '2022-06-07 11:15:52');
INSERT INTO `admin_operation_log` VALUES (452, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2022-06-07 11:16:28', '2022-06-07 11:16:28');
INSERT INTO `admin_operation_log` VALUES (453, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2022-06-07 11:16:32', '2022-06-07 11:16:32');
INSERT INTO `admin_operation_log` VALUES (454, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:22:16', '2022-06-07 11:22:16');
INSERT INTO `admin_operation_log` VALUES (455, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:25:37', '2022-06-07 11:25:37');
INSERT INTO `admin_operation_log` VALUES (456, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:25:44', '2022-06-07 11:25:44');
INSERT INTO `admin_operation_log` VALUES (457, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:25:48', '2022-06-07 11:25:48');
INSERT INTO `admin_operation_log` VALUES (458, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:25:53', '2022-06-07 11:25:53');
INSERT INTO `admin_operation_log` VALUES (459, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:26:36', '2022-06-07 11:26:36');
INSERT INTO `admin_operation_log` VALUES (460, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:27:12', '2022-06-07 11:27:12');
INSERT INTO `admin_operation_log` VALUES (461, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:27:13', '2022-06-07 11:27:13');
INSERT INTO `admin_operation_log` VALUES (462, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:27:19', '2022-06-07 11:27:19');
INSERT INTO `admin_operation_log` VALUES (463, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:27:37', '2022-06-07 11:27:37');
INSERT INTO `admin_operation_log` VALUES (464, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:27:46', '2022-06-07 11:27:46');
INSERT INTO `admin_operation_log` VALUES (465, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:28:20', '2022-06-07 11:28:20');
INSERT INTO `admin_operation_log` VALUES (466, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:29:20', '2022-06-07 11:29:20');
INSERT INTO `admin_operation_log` VALUES (467, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:30:44', '2022-06-07 11:30:44');
INSERT INTO `admin_operation_log` VALUES (468, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:30:53', '2022-06-07 11:30:53');
INSERT INTO `admin_operation_log` VALUES (469, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:31:35', '2022-06-07 11:31:35');
INSERT INTO `admin_operation_log` VALUES (470, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:31:47', '2022-06-07 11:31:47');
INSERT INTO `admin_operation_log` VALUES (471, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:32:12', '2022-06-07 11:32:12');
INSERT INTO `admin_operation_log` VALUES (472, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:32:17', '2022-06-07 11:32:17');
INSERT INTO `admin_operation_log` VALUES (473, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:33:37', '2022-06-07 11:33:37');
INSERT INTO `admin_operation_log` VALUES (474, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:33:41', '2022-06-07 11:33:41');
INSERT INTO `admin_operation_log` VALUES (475, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:33:47', '2022-06-07 11:33:47');
INSERT INTO `admin_operation_log` VALUES (476, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:33:52', '2022-06-07 11:33:52');
INSERT INTO `admin_operation_log` VALUES (477, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:34:05', '2022-06-07 11:34:05');
INSERT INTO `admin_operation_log` VALUES (478, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:34:09', '2022-06-07 11:34:09');
INSERT INTO `admin_operation_log` VALUES (479, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:34:17', '2022-06-07 11:34:17');
INSERT INTO `admin_operation_log` VALUES (480, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:34:25', '2022-06-07 11:34:25');
INSERT INTO `admin_operation_log` VALUES (481, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:34:30', '2022-06-07 11:34:30');
INSERT INTO `admin_operation_log` VALUES (482, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:34:34', '2022-06-07 11:34:34');
INSERT INTO `admin_operation_log` VALUES (483, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:35:23', '2022-06-07 11:35:23');
INSERT INTO `admin_operation_log` VALUES (484, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:35:59', '2022-06-07 11:35:59');
INSERT INTO `admin_operation_log` VALUES (485, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:36:08', '2022-06-07 11:36:08');
INSERT INTO `admin_operation_log` VALUES (486, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:36:09', '2022-06-07 11:36:09');
INSERT INTO `admin_operation_log` VALUES (487, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:37:13', '2022-06-07 11:37:13');
INSERT INTO `admin_operation_log` VALUES (488, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:37:58', '2022-06-07 11:37:58');
INSERT INTO `admin_operation_log` VALUES (489, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-06-07 11:38:00', '2022-06-07 11:38:00');
INSERT INTO `admin_operation_log` VALUES (490, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-06-07 11:38:01', '2022-06-07 11:38:01');
INSERT INTO `admin_operation_log` VALUES (491, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-06-07 11:38:01', '2022-06-07 11:38:01');
INSERT INTO `admin_operation_log` VALUES (492, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-06-07 11:38:02', '2022-06-07 11:38:02');
INSERT INTO `admin_operation_log` VALUES (493, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:38:23', '2022-06-07 11:38:23');
INSERT INTO `admin_operation_log` VALUES (494, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:38:39', '2022-06-07 11:38:39');
INSERT INTO `admin_operation_log` VALUES (495, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"status\":\"2\",\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-06-07 11:38:41', '2022-06-07 11:38:41');
INSERT INTO `admin_operation_log` VALUES (496, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-06-07 11:38:42', '2022-06-07 11:38:42');
INSERT INTO `admin_operation_log` VALUES (497, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:39:08', '2022-06-07 11:39:08');
INSERT INTO `admin_operation_log` VALUES (498, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-06-07 11:39:12', '2022-06-07 11:39:12');
INSERT INTO `admin_operation_log` VALUES (499, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-06-07 11:39:14', '2022-06-07 11:39:14');
INSERT INTO `admin_operation_log` VALUES (500, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-06-07 11:39:30', '2022-06-07 11:39:30');
INSERT INTO `admin_operation_log` VALUES (501, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-06-07 11:39:32', '2022-06-07 11:39:32');
INSERT INTO `admin_operation_log` VALUES (502, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-06-07 11:39:53', '2022-06-07 11:39:53');
INSERT INTO `admin_operation_log` VALUES (503, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-06-07 11:39:56', '2022-06-07 11:39:56');
INSERT INTO `admin_operation_log` VALUES (504, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:40:44', '2022-06-07 11:40:44');
INSERT INTO `admin_operation_log` VALUES (505, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"new\":\"1\",\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\",\"_method\":\"PUT\"}', '2022-06-07 11:40:49', '2022-06-07 11:40:49');
INSERT INTO `admin_operation_log` VALUES (506, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"hot\":\"1\",\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\",\"_method\":\"PUT\"}', '2022-06-07 11:40:49', '2022-06-07 11:40:49');
INSERT INTO `admin_operation_log` VALUES (507, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:40:53', '2022-06-07 11:40:53');
INSERT INTO `admin_operation_log` VALUES (508, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:41:15', '2022-06-07 11:41:15');
INSERT INTO `admin_operation_log` VALUES (509, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:41:55', '2022-06-07 11:41:55');
INSERT INTO `admin_operation_log` VALUES (510, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:42:03', '2022-06-07 11:42:03');
INSERT INTO `admin_operation_log` VALUES (511, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:42:10', '2022-06-07 11:42:10');
INSERT INTO `admin_operation_log` VALUES (512, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:43:43', '2022-06-07 11:43:43');
INSERT INTO `admin_operation_log` VALUES (513, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:43:56', '2022-06-07 11:43:56');
INSERT INTO `admin_operation_log` VALUES (514, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:44:07', '2022-06-07 11:44:07');
INSERT INTO `admin_operation_log` VALUES (515, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:44:12', '2022-06-07 11:44:12');
INSERT INTO `admin_operation_log` VALUES (516, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 11:44:16', '2022-06-07 11:44:16');
INSERT INTO `admin_operation_log` VALUES (517, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"name\":\"Inno 3D \\u2014 6GB GeForce GTX1660Ti Gaming OC X2 GDDR6\",\"category_id\":\"2\",\"subcategory_id\":\"3\",\"brand_id\":\"2\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"intel\",\"videocards\",null],\"status\":\"off\",\"price\":null,\"in_stock\":\"0\",\"description\":null,\"is_discount\":\"0\",\"options\":{\"3\":{\"option_id\":\"3\",\"value\":\"HDMI, DisplayPort x3\",\"id\":\"3\",\"_remove_\":\"0\"},\"4\":{\"option_id\":\"4\",\"value\":\"1770 \\u041c\\u0413\\u0446\",\"id\":\"4\",\"_remove_\":\"0\"},\"5\":{\"option_id\":\"5\",\"value\":\"6144 \\u041c\\u0411\",\"id\":\"5\",\"_remove_\":\"0\"},\"6\":{\"option_id\":\"6\",\"value\":\"GDDR6\",\"id\":\"6\",\"_remove_\":\"0\"},\"7\":{\"option_id\":\"8\",\"value\":\"192 \\u0431\\u0438\\u0442\",\"id\":\"7\",\"_remove_\":\"0\"}},\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2022-06-07 11:44:20', '2022-06-07 11:44:20');
INSERT INTO `admin_operation_log` VALUES (518, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-07 11:44:20', '2022-06-07 11:44:20');
INSERT INTO `admin_operation_log` VALUES (519, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"name\":\"Inno 3D \\u2014 6GB GeForce GTX1660Ti Gaming OC X2 GDDR6\",\"category_id\":\"2\",\"subcategory_id\":\"3\",\"brand_id\":\"2\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"intel\",\"videocards\",null],\"status\":\"off\",\"price\":null,\"in_stock\":\"0\",\"description\":null,\"is_discount\":\"0\",\"options\":{\"3\":{\"option_id\":\"3\",\"value\":\"HDMI, DisplayPort x3\",\"id\":\"3\",\"_remove_\":\"0\"},\"4\":{\"option_id\":\"4\",\"value\":\"1770 \\u041c\\u0413\\u0446\",\"id\":\"4\",\"_remove_\":\"0\"},\"5\":{\"option_id\":\"5\",\"value\":\"6144 \\u041c\\u0411\",\"id\":\"5\",\"_remove_\":\"0\"},\"6\":{\"option_id\":\"6\",\"value\":\"GDDR6\",\"id\":\"6\",\"_remove_\":\"0\"},\"7\":{\"option_id\":\"8\",\"value\":\"192 \\u0431\\u0438\\u0442\",\"id\":\"7\",\"_remove_\":\"0\"}},\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\",\"_method\":\"PUT\"}', '2022-06-07 11:45:07', '2022-06-07 11:45:07');
INSERT INTO `admin_operation_log` VALUES (520, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:45:07', '2022-06-07 11:45:07');
INSERT INTO `admin_operation_log` VALUES (521, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:45:10', '2022-06-07 11:45:10');
INSERT INTO `admin_operation_log` VALUES (522, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:45:22', '2022-06-07 11:45:22');
INSERT INTO `admin_operation_log` VALUES (523, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:45:46', '2022-06-07 11:45:46');
INSERT INTO `admin_operation_log` VALUES (524, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:46:04', '2022-06-07 11:46:04');
INSERT INTO `admin_operation_log` VALUES (525, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:46:11', '2022-06-07 11:46:11');
INSERT INTO `admin_operation_log` VALUES (526, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:46:53', '2022-06-07 11:46:53');
INSERT INTO `admin_operation_log` VALUES (527, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:47:03', '2022-06-07 11:47:03');
INSERT INTO `admin_operation_log` VALUES (528, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:47:09', '2022-06-07 11:47:09');
INSERT INTO `admin_operation_log` VALUES (529, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:47:21', '2022-06-07 11:47:21');
INSERT INTO `admin_operation_log` VALUES (530, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:47:32', '2022-06-07 11:47:32');
INSERT INTO `admin_operation_log` VALUES (531, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:47:42', '2022-06-07 11:47:42');
INSERT INTO `admin_operation_log` VALUES (532, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:47:51', '2022-06-07 11:47:51');
INSERT INTO `admin_operation_log` VALUES (533, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:48:03', '2022-06-07 11:48:03');
INSERT INTO `admin_operation_log` VALUES (534, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-07 11:48:24', '2022-06-07 11:48:24');
INSERT INTO `admin_operation_log` VALUES (535, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2022-06-07 11:48:31', '2022-06-07 11:48:31');
INSERT INTO `admin_operation_log` VALUES (536, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2022-06-07 11:48:33', '2022-06-07 11:48:33');
INSERT INTO `admin_operation_log` VALUES (537, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2022-06-07 11:49:04', '2022-06-07 11:49:04');
INSERT INTO `admin_operation_log` VALUES (538, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2022-06-07 11:50:12', '2022-06-07 11:50:12');
INSERT INTO `admin_operation_log` VALUES (539, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2022-06-07 11:51:45', '2022-06-07 11:51:45');
INSERT INTO `admin_operation_log` VALUES (540, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2022-06-07 11:51:53', '2022-06-07 11:51:53');
INSERT INTO `admin_operation_log` VALUES (541, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-07 11:52:02', '2022-06-07 11:52:02');
INSERT INTO `admin_operation_log` VALUES (542, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"name\":\"test\",\"category_id\":\"1\",\"subcategory_id\":\"1\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"tag1\",\"tag2\",\"tag3\",null],\"status\":\"off\",\"price\":null,\"in_stock\":\"0\",\"description\":null,\"is_discount\":\"1\",\"discount_from\":null,\"discount_to\":null,\"discount_price\":null,\"options\":{\"1\":{\"option_id\":\"1\",\"value\":\"20GB\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"option_id\":\"2\",\"value\":\"4GB\",\"id\":\"2\",\"_remove_\":\"0\"}},\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=asc\"}', '2022-06-07 11:52:08', '2022-06-07 11:52:08');
INSERT INTO `admin_operation_log` VALUES (543, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2022-06-07 11:52:08', '2022-06-07 11:52:08');
INSERT INTO `admin_operation_log` VALUES (544, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2022-06-07 11:53:53', '2022-06-07 11:53:53');
INSERT INTO `admin_operation_log` VALUES (545, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2022-06-07 11:53:58', '2022-06-07 11:53:58');
INSERT INTO `admin_operation_log` VALUES (546, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-06-07 11:54:06', '2022-06-07 11:54:06');
INSERT INTO `admin_operation_log` VALUES (547, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-06-07 11:54:07', '2022-06-07 11:54:07');
INSERT INTO `admin_operation_log` VALUES (548, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2022-06-07 11:54:35', '2022-06-07 11:54:35');
INSERT INTO `admin_operation_log` VALUES (549, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2022-06-07 11:54:46', '2022-06-07 11:54:46');
INSERT INTO `admin_operation_log` VALUES (550, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2022-06-07 11:54:48', '2022-06-07 11:54:48');
INSERT INTO `admin_operation_log` VALUES (551, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2022-06-07 11:55:28', '2022-06-07 11:55:28');
INSERT INTO `admin_operation_log` VALUES (552, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2022-06-07 11:55:51', '2022-06-07 11:55:51');
INSERT INTO `admin_operation_log` VALUES (553, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2022-06-07 11:56:05', '2022-06-07 11:56:05');
INSERT INTO `admin_operation_log` VALUES (554, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2022-06-07 11:56:37', '2022-06-07 11:56:37');
INSERT INTO `admin_operation_log` VALUES (555, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"_token\":\"l226MzYMiYtzWDi4ZKbcoLW0Qb1eZv4gwTWpStUa\",\"_method\":\"PUT\",\"_edit_inline\":\"true\",\"created_at\":\"2022-06-08\"}', '2022-06-07 11:56:40', '2022-06-07 11:56:40');
INSERT INTO `admin_operation_log` VALUES (556, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2022-06-07 11:56:51', '2022-06-07 11:56:51');
INSERT INTO `admin_operation_log` VALUES (557, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2022-06-07 11:58:02', '2022-06-07 11:58:02');
INSERT INTO `admin_operation_log` VALUES (558, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2022-06-07 11:58:13', '2022-06-07 11:58:13');
INSERT INTO `admin_operation_log` VALUES (559, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2022-06-07 11:58:19', '2022-06-07 11:58:19');
INSERT INTO `admin_operation_log` VALUES (560, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-08 03:34:37', '2022-06-08 03:34:37');
INSERT INTO `admin_operation_log` VALUES (561, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-08 03:35:03', '2022-06-08 03:35:03');
INSERT INTO `admin_operation_log` VALUES (562, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-08 03:35:04', '2022-06-08 03:35:04');
INSERT INTO `admin_operation_log` VALUES (563, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-08 03:36:57', '2022-06-08 03:36:57');
INSERT INTO `admin_operation_log` VALUES (564, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-08 03:38:45', '2022-06-08 03:38:45');
INSERT INTO `admin_operation_log` VALUES (565, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-08 03:38:50', '2022-06-08 03:38:50');
INSERT INTO `admin_operation_log` VALUES (566, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-08 03:38:56', '2022-06-08 03:38:56');
INSERT INTO `admin_operation_log` VALUES (567, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2022-06-08 03:41:14', '2022-06-08 03:41:14');
INSERT INTO `admin_operation_log` VALUES (568, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2022-06-08 03:41:23', '2022-06-08 03:41:23');
INSERT INTO `admin_operation_log` VALUES (569, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2022-06-08 03:41:32', '2022-06-08 03:41:32');
INSERT INTO `admin_operation_log` VALUES (570, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2022-06-08 03:41:36', '2022-06-08 03:41:36');
INSERT INTO `admin_operation_log` VALUES (571, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2022-06-08 03:42:31', '2022-06-08 03:42:31');
INSERT INTO `admin_operation_log` VALUES (572, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2022-06-08 03:42:39', '2022-06-08 03:42:39');
INSERT INTO `admin_operation_log` VALUES (573, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2022-06-08 03:43:01', '2022-06-08 03:43:01');
INSERT INTO `admin_operation_log` VALUES (574, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2022-06-08 03:43:23', '2022-06-08 03:43:23');
INSERT INTO `admin_operation_log` VALUES (575, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2022-06-08 03:44:00', '2022-06-08 03:44:00');
INSERT INTO `admin_operation_log` VALUES (576, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2022-06-08 03:44:23', '2022-06-08 03:44:23');
INSERT INTO `admin_operation_log` VALUES (577, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"\\u0421\\u0443\\u04311\",\"type\":\"2\",\"parent_id\":\"2\",\"_token\":\"E7ehH9PQV0C01ddz0xxEDTDGQlke9f7vhqJm5FpE\"}', '2022-06-08 03:45:09', '2022-06-08 03:45:09');
INSERT INTO `admin_operation_log` VALUES (578, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2022-06-08 03:45:15', '2022-06-08 03:45:15');
INSERT INTO `admin_operation_log` VALUES (579, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2022-06-08 03:46:24', '2022-06-08 03:46:24');
INSERT INTO `admin_operation_log` VALUES (580, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"admin\",\"type\":\"1\",\"parent_id\":\"2\",\"_token\":\"E7ehH9PQV0C01ddz0xxEDTDGQlke9f7vhqJm5FpE\"}', '2022-06-08 03:46:37', '2022-06-08 03:46:37');
INSERT INTO `admin_operation_log` VALUES (581, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-06-08 03:46:37', '2022-06-08 03:46:37');
INSERT INTO `admin_operation_log` VALUES (582, 1, 'admin/categories/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-08 03:46:45', '2022-06-08 03:46:45');
INSERT INTO `admin_operation_log` VALUES (583, 1, 'admin/categories/4/edit', 'GET', '127.0.0.1', '[]', '2022-06-08 03:47:48', '2022-06-08 03:47:48');
INSERT INTO `admin_operation_log` VALUES (584, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-08 03:48:04', '2022-06-08 03:48:04');
INSERT INTO `admin_operation_log` VALUES (585, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-06-08 03:49:13', '2022-06-08 03:49:13');
INSERT INTO `admin_operation_log` VALUES (586, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-08 03:49:14', '2022-06-08 03:49:14');
INSERT INTO `admin_operation_log` VALUES (587, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"admin\",\"type\":\"2\",\"parent_id\":\"2\",\"_token\":\"E7ehH9PQV0C01ddz0xxEDTDGQlke9f7vhqJm5FpE\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/categories\"}', '2022-06-08 03:49:23', '2022-06-08 03:49:23');
INSERT INTO `admin_operation_log` VALUES (588, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-06-08 03:49:24', '2022-06-08 03:49:24');
INSERT INTO `admin_operation_log` VALUES (589, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-06-08 03:49:51', '2022-06-08 03:49:51');
INSERT INTO `admin_operation_log` VALUES (590, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-06-08 03:50:00', '2022-06-08 03:50:00');
INSERT INTO `admin_operation_log` VALUES (591, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-06-08 03:50:28', '2022-06-08 03:50:28');
INSERT INTO `admin_operation_log` VALUES (592, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-06-08 03:53:28', '2022-06-08 03:53:28');
INSERT INTO `admin_operation_log` VALUES (593, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-06-08 03:54:02', '2022-06-08 03:54:02');
INSERT INTO `admin_operation_log` VALUES (594, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-06-08 03:54:25', '2022-06-08 03:54:25');
INSERT INTO `admin_operation_log` VALUES (595, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-06-08 03:59:39', '2022-06-08 03:59:39');
INSERT INTO `admin_operation_log` VALUES (596, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-06-08 04:00:42', '2022-06-08 04:00:42');
INSERT INTO `admin_operation_log` VALUES (597, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:00:44', '2022-06-08 04:00:44');
INSERT INTO `admin_operation_log` VALUES (598, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:00:45', '2022-06-08 04:00:45');
INSERT INTO `admin_operation_log` VALUES (599, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:00:46', '2022-06-08 04:00:46');
INSERT INTO `admin_operation_log` VALUES (600, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"desc\"}}', '2022-06-08 04:02:05', '2022-06-08 04:02:05');
INSERT INTO `admin_operation_log` VALUES (601, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"desc\"}}', '2022-06-08 04:03:15', '2022-06-08 04:03:15');
INSERT INTO `admin_operation_log` VALUES (602, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"desc\"}}', '2022-06-08 04:03:48', '2022-06-08 04:03:48');
INSERT INTO `admin_operation_log` VALUES (603, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:03:50', '2022-06-08 04:03:50');
INSERT INTO `admin_operation_log` VALUES (604, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:03:51', '2022-06-08 04:03:51');
INSERT INTO `admin_operation_log` VALUES (605, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:03:52', '2022-06-08 04:03:52');
INSERT INTO `admin_operation_log` VALUES (606, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:03:54', '2022-06-08 04:03:54');
INSERT INTO `admin_operation_log` VALUES (607, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:03:54', '2022-06-08 04:03:54');
INSERT INTO `admin_operation_log` VALUES (608, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"}}', '2022-06-08 04:04:11', '2022-06-08 04:04:11');
INSERT INTO `admin_operation_log` VALUES (609, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:04:12', '2022-06-08 04:04:12');
INSERT INTO `admin_operation_log` VALUES (610, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:04:13', '2022-06-08 04:04:13');
INSERT INTO `admin_operation_log` VALUES (611, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"}}', '2022-06-08 04:04:28', '2022-06-08 04:04:28');
INSERT INTO `admin_operation_log` VALUES (612, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"}}', '2022-06-08 04:04:36', '2022-06-08 04:04:36');
INSERT INTO `admin_operation_log` VALUES (613, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"}}', '2022-06-08 04:04:44', '2022-06-08 04:04:44');
INSERT INTO `admin_operation_log` VALUES (614, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"}}', '2022-06-08 04:04:52', '2022-06-08 04:04:52');
INSERT INTO `admin_operation_log` VALUES (615, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:09:13', '2022-06-08 04:09:13');
INSERT INTO `admin_operation_log` VALUES (616, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:09:14', '2022-06-08 04:09:14');
INSERT INTO `admin_operation_log` VALUES (617, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"}}', '2022-06-08 04:09:52', '2022-06-08 04:09:52');
INSERT INTO `admin_operation_log` VALUES (618, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:09:55', '2022-06-08 04:09:55');
INSERT INTO `admin_operation_log` VALUES (619, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:09:56', '2022-06-08 04:09:56');
INSERT INTO `admin_operation_log` VALUES (620, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"}}', '2022-06-08 04:11:07', '2022-06-08 04:11:07');
INSERT INTO `admin_operation_log` VALUES (621, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"}}', '2022-06-08 04:11:13', '2022-06-08 04:11:13');
INSERT INTO `admin_operation_log` VALUES (622, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"}}', '2022-06-08 04:11:48', '2022-06-08 04:11:48');
INSERT INTO `admin_operation_log` VALUES (623, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"},\"_selector\":{\"brand\":\"1\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:11:50', '2022-06-08 04:11:50');
INSERT INTO `admin_operation_log` VALUES (624, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:11:52', '2022-06-08 04:11:52');
INSERT INTO `admin_operation_log` VALUES (625, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"}}', '2022-06-08 04:12:20', '2022-06-08 04:12:20');
INSERT INTO `admin_operation_log` VALUES (626, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"}}', '2022-06-08 04:12:24', '2022-06-08 04:12:24');
INSERT INTO `admin_operation_log` VALUES (627, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"},\"_selector\":{\"brand\":\"2\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:12:28', '2022-06-08 04:12:28');
INSERT INTO `admin_operation_log` VALUES (628, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:12:31', '2022-06-08 04:12:31');
INSERT INTO `admin_operation_log` VALUES (629, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"}}', '2022-06-08 04:12:35', '2022-06-08 04:12:35');
INSERT INTO `admin_operation_log` VALUES (630, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"},\"_selector\":{\"name\":\"1\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:12:36', '2022-06-08 04:12:36');
INSERT INTO `admin_operation_log` VALUES (631, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"},\"_selector\":{\"name\":\"2\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:12:37', '2022-06-08 04:12:37');
INSERT INTO `admin_operation_log` VALUES (632, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"},\"_selector\":{\"name\":\"2,1\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:12:39', '2022-06-08 04:12:39');
INSERT INTO `admin_operation_log` VALUES (633, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"},\"_selector\":{\"name\":\"3\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:12:41', '2022-06-08 04:12:41');
INSERT INTO `admin_operation_log` VALUES (634, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"},\"_selector\":{\"name\":\"4\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:12:43', '2022-06-08 04:12:43');
INSERT INTO `admin_operation_log` VALUES (635, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"},\"_selector\":{\"name\":\"4,3\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:12:44', '2022-06-08 04:12:44');
INSERT INTO `admin_operation_log` VALUES (636, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"},\"_selector\":{\"name\":\"4,3,2\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:12:46', '2022-06-08 04:12:46');
INSERT INTO `admin_operation_log` VALUES (637, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:12:48', '2022-06-08 04:12:48');
INSERT INTO `admin_operation_log` VALUES (638, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"}}', '2022-06-08 04:12:57', '2022-06-08 04:12:57');
INSERT INTO `admin_operation_log` VALUES (639, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"}}', '2022-06-08 04:14:10', '2022-06-08 04:14:10');
INSERT INTO `admin_operation_log` VALUES (640, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"name\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:14:12', '2022-06-08 04:14:12');
INSERT INTO `admin_operation_log` VALUES (641, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"name\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:14:13', '2022-06-08 04:14:13');
INSERT INTO `admin_operation_log` VALUES (642, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:14:21', '2022-06-08 04:14:21');
INSERT INTO `admin_operation_log` VALUES (643, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:14:34', '2022-06-08 04:14:34');
INSERT INTO `admin_operation_log` VALUES (644, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:17:21', '2022-06-08 04:17:21');
INSERT INTO `admin_operation_log` VALUES (645, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:17:21', '2022-06-08 04:17:21');
INSERT INTO `admin_operation_log` VALUES (646, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:17:24', '2022-06-08 04:17:24');
INSERT INTO `admin_operation_log` VALUES (647, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-08 04:17:52', '2022-06-08 04:17:52');
INSERT INTO `admin_operation_log` VALUES (648, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-08 04:17:59', '2022-06-08 04:17:59');
INSERT INTO `admin_operation_log` VALUES (649, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-08 04:20:26', '2022-06-08 04:20:26');
INSERT INTO `admin_operation_log` VALUES (650, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-08 04:20:47', '2022-06-08 04:20:47');
INSERT INTO `admin_operation_log` VALUES (651, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-08 04:21:12', '2022-06-08 04:21:12');
INSERT INTO `admin_operation_log` VALUES (652, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-08 04:21:47', '2022-06-08 04:21:47');
INSERT INTO `admin_operation_log` VALUES (653, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:23:14', '2022-06-08 04:23:14');
INSERT INTO `admin_operation_log` VALUES (654, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-08 04:28:11', '2022-06-08 04:28:11');
INSERT INTO `admin_operation_log` VALUES (655, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-08 04:28:19', '2022-06-08 04:28:19');
INSERT INTO `admin_operation_log` VALUES (656, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"name\":\"name\",\"value\":\"testt\",\"pk\":\"2\",\"_token\":\"E7ehH9PQV0C01ddz0xxEDTDGQlke9f7vhqJm5FpE\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2022-06-08 04:28:27', '2022-06-08 04:28:27');
INSERT INTO `admin_operation_log` VALUES (657, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"E7ehH9PQV0C01ddz0xxEDTDGQlke9f7vhqJm5FpE\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-06-08 04:28:50', '2022-06-08 04:28:50');
INSERT INTO `admin_operation_log` VALUES (658, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"E7ehH9PQV0C01ddz0xxEDTDGQlke9f7vhqJm5FpE\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-06-08 04:28:51', '2022-06-08 04:28:51');
INSERT INTO `admin_operation_log` VALUES (659, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-08 04:29:24', '2022-06-08 04:29:24');
INSERT INTO `admin_operation_log` VALUES (660, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"name\":\"price\",\"value\":\"0asd\",\"pk\":\"2\",\"_token\":\"E7ehH9PQV0C01ddz0xxEDTDGQlke9f7vhqJm5FpE\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2022-06-08 04:29:29', '2022-06-08 04:29:29');
INSERT INTO `admin_operation_log` VALUES (661, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"name\":\"price\",\"value\":\"123\",\"pk\":\"2\",\"_token\":\"E7ehH9PQV0C01ddz0xxEDTDGQlke9f7vhqJm5FpE\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2022-06-08 04:29:34', '2022-06-08 04:29:34');
INSERT INTO `admin_operation_log` VALUES (662, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-08 04:31:33', '2022-06-08 04:31:33');
INSERT INTO `admin_operation_log` VALUES (663, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:31:47', '2022-06-08 04:31:47');
INSERT INTO `admin_operation_log` VALUES (664, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\"}', '2022-06-08 04:32:00', '2022-06-08 04:32:00');
INSERT INTO `admin_operation_log` VALUES (665, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\"}', '2022-06-08 04:32:28', '2022-06-08 04:32:28');
INSERT INTO `admin_operation_log` VALUES (666, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\"}', '2022-06-08 04:32:41', '2022-06-08 04:32:41');
INSERT INTO `admin_operation_log` VALUES (667, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\"}', '2022-06-08 04:32:51', '2022-06-08 04:32:51');
INSERT INTO `admin_operation_log` VALUES (668, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"category_id\":\"admin\",\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:32:54', '2022-06-08 04:32:54');
INSERT INTO `admin_operation_log` VALUES (669, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:33:02', '2022-06-08 04:33:02');
INSERT INTO `admin_operation_log` VALUES (670, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\"}', '2022-06-08 04:33:50', '2022-06-08 04:33:50');
INSERT INTO `admin_operation_log` VALUES (671, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"status\":[\"0\"],\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:33:54', '2022-06-08 04:33:54');
INSERT INTO `admin_operation_log` VALUES (672, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:33:57', '2022-06-08 04:33:57');
INSERT INTO `admin_operation_log` VALUES (673, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\"}', '2022-06-08 04:34:51', '2022-06-08 04:34:51');
INSERT INTO `admin_operation_log` VALUES (674, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\"}', '2022-06-08 04:36:21', '2022-06-08 04:36:21');
INSERT INTO `admin_operation_log` VALUES (675, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\"}', '2022-06-08 04:36:58', '2022-06-08 04:36:58');
INSERT INTO `admin_operation_log` VALUES (676, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"_scope_\":\"category\",\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:37:01', '2022-06-08 04:37:01');
INSERT INTO `admin_operation_log` VALUES (677, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:37:04', '2022-06-08 04:37:04');
INSERT INTO `admin_operation_log` VALUES (678, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:37:11', '2022-06-08 04:37:11');
INSERT INTO `admin_operation_log` VALUES (679, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\"}', '2022-06-08 04:38:17', '2022-06-08 04:38:17');
INSERT INTO `admin_operation_log` VALUES (680, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\"}', '2022-06-08 04:38:41', '2022-06-08 04:38:41');
INSERT INTO `admin_operation_log` VALUES (681, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\"}', '2022-06-08 04:38:47', '2022-06-08 04:38:47');
INSERT INTO `admin_operation_log` VALUES (682, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"category_id\":\"admin\",\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:38:53', '2022-06-08 04:38:53');
INSERT INTO `admin_operation_log` VALUES (683, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:38:56', '2022-06-08 04:38:56');
INSERT INTO `admin_operation_log` VALUES (684, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\"}', '2022-06-08 04:39:53', '2022-06-08 04:39:53');
INSERT INTO `admin_operation_log` VALUES (685, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:41:30', '2022-06-08 04:41:30');
INSERT INTO `admin_operation_log` VALUES (686, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\"}', '2022-06-08 04:41:53', '2022-06-08 04:41:53');
INSERT INTO `admin_operation_log` VALUES (687, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\"}', '2022-06-08 04:43:09', '2022-06-08 04:43:09');
INSERT INTO `admin_operation_log` VALUES (688, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"id\":null,\"created_at\":{\"start\":\"2022-06-09 00:00:00\",\"end\":\"2022-06-10 00:01:00\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:43:16', '2022-06-08 04:43:16');
INSERT INTO `admin_operation_log` VALUES (689, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"id\":null,\"created_at\":{\"start\":\"2022-06-09 00:00:00\",\"end\":\"2022-06-10 00:01:00\"}}', '2022-06-08 04:44:17', '2022-06-08 04:44:17');
INSERT INTO `admin_operation_log` VALUES (690, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"id\":null,\"created_at\":{\"start\":\"2022-06-09 00:00:00\",\"end\":\"2022-06-10 00:01:00\"}}', '2022-06-08 04:44:23', '2022-06-08 04:44:23');
INSERT INTO `admin_operation_log` VALUES (691, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"id\":null,\"created_at\":{\"start\":\"2022-06-09 00:00:00\",\"end\":\"2022-06-10 00:01:00\"}}', '2022-06-08 04:44:36', '2022-06-08 04:44:36');
INSERT INTO `admin_operation_log` VALUES (692, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"id\":null,\"created_at\":{\"start\":\"2022-06-09 00:00:00\",\"end\":\"2022-06-10 00:01:00\"}}', '2022-06-08 04:45:10', '2022-06-08 04:45:10');
INSERT INTO `admin_operation_log` VALUES (693, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"id\":null,\"created_at\":{\"start\":\"2022-06-09 00:00:00\",\"end\":\"2022-06-10 00:01:00\"}}', '2022-06-08 04:45:30', '2022-06-08 04:45:30');
INSERT INTO `admin_operation_log` VALUES (694, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"id\":null,\"created_at\":{\"start\":\"2022-06-09 00:00:00\",\"end\":\"2022-06-10 00:01:00\"}}', '2022-06-08 04:46:18', '2022-06-08 04:46:18');
INSERT INTO `admin_operation_log` VALUES (695, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"created_at\":{\"start\":\"2022-06-09 00:00:00\",\"end\":\"2022-06-10 00:01:00\"},\"id\":null,\"category_id\":\"0\",\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:46:28', '2022-06-08 04:46:28');
INSERT INTO `admin_operation_log` VALUES (696, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"created_at\":{\"start\":\"2022-06-09 00:00:00\",\"end\":\"2022-06-10 00:01:00\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:46:30', '2022-06-08 04:46:30');
INSERT INTO `admin_operation_log` VALUES (697, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"created_at\":{\"start\":\"2022-06-09 00:00:00\",\"end\":\"2022-06-10 00:01:00\"}}', '2022-06-08 04:46:49', '2022-06-08 04:46:49');
INSERT INTO `admin_operation_log` VALUES (698, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"created_at\":{\"start\":\"2022-06-09 00:00:00\",\"end\":\"2022-06-10 00:01:00\"}}', '2022-06-08 04:46:58', '2022-06-08 04:46:58');
INSERT INTO `admin_operation_log` VALUES (699, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"created_at\":{\"start\":\"2022-06-09 00:00:00\",\"end\":\"2022-06-10 00:01:00\"}}', '2022-06-08 04:47:09', '2022-06-08 04:47:09');
INSERT INTO `admin_operation_log` VALUES (700, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"created_at\":{\"start\":\"2022-06-09 00:00:00\",\"end\":\"2022-06-10 00:01:00\"}}', '2022-06-08 04:47:29', '2022-06-08 04:47:29');
INSERT INTO `admin_operation_log` VALUES (701, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"created_at\":{\"start\":\"2022-06-09 00:00:00\",\"end\":\"2022-06-10 00:01:00\"},\"id\":null,\"category_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:47:33', '2022-06-08 04:47:33');
INSERT INTO `admin_operation_log` VALUES (702, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"created_at\":{\"start\":\"2022-06-09 00:00:00\",\"end\":\"2022-06-10 00:01:00\"},\"_pjax\":\"#pjax-container\",\"id\":null,\"category_id\":\"2\"}', '2022-06-08 04:47:37', '2022-06-08 04:47:37');
INSERT INTO `admin_operation_log` VALUES (703, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"created_at\":{\"start\":\"2022-06-09 00:00:00\",\"end\":\"2022-06-10 00:01:00\"},\"id\":null,\"category_id\":\"2\"}', '2022-06-08 04:48:06', '2022-06-08 04:48:06');
INSERT INTO `admin_operation_log` VALUES (704, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"created_at\":{\"start\":\"2022-06-09 00:00:00\",\"end\":\"2022-06-10 00:01:00\"},\"id\":null,\"category_id\":\"2\"}', '2022-06-08 04:48:48', '2022-06-08 04:48:48');
INSERT INTO `admin_operation_log` VALUES (705, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"created_at\":{\"start\":\"2022-06-09 00:00:00\",\"end\":\"2022-06-10 00:01:00\"},\"id\":null,\"category_id\":\"2\",\"9615e8be64f11ba3259ec0f7c318fecd\":\"\\u0444\\u044b\\u0432\\u0444\\u044b\\u0432\",\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:48:51', '2022-06-08 04:48:51');
INSERT INTO `admin_operation_log` VALUES (706, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"created_at\":{\"start\":\"2022-06-09 00:00:00\",\"end\":\"2022-06-10 00:01:00\"},\"id\":null,\"category_id\":\"2\",\"9615e8be64f11ba3259ec0f7c318fecd\":\"\\u0444\\u044b\\u0432\\u0444\\u044b\\u0432\"}', '2022-06-08 04:49:07', '2022-06-08 04:49:07');
INSERT INTO `admin_operation_log` VALUES (707, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"created_at\":{\"start\":\"2022-06-09 00:00:00\",\"end\":\"2022-06-10 00:01:00\"},\"id\":null,\"category_id\":\"2\",\"9615e8be64f11ba3259ec0f7c318fecd\":\"\\u0444\\u044b\\u0432\\u0444\\u044b\\u0432\"}', '2022-06-08 04:49:15', '2022-06-08 04:49:15');
INSERT INTO `admin_operation_log` VALUES (708, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"created_at\":{\"start\":\"2022-06-09 00:00:00\",\"end\":\"2022-06-10 00:01:00\"},\"id\":null,\"category_id\":\"2\",\"9615e8be64f11ba3259ec0f7c318fecd\":\"\\u0444\\u044b\\u0432\\u0444\\u044b\\u0432\"}', '2022-06-08 04:49:57', '2022-06-08 04:49:57');
INSERT INTO `admin_operation_log` VALUES (709, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"created_at\":{\"start\":\"2022-06-09 00:00:00\",\"end\":\"2022-06-10 00:01:00\"},\"id\":null,\"category_id\":\"2\",\"9615e8be64f11ba3259ec0f7c318fecd\":\"\\u0444\\u044b\\u0432\\u0444\\u044b\\u0432\"}', '2022-06-08 04:51:18', '2022-06-08 04:51:18');
INSERT INTO `admin_operation_log` VALUES (710, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"created_at\":{\"start\":\"2022-06-09 00:00:00\",\"end\":\"2022-06-10 00:01:00\"},\"id\":null,\"category_id\":\"2\",\"9615e8be64f11ba3259ec0f7c318fecd\":\"admin\",\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:51:22', '2022-06-08 04:51:22');
INSERT INTO `admin_operation_log` VALUES (711, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"created_at\":{\"start\":\"2022-06-09 00:00:00\",\"end\":\"2022-06-10 00:01:00\"},\"id\":null,\"category_id\":\"2\",\"9615e8be64f11ba3259ec0f7c318fecd\":\"admin\"}', '2022-06-08 04:51:28', '2022-06-08 04:51:28');
INSERT INTO `admin_operation_log` VALUES (712, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"created_at\":{\"start\":\"2022-06-09 00:00:00\",\"end\":\"2022-06-10 00:01:00\"},\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:51:29', '2022-06-08 04:51:29');
INSERT INTO `admin_operation_log` VALUES (713, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"created_at\":{\"start\":\"2022-06-09 00:00:00\",\"end\":\"2022-06-10 00:01:00\"},\"_pjax\":\"#pjax-container\",\"id\":null,\"category_id\":null,\"9615e8be64f11ba3259ec0f7c318fecd\":\"adm\"}', '2022-06-08 04:51:34', '2022-06-08 04:51:34');
INSERT INTO `admin_operation_log` VALUES (714, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"created_at\":{\"start\":\"2022-06-09 00:00:00\",\"end\":\"2022-06-10 00:01:00\"},\"_pjax\":\"#pjax-container\",\"id\":null,\"category_id\":null,\"9615e8be64f11ba3259ec0f7c318fecd\":\"ad\"}', '2022-06-08 04:51:40', '2022-06-08 04:51:40');
INSERT INTO `admin_operation_log` VALUES (715, 1, 'admin/products', 'GET', '127.0.0.1', '{\"category\":\"admin\",\"created_at\":{\"start\":\"2022-06-09 00:00:00\",\"end\":\"2022-06-10 00:01:00\"},\"_pjax\":\"#pjax-container\",\"id\":null,\"category_id\":null,\"9615e8be64f11ba3259ec0f7c318fecd\":\"a\"}', '2022-06-08 04:51:43', '2022-06-08 04:51:43');
INSERT INTO `admin_operation_log` VALUES (716, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:51:46', '2022-06-08 04:51:46');
INSERT INTO `admin_operation_log` VALUES (717, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:51:49', '2022-06-08 04:51:49');
INSERT INTO `admin_operation_log` VALUES (718, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:51:50', '2022-06-08 04:51:50');
INSERT INTO `admin_operation_log` VALUES (719, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:51:53', '2022-06-08 04:51:53');
INSERT INTO `admin_operation_log` VALUES (720, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-06-08 04:52:02', '2022-06-08 04:52:02');
INSERT INTO `admin_operation_log` VALUES (721, 1, 'admin/categories/4', 'PUT', '127.0.0.1', '{\"name\":\"name\",\"value\":\"cat1\",\"pk\":\"4\",\"_token\":\"E7ehH9PQV0C01ddz0xxEDTDGQlke9f7vhqJm5FpE\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2022-06-08 04:52:14', '2022-06-08 04:52:14');
INSERT INTO `admin_operation_log` VALUES (722, 1, 'admin/categories/5', 'PUT', '127.0.0.1', '{\"name\":\"name\",\"value\":\"cat2\",\"pk\":\"5\",\"_token\":\"E7ehH9PQV0C01ddz0xxEDTDGQlke9f7vhqJm5FpE\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2022-06-08 04:52:16', '2022-06-08 04:52:16');
INSERT INTO `admin_operation_log` VALUES (723, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:52:19', '2022-06-08 04:52:19');
INSERT INTO `admin_operation_log` VALUES (724, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:52:25', '2022-06-08 04:52:25');
INSERT INTO `admin_operation_log` VALUES (725, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"name\":\"Inno 3D \\u2014 6GB GeForce GTX1660Ti Gaming OC X2 GDDR6\",\"category_id\":\"2\",\"subcategory_id\":\"cat1\",\"brand_id\":\"2\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"intel\",\"videocards\",null],\"status\":\"off\",\"price\":\"0.00\",\"in_stock\":\"0\",\"description\":null,\"is_discount\":\"0\",\"options\":{\"3\":{\"option_id\":\"3\",\"value\":\"HDMI, DisplayPort x3\",\"id\":\"3\",\"_remove_\":\"0\"},\"4\":{\"option_id\":\"4\",\"value\":\"1770 \\u041c\\u0413\\u0446\",\"id\":\"4\",\"_remove_\":\"0\"},\"5\":{\"option_id\":\"5\",\"value\":\"6144 \\u041c\\u0411\",\"id\":\"5\",\"_remove_\":\"0\"},\"6\":{\"option_id\":\"6\",\"value\":\"GDDR6\",\"id\":\"6\",\"_remove_\":\"0\"},\"7\":{\"option_id\":\"8\",\"value\":\"192 \\u0431\\u0438\\u0442\",\"id\":\"7\",\"_remove_\":\"0\"}},\"_token\":\"E7ehH9PQV0C01ddz0xxEDTDGQlke9f7vhqJm5FpE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2022-06-08 04:52:42', '2022-06-08 04:52:42');
INSERT INTO `admin_operation_log` VALUES (726, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-08 04:52:42', '2022-06-08 04:52:42');
INSERT INTO `admin_operation_log` VALUES (727, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-08 04:53:18', '2022-06-08 04:53:18');
INSERT INTO `admin_operation_log` VALUES (728, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"name\":\"Inno 3D \\u2014 6GB GeForce GTX1660Ti Gaming OC X2 GDDR6\",\"category_id\":\"2\",\"subcategory_id\":\"4\",\"brand_id\":\"2\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"intel\",\"videocards\",null],\"status\":\"off\",\"price\":\"0.00\",\"in_stock\":\"0\",\"description\":null,\"is_discount\":\"0\",\"options\":{\"3\":{\"option_id\":\"3\",\"value\":\"HDMI, DisplayPort x3\",\"id\":\"3\",\"_remove_\":\"0\"},\"4\":{\"option_id\":\"4\",\"value\":\"1770 \\u041c\\u0413\\u0446\",\"id\":\"4\",\"_remove_\":\"0\"},\"5\":{\"option_id\":\"5\",\"value\":\"6144 \\u041c\\u0411\",\"id\":\"5\",\"_remove_\":\"0\"},\"6\":{\"option_id\":\"6\",\"value\":\"GDDR6\",\"id\":\"6\",\"_remove_\":\"0\"},\"7\":{\"option_id\":\"8\",\"value\":\"192 \\u0431\\u0438\\u0442\",\"id\":\"7\",\"_remove_\":\"0\"}},\"_token\":\"E7ehH9PQV0C01ddz0xxEDTDGQlke9f7vhqJm5FpE\",\"_method\":\"PUT\"}', '2022-06-08 04:53:25', '2022-06-08 04:53:25');
INSERT INTO `admin_operation_log` VALUES (729, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-08 04:53:25', '2022-06-08 04:53:25');
INSERT INTO `admin_operation_log` VALUES (730, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:53:31', '2022-06-08 04:53:31');
INSERT INTO `admin_operation_log` VALUES (731, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-08 04:53:59', '2022-06-08 04:53:59');
INSERT INTO `admin_operation_log` VALUES (732, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"name\":\"Inno 3D \\u2014 6GB GeForce GTX1660Ti Gaming OC X2 GDDR6\",\"category_id\":\"2\",\"subcategory_id\":\"cat1\",\"brand_id\":\"2\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"intel\",\"videocards\",null],\"status\":\"off\",\"price\":\"0.00\",\"in_stock\":\"0\",\"description\":null,\"is_discount\":\"0\",\"options\":{\"3\":{\"option_id\":\"3\",\"value\":\"HDMI, DisplayPort x3\",\"id\":\"3\",\"_remove_\":\"0\"},\"4\":{\"option_id\":\"4\",\"value\":\"1770 \\u041c\\u0413\\u0446\",\"id\":\"4\",\"_remove_\":\"0\"},\"5\":{\"option_id\":\"5\",\"value\":\"6144 \\u041c\\u0411\",\"id\":\"5\",\"_remove_\":\"0\"},\"6\":{\"option_id\":\"6\",\"value\":\"GDDR6\",\"id\":\"6\",\"_remove_\":\"0\"},\"7\":{\"option_id\":\"8\",\"value\":\"192 \\u0431\\u0438\\u0442\",\"id\":\"7\",\"_remove_\":\"0\"}},\"_token\":\"E7ehH9PQV0C01ddz0xxEDTDGQlke9f7vhqJm5FpE\",\"_method\":\"PUT\"}', '2022-06-08 04:54:09', '2022-06-08 04:54:09');
INSERT INTO `admin_operation_log` VALUES (733, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-08 04:54:09', '2022-06-08 04:54:09');
INSERT INTO `admin_operation_log` VALUES (734, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-08 04:54:19', '2022-06-08 04:54:19');
INSERT INTO `admin_operation_log` VALUES (735, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-08 04:54:37', '2022-06-08 04:54:37');
INSERT INTO `admin_operation_log` VALUES (736, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"name\":\"Inno 3D \\u2014 6GB GeForce GTX1660Ti Gaming OC X2 GDDR6\",\"category_id\":\"2\",\"subcategory_id\":\"cat1\",\"brand_id\":\"2\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"intel\",\"videocards\",null],\"status\":\"off\",\"price\":\"0.00\",\"in_stock\":\"0\",\"description\":null,\"is_discount\":\"0\",\"options\":{\"3\":{\"option_id\":\"3\",\"value\":\"HDMI, DisplayPort x3\",\"id\":\"3\",\"_remove_\":\"0\"},\"4\":{\"option_id\":\"4\",\"value\":\"1770 \\u041c\\u0413\\u0446\",\"id\":\"4\",\"_remove_\":\"0\"},\"5\":{\"option_id\":\"5\",\"value\":\"6144 \\u041c\\u0411\",\"id\":\"5\",\"_remove_\":\"0\"},\"6\":{\"option_id\":\"6\",\"value\":\"GDDR6\",\"id\":\"6\",\"_remove_\":\"0\"},\"7\":{\"option_id\":\"8\",\"value\":\"192 \\u0431\\u0438\\u0442\",\"id\":\"7\",\"_remove_\":\"0\"}},\"_token\":\"E7ehH9PQV0C01ddz0xxEDTDGQlke9f7vhqJm5FpE\",\"_method\":\"PUT\"}', '2022-06-08 04:55:13', '2022-06-08 04:55:13');
INSERT INTO `admin_operation_log` VALUES (737, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-08 04:55:14', '2022-06-08 04:55:14');
INSERT INTO `admin_operation_log` VALUES (738, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-08 04:55:34', '2022-06-08 04:55:34');
INSERT INTO `admin_operation_log` VALUES (739, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"name\":\"Inno 3D \\u2014 6GB GeForce GTX1660Ti Gaming OC X2 GDDR6\",\"category_id\":\"2\",\"subcategory\":\"cat1\",\"brand_id\":\"2\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"intel\",\"videocards\",null],\"status\":\"off\",\"price\":\"0.00\",\"in_stock\":\"0\",\"description\":null,\"is_discount\":\"0\",\"options\":{\"3\":{\"option_id\":\"3\",\"value\":\"HDMI, DisplayPort x3\",\"id\":\"3\",\"_remove_\":\"0\"},\"4\":{\"option_id\":\"4\",\"value\":\"1770 \\u041c\\u0413\\u0446\",\"id\":\"4\",\"_remove_\":\"0\"},\"5\":{\"option_id\":\"5\",\"value\":\"6144 \\u041c\\u0411\",\"id\":\"5\",\"_remove_\":\"0\"},\"6\":{\"option_id\":\"6\",\"value\":\"GDDR6\",\"id\":\"6\",\"_remove_\":\"0\"},\"7\":{\"option_id\":\"8\",\"value\":\"192 \\u0431\\u0438\\u0442\",\"id\":\"7\",\"_remove_\":\"0\"}},\"_token\":\"E7ehH9PQV0C01ddz0xxEDTDGQlke9f7vhqJm5FpE\",\"_method\":\"PUT\"}', '2022-06-08 04:55:41', '2022-06-08 04:55:41');
INSERT INTO `admin_operation_log` VALUES (740, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-08 04:55:41', '2022-06-08 04:55:41');
INSERT INTO `admin_operation_log` VALUES (741, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-08 04:57:18', '2022-06-08 04:57:18');
INSERT INTO `admin_operation_log` VALUES (742, 1, 'admin/products', 'GET', '127.0.0.1', '{\"id\":null,\"0c287e21fd1ba9b4857453d4971679b2\":null,\"9ea3e3a6172fc8a5a416f1ec4d6d0f25\":\"c\",\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:57:22', '2022-06-08 04:57:22');
INSERT INTO `admin_operation_log` VALUES (743, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"0c287e21fd1ba9b4857453d4971679b2\":null,\"9ea3e3a6172fc8a5a416f1ec4d6d0f25\":\"a\"}', '2022-06-08 04:57:25', '2022-06-08 04:57:25');
INSERT INTO `admin_operation_log` VALUES (744, 1, 'admin/products', 'GET', '127.0.0.1', '{\"id\":null,\"0c287e21fd1ba9b4857453d4971679b2\":null,\"9ea3e3a6172fc8a5a416f1ec4d6d0f25\":\"a\"}', '2022-06-08 04:57:40', '2022-06-08 04:57:40');
INSERT INTO `admin_operation_log` VALUES (745, 1, 'admin/products', 'GET', '127.0.0.1', '{\"id\":null,\"0c287e21fd1ba9b4857453d4971679b2\":null,\"9ea3e3a6172fc8a5a416f1ec4d6d0f25\":\"a\"}', '2022-06-08 04:58:10', '2022-06-08 04:58:10');
INSERT INTO `admin_operation_log` VALUES (746, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:58:11', '2022-06-08 04:58:11');
INSERT INTO `admin_operation_log` VALUES (747, 1, 'admin/products', 'GET', '127.0.0.1', '{\"id\":null,\"0c287e21fd1ba9b4857453d4971679b2\":null,\"9ea3e3a6172fc8a5a416f1ec4d6d0f25\":\"a\",\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:58:13', '2022-06-08 04:58:13');
INSERT INTO `admin_operation_log` VALUES (748, 1, 'admin/products', 'GET', '127.0.0.1', '{\"id\":null,\"0c287e21fd1ba9b4857453d4971679b2\":null,\"9ea3e3a6172fc8a5a416f1ec4d6d0f25\":\"a\"}', '2022-06-08 04:58:13', '2022-06-08 04:58:13');
INSERT INTO `admin_operation_log` VALUES (749, 1, 'admin/products', 'GET', '127.0.0.1', '{\"9ea3e3a6172fc8a5a416f1ec4d6d0f25\":\"a\",\"id\":null,\"name\":\"ss\",\"afd91fb0dd320a6e323184240f79cb09\":null,\"ec57f009c53974002b45af9c97cb050a\":null,\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:58:22', '2022-06-08 04:58:22');
INSERT INTO `admin_operation_log` VALUES (750, 1, 'admin/products', 'GET', '127.0.0.1', '{\"9ea3e3a6172fc8a5a416f1ec4d6d0f25\":\"a\",\"id\":null,\"name\":\"ss\",\"afd91fb0dd320a6e323184240f79cb09\":null,\"ec57f009c53974002b45af9c97cb050a\":null}', '2022-06-08 04:58:25', '2022-06-08 04:58:25');
INSERT INTO `admin_operation_log` VALUES (751, 1, 'admin/products', 'GET', '127.0.0.1', '{\"9ea3e3a6172fc8a5a416f1ec4d6d0f25\":\"a\",\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:58:31', '2022-06-08 04:58:31');
INSERT INTO `admin_operation_log` VALUES (752, 1, 'admin/products', 'GET', '127.0.0.1', '{\"9ea3e3a6172fc8a5a416f1ec4d6d0f25\":\"a\",\"_pjax\":\"#pjax-container\",\"id\":null,\"name\":\"tt\",\"afd91fb0dd320a6e323184240f79cb09\":null,\"ec57f009c53974002b45af9c97cb050a\":null}', '2022-06-08 04:58:36', '2022-06-08 04:58:36');
INSERT INTO `admin_operation_log` VALUES (753, 1, 'admin/products', 'GET', '127.0.0.1', '{\"9ea3e3a6172fc8a5a416f1ec4d6d0f25\":\"a\",\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:58:38', '2022-06-08 04:58:38');
INSERT INTO `admin_operation_log` VALUES (754, 1, 'admin/products', 'GET', '127.0.0.1', '{\"9ea3e3a6172fc8a5a416f1ec4d6d0f25\":\"a\",\"_pjax\":\"#pjax-container\",\"id\":null,\"name\":\"inno\",\"afd91fb0dd320a6e323184240f79cb09\":null,\"ec57f009c53974002b45af9c97cb050a\":null}', '2022-06-08 04:58:46', '2022-06-08 04:58:46');
INSERT INTO `admin_operation_log` VALUES (755, 1, 'admin/products', 'GET', '127.0.0.1', '{\"9ea3e3a6172fc8a5a416f1ec4d6d0f25\":\"a\",\"_pjax\":\"#pjax-container\"}', '2022-06-08 04:58:48', '2022-06-08 04:58:48');
INSERT INTO `admin_operation_log` VALUES (756, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"name\":\"name\",\"value\":\"aasd\",\"pk\":\"2\",\"_token\":\"E7ehH9PQV0C01ddz0xxEDTDGQlke9f7vhqJm5FpE\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2022-06-08 04:59:58', '2022-06-08 04:59:58');
INSERT INTO `admin_operation_log` VALUES (757, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"name\":\"name\",\"value\":\"asdas\",\"pk\":\"3\",\"_token\":\"E7ehH9PQV0C01ddz0xxEDTDGQlke9f7vhqJm5FpE\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2022-06-08 05:00:03', '2022-06-08 05:00:03');
INSERT INTO `admin_operation_log` VALUES (758, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"name\":\"name\",\"value\":\"inno db\",\"pk\":\"3\",\"_token\":\"E7ehH9PQV0C01ddz0xxEDTDGQlke9f7vhqJm5FpE\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2022-06-08 05:00:06', '2022-06-08 05:00:06');
INSERT INTO `admin_operation_log` VALUES (759, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-09 03:44:01', '2022-06-09 03:44:01');
INSERT INTO `admin_operation_log` VALUES (760, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 03:44:09', '2022-06-09 03:44:09');
INSERT INTO `admin_operation_log` VALUES (761, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-09 05:15:52', '2022-06-09 05:15:52');
INSERT INTO `admin_operation_log` VALUES (762, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 05:15:55', '2022-06-09 05:15:55');
INSERT INTO `admin_operation_log` VALUES (763, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"name\":\"name\",\"value\":\"inno db \\u0412\\u0438\\u0434\\u0435\\u043e\\u043a\\u0430\\u0440\\u0442a 4gb FLERSH MOB ULTRA\",\"pk\":\"3\",\"_token\":\"t12i0g0OGSWM7wZ161raf63qXqa2opT2IvU04pLu\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2022-06-09 05:16:12', '2022-06-09 05:16:12');
INSERT INTO `admin_operation_log` VALUES (764, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 06:01:56', '2022-06-09 06:01:56');
INSERT INTO `admin_operation_log` VALUES (765, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"test\",\"category_id\":\"2\",\"subcategory\":\"cat1\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"tag1\",\"tag2\",null],\"status\":\"on\",\"price\":\"970000.00\",\"in_stock\":\"2\",\"description\":null,\"is_discount\":\"0\",\"_token\":\"t12i0g0OGSWM7wZ161raf63qXqa2opT2IvU04pLu\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2022-06-09 06:02:24', '2022-06-09 06:02:24');
INSERT INTO `admin_operation_log` VALUES (766, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-09 06:02:25', '2022-06-09 06:02:25');
INSERT INTO `admin_operation_log` VALUES (767, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"test\",\"category_id\":\"2\",\"subcategory\":\"cat1\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"tag1\",\"tag2\",null],\"status\":\"on\",\"price\":\"970000.00\",\"in_stock\":\"2\",\"description\":null,\"is_discount\":\"0\",\"_token\":\"t12i0g0OGSWM7wZ161raf63qXqa2opT2IvU04pLu\"}', '2022-06-09 06:02:44', '2022-06-09 06:02:44');
INSERT INTO `admin_operation_log` VALUES (768, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-09 06:02:45', '2022-06-09 06:02:45');
INSERT INTO `admin_operation_log` VALUES (769, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-09 06:02:49', '2022-06-09 06:02:49');
INSERT INTO `admin_operation_log` VALUES (770, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"asdasdds\",\"category_id\":\"2\",\"subcategory\":\"cat2\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[null],\"status\":\"on\",\"price\":\"970000.00\",\"in_stock\":\"5\",\"description\":null,\"is_discount\":\"0\",\"_token\":\"t12i0g0OGSWM7wZ161raf63qXqa2opT2IvU04pLu\"}', '2022-06-09 06:03:10', '2022-06-09 06:03:10');
INSERT INTO `admin_operation_log` VALUES (771, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-09 06:03:11', '2022-06-09 06:03:11');
INSERT INTO `admin_operation_log` VALUES (772, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-09 06:03:59', '2022-06-09 06:03:59');
INSERT INTO `admin_operation_log` VALUES (773, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"admin\",\"category_id\":\"2\",\"subcategory_id\":\"cat1\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[null],\"status\":\"on\",\"price\":\"970000.00\",\"in_stock\":\"4\",\"description\":null,\"is_discount\":\"0\",\"_token\":\"t12i0g0OGSWM7wZ161raf63qXqa2opT2IvU04pLu\"}', '2022-06-09 06:04:22', '2022-06-09 06:04:22');
INSERT INTO `admin_operation_log` VALUES (774, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-09 06:04:22', '2022-06-09 06:04:22');
INSERT INTO `admin_operation_log` VALUES (775, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"admin\",\"category_id\":\"2\",\"subcategory_id\":\"cat1\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[null],\"status\":\"on\",\"price\":\"970000.00\",\"in_stock\":\"4\",\"description\":null,\"is_discount\":\"0\",\"_token\":\"t12i0g0OGSWM7wZ161raf63qXqa2opT2IvU04pLu\"}', '2022-06-09 06:06:08', '2022-06-09 06:06:08');
INSERT INTO `admin_operation_log` VALUES (776, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"admin\",\"category_id\":\"2\",\"subcategory_id\":\"cat1\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[null],\"status\":\"on\",\"price\":\"970000.00\",\"in_stock\":\"4\",\"description\":null,\"is_discount\":\"0\",\"_token\":\"t12i0g0OGSWM7wZ161raf63qXqa2opT2IvU04pLu\"}', '2022-06-09 06:06:13', '2022-06-09 06:06:13');
INSERT INTO `admin_operation_log` VALUES (777, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-09 06:06:17', '2022-06-09 06:06:17');
INSERT INTO `admin_operation_log` VALUES (778, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 06:06:19', '2022-06-09 06:06:19');
INSERT INTO `admin_operation_log` VALUES (779, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"asdsad\",\"category_id\":\"2\",\"subcategory_id\":\"cat1\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"tag1\",\"tag2\",null],\"status\":\"on\",\"price\":\"970000.00\",\"in_stock\":\"4\",\"description\":null,\"is_discount\":\"0\",\"_token\":\"t12i0g0OGSWM7wZ161raf63qXqa2opT2IvU04pLu\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2022-06-09 06:06:37', '2022-06-09 06:06:37');
INSERT INTO `admin_operation_log` VALUES (780, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"asdsad\",\"category_id\":\"2\",\"subcategory_id\":\"cat1\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"tag1\",\"tag2\",null],\"status\":\"on\",\"price\":\"970000.00\",\"in_stock\":\"4\",\"description\":null,\"is_discount\":\"0\",\"_token\":\"t12i0g0OGSWM7wZ161raf63qXqa2opT2IvU04pLu\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2022-06-09 06:06:39', '2022-06-09 06:06:39');
INSERT INTO `admin_operation_log` VALUES (781, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"asdsad\",\"category_id\":\"2\",\"subcategory_id\":\"cat1\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"tag1\",\"tag2\",null],\"status\":\"on\",\"price\":\"970000.00\",\"in_stock\":\"4\",\"description\":null,\"is_discount\":\"0\",\"_token\":\"t12i0g0OGSWM7wZ161raf63qXqa2opT2IvU04pLu\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2022-06-09 06:06:43', '2022-06-09 06:06:43');
INSERT INTO `admin_operation_log` VALUES (782, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-09 06:08:12', '2022-06-09 06:08:12');
INSERT INTO `admin_operation_log` VALUES (783, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 06:08:15', '2022-06-09 06:08:15');
INSERT INTO `admin_operation_log` VALUES (784, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-09 06:09:34', '2022-06-09 06:09:34');
INSERT INTO `admin_operation_log` VALUES (785, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-09 06:11:08', '2022-06-09 06:11:08');
INSERT INTO `admin_operation_log` VALUES (786, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"admin\",\"category_id\":\"2\",\"subcategory_id\":\"4\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[null],\"status\":\"on\",\"price\":null,\"in_stock\":\"0\",\"description\":null,\"is_discount\":\"0\",\"_token\":\"t12i0g0OGSWM7wZ161raf63qXqa2opT2IvU04pLu\"}', '2022-06-09 06:11:19', '2022-06-09 06:11:19');
INSERT INTO `admin_operation_log` VALUES (787, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-09 06:11:42', '2022-06-09 06:11:42');
INSERT INTO `admin_operation_log` VALUES (788, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 06:11:43', '2022-06-09 06:11:43');
INSERT INTO `admin_operation_log` VALUES (789, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"videocard\",\"category_id\":\"2\",\"subcategory_id\":\"4\",\"brand_id\":\"2\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"tag1\",\"tag2\",\"tag3\",null],\"status\":\"on\",\"price\":\"970000.00\",\"in_stock\":\"4\",\"description\":null,\"is_discount\":\"0\",\"_token\":\"t12i0g0OGSWM7wZ161raf63qXqa2opT2IvU04pLu\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2022-06-09 06:12:07', '2022-06-09 06:12:07');
INSERT INTO `admin_operation_log` VALUES (790, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-09 06:12:07', '2022-06-09 06:12:07');
INSERT INTO `admin_operation_log` VALUES (791, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 06:21:28', '2022-06-09 06:21:28');
INSERT INTO `admin_operation_log` VALUES (792, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"iphone 13 PRO MAX\",\"category_id\":\"2\",\"subcategory_id\":\"5\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"tag1\",\"tag2\",null],\"status\":\"on\",\"price\":\"9800000.00\",\"in_stock\":\"4\",\"description\":null,\"is_discount\":\"0\",\"_token\":\"t12i0g0OGSWM7wZ161raf63qXqa2opT2IvU04pLu\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2022-06-09 06:22:01', '2022-06-09 06:22:01');
INSERT INTO `admin_operation_log` VALUES (793, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-06-09 06:22:01', '2022-06-09 06:22:01');
INSERT INTO `admin_operation_log` VALUES (794, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"iphone 13 PRO MAX\",\"category_id\":\"2\",\"subcategory_id\":\"5\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"tag1\",\"tag2\",null],\"status\":\"on\",\"price\":\"9800000.00\",\"in_stock\":\"4\",\"description\":null,\"is_discount\":\"0\",\"_token\":\"t12i0g0OGSWM7wZ161raf63qXqa2opT2IvU04pLu\"}', '2022-06-09 06:23:14', '2022-06-09 06:23:14');
INSERT INTO `admin_operation_log` VALUES (795, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-09 06:23:14', '2022-06-09 06:23:14');
INSERT INTO `admin_operation_log` VALUES (796, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 06:24:23', '2022-06-09 06:24:23');
INSERT INTO `admin_operation_log` VALUES (797, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"admin\",\"category_id\":\"2\",\"subcategory_id\":\"5\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"tag1\",\"tag2\",null],\"status\":\"on\",\"price\":\"15000000.00\",\"in_stock\":\"9\",\"description\":null,\"is_discount\":\"0\",\"_token\":\"t12i0g0OGSWM7wZ161raf63qXqa2opT2IvU04pLu\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2022-06-09 06:24:59', '2022-06-09 06:24:59');
INSERT INTO `admin_operation_log` VALUES (798, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-09 06:24:59', '2022-06-09 06:24:59');
INSERT INTO `admin_operation_log` VALUES (799, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 07:05:17', '2022-06-09 07:05:17');
INSERT INTO `admin_operation_log` VALUES (800, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"test2\",\"category_id\":\"2\",\"subcategory_id\":\"5\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"tag1\",\"tag4\",null],\"status\":\"on\",\"price\":\"850000.00\",\"in_stock\":\"43\",\"description\":null,\"is_discount\":\"0\",\"_token\":\"t12i0g0OGSWM7wZ161raf63qXqa2opT2IvU04pLu\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2022-06-09 07:05:38', '2022-06-09 07:05:38');
INSERT INTO `admin_operation_log` VALUES (801, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-09 07:05:38', '2022-06-09 07:05:38');
INSERT INTO `admin_operation_log` VALUES (802, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 07:09:44', '2022-06-09 07:09:44');
INSERT INTO `admin_operation_log` VALUES (803, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"test4\",\"category_id\":\"2\",\"subcategory_id\":\"5\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"tag1\",null],\"status\":\"on\",\"price\":\"5800000.00\",\"in_stock\":\"24\",\"description\":null,\"is_discount\":\"0\",\"_token\":\"t12i0g0OGSWM7wZ161raf63qXqa2opT2IvU04pLu\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2022-06-09 07:10:13', '2022-06-09 07:10:13');
INSERT INTO `admin_operation_log` VALUES (804, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-09 07:10:13', '2022-06-09 07:10:13');
INSERT INTO `admin_operation_log` VALUES (805, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 07:10:16', '2022-06-09 07:10:16');
INSERT INTO `admin_operation_log` VALUES (806, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"test5\",\"category_id\":\"2\",\"subcategory_id\":\"4\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[null],\"status\":\"on\",\"price\":\"750000.00\",\"in_stock\":\"2\",\"description\":null,\"is_discount\":\"0\",\"_token\":\"t12i0g0OGSWM7wZ161raf63qXqa2opT2IvU04pLu\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2022-06-09 07:10:37', '2022-06-09 07:10:37');
INSERT INTO `admin_operation_log` VALUES (807, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-09 07:10:38', '2022-06-09 07:10:38');
INSERT INTO `admin_operation_log` VALUES (808, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 07:10:40', '2022-06-09 07:10:40');
INSERT INTO `admin_operation_log` VALUES (809, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"test6\",\"category_id\":\"2\",\"subcategory_id\":\"5\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"iphone\",\"12\",\"pro\",\"max\",null],\"status\":\"on\",\"price\":\"12500000.00\",\"in_stock\":\"5\",\"description\":null,\"is_discount\":\"0\",\"_token\":\"t12i0g0OGSWM7wZ161raf63qXqa2opT2IvU04pLu\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2022-06-09 07:11:07', '2022-06-09 07:11:07');
INSERT INTO `admin_operation_log` VALUES (810, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-09 07:11:07', '2022-06-09 07:11:07');
INSERT INTO `admin_operation_log` VALUES (811, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-09 10:02:00', '2022-06-09 10:02:00');
INSERT INTO `admin_operation_log` VALUES (812, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-17 04:22:21', '2022-06-17 04:22:21');
INSERT INTO `admin_operation_log` VALUES (813, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-17 04:22:33', '2022-06-17 04:22:33');
INSERT INTO `admin_operation_log` VALUES (814, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"name\":\"name\",\"value\":\"\\u0412\\u0438\\u0434\\u0435\\u043e\\u043a\\u0430\\u0440\\u0442\\u044b\",\"pk\":\"1\",\"_token\":\"bXAq5gocbsqZcKF8TZafUdD23gIy9UXukHeFUqHT\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2022-06-17 04:22:48', '2022-06-17 04:22:48');
INSERT INTO `admin_operation_log` VALUES (815, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-17 04:36:02', '2022-06-17 04:36:02');
INSERT INTO `admin_operation_log` VALUES (816, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-17 04:36:06', '2022-06-17 04:36:06');
INSERT INTO `admin_operation_log` VALUES (817, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-17 04:36:08', '2022-06-17 04:36:08');
INSERT INTO `admin_operation_log` VALUES (818, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-17 04:36:35', '2022-06-17 04:36:35');
INSERT INTO `admin_operation_log` VALUES (819, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-17 04:36:40', '2022-06-17 04:36:40');
INSERT INTO `admin_operation_log` VALUES (820, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-17 04:36:44', '2022-06-17 04:36:44');
INSERT INTO `admin_operation_log` VALUES (821, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"name\":\"aasd\",\"category_id\":\"2\",\"subcategory_id\":\"4\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"tag1\",\"tag2\",\"tag3\",null],\"status\":\"off\",\"price\":\"123.00\",\"in_stock\":\"0\",\"description\":\"<h3>\\u0425\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438 Samsung Galaxy A52 4\\/128GB Black<\\/h3>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\r\\n\\t<p>\\u041e\\u0431\\u0449\\u0438\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438 \\u0441\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d\\u0430<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u041e\\u0442\\u043f\\u0435\\u0447\\u0430\\u0442\\u043e\\u043a \\u043f\\u0430\\u043b\\u044c\\u0446\\u0430<\\/p>\\r\\n\\r\\n\\t<p>\\u0415\\u0441\\u0442\\u044c<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u041e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438<\\/p>\\r\\n\\r\\n\\t<p>\\u041e\\u0442\\u043f\\u0435\\u0447\\u0430\\u0442\\u043e\\u043a \\u043f\\u0430\\u043b\\u044c\\u0446\\u0430 (\\u043f\\u0435\\u0440\\u0435\\u0434\\u043d\\u0438\\u0439), \\u0430\\u043a\\u0441\\u0435\\u043b\\u0435\\u0440\\u043e\\u043c\\u0435\\u0442\\u0440, \\u0433\\u0438\\u0440\\u043e\\u0441\\u043a\\u043e\\u043f, \\u0434\\u0430\\u0442\\u0447\\u0438\\u043a \\u0431\\u043b\\u0438\\u0437\\u043e\\u0441\\u0442\\u0438, \\u043a\\u043e\\u043c\\u043f\\u0430\\u0441<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u0414\\u0430\\u0442\\u0430 \\u0430\\u043d\\u043e\\u043d\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f<\\/p>\\r\\n\\r\\n\\t<p>2021, March<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u0412\\u0435\\u0441<\\/p>\\r\\n\\r\\n\\t<p>191 \\u0433<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u0412\\u0435\\u0440\\u0441\\u0438\\u044f \\u041e\\u0421<\\/p>\\r\\n\\r\\n\\t<p>Android 11<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u0426\\u0432\\u0435\\u0442<\\/p>\\r\\n\\r\\n\\t<p>Black<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u0413\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u044f<\\/p>\\r\\n\\r\\n\\t<p>12 \\u043c\\u0435\\u0441\\u044f\\u0446\\u0435\\u0432<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u0438 \\u0442\\u0438\\u043f SIM-\\u043a\\u0430\\u0440\\u0442\\u044b<\\/p>\\r\\n\\r\\n\\t<p>2 (Nano Sim)<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\r\\n\\t<p>\\u0421\\u0432\\u044f\\u0437\\u044c<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>NFC<\\/p>\\r\\n\\r\\n\\t<p>\\u0415\\u0441\\u0442\\u044c<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>Bluetooth<\\/p>\\r\\n\\r\\n\\t<p>5.0, A2DP, LE<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>Wi-Fi<\\/p>\\r\\n\\r\\n\\t<p>Wi-Fi 802.11 a\\/b\\/g\\/n\\/ac, dual-band, Wi-Fi Direct, hotspot<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u0421\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442<\\/p>\\r\\n\\r\\n\\t<p>GSM 900\\/1800\\/1900, 3G, 4G LTE, LTE-A, VoLTE<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u0421\\u043f\\u0443\\u0442\\u043d\\u0438\\u043a\\u043e\\u0432\\u0430\\u044f \\u043d\\u0430\\u0432\\u0438\\u0433\\u0430\\u0446\\u0438\\u044f<\\/p>\\r\\n\\r\\n\\t<p>A-GPS, GLONASS, BDS, GALILEO<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>USB<\\/p>\\r\\n\\r\\n\\t<p>USB Type-C 2.0, USB On-The-Go<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\",\"is_discount\":\"0\",\"options\":{\"1\":{\"option_id\":\"1\",\"value\":\"20GB\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"option_id\":\"2\",\"value\":\"4GB\",\"id\":\"2\",\"_remove_\":\"0\"}},\"_token\":\"bXAq5gocbsqZcKF8TZafUdD23gIy9UXukHeFUqHT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2022-06-17 04:37:25', '2022-06-17 04:37:25');
INSERT INTO `admin_operation_log` VALUES (822, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-17 04:37:25', '2022-06-17 04:37:25');
INSERT INTO `admin_operation_log` VALUES (823, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-17 04:41:15', '2022-06-17 04:41:15');
INSERT INTO `admin_operation_log` VALUES (824, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-17 04:43:27', '2022-06-17 04:43:27');
INSERT INTO `admin_operation_log` VALUES (825, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"name\":\"aasd\",\"category_id\":\"2\",\"subcategory_id\":\"4\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"tag1\",\"tag2\",\"tag3\",null],\"status\":\"off\",\"price\":\"123.00\",\"in_stock\":\"0\",\"description\":\"<h3>\\u0425\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438 Samsung Galaxy A52 4\\/128GB Black<\\/h3>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\r\\n\\t<p>\\u041e\\u0431\\u0449\\u0438\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438 \\u0441\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d\\u0430<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u041e\\u0442\\u043f\\u0435\\u0447\\u0430\\u0442\\u043e\\u043a \\u043f\\u0430\\u043b\\u044c\\u0446\\u0430<\\/p>\\r\\n\\r\\n\\t<p>\\u0415\\u0441\\u0442\\u044c<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u041e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438<\\/p>\\r\\n\\r\\n\\t<p>\\u041e\\u0442\\u043f\\u0435\\u0447\\u0430\\u0442\\u043e\\u043a \\u043f\\u0430\\u043b\\u044c\\u0446\\u0430 (\\u043f\\u0435\\u0440\\u0435\\u0434\\u043d\\u0438\\u0439), \\u0430\\u043a\\u0441\\u0435\\u043b\\u0435\\u0440\\u043e\\u043c\\u0435\\u0442\\u0440, \\u0433\\u0438\\u0440\\u043e\\u0441\\u043a\\u043e\\u043f, \\u0434\\u0430\\u0442\\u0447\\u0438\\u043a \\u0431\\u043b\\u0438\\u0437\\u043e\\u0441\\u0442\\u0438, \\u043a\\u043e\\u043c\\u043f\\u0430\\u0441<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u0414\\u0430\\u0442\\u0430 \\u0430\\u043d\\u043e\\u043d\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f<\\/p>\\r\\n\\r\\n\\t<p>2021, March<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u0412\\u0435\\u0441<\\/p>\\r\\n\\r\\n\\t<p>191 \\u0433<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u0412\\u0435\\u0440\\u0441\\u0438\\u044f \\u041e\\u0421<\\/p>\\r\\n\\r\\n\\t<p>Android 11<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u0426\\u0432\\u0435\\u0442<\\/p>\\r\\n\\r\\n\\t<p>Black<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u0413\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u044f<\\/p>\\r\\n\\r\\n\\t<p>12 \\u043c\\u0435\\u0441\\u044f\\u0446\\u0435\\u0432<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u0438 \\u0442\\u0438\\u043f SIM-\\u043a\\u0430\\u0440\\u0442\\u044b<\\/p>\\r\\n\\r\\n\\t<p>2 (Nano Sim)<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\r\\n\\t<p>\\u0421\\u0432\\u044f\\u0437\\u044c<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>NFC<\\/p>\\r\\n\\r\\n\\t<p>\\u0415\\u0441\\u0442\\u044c<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>Bluetooth<\\/p>\\r\\n\\r\\n\\t<p>5.0, A2DP, LE<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>Wi-Fi<\\/p>\\r\\n\\r\\n\\t<p>Wi-Fi 802.11 a\\/b\\/g\\/n\\/ac, dual-band, Wi-Fi Direct, hotspot<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u0421\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442<\\/p>\\r\\n\\r\\n\\t<p>GSM 900\\/1800\\/1900, 3G, 4G LTE, LTE-A, VoLTE<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u0421\\u043f\\u0443\\u0442\\u043d\\u0438\\u043a\\u043e\\u0432\\u0430\\u044f \\u043d\\u0430\\u0432\\u0438\\u0433\\u0430\\u0446\\u0438\\u044f<\\/p>\\r\\n\\r\\n\\t<p>A-GPS, GLONASS, BDS, GALILEO<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>USB<\\/p>\\r\\n\\r\\n\\t<p>USB Type-C 2.0, USB On-The-Go<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\",\"is_discount\":\"0\",\"options\":{\"1\":{\"option_id\":\"1\",\"value\":\"20GB\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"option_id\":\"2\",\"value\":\"4GB\",\"id\":\"2\",\"_remove_\":\"0\"}},\"_token\":\"bXAq5gocbsqZcKF8TZafUdD23gIy9UXukHeFUqHT\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2022-06-17 04:43:35', '2022-06-17 04:43:35');
INSERT INTO `admin_operation_log` VALUES (826, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-17 04:43:35', '2022-06-17 04:43:35');
INSERT INTO `admin_operation_log` VALUES (827, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-17 04:47:47', '2022-06-17 04:47:47');
INSERT INTO `admin_operation_log` VALUES (828, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"name\":\"aasd\",\"category_id\":\"2\",\"subcategory_id\":\"4\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"tag1\",\"tag2\",\"tag3\",null],\"status\":\"off\",\"price\":\"123.00\",\"in_stock\":\"0\",\"description\":\"<h3>\\u0425\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438 Samsung Galaxy A52 4\\/128GB Black<\\/h3>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\r\\n\\t<p>\\u041e\\u0431\\u0449\\u0438\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438 \\u0441\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d\\u0430<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u041e\\u0442\\u043f\\u0435\\u0447\\u0430\\u0442\\u043e\\u043a \\u043f\\u0430\\u043b\\u044c\\u0446\\u0430<\\/p>\\r\\n\\r\\n\\t<p>\\u0415\\u0441\\u0442\\u044c<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u041e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438<\\/p>\\r\\n\\r\\n\\t<p>\\u041e\\u0442\\u043f\\u0435\\u0447\\u0430\\u0442\\u043e\\u043a \\u043f\\u0430\\u043b\\u044c\\u0446\\u0430 (\\u043f\\u0435\\u0440\\u0435\\u0434\\u043d\\u0438\\u0439), \\u0430\\u043a\\u0441\\u0435\\u043b\\u0435\\u0440\\u043e\\u043c\\u0435\\u0442\\u0440, \\u0433\\u0438\\u0440\\u043e\\u0441\\u043a\\u043e\\u043f, \\u0434\\u0430\\u0442\\u0447\\u0438\\u043a \\u0431\\u043b\\u0438\\u0437\\u043e\\u0441\\u0442\\u0438, \\u043a\\u043e\\u043c\\u043f\\u0430\\u0441<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u0414\\u0430\\u0442\\u0430 \\u0430\\u043d\\u043e\\u043d\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f<\\/p>\\r\\n\\r\\n\\t<p>2021, March<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u0412\\u0435\\u0441<\\/p>\\r\\n\\r\\n\\t<p>191 \\u0433<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u0412\\u0435\\u0440\\u0441\\u0438\\u044f \\u041e\\u0421<\\/p>\\r\\n\\r\\n\\t<p>Android 11<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u0426\\u0432\\u0435\\u0442<\\/p>\\r\\n\\r\\n\\t<p>Black<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u0413\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u044f<\\/p>\\r\\n\\r\\n\\t<p>12 \\u043c\\u0435\\u0441\\u044f\\u0446\\u0435\\u0432<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u0438 \\u0442\\u0438\\u043f SIM-\\u043a\\u0430\\u0440\\u0442\\u044b<\\/p>\\r\\n\\r\\n\\t<p>2 (Nano Sim)<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\r\\n\\t<p>\\u0421\\u0432\\u044f\\u0437\\u044c<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>NFC<\\/p>\\r\\n\\r\\n\\t<p>\\u0415\\u0441\\u0442\\u044c<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>Bluetooth<\\/p>\\r\\n\\r\\n\\t<p>5.0, A2DP, LE<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>Wi-Fi<\\/p>\\r\\n\\r\\n\\t<p>Wi-Fi 802.11 a\\/b\\/g\\/n\\/ac, dual-band, Wi-Fi Direct, hotspot<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u0421\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442<\\/p>\\r\\n\\r\\n\\t<p>GSM 900\\/1800\\/1900, 3G, 4G LTE, LTE-A, VoLTE<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u0421\\u043f\\u0443\\u0442\\u043d\\u0438\\u043a\\u043e\\u0432\\u0430\\u044f \\u043d\\u0430\\u0432\\u0438\\u0433\\u0430\\u0446\\u0438\\u044f<\\/p>\\r\\n\\r\\n\\t<p>A-GPS, GLONASS, BDS, GALILEO<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>USB<\\/p>\\r\\n\\r\\n\\t<p>USB Type-C 2.0, USB On-The-Go<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\",\"is_discount\":\"0\",\"options\":{\"1\":{\"option_id\":\"1\",\"value\":\"20GB\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"option_id\":\"2\",\"value\":\"4GB\",\"id\":\"2\",\"_remove_\":\"0\"}},\"_token\":\"bXAq5gocbsqZcKF8TZafUdD23gIy9UXukHeFUqHT\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2022-06-17 04:47:53', '2022-06-17 04:47:53');
INSERT INTO `admin_operation_log` VALUES (829, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-17 04:47:54', '2022-06-17 04:47:54');
INSERT INTO `admin_operation_log` VALUES (830, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-17 04:48:10', '2022-06-17 04:48:10');
INSERT INTO `admin_operation_log` VALUES (831, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-17 04:48:19', '2022-06-17 04:48:19');
INSERT INTO `admin_operation_log` VALUES (832, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-17 04:48:27', '2022-06-17 04:48:27');
INSERT INTO `admin_operation_log` VALUES (833, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-17 04:48:31', '2022-06-17 04:48:31');
INSERT INTO `admin_operation_log` VALUES (834, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '[]', '2022-06-17 04:48:59', '2022-06-17 04:48:59');
INSERT INTO `admin_operation_log` VALUES (835, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"name\":\"aasd\",\"category_id\":\"2\",\"subcategory_id\":\"4\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"tag1\",\"tag2\",\"tag3\",null],\"status\":\"off\",\"price\":\"123.00\",\"in_stock\":\"0\",\"description\":\"<h3>\\u0425\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438 Samsung Galaxy A52 4\\/128GB Black<\\/h3>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\r\\n\\t<p>\\u041e\\u0431\\u0449\\u0438\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438 \\u0441\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d\\u0430<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u041e\\u0442\\u043f\\u0435\\u0447\\u0430\\u0442\\u043e\\u043a \\u043f\\u0430\\u043b\\u044c\\u0446\\u0430<\\/p>\\r\\n\\r\\n\\t<p>\\u0415\\u0441\\u0442\\u044c<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u041e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438<\\/p>\\r\\n\\r\\n\\t<p>\\u041e\\u0442\\u043f\\u0435\\u0447\\u0430\\u0442\\u043e\\u043a \\u043f\\u0430\\u043b\\u044c\\u0446\\u0430 (\\u043f\\u0435\\u0440\\u0435\\u0434\\u043d\\u0438\\u0439), \\u0430\\u043a\\u0441\\u0435\\u043b\\u0435\\u0440\\u043e\\u043c\\u0435\\u0442\\u0440, \\u0433\\u0438\\u0440\\u043e\\u0441\\u043a\\u043e\\u043f, \\u0434\\u0430\\u0442\\u0447\\u0438\\u043a \\u0431\\u043b\\u0438\\u0437\\u043e\\u0441\\u0442\\u0438, \\u043a\\u043e\\u043c\\u043f\\u0430\\u0441<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u0421\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\r\\n\\t<p>GSM 900\\/1800\\/1900, 3G, 4G LTE, LTE-A, VoLTE<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u0421\\u043f\\u0443\\u0442\\u043d\\u0438\\u043a\\u043e\\u0432\\u0430\\u044f \\u043d\\u0430\\u0432\\u0438\\u0433\\u0430\\u0446\\u0438\\u044f<\\/p>\\r\\n\\r\\n\\t<p>A-GPS, GLONASS, BDS, GALILEO<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>USB<\\/p>\\r\\n\\r\\n\\t<p>USB Type-C 2.0, USB On-The-Go<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\",\"is_discount\":\"0\",\"options\":{\"1\":{\"option_id\":\"1\",\"value\":\"20GB\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"option_id\":\"2\",\"value\":\"4GB\",\"id\":\"2\",\"_remove_\":\"0\"}},\"_token\":\"bXAq5gocbsqZcKF8TZafUdD23gIy9UXukHeFUqHT\",\"_method\":\"PUT\"}', '2022-06-17 04:49:35', '2022-06-17 04:49:35');
INSERT INTO `admin_operation_log` VALUES (836, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-17 04:49:36', '2022-06-17 04:49:36');
INSERT INTO `admin_operation_log` VALUES (837, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-17 11:21:06', '2022-06-17 11:21:06');
INSERT INTO `admin_operation_log` VALUES (838, 1, 'admin/products/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-17 11:29:01', '2022-06-17 11:29:01');
INSERT INTO `admin_operation_log` VALUES (839, 1, 'admin/products/5', 'PUT', '127.0.0.1', '{\"name\":\"iphone 13 PRO MAX\",\"category_id\":\"2\",\"subcategory_id\":\"5\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"tag1\",\"tag2\",null],\"status\":\"on\",\"price\":\"9800000.00\",\"in_stock\":\"4\",\"description\":null,\"is_discount\":\"0\",\"_token\":\"iWV6wkeozlU8xuosEW8xYi6PulHeAsS7g69EV18d\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2022-06-17 11:29:12', '2022-06-17 11:29:12');
INSERT INTO `admin_operation_log` VALUES (840, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-17 11:29:12', '2022-06-17 11:29:12');
INSERT INTO `admin_operation_log` VALUES (841, 1, 'admin/products/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-17 11:35:54', '2022-06-17 11:35:54');
INSERT INTO `admin_operation_log` VALUES (842, 1, 'admin/products/7', 'PUT', '127.0.0.1', '{\"name\":\"test2\",\"category_id\":\"2\",\"subcategory_id\":\"5\",\"brand_id\":\"1\",\"_file_sort_\":{\"attachments\":null},\"tags\":[\"tag1\",\"tag4\",null],\"status\":\"on\",\"price\":\"850000.00\",\"in_stock\":\"43\",\"description\":null,\"is_discount\":\"0\",\"_token\":\"iWV6wkeozlU8xuosEW8xYi6PulHeAsS7g69EV18d\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2022-06-17 11:35:59', '2022-06-17 11:35:59');
INSERT INTO `admin_operation_log` VALUES (843, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-17 11:35:59', '2022-06-17 11:35:59');
INSERT INTO `admin_operation_log` VALUES (844, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-17 11:53:40', '2022-06-17 11:53:40');
INSERT INTO `admin_operation_log` VALUES (845, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-17 11:59:45', '2022-06-17 11:59:45');
INSERT INTO `admin_operation_log` VALUES (846, 1, 'admin/products/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-17 11:59:51', '2022-06-17 11:59:51');
INSERT INTO `admin_operation_log` VALUES (847, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-23 09:55:46', '2022-06-23 09:55:46');
INSERT INTO `admin_operation_log` VALUES (848, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-23 09:55:51', '2022-06-23 09:55:51');
INSERT INTO `admin_operation_log` VALUES (849, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-24 09:12:29', '2022-06-24 09:12:29');
INSERT INTO `admin_operation_log` VALUES (850, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-24 09:12:37', '2022-06-24 09:12:37');
INSERT INTO `admin_operation_log` VALUES (851, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-24 11:27:29', '2022-06-24 11:27:29');
INSERT INTO `admin_operation_log` VALUES (852, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-27 09:30:23', '2022-06-27 09:30:23');
INSERT INTO `admin_operation_log` VALUES (853, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-28 08:29:29', '2022-06-28 08:29:29');
INSERT INTO `admin_operation_log` VALUES (854, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 08:29:36', '2022-06-28 08:29:36');
INSERT INTO `admin_operation_log` VALUES (855, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"name\":\"name\",\"value\":\"\\u041c\\u043e\\u043d\\u0438\\u0442\\u043e\\u0440\\u044b\",\"pk\":\"1\",\"_token\":\"dhE1hGvBHslN3S3GfDmWXEmh5HtYm6I5u7Z1g1G1\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2022-06-28 08:31:56', '2022-06-28 08:31:56');
INSERT INTO `admin_operation_log` VALUES (856, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 10:28:39', '2022-06-28 10:28:39');
INSERT INTO `admin_operation_log` VALUES (857, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"Protsessor\",\"type\":\"1\",\"slug\":null,\"_token\":\"dhE1hGvBHslN3S3GfDmWXEmh5HtYm6I5u7Z1g1G1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/categories\"}', '2022-06-28 10:29:00', '2022-06-28 10:29:00');
INSERT INTO `admin_operation_log` VALUES (858, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-06-28 10:29:01', '2022-06-28 10:29:01');
INSERT INTO `admin_operation_log` VALUES (859, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 10:31:56', '2022-06-28 10:31:56');
INSERT INTO `admin_operation_log` VALUES (860, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u041c\\u043e\\u043d\\u0438\\u0442\\u043e\\u0440\\u044b\",\"type\":\"1\",\"slug\":null,\"_token\":\"dhE1hGvBHslN3S3GfDmWXEmh5HtYm6I5u7Z1g1G1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/categories\"}', '2022-06-28 10:31:59', '2022-06-28 10:31:59');
INSERT INTO `admin_operation_log` VALUES (861, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-06-28 10:31:59', '2022-06-28 10:31:59');
INSERT INTO `admin_operation_log` VALUES (862, 1, 'admin/categories/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 10:32:01', '2022-06-28 10:32:01');
INSERT INTO `admin_operation_log` VALUES (863, 1, 'admin/categories/2', 'PUT', '127.0.0.1', '{\"name\":\"\\u0412\\u0438\\u0434\\u0435\\u043e\\u043a\\u0430\\u0440\\u0442\\u044b\",\"type\":\"1\",\"slug\":null,\"_token\":\"dhE1hGvBHslN3S3GfDmWXEmh5HtYm6I5u7Z1g1G1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/categories\"}', '2022-06-28 10:32:02', '2022-06-28 10:32:02');
INSERT INTO `admin_operation_log` VALUES (864, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-06-28 10:32:03', '2022-06-28 10:32:03');
INSERT INTO `admin_operation_log` VALUES (865, 1, 'admin/categories/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 10:32:05', '2022-06-28 10:32:05');
INSERT INTO `admin_operation_log` VALUES (866, 1, 'admin/categories/3', 'PUT', '127.0.0.1', '{\"name\":\"\\u041a\\u043e\\u043c\\u043f\\u044c\\u044e\\u0442\\u0435\\u0440\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0442\\u0443\\u044e\\u0449\\u0438\\u0435\",\"type\":\"1\",\"slug\":null,\"_token\":\"dhE1hGvBHslN3S3GfDmWXEmh5HtYm6I5u7Z1g1G1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/categories\"}', '2022-06-28 10:32:06', '2022-06-28 10:32:06');
INSERT INTO `admin_operation_log` VALUES (867, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-06-28 10:32:06', '2022-06-28 10:32:06');
INSERT INTO `admin_operation_log` VALUES (868, 1, 'admin/categories/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 10:32:08', '2022-06-28 10:32:08');
INSERT INTO `admin_operation_log` VALUES (869, 1, 'admin/categories/4', 'PUT', '127.0.0.1', '{\"name\":\"cat1\",\"type\":\"2\",\"parent_id\":\"2\",\"slug\":null,\"_token\":\"dhE1hGvBHslN3S3GfDmWXEmh5HtYm6I5u7Z1g1G1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/categories\"}', '2022-06-28 10:32:09', '2022-06-28 10:32:09');
INSERT INTO `admin_operation_log` VALUES (870, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-06-28 10:32:09', '2022-06-28 10:32:09');
INSERT INTO `admin_operation_log` VALUES (871, 1, 'admin/categories/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 10:32:10', '2022-06-28 10:32:10');
INSERT INTO `admin_operation_log` VALUES (872, 1, 'admin/categories/5', 'PUT', '127.0.0.1', '{\"name\":\"cat2\",\"type\":\"2\",\"parent_id\":\"2\",\"slug\":null,\"_token\":\"dhE1hGvBHslN3S3GfDmWXEmh5HtYm6I5u7Z1g1G1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/categories\"}', '2022-06-28 10:32:11', '2022-06-28 10:32:11');
INSERT INTO `admin_operation_log` VALUES (873, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-06-28 10:32:12', '2022-06-28 10:32:12');
INSERT INTO `admin_operation_log` VALUES (874, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-06-28 10:32:20', '2022-06-28 10:32:20');
INSERT INTO `admin_operation_log` VALUES (875, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-28 10:37:13', '2022-06-28 10:37:13');
INSERT INTO `admin_operation_log` VALUES (876, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-29 08:23:33', '2022-06-29 08:23:33');
INSERT INTO `admin_operation_log` VALUES (877, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 08:27:30', '2022-06-29 08:27:30');
INSERT INTO `admin_operation_log` VALUES (878, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u0410\\u043a\\u0446\\u0438\\u0438\",\"icon\":\"fa-dollar\",\"uri\":\"\\/promotions\",\"roles\":[null],\"permission\":null,\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\"}', '2022-06-29 08:28:07', '2022-06-29 08:28:07');
INSERT INTO `admin_operation_log` VALUES (879, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-06-29 08:28:07', '2022-06-29 08:28:07');
INSERT INTO `admin_operation_log` VALUES (880, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-06-29 08:28:09', '2022-06-29 08:28:09');
INSERT INTO `admin_operation_log` VALUES (881, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 08:28:11', '2022-06-29 08:28:11');
INSERT INTO `admin_operation_log` VALUES (882, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 08:28:13', '2022-06-29 08:28:13');
INSERT INTO `admin_operation_log` VALUES (883, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '[]', '2022-06-29 08:29:48', '2022-06-29 08:29:48');
INSERT INTO `admin_operation_log` VALUES (884, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '[]', '2022-06-29 08:31:43', '2022-06-29 08:31:43');
INSERT INTO `admin_operation_log` VALUES (885, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '[]', '2022-06-29 08:34:58', '2022-06-29 08:34:58');
INSERT INTO `admin_operation_log` VALUES (886, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 08:35:01', '2022-06-29 08:35:01');
INSERT INTO `admin_operation_log` VALUES (887, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '[]', '2022-06-29 08:37:20', '2022-06-29 08:37:20');
INSERT INTO `admin_operation_log` VALUES (888, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 08:37:21', '2022-06-29 08:37:21');
INSERT INTO `admin_operation_log` VALUES (889, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"],\"id\":null,\"name\":\"sd\"}', '2022-06-29 08:37:43', '2022-06-29 08:37:43');
INSERT INTO `admin_operation_log` VALUES (890, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 08:37:45', '2022-06-29 08:37:45');
INSERT INTO `admin_operation_log` VALUES (891, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 08:37:58', '2022-06-29 08:37:58');
INSERT INTO `admin_operation_log` VALUES (892, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '[]', '2022-06-29 08:38:48', '2022-06-29 08:38:48');
INSERT INTO `admin_operation_log` VALUES (893, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '[]', '2022-06-29 08:39:00', '2022-06-29 08:39:00');
INSERT INTO `admin_operation_log` VALUES (894, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 08:39:04', '2022-06-29 08:39:04');
INSERT INTO `admin_operation_log` VALUES (895, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '[]', '2022-06-29 08:42:06', '2022-06-29 08:42:06');
INSERT INTO `admin_operation_log` VALUES (896, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 08:42:11', '2022-06-29 08:42:11');
INSERT INTO `admin_operation_log` VALUES (897, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 08:42:14', '2022-06-29 08:42:14');
INSERT INTO `admin_operation_log` VALUES (898, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '[]', '2022-06-29 08:42:58', '2022-06-29 08:42:58');
INSERT INTO `admin_operation_log` VALUES (899, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '[]', '2022-06-29 08:43:05', '2022-06-29 08:43:05');
INSERT INTO `admin_operation_log` VALUES (900, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 08:44:05', '2022-06-29 08:44:05');
INSERT INTO `admin_operation_log` VALUES (901, 1, 'admin/promotions', 'POST', '127.0.0.1', '{\"title\":\"Aksiya 2022\",\"body\":\"<p>Aksiya 2022. hamma tovarlaga aksiya<\\/p>\",\"start\":\"2022-06-29 10:43:05\",\"end\":\"2022-06-30 10:43:05\",\"products\":[\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",null],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"after-save\":\"1\"}', '2022-06-29 08:44:36', '2022-06-29 08:44:36');
INSERT INTO `admin_operation_log` VALUES (902, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '[]', '2022-06-29 08:44:37', '2022-06-29 08:44:37');
INSERT INTO `admin_operation_log` VALUES (903, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 08:45:39', '2022-06-29 08:45:39');
INSERT INTO `admin_operation_log` VALUES (904, 1, 'admin/promotions', 'POST', '127.0.0.1', '{\"title\":\"Aksiya 2022\",\"body\":\"<p>Aksiya 2022. hamma tovarlaga aksiya<\\/p>\",\"start\":\"2022-06-29 10:43:05\",\"end\":\"2022-06-30 10:43:05\",\"products\":[\"4\",\"6\",\"5\",\"3\",\"2\",\"7\",\"8\",\"9\",\"10\",null],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\"}', '2022-06-29 08:45:46', '2022-06-29 08:45:46');
INSERT INTO `admin_operation_log` VALUES (905, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '[]', '2022-06-29 08:45:47', '2022-06-29 08:45:47');
INSERT INTO `admin_operation_log` VALUES (906, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '[]', '2022-06-29 08:45:57', '2022-06-29 08:45:57');
INSERT INTO `admin_operation_log` VALUES (907, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 08:46:11', '2022-06-29 08:46:11');
INSERT INTO `admin_operation_log` VALUES (908, 1, 'admin/promotions', 'POST', '127.0.0.1', '{\"title\":\"Aksiya 2022\",\"body\":\"<p>Aksiya 2022. hamma tovarlaga aksiya ketti<\\/p>\",\"start\":\"2022-06-29 10:45:57\",\"end\":\"2022-06-30 10:45:57\",\"products\":[\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",null],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\"}', '2022-06-29 08:46:17', '2022-06-29 08:46:17');
INSERT INTO `admin_operation_log` VALUES (909, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-29 08:46:17', '2022-06-29 08:46:17');
INSERT INTO `admin_operation_log` VALUES (910, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 08:47:49', '2022-06-29 08:47:49');
INSERT INTO `admin_operation_log` VALUES (911, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 08:47:53', '2022-06-29 08:47:53');
INSERT INTO `admin_operation_log` VALUES (912, 1, 'admin/promotions/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 08:47:55', '2022-06-29 08:47:55');
INSERT INTO `admin_operation_log` VALUES (913, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 08:47:57', '2022-06-29 08:47:57');
INSERT INTO `admin_operation_log` VALUES (914, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-29 08:50:19', '2022-06-29 08:50:19');
INSERT INTO `admin_operation_log` VALUES (915, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-29 08:50:50', '2022-06-29 08:50:50');
INSERT INTO `admin_operation_log` VALUES (916, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 08:50:52', '2022-06-29 08:50:52');
INSERT INTO `admin_operation_log` VALUES (917, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-29 08:51:13', '2022-06-29 08:51:13');
INSERT INTO `admin_operation_log` VALUES (918, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-29 08:51:20', '2022-06-29 08:51:20');
INSERT INTO `admin_operation_log` VALUES (919, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-29 08:51:44', '2022-06-29 08:51:44');
INSERT INTO `admin_operation_log` VALUES (920, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-29 08:51:58', '2022-06-29 08:51:58');
INSERT INTO `admin_operation_log` VALUES (921, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-29 08:52:10', '2022-06-29 08:52:10');
INSERT INTO `admin_operation_log` VALUES (922, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-29 08:52:17', '2022-06-29 08:52:17');
INSERT INTO `admin_operation_log` VALUES (923, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-29 08:52:29', '2022-06-29 08:52:29');
INSERT INTO `admin_operation_log` VALUES (924, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 08:52:31', '2022-06-29 08:52:31');
INSERT INTO `admin_operation_log` VALUES (925, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 08:52:35', '2022-06-29 08:52:35');
INSERT INTO `admin_operation_log` VALUES (926, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 08:53:04', '2022-06-29 08:53:04');
INSERT INTO `admin_operation_log` VALUES (927, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 08:54:46', '2022-06-29 08:54:46');
INSERT INTO `admin_operation_log` VALUES (928, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 08:54:48', '2022-06-29 08:54:48');
INSERT INTO `admin_operation_log` VALUES (929, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 08:54:51', '2022-06-29 08:54:51');
INSERT INTO `admin_operation_log` VALUES (930, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 08:54:53', '2022-06-29 08:54:53');
INSERT INTO `admin_operation_log` VALUES (931, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 08:54:53', '2022-06-29 08:54:53');
INSERT INTO `admin_operation_log` VALUES (932, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-29 08:55:23', '2022-06-29 08:55:23');
INSERT INTO `admin_operation_log` VALUES (933, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 08:55:24', '2022-06-29 08:55:24');
INSERT INTO `admin_operation_log` VALUES (934, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"products\":[\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\"],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"_method\":\"PUT\"}', '2022-06-29 08:55:26', '2022-06-29 08:55:26');
INSERT INTO `admin_operation_log` VALUES (935, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"products\":[\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\"],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"_method\":\"PUT\"}', '2022-06-29 08:55:30', '2022-06-29 08:55:30');
INSERT INTO `admin_operation_log` VALUES (936, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"products\":[\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\"],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"_method\":\"PUT\"}', '2022-06-29 08:55:30', '2022-06-29 08:55:30');
INSERT INTO `admin_operation_log` VALUES (937, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"products\":[\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\"],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"_method\":\"PUT\"}', '2022-06-29 08:55:34', '2022-06-29 08:55:34');
INSERT INTO `admin_operation_log` VALUES (938, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 08:55:44', '2022-06-29 08:55:44');
INSERT INTO `admin_operation_log` VALUES (939, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"title\":\"Aksiya 2022\",\"body\":\"<p>Aksiya 2022. hamma tovarlaga aksiya ketti<\\/p>\",\"start\":\"2022-06-29 10:45:57\",\"end\":\"2022-06-30 10:45:57\",\"products\":[\"6\",\"9\",null],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/promotions\"}', '2022-06-29 08:55:51', '2022-06-29 08:55:51');
INSERT INTO `admin_operation_log` VALUES (940, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"title\":\"Aksiya 2022\",\"body\":\"<p>Aksiya 2022. hamma tovarlaga aksiya ketti<\\/p>\",\"start\":\"2022-06-29 10:45:57\",\"end\":\"2022-06-30 10:45:57\",\"products\":[\"6\",\"9\",null],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/promotions\"}', '2022-06-29 08:55:54', '2022-06-29 08:55:54');
INSERT INTO `admin_operation_log` VALUES (941, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"title\":\"Aksiya 2022\",\"body\":\"<p>Aksiya 2022. hamma tovarlaga aksiya ketti<\\/p>\",\"start\":\"2022-06-29 10:45:57\",\"end\":\"2022-06-30 10:45:57\",\"products\":[\"6\",\"9\",null],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/promotions\"}', '2022-06-29 08:55:59', '2022-06-29 08:55:59');
INSERT INTO `admin_operation_log` VALUES (942, 1, 'admin/promotions/3', 'GET', '127.0.0.1', '[]', '2022-06-29 08:55:59', '2022-06-29 08:55:59');
INSERT INTO `admin_operation_log` VALUES (943, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 08:56:05', '2022-06-29 08:56:05');
INSERT INTO `admin_operation_log` VALUES (944, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 08:56:07', '2022-06-29 08:56:07');
INSERT INTO `admin_operation_log` VALUES (945, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"products\":[\"6\",\"9\",\"3\",\"4\",\"2\",\"5\"],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"_method\":\"PUT\"}', '2022-06-29 08:56:12', '2022-06-29 08:56:12');
INSERT INTO `admin_operation_log` VALUES (946, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-29 08:56:16', '2022-06-29 08:56:16');
INSERT INTO `admin_operation_log` VALUES (947, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 08:56:18', '2022-06-29 08:56:18');
INSERT INTO `admin_operation_log` VALUES (948, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-29 08:56:28', '2022-06-29 08:56:28');
INSERT INTO `admin_operation_log` VALUES (949, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 08:56:29', '2022-06-29 08:56:29');
INSERT INTO `admin_operation_log` VALUES (950, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"products\":[\"9\",\"3\",\"2\"],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"_method\":\"PUT\"}', '2022-06-29 08:56:31', '2022-06-29 08:56:31');
INSERT INTO `admin_operation_log` VALUES (951, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 08:56:34', '2022-06-29 08:56:34');
INSERT INTO `admin_operation_log` VALUES (952, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"products\":[\"9\",\"3\",\"2\",\"8\",\"7\"],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"_method\":\"PUT\"}', '2022-06-29 08:56:35', '2022-06-29 08:56:35');
INSERT INTO `admin_operation_log` VALUES (953, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 08:57:19', '2022-06-29 08:57:19');
INSERT INTO `admin_operation_log` VALUES (954, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"products\":[\"9\",\"3\",\"2\",\"8\",\"7\",\"4\",\"5\",\"6\"],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"_method\":\"PUT\"}', '2022-06-29 08:57:22', '2022-06-29 08:57:22');
INSERT INTO `admin_operation_log` VALUES (955, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 08:57:30', '2022-06-29 08:57:30');
INSERT INTO `admin_operation_log` VALUES (956, 1, 'admin/products/2', 'PUT', '127.0.0.1', '{\"name\":\"name\",\"value\":\"aasd asdasdsdasdddd asddddddddddddddd asddddddddddddddddddddd asdddddddd\",\"pk\":\"2\",\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2022-06-29 08:57:38', '2022-06-29 08:57:38');
INSERT INTO `admin_operation_log` VALUES (957, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-29 08:57:40', '2022-06-29 08:57:40');
INSERT INTO `admin_operation_log` VALUES (958, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 08:58:48', '2022-06-29 08:58:48');
INSERT INTO `admin_operation_log` VALUES (959, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"products\":[\"9\",\"3\",\"2\",\"8\",\"7\",\"4\",\"5\",\"6\",\"10\"],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"_method\":\"PUT\"}', '2022-06-29 08:58:53', '2022-06-29 08:58:53');
INSERT INTO `admin_operation_log` VALUES (960, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"name\":\"name\",\"value\":\"aasd asdasdsdasdddd asddddddddddddddd asddddddddddddddddddddd asdddddddd\",\"pk\":\"3\",\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2022-06-29 08:59:01', '2022-06-29 08:59:01');
INSERT INTO `admin_operation_log` VALUES (961, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-29 08:59:02', '2022-06-29 08:59:02');
INSERT INTO `admin_operation_log` VALUES (962, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 08:59:14', '2022-06-29 08:59:14');
INSERT INTO `admin_operation_log` VALUES (963, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"title\":\"Aksiya 2022\",\"body\":\"<p>Aksiya 2022. hamma tovarlaga aksiya ketti<\\/p>\",\"start\":\"2022-06-29 10:45:57\",\"end\":\"2022-06-30 10:45:57\",\"products\":[\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",null],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/promotions\"}', '2022-06-29 08:59:19', '2022-06-29 08:59:19');
INSERT INTO `admin_operation_log` VALUES (964, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-29 08:59:20', '2022-06-29 08:59:20');
INSERT INTO `admin_operation_log` VALUES (965, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 08:59:23', '2022-06-29 08:59:23');
INSERT INTO `admin_operation_log` VALUES (966, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 08:59:25', '2022-06-29 08:59:25');
INSERT INTO `admin_operation_log` VALUES (967, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-29 09:00:17', '2022-06-29 09:00:17');
INSERT INTO `admin_operation_log` VALUES (968, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-29 09:00:26', '2022-06-29 09:00:26');
INSERT INTO `admin_operation_log` VALUES (969, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-29 09:00:31', '2022-06-29 09:00:31');
INSERT INTO `admin_operation_log` VALUES (970, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-29 09:01:20', '2022-06-29 09:01:20');
INSERT INTO `admin_operation_log` VALUES (971, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-29 09:02:02', '2022-06-29 09:02:02');
INSERT INTO `admin_operation_log` VALUES (972, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-29 09:02:04', '2022-06-29 09:02:04');
INSERT INTO `admin_operation_log` VALUES (973, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 09:02:21', '2022-06-29 09:02:21');
INSERT INTO `admin_operation_log` VALUES (974, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 09:03:21', '2022-06-29 09:03:21');
INSERT INTO `admin_operation_log` VALUES (975, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 09:03:28', '2022-06-29 09:03:28');
INSERT INTO `admin_operation_log` VALUES (976, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 09:04:08', '2022-06-29 09:04:08');
INSERT INTO `admin_operation_log` VALUES (977, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 09:05:33', '2022-06-29 09:05:33');
INSERT INTO `admin_operation_log` VALUES (978, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 09:09:52', '2022-06-29 09:09:52');
INSERT INTO `admin_operation_log` VALUES (979, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 09:09:55', '2022-06-29 09:09:55');
INSERT INTO `admin_operation_log` VALUES (980, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 09:10:14', '2022-06-29 09:10:14');
INSERT INTO `admin_operation_log` VALUES (981, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"products\":[\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\"],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"_method\":\"PUT\"}', '2022-06-29 09:10:18', '2022-06-29 09:10:18');
INSERT INTO `admin_operation_log` VALUES (982, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"products\":[\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\"],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"_method\":\"PUT\"}', '2022-06-29 09:10:38', '2022-06-29 09:10:38');
INSERT INTO `admin_operation_log` VALUES (983, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"products\":[\"2\"],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"_method\":\"PUT\"}', '2022-06-29 09:10:44', '2022-06-29 09:10:44');
INSERT INTO `admin_operation_log` VALUES (984, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"products\":[\"2\",\"3\",\"4\"],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"_method\":\"PUT\"}', '2022-06-29 09:10:53', '2022-06-29 09:10:53');
INSERT INTO `admin_operation_log` VALUES (985, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"products\":[\"2\",\"3\",\"4\"],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"_method\":\"PUT\"}', '2022-06-29 09:12:05', '2022-06-29 09:12:05');
INSERT INTO `admin_operation_log` VALUES (986, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 09:22:33', '2022-06-29 09:22:33');
INSERT INTO `admin_operation_log` VALUES (987, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-29 09:26:18', '2022-06-29 09:26:18');
INSERT INTO `admin_operation_log` VALUES (988, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-29 09:26:44', '2022-06-29 09:26:44');
INSERT INTO `admin_operation_log` VALUES (989, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-29 09:28:22', '2022-06-29 09:28:22');
INSERT INTO `admin_operation_log` VALUES (990, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 09:32:58', '2022-06-29 09:32:58');
INSERT INTO `admin_operation_log` VALUES (991, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '[]', '2022-06-29 09:32:59', '2022-06-29 09:32:59');
INSERT INTO `admin_operation_log` VALUES (992, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 09:33:00', '2022-06-29 09:33:00');
INSERT INTO `admin_operation_log` VALUES (993, 1, 'admin/promotions', 'POST', '127.0.0.1', '{\"title\":null,\"body\":null,\"start\":\"2022-06-29 11:32:59\",\"end\":\"2022-06-29 11:32:59\",\"promotion_type\":\"percent\",\"promotion_value\":null,\"products\":[\"3\",null],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/promotions\\/3\\/edit\"}', '2022-06-29 09:33:05', '2022-06-29 09:33:05');
INSERT INTO `admin_operation_log` VALUES (994, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '[]', '2022-06-29 09:33:05', '2022-06-29 09:33:05');
INSERT INTO `admin_operation_log` VALUES (995, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '[]', '2022-06-29 09:35:46', '2022-06-29 09:35:46');
INSERT INTO `admin_operation_log` VALUES (996, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '[]', '2022-06-29 09:36:29', '2022-06-29 09:36:29');
INSERT INTO `admin_operation_log` VALUES (997, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 09:36:38', '2022-06-29 09:36:38');
INSERT INTO `admin_operation_log` VALUES (998, 1, 'admin/promotions', 'POST', '127.0.0.1', '{\"title\":null,\"body\":null,\"start\":\"2022-06-29 11:36:29\",\"end\":\"2022-06-29 11:36:29\",\"promotion_type\":\"percent\",\"promotion_value\":\"1.00\",\"products\":[\"3\",null],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"after-save\":\"1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/promotions\\/3\\/edit\"}', '2022-06-29 09:36:44', '2022-06-29 09:36:44');
INSERT INTO `admin_operation_log` VALUES (999, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '[]', '2022-06-29 09:36:44', '2022-06-29 09:36:44');
INSERT INTO `admin_operation_log` VALUES (1000, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 09:37:07', '2022-06-29 09:37:07');
INSERT INTO `admin_operation_log` VALUES (1001, 1, 'admin/promotions', 'POST', '127.0.0.1', '{\"title\":null,\"body\":null,\"start\":\"2022-06-29 11:36:29\",\"end\":\"2022-06-29 11:36:29\",\"promotion_type\":\"percent\",\"promotion_value\":\"1.00\",\"products\":[\"3\",null],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"after-save\":\"1\"}', '2022-06-29 09:37:13', '2022-06-29 09:37:13');
INSERT INTO `admin_operation_log` VALUES (1002, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '[]', '2022-06-29 09:37:14', '2022-06-29 09:37:14');
INSERT INTO `admin_operation_log` VALUES (1003, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '[]', '2022-06-29 09:37:41', '2022-06-29 09:37:41');
INSERT INTO `admin_operation_log` VALUES (1004, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 09:37:57', '2022-06-29 09:37:57');
INSERT INTO `admin_operation_log` VALUES (1005, 1, 'admin/promotions', 'POST', '127.0.0.1', '{\"title\":null,\"body\":null,\"start\":\"2022-06-29 11:37:41\",\"end\":\"2022-06-29 11:37:41\",\"promotion_type\":\"percent\",\"promotion_value\":\"30.00\",\"products\":[\"3\",null],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"after-save\":\"1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/promotions\\/3\\/edit\"}', '2022-06-29 09:38:00', '2022-06-29 09:38:00');
INSERT INTO `admin_operation_log` VALUES (1006, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '[]', '2022-06-29 09:38:01', '2022-06-29 09:38:01');
INSERT INTO `admin_operation_log` VALUES (1007, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '[]', '2022-06-29 09:38:13', '2022-06-29 09:38:13');
INSERT INTO `admin_operation_log` VALUES (1008, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 09:38:18', '2022-06-29 09:38:18');
INSERT INTO `admin_operation_log` VALUES (1009, 1, 'admin/promotions', 'POST', '127.0.0.1', '{\"title\":null,\"body\":null,\"start\":\"2022-06-29 11:38:13\",\"end\":\"2022-06-29 11:38:13\",\"promotion_type\":\"percent\",\"promotion_value\":\"1.00\",\"products\":[\"3\",null],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"after-save\":\"1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/promotions\\/3\\/edit\"}', '2022-06-29 09:38:21', '2022-06-29 09:38:21');
INSERT INTO `admin_operation_log` VALUES (1010, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 09:38:28', '2022-06-29 09:38:28');
INSERT INTO `admin_operation_log` VALUES (1011, 1, 'admin/promotions', 'POST', '127.0.0.1', '{\"title\":null,\"body\":null,\"start\":\"2022-06-29 11:38:13\",\"end\":\"2022-06-29 11:38:13\",\"promotion_type\":\"percent\",\"promotion_value\":\"1.00\",\"products\":[\"2\",null],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"after-save\":\"1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/promotions\\/3\\/edit\"}', '2022-06-29 09:38:32', '2022-06-29 09:38:32');
INSERT INTO `admin_operation_log` VALUES (1012, 1, 'admin/promotions', 'POST', '127.0.0.1', '{\"title\":null,\"body\":null,\"start\":\"2022-06-29 11:38:13\",\"end\":\"2022-06-29 11:38:13\",\"promotion_type\":\"percent\",\"promotion_value\":\"1.00\",\"products\":[\"2\",null],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"after-save\":\"1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/promotions\\/3\\/edit\"}', '2022-06-29 09:38:41', '2022-06-29 09:38:41');
INSERT INTO `admin_operation_log` VALUES (1013, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-29 09:38:42', '2022-06-29 09:38:42');
INSERT INTO `admin_operation_log` VALUES (1014, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-29 09:39:02', '2022-06-29 09:39:02');
INSERT INTO `admin_operation_log` VALUES (1015, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 09:39:04', '2022-06-29 09:39:04');
INSERT INTO `admin_operation_log` VALUES (1016, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 09:39:13', '2022-06-29 09:39:13');
INSERT INTO `admin_operation_log` VALUES (1017, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"title\":\"Aksiya 2022\",\"body\":\"<p>Aksiya 2022. hamma tovarlaga aksiya ketti<\\/p>\",\"start\":\"2022-06-29 10:45:57\",\"end\":\"2022-06-30 10:45:57\",\"promotion_type\":\"percent\",\"promotion_value\":\"30.00\",\"products\":[\"4\",null],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/promotions\"}', '2022-06-29 09:39:17', '2022-06-29 09:39:17');
INSERT INTO `admin_operation_log` VALUES (1018, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"title\":\"Aksiya 2022\",\"body\":\"<p>Aksiya 2022. hamma tovarlaga aksiya ketti<\\/p>\",\"start\":\"2022-06-29 10:45:57\",\"end\":\"2022-06-30 10:45:57\",\"promotion_type\":\"percent\",\"promotion_value\":\"30.00\",\"products\":[\"4\",null],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/promotions\"}', '2022-06-29 09:39:28', '2022-06-29 09:39:28');
INSERT INTO `admin_operation_log` VALUES (1019, 1, 'admin/promotions/3', 'GET', '127.0.0.1', '[]', '2022-06-29 09:39:28', '2022-06-29 09:39:28');
INSERT INTO `admin_operation_log` VALUES (1020, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-29 09:39:36', '2022-06-29 09:39:36');
INSERT INTO `admin_operation_log` VALUES (1021, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 09:39:38', '2022-06-29 09:39:38');
INSERT INTO `admin_operation_log` VALUES (1022, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 09:39:44', '2022-06-29 09:39:44');
INSERT INTO `admin_operation_log` VALUES (1023, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-29 09:39:56', '2022-06-29 09:39:56');
INSERT INTO `admin_operation_log` VALUES (1024, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"title\":\"Aksiya 2022\",\"body\":\"<p>Aksiya 2022. hamma tovarlaga aksiya ketti<\\/p>\",\"start\":\"2022-06-29 10:45:57\",\"end\":\"2022-06-30 10:45:57\",\"promotion_type\":\"percent\",\"promotion_value\":\"1.00\",\"products\":[null],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2022-06-29 09:40:03', '2022-06-29 09:40:03');
INSERT INTO `admin_operation_log` VALUES (1025, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-29 09:40:04', '2022-06-29 09:40:04');
INSERT INTO `admin_operation_log` VALUES (1026, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-29 09:40:17', '2022-06-29 09:40:17');
INSERT INTO `admin_operation_log` VALUES (1027, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"title\":\"Aksiya 2022\",\"body\":\"<p>Aksiya 2022. hamma tovarlaga aksiya ketti<\\/p>\",\"start\":\"2022-06-29 10:45:57\",\"end\":\"2022-06-30 10:45:57\",\"promotion_type\":\"percent\",\"promotion_value\":\"1.00\",\"products\":[null],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2022-06-29 09:40:23', '2022-06-29 09:40:23');
INSERT INTO `admin_operation_log` VALUES (1028, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"title\":\"Aksiya 2022\",\"body\":\"<p>Aksiya 2022. hamma tovarlaga aksiya ketti<\\/p>\",\"start\":\"2022-06-29 10:45:57\",\"end\":\"2022-06-30 10:45:57\",\"promotion_type\":\"percent\",\"promotion_value\":\"1.00\",\"products\":[null],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2022-06-29 09:40:35', '2022-06-29 09:40:35');
INSERT INTO `admin_operation_log` VALUES (1029, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"title\":\"Aksiya 2022\",\"body\":\"<p>Aksiya 2022. hamma tovarlaga aksiya ketti<\\/p>\",\"start\":\"2022-06-29 10:45:57\",\"end\":\"2022-06-30 10:45:57\",\"promotion_type\":\"percent\",\"promotion_value\":\"1.00\",\"products\":[null],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2022-06-29 09:40:56', '2022-06-29 09:40:56');
INSERT INTO `admin_operation_log` VALUES (1030, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-29 09:40:57', '2022-06-29 09:40:57');
INSERT INTO `admin_operation_log` VALUES (1031, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 09:40:59', '2022-06-29 09:40:59');
INSERT INTO `admin_operation_log` VALUES (1032, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"title\":\"Aksiya 2022\",\"body\":\"<p>Aksiya 2022. hamma tovarlaga aksiya ketti<\\/p>\",\"start\":\"2022-06-29 10:45:57\",\"end\":\"2022-06-30 10:45:57\",\"promotion_type\":\"percent\",\"promotion_value\":\"1.00\",\"products\":[\"4\",null],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/promotions\\/3\"}', '2022-06-29 09:41:05', '2022-06-29 09:41:05');
INSERT INTO `admin_operation_log` VALUES (1033, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-29 09:41:05', '2022-06-29 09:41:05');
INSERT INTO `admin_operation_log` VALUES (1034, 1, 'admin/products/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 09:41:10', '2022-06-29 09:41:10');
INSERT INTO `admin_operation_log` VALUES (1035, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"title\":\"Aksiya 2022\",\"body\":\"<p>Aksiya 2022. hamma tovarlaga aksiya ketti<\\/p>\",\"start\":\"2022-06-29 10:45:57\",\"end\":\"2022-06-30 10:45:57\",\"promotion_type\":\"percent\",\"promotion_value\":\"30.00\",\"products\":[\"4\",null],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2022-06-29 09:42:30', '2022-06-29 09:42:30');
INSERT INTO `admin_operation_log` VALUES (1036, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-29 09:42:30', '2022-06-29 09:42:30');
INSERT INTO `admin_operation_log` VALUES (1037, 1, 'admin/products/4/edit', 'GET', '127.0.0.1', '[]', '2022-06-29 09:42:32', '2022-06-29 09:42:32');
INSERT INTO `admin_operation_log` VALUES (1038, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 09:43:55', '2022-06-29 09:43:55');
INSERT INTO `admin_operation_log` VALUES (1039, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 09:43:55', '2022-06-29 09:43:55');
INSERT INTO `admin_operation_log` VALUES (1040, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 09:43:57', '2022-06-29 09:43:57');
INSERT INTO `admin_operation_log` VALUES (1041, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 09:44:13', '2022-06-29 09:44:13');
INSERT INTO `admin_operation_log` VALUES (1042, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"title\":\"Aksiya 2022\",\"body\":\"<p>Aksiya 2022. hamma tovarlaga aksiya ketti<\\/p>\",\"start\":\"2022-06-29 10:45:57\",\"end\":\"2022-06-30 10:45:57\",\"promotion_type\":\"cash\",\"promotion_value\":\"100000.00\",\"products\":[\"4\",null],\"_token\":\"Yygb8enjEdUL3XMEIf2FPtUZy7TYEEVdguLbOKTJ\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/promotions\"}', '2022-06-29 09:44:28', '2022-06-29 09:44:28');
INSERT INTO `admin_operation_log` VALUES (1043, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-29 09:44:29', '2022-06-29 09:44:29');
INSERT INTO `admin_operation_log` VALUES (1044, 1, 'admin/products/4/edit', 'GET', '127.0.0.1', '[]', '2022-06-29 09:44:31', '2022-06-29 09:44:31');
INSERT INTO `admin_operation_log` VALUES (1045, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-29 10:00:30', '2022-06-29 10:00:30');
INSERT INTO `admin_operation_log` VALUES (1046, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-29 10:00:47', '2022-06-29 10:00:47');
INSERT INTO `admin_operation_log` VALUES (1047, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-29 10:01:10', '2022-06-29 10:01:10');
INSERT INTO `admin_operation_log` VALUES (1048, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-29 10:01:38', '2022-06-29 10:01:38');
INSERT INTO `admin_operation_log` VALUES (1049, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-29 10:01:50', '2022-06-29 10:01:50');
INSERT INTO `admin_operation_log` VALUES (1050, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-29 10:02:19', '2022-06-29 10:02:19');
INSERT INTO `admin_operation_log` VALUES (1051, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-29 10:02:26', '2022-06-29 10:02:26');
INSERT INTO `admin_operation_log` VALUES (1052, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-29 10:03:24', '2022-06-29 10:03:24');
INSERT INTO `admin_operation_log` VALUES (1053, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-29 10:03:41', '2022-06-29 10:03:41');
INSERT INTO `admin_operation_log` VALUES (1054, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-29 10:03:57', '2022-06-29 10:03:57');
INSERT INTO `admin_operation_log` VALUES (1055, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-29 10:04:31', '2022-06-29 10:04:31');
INSERT INTO `admin_operation_log` VALUES (1056, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-29 10:04:38', '2022-06-29 10:04:38');
INSERT INTO `admin_operation_log` VALUES (1057, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 10:07:26', '2022-06-29 10:07:26');
INSERT INTO `admin_operation_log` VALUES (1058, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-29 10:07:43', '2022-06-29 10:07:43');
INSERT INTO `admin_operation_log` VALUES (1059, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-06-29 10:07:57', '2022-06-29 10:07:57');
INSERT INTO `admin_operation_log` VALUES (1060, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-29 10:08:23', '2022-06-29 10:08:23');
INSERT INTO `admin_operation_log` VALUES (1061, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-29 10:10:34', '2022-06-29 10:10:34');
INSERT INTO `admin_operation_log` VALUES (1062, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-29 10:11:10', '2022-06-29 10:11:10');
INSERT INTO `admin_operation_log` VALUES (1063, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 10:39:09', '2022-06-29 10:39:09');
INSERT INTO `admin_operation_log` VALUES (1064, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-29 10:42:33', '2022-06-29 10:42:33');
INSERT INTO `admin_operation_log` VALUES (1065, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-29 10:43:14', '2022-06-29 10:43:14');
INSERT INTO `admin_operation_log` VALUES (1066, 1, 'admin/products/4/edit', 'GET', '127.0.0.1', '[]', '2022-06-29 10:43:26', '2022-06-29 10:43:26');
INSERT INTO `admin_operation_log` VALUES (1067, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-29 10:43:31', '2022-06-29 10:43:31');
INSERT INTO `admin_operation_log` VALUES (1068, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 10:43:34', '2022-06-29 10:43:34');
INSERT INTO `admin_operation_log` VALUES (1069, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-29 10:43:35', '2022-06-29 10:43:35');
INSERT INTO `admin_operation_log` VALUES (1070, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '[]', '2022-06-29 10:43:51', '2022-06-29 10:43:51');
INSERT INTO `admin_operation_log` VALUES (1071, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '[]', '2022-06-29 10:44:01', '2022-06-29 10:44:01');
INSERT INTO `admin_operation_log` VALUES (1072, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '[]', '2022-06-29 10:44:17', '2022-06-29 10:44:17');
INSERT INTO `admin_operation_log` VALUES (1073, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-30 04:20:52', '2022-06-30 04:20:52');
INSERT INTO `admin_operation_log` VALUES (1074, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 04:20:58', '2022-06-30 04:20:58');
INSERT INTO `admin_operation_log` VALUES (1075, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 04:21:05', '2022-06-30 04:21:05');
INSERT INTO `admin_operation_log` VALUES (1076, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 04:38:50', '2022-06-30 04:38:50');
INSERT INTO `admin_operation_log` VALUES (1077, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-30 04:39:00', '2022-06-30 04:39:00');
INSERT INTO `admin_operation_log` VALUES (1078, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 04:39:06', '2022-06-30 04:39:06');
INSERT INTO `admin_operation_log` VALUES (1079, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u0421\\u0435\\u0440\\u0432\\u0438\\u0441\\u044b\",\"icon\":\"fa-user\",\"uri\":\"\\/services\",\"roles\":[null],\"permission\":null,\"_token\":\"VP3i5v6H2SiN3EUFPvYhKmijYqOKpyD2Jbs3lEEB\"}', '2022-06-30 04:39:40', '2022-06-30 04:39:40');
INSERT INTO `admin_operation_log` VALUES (1080, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-06-30 04:39:40', '2022-06-30 04:39:40');
INSERT INTO `admin_operation_log` VALUES (1081, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-06-30 04:39:51', '2022-06-30 04:39:51');
INSERT INTO `admin_operation_log` VALUES (1082, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 04:39:54', '2022-06-30 04:39:54');
INSERT INTO `admin_operation_log` VALUES (1083, 1, 'admin/services/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 04:39:57', '2022-06-30 04:39:57');
INSERT INTO `admin_operation_log` VALUES (1084, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2022-06-30 04:40:11', '2022-06-30 04:40:11');
INSERT INTO `admin_operation_log` VALUES (1085, 1, 'admin/services', 'POST', '127.0.0.1', '{\"title\":\"\\u0412\\u044b\\u0435\\u0437\\u0434\\u043d\\u043e\\u0439 \\u043a\\u043e\\u043c\\u043f\\u044c\\u044e\\u0442\\u0435\\u0440\\u043d\\u044b\\u0439 \\u0441\\u0435\\u0440\\u0432\\u0438\\u0441\",\"body\":\"<p>\\u041c\\u044b \\u0437\\u0430\\u043d\\u0438\\u043c\\u0430\\u0435\\u043c\\u0441\\u044f \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u043e\\u043c \\u041f\\u041a \\u0438 \\u043d\\u043e\\u0443\\u0442\\u0431\\u0443\\u043a\\u043e\\u0432 \\u0443\\u0436\\u0435 \\u0431\\u043e\\u043b\\u0435\\u0435 7-\\u0438 \\u043b\\u0435\\u0442 \\u0438 \\u043f\\u043e \\u043f\\u0440\\u0430\\u0432\\u0443 \\u043c\\u043e\\u0436\\u0435\\u043c \\u0441\\u0447\\u0438\\u0442\\u0430\\u0442\\u044c\\u0441\\u044f \\u043e\\u0434\\u043d\\u043e\\u0439 \\u0438\\u0437 \\u043a\\u0440\\u0443\\u043f\\u043d\\u0435\\u0439\\u0448\\u0438\\u0445 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0439 \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0435 IT-\\u0443\\u0441\\u043b\\u0443\\u0433.<\\/p>\\r\\n\\r\\n<p>\\u041d\\u0430\\u0448\\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0431\\u044b\\u0441\\u0442\\u0440\\u043e \\u0438 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e \\u043e\\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u044f\\u0442 \\u043d\\u0430\\u0441\\u0442\\u0440\\u043e\\u0439\\u043a\\u0443 \\u043f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043a\\u043e\\u043c\\u043f\\u044c\\u044e\\u0442\\u0435\\u0440\\u043e\\u0432, \\u043d\\u043e\\u0443\\u0442\\u0431\\u0443\\u043a\\u043e\\u0432 \\u0438 \\u043b\\u044e\\u0431\\u043e\\u0439 \\u043e\\u0444\\u0438\\u0441\\u043d\\u043e\\u0439 \\u0442\\u0435\\u0445\\u043d\\u0438\\u043a\\u0438, \\u043f\\u0440\\u0438 \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0443\\u0442 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442, \\u0443\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u044f\\u0442 \\u0437\\u0430\\u0449\\u0438\\u0442\\u0443 \\u043e\\u0442 \\u0432\\u0438\\u0440\\u0443\\u0441\\u043e\\u0432 \\u0438 \\u0434\\u0440\\u0443\\u0433\\u043e\\u0433\\u043e \\u0432\\u0440\\u0435\\u0434\\u043e\\u043d\\u043e\\u0441\\u043d\\u043e\\u0433\\u043e \\u041f\\u041e.<\\/p>\\r\\n\\r\\n<h2>\\u041c\\u044b \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c \\u0412\\u0430\\u043c:<\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\r\\n\\t<p>\\u041f\\u0430\\u043a\\u0435\\u0442&nbsp;<strong>&quot;\\u0421\\u0418\\u0422\\u0418 \\u0421\\u0442\\u0430\\u0440\\u0442&quot;<\\/strong>&nbsp;\\u0434\\u043b\\u044f \\u043a\\u043e\\u043c\\u043f\\u044c\\u044e\\u0442\\u0435\\u0440\\u043e\\u0432 \\u0438 \\u043d\\u043e\\u0443\\u0442\\u0431\\u0443\\u043a\\u043e\\u0432&nbsp;\\u043f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u041f\\u0430\\u043a\\u0435\\u0442&nbsp;<strong>&quot;\\u0421\\u0418\\u0422\\u0418 \\u041e\\u043f\\u0442\\u0438\\u043c\\u0430&quot;<\\/strong>&nbsp;\\u0434\\u043b\\u044f \\u043a\\u043e\\u043c\\u043f\\u044c\\u044e\\u0442\\u0435\\u0440\\u043e\\u0432 \\u0438 \\u043d\\u043e\\u0443\\u0442\\u0431\\u0443\\u043a\\u043e\\u0432&nbsp;\\u043f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u041f\\u0430\\u043a\\u0435\\u0442&nbsp;<strong>&quot;\\u0421\\u0418\\u0422\\u0418 \\u041c\\u0430\\u043a\\u0441&quot;<\\/strong>&nbsp;\\u0434\\u043b\\u044f \\u043a\\u043e\\u043c\\u043f\\u044c\\u044e\\u0442\\u0435\\u0440\\u043e\\u0432 \\u0438 \\u043d\\u043e\\u0443\\u0442\\u0431\\u0443\\u043a\\u043e\\u0432&nbsp;\\u043f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\",\"deadline\":null,\"price\":\"100000\",\"_token\":\"VP3i5v6H2SiN3EUFPvYhKmijYqOKpyD2Jbs3lEEB\"}', '2022-06-30 04:40:58', '2022-06-30 04:40:58');
INSERT INTO `admin_operation_log` VALUES (1086, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-06-30 04:40:59', '2022-06-30 04:40:59');
INSERT INTO `admin_operation_log` VALUES (1087, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-06-30 04:42:00', '2022-06-30 04:42:00');
INSERT INTO `admin_operation_log` VALUES (1088, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-06-30 04:44:51', '2022-06-30 04:44:51');
INSERT INTO `admin_operation_log` VALUES (1089, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-06-30 04:45:00', '2022-06-30 04:45:00');
INSERT INTO `admin_operation_log` VALUES (1090, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-06-30 04:45:16', '2022-06-30 04:45:16');
INSERT INTO `admin_operation_log` VALUES (1091, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-06-30 04:45:22', '2022-06-30 04:45:22');
INSERT INTO `admin_operation_log` VALUES (1092, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-06-30 06:48:40', '2022-06-30 06:48:40');
INSERT INTO `admin_operation_log` VALUES (1093, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 06:53:08', '2022-06-30 06:53:08');
INSERT INTO `admin_operation_log` VALUES (1094, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-06-30 06:55:08', '2022-06-30 06:55:08');
INSERT INTO `admin_operation_log` VALUES (1095, 1, 'admin/services/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 06:55:09', '2022-06-30 06:55:09');
INSERT INTO `admin_operation_log` VALUES (1096, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 06:55:16', '2022-06-30 06:55:16');
INSERT INTO `admin_operation_log` VALUES (1097, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 06:55:17', '2022-06-30 06:55:17');
INSERT INTO `admin_operation_log` VALUES (1098, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 06:55:18', '2022-06-30 06:55:18');
INSERT INTO `admin_operation_log` VALUES (1099, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '[]', '2022-06-30 06:56:06', '2022-06-30 06:56:06');
INSERT INTO `admin_operation_log` VALUES (1100, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Service\",\"args\":[\"1\"]}', '2022-06-30 06:56:10', '2022-06-30 06:56:10');
INSERT INTO `admin_operation_log` VALUES (1101, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Service\",\"args\":[\"1\"]}', '2022-06-30 06:58:00', '2022-06-30 06:58:00');
INSERT INTO `admin_operation_log` VALUES (1102, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 07:02:31', '2022-06-30 07:02:31');
INSERT INTO `admin_operation_log` VALUES (1103, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-06-30 07:03:05', '2022-06-30 07:03:05');
INSERT INTO `admin_operation_log` VALUES (1104, 1, 'admin/services/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 07:03:06', '2022-06-30 07:03:06');
INSERT INTO `admin_operation_log` VALUES (1105, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 07:03:52', '2022-06-30 07:03:52');
INSERT INTO `admin_operation_log` VALUES (1106, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 07:03:53', '2022-06-30 07:03:53');
INSERT INTO `admin_operation_log` VALUES (1107, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Service\",\"args\":[\"1\"]}', '2022-06-30 07:04:08', '2022-06-30 07:04:08');
INSERT INTO `admin_operation_log` VALUES (1108, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '[]', '2022-06-30 07:04:32', '2022-06-30 07:04:32');
INSERT INTO `admin_operation_log` VALUES (1109, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Service\",\"args\":[\"1\"]}', '2022-06-30 07:04:46', '2022-06-30 07:04:46');
INSERT INTO `admin_operation_log` VALUES (1110, 1, 'admin/promotions', 'POST', '127.0.0.1', '{\"title\":\"service aksiya\",\"body\":\"<p>service aksiya<\\/p>\",\"start\":\"2022-06-30 09:04:32\",\"end\":\"2022-07-01 09:04:32\",\"promotion_type\":\"to_service\",\"promotion_value\":\"15.00\",\"services\":[\"1\",null],\"_token\":\"VP3i5v6H2SiN3EUFPvYhKmijYqOKpyD2Jbs3lEEB\",\"after-save\":\"1\"}', '2022-06-30 07:04:58', '2022-06-30 07:04:58');
INSERT INTO `admin_operation_log` VALUES (1111, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '[]', '2022-06-30 07:04:59', '2022-06-30 07:04:59');
INSERT INTO `admin_operation_log` VALUES (1112, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Service\",\"args\":[\"1\"]}', '2022-06-30 07:05:15', '2022-06-30 07:05:15');
INSERT INTO `admin_operation_log` VALUES (1113, 1, 'admin/promotions', 'POST', '127.0.0.1', '{\"title\":\"service aksiya\",\"body\":\"<p>service aksiya<\\/p>\",\"start\":\"2022-06-30 09:04:32\",\"end\":\"2022-07-01 09:04:32\",\"promotion_type\":\"to_service\",\"promotion_value\":\"15.00\",\"services\":[\"1\",null],\"_token\":\"VP3i5v6H2SiN3EUFPvYhKmijYqOKpyD2Jbs3lEEB\",\"after-save\":\"1\"}', '2022-06-30 07:05:17', '2022-06-30 07:05:17');
INSERT INTO `admin_operation_log` VALUES (1114, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '[]', '2022-06-30 07:05:18', '2022-06-30 07:05:18');
INSERT INTO `admin_operation_log` VALUES (1115, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Service\",\"args\":[\"1\"]}', '2022-06-30 07:08:00', '2022-06-30 07:08:00');
INSERT INTO `admin_operation_log` VALUES (1116, 1, 'admin/promotions', 'POST', '127.0.0.1', '{\"title\":\"service aksiya\",\"body\":\"<p>service aksiya<\\/p>\",\"start\":\"2022-06-30 09:04:32\",\"end\":\"2022-07-01 09:04:32\",\"promotion_type\":\"to_service\",\"promotion_value\":\"15.00\",\"services\":[\"1\",null],\"_token\":\"VP3i5v6H2SiN3EUFPvYhKmijYqOKpyD2Jbs3lEEB\"}', '2022-06-30 07:08:02', '2022-06-30 07:08:02');
INSERT INTO `admin_operation_log` VALUES (1117, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-30 07:08:03', '2022-06-30 07:08:03');
INSERT INTO `admin_operation_log` VALUES (1118, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-06-30 07:08:07', '2022-06-30 07:08:07');
INSERT INTO `admin_operation_log` VALUES (1119, 1, 'admin/services/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 07:08:11', '2022-06-30 07:08:11');
INSERT INTO `admin_operation_log` VALUES (1120, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 07:08:18', '2022-06-30 07:08:18');
INSERT INTO `admin_operation_log` VALUES (1121, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-06-30 07:10:22', '2022-06-30 07:10:22');
INSERT INTO `admin_operation_log` VALUES (1122, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-06-30 07:10:24', '2022-06-30 07:10:24');
INSERT INTO `admin_operation_log` VALUES (1123, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-06-30 07:10:36', '2022-06-30 07:10:36');
INSERT INTO `admin_operation_log` VALUES (1124, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-06-30 07:10:56', '2022-06-30 07:10:56');
INSERT INTO `admin_operation_log` VALUES (1125, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 07:24:03', '2022-06-30 07:24:03');
INSERT INTO `admin_operation_log` VALUES (1126, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"title\":\"Aksiya 2022\",\"body\":\"<p>Aksiya 2022. hamma tovarlaga aksiya ketti<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<table border=\\\"1\\\" cellpadding=\\\"1\\\" cellspacing=\\\"1\\\" style=\\\"width:500px\\\">\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>123123<\\/td>\\r\\n\\t\\t\\t<td>213231123<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>123123<\\/td>\\r\\n\\t\\t\\t<td>231321<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>231231<\\/td>\\r\\n\\t\\t\\t<td>123123<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\\r\\n\\r\\n<p>&nbsp;<\\/p>\",\"start\":\"2022-06-29 10:45:57\",\"end\":\"2022-06-30 10:45:57\",\"promotion_type\":null,\"_token\":\"VP3i5v6H2SiN3EUFPvYhKmijYqOKpyD2Jbs3lEEB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/promotions\"}', '2022-06-30 07:24:14', '2022-06-30 07:24:14');
INSERT INTO `admin_operation_log` VALUES (1127, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-30 07:24:14', '2022-06-30 07:24:14');
INSERT INTO `admin_operation_log` VALUES (1128, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 07:27:57', '2022-06-30 07:27:57');
INSERT INTO `admin_operation_log` VALUES (1129, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"title\":\"Aksiya 2022\",\"body\":\"<p>Aksiya 2022. hamma tovarlaga aksiya ketti<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<table border=\\\"1\\\" cellpadding=\\\"1\\\" cellspacing=\\\"1\\\" style=\\\"width:500px\\\">\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>123123<\\/td>\\r\\n\\t\\t\\t<td>213231123<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>123123<\\/td>\\r\\n\\t\\t\\t<td>231321<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>231231<\\/td>\\r\\n\\t\\t\\t<td>123123<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\\r\\n\\r\\n<p>&nbsp;<\\/p>\",\"start\":\"2022-06-29 10:45:57\",\"end\":\"2022-06-30 10:45:57\",\"promotion_type\":\"others\",\"_token\":\"VP3i5v6H2SiN3EUFPvYhKmijYqOKpyD2Jbs3lEEB\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/promotions\"}', '2022-06-30 07:28:07', '2022-06-30 07:28:07');
INSERT INTO `admin_operation_log` VALUES (1130, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '[]', '2022-06-30 07:28:08', '2022-06-30 07:28:08');
INSERT INTO `admin_operation_log` VALUES (1131, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"title\":\"Aksiya 2022\",\"body\":\"<p>Aksiya 2022. hamma tovarlaga aksiya ketti<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<table border=\\\"1\\\" cellpadding=\\\"1\\\" cellspacing=\\\"1\\\" style=\\\"width:500px\\\">\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>123123<\\/td>\\r\\n\\t\\t\\t<td>213231123<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>123123<\\/td>\\r\\n\\t\\t\\t<td>231321<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>231231<\\/td>\\r\\n\\t\\t\\t<td>123123<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\\r\\n\\r\\n<p>&nbsp;<\\/p>\",\"start\":\"2022-06-29 10:45:57\",\"end\":\"2022-06-30 10:45:57\",\"promotion_type\":\"others\",\"_token\":\"VP3i5v6H2SiN3EUFPvYhKmijYqOKpyD2Jbs3lEEB\",\"_method\":\"PUT\"}', '2022-06-30 07:29:15', '2022-06-30 07:29:15');
INSERT INTO `admin_operation_log` VALUES (1132, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-06-30 07:29:16', '2022-06-30 07:29:16');
INSERT INTO `admin_operation_log` VALUES (1133, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 07:57:37', '2022-06-30 07:57:37');
INSERT INTO `admin_operation_log` VALUES (1134, 1, 'admin/brands/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 07:58:42', '2022-06-30 07:58:42');
INSERT INTO `admin_operation_log` VALUES (1135, 1, 'admin/brands', 'POST', '127.0.0.1', '{\"name\":\"Lenovo\",\"_token\":\"VP3i5v6H2SiN3EUFPvYhKmijYqOKpyD2Jbs3lEEB\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/brands\"}', '2022-06-30 07:58:52', '2022-06-30 07:58:52');
INSERT INTO `admin_operation_log` VALUES (1136, 1, 'admin/brands/create', 'GET', '127.0.0.1', '[]', '2022-06-30 07:58:52', '2022-06-30 07:58:52');
INSERT INTO `admin_operation_log` VALUES (1137, 1, 'admin/brands', 'POST', '127.0.0.1', '{\"name\":\"Dell\",\"_token\":\"VP3i5v6H2SiN3EUFPvYhKmijYqOKpyD2Jbs3lEEB\",\"after-save\":\"2\"}', '2022-06-30 07:59:03', '2022-06-30 07:59:03');
INSERT INTO `admin_operation_log` VALUES (1138, 1, 'admin/brands/create', 'GET', '127.0.0.1', '[]', '2022-06-30 07:59:03', '2022-06-30 07:59:03');
INSERT INTO `admin_operation_log` VALUES (1139, 1, 'admin/brands', 'POST', '127.0.0.1', '{\"name\":\"Samsung\",\"_token\":\"VP3i5v6H2SiN3EUFPvYhKmijYqOKpyD2Jbs3lEEB\"}', '2022-06-30 07:59:10', '2022-06-30 07:59:10');
INSERT INTO `admin_operation_log` VALUES (1140, 1, 'admin/brands', 'GET', '127.0.0.1', '[]', '2022-06-30 07:59:10', '2022-06-30 07:59:10');
INSERT INTO `admin_operation_log` VALUES (1141, 1, 'admin/brands/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 07:59:11', '2022-06-30 07:59:11');
INSERT INTO `admin_operation_log` VALUES (1142, 1, 'admin/brands', 'POST', '127.0.0.1', '{\"name\":\"nvidia\",\"_token\":\"VP3i5v6H2SiN3EUFPvYhKmijYqOKpyD2Jbs3lEEB\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/brands\"}', '2022-06-30 07:59:24', '2022-06-30 07:59:24');
INSERT INTO `admin_operation_log` VALUES (1143, 1, 'admin/brands/create', 'GET', '127.0.0.1', '[]', '2022-06-30 07:59:24', '2022-06-30 07:59:24');
INSERT INTO `admin_operation_log` VALUES (1144, 1, 'admin/brands', 'POST', '127.0.0.1', '{\"name\":\"MSI\",\"_token\":\"VP3i5v6H2SiN3EUFPvYhKmijYqOKpyD2Jbs3lEEB\",\"after-save\":\"2\"}', '2022-06-30 07:59:31', '2022-06-30 07:59:31');
INSERT INTO `admin_operation_log` VALUES (1145, 1, 'admin/brands/create', 'GET', '127.0.0.1', '[]', '2022-06-30 07:59:31', '2022-06-30 07:59:31');
INSERT INTO `admin_operation_log` VALUES (1146, 1, 'admin/brands', 'POST', '127.0.0.1', '{\"name\":\"Acer\",\"_token\":\"VP3i5v6H2SiN3EUFPvYhKmijYqOKpyD2Jbs3lEEB\"}', '2022-06-30 07:59:37', '2022-06-30 07:59:37');
INSERT INTO `admin_operation_log` VALUES (1147, 1, 'admin/brands', 'GET', '127.0.0.1', '[]', '2022-06-30 07:59:37', '2022-06-30 07:59:37');
INSERT INTO `admin_operation_log` VALUES (1148, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"1\",\"_model\":\"App_Models_Brand\",\"_token\":\"VP3i5v6H2SiN3EUFPvYhKmijYqOKpyD2Jbs3lEEB\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-06-30 07:59:42', '2022-06-30 07:59:42');
INSERT INTO `admin_operation_log` VALUES (1149, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 07:59:43', '2022-06-30 07:59:43');
INSERT INTO `admin_operation_log` VALUES (1150, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 07:59:46', '2022-06-30 07:59:46');
INSERT INTO `admin_operation_log` VALUES (1151, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-30 07:59:50', '2022-06-30 07:59:50');
INSERT INTO `admin_operation_log` VALUES (1152, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 08:11:04', '2022-06-30 08:11:04');
INSERT INTO `admin_operation_log` VALUES (1153, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-30 08:11:09', '2022-06-30 08:11:09');
INSERT INTO `admin_operation_log` VALUES (1154, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-30 08:11:24', '2022-06-30 08:11:24');
INSERT INTO `admin_operation_log` VALUES (1155, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 08:11:39', '2022-06-30 08:11:39');
INSERT INTO `admin_operation_log` VALUES (1156, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"asddsa\",\"category_id\":\"2\",\"subcategory_id\":\"4\",\"brand_id\":\"3\",\"_file_sort_\":{\"attachments\":null},\"tags\":[null],\"status\":\"on\",\"price\":\"112.00\",\"in_stock\":\"123\",\"description\":\"<p>123<\\/p>\",\"is_discount\":\"0\",\"_token\":\"VP3i5v6H2SiN3EUFPvYhKmijYqOKpyD2Jbs3lEEB\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2022-06-30 08:11:57', '2022-06-30 08:11:57');
INSERT INTO `admin_operation_log` VALUES (1157, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-30 08:11:57', '2022-06-30 08:11:57');
INSERT INTO `admin_operation_log` VALUES (1158, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 08:16:15', '2022-06-30 08:16:15');
INSERT INTO `admin_operation_log` VALUES (1159, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 08:16:24', '2022-06-30 08:16:24');
INSERT INTO `admin_operation_log` VALUES (1160, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 08:16:26', '2022-06-30 08:16:26');
INSERT INTO `admin_operation_log` VALUES (1161, 1, 'admin/products/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 08:21:03', '2022-06-30 08:21:03');
INSERT INTO `admin_operation_log` VALUES (1162, 1, 'admin/products/11', 'PUT', '127.0.0.1', '{\"name\":\"asddsa\",\"category_id\":\"2\",\"subcategory_id\":\"4\",\"brand_id\":\"3\",\"_file_sort_\":{\"attachments\":null},\"tags\":[null],\"status\":\"on\",\"price\":\"112.00\",\"in_stock\":\"123\",\"description\":\"<p>123<\\/p>\",\"is_discount\":\"1\",\"discount_from\":\"2022-06-30 00:00:00\",\"discount_to\":\"2022-06-30 00:00:00\",\"discount_price\":null,\"_token\":\"VP3i5v6H2SiN3EUFPvYhKmijYqOKpyD2Jbs3lEEB\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2022-06-30 08:21:09', '2022-06-30 08:21:09');
INSERT INTO `admin_operation_log` VALUES (1163, 1, 'admin/products/11/edit', 'GET', '127.0.0.1', '[]', '2022-06-30 08:21:09', '2022-06-30 08:21:09');
INSERT INTO `admin_operation_log` VALUES (1164, 1, 'admin/products/11/edit', 'GET', '127.0.0.1', '[]', '2022-06-30 09:37:10', '2022-06-30 09:37:10');
INSERT INTO `admin_operation_log` VALUES (1165, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 10:10:57', '2022-06-30 10:10:57');
INSERT INTO `admin_operation_log` VALUES (1166, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 10:43:59', '2022-06-30 10:43:59');
INSERT INTO `admin_operation_log` VALUES (1167, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-30 10:44:19', '2022-06-30 10:44:19');
INSERT INTO `admin_operation_log` VALUES (1168, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-30 10:45:01', '2022-06-30 10:45:01');
INSERT INTO `admin_operation_log` VALUES (1169, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-06-30 10:45:08', '2022-06-30 10:45:08');
INSERT INTO `admin_operation_log` VALUES (1170, 1, 'admin/products', 'GET', '127.0.0.1', '{\"page\":\"5\",\"_pjax\":\"#pjax-container\"}', '2022-06-30 11:10:20', '2022-06-30 11:10:20');
INSERT INTO `admin_operation_log` VALUES (1171, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"4\"}', '2022-06-30 11:10:24', '2022-06-30 11:10:24');
INSERT INTO `admin_operation_log` VALUES (1172, 1, 'admin/products/69/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-30 11:10:30', '2022-06-30 11:10:30');
INSERT INTO `admin_operation_log` VALUES (1173, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-01 11:03:49', '2022-07-01 11:03:49');
INSERT INTO `admin_operation_log` VALUES (1174, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-01 11:03:53', '2022-07-01 11:03:53');
INSERT INTO `admin_operation_log` VALUES (1175, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-01 11:03:54', '2022-07-01 11:03:54');
INSERT INTO `admin_operation_log` VALUES (1176, 1, 'admin/promotions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-01 11:03:56', '2022-07-01 11:03:56');
INSERT INTO `admin_operation_log` VALUES (1177, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-07-01 11:04:13', '2022-07-01 11:04:13');
INSERT INTO `admin_operation_log` VALUES (1178, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"],\"page\":\"2\"}', '2022-07-01 11:04:21', '2022-07-01 11:04:21');
INSERT INTO `admin_operation_log` VALUES (1179, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"],\"page\":\"1\"}', '2022-07-01 11:04:26', '2022-07-01 11:04:26');
INSERT INTO `admin_operation_log` VALUES (1180, 1, 'admin/promotions', 'POST', '127.0.0.1', '{\"title\":\"asddsa\",\"body\":\"<p>asddssadasd<\\/p>\",\"start\":\"2022-07-01 13:03:56\",\"end\":\"2022-07-01 13:03:56\",\"promotion_type\":\"to_product\",\"promotion_value\":\"50.00\",\"products\":[\"3\",\"11\",\"4\",\"12\",\"15\",\"16\",\"17\",\"18\",\"13\",\"14\",\"19\",\"20\",\"23\",\"22\",\"21\",\"24\",\"25\",\"26\",\"28\",\"27\",null],\"_token\":\"4kRA8aVMLzomRYK8yOtRLe7U8xcidK9RjxlpepWN\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/promotions\"}', '2022-07-01 11:04:29', '2022-07-01 11:04:29');
INSERT INTO `admin_operation_log` VALUES (1181, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-07-01 11:04:29', '2022-07-01 11:04:29');
INSERT INTO `admin_operation_log` VALUES (1182, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-04 09:29:43', '2022-07-04 09:29:43');
INSERT INTO `admin_operation_log` VALUES (1183, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-04 09:47:09', '2022-07-04 09:47:09');
INSERT INTO `admin_operation_log` VALUES (1184, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"banner\",\"icon\":\"fa-image\",\"uri\":\"\\/banners\",\"roles\":[null],\"permission\":null,\"_token\":\"uIQUqR5Slcdgt1PoHK5xdFgS9vyVzKOFbyVuEfbB\"}', '2022-07-04 09:47:21', '2022-07-04 09:47:21');
INSERT INTO `admin_operation_log` VALUES (1185, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-07-04 09:47:22', '2022-07-04 09:47:22');
INSERT INTO `admin_operation_log` VALUES (1186, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-07-04 09:47:23', '2022-07-04 09:47:23');
INSERT INTO `admin_operation_log` VALUES (1187, 1, 'admin/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-04 09:47:28', '2022-07-04 09:47:28');
INSERT INTO `admin_operation_log` VALUES (1188, 1, 'admin/banners/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-04 09:47:30', '2022-07-04 09:47:30');
INSERT INTO `admin_operation_log` VALUES (1189, 1, 'admin/banners/create', 'GET', '127.0.0.1', '[]', '2022-07-04 09:47:57', '2022-07-04 09:47:57');
INSERT INTO `admin_operation_log` VALUES (1190, 1, 'admin/banners/create', 'GET', '127.0.0.1', '[]', '2022-07-04 09:48:43', '2022-07-04 09:48:43');
INSERT INTO `admin_operation_log` VALUES (1191, 1, 'admin/banners', 'POST', '127.0.0.1', '{\"text\":\"Banner 1\",\"link\":\"\\/categories\",\"_token\":\"uIQUqR5Slcdgt1PoHK5xdFgS9vyVzKOFbyVuEfbB\"}', '2022-07-04 09:48:56', '2022-07-04 09:48:56');
INSERT INTO `admin_operation_log` VALUES (1192, 1, 'admin/banners', 'GET', '127.0.0.1', '[]', '2022-07-04 09:48:56', '2022-07-04 09:48:56');
INSERT INTO `admin_operation_log` VALUES (1193, 1, 'admin/banners', 'GET', '127.0.0.1', '[]', '2022-07-04 09:49:22', '2022-07-04 09:49:22');
INSERT INTO `admin_operation_log` VALUES (1194, 1, 'admin/banners/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-04 09:59:18', '2022-07-04 09:59:18');
INSERT INTO `admin_operation_log` VALUES (1195, 1, 'admin/banners', 'POST', '127.0.0.1', '{\"text\":\"Banner 2\",\"link\":\"\\/products\",\"_token\":\"uIQUqR5Slcdgt1PoHK5xdFgS9vyVzKOFbyVuEfbB\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/banners\"}', '2022-07-04 09:59:31', '2022-07-04 09:59:31');
INSERT INTO `admin_operation_log` VALUES (1196, 1, 'admin/banners', 'GET', '127.0.0.1', '[]', '2022-07-04 09:59:31', '2022-07-04 09:59:31');
INSERT INTO `admin_operation_log` VALUES (1197, 1, 'admin/banners/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-04 10:10:43', '2022-07-04 10:10:43');
INSERT INTO `admin_operation_log` VALUES (1198, 1, 'admin/banners/1', 'PUT', '127.0.0.1', '{\"text\":\"Banner 1 eng zo\'ri, sangabaas ustozimmi hamma tanidiyu butun dunyo xis qildi zo\'rligini eng zo\'ri jigarimga tekkizalmadingu\",\"link\":\"\\/categories\",\"_token\":\"uIQUqR5Slcdgt1PoHK5xdFgS9vyVzKOFbyVuEfbB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/banners\"}', '2022-07-04 10:11:13', '2022-07-04 10:11:13');
INSERT INTO `admin_operation_log` VALUES (1199, 1, 'admin/banners', 'GET', '127.0.0.1', '[]', '2022-07-04 10:11:13', '2022-07-04 10:11:13');
INSERT INTO `admin_operation_log` VALUES (1200, 1, 'admin/banners/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-04 10:14:52', '2022-07-04 10:14:52');
INSERT INTO `admin_operation_log` VALUES (1201, 1, 'admin/banners/1', 'PUT', '127.0.0.1', '{\"text\":null,\"link\":\"\\/categories\",\"_token\":\"uIQUqR5Slcdgt1PoHK5xdFgS9vyVzKOFbyVuEfbB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/banners\"}', '2022-07-04 10:14:55', '2022-07-04 10:14:55');
INSERT INTO `admin_operation_log` VALUES (1202, 1, 'admin/banners/1/edit', 'GET', '127.0.0.1', '[]', '2022-07-04 10:14:55', '2022-07-04 10:14:55');
INSERT INTO `admin_operation_log` VALUES (1203, 1, 'admin/banners/1', 'PUT', '127.0.0.1', '{\"text\":null,\"link\":\"\\/categories\",\"_token\":\"uIQUqR5Slcdgt1PoHK5xdFgS9vyVzKOFbyVuEfbB\",\"_method\":\"PUT\"}', '2022-07-04 10:15:17', '2022-07-04 10:15:17');
INSERT INTO `admin_operation_log` VALUES (1204, 1, 'admin/banners', 'GET', '127.0.0.1', '[]', '2022-07-04 10:15:18', '2022-07-04 10:15:18');
INSERT INTO `admin_operation_log` VALUES (1205, 1, 'admin/banners', 'GET', '127.0.0.1', '[]', '2022-07-04 10:19:46', '2022-07-04 10:19:46');
INSERT INTO `admin_operation_log` VALUES (1206, 1, 'admin/banners', 'GET', '127.0.0.1', '[]', '2022-07-04 10:19:59', '2022-07-04 10:19:59');
INSERT INTO `admin_operation_log` VALUES (1207, 1, 'admin/banners', 'GET', '127.0.0.1', '[]', '2022-07-04 10:32:44', '2022-07-04 10:32:44');
INSERT INTO `admin_operation_log` VALUES (1208, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-04 10:32:52', '2022-07-04 10:32:52');
INSERT INTO `admin_operation_log` VALUES (1209, 1, 'admin/auth/menu/13/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-04 10:32:56', '2022-07-04 10:32:56');
INSERT INTO `admin_operation_log` VALUES (1210, 1, 'admin/auth/menu/13', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u0411\\u0430\\u043d\\u043d\\u0435\\u0440\\u044b\",\"icon\":\"fa-image\",\"uri\":\"\\/banners\",\"roles\":[null],\"permission\":null,\"_token\":\"uIQUqR5Slcdgt1PoHK5xdFgS9vyVzKOFbyVuEfbB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2022-07-04 10:33:04', '2022-07-04 10:33:04');
INSERT INTO `admin_operation_log` VALUES (1211, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-07-04 10:33:04', '2022-07-04 10:33:04');
INSERT INTO `admin_operation_log` VALUES (1212, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-07-04 10:33:06', '2022-07-04 10:33:06');
INSERT INTO `admin_operation_log` VALUES (1213, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-04 10:48:56', '2022-07-04 10:48:56');
INSERT INTO `admin_operation_log` VALUES (1214, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-04 10:48:58', '2022-07-04 10:48:58');
INSERT INTO `admin_operation_log` VALUES (1215, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2022-07-04 10:51:03', '2022-07-04 10:51:03');
INSERT INTO `admin_operation_log` VALUES (1216, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-04 10:51:05', '2022-07-04 10:51:05');
INSERT INTO `admin_operation_log` VALUES (1217, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u041f\\u0443\\u0431\\u043b\\u0438\\u043a\\u0430\\u0446\\u0438\\u0438\",\"icon\":\"fa-newspaper-o\",\"uri\":\"posts\",\"roles\":[null],\"permission\":null,\"_token\":\"uIQUqR5Slcdgt1PoHK5xdFgS9vyVzKOFbyVuEfbB\"}', '2022-07-04 10:51:41', '2022-07-04 10:51:41');
INSERT INTO `admin_operation_log` VALUES (1218, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-07-04 10:51:42', '2022-07-04 10:51:42');
INSERT INTO `admin_operation_log` VALUES (1219, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-07-04 10:51:42', '2022-07-04 10:51:42');
INSERT INTO `admin_operation_log` VALUES (1220, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-04 10:51:44', '2022-07-04 10:51:44');
INSERT INTO `admin_operation_log` VALUES (1221, 1, 'admin/posts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-04 10:51:46', '2022-07-04 10:51:46');
INSERT INTO `admin_operation_log` VALUES (1222, 1, 'admin/posts/create', 'GET', '127.0.0.1', '[]', '2022-07-04 10:52:32', '2022-07-04 10:52:32');
INSERT INTO `admin_operation_log` VALUES (1223, 1, 'admin/posts/create', 'GET', '127.0.0.1', '[]', '2022-07-04 10:52:41', '2022-07-04 10:52:41');
INSERT INTO `admin_operation_log` VALUES (1224, 1, 'admin/posts', 'POST', '127.0.0.1', '{\"title\":\"Monitor yengisi keldi\",\"body\":\"<p>asasdasadsdasdasdasadsad<\\/p>\",\"tags\":[null],\"category_id\":\"1\",\"_token\":\"uIQUqR5Slcdgt1PoHK5xdFgS9vyVzKOFbyVuEfbB\",\"after-save\":\"1\"}', '2022-07-04 10:53:27', '2022-07-04 10:53:27');
INSERT INTO `admin_operation_log` VALUES (1225, 1, 'admin/posts/create', 'GET', '127.0.0.1', '[]', '2022-07-04 10:53:27', '2022-07-04 10:53:27');
INSERT INTO `admin_operation_log` VALUES (1226, 1, 'admin/posts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-04 10:54:28', '2022-07-04 10:54:28');
INSERT INTO `admin_operation_log` VALUES (1227, 1, 'admin/posts/create', 'GET', '127.0.0.1', '[]', '2022-07-04 10:54:29', '2022-07-04 10:54:29');
INSERT INTO `admin_operation_log` VALUES (1228, 1, 'admin/posts', 'POST', '127.0.0.1', '{\"title\":\"Post 1\",\"body\":\"<p>asdasddasdsa<\\/p>\",\"tags\":[null],\"category_id\":\"1\",\"_token\":\"uIQUqR5Slcdgt1PoHK5xdFgS9vyVzKOFbyVuEfbB\"}', '2022-07-04 10:54:39', '2022-07-04 10:54:39');
INSERT INTO `admin_operation_log` VALUES (1229, 1, 'admin/posts/create', 'GET', '127.0.0.1', '[]', '2022-07-04 10:54:39', '2022-07-04 10:54:39');
INSERT INTO `admin_operation_log` VALUES (1230, 1, 'admin/posts/create', 'GET', '127.0.0.1', '[]', '2022-07-04 10:54:55', '2022-07-04 10:54:55');
INSERT INTO `admin_operation_log` VALUES (1231, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-07-04 10:55:12', '2022-07-04 10:55:12');
INSERT INTO `admin_operation_log` VALUES (1232, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-04 10:55:14', '2022-07-04 10:55:14');
INSERT INTO `admin_operation_log` VALUES (1233, 1, 'admin/posts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-04 10:55:16', '2022-07-04 10:55:16');
INSERT INTO `admin_operation_log` VALUES (1234, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-04 10:55:34', '2022-07-04 10:55:34');
INSERT INTO `admin_operation_log` VALUES (1235, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-04 10:55:36', '2022-07-04 10:55:36');
INSERT INTO `admin_operation_log` VALUES (1236, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"asdasd\",\"category_id\":\"2\",\"subcategory_id\":\"5\",\"brand_id\":\"2\",\"_file_sort_\":{\"attachments\":null},\"tags\":[null],\"status\":\"on\",\"price\":null,\"in_stock\":\"0\",\"description\":\"<p>adsdasasd<\\/p>\",\"is_discount\":\"0\",\"_token\":\"uIQUqR5Slcdgt1PoHK5xdFgS9vyVzKOFbyVuEfbB\",\"after-save\":\"1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2022-07-04 10:55:51', '2022-07-04 10:55:51');
INSERT INTO `admin_operation_log` VALUES (1237, 1, 'admin/products/112/edit', 'GET', '127.0.0.1', '[]', '2022-07-04 10:55:51', '2022-07-04 10:55:51');
INSERT INTO `admin_operation_log` VALUES (1238, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-04 10:55:57', '2022-07-04 10:55:57');
INSERT INTO `admin_operation_log` VALUES (1239, 1, 'admin/posts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-04 10:55:58', '2022-07-04 10:55:58');
INSERT INTO `admin_operation_log` VALUES (1240, 1, 'admin/posts', 'POST', '127.0.0.1', '{\"title\":\"asdasd\",\"body\":\"<p>asdsad<\\/p>\",\"tags\":[null],\"category_id\":\"7\",\"_token\":\"uIQUqR5Slcdgt1PoHK5xdFgS9vyVzKOFbyVuEfbB\",\"after-save\":\"1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/posts\"}', '2022-07-04 10:56:08', '2022-07-04 10:56:08');
INSERT INTO `admin_operation_log` VALUES (1241, 1, 'admin/posts/create', 'GET', '127.0.0.1', '[]', '2022-07-04 10:56:08', '2022-07-04 10:56:08');
INSERT INTO `admin_operation_log` VALUES (1242, 1, 'admin/posts', 'POST', '127.0.0.1', '{\"title\":\"asdasd\",\"body\":\"<p>asdsad<\\/p>\",\"tags\":[null],\"category_id\":\"7\",\"_token\":\"uIQUqR5Slcdgt1PoHK5xdFgS9vyVzKOFbyVuEfbB\"}', '2022-07-04 10:56:50', '2022-07-04 10:56:50');
INSERT INTO `admin_operation_log` VALUES (1243, 1, 'admin/posts/create', 'GET', '127.0.0.1', '[]', '2022-07-04 10:56:50', '2022-07-04 10:56:50');
INSERT INTO `admin_operation_log` VALUES (1244, 1, 'admin/posts/create', 'GET', '127.0.0.1', '[]', '2022-07-04 10:56:54', '2022-07-04 10:56:54');
INSERT INTO `admin_operation_log` VALUES (1245, 1, 'admin/posts', 'POST', '127.0.0.1', '{\"title\":\"asdasdasd\",\"body\":\"<p>asddsasad<\\/p>\",\"tags\":[null],\"category_id\":\"8\",\"_token\":\"uIQUqR5Slcdgt1PoHK5xdFgS9vyVzKOFbyVuEfbB\"}', '2022-07-04 10:57:03', '2022-07-04 10:57:03');
INSERT INTO `admin_operation_log` VALUES (1246, 1, 'admin/posts', 'GET', '127.0.0.1', '[]', '2022-07-04 10:57:03', '2022-07-04 10:57:03');
INSERT INTO `admin_operation_log` VALUES (1247, 1, 'admin/posts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-04 11:00:45', '2022-07-04 11:00:45');
INSERT INTO `admin_operation_log` VALUES (1248, 1, 'admin/posts', 'POST', '127.0.0.1', '{\"title\":\"asdasdasd\",\"body\":\"<p>HyperX, \\u043f\\u043e\\u0434\\u0440\\u0430\\u0437\\u0434\\u0435\\u043b\\u0435\\u043d\\u0438\\u0435 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u043f\\u043e \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u0443 \\u0438\\u0433\\u0440\\u043e\\u0432\\u044b\\u0445 \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432, \\u0443\\u0436\\u0435 \\u0437\\u0430\\u043d\\u0438\\u043c\\u0430\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0447\\u043d\\u044b\\u0435 \\u043f\\u043e\\u0437\\u0438\\u0446\\u0438\\u0438 \\u043d\\u0430 \\u043c\\u0438\\u0440\\u043e\\u0432\\u043e\\u043c \\u0440\\u044b\\u043d\\u043a\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0433\\u043e \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u043e\\u0433\\u043e \\u0438\\u0433\\u0440\\u043e\\u0432\\u043e\\u0433\\u043e \\u043e\\u0431\\u043e\\u0440\\u0443\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f. \\u041a\\u043e\\u0440\\u043f\\u043e\\u0440\\u0430\\u0446\\u0438\\u044f \\u0431\\u044b\\u043b\\u0430 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0430\\u043d\\u0430 \\u0432 1987 \\u0433\\u043e\\u0434\\u0443 \\u0414\\u0436\\u043e\\u043d\\u043e\\u043c \\u0422\\u0443 \\u0438 \\u0438\\u043c\\u0435\\u0435\\u0442 \\u0448\\u0442\\u0430\\u0431-\\u043a\\u0432\\u0430\\u0440\\u0442\\u0438\\u0440\\u0443 \\u0432 \\u041a\\u0430\\u043b\\u0438\\u0444\\u043e\\u0440\\u043d\\u0438\\u0438. \\u041f\\u043e \\u0441\\u043e\\u0441\\u0442\\u043e\\u044f\\u043d\\u0438\\u044e \\u043d\\u0430 2015 \\u0433\\u043e\\u0434 \\u043a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u043a\\u043e\\u0432 \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u043b\\u043e 3000 \\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u043a.<\\/p>\\r\\n\\r\\n<p>\\u041f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044f \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438, \\u0432 \\u0442\\u043e\\u043c \\u0447\\u0438\\u0441\\u043b\\u0435 \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430 HyperX, \\u043d\\u0435 \\u0447\\u0443\\u0436\\u0434\\u044b \\u0443\\u0437\\u0431\\u0435\\u043a\\u0441\\u043a\\u043e\\u043c\\u0443 \\u0440\\u044b\\u043d\\u043a\\u0443. \\u0412 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435 Olcha \\u0432\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u043d\\u0430\\u0439\\u0442\\u0438 \\u043d\\u0430\\u0431\\u043e\\u0440 \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440, \\u043c\\u044b\\u0448\\u0435\\u0439 \\u0438 \\u043d\\u0430\\u0443\\u0448\\u043d\\u0438\\u043a\\u043e\\u0432 \\u0434\\u043b\\u044f \\u0438\\u0433\\u0440. \\u041d\\u0430\\u043f\\u0440\\u0438\\u043c\\u0435\\u0440, HyperX Sloud Alpha S, Blue (4P5L3AA) \\u0437\\u0430\\u0432\\u043e\\u0435\\u0432\\u0430\\u043b\\u0438 \\u043f\\u0440\\u0438\\u0437\\u043d\\u0430\\u043d\\u0438\\u0435 \\u0433\\u0435\\u0439\\u043c\\u0435\\u0440\\u043e\\u0432 \\u0437\\u0430 \\u0443\\u0434\\u043e\\u0431\\u0441\\u0442\\u0432\\u043e \\u0438\\u0433\\u0440\\u043e\\u0432\\u044b\\u0445 \\u043d\\u0430\\u0443\\u0448\\u043d\\u0438\\u043a\\u043e\\u0432. \\u0421\\u043c\\u0435\\u043b\\u043e \\u0443\\u043b\\u0443\\u0447\\u0448\\u0430\\u0439\\u0442\\u0435 \\u0437\\u0432\\u0443\\u043a \\u0432\\u043e \\u0432\\u0440\\u0435\\u043c\\u044f \\u0438\\u0433\\u0440\\u044b \\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u0432\\u0430\\u0439\\u0442\\u0435 \\u043a\\u043e\\u043c\\u0444\\u043e\\u0440\\u0442\\u043d\\u0443\\u044e \\u0437\\u0432\\u0443\\u043a\\u043e\\u0432\\u0443\\u044e \\u0430\\u0442\\u043c\\u043e\\u0441\\u0444\\u0435\\u0440\\u0443 \\u0434\\u043b\\u044f \\u0438\\u0433\\u0440\\u043e\\u043a\\u043e\\u0432. \\u041c\\u043e\\u0436\\u043d\\u043e \\u043d\\u0430\\u0441\\u0442\\u0440\\u043e\\u0438\\u0442\\u044c \\u0447\\u0430\\u0441\\u0442\\u043e\\u0442\\u0443 \\u0441\\u0440\\u0435\\u0434\\u043d\\u0435\\u0439 \\u0438 \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0439 \\u0433\\u0440\\u043e\\u043c\\u043a\\u043e\\u0441\\u0442\\u0438 \\u0438 \\u043e\\u0442\\u0440\\u0435\\u0433\\u0443\\u043b\\u0438\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c \\u0440\\u0430\\u0437\\u043d\\u0438\\u0446\\u0443. \\u041d\\u0430\\u0441\\u0442\\u0440\\u043e\\u0439\\u0442\\u0435 \\u0443\\u0440\\u043e\\u0432\\u043d\\u0438 \\u0437\\u0432\\u0443\\u043a\\u0430 \\u0432 \\u0438\\u0433\\u0440\\u0435 \\u0438 \\u0447\\u0430\\u0442\\u0435 \\u043f\\u043e \\u0441\\u0432\\u043e\\u0435\\u043c\\u0443 \\u0432\\u043a\\u0443\\u0441\\u0443 \\u0438 \\u0438\\u0433\\u0440\\u0430\\u0439\\u0442\\u0435 \\u0441 \\u043f\\u043e\\u043b\\u043d\\u043e\\u0439 \\u043e\\u0442\\u0434\\u0430\\u0447\\u0435\\u0439. \\u041e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e, \\u0435\\u0441\\u043b\\u0438 \\u044d\\u0442\\u0430 \\u043c\\u044b\\u0448\\u044c &mdash; \\u0443\\u043d\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u043c\\u044b\\u0448\\u044c HyperX! HyperX Pulsefire FPS Pro (HX-MS003B) \\u043f\\u043e\\u0434\\u043a\\u043b\\u044e\\u0447\\u0430\\u0435\\u0442\\u0441\\u044f \\u043a \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u0435 \\u0447\\u0435\\u0440\\u0435\\u0437 USB \\u0438 \\u043f\\u0440\\u0435\\u0434\\u043d\\u0430\\u0437\\u043d\\u0430\\u0447\\u0435\\u043d \\u0434\\u043b\\u044f \\u0438\\u0433\\u0440 \\u043d\\u0430 \\u043d\\u0430\\u0441\\u0442\\u043e\\u043b\\u044c\\u043d\\u043e\\u043c \\u043a\\u043e\\u043c\\u043f\\u044c\\u044e\\u0442\\u0435\\u0440\\u0435. \\u041a\\u043b\\u0430\\u0432\\u0438\\u0448\\u0430 \\u043f\\u0440\\u043e\\u043a\\u0440\\u0443\\u0442\\u043a\\u0438 &mdash; \\u043e\\u0434\\u043d\\u0430 \\u0438\\u0437 \\u0441\\u0430\\u043c\\u044b\\u0445 \\u0443\\u0434\\u043e\\u0431\\u043d\\u044b\\u0445 \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f\\u043d\\u044b\\u0445 \\u043a\\u043d\\u043e\\u043f\\u043e\\u043a \\u043c\\u044b\\u0448\\u0438. \\u041f\\u043e\\u0447\\u0443\\u0432\\u0441\\u0442\\u0432\\u0443\\u0439\\u0442\\u0435 \\u0441\\u0435\\u0431\\u044f \\u043d\\u0430\\u0441\\u0442\\u043e\\u044f\\u0449\\u0438\\u043c \\u043c\\u0430\\u0441\\u0442\\u0435\\u0440\\u043e\\u043c \\u0438\\u0433\\u0440 \\u0441 \\u0443\\u0434\\u043e\\u0431\\u043d\\u043e\\u0439 \\u0433\\u0430\\u0440\\u043d\\u0438\\u0442\\u0443\\u0440\\u043e\\u0439, \\u043c\\u044b\\u0448\\u044c\\u044e \\u0438 \\u0443\\u043d\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u043e\\u0439. \\u0423\\u043d\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u044b \\u0442\\u043e\\u0436\\u0435 \\u043f\\u043e\\u043a\\u043e\\u043b\\u0435\\u043d\\u0438\\u044f HyperX! \\u0411\\u043b\\u0430\\u0433\\u043e\\u0434\\u0430\\u0440\\u044f \\u044f\\u0440\\u043a\\u043e\\u0439 \\u0441\\u0432\\u0435\\u0442\\u043e\\u0432\\u043e\\u0439 \\u043f\\u0430\\u043d\\u0435\\u043b\\u0438 \\u0438 \\u043f\\u043b\\u0430\\u0432\\u043d\\u044b\\u043c \\u0434\\u0438\\u043d\\u0430\\u043c\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u043c \\u0441\\u0432\\u0435\\u0442\\u043e\\u0432\\u044b\\u043c \\u044d\\u0444\\u0444\\u0435\\u043a\\u0442\\u0430\\u043c RGB HyperX Alloy Sore RGB &trade;, \\u043f\\u043e\\u0445\\u043e\\u0436\\u0435, \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u043d \\u0434\\u043b\\u044f \\u0433\\u0435\\u0439\\u043c\\u0435\\u0440\\u043e\\u0432, \\u0441\\u0442\\u0440\\u0435\\u043c\\u044f\\u0449\\u0438\\u0445\\u0441\\u044f \\u043f\\u043e\\u0434\\u043d\\u044f\\u0442\\u044c \\u0441\\u0432\\u043e\\u044e \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c \\u043d\\u0430 \\u043d\\u043e\\u0432\\u044b\\u0439 \\u0443\\u0440\\u043e\\u0432\\u0435\\u043d\\u044c. \\u041d\\u0430 \\u044d\\u0442\\u043e\\u0439 \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u0435 \\u0432\\u044b \\u043d\\u0430\\u0439\\u0434\\u0435\\u0442\\u0435 \\u0438\\u0434\\u0435\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0431\\u0430\\u043b\\u0430\\u043d\\u0441 6 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0445 \\u0441\\u0432\\u0435\\u0442\\u043e\\u0432\\u044b\\u0445 \\u044d\\u0444\\u0444\\u0435\\u043a\\u0442\\u043e\\u0432 \\u0438 3 \\u0443\\u0440\\u043e\\u0432\\u043d\\u0435\\u0439 \\u044f\\u0440\\u043a\\u043e\\u0441\\u0442\\u0438. \\u0411\\u043b\\u0430\\u0433\\u043e\\u0434\\u0430\\u0440\\u044f \\u043f\\u0440\\u043e\\u0447\\u043d\\u043e\\u043c\\u0443 \\u043f\\u043b\\u0430\\u0441\\u0442\\u0438\\u043a\\u043e\\u0432\\u043e\\u043c\\u0443 \\u043a\\u043e\\u0440\\u043f\\u0443\\u0441\\u0443 \\u0438 \\u0441\\u0442\\u0430\\u0431\\u0438\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438 Alloy Sore RGB, \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0439 \\u043d\\u0430\\u0434\\u0435\\u0436\\u043d\\u043e\\u0441\\u0442\\u0438, \\u044d\\u0442\\u0430 \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u0430 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043b\\u0443\\u0447\\u0448\\u0438\\u043c \\u043f\\u043e\\u043c\\u043e\\u0449\\u043d\\u0438\\u043a\\u043e\\u043c \\u0434\\u043b\\u044f \\u0433\\u0435\\u0439\\u043c\\u0435\\u0440\\u043e\\u0432, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u043b\\u044e\\u0431\\u044f\\u0442 \\u043f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0438\\u0433\\u0440\\u044b. \\u041a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u0430 HyperX \\u0442\\u0430\\u043a\\u0436\\u0435 \\u043e\\u0441\\u043d\\u0430\\u0449\\u0435\\u043d\\u0430 \\u0441\\u0435\\u043d\\u0441\\u043e\\u0440\\u043d\\u044b\\u043c\\u0438 \\u043a\\u043d\\u043e\\u043f\\u043a\\u0430\\u043c\\u0438, \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u043c\\u0438 \\u044d\\u043b\\u0435\\u043c\\u0435\\u043d\\u0442\\u0430\\u043c\\u0438 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u043c\\u0443\\u043b\\u044c\\u0442\\u0438\\u043c\\u0435\\u0434\\u0438\\u0430 \\u0434\\u043b\\u044f \\u043e\\u0441\\u0432\\u0435\\u0449\\u0435\\u043d\\u0438\\u044f \\u0438 \\u0438\\u0433\\u0440\\u043e\\u0432\\u043e\\u0433\\u043e \\u0440\\u0435\\u0436\\u0438\\u043c\\u0430, \\u0430 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u0432\\u043e\\u043b\\u0448\\u0435\\u0431\\u043d\\u044b\\u043c\\u0438 \\u044d\\u043b\\u0435\\u043c\\u0435\\u043d\\u0442\\u0430\\u043c\\u0438 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u044b, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0443\\u0441\\u043a\\u043e\\u0440\\u044f\\u044e\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443 \\u0432\\u0430\\u0448\\u0438\\u0445 \\u043f\\u0430\\u043b\\u044c\\u0446\\u0435\\u0432. \\u0411\\u043b\\u043e\\u043a\\u0438\\u0440\\u043e\\u0432\\u043a\\u0430 \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u044b \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u0437\\u0430\\u0431\\u043b\\u043e\\u043a\\u0438\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u0443, \\u043d\\u0435 \\u043f\\u0435\\u0440\\u0435\\u0432\\u043e\\u0434\\u044f \\u0432\\u0441\\u044e \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0443 \\u0432 \\u0440\\u0435\\u0436\\u0438\\u043c \\u043e\\u0436\\u0438\\u0434\\u0430\\u043d\\u0438\\u044f. \\u041c\\u044b \\u0440\\u0430\\u0434\\u044b \\u0441\\u043e\\u043e\\u0431\\u0449\\u0438\\u0442\\u044c \\u043e \\u043d\\u0430\\u0447\\u0430\\u043b\\u0435 \\u0441\\u0435\\u0437\\u043e\\u043d\\u0430 \\u0441\\u043a\\u0438\\u0434\\u043e\\u043a \\u043d\\u0430 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044e HyperX \\u0441 1 \\u043f\\u043e 30 \\u0438\\u044e\\u043d\\u044f. \\u041e\\u0431\\u044a\\u044f\\u0432\\u043b\\u0435\\u043d\\u044b \\u0441\\u043a\\u0438\\u0434\\u043a\\u0438 \\u043d\\u0430 \\u0432\\u044b\\u0448\\u0435\\u0443\\u043a\\u0430\\u0437\\u0430\\u043d\\u043d\\u044b\\u0435 29% \\u043d\\u0430 \\u043d\\u0430\\u0443\\u0448\\u043d\\u0438\\u043a\\u0438, 28% \\u043d\\u0430 \\u043c\\u044b\\u0448\\u043a\\u0438 \\u0438 19% \\u043d\\u0430 \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u044b. \\u042d\\u0442\\u043e \\u0435\\u0449\\u0435 \\u043d\\u0435 \\u0432\\u0441\\u0435. \\u041c\\u043d\\u043e\\u0433\\u043e \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u044b\\u0445 \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439 \\u043d\\u0430 \\u0447\\u0435\\u0440\\u0435\\u0448\\u043d\\u044e!<\\/p>\",\"tags\":[\"tagq\",\"tag2\",null],\"category_id\":\"24\",\"_token\":\"uIQUqR5Slcdgt1PoHK5xdFgS9vyVzKOFbyVuEfbB\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/posts\"}', '2022-07-04 11:01:08', '2022-07-04 11:01:08');
INSERT INTO `admin_operation_log` VALUES (1249, 1, 'admin/posts', 'GET', '127.0.0.1', '[]', '2022-07-04 11:01:08', '2022-07-04 11:01:08');
INSERT INTO `admin_operation_log` VALUES (1250, 1, 'admin/posts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-04 11:01:13', '2022-07-04 11:01:13');
INSERT INTO `admin_operation_log` VALUES (1251, 1, 'admin/posts', 'POST', '127.0.0.1', '{\"title\":\"news 23\",\"body\":\"<p>HyperX, \\u043f\\u043e\\u0434\\u0440\\u0430\\u0437\\u0434\\u0435\\u043b\\u0435\\u043d\\u0438\\u0435 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u043f\\u043e \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u0443 \\u0438\\u0433\\u0440\\u043e\\u0432\\u044b\\u0445 \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432, \\u0443\\u0436\\u0435 \\u0437\\u0430\\u043d\\u0438\\u043c\\u0430\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0447\\u043d\\u044b\\u0435 \\u043f\\u043e\\u0437\\u0438\\u0446\\u0438\\u0438 \\u043d\\u0430 \\u043c\\u0438\\u0440\\u043e\\u0432\\u043e\\u043c \\u0440\\u044b\\u043d\\u043a\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0433\\u043e \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u043e\\u0433\\u043e \\u0438\\u0433\\u0440\\u043e\\u0432\\u043e\\u0433\\u043e \\u043e\\u0431\\u043e\\u0440\\u0443\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f. \\u041a\\u043e\\u0440\\u043f\\u043e\\u0440\\u0430\\u0446\\u0438\\u044f \\u0431\\u044b\\u043b\\u0430 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0430\\u043d\\u0430 \\u0432 1987 \\u0433\\u043e\\u0434\\u0443 \\u0414\\u0436\\u043e\\u043d\\u043e\\u043c \\u0422\\u0443 \\u0438 \\u0438\\u043c\\u0435\\u0435\\u0442 \\u0448\\u0442\\u0430\\u0431-\\u043a\\u0432\\u0430\\u0440\\u0442\\u0438\\u0440\\u0443 \\u0432 \\u041a\\u0430\\u043b\\u0438\\u0444\\u043e\\u0440\\u043d\\u0438\\u0438. \\u041f\\u043e \\u0441\\u043e\\u0441\\u0442\\u043e\\u044f\\u043d\\u0438\\u044e \\u043d\\u0430 2015 \\u0433\\u043e\\u0434 \\u043a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u043a\\u043e\\u0432 \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u043b\\u043e 3000 \\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u043a.<\\/p>\\r\\n\\r\\n<p>\\u041f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044f \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438, \\u0432 \\u0442\\u043e\\u043c \\u0447\\u0438\\u0441\\u043b\\u0435 \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430 HyperX, \\u043d\\u0435 \\u0447\\u0443\\u0436\\u0434\\u044b \\u0443\\u0437\\u0431\\u0435\\u043a\\u0441\\u043a\\u043e\\u043c\\u0443 \\u0440\\u044b\\u043d\\u043a\\u0443. \\u0412 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435 Olcha \\u0432\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u043d\\u0430\\u0439\\u0442\\u0438 \\u043d\\u0430\\u0431\\u043e\\u0440 \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440, \\u043c\\u044b\\u0448\\u0435\\u0439 \\u0438 \\u043d\\u0430\\u0443\\u0448\\u043d\\u0438\\u043a\\u043e\\u0432 \\u0434\\u043b\\u044f \\u0438\\u0433\\u0440. \\u041d\\u0430\\u043f\\u0440\\u0438\\u043c\\u0435\\u0440, HyperX Sloud Alpha S, Blue (4P5L3AA) \\u0437\\u0430\\u0432\\u043e\\u0435\\u0432\\u0430\\u043b\\u0438 \\u043f\\u0440\\u0438\\u0437\\u043d\\u0430\\u043d\\u0438\\u0435 \\u0433\\u0435\\u0439\\u043c\\u0435\\u0440\\u043e\\u0432 \\u0437\\u0430 \\u0443\\u0434\\u043e\\u0431\\u0441\\u0442\\u0432\\u043e \\u0438\\u0433\\u0440\\u043e\\u0432\\u044b\\u0445 \\u043d\\u0430\\u0443\\u0448\\u043d\\u0438\\u043a\\u043e\\u0432. \\u0421\\u043c\\u0435\\u043b\\u043e \\u0443\\u043b\\u0443\\u0447\\u0448\\u0430\\u0439\\u0442\\u0435 \\u0437\\u0432\\u0443\\u043a \\u0432\\u043e \\u0432\\u0440\\u0435\\u043c\\u044f \\u0438\\u0433\\u0440\\u044b \\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u0432\\u0430\\u0439\\u0442\\u0435 \\u043a\\u043e\\u043c\\u0444\\u043e\\u0440\\u0442\\u043d\\u0443\\u044e \\u0437\\u0432\\u0443\\u043a\\u043e\\u0432\\u0443\\u044e \\u0430\\u0442\\u043c\\u043e\\u0441\\u0444\\u0435\\u0440\\u0443 \\u0434\\u043b\\u044f \\u0438\\u0433\\u0440\\u043e\\u043a\\u043e\\u0432. \\u041c\\u043e\\u0436\\u043d\\u043e \\u043d\\u0430\\u0441\\u0442\\u0440\\u043e\\u0438\\u0442\\u044c \\u0447\\u0430\\u0441\\u0442\\u043e\\u0442\\u0443 \\u0441\\u0440\\u0435\\u0434\\u043d\\u0435\\u0439 \\u0438 \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0439 \\u0433\\u0440\\u043e\\u043c\\u043a\\u043e\\u0441\\u0442\\u0438 \\u0438 \\u043e\\u0442\\u0440\\u0435\\u0433\\u0443\\u043b\\u0438\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c \\u0440\\u0430\\u0437\\u043d\\u0438\\u0446\\u0443. \\u041d\\u0430\\u0441\\u0442\\u0440\\u043e\\u0439\\u0442\\u0435 \\u0443\\u0440\\u043e\\u0432\\u043d\\u0438 \\u0437\\u0432\\u0443\\u043a\\u0430 \\u0432 \\u0438\\u0433\\u0440\\u0435 \\u0438 \\u0447\\u0430\\u0442\\u0435 \\u043f\\u043e \\u0441\\u0432\\u043e\\u0435\\u043c\\u0443 \\u0432\\u043a\\u0443\\u0441\\u0443 \\u0438 \\u0438\\u0433\\u0440\\u0430\\u0439\\u0442\\u0435 \\u0441 \\u043f\\u043e\\u043b\\u043d\\u043e\\u0439 \\u043e\\u0442\\u0434\\u0430\\u0447\\u0435\\u0439. \\u041e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e, \\u0435\\u0441\\u043b\\u0438 \\u044d\\u0442\\u0430 \\u043c\\u044b\\u0448\\u044c &mdash; \\u0443\\u043d\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u043c\\u044b\\u0448\\u044c HyperX! HyperX Pulsefire FPS Pro (HX-MS003B) \\u043f\\u043e\\u0434\\u043a\\u043b\\u044e\\u0447\\u0430\\u0435\\u0442\\u0441\\u044f \\u043a \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u0435 \\u0447\\u0435\\u0440\\u0435\\u0437 USB \\u0438 \\u043f\\u0440\\u0435\\u0434\\u043d\\u0430\\u0437\\u043d\\u0430\\u0447\\u0435\\u043d \\u0434\\u043b\\u044f \\u0438\\u0433\\u0440 \\u043d\\u0430 \\u043d\\u0430\\u0441\\u0442\\u043e\\u043b\\u044c\\u043d\\u043e\\u043c \\u043a\\u043e\\u043c\\u043f\\u044c\\u044e\\u0442\\u0435\\u0440\\u0435. \\u041a\\u043b\\u0430\\u0432\\u0438\\u0448\\u0430 \\u043f\\u0440\\u043e\\u043a\\u0440\\u0443\\u0442\\u043a\\u0438 &mdash; \\u043e\\u0434\\u043d\\u0430 \\u0438\\u0437 \\u0441\\u0430\\u043c\\u044b\\u0445 \\u0443\\u0434\\u043e\\u0431\\u043d\\u044b\\u0445 \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f\\u043d\\u044b\\u0445 \\u043a\\u043d\\u043e\\u043f\\u043e\\u043a \\u043c\\u044b\\u0448\\u0438. \\u041f\\u043e\\u0447\\u0443\\u0432\\u0441\\u0442\\u0432\\u0443\\u0439\\u0442\\u0435 \\u0441\\u0435\\u0431\\u044f \\u043d\\u0430\\u0441\\u0442\\u043e\\u044f\\u0449\\u0438\\u043c \\u043c\\u0430\\u0441\\u0442\\u0435\\u0440\\u043e\\u043c \\u0438\\u0433\\u0440 \\u0441 \\u0443\\u0434\\u043e\\u0431\\u043d\\u043e\\u0439 \\u0433\\u0430\\u0440\\u043d\\u0438\\u0442\\u0443\\u0440\\u043e\\u0439, \\u043c\\u044b\\u0448\\u044c\\u044e \\u0438 \\u0443\\u043d\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u043e\\u0439. \\u0423\\u043d\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u044b \\u0442\\u043e\\u0436\\u0435 \\u043f\\u043e\\u043a\\u043e\\u043b\\u0435\\u043d\\u0438\\u044f HyperX! \\u0411\\u043b\\u0430\\u0433\\u043e\\u0434\\u0430\\u0440\\u044f \\u044f\\u0440\\u043a\\u043e\\u0439 \\u0441\\u0432\\u0435\\u0442\\u043e\\u0432\\u043e\\u0439 \\u043f\\u0430\\u043d\\u0435\\u043b\\u0438 \\u0438 \\u043f\\u043b\\u0430\\u0432\\u043d\\u044b\\u043c \\u0434\\u0438\\u043d\\u0430\\u043c\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u043c \\u0441\\u0432\\u0435\\u0442\\u043e\\u0432\\u044b\\u043c \\u044d\\u0444\\u0444\\u0435\\u043a\\u0442\\u0430\\u043c RGB HyperX Alloy Sore RGB &trade;, \\u043f\\u043e\\u0445\\u043e\\u0436\\u0435, \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u043d \\u0434\\u043b\\u044f \\u0433\\u0435\\u0439\\u043c\\u0435\\u0440\\u043e\\u0432, \\u0441\\u0442\\u0440\\u0435\\u043c\\u044f\\u0449\\u0438\\u0445\\u0441\\u044f \\u043f\\u043e\\u0434\\u043d\\u044f\\u0442\\u044c \\u0441\\u0432\\u043e\\u044e \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c \\u043d\\u0430 \\u043d\\u043e\\u0432\\u044b\\u0439 \\u0443\\u0440\\u043e\\u0432\\u0435\\u043d\\u044c. \\u041d\\u0430 \\u044d\\u0442\\u043e\\u0439 \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u0435 \\u0432\\u044b \\u043d\\u0430\\u0439\\u0434\\u0435\\u0442\\u0435 \\u0438\\u0434\\u0435\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0431\\u0430\\u043b\\u0430\\u043d\\u0441 6 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0445 \\u0441\\u0432\\u0435\\u0442\\u043e\\u0432\\u044b\\u0445 \\u044d\\u0444\\u0444\\u0435\\u043a\\u0442\\u043e\\u0432 \\u0438 3 \\u0443\\u0440\\u043e\\u0432\\u043d\\u0435\\u0439 \\u044f\\u0440\\u043a\\u043e\\u0441\\u0442\\u0438. \\u0411\\u043b\\u0430\\u0433\\u043e\\u0434\\u0430\\u0440\\u044f \\u043f\\u0440\\u043e\\u0447\\u043d\\u043e\\u043c\\u0443 \\u043f\\u043b\\u0430\\u0441\\u0442\\u0438\\u043a\\u043e\\u0432\\u043e\\u043c\\u0443 \\u043a\\u043e\\u0440\\u043f\\u0443\\u0441\\u0443 \\u0438 \\u0441\\u0442\\u0430\\u0431\\u0438\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438 Alloy Sore RGB, \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0439 \\u043d\\u0430\\u0434\\u0435\\u0436\\u043d\\u043e\\u0441\\u0442\\u0438, \\u044d\\u0442\\u0430 \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u0430 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043b\\u0443\\u0447\\u0448\\u0438\\u043c \\u043f\\u043e\\u043c\\u043e\\u0449\\u043d\\u0438\\u043a\\u043e\\u043c \\u0434\\u043b\\u044f \\u0433\\u0435\\u0439\\u043c\\u0435\\u0440\\u043e\\u0432, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u043b\\u044e\\u0431\\u044f\\u0442 \\u043f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0438\\u0433\\u0440\\u044b. \\u041a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u0430 HyperX \\u0442\\u0430\\u043a\\u0436\\u0435 \\u043e\\u0441\\u043d\\u0430\\u0449\\u0435\\u043d\\u0430 \\u0441\\u0435\\u043d\\u0441\\u043e\\u0440\\u043d\\u044b\\u043c\\u0438 \\u043a\\u043d\\u043e\\u043f\\u043a\\u0430\\u043c\\u0438, \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u043c\\u0438 \\u044d\\u043b\\u0435\\u043c\\u0435\\u043d\\u0442\\u0430\\u043c\\u0438 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u043c\\u0443\\u043b\\u044c\\u0442\\u0438\\u043c\\u0435\\u0434\\u0438\\u0430 \\u0434\\u043b\\u044f \\u043e\\u0441\\u0432\\u0435\\u0449\\u0435\\u043d\\u0438\\u044f \\u0438 \\u0438\\u0433\\u0440\\u043e\\u0432\\u043e\\u0433\\u043e \\u0440\\u0435\\u0436\\u0438\\u043c\\u0430, \\u0430 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u0432\\u043e\\u043b\\u0448\\u0435\\u0431\\u043d\\u044b\\u043c\\u0438 \\u044d\\u043b\\u0435\\u043c\\u0435\\u043d\\u0442\\u0430\\u043c\\u0438 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u044b, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0443\\u0441\\u043a\\u043e\\u0440\\u044f\\u044e\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443 \\u0432\\u0430\\u0448\\u0438\\u0445 \\u043f\\u0430\\u043b\\u044c\\u0446\\u0435\\u0432. \\u0411\\u043b\\u043e\\u043a\\u0438\\u0440\\u043e\\u0432\\u043a\\u0430 \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u044b \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u0437\\u0430\\u0431\\u043b\\u043e\\u043a\\u0438\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u0443, \\u043d\\u0435 \\u043f\\u0435\\u0440\\u0435\\u0432\\u043e\\u0434\\u044f \\u0432\\u0441\\u044e \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0443 \\u0432 \\u0440\\u0435\\u0436\\u0438\\u043c \\u043e\\u0436\\u0438\\u0434\\u0430\\u043d\\u0438\\u044f. \\u041c\\u044b \\u0440\\u0430\\u0434\\u044b \\u0441\\u043e\\u043e\\u0431\\u0449\\u0438\\u0442\\u044c \\u043e \\u043d\\u0430\\u0447\\u0430\\u043b\\u0435 \\u0441\\u0435\\u0437\\u043e\\u043d\\u0430 \\u0441\\u043a\\u0438\\u0434\\u043e\\u043a \\u043d\\u0430 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044e HyperX \\u0441 1 \\u043f\\u043e 30 \\u0438\\u044e\\u043d\\u044f. \\u041e\\u0431\\u044a\\u044f\\u0432\\u043b\\u0435\\u043d\\u044b \\u0441\\u043a\\u0438\\u0434\\u043a\\u0438 \\u043d\\u0430 \\u0432\\u044b\\u0448\\u0435\\u0443\\u043a\\u0430\\u0437\\u0430\\u043d\\u043d\\u044b\\u0435 29% \\u043d\\u0430 \\u043d\\u0430\\u0443\\u0448\\u043d\\u0438\\u043a\\u0438, 28% \\u043d\\u0430 \\u043c\\u044b\\u0448\\u043a\\u0438 \\u0438 19% \\u043d\\u0430 \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u044b. \\u042d\\u0442\\u043e \\u0435\\u0449\\u0435 \\u043d\\u0435 \\u0432\\u0441\\u0435. \\u041c\\u043d\\u043e\\u0433\\u043e \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u044b\\u0445 \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439 \\u043d\\u0430 \\u0447\\u0435\\u0440\\u0435\\u0448\\u043d\\u044e!<\\/p>\",\"tags\":[\"tag5\",\"tag6\",null],\"category_id\":\"6\",\"_token\":\"uIQUqR5Slcdgt1PoHK5xdFgS9vyVzKOFbyVuEfbB\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/posts\"}', '2022-07-04 11:01:30', '2022-07-04 11:01:30');
INSERT INTO `admin_operation_log` VALUES (1252, 1, 'admin/posts', 'GET', '127.0.0.1', '[]', '2022-07-04 11:01:30', '2022-07-04 11:01:30');
INSERT INTO `admin_operation_log` VALUES (1253, 1, 'admin/posts/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-04 11:01:39', '2022-07-04 11:01:39');
INSERT INTO `admin_operation_log` VALUES (1254, 1, 'admin/posts/3', 'PUT', '127.0.0.1', '{\"title\":\"news 23\",\"body\":\"<p>HyperX, \\u043f\\u043e\\u0434\\u0440\\u0430\\u0437\\u0434\\u0435\\u043b\\u0435\\u043d\\u0438\\u0435 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u043f\\u043e \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u0443 \\u0438\\u0433\\u0440\\u043e\\u0432\\u044b\\u0445 \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432, \\u0443\\u0436\\u0435 \\u0437\\u0430\\u043d\\u0438\\u043c\\u0430\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0447\\u043d\\u044b\\u0435 \\u043f\\u043e\\u0437\\u0438\\u0446\\u0438\\u0438 \\u043d\\u0430 \\u043c\\u0438\\u0440\\u043e\\u0432\\u043e\\u043c \\u0440\\u044b\\u043d\\u043a\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0433\\u043e \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u043e\\u0433\\u043e \\u0438\\u0433\\u0440\\u043e\\u0432\\u043e\\u0433\\u043e \\u043e\\u0431\\u043e\\u0440\\u0443\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f. \\u041a\\u043e\\u0440\\u043f\\u043e\\u0440\\u0430\\u0446\\u0438\\u044f \\u0431\\u044b\\u043b\\u0430 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0430\\u043d\\u0430 \\u0432 1987 \\u0433\\u043e\\u0434\\u0443 \\u0414\\u0436\\u043e\\u043d\\u043e\\u043c \\u0422\\u0443 \\u0438 \\u0438\\u043c\\u0435\\u0435\\u0442 \\u0448\\u0442\\u0430\\u0431-\\u043a\\u0432\\u0430\\u0440\\u0442\\u0438\\u0440\\u0443 \\u0432 \\u041a\\u0430\\u043b\\u0438\\u0444\\u043e\\u0440\\u043d\\u0438\\u0438. \\u041f\\u043e \\u0441\\u043e\\u0441\\u0442\\u043e\\u044f\\u043d\\u0438\\u044e \\u043d\\u0430 2015 \\u0433\\u043e\\u0434 \\u043a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u043a\\u043e\\u0432 \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u043b\\u043e 3000 \\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u043a.<\\/p>\\r\\n\\r\\n<p>\\u041f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044f \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438, \\u0432 \\u0442\\u043e\\u043c \\u0447\\u0438\\u0441\\u043b\\u0435 \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430 HyperX, \\u043d\\u0435 \\u0447\\u0443\\u0436\\u0434\\u044b \\u0443\\u0437\\u0431\\u0435\\u043a\\u0441\\u043a\\u043e\\u043c\\u0443 \\u0440\\u044b\\u043d\\u043a\\u0443. \\u0412 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435 Olcha \\u0432\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u043d\\u0430\\u0439\\u0442\\u0438 \\u043d\\u0430\\u0431\\u043e\\u0440 \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440, \\u043c\\u044b\\u0448\\u0435\\u0439 \\u0438 \\u043d\\u0430\\u0443\\u0448\\u043d\\u0438\\u043a\\u043e\\u0432 \\u0434\\u043b\\u044f \\u0438\\u0433\\u0440. \\u041d\\u0430\\u043f\\u0440\\u0438\\u043c\\u0435\\u0440, HyperX Sloud Alpha S, Blue (4P5L3AA) \\u0437\\u0430\\u0432\\u043e\\u0435\\u0432\\u0430\\u043b\\u0438 \\u043f\\u0440\\u0438\\u0437\\u043d\\u0430\\u043d\\u0438\\u0435 \\u0433\\u0435\\u0439\\u043c\\u0435\\u0440\\u043e\\u0432 \\u0437\\u0430 \\u0443\\u0434\\u043e\\u0431\\u0441\\u0442\\u0432\\u043e \\u0438\\u0433\\u0440\\u043e\\u0432\\u044b\\u0445 \\u043d\\u0430\\u0443\\u0448\\u043d\\u0438\\u043a\\u043e\\u0432. \\u0421\\u043c\\u0435\\u043b\\u043e \\u0443\\u043b\\u0443\\u0447\\u0448\\u0430\\u0439\\u0442\\u0435 \\u0437\\u0432\\u0443\\u043a \\u0432\\u043e \\u0432\\u0440\\u0435\\u043c\\u044f \\u0438\\u0433\\u0440\\u044b \\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u0432\\u0430\\u0439\\u0442\\u0435 \\u043a\\u043e\\u043c\\u0444\\u043e\\u0440\\u0442\\u043d\\u0443\\u044e \\u0437\\u0432\\u0443\\u043a\\u043e\\u0432\\u0443\\u044e \\u0430\\u0442\\u043c\\u043e\\u0441\\u0444\\u0435\\u0440\\u0443 \\u0434\\u043b\\u044f \\u0438\\u0433\\u0440\\u043e\\u043a\\u043e\\u0432. \\u041c\\u043e\\u0436\\u043d\\u043e \\u043d\\u0430\\u0441\\u0442\\u0440\\u043e\\u0438\\u0442\\u044c \\u0447\\u0430\\u0441\\u0442\\u043e\\u0442\\u0443 \\u0441\\u0440\\u0435\\u0434\\u043d\\u0435\\u0439 \\u0438 \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0439 \\u0433\\u0440\\u043e\\u043c\\u043a\\u043e\\u0441\\u0442\\u0438 \\u0438 \\u043e\\u0442\\u0440\\u0435\\u0433\\u0443\\u043b\\u0438\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c \\u0440\\u0430\\u0437\\u043d\\u0438\\u0446\\u0443. \\u041d\\u0430\\u0441\\u0442\\u0440\\u043e\\u0439\\u0442\\u0435 \\u0443\\u0440\\u043e\\u0432\\u043d\\u0438 \\u0437\\u0432\\u0443\\u043a\\u0430 \\u0432 \\u0438\\u0433\\u0440\\u0435 \\u0438 \\u0447\\u0430\\u0442\\u0435 \\u043f\\u043e \\u0441\\u0432\\u043e\\u0435\\u043c\\u0443 \\u0432\\u043a\\u0443\\u0441\\u0443 \\u0438 \\u0438\\u0433\\u0440\\u0430\\u0439\\u0442\\u0435 \\u0441 \\u043f\\u043e\\u043b\\u043d\\u043e\\u0439 \\u043e\\u0442\\u0434\\u0430\\u0447\\u0435\\u0439. \\u041e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e, \\u0435\\u0441\\u043b\\u0438 \\u044d\\u0442\\u0430 \\u043c\\u044b\\u0448\\u044c &mdash; \\u0443\\u043d\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u043c\\u044b\\u0448\\u044c HyperX! HyperX Pulsefire FPS Pro (HX-MS003B) \\u043f\\u043e\\u0434\\u043a\\u043b\\u044e\\u0447\\u0430\\u0435\\u0442\\u0441\\u044f \\u043a \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u0435 \\u0447\\u0435\\u0440\\u0435\\u0437 USB \\u0438 \\u043f\\u0440\\u0435\\u0434\\u043d\\u0430\\u0437\\u043d\\u0430\\u0447\\u0435\\u043d \\u0434\\u043b\\u044f \\u0438\\u0433\\u0440 \\u043d\\u0430 \\u043d\\u0430\\u0441\\u0442\\u043e\\u043b\\u044c\\u043d\\u043e\\u043c \\u043a\\u043e\\u043c\\u043f\\u044c\\u044e\\u0442\\u0435\\u0440\\u0435. \\u041a\\u043b\\u0430\\u0432\\u0438\\u0448\\u0430 \\u043f\\u0440\\u043e\\u043a\\u0440\\u0443\\u0442\\u043a\\u0438 &mdash; \\u043e\\u0434\\u043d\\u0430 \\u0438\\u0437 \\u0441\\u0430\\u043c\\u044b\\u0445 \\u0443\\u0434\\u043e\\u0431\\u043d\\u044b\\u0445 \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f\\u043d\\u044b\\u0445 \\u043a\\u043d\\u043e\\u043f\\u043e\\u043a \\u043c\\u044b\\u0448\\u0438. \\u041f\\u043e\\u0447\\u0443\\u0432\\u0441\\u0442\\u0432\\u0443\\u0439\\u0442\\u0435 \\u0441\\u0435\\u0431\\u044f \\u043d\\u0430\\u0441\\u0442\\u043e\\u044f\\u0449\\u0438\\u043c \\u043c\\u0430\\u0441\\u0442\\u0435\\u0440\\u043e\\u043c \\u0438\\u0433\\u0440 \\u0441 \\u0443\\u0434\\u043e\\u0431\\u043d\\u043e\\u0439 \\u0433\\u0430\\u0440\\u043d\\u0438\\u0442\\u0443\\u0440\\u043e\\u0439, \\u043c\\u044b\\u0448\\u044c\\u044e \\u0438 \\u0443\\u043d\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u043e\\u0439. \\u0423\\u043d\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u044b \\u0442\\u043e\\u0436\\u0435 \\u043f\\u043e\\u043a\\u043e\\u043b\\u0435\\u043d\\u0438\\u044f HyperX! \\u0411\\u043b\\u0430\\u0433\\u043e\\u0434\\u0430\\u0440\\u044f \\u044f\\u0440\\u043a\\u043e\\u0439 \\u0441\\u0432\\u0435\\u0442\\u043e\\u0432\\u043e\\u0439 \\u043f\\u0430\\u043d\\u0435\\u043b\\u0438 \\u0438 \\u043f\\u043b\\u0430\\u0432\\u043d\\u044b\\u043c \\u0434\\u0438\\u043d\\u0430\\u043c\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u043c \\u0441\\u0432\\u0435\\u0442\\u043e\\u0432\\u044b\\u043c \\u044d\\u0444\\u0444\\u0435\\u043a\\u0442\\u0430\\u043c RGB HyperX Alloy Sore RGB &trade;, \\u043f\\u043e\\u0445\\u043e\\u0436\\u0435, \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u043d \\u0434\\u043b\\u044f \\u0433\\u0435\\u0439\\u043c\\u0435\\u0440\\u043e\\u0432, \\u0441\\u0442\\u0440\\u0435\\u043c\\u044f\\u0449\\u0438\\u0445\\u0441\\u044f \\u043f\\u043e\\u0434\\u043d\\u044f\\u0442\\u044c \\u0441\\u0432\\u043e\\u044e \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c \\u043d\\u0430 \\u043d\\u043e\\u0432\\u044b\\u0439 \\u0443\\u0440\\u043e\\u0432\\u0435\\u043d\\u044c. \\u041d\\u0430 \\u044d\\u0442\\u043e\\u0439 \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u0435 \\u0432\\u044b \\u043d\\u0430\\u0439\\u0434\\u0435\\u0442\\u0435 \\u0438\\u0434\\u0435\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0431\\u0430\\u043b\\u0430\\u043d\\u0441 6 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0445 \\u0441\\u0432\\u0435\\u0442\\u043e\\u0432\\u044b\\u0445 \\u044d\\u0444\\u0444\\u0435\\u043a\\u0442\\u043e\\u0432 \\u0438 3 \\u0443\\u0440\\u043e\\u0432\\u043d\\u0435\\u0439 \\u044f\\u0440\\u043a\\u043e\\u0441\\u0442\\u0438. \\u0411\\u043b\\u0430\\u0433\\u043e\\u0434\\u0430\\u0440\\u044f \\u043f\\u0440\\u043e\\u0447\\u043d\\u043e\\u043c\\u0443 \\u043f\\u043b\\u0430\\u0441\\u0442\\u0438\\u043a\\u043e\\u0432\\u043e\\u043c\\u0443 \\u043a\\u043e\\u0440\\u043f\\u0443\\u0441\\u0443 \\u0438 \\u0441\\u0442\\u0430\\u0431\\u0438\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438 Alloy Sore RGB, \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0439 \\u043d\\u0430\\u0434\\u0435\\u0436\\u043d\\u043e\\u0441\\u0442\\u0438, \\u044d\\u0442\\u0430 \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u0430 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043b\\u0443\\u0447\\u0448\\u0438\\u043c \\u043f\\u043e\\u043c\\u043e\\u0449\\u043d\\u0438\\u043a\\u043e\\u043c \\u0434\\u043b\\u044f \\u0433\\u0435\\u0439\\u043c\\u0435\\u0440\\u043e\\u0432, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u043b\\u044e\\u0431\\u044f\\u0442 \\u043f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0438\\u0433\\u0440\\u044b. \\u041a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u0430 HyperX \\u0442\\u0430\\u043a\\u0436\\u0435 \\u043e\\u0441\\u043d\\u0430\\u0449\\u0435\\u043d\\u0430 \\u0441\\u0435\\u043d\\u0441\\u043e\\u0440\\u043d\\u044b\\u043c\\u0438 \\u043a\\u043d\\u043e\\u043f\\u043a\\u0430\\u043c\\u0438, \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u043c\\u0438 \\u044d\\u043b\\u0435\\u043c\\u0435\\u043d\\u0442\\u0430\\u043c\\u0438 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u043c\\u0443\\u043b\\u044c\\u0442\\u0438\\u043c\\u0435\\u0434\\u0438\\u0430 \\u0434\\u043b\\u044f \\u043e\\u0441\\u0432\\u0435\\u0449\\u0435\\u043d\\u0438\\u044f \\u0438 \\u0438\\u0433\\u0440\\u043e\\u0432\\u043e\\u0433\\u043e \\u0440\\u0435\\u0436\\u0438\\u043c\\u0430, \\u0430 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u0432\\u043e\\u043b\\u0448\\u0435\\u0431\\u043d\\u044b\\u043c\\u0438 \\u044d\\u043b\\u0435\\u043c\\u0435\\u043d\\u0442\\u0430\\u043c\\u0438 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u044b, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0443\\u0441\\u043a\\u043e\\u0440\\u044f\\u044e\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443 \\u0432\\u0430\\u0448\\u0438\\u0445 \\u043f\\u0430\\u043b\\u044c\\u0446\\u0435\\u0432. \\u0411\\u043b\\u043e\\u043a\\u0438\\u0440\\u043e\\u0432\\u043a\\u0430 \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u044b \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u0437\\u0430\\u0431\\u043b\\u043e\\u043a\\u0438\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u0443, \\u043d\\u0435 \\u043f\\u0435\\u0440\\u0435\\u0432\\u043e\\u0434\\u044f \\u0432\\u0441\\u044e \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0443 \\u0432 \\u0440\\u0435\\u0436\\u0438\\u043c \\u043e\\u0436\\u0438\\u0434\\u0430\\u043d\\u0438\\u044f. \\u041c\\u044b \\u0440\\u0430\\u0434\\u044b \\u0441\\u043e\\u043e\\u0431\\u0449\\u0438\\u0442\\u044c \\u043e \\u043d\\u0430\\u0447\\u0430\\u043b\\u0435 \\u0441\\u0435\\u0437\\u043e\\u043d\\u0430 \\u0441\\u043a\\u0438\\u0434\\u043e\\u043a \\u043d\\u0430 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044e HyperX \\u0441 1 \\u043f\\u043e 30 \\u0438\\u044e\\u043d\\u044f. \\u041e\\u0431\\u044a\\u044f\\u0432\\u043b\\u0435\\u043d\\u044b \\u0441\\u043a\\u0438\\u0434\\u043a\\u0438 \\u043d\\u0430 \\u0432\\u044b\\u0448\\u0435\\u0443\\u043a\\u0430\\u0437\\u0430\\u043d\\u043d\\u044b\\u0435 29% \\u043d\\u0430 \\u043d\\u0430\\u0443\\u0448\\u043d\\u0438\\u043a\\u0438, 28% \\u043d\\u0430 \\u043c\\u044b\\u0448\\u043a\\u0438 \\u0438 19% \\u043d\\u0430 \\u043a\\u043b\\u0430\\u0432\\u0438\\u0430\\u0442\\u0443\\u0440\\u044b. \\u042d\\u0442\\u043e \\u0435\\u0449\\u0435 \\u043d\\u0435 \\u0432\\u0441\\u0435. \\u041c\\u043d\\u043e\\u0433\\u043e \\u043e\\u0442\\u043b\\u0438\\u0447\\u043d\\u044b\\u0445 \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439 \\u043d\\u0430 \\u0447\\u0435\\u0440\\u0435\\u0448\\u043d\\u044e!<\\/p>\",\"tags\":[\"tag5\",\"tag6\",null],\"category_id\":\"6\",\"_token\":\"uIQUqR5Slcdgt1PoHK5xdFgS9vyVzKOFbyVuEfbB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/posts\"}', '2022-07-04 11:01:48', '2022-07-04 11:01:48');
INSERT INTO `admin_operation_log` VALUES (1255, 1, 'admin/posts', 'GET', '127.0.0.1', '[]', '2022-07-04 11:01:48', '2022-07-04 11:01:48');
INSERT INTO `admin_operation_log` VALUES (1256, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-05 03:31:27', '2022-07-05 03:31:27');
INSERT INTO `admin_operation_log` VALUES (1257, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-05 03:31:30', '2022-07-05 03:31:30');
INSERT INTO `admin_operation_log` VALUES (1258, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-05 03:32:04', '2022-07-05 03:32:04');
INSERT INTO `admin_operation_log` VALUES (1259, 1, 'admin/posts', 'GET', '127.0.0.1', '[]', '2022-07-05 03:33:01', '2022-07-05 03:33:01');
INSERT INTO `admin_operation_log` VALUES (1260, 1, 'admin/posts', 'GET', '127.0.0.1', '[]', '2022-07-05 03:34:00', '2022-07-05 03:34:00');
INSERT INTO `admin_operation_log` VALUES (1261, 1, 'admin/posts', 'GET', '127.0.0.1', '[]', '2022-07-05 03:35:09', '2022-07-05 03:35:09');
INSERT INTO `admin_operation_log` VALUES (1262, 1, 'admin/posts', 'GET', '127.0.0.1', '[]', '2022-07-05 03:35:47', '2022-07-05 03:35:47');
INSERT INTO `admin_operation_log` VALUES (1263, 1, 'admin/posts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-05 03:52:01', '2022-07-05 03:52:01');
INSERT INTO `admin_operation_log` VALUES (1264, 1, 'admin/posts', 'POST', '127.0.0.1', '{\"title\":\"adsasd\",\"body\":\"<p>asdsda<\\/p>\",\"tags\":[\"tag1\",\"tag2\",null],\"category_id\":\"8\",\"_token\":\"Gn7qZe3766XdCe4hPBjhpM0huoURfFdAvfgQaD70\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/posts\"}', '2022-07-05 03:52:15', '2022-07-05 03:52:15');
INSERT INTO `admin_operation_log` VALUES (1265, 1, 'admin/posts', 'GET', '127.0.0.1', '[]', '2022-07-05 03:52:15', '2022-07-05 03:52:15');
INSERT INTO `admin_operation_log` VALUES (1266, 1, 'admin/posts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-05 03:52:17', '2022-07-05 03:52:17');
INSERT INTO `admin_operation_log` VALUES (1267, 1, 'admin/posts', 'POST', '127.0.0.1', '{\"title\":\"123231\",\"body\":\"<p>23132231<\\/p>\",\"tags\":[\"312312\",null],\"category_id\":\"7\",\"_token\":\"Gn7qZe3766XdCe4hPBjhpM0huoURfFdAvfgQaD70\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/posts\"}', '2022-07-05 03:52:27', '2022-07-05 03:52:27');
INSERT INTO `admin_operation_log` VALUES (1268, 1, 'admin/posts', 'GET', '127.0.0.1', '[]', '2022-07-05 03:52:28', '2022-07-05 03:52:28');
INSERT INTO `admin_operation_log` VALUES (1269, 1, 'admin/posts', 'GET', '127.0.0.1', '[]', '2022-07-05 07:44:27', '2022-07-05 07:44:27');
INSERT INTO `admin_operation_log` VALUES (1270, 1, 'admin/posts', 'GET', '127.0.0.1', '[]', '2022-07-05 08:15:18', '2022-07-05 08:15:18');
INSERT INTO `admin_operation_log` VALUES (1271, 1, 'admin/posts', 'GET', '127.0.0.1', '[]', '2022-07-05 08:15:20', '2022-07-05 08:15:20');
INSERT INTO `admin_operation_log` VALUES (1272, 1, 'admin/posts', 'GET', '127.0.0.1', '[]', '2022-07-05 08:15:32', '2022-07-05 08:15:32');
INSERT INTO `admin_operation_log` VALUES (1273, 1, 'admin/posts', 'GET', '127.0.0.1', '[]', '2022-07-05 08:15:39', '2022-07-05 08:15:39');
INSERT INTO `admin_operation_log` VALUES (1274, 1, 'admin/posts', 'GET', '127.0.0.1', '[]', '2022-07-05 08:15:40', '2022-07-05 08:15:40');
INSERT INTO `admin_operation_log` VALUES (1275, 1, 'admin/posts', 'GET', '127.0.0.1', '[]', '2022-07-05 08:15:53', '2022-07-05 08:15:53');
INSERT INTO `admin_operation_log` VALUES (1276, 1, 'admin/posts', 'GET', '127.0.0.1', '[]', '2022-07-05 08:15:56', '2022-07-05 08:15:56');
INSERT INTO `admin_operation_log` VALUES (1277, 1, 'admin/posts', 'GET', '127.0.0.1', '[]', '2022-07-05 08:16:03', '2022-07-05 08:16:03');
INSERT INTO `admin_operation_log` VALUES (1278, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-05 08:16:05', '2022-07-05 08:16:05');
INSERT INTO `admin_operation_log` VALUES (1279, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-05 08:16:06', '2022-07-05 08:16:06');
INSERT INTO `admin_operation_log` VALUES (1280, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-05 08:16:46', '2022-07-05 08:16:46');
INSERT INTO `admin_operation_log` VALUES (1281, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-05 08:17:26', '2022-07-05 08:17:26');
INSERT INTO `admin_operation_log` VALUES (1282, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-05 08:17:29', '2022-07-05 08:17:29');
INSERT INTO `admin_operation_log` VALUES (1283, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-05 08:17:36', '2022-07-05 08:17:36');
INSERT INTO `admin_operation_log` VALUES (1284, 1, 'admin/brands', 'GET', '127.0.0.1', '[]', '2022-07-05 08:17:54', '2022-07-05 08:17:54');
INSERT INTO `admin_operation_log` VALUES (1285, 1, 'admin/brands', 'GET', '127.0.0.1', '[]', '2022-07-05 08:18:08', '2022-07-05 08:18:08');
INSERT INTO `admin_operation_log` VALUES (1286, 1, 'admin/brands', 'GET', '127.0.0.1', '[]', '2022-07-05 08:18:17', '2022-07-05 08:18:17');
INSERT INTO `admin_operation_log` VALUES (1287, 1, 'admin/brands', 'GET', '127.0.0.1', '[]', '2022-07-05 08:18:24', '2022-07-05 08:18:24');
INSERT INTO `admin_operation_log` VALUES (1288, 1, 'admin/brands', 'GET', '127.0.0.1', '[]', '2022-07-05 08:18:36', '2022-07-05 08:18:36');
INSERT INTO `admin_operation_log` VALUES (1289, 1, 'admin/brands', 'GET', '127.0.0.1', '[]', '2022-07-05 08:18:52', '2022-07-05 08:18:52');
INSERT INTO `admin_operation_log` VALUES (1290, 1, 'admin/brands', 'GET', '127.0.0.1', '[]', '2022-07-05 08:18:57', '2022-07-05 08:18:57');
INSERT INTO `admin_operation_log` VALUES (1291, 1, 'admin/brands', 'GET', '127.0.0.1', '[]', '2022-07-05 08:19:02', '2022-07-05 08:19:02');
INSERT INTO `admin_operation_log` VALUES (1292, 1, 'admin/brands', 'GET', '127.0.0.1', '[]', '2022-07-05 08:19:06', '2022-07-05 08:19:06');
INSERT INTO `admin_operation_log` VALUES (1293, 1, 'admin/brands', 'GET', '127.0.0.1', '[]', '2022-07-05 08:19:13', '2022-07-05 08:19:13');
INSERT INTO `admin_operation_log` VALUES (1294, 1, 'admin/brands', 'GET', '127.0.0.1', '[]', '2022-07-05 08:19:19', '2022-07-05 08:19:19');
INSERT INTO `admin_operation_log` VALUES (1295, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-05 08:19:24', '2022-07-05 08:19:24');
INSERT INTO `admin_operation_log` VALUES (1296, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-05 08:19:27', '2022-07-05 08:19:27');
INSERT INTO `admin_operation_log` VALUES (1297, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-05 08:19:28', '2022-07-05 08:19:28');
INSERT INTO `admin_operation_log` VALUES (1298, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-05 08:19:29', '2022-07-05 08:19:29');
INSERT INTO `admin_operation_log` VALUES (1299, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-05 08:19:34', '2022-07-05 08:19:34');
INSERT INTO `admin_operation_log` VALUES (1300, 1, 'admin/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-05 08:19:44', '2022-07-05 08:19:44');
INSERT INTO `admin_operation_log` VALUES (1301, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-05 08:20:44', '2022-07-05 08:20:44');
INSERT INTO `admin_operation_log` VALUES (1302, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-05 08:20:48', '2022-07-05 08:20:48');
INSERT INTO `admin_operation_log` VALUES (1303, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-05 08:20:51', '2022-07-05 08:20:51');
INSERT INTO `admin_operation_log` VALUES (1304, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"5\"}', '2022-07-05 08:20:59', '2022-07-05 08:20:59');
INSERT INTO `admin_operation_log` VALUES (1305, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-05 08:21:08', '2022-07-05 08:21:08');
INSERT INTO `admin_operation_log` VALUES (1306, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-05 08:23:02', '2022-07-05 08:23:02');
INSERT INTO `admin_operation_log` VALUES (1307, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-07-05 08:27:56', '2022-07-05 08:27:56');
INSERT INTO `admin_operation_log` VALUES (1308, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-07-05 08:27:59', '2022-07-05 08:27:59');
INSERT INTO `admin_operation_log` VALUES (1309, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-07-05 08:28:11', '2022-07-05 08:28:11');
INSERT INTO `admin_operation_log` VALUES (1310, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-07-05 08:28:20', '2022-07-05 08:28:20');
INSERT INTO `admin_operation_log` VALUES (1311, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-05 08:28:21', '2022-07-05 08:28:21');
INSERT INTO `admin_operation_log` VALUES (1312, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-05 08:28:23', '2022-07-05 08:28:23');
INSERT INTO `admin_operation_log` VALUES (1313, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-05 08:28:27', '2022-07-05 08:28:27');
INSERT INTO `admin_operation_log` VALUES (1314, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-05 08:28:32', '2022-07-05 08:28:32');
INSERT INTO `admin_operation_log` VALUES (1315, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-05 08:28:41', '2022-07-05 08:28:41');
INSERT INTO `admin_operation_log` VALUES (1316, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-05 08:28:47', '2022-07-05 08:28:47');
INSERT INTO `admin_operation_log` VALUES (1317, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-05 08:28:51', '2022-07-05 08:28:51');
INSERT INTO `admin_operation_log` VALUES (1318, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-07-05 08:28:53', '2022-07-05 08:28:53');
INSERT INTO `admin_operation_log` VALUES (1319, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-05 08:29:16', '2022-07-05 08:29:16');
INSERT INTO `admin_operation_log` VALUES (1320, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-05 08:29:42', '2022-07-05 08:29:42');
INSERT INTO `admin_operation_log` VALUES (1321, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-05 08:29:42', '2022-07-05 08:29:42');
INSERT INTO `admin_operation_log` VALUES (1322, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-05 08:29:43', '2022-07-05 08:29:43');
INSERT INTO `admin_operation_log` VALUES (1323, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-05 08:29:47', '2022-07-05 08:29:47');
INSERT INTO `admin_operation_log` VALUES (1324, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"6\"}', '2022-07-05 08:29:51', '2022-07-05 08:29:51');
INSERT INTO `admin_operation_log` VALUES (1325, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2022-07-05 08:33:37', '2022-07-05 08:33:37');
INSERT INTO `admin_operation_log` VALUES (1326, 1, 'admin/products', 'GET', '127.0.0.1', '{\"page\":\"3\"}', '2022-07-05 08:38:29', '2022-07-05 08:38:29');
INSERT INTO `admin_operation_log` VALUES (1327, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-05 09:09:11', '2022-07-05 09:09:11');
INSERT INTO `admin_operation_log` VALUES (1328, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-06 11:06:47', '2022-07-06 11:06:47');
INSERT INTO `admin_operation_log` VALUES (1329, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-06 11:06:53', '2022-07-06 11:06:53');
INSERT INTO `admin_operation_log` VALUES (1330, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-06 11:07:00', '2022-07-06 11:07:00');
INSERT INTO `admin_operation_log` VALUES (1331, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-06 11:07:05', '2022-07-06 11:07:05');
INSERT INTO `admin_operation_log` VALUES (1332, 1, 'admin/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-06 11:07:16', '2022-07-06 11:07:16');
INSERT INTO `admin_operation_log` VALUES (1333, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-06 11:07:18', '2022-07-06 11:07:18');
INSERT INTO `admin_operation_log` VALUES (1334, 1, 'admin/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-06 11:07:19', '2022-07-06 11:07:19');
INSERT INTO `admin_operation_log` VALUES (1335, 1, 'admin/banners/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-06 11:07:21', '2022-07-06 11:07:21');
INSERT INTO `admin_operation_log` VALUES (1336, 1, 'admin/banners', 'POST', '127.0.0.1', '{\"link\":\"\\/categories\",\"_token\":\"QOyCvCFgqcKeOi30MFCuctFttw7vVdVTSOzsSuof\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/banners\"}', '2022-07-06 11:07:34', '2022-07-06 11:07:34');
INSERT INTO `admin_operation_log` VALUES (1337, 1, 'admin/banners', 'GET', '127.0.0.1', '[]', '2022-07-06 11:07:35', '2022-07-06 11:07:35');
INSERT INTO `admin_operation_log` VALUES (1338, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-06 11:09:34', '2022-07-06 11:09:34');
INSERT INTO `admin_operation_log` VALUES (1339, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-06 11:17:53', '2022-07-06 11:17:53');
INSERT INTO `admin_operation_log` VALUES (1340, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2022-07-06 11:17:58', '2022-07-06 11:17:58');
INSERT INTO `admin_operation_log` VALUES (1341, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2022-07-06 11:18:00', '2022-07-06 11:18:00');
INSERT INTO `admin_operation_log` VALUES (1342, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2022-07-20 10:07:47', '2022-07-20 10:07:47');
INSERT INTO `admin_operation_log` VALUES (1343, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-20 10:07:48', '2022-07-20 10:07:48');
INSERT INTO `admin_operation_log` VALUES (1344, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 10:07:54', '2022-07-20 10:07:54');
INSERT INTO `admin_operation_log` VALUES (1345, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 10:07:58', '2022-07-20 10:07:58');
INSERT INTO `admin_operation_log` VALUES (1346, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 10:07:59', '2022-07-20 10:07:59');
INSERT INTO `admin_operation_log` VALUES (1347, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 10:08:03', '2022-07-20 10:08:03');
INSERT INTO `admin_operation_log` VALUES (1348, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 10:08:03', '2022-07-20 10:08:03');
INSERT INTO `admin_operation_log` VALUES (1349, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 10:08:04', '2022-07-20 10:08:04');
INSERT INTO `admin_operation_log` VALUES (1350, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 10:08:05', '2022-07-20 10:08:05');
INSERT INTO `admin_operation_log` VALUES (1351, 1, 'admin/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 10:08:05', '2022-07-20 10:08:05');
INSERT INTO `admin_operation_log` VALUES (1352, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 10:08:06', '2022-07-20 10:08:06');
INSERT INTO `admin_operation_log` VALUES (1353, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 10:08:10', '2022-07-20 10:08:10');
INSERT INTO `admin_operation_log` VALUES (1354, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 10:08:12', '2022-07-20 10:08:12');
INSERT INTO `admin_operation_log` VALUES (1355, 1, 'admin/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 10:08:13', '2022-07-20 10:08:13');
INSERT INTO `admin_operation_log` VALUES (1356, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 10:08:15', '2022-07-20 10:08:15');
INSERT INTO `admin_operation_log` VALUES (1357, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 10:08:16', '2022-07-20 10:08:16');
INSERT INTO `admin_operation_log` VALUES (1358, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 10:08:18', '2022-07-20 10:08:18');
INSERT INTO `admin_operation_log` VALUES (1359, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 10:08:19', '2022-07-20 10:08:19');
INSERT INTO `admin_operation_log` VALUES (1360, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 10:12:06', '2022-07-20 10:12:06');
INSERT INTO `admin_operation_log` VALUES (1361, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u0417\\u0430\\u043a\\u0430\\u0437\\u044b\",\"icon\":\"fa-truck\",\"uri\":\"\\/orders\",\"roles\":[null],\"permission\":null,\"_token\":\"i8kUmQn6DOC96J2i6BeA4mDMl0jgwvoTvGDrrQYY\"}', '2022-07-20 10:13:47', '2022-07-20 10:13:47');
INSERT INTO `admin_operation_log` VALUES (1362, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-07-20 10:13:47', '2022-07-20 10:13:47');
INSERT INTO `admin_operation_log` VALUES (1363, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-07-20 10:13:48', '2022-07-20 10:13:48');
INSERT INTO `admin_operation_log` VALUES (1364, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 10:14:30', '2022-07-20 10:14:30');
INSERT INTO `admin_operation_log` VALUES (1365, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-20 10:16:02', '2022-07-20 10:16:02');
INSERT INTO `admin_operation_log` VALUES (1366, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-20 10:18:38', '2022-07-20 10:18:38');
INSERT INTO `admin_operation_log` VALUES (1367, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-20 10:19:02', '2022-07-20 10:19:02');
INSERT INTO `admin_operation_log` VALUES (1368, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-20 10:19:11', '2022-07-20 10:19:11');
INSERT INTO `admin_operation_log` VALUES (1369, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-20 10:19:49', '2022-07-20 10:19:49');
INSERT INTO `admin_operation_log` VALUES (1370, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-20 10:19:57', '2022-07-20 10:19:57');
INSERT INTO `admin_operation_log` VALUES (1371, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-20 10:20:33', '2022-07-20 10:20:33');
INSERT INTO `admin_operation_log` VALUES (1372, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-20 10:21:57', '2022-07-20 10:21:57');
INSERT INTO `admin_operation_log` VALUES (1373, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-20 10:22:09', '2022-07-20 10:22:09');
INSERT INTO `admin_operation_log` VALUES (1374, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-20 10:23:10', '2022-07-20 10:23:10');
INSERT INTO `admin_operation_log` VALUES (1375, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-20 10:23:58', '2022-07-20 10:23:58');
INSERT INTO `admin_operation_log` VALUES (1376, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-20 10:24:43', '2022-07-20 10:24:43');
INSERT INTO `admin_operation_log` VALUES (1377, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-20 10:25:22', '2022-07-20 10:25:22');
INSERT INTO `admin_operation_log` VALUES (1378, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-20 10:26:50', '2022-07-20 10:26:50');
INSERT INTO `admin_operation_log` VALUES (1379, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-20 10:27:07', '2022-07-20 10:27:07');
INSERT INTO `admin_operation_log` VALUES (1380, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-20 10:30:30', '2022-07-20 10:30:30');
INSERT INTO `admin_operation_log` VALUES (1381, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-20 10:30:34', '2022-07-20 10:30:34');
INSERT INTO `admin_operation_log` VALUES (1382, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-20 10:30:40', '2022-07-20 10:30:40');
INSERT INTO `admin_operation_log` VALUES (1383, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-20 10:31:17', '2022-07-20 10:31:17');
INSERT INTO `admin_operation_log` VALUES (1384, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-20 10:31:25', '2022-07-20 10:31:25');
INSERT INTO `admin_operation_log` VALUES (1385, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-20 10:32:02', '2022-07-20 10:32:02');
INSERT INTO `admin_operation_log` VALUES (1386, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"payment_type\":null,\"_pjax\":\"#pjax-container\"}', '2022-07-20 10:32:19', '2022-07-20 10:32:19');
INSERT INTO `admin_operation_log` VALUES (1387, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 10:32:21', '2022-07-20 10:32:21');
INSERT INTO `admin_operation_log` VALUES (1388, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-20 10:33:05', '2022-07-20 10:33:05');
INSERT INTO `admin_operation_log` VALUES (1389, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"status\":[\"1\"],\"_pjax\":\"#pjax-container\"}', '2022-07-20 10:33:10', '2022-07-20 10:33:10');
INSERT INTO `admin_operation_log` VALUES (1390, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"status\":[\"2\"],\"_pjax\":\"#pjax-container\"}', '2022-07-20 10:33:14', '2022-07-20 10:33:14');
INSERT INTO `admin_operation_log` VALUES (1391, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"status\":[\"2\"]}', '2022-07-20 10:34:35', '2022-07-20 10:34:35');
INSERT INTO `admin_operation_log` VALUES (1392, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"status\":[\"2\"]}', '2022-07-20 10:35:35', '2022-07-20 10:35:35');
INSERT INTO `admin_operation_log` VALUES (1393, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"status\":[\"2\"],\"_sort\":{\"column\":\"status\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2022-07-20 10:35:42', '2022-07-20 10:35:42');
INSERT INTO `admin_operation_log` VALUES (1394, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"status\":[\"2\"],\"_sort\":{\"column\":\"status\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2022-07-20 10:35:42', '2022-07-20 10:35:42');
INSERT INTO `admin_operation_log` VALUES (1395, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"asc\"},\"status\":[\"2\"],\"_pjax\":\"#pjax-container\"}', '2022-07-20 10:35:45', '2022-07-20 10:35:45');
INSERT INTO `admin_operation_log` VALUES (1396, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2022-07-20 10:35:46', '2022-07-20 10:35:46');
INSERT INTO `admin_operation_log` VALUES (1397, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"asc\"}}', '2022-07-20 10:36:02', '2022-07-20 10:36:02');
INSERT INTO `admin_operation_log` VALUES (1398, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"asc\"}}', '2022-07-20 10:36:27', '2022-07-20 10:36:27');
INSERT INTO `admin_operation_log` VALUES (1399, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"asc\"}}', '2022-07-20 10:42:45', '2022-07-20 10:42:45');
INSERT INTO `admin_operation_log` VALUES (1400, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"asc\"}}', '2022-07-20 10:42:59', '2022-07-20 10:42:59');
INSERT INTO `admin_operation_log` VALUES (1401, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"asc\"}}', '2022-07-20 10:43:19', '2022-07-20 10:43:19');
INSERT INTO `admin_operation_log` VALUES (1402, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"asc\"}}', '2022-07-20 10:43:25', '2022-07-20 10:43:25');
INSERT INTO `admin_operation_log` VALUES (1403, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"asc\"}}', '2022-07-20 10:43:26', '2022-07-20 10:43:26');
INSERT INTO `admin_operation_log` VALUES (1404, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"asc\"}}', '2022-07-20 10:43:31', '2022-07-20 10:43:31');
INSERT INTO `admin_operation_log` VALUES (1405, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"asc\"}}', '2022-07-20 10:44:09', '2022-07-20 10:44:09');
INSERT INTO `admin_operation_log` VALUES (1406, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"asc\"}}', '2022-07-20 10:44:15', '2022-07-20 10:44:15');
INSERT INTO `admin_operation_log` VALUES (1407, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"asc\"}}', '2022-07-20 10:44:24', '2022-07-20 10:44:24');
INSERT INTO `admin_operation_log` VALUES (1408, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"asc\"}}', '2022-07-20 10:45:55', '2022-07-20 10:45:55');
INSERT INTO `admin_operation_log` VALUES (1409, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"asc\"}}', '2022-07-20 10:46:59', '2022-07-20 10:46:59');
INSERT INTO `admin_operation_log` VALUES (1410, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-07-20 10:47:02', '2022-07-20 10:47:02');
INSERT INTO `admin_operation_log` VALUES (1411, 1, 'admin/_handle_selectable_', 'GET', '127.0.0.1', '{\"selectable\":\"App_Admin_Selectable_Product\",\"args\":[\"1\"]}', '2022-07-20 10:48:00', '2022-07-20 10:48:00');
INSERT INTO `admin_operation_log` VALUES (1412, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"asc\"}}', '2022-07-20 10:48:20', '2022-07-20 10:48:20');
INSERT INTO `admin_operation_log` VALUES (1413, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"asc\"}}', '2022-07-20 10:48:38', '2022-07-20 10:48:38');
INSERT INTO `admin_operation_log` VALUES (1414, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"asc\"}}', '2022-07-20 10:48:44', '2022-07-20 10:48:44');
INSERT INTO `admin_operation_log` VALUES (1415, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 10:48:46', '2022-07-20 10:48:46');
INSERT INTO `admin_operation_log` VALUES (1416, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 10:50:14', '2022-07-20 10:50:14');
INSERT INTO `admin_operation_log` VALUES (1417, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 10:50:20', '2022-07-20 10:50:20');
INSERT INTO `admin_operation_log` VALUES (1418, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 10:50:33', '2022-07-20 10:50:33');
INSERT INTO `admin_operation_log` VALUES (1419, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 10:50:46', '2022-07-20 10:50:46');
INSERT INTO `admin_operation_log` VALUES (1420, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 10:51:18', '2022-07-20 10:51:18');
INSERT INTO `admin_operation_log` VALUES (1421, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 10:51:25', '2022-07-20 10:51:25');
INSERT INTO `admin_operation_log` VALUES (1422, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 10:51:30', '2022-07-20 10:51:30');
INSERT INTO `admin_operation_log` VALUES (1423, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 10:52:50', '2022-07-20 10:52:50');
INSERT INTO `admin_operation_log` VALUES (1424, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 10:52:55', '2022-07-20 10:52:55');
INSERT INTO `admin_operation_log` VALUES (1425, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 10:53:09', '2022-07-20 10:53:09');
INSERT INTO `admin_operation_log` VALUES (1426, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 10:53:17', '2022-07-20 10:53:17');
INSERT INTO `admin_operation_log` VALUES (1427, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 10:55:59', '2022-07-20 10:55:59');
INSERT INTO `admin_operation_log` VALUES (1428, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 10:56:44', '2022-07-20 10:56:44');
INSERT INTO `admin_operation_log` VALUES (1429, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 10:56:47', '2022-07-20 10:56:47');
INSERT INTO `admin_operation_log` VALUES (1430, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 10:57:06', '2022-07-20 10:57:06');
INSERT INTO `admin_operation_log` VALUES (1431, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 10:57:08', '2022-07-20 10:57:08');
INSERT INTO `admin_operation_log` VALUES (1432, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 10:57:29', '2022-07-20 10:57:29');
INSERT INTO `admin_operation_log` VALUES (1433, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 10:57:30', '2022-07-20 10:57:30');
INSERT INTO `admin_operation_log` VALUES (1434, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 10:57:40', '2022-07-20 10:57:40');
INSERT INTO `admin_operation_log` VALUES (1435, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 10:57:52', '2022-07-20 10:57:52');
INSERT INTO `admin_operation_log` VALUES (1436, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 10:57:55', '2022-07-20 10:57:55');
INSERT INTO `admin_operation_log` VALUES (1437, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 10:58:15', '2022-07-20 10:58:15');
INSERT INTO `admin_operation_log` VALUES (1438, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 10:59:12', '2022-07-20 10:59:12');
INSERT INTO `admin_operation_log` VALUES (1439, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 10:59:17', '2022-07-20 10:59:17');
INSERT INTO `admin_operation_log` VALUES (1440, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 10:59:54', '2022-07-20 10:59:54');
INSERT INTO `admin_operation_log` VALUES (1441, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 10:59:58', '2022-07-20 10:59:58');
INSERT INTO `admin_operation_log` VALUES (1442, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:00:09', '2022-07-20 11:00:09');
INSERT INTO `admin_operation_log` VALUES (1443, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:00:09', '2022-07-20 11:00:09');
INSERT INTO `admin_operation_log` VALUES (1444, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:00:10', '2022-07-20 11:00:10');
INSERT INTO `admin_operation_log` VALUES (1445, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:00:10', '2022-07-20 11:00:10');
INSERT INTO `admin_operation_log` VALUES (1446, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:00:10', '2022-07-20 11:00:10');
INSERT INTO `admin_operation_log` VALUES (1447, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:00:10', '2022-07-20 11:00:10');
INSERT INTO `admin_operation_log` VALUES (1448, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:00:15', '2022-07-20 11:00:15');
INSERT INTO `admin_operation_log` VALUES (1449, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:00:16', '2022-07-20 11:00:16');
INSERT INTO `admin_operation_log` VALUES (1450, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:00:17', '2022-07-20 11:00:17');
INSERT INTO `admin_operation_log` VALUES (1451, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:00:17', '2022-07-20 11:00:17');
INSERT INTO `admin_operation_log` VALUES (1452, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:00:18', '2022-07-20 11:00:18');
INSERT INTO `admin_operation_log` VALUES (1453, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:21:48', '2022-07-20 11:21:48');
INSERT INTO `admin_operation_log` VALUES (1454, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:22:11', '2022-07-20 11:22:11');
INSERT INTO `admin_operation_log` VALUES (1455, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:22:17', '2022-07-20 11:22:17');
INSERT INTO `admin_operation_log` VALUES (1456, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:23:07', '2022-07-20 11:23:07');
INSERT INTO `admin_operation_log` VALUES (1457, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:23:42', '2022-07-20 11:23:42');
INSERT INTO `admin_operation_log` VALUES (1458, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:24:33', '2022-07-20 11:24:33');
INSERT INTO `admin_operation_log` VALUES (1459, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:25:01', '2022-07-20 11:25:01');
INSERT INTO `admin_operation_log` VALUES (1460, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:26:01', '2022-07-20 11:26:01');
INSERT INTO `admin_operation_log` VALUES (1461, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:26:09', '2022-07-20 11:26:09');
INSERT INTO `admin_operation_log` VALUES (1462, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:26:25', '2022-07-20 11:26:25');
INSERT INTO `admin_operation_log` VALUES (1463, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 11:27:24', '2022-07-20 11:27:24');
INSERT INTO `admin_operation_log` VALUES (1464, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-20 11:31:31', '2022-07-20 11:31:31');
INSERT INTO `admin_operation_log` VALUES (1465, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-20 11:32:27', '2022-07-20 11:32:27');
INSERT INTO `admin_operation_log` VALUES (1466, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 11:32:30', '2022-07-20 11:32:30');
INSERT INTO `admin_operation_log` VALUES (1467, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:33:49', '2022-07-20 11:33:49');
INSERT INTO `admin_operation_log` VALUES (1468, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:33:54', '2022-07-20 11:33:54');
INSERT INTO `admin_operation_log` VALUES (1469, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:33:57', '2022-07-20 11:33:57');
INSERT INTO `admin_operation_log` VALUES (1470, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:34:03', '2022-07-20 11:34:03');
INSERT INTO `admin_operation_log` VALUES (1471, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:34:08', '2022-07-20 11:34:08');
INSERT INTO `admin_operation_log` VALUES (1472, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:34:16', '2022-07-20 11:34:16');
INSERT INTO `admin_operation_log` VALUES (1473, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:34:26', '2022-07-20 11:34:26');
INSERT INTO `admin_operation_log` VALUES (1474, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:34:34', '2022-07-20 11:34:34');
INSERT INTO `admin_operation_log` VALUES (1475, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:34:37', '2022-07-20 11:34:37');
INSERT INTO `admin_operation_log` VALUES (1476, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:34:40', '2022-07-20 11:34:40');
INSERT INTO `admin_operation_log` VALUES (1477, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:35:49', '2022-07-20 11:35:49');
INSERT INTO `admin_operation_log` VALUES (1478, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:36:17', '2022-07-20 11:36:17');
INSERT INTO `admin_operation_log` VALUES (1479, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:36:22', '2022-07-20 11:36:22');
INSERT INTO `admin_operation_log` VALUES (1480, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:36:45', '2022-07-20 11:36:45');
INSERT INTO `admin_operation_log` VALUES (1481, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:36:46', '2022-07-20 11:36:46');
INSERT INTO `admin_operation_log` VALUES (1482, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:36:51', '2022-07-20 11:36:51');
INSERT INTO `admin_operation_log` VALUES (1483, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:37:07', '2022-07-20 11:37:07');
INSERT INTO `admin_operation_log` VALUES (1484, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:37:15', '2022-07-20 11:37:15');
INSERT INTO `admin_operation_log` VALUES (1485, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:37:25', '2022-07-20 11:37:25');
INSERT INTO `admin_operation_log` VALUES (1486, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:37:32', '2022-07-20 11:37:32');
INSERT INTO `admin_operation_log` VALUES (1487, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:37:35', '2022-07-20 11:37:35');
INSERT INTO `admin_operation_log` VALUES (1488, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:37:48', '2022-07-20 11:37:48');
INSERT INTO `admin_operation_log` VALUES (1489, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:37:56', '2022-07-20 11:37:56');
INSERT INTO `admin_operation_log` VALUES (1490, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:38:14', '2022-07-20 11:38:14');
INSERT INTO `admin_operation_log` VALUES (1491, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:38:38', '2022-07-20 11:38:38');
INSERT INTO `admin_operation_log` VALUES (1492, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:39:09', '2022-07-20 11:39:09');
INSERT INTO `admin_operation_log` VALUES (1493, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:39:14', '2022-07-20 11:39:14');
INSERT INTO `admin_operation_log` VALUES (1494, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:39:21', '2022-07-20 11:39:21');
INSERT INTO `admin_operation_log` VALUES (1495, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:39:27', '2022-07-20 11:39:27');
INSERT INTO `admin_operation_log` VALUES (1496, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:41:39', '2022-07-20 11:41:39');
INSERT INTO `admin_operation_log` VALUES (1497, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:42:25', '2022-07-20 11:42:25');
INSERT INTO `admin_operation_log` VALUES (1498, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:42:35', '2022-07-20 11:42:35');
INSERT INTO `admin_operation_log` VALUES (1499, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:44:51', '2022-07-20 11:44:51');
INSERT INTO `admin_operation_log` VALUES (1500, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:45:01', '2022-07-20 11:45:01');
INSERT INTO `admin_operation_log` VALUES (1501, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:45:13', '2022-07-20 11:45:13');
INSERT INTO `admin_operation_log` VALUES (1502, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:45:24', '2022-07-20 11:45:24');
INSERT INTO `admin_operation_log` VALUES (1503, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:45:29', '2022-07-20 11:45:29');
INSERT INTO `admin_operation_log` VALUES (1504, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:47:12', '2022-07-20 11:47:12');
INSERT INTO `admin_operation_log` VALUES (1505, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:47:18', '2022-07-20 11:47:18');
INSERT INTO `admin_operation_log` VALUES (1506, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:47:21', '2022-07-20 11:47:21');
INSERT INTO `admin_operation_log` VALUES (1507, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:52:59', '2022-07-20 11:52:59');
INSERT INTO `admin_operation_log` VALUES (1508, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 11:53:02', '2022-07-20 11:53:02');
INSERT INTO `admin_operation_log` VALUES (1509, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 11:53:04', '2022-07-20 11:53:04');
INSERT INTO `admin_operation_log` VALUES (1510, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:53:48', '2022-07-20 11:53:48');
INSERT INTO `admin_operation_log` VALUES (1511, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:53:56', '2022-07-20 11:53:56');
INSERT INTO `admin_operation_log` VALUES (1512, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:54:00', '2022-07-20 11:54:00');
INSERT INTO `admin_operation_log` VALUES (1513, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:54:04', '2022-07-20 11:54:04');
INSERT INTO `admin_operation_log` VALUES (1514, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:54:14', '2022-07-20 11:54:14');
INSERT INTO `admin_operation_log` VALUES (1515, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:54:20', '2022-07-20 11:54:20');
INSERT INTO `admin_operation_log` VALUES (1516, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:54:32', '2022-07-20 11:54:32');
INSERT INTO `admin_operation_log` VALUES (1517, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:54:34', '2022-07-20 11:54:34');
INSERT INTO `admin_operation_log` VALUES (1518, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:54:47', '2022-07-20 11:54:47');
INSERT INTO `admin_operation_log` VALUES (1519, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:54:52', '2022-07-20 11:54:52');
INSERT INTO `admin_operation_log` VALUES (1520, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:55:21', '2022-07-20 11:55:21');
INSERT INTO `admin_operation_log` VALUES (1521, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:55:30', '2022-07-20 11:55:30');
INSERT INTO `admin_operation_log` VALUES (1522, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:55:38', '2022-07-20 11:55:38');
INSERT INTO `admin_operation_log` VALUES (1523, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:55:42', '2022-07-20 11:55:42');
INSERT INTO `admin_operation_log` VALUES (1524, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:55:46', '2022-07-20 11:55:46');
INSERT INTO `admin_operation_log` VALUES (1525, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:55:59', '2022-07-20 11:55:59');
INSERT INTO `admin_operation_log` VALUES (1526, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:56:35', '2022-07-20 11:56:35');
INSERT INTO `admin_operation_log` VALUES (1527, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:56:44', '2022-07-20 11:56:44');
INSERT INTO `admin_operation_log` VALUES (1528, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:56:52', '2022-07-20 11:56:52');
INSERT INTO `admin_operation_log` VALUES (1529, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:56:55', '2022-07-20 11:56:55');
INSERT INTO `admin_operation_log` VALUES (1530, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:57:12', '2022-07-20 11:57:12');
INSERT INTO `admin_operation_log` VALUES (1531, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:57:32', '2022-07-20 11:57:32');
INSERT INTO `admin_operation_log` VALUES (1532, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:58:52', '2022-07-20 11:58:52');
INSERT INTO `admin_operation_log` VALUES (1533, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:59:13', '2022-07-20 11:59:13');
INSERT INTO `admin_operation_log` VALUES (1534, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:59:22', '2022-07-20 11:59:22');
INSERT INTO `admin_operation_log` VALUES (1535, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:59:28', '2022-07-20 11:59:28');
INSERT INTO `admin_operation_log` VALUES (1536, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 11:59:32', '2022-07-20 11:59:32');
INSERT INTO `admin_operation_log` VALUES (1537, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 12:00:45', '2022-07-20 12:00:45');
INSERT INTO `admin_operation_log` VALUES (1538, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 12:00:54', '2022-07-20 12:00:54');
INSERT INTO `admin_operation_log` VALUES (1539, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 12:01:00', '2022-07-20 12:01:00');
INSERT INTO `admin_operation_log` VALUES (1540, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 12:01:04', '2022-07-20 12:01:04');
INSERT INTO `admin_operation_log` VALUES (1541, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 12:01:48', '2022-07-20 12:01:48');
INSERT INTO `admin_operation_log` VALUES (1542, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 12:02:11', '2022-07-20 12:02:11');
INSERT INTO `admin_operation_log` VALUES (1543, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 12:05:39', '2022-07-20 12:05:39');
INSERT INTO `admin_operation_log` VALUES (1544, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2022-07-20 12:05:41', '2022-07-20 12:05:41');
INSERT INTO `admin_operation_log` VALUES (1545, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 12:05:45', '2022-07-20 12:05:45');
INSERT INTO `admin_operation_log` VALUES (1546, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 12:06:04', '2022-07-20 12:06:04');
INSERT INTO `admin_operation_log` VALUES (1547, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 12:06:43', '2022-07-20 12:06:43');
INSERT INTO `admin_operation_log` VALUES (1548, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 12:07:02', '2022-07-20 12:07:02');
INSERT INTO `admin_operation_log` VALUES (1549, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 12:07:09', '2022-07-20 12:07:09');
INSERT INTO `admin_operation_log` VALUES (1550, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 12:07:11', '2022-07-20 12:07:11');
INSERT INTO `admin_operation_log` VALUES (1551, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 12:07:19', '2022-07-20 12:07:19');
INSERT INTO `admin_operation_log` VALUES (1552, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 12:07:30', '2022-07-20 12:07:30');
INSERT INTO `admin_operation_log` VALUES (1553, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 12:07:31', '2022-07-20 12:07:31');
INSERT INTO `admin_operation_log` VALUES (1554, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-20 12:21:42', '2022-07-20 12:21:42');
INSERT INTO `admin_operation_log` VALUES (1555, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-20 12:22:33', '2022-07-20 12:22:33');
INSERT INTO `admin_operation_log` VALUES (1556, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-20 12:22:43', '2022-07-20 12:22:43');
INSERT INTO `admin_operation_log` VALUES (1557, 1, 'admin/orders/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 12:22:45', '2022-07-20 12:22:45');
INSERT INTO `admin_operation_log` VALUES (1558, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 12:32:47', '2022-07-20 12:32:47');
INSERT INTO `admin_operation_log` VALUES (1559, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-20 12:37:06', '2022-07-20 12:37:06');
INSERT INTO `admin_operation_log` VALUES (1560, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-20 12:37:10', '2022-07-20 12:37:10');
INSERT INTO `admin_operation_log` VALUES (1561, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-20 12:37:16', '2022-07-20 12:37:16');
INSERT INTO `admin_operation_log` VALUES (1562, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 12:44:32', '2022-07-20 12:44:32');
INSERT INTO `admin_operation_log` VALUES (1563, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 12:45:08', '2022-07-20 12:45:08');
INSERT INTO `admin_operation_log` VALUES (1564, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 12:48:31', '2022-07-20 12:48:31');
INSERT INTO `admin_operation_log` VALUES (1565, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 12:49:30', '2022-07-20 12:49:30');
INSERT INTO `admin_operation_log` VALUES (1566, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 12:49:40', '2022-07-20 12:49:40');
INSERT INTO `admin_operation_log` VALUES (1567, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 12:50:41', '2022-07-20 12:50:41');
INSERT INTO `admin_operation_log` VALUES (1568, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 12:50:57', '2022-07-20 12:50:57');
INSERT INTO `admin_operation_log` VALUES (1569, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 12:51:05', '2022-07-20 12:51:05');
INSERT INTO `admin_operation_log` VALUES (1570, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 12:51:10', '2022-07-20 12:51:10');
INSERT INTO `admin_operation_log` VALUES (1571, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 12:51:22', '2022-07-20 12:51:22');
INSERT INTO `admin_operation_log` VALUES (1572, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 12:54:50', '2022-07-20 12:54:50');
INSERT INTO `admin_operation_log` VALUES (1573, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 12:55:02', '2022-07-20 12:55:02');
INSERT INTO `admin_operation_log` VALUES (1574, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 12:55:08', '2022-07-20 12:55:08');
INSERT INTO `admin_operation_log` VALUES (1575, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 12:55:11', '2022-07-20 12:55:11');
INSERT INTO `admin_operation_log` VALUES (1576, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 12:55:17', '2022-07-20 12:55:17');
INSERT INTO `admin_operation_log` VALUES (1577, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 12:55:19', '2022-07-20 12:55:19');
INSERT INTO `admin_operation_log` VALUES (1578, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 13:06:08', '2022-07-20 13:06:08');
INSERT INTO `admin_operation_log` VALUES (1579, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 13:06:15', '2022-07-20 13:06:15');
INSERT INTO `admin_operation_log` VALUES (1580, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 13:06:24', '2022-07-20 13:06:24');
INSERT INTO `admin_operation_log` VALUES (1581, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 13:06:26', '2022-07-20 13:06:26');
INSERT INTO `admin_operation_log` VALUES (1582, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 13:06:31', '2022-07-20 13:06:31');
INSERT INTO `admin_operation_log` VALUES (1583, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 13:06:46', '2022-07-20 13:06:46');
INSERT INTO `admin_operation_log` VALUES (1584, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 13:06:55', '2022-07-20 13:06:55');
INSERT INTO `admin_operation_log` VALUES (1585, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 13:07:01', '2022-07-20 13:07:01');
INSERT INTO `admin_operation_log` VALUES (1586, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 13:07:02', '2022-07-20 13:07:02');
INSERT INTO `admin_operation_log` VALUES (1587, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 13:07:06', '2022-07-20 13:07:06');
INSERT INTO `admin_operation_log` VALUES (1588, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 13:07:10', '2022-07-20 13:07:10');
INSERT INTO `admin_operation_log` VALUES (1589, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 13:07:18', '2022-07-20 13:07:18');
INSERT INTO `admin_operation_log` VALUES (1590, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 13:07:25', '2022-07-20 13:07:25');
INSERT INTO `admin_operation_log` VALUES (1591, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 13:07:35', '2022-07-20 13:07:35');
INSERT INTO `admin_operation_log` VALUES (1592, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 13:07:44', '2022-07-20 13:07:44');
INSERT INTO `admin_operation_log` VALUES (1593, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 13:07:52', '2022-07-20 13:07:52');
INSERT INTO `admin_operation_log` VALUES (1594, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 13:07:56', '2022-07-20 13:07:56');
INSERT INTO `admin_operation_log` VALUES (1595, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 13:08:00', '2022-07-20 13:08:00');
INSERT INTO `admin_operation_log` VALUES (1596, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 13:11:58', '2022-07-20 13:11:58');
INSERT INTO `admin_operation_log` VALUES (1597, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 13:12:09', '2022-07-20 13:12:09');
INSERT INTO `admin_operation_log` VALUES (1598, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 13:12:13', '2022-07-20 13:12:13');
INSERT INTO `admin_operation_log` VALUES (1599, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 13:12:35', '2022-07-20 13:12:35');
INSERT INTO `admin_operation_log` VALUES (1600, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 13:12:43', '2022-07-20 13:12:43');
INSERT INTO `admin_operation_log` VALUES (1601, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 13:12:55', '2022-07-20 13:12:55');
INSERT INTO `admin_operation_log` VALUES (1602, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-20 13:12:59', '2022-07-20 13:12:59');
INSERT INTO `admin_operation_log` VALUES (1603, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-21 05:06:31', '2022-07-21 05:06:31');
INSERT INTO `admin_operation_log` VALUES (1604, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 05:06:36', '2022-07-21 05:06:36');
INSERT INTO `admin_operation_log` VALUES (1605, 1, 'admin/orders/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 05:06:40', '2022-07-21 05:06:40');
INSERT INTO `admin_operation_log` VALUES (1606, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 05:06:42', '2022-07-21 05:06:42');
INSERT INTO `admin_operation_log` VALUES (1607, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 05:06:43', '2022-07-21 05:06:43');
INSERT INTO `admin_operation_log` VALUES (1608, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:06:44', '2022-07-21 05:06:44');
INSERT INTO `admin_operation_log` VALUES (1609, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:07:16', '2022-07-21 05:07:16');
INSERT INTO `admin_operation_log` VALUES (1610, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:07:22', '2022-07-21 05:07:22');
INSERT INTO `admin_operation_log` VALUES (1611, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:07:45', '2022-07-21 05:07:45');
INSERT INTO `admin_operation_log` VALUES (1612, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:08:06', '2022-07-21 05:08:06');
INSERT INTO `admin_operation_log` VALUES (1613, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:08:23', '2022-07-21 05:08:23');
INSERT INTO `admin_operation_log` VALUES (1614, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:09:02', '2022-07-21 05:09:02');
INSERT INTO `admin_operation_log` VALUES (1615, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:09:10', '2022-07-21 05:09:10');
INSERT INTO `admin_operation_log` VALUES (1616, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:13:47', '2022-07-21 05:13:47');
INSERT INTO `admin_operation_log` VALUES (1617, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:14:50', '2022-07-21 05:14:50');
INSERT INTO `admin_operation_log` VALUES (1618, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:15:00', '2022-07-21 05:15:00');
INSERT INTO `admin_operation_log` VALUES (1619, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:15:13', '2022-07-21 05:15:13');
INSERT INTO `admin_operation_log` VALUES (1620, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:15:23', '2022-07-21 05:15:23');
INSERT INTO `admin_operation_log` VALUES (1621, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:15:29', '2022-07-21 05:15:29');
INSERT INTO `admin_operation_log` VALUES (1622, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:15:41', '2022-07-21 05:15:41');
INSERT INTO `admin_operation_log` VALUES (1623, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:15:47', '2022-07-21 05:15:47');
INSERT INTO `admin_operation_log` VALUES (1624, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:17:11', '2022-07-21 05:17:11');
INSERT INTO `admin_operation_log` VALUES (1625, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:17:21', '2022-07-21 05:17:21');
INSERT INTO `admin_operation_log` VALUES (1626, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:17:30', '2022-07-21 05:17:30');
INSERT INTO `admin_operation_log` VALUES (1627, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:24:41', '2022-07-21 05:24:41');
INSERT INTO `admin_operation_log` VALUES (1628, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:25:20', '2022-07-21 05:25:20');
INSERT INTO `admin_operation_log` VALUES (1629, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:27:37', '2022-07-21 05:27:37');
INSERT INTO `admin_operation_log` VALUES (1630, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:30:49', '2022-07-21 05:30:49');
INSERT INTO `admin_operation_log` VALUES (1631, 1, 'admin/orders/%7B%22order_id%22:1,%22product_id%22:3,%22quantity%22:1,%22total%22:1,%22product_price%22:213,%22product_image%22:%22default.png%22%7D-%3Eproduct_image', 'GET', '127.0.0.1', '[]', '2022-07-21 05:30:50', '2022-07-21 05:30:50');
INSERT INTO `admin_operation_log` VALUES (1632, 1, 'admin/orders/%7B%22order_id%22:1,%22product_id%22:4,%22quantity%22:4,%22total%22:123,%22product_price%22:123,%22product_image%22:%22default.png%22%7D-%3Eproduct_image', 'GET', '127.0.0.1', '[]', '2022-07-21 05:30:50', '2022-07-21 05:30:50');
INSERT INTO `admin_operation_log` VALUES (1633, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:30:56', '2022-07-21 05:30:56');
INSERT INTO `admin_operation_log` VALUES (1634, 1, 'admin/orders/%7B%22order_id%22:1,%22product_id%22:3,%22quantity%22:1,%22total%22:1,%22product_price%22:213,%22product_image%22:%22default.png%22%7D-%3Eproduct_image', 'GET', '127.0.0.1', '[]', '2022-07-21 05:30:56', '2022-07-21 05:30:56');
INSERT INTO `admin_operation_log` VALUES (1635, 1, 'admin/orders/%7B%22order_id%22:1,%22product_id%22:4,%22quantity%22:4,%22total%22:123,%22product_price%22:123,%22product_image%22:%22default.png%22%7D-%3Eproduct_image', 'GET', '127.0.0.1', '[]', '2022-07-21 05:30:56', '2022-07-21 05:30:56');
INSERT INTO `admin_operation_log` VALUES (1636, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:31:30', '2022-07-21 05:31:30');
INSERT INTO `admin_operation_log` VALUES (1637, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:31:45', '2022-07-21 05:31:45');
INSERT INTO `admin_operation_log` VALUES (1638, 1, 'admin/orders/default.png', 'GET', '127.0.0.1', '[]', '2022-07-21 05:31:46', '2022-07-21 05:31:46');
INSERT INTO `admin_operation_log` VALUES (1639, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:32:01', '2022-07-21 05:32:01');
INSERT INTO `admin_operation_log` VALUES (1640, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:32:19', '2022-07-21 05:32:19');
INSERT INTO `admin_operation_log` VALUES (1641, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:32:26', '2022-07-21 05:32:26');
INSERT INTO `admin_operation_log` VALUES (1642, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:32:40', '2022-07-21 05:32:40');
INSERT INTO `admin_operation_log` VALUES (1643, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:35:00', '2022-07-21 05:35:00');
INSERT INTO `admin_operation_log` VALUES (1644, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:35:04', '2022-07-21 05:35:04');
INSERT INTO `admin_operation_log` VALUES (1645, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:35:14', '2022-07-21 05:35:14');
INSERT INTO `admin_operation_log` VALUES (1646, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:36:40', '2022-07-21 05:36:40');
INSERT INTO `admin_operation_log` VALUES (1647, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:36:54', '2022-07-21 05:36:54');
INSERT INTO `admin_operation_log` VALUES (1648, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:37:05', '2022-07-21 05:37:05');
INSERT INTO `admin_operation_log` VALUES (1649, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:37:21', '2022-07-21 05:37:21');
INSERT INTO `admin_operation_log` VALUES (1650, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:37:36', '2022-07-21 05:37:36');
INSERT INTO `admin_operation_log` VALUES (1651, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:37:54', '2022-07-21 05:37:54');
INSERT INTO `admin_operation_log` VALUES (1652, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:37:58', '2022-07-21 05:37:58');
INSERT INTO `admin_operation_log` VALUES (1653, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:39:47', '2022-07-21 05:39:47');
INSERT INTO `admin_operation_log` VALUES (1654, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:40:20', '2022-07-21 05:40:20');
INSERT INTO `admin_operation_log` VALUES (1655, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:40:24', '2022-07-21 05:40:24');
INSERT INTO `admin_operation_log` VALUES (1656, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:40:53', '2022-07-21 05:40:53');
INSERT INTO `admin_operation_log` VALUES (1657, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:41:07', '2022-07-21 05:41:07');
INSERT INTO `admin_operation_log` VALUES (1658, 1, 'admin/orders/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 05:41:13', '2022-07-21 05:41:13');
INSERT INTO `admin_operation_log` VALUES (1659, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 05:41:17', '2022-07-21 05:41:17');
INSERT INTO `admin_operation_log` VALUES (1660, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 05:41:18', '2022-07-21 05:41:18');
INSERT INTO `admin_operation_log` VALUES (1661, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 05:41:19', '2022-07-21 05:41:19');
INSERT INTO `admin_operation_log` VALUES (1662, 1, 'admin/orders/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 05:41:23', '2022-07-21 05:41:23');
INSERT INTO `admin_operation_log` VALUES (1663, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 05:41:28', '2022-07-21 05:41:28');
INSERT INTO `admin_operation_log` VALUES (1664, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:43:12', '2022-07-21 05:43:12');
INSERT INTO `admin_operation_log` VALUES (1665, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:43:15', '2022-07-21 05:43:15');
INSERT INTO `admin_operation_log` VALUES (1666, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:43:23', '2022-07-21 05:43:23');
INSERT INTO `admin_operation_log` VALUES (1667, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:43:35', '2022-07-21 05:43:35');
INSERT INTO `admin_operation_log` VALUES (1668, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:44:00', '2022-07-21 05:44:00');
INSERT INTO `admin_operation_log` VALUES (1669, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:44:25', '2022-07-21 05:44:25');
INSERT INTO `admin_operation_log` VALUES (1670, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:44:28', '2022-07-21 05:44:28');
INSERT INTO `admin_operation_log` VALUES (1671, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:45:01', '2022-07-21 05:45:01');
INSERT INTO `admin_operation_log` VALUES (1672, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:45:03', '2022-07-21 05:45:03');
INSERT INTO `admin_operation_log` VALUES (1673, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:45:07', '2022-07-21 05:45:07');
INSERT INTO `admin_operation_log` VALUES (1674, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:45:16', '2022-07-21 05:45:16');
INSERT INTO `admin_operation_log` VALUES (1675, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:45:50', '2022-07-21 05:45:50');
INSERT INTO `admin_operation_log` VALUES (1676, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:46:25', '2022-07-21 05:46:25');
INSERT INTO `admin_operation_log` VALUES (1677, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:46:33', '2022-07-21 05:46:33');
INSERT INTO `admin_operation_log` VALUES (1678, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:47:42', '2022-07-21 05:47:42');
INSERT INTO `admin_operation_log` VALUES (1679, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:50:12', '2022-07-21 05:50:12');
INSERT INTO `admin_operation_log` VALUES (1680, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:50:14', '2022-07-21 05:50:14');
INSERT INTO `admin_operation_log` VALUES (1681, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:50:17', '2022-07-21 05:50:17');
INSERT INTO `admin_operation_log` VALUES (1682, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:51:06', '2022-07-21 05:51:06');
INSERT INTO `admin_operation_log` VALUES (1683, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:51:12', '2022-07-21 05:51:12');
INSERT INTO `admin_operation_log` VALUES (1684, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:51:17', '2022-07-21 05:51:17');
INSERT INTO `admin_operation_log` VALUES (1685, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:51:29', '2022-07-21 05:51:29');
INSERT INTO `admin_operation_log` VALUES (1686, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:51:41', '2022-07-21 05:51:41');
INSERT INTO `admin_operation_log` VALUES (1687, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:52:40', '2022-07-21 05:52:40');
INSERT INTO `admin_operation_log` VALUES (1688, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:54:16', '2022-07-21 05:54:16');
INSERT INTO `admin_operation_log` VALUES (1689, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:54:35', '2022-07-21 05:54:35');
INSERT INTO `admin_operation_log` VALUES (1690, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:55:19', '2022-07-21 05:55:19');
INSERT INTO `admin_operation_log` VALUES (1691, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 05:55:25', '2022-07-21 05:55:25');
INSERT INTO `admin_operation_log` VALUES (1692, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 06:02:28', '2022-07-21 06:02:28');
INSERT INTO `admin_operation_log` VALUES (1693, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 06:02:48', '2022-07-21 06:02:48');
INSERT INTO `admin_operation_log` VALUES (1694, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 06:02:54', '2022-07-21 06:02:54');
INSERT INTO `admin_operation_log` VALUES (1695, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-21 06:03:27', '2022-07-21 06:03:27');
INSERT INTO `admin_operation_log` VALUES (1696, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:03:52', '2022-07-21 06:03:52');
INSERT INTO `admin_operation_log` VALUES (1697, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:04:08', '2022-07-21 06:04:08');
INSERT INTO `admin_operation_log` VALUES (1698, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:15:53', '2022-07-21 06:15:53');
INSERT INTO `admin_operation_log` VALUES (1699, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:16:16', '2022-07-21 06:16:16');
INSERT INTO `admin_operation_log` VALUES (1700, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:16:49', '2022-07-21 06:16:49');
INSERT INTO `admin_operation_log` VALUES (1701, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:16:53', '2022-07-21 06:16:53');
INSERT INTO `admin_operation_log` VALUES (1702, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:16:54', '2022-07-21 06:16:54');
INSERT INTO `admin_operation_log` VALUES (1703, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"asc\"}}', '2022-07-21 06:17:15', '2022-07-21 06:17:15');
INSERT INTO `admin_operation_log` VALUES (1704, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"asc\"}}', '2022-07-21 06:18:00', '2022-07-21 06:18:00');
INSERT INTO `admin_operation_log` VALUES (1705, 1, 'admin/orders/1', 'PUT', '127.0.0.1', '{\"hot\":\"1\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_method\":\"PUT\"}', '2022-07-21 06:18:02', '2022-07-21 06:18:02');
INSERT INTO `admin_operation_log` VALUES (1706, 1, 'admin/orders/1', 'PUT', '127.0.0.1', '{\"new\":\"1\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_method\":\"PUT\"}', '2022-07-21 06:18:03', '2022-07-21 06:18:03');
INSERT INTO `admin_operation_log` VALUES (1707, 1, 'admin/orders/1', 'PUT', '127.0.0.1', '{\"recommend\":\"1\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_method\":\"PUT\"}', '2022-07-21 06:18:03', '2022-07-21 06:18:03');
INSERT INTO `admin_operation_log` VALUES (1708, 1, 'admin/orders/2', 'PUT', '127.0.0.1', '{\"hot\":\"1\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_method\":\"PUT\"}', '2022-07-21 06:18:05', '2022-07-21 06:18:05');
INSERT INTO `admin_operation_log` VALUES (1709, 1, 'admin/orders/2', 'PUT', '127.0.0.1', '{\"new\":\"1\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_method\":\"PUT\"}', '2022-07-21 06:18:05', '2022-07-21 06:18:05');
INSERT INTO `admin_operation_log` VALUES (1710, 1, 'admin/orders/2', 'PUT', '127.0.0.1', '{\"recommend\":\"1\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_method\":\"PUT\"}', '2022-07-21 06:18:05', '2022-07-21 06:18:05');
INSERT INTO `admin_operation_log` VALUES (1711, 1, 'admin/orders/3', 'PUT', '127.0.0.1', '{\"new\":\"1\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_method\":\"PUT\"}', '2022-07-21 06:18:06', '2022-07-21 06:18:06');
INSERT INTO `admin_operation_log` VALUES (1712, 1, 'admin/orders/3', 'PUT', '127.0.0.1', '{\"hot\":\"1\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_method\":\"PUT\"}', '2022-07-21 06:18:06', '2022-07-21 06:18:06');
INSERT INTO `admin_operation_log` VALUES (1713, 1, 'admin/orders/3', 'PUT', '127.0.0.1', '{\"recommend\":\"1\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_method\":\"PUT\"}', '2022-07-21 06:18:07', '2022-07-21 06:18:07');
INSERT INTO `admin_operation_log` VALUES (1714, 1, 'admin/orders/1', 'PUT', '127.0.0.1', '{\"hot\":\"0\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_method\":\"PUT\"}', '2022-07-21 06:18:09', '2022-07-21 06:18:09');
INSERT INTO `admin_operation_log` VALUES (1715, 1, 'admin/orders/1', 'PUT', '127.0.0.1', '{\"new\":\"0\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_method\":\"PUT\"}', '2022-07-21 06:18:10', '2022-07-21 06:18:10');
INSERT INTO `admin_operation_log` VALUES (1716, 1, 'admin/orders/1', 'PUT', '127.0.0.1', '{\"recommend\":\"0\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_method\":\"PUT\"}', '2022-07-21 06:18:10', '2022-07-21 06:18:10');
INSERT INTO `admin_operation_log` VALUES (1717, 1, 'admin/orders/2', 'PUT', '127.0.0.1', '{\"hot\":\"0\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_method\":\"PUT\"}', '2022-07-21 06:18:11', '2022-07-21 06:18:11');
INSERT INTO `admin_operation_log` VALUES (1718, 1, 'admin/orders/2', 'PUT', '127.0.0.1', '{\"new\":\"0\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_method\":\"PUT\"}', '2022-07-21 06:18:11', '2022-07-21 06:18:11');
INSERT INTO `admin_operation_log` VALUES (1719, 1, 'admin/orders/2', 'PUT', '127.0.0.1', '{\"recommend\":\"0\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_method\":\"PUT\"}', '2022-07-21 06:18:11', '2022-07-21 06:18:11');
INSERT INTO `admin_operation_log` VALUES (1720, 1, 'admin/orders/3', 'PUT', '127.0.0.1', '{\"new\":\"0\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_method\":\"PUT\"}', '2022-07-21 06:18:12', '2022-07-21 06:18:12');
INSERT INTO `admin_operation_log` VALUES (1721, 1, 'admin/orders/3', 'PUT', '127.0.0.1', '{\"recommend\":\"0\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_method\":\"PUT\"}', '2022-07-21 06:18:13', '2022-07-21 06:18:13');
INSERT INTO `admin_operation_log` VALUES (1722, 1, 'admin/orders/3', 'PUT', '127.0.0.1', '{\"hot\":\"0\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_method\":\"PUT\"}', '2022-07-21 06:18:13', '2022-07-21 06:18:13');
INSERT INTO `admin_operation_log` VALUES (1723, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"asc\"}}', '2022-07-21 06:19:40', '2022-07-21 06:19:40');
INSERT INTO `admin_operation_log` VALUES (1724, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"asc\"}}', '2022-07-21 06:19:59', '2022-07-21 06:19:59');
INSERT INTO `admin_operation_log` VALUES (1725, 1, 'admin/orders/1', 'PUT', '127.0.0.1', '{\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_method\":\"PUT\",\"_edit_inline\":\"true\",\"status\":\"1\"}', '2022-07-21 06:20:04', '2022-07-21 06:20:04');
INSERT INTO `admin_operation_log` VALUES (1726, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"asc\"}}', '2022-07-21 06:20:06', '2022-07-21 06:20:06');
INSERT INTO `admin_operation_log` VALUES (1727, 1, 'admin/orders/1', 'PUT', '127.0.0.1', '{\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_method\":\"PUT\",\"_edit_inline\":\"true\",\"status\":\"1\"}', '2022-07-21 06:20:08', '2022-07-21 06:20:08');
INSERT INTO `admin_operation_log` VALUES (1728, 1, 'admin/orders/2', 'PUT', '127.0.0.1', '{\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_method\":\"PUT\",\"_edit_inline\":\"true\",\"status\":\"2\"}', '2022-07-21 06:20:20', '2022-07-21 06:20:20');
INSERT INTO `admin_operation_log` VALUES (1729, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"asc\"}}', '2022-07-21 06:20:26', '2022-07-21 06:20:26');
INSERT INTO `admin_operation_log` VALUES (1730, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:20:27', '2022-07-21 06:20:27');
INSERT INTO `admin_operation_log` VALUES (1731, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"desc\"}}', '2022-07-21 06:20:35', '2022-07-21 06:20:35');
INSERT INTO `admin_operation_log` VALUES (1732, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"desc\"}}', '2022-07-21 06:24:21', '2022-07-21 06:24:21');
INSERT INTO `admin_operation_log` VALUES (1733, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"desc\"}}', '2022-07-21 06:24:25', '2022-07-21 06:24:25');
INSERT INTO `admin_operation_log` VALUES (1734, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"desc\"}}', '2022-07-21 06:24:36', '2022-07-21 06:24:36');
INSERT INTO `admin_operation_log` VALUES (1735, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"desc\"}}', '2022-07-21 06:24:49', '2022-07-21 06:24:49');
INSERT INTO `admin_operation_log` VALUES (1736, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"desc\"}}', '2022-07-21 06:25:08', '2022-07-21 06:25:08');
INSERT INTO `admin_operation_log` VALUES (1737, 1, 'admin/orders/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:25:10', '2022-07-21 06:25:10');
INSERT INTO `admin_operation_log` VALUES (1738, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:25:11', '2022-07-21 06:25:11');
INSERT INTO `admin_operation_log` VALUES (1739, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"desc\"}}', '2022-07-21 06:25:12', '2022-07-21 06:25:12');
INSERT INTO `admin_operation_log` VALUES (1740, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"desc\"}}', '2022-07-21 06:25:27', '2022-07-21 06:25:27');
INSERT INTO `admin_operation_log` VALUES (1741, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"desc\"}}', '2022-07-21 06:25:45', '2022-07-21 06:25:45');
INSERT INTO `admin_operation_log` VALUES (1742, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"desc\"}}', '2022-07-21 06:25:48', '2022-07-21 06:25:48');
INSERT INTO `admin_operation_log` VALUES (1743, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"desc\"}}', '2022-07-21 06:25:53', '2022-07-21 06:25:53');
INSERT INTO `admin_operation_log` VALUES (1744, 1, 'admin/orders/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:26:00', '2022-07-21 06:26:00');
INSERT INTO `admin_operation_log` VALUES (1745, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:26:01', '2022-07-21 06:26:01');
INSERT INTO `admin_operation_log` VALUES (1746, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"desc\"}}', '2022-07-21 06:26:08', '2022-07-21 06:26:08');
INSERT INTO `admin_operation_log` VALUES (1747, 1, 'admin/orders/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:26:10', '2022-07-21 06:26:10');
INSERT INTO `admin_operation_log` VALUES (1748, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:26:11', '2022-07-21 06:26:11');
INSERT INTO `admin_operation_log` VALUES (1749, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:26:42', '2022-07-21 06:26:42');
INSERT INTO `admin_operation_log` VALUES (1750, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:26:42', '2022-07-21 06:26:42');
INSERT INTO `admin_operation_log` VALUES (1751, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"desc\"}}', '2022-07-21 06:26:43', '2022-07-21 06:26:43');
INSERT INTO `admin_operation_log` VALUES (1752, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"desc\"}}', '2022-07-21 06:26:52', '2022-07-21 06:26:52');
INSERT INTO `admin_operation_log` VALUES (1753, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"desc\"}}', '2022-07-21 06:26:54', '2022-07-21 06:26:54');
INSERT INTO `admin_operation_log` VALUES (1754, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"desc\"}}', '2022-07-21 06:27:06', '2022-07-21 06:27:06');
INSERT INTO `admin_operation_log` VALUES (1755, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"status\",\"type\":\"desc\"}}', '2022-07-21 06:27:07', '2022-07-21 06:27:07');
INSERT INTO `admin_operation_log` VALUES (1756, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:27:08', '2022-07-21 06:27:08');
INSERT INTO `admin_operation_log` VALUES (1757, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:27:11', '2022-07-21 06:27:11');
INSERT INTO `admin_operation_log` VALUES (1758, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:30:15', '2022-07-21 06:30:15');
INSERT INTO `admin_operation_log` VALUES (1759, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:30:18', '2022-07-21 06:30:18');
INSERT INTO `admin_operation_log` VALUES (1760, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:30:27', '2022-07-21 06:30:27');
INSERT INTO `admin_operation_log` VALUES (1761, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:30:36', '2022-07-21 06:30:36');
INSERT INTO `admin_operation_log` VALUES (1762, 1, 'admin/orders/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:30:39', '2022-07-21 06:30:39');
INSERT INTO `admin_operation_log` VALUES (1763, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:30:40', '2022-07-21 06:30:40');
INSERT INTO `admin_operation_log` VALUES (1764, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:31:07', '2022-07-21 06:31:07');
INSERT INTO `admin_operation_log` VALUES (1765, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:31:36', '2022-07-21 06:31:36');
INSERT INTO `admin_operation_log` VALUES (1766, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:34:35', '2022-07-21 06:34:35');
INSERT INTO `admin_operation_log` VALUES (1767, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:35:51', '2022-07-21 06:35:51');
INSERT INTO `admin_operation_log` VALUES (1768, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:37:43', '2022-07-21 06:37:43');
INSERT INTO `admin_operation_log` VALUES (1769, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:38:03', '2022-07-21 06:38:03');
INSERT INTO `admin_operation_log` VALUES (1770, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:38:10', '2022-07-21 06:38:10');
INSERT INTO `admin_operation_log` VALUES (1771, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:40:15', '2022-07-21 06:40:15');
INSERT INTO `admin_operation_log` VALUES (1772, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:40:18', '2022-07-21 06:40:18');
INSERT INTO `admin_operation_log` VALUES (1773, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:40:45', '2022-07-21 06:40:45');
INSERT INTO `admin_operation_log` VALUES (1774, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"1\",\"_model\":\"App_Models_Order\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_action\":\"App_Admin_Actions_Post_Replicate\"}', '2022-07-21 06:40:46', '2022-07-21 06:40:46');
INSERT INTO `admin_operation_log` VALUES (1775, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:42:09', '2022-07-21 06:42:09');
INSERT INTO `admin_operation_log` VALUES (1776, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"1\",\"_model\":\"App_Models_Order\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_action\":\"App_Admin_Actions_Post_Replicate\",\"_input\":\"true\"}', '2022-07-21 06:42:15', '2022-07-21 06:42:15');
INSERT INTO `admin_operation_log` VALUES (1777, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:42:25', '2022-07-21 06:42:25');
INSERT INTO `admin_operation_log` VALUES (1778, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:42:30', '2022-07-21 06:42:30');
INSERT INTO `admin_operation_log` VALUES (1779, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:44:23', '2022-07-21 06:44:23');
INSERT INTO `admin_operation_log` VALUES (1780, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:48:22', '2022-07-21 06:48:22');
INSERT INTO `admin_operation_log` VALUES (1781, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:48:27', '2022-07-21 06:48:27');
INSERT INTO `admin_operation_log` VALUES (1782, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:48:36', '2022-07-21 06:48:36');
INSERT INTO `admin_operation_log` VALUES (1783, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:48:42', '2022-07-21 06:48:42');
INSERT INTO `admin_operation_log` VALUES (1784, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:48:55', '2022-07-21 06:48:55');
INSERT INTO `admin_operation_log` VALUES (1785, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:49:19', '2022-07-21 06:49:19');
INSERT INTO `admin_operation_log` VALUES (1786, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:49:38', '2022-07-21 06:49:38');
INSERT INTO `admin_operation_log` VALUES (1787, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:49:57', '2022-07-21 06:49:57');
INSERT INTO `admin_operation_log` VALUES (1788, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:50:28', '2022-07-21 06:50:28');
INSERT INTO `admin_operation_log` VALUES (1789, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"status\":\"2\",\"_key\":\"1\",\"_model\":\"App_Models_Order\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_action\":\"App_Admin_Actions_Post_Replicate\"}', '2022-07-21 06:50:31', '2022-07-21 06:50:31');
INSERT INTO `admin_operation_log` VALUES (1790, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:50:45', '2022-07-21 06:50:45');
INSERT INTO `admin_operation_log` VALUES (1791, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"status\":\"2\",\"_key\":\"1\",\"_model\":\"App_Models_Order\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_action\":\"App_Admin_Actions_Post_Replicate\"}', '2022-07-21 06:50:49', '2022-07-21 06:50:49');
INSERT INTO `admin_operation_log` VALUES (1792, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:51:02', '2022-07-21 06:51:02');
INSERT INTO `admin_operation_log` VALUES (1793, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"status\":\"2\",\"_key\":\"1\",\"_model\":\"App_Models_Order\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_action\":\"App_Admin_Actions_Post_Replicate\"}', '2022-07-21 06:51:07', '2022-07-21 06:51:07');
INSERT INTO `admin_operation_log` VALUES (1794, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:51:15', '2022-07-21 06:51:15');
INSERT INTO `admin_operation_log` VALUES (1795, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"status\":\"2\",\"_key\":\"1\",\"_model\":\"App_Models_Order\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_action\":\"App_Admin_Actions_Post_Replicate\"}', '2022-07-21 06:51:18', '2022-07-21 06:51:18');
INSERT INTO `admin_operation_log` VALUES (1796, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:51:18', '2022-07-21 06:51:18');
INSERT INTO `admin_operation_log` VALUES (1797, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:52:20', '2022-07-21 06:52:20');
INSERT INTO `admin_operation_log` VALUES (1798, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"status\":\"3\",\"_key\":\"1\",\"_model\":\"App_Models_Order\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_action\":\"App_Admin_Actions_Post_Replicate\"}', '2022-07-21 06:52:24', '2022-07-21 06:52:24');
INSERT INTO `admin_operation_log` VALUES (1799, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:52:24', '2022-07-21 06:52:24');
INSERT INTO `admin_operation_log` VALUES (1800, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:53:27', '2022-07-21 06:53:27');
INSERT INTO `admin_operation_log` VALUES (1801, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"status\":\"4\",\"_key\":\"1\",\"_model\":\"App_Models_Order\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_action\":\"App_Admin_Actions_Post_Replicate\"}', '2022-07-21 06:53:31', '2022-07-21 06:53:31');
INSERT INTO `admin_operation_log` VALUES (1802, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:53:31', '2022-07-21 06:53:31');
INSERT INTO `admin_operation_log` VALUES (1803, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 06:53:51', '2022-07-21 06:53:51');
INSERT INTO `admin_operation_log` VALUES (1804, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"status\":\"5\",\"_key\":\"1\",\"_model\":\"App_Models_Order\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_action\":\"App_Admin_Actions_Post_Replicate\"}', '2022-07-21 06:55:05', '2022-07-21 06:55:05');
INSERT INTO `admin_operation_log` VALUES (1805, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:55:05', '2022-07-21 06:55:05');
INSERT INTO `admin_operation_log` VALUES (1806, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:55:37', '2022-07-21 06:55:37');
INSERT INTO `admin_operation_log` VALUES (1807, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:55:39', '2022-07-21 06:55:39');
INSERT INTO `admin_operation_log` VALUES (1808, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:55:39', '2022-07-21 06:55:39');
INSERT INTO `admin_operation_log` VALUES (1809, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:55:42', '2022-07-21 06:55:42');
INSERT INTO `admin_operation_log` VALUES (1810, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:55:46', '2022-07-21 06:55:46');
INSERT INTO `admin_operation_log` VALUES (1811, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:55:47', '2022-07-21 06:55:47');
INSERT INTO `admin_operation_log` VALUES (1812, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:55:48', '2022-07-21 06:55:48');
INSERT INTO `admin_operation_log` VALUES (1813, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:55:48', '2022-07-21 06:55:48');
INSERT INTO `admin_operation_log` VALUES (1814, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:55:49', '2022-07-21 06:55:49');
INSERT INTO `admin_operation_log` VALUES (1815, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:55:49', '2022-07-21 06:55:49');
INSERT INTO `admin_operation_log` VALUES (1816, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:55:58', '2022-07-21 06:55:58');
INSERT INTO `admin_operation_log` VALUES (1817, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-21 06:56:02', '2022-07-21 06:56:02');
INSERT INTO `admin_operation_log` VALUES (1818, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-21 06:56:03', '2022-07-21 06:56:03');
INSERT INTO `admin_operation_log` VALUES (1819, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-21 06:56:04', '2022-07-21 06:56:04');
INSERT INTO `admin_operation_log` VALUES (1820, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-21 06:56:05', '2022-07-21 06:56:05');
INSERT INTO `admin_operation_log` VALUES (1821, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:56:38', '2022-07-21 06:56:38');
INSERT INTO `admin_operation_log` VALUES (1822, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:56:38', '2022-07-21 06:56:38');
INSERT INTO `admin_operation_log` VALUES (1823, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:56:41', '2022-07-21 06:56:41');
INSERT INTO `admin_operation_log` VALUES (1824, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:56:41', '2022-07-21 06:56:41');
INSERT INTO `admin_operation_log` VALUES (1825, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:57:18', '2022-07-21 06:57:18');
INSERT INTO `admin_operation_log` VALUES (1826, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:57:19', '2022-07-21 06:57:19');
INSERT INTO `admin_operation_log` VALUES (1827, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:57:20', '2022-07-21 06:57:20');
INSERT INTO `admin_operation_log` VALUES (1828, 1, 'admin/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:57:21', '2022-07-21 06:57:21');
INSERT INTO `admin_operation_log` VALUES (1829, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:57:23', '2022-07-21 06:57:23');
INSERT INTO `admin_operation_log` VALUES (1830, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:57:24', '2022-07-21 06:57:24');
INSERT INTO `admin_operation_log` VALUES (1831, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 06:57:25', '2022-07-21 06:57:25');
INSERT INTO `admin_operation_log` VALUES (1832, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-21 07:00:13', '2022-07-21 07:00:13');
INSERT INTO `admin_operation_log` VALUES (1833, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 07:00:15', '2022-07-21 07:00:15');
INSERT INTO `admin_operation_log` VALUES (1834, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 07:00:17', '2022-07-21 07:00:17');
INSERT INTO `admin_operation_log` VALUES (1835, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 07:00:18', '2022-07-21 07:00:18');
INSERT INTO `admin_operation_log` VALUES (1836, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"status\":\"2\",\"_key\":\"1\",\"_model\":\"App_Models_Order\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_action\":\"App_Admin_Actions_Post_Replicate\"}', '2022-07-21 07:00:23', '2022-07-21 07:00:23');
INSERT INTO `admin_operation_log` VALUES (1837, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 07:00:23', '2022-07-21 07:00:23');
INSERT INTO `admin_operation_log` VALUES (1838, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 07:01:12', '2022-07-21 07:01:12');
INSERT INTO `admin_operation_log` VALUES (1839, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"status\":\"1\",\"_key\":\"1\",\"_model\":\"App_Models_Order\",\"_token\":\"cx5ThmlmYA6j6rt8cLaPYQMDeC4NXxx3JTa29E3R\",\"_action\":\"App_Admin_Actions_Post_Replicate\"}', '2022-07-21 07:01:15', '2022-07-21 07:01:15');
INSERT INTO `admin_operation_log` VALUES (1840, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 07:01:15', '2022-07-21 07:01:15');
INSERT INTO `admin_operation_log` VALUES (1841, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 09:48:49', '2022-07-21 09:48:49');
INSERT INTO `admin_operation_log` VALUES (1842, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 09:49:57', '2022-07-21 09:49:57');
INSERT INTO `admin_operation_log` VALUES (1843, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"status\":\"2\",\"_key\":\"1\",\"_model\":\"App_Models_Order\",\"_token\":\"qXF5g0M8vZcD7MjO8nHOScqSfhT28oqshhgyIQvA\",\"_action\":\"App_Admin_Actions_Post_Replicate\"}', '2022-07-21 09:50:17', '2022-07-21 09:50:17');
INSERT INTO `admin_operation_log` VALUES (1844, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 09:50:18', '2022-07-21 09:50:18');
INSERT INTO `admin_operation_log` VALUES (1845, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 09:53:43', '2022-07-21 09:53:43');
INSERT INTO `admin_operation_log` VALUES (1846, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-21 10:40:00', '2022-07-21 10:40:00');
INSERT INTO `admin_operation_log` VALUES (1847, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 10:40:03', '2022-07-21 10:40:03');
INSERT INTO `admin_operation_log` VALUES (1848, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u041d\\u0430\\u0441\\u0442\\u0440\\u043e\\u0439\\u043a\\u0438\",\"icon\":\"fa-cog\",\"uri\":\"\\/settings\",\"roles\":[null],\"permission\":null,\"_token\":\"qXF5g0M8vZcD7MjO8nHOScqSfhT28oqshhgyIQvA\"}', '2022-07-21 10:40:46', '2022-07-21 10:40:46');
INSERT INTO `admin_operation_log` VALUES (1849, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-07-21 10:40:46', '2022-07-21 10:40:46');
INSERT INTO `admin_operation_log` VALUES (1850, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-07-21 10:40:48', '2022-07-21 10:40:48');
INSERT INTO `admin_operation_log` VALUES (1851, 1, 'admin/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 10:40:50', '2022-07-21 10:40:50');
INSERT INTO `admin_operation_log` VALUES (1852, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2022-07-21 10:41:09', '2022-07-21 10:41:09');
INSERT INTO `admin_operation_log` VALUES (1853, 1, 'admin/settings/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 10:41:12', '2022-07-21 10:41:12');
INSERT INTO `admin_operation_log` VALUES (1854, 1, 'admin/settings/create', 'GET', '127.0.0.1', '[]', '2022-07-21 10:41:31', '2022-07-21 10:41:31');
INSERT INTO `admin_operation_log` VALUES (1855, 1, 'admin/settings/create', 'GET', '127.0.0.1', '[]', '2022-07-21 10:41:48', '2022-07-21 10:41:48');
INSERT INTO `admin_operation_log` VALUES (1856, 1, 'admin/settings', 'POST', '127.0.0.1', '{\"phone_number\":null,\"website_name\":null,\"regular_delivery_cost\":\"25000\",\"fast_delivery_cost\":\"50000\",\"_token\":\"qXF5g0M8vZcD7MjO8nHOScqSfhT28oqshhgyIQvA\",\"after-save\":\"1\"}', '2022-07-21 10:42:06', '2022-07-21 10:42:06');
INSERT INTO `admin_operation_log` VALUES (1857, 1, 'admin/settings/create', 'GET', '127.0.0.1', '[]', '2022-07-21 10:42:06', '2022-07-21 10:42:06');
INSERT INTO `admin_operation_log` VALUES (1858, 1, 'admin/settings', 'POST', '127.0.0.1', '{\"phone_number\":\"998330000000\",\"website_name\":\"itechno.uz\",\"regular_delivery_cost\":\"25000\",\"fast_delivery_cost\":\"50000\",\"_token\":\"qXF5g0M8vZcD7MjO8nHOScqSfhT28oqshhgyIQvA\"}', '2022-07-21 10:42:18', '2022-07-21 10:42:18');
INSERT INTO `admin_operation_log` VALUES (1859, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2022-07-21 10:42:18', '2022-07-21 10:42:18');
INSERT INTO `admin_operation_log` VALUES (1860, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2022-07-21 11:07:22', '2022-07-21 11:07:22');
INSERT INTO `admin_operation_log` VALUES (1861, 1, 'admin/settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:07:26', '2022-07-21 11:07:26');
INSERT INTO `admin_operation_log` VALUES (1862, 1, 'admin/settings/1', 'PUT', '127.0.0.1', '{\"phone_number\":\"998330000000\",\"website_name\":\"itechno.uz\",\"regular_delivery_cost\":\"25000\",\"fast_delivery_cost\":\"50000\",\"_token\":\"qXF5g0M8vZcD7MjO8nHOScqSfhT28oqshhgyIQvA\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ecommerce.loc\\/admin\\/settings\"}', '2022-07-21 11:08:15', '2022-07-21 11:08:15');
INSERT INTO `admin_operation_log` VALUES (1863, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2022-07-21 11:08:15', '2022-07-21 11:08:15');
INSERT INTO `admin_operation_log` VALUES (1864, 1, 'admin/settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:10:51', '2022-07-21 11:10:51');
INSERT INTO `admin_operation_log` VALUES (1865, 1, 'admin/settings/1', 'PUT', '127.0.0.1', '{\"phone_number\":\"998330000000\",\"website_name\":\"itechno.uz\",\"regular_delivery_cost\":\"25000\",\"fast_delivery_cost\":\"50000\",\"_token\":\"qXF5g0M8vZcD7MjO8nHOScqSfhT28oqshhgyIQvA\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ecommerce.loc\\/admin\\/settings\"}', '2022-07-21 11:10:55', '2022-07-21 11:10:55');
INSERT INTO `admin_operation_log` VALUES (1866, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2022-07-21 11:10:56', '2022-07-21 11:10:56');
INSERT INTO `admin_operation_log` VALUES (1867, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2022-07-21 11:14:16', '2022-07-21 11:14:16');
INSERT INTO `admin_operation_log` VALUES (1868, 1, 'admin/settings/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:14:17', '2022-07-21 11:14:17');
INSERT INTO `admin_operation_log` VALUES (1869, 1, 'admin/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:14:19', '2022-07-21 11:14:19');
INSERT INTO `admin_operation_log` VALUES (1870, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2022-07-21 11:14:36', '2022-07-21 11:14:36');
INSERT INTO `admin_operation_log` VALUES (1871, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2022-07-21 11:14:48', '2022-07-21 11:14:48');
INSERT INTO `admin_operation_log` VALUES (1872, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2022-07-21 11:14:53', '2022-07-21 11:14:53');
INSERT INTO `admin_operation_log` VALUES (1873, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2022-07-21 11:15:14', '2022-07-21 11:15:14');
INSERT INTO `admin_operation_log` VALUES (1874, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2022-07-21 11:15:32', '2022-07-21 11:15:32');
INSERT INTO `admin_operation_log` VALUES (1875, 1, 'admin/settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:16:31', '2022-07-21 11:16:31');
INSERT INTO `admin_operation_log` VALUES (1876, 1, 'admin/settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-07-21 11:16:45', '2022-07-21 11:16:45');
INSERT INTO `admin_operation_log` VALUES (1877, 1, 'admin/settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-07-21 11:16:47', '2022-07-21 11:16:47');
INSERT INTO `admin_operation_log` VALUES (1878, 1, 'admin/settings/1/edit', 'GET', '127.0.0.1', '[]', '2022-07-21 11:16:52', '2022-07-21 11:16:52');
INSERT INTO `admin_operation_log` VALUES (1879, 1, 'admin/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:16:54', '2022-07-21 11:16:54');
INSERT INTO `admin_operation_log` VALUES (1880, 1, 'admin/settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:16:56', '2022-07-21 11:16:56');
INSERT INTO `admin_operation_log` VALUES (1881, 1, 'admin/settings/1', 'PUT', '127.0.0.1', '{\"slogan\":\"\\u0421\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d \\u043a\\u043e\\u043c\\u043f\\u044c\\u044e\\u0442\\u0435\\u0440\\u043d\\u043e\\u0439 \\u0442\\u0435\\u0445\\u043d\\u0438\\u043a\\u0438\",\"phone_number\":\"998330000000\",\"website_name\":\"itechno.uz\",\"regular_delivery_cost\":\"25000\",\"fast_delivery_cost\":\"50000\",\"_token\":\"qXF5g0M8vZcD7MjO8nHOScqSfhT28oqshhgyIQvA\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ecommerce.loc\\/admin\\/settings\"}', '2022-07-21 11:17:34', '2022-07-21 11:17:34');
INSERT INTO `admin_operation_log` VALUES (1882, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2022-07-21 11:17:35', '2022-07-21 11:17:35');
INSERT INTO `admin_operation_log` VALUES (1883, 1, 'admin/settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:17:38', '2022-07-21 11:17:38');
INSERT INTO `admin_operation_log` VALUES (1884, 1, 'admin/settings/1', 'PUT', '127.0.0.1', '{\"slogan\":\"\\u0421\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d \\u043a\\u043e\\u043c\\u043f\\u044c\\u044e\\u0442\\u0435\\u0440\\u043d\\u043e\\u0439 \\u0442\\u0435\\u0445\\u043d\\u0438\\u043a\\u0438\",\"phone_number\":\"998330000000\",\"website_name\":\"itechno.uz\",\"regular_delivery_cost\":\"25000\",\"fast_delivery_cost\":\"50000\",\"_token\":\"qXF5g0M8vZcD7MjO8nHOScqSfhT28oqshhgyIQvA\",\"after-save\":\"2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ecommerce.loc\\/admin\\/settings\"}', '2022-07-21 11:17:40', '2022-07-21 11:17:40');
INSERT INTO `admin_operation_log` VALUES (1885, 1, 'admin/settings/create', 'GET', '127.0.0.1', '[]', '2022-07-21 11:17:40', '2022-07-21 11:17:40');
INSERT INTO `admin_operation_log` VALUES (1886, 1, 'admin/settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:17:42', '2022-07-21 11:17:42');
INSERT INTO `admin_operation_log` VALUES (1887, 1, 'admin/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:17:45', '2022-07-21 11:17:45');
INSERT INTO `admin_operation_log` VALUES (1888, 1, 'admin/settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:17:48', '2022-07-21 11:17:48');
INSERT INTO `admin_operation_log` VALUES (1889, 1, 'admin/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:17:51', '2022-07-21 11:17:51');
INSERT INTO `admin_operation_log` VALUES (1890, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:18:57', '2022-07-21 11:18:57');
INSERT INTO `admin_operation_log` VALUES (1891, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:18:58', '2022-07-21 11:18:58');
INSERT INTO `admin_operation_log` VALUES (1892, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:18:59', '2022-07-21 11:18:59');
INSERT INTO `admin_operation_log` VALUES (1893, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:18:59', '2022-07-21 11:18:59');
INSERT INTO `admin_operation_log` VALUES (1894, 1, 'admin/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:19:00', '2022-07-21 11:19:00');
INSERT INTO `admin_operation_log` VALUES (1895, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:19:00', '2022-07-21 11:19:00');
INSERT INTO `admin_operation_log` VALUES (1896, 1, 'admin/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:19:01', '2022-07-21 11:19:01');
INSERT INTO `admin_operation_log` VALUES (1897, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:19:02', '2022-07-21 11:19:02');
INSERT INTO `admin_operation_log` VALUES (1898, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 11:25:28', '2022-07-21 11:25:28');
INSERT INTO `admin_operation_log` VALUES (1899, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:25:31', '2022-07-21 11:25:31');
INSERT INTO `admin_operation_log` VALUES (1900, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:25:31', '2022-07-21 11:25:31');
INSERT INTO `admin_operation_log` VALUES (1901, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:25:38', '2022-07-21 11:25:38');
INSERT INTO `admin_operation_log` VALUES (1902, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:25:39', '2022-07-21 11:25:39');
INSERT INTO `admin_operation_log` VALUES (1903, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:25:48', '2022-07-21 11:25:48');
INSERT INTO `admin_operation_log` VALUES (1904, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:25:49', '2022-07-21 11:25:49');
INSERT INTO `admin_operation_log` VALUES (1905, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:25:52', '2022-07-21 11:25:52');
INSERT INTO `admin_operation_log` VALUES (1906, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:25:52', '2022-07-21 11:25:52');
INSERT INTO `admin_operation_log` VALUES (1907, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:25:53', '2022-07-21 11:25:53');
INSERT INTO `admin_operation_log` VALUES (1908, 1, 'admin/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:25:53', '2022-07-21 11:25:53');
INSERT INTO `admin_operation_log` VALUES (1909, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:25:53', '2022-07-21 11:25:53');
INSERT INTO `admin_operation_log` VALUES (1910, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:25:54', '2022-07-21 11:25:54');
INSERT INTO `admin_operation_log` VALUES (1911, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 11:26:30', '2022-07-21 11:26:30');
INSERT INTO `admin_operation_log` VALUES (1912, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"},\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:26:34', '2022-07-21 11:26:34');
INSERT INTO `admin_operation_log` VALUES (1913, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"2\"},\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:26:34', '2022-07-21 11:26:34');
INSERT INTO `admin_operation_log` VALUES (1914, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"3\"},\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:26:35', '2022-07-21 11:26:35');
INSERT INTO `admin_operation_log` VALUES (1915, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"4\"},\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:26:36', '2022-07-21 11:26:36');
INSERT INTO `admin_operation_log` VALUES (1916, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"5\"},\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:26:37', '2022-07-21 11:26:37');
INSERT INTO `admin_operation_log` VALUES (1917, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"2\"},\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:26:38', '2022-07-21 11:26:38');
INSERT INTO `admin_operation_log` VALUES (1918, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"},\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:26:39', '2022-07-21 11:26:39');
INSERT INTO `admin_operation_log` VALUES (1919, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"2\"},\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:26:41', '2022-07-21 11:26:41');
INSERT INTO `admin_operation_log` VALUES (1920, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"},\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:26:42', '2022-07-21 11:26:42');
INSERT INTO `admin_operation_log` VALUES (1921, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:26:43', '2022-07-21 11:26:43');
INSERT INTO `admin_operation_log` VALUES (1922, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_selector\":{\"status\":\"2\"}}', '2022-07-21 11:28:54', '2022-07-21 11:28:54');
INSERT INTO `admin_operation_log` VALUES (1923, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_selector\":{\"status\":\"2,1\"}}', '2022-07-21 11:28:56', '2022-07-21 11:28:56');
INSERT INTO `admin_operation_log` VALUES (1924, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_selector\":{\"status\":\"2,1,3\"}}', '2022-07-21 11:28:57', '2022-07-21 11:28:57');
INSERT INTO `admin_operation_log` VALUES (1925, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_selector\":{\"status\":\"2,1,3,4\"}}', '2022-07-21 11:28:58', '2022-07-21 11:28:58');
INSERT INTO `admin_operation_log` VALUES (1926, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 11:29:00', '2022-07-21 11:29:00');
INSERT INTO `admin_operation_log` VALUES (1927, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:29:01', '2022-07-21 11:29:01');
INSERT INTO `admin_operation_log` VALUES (1928, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:30:10', '2022-07-21 11:30:10');
INSERT INTO `admin_operation_log` VALUES (1929, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:31:46', '2022-07-21 11:31:46');
INSERT INTO `admin_operation_log` VALUES (1930, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:32:03', '2022-07-21 11:32:03');
INSERT INTO `admin_operation_log` VALUES (1931, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:32:17', '2022-07-21 11:32:17');
INSERT INTO `admin_operation_log` VALUES (1932, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:32:54', '2022-07-21 11:32:54');
INSERT INTO `admin_operation_log` VALUES (1933, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:33:12', '2022-07-21 11:33:12');
INSERT INTO `admin_operation_log` VALUES (1934, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:33:34', '2022-07-21 11:33:34');
INSERT INTO `admin_operation_log` VALUES (1935, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:34:29', '2022-07-21 11:34:29');
INSERT INTO `admin_operation_log` VALUES (1936, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:34:43', '2022-07-21 11:34:43');
INSERT INTO `admin_operation_log` VALUES (1937, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:34:52', '2022-07-21 11:34:52');
INSERT INTO `admin_operation_log` VALUES (1938, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:34:58', '2022-07-21 11:34:58');
INSERT INTO `admin_operation_log` VALUES (1939, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:35:07', '2022-07-21 11:35:07');
INSERT INTO `admin_operation_log` VALUES (1940, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:35:10', '2022-07-21 11:35:10');
INSERT INTO `admin_operation_log` VALUES (1941, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:35:29', '2022-07-21 11:35:29');
INSERT INTO `admin_operation_log` VALUES (1942, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:35:52', '2022-07-21 11:35:52');
INSERT INTO `admin_operation_log` VALUES (1943, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:36:41', '2022-07-21 11:36:41');
INSERT INTO `admin_operation_log` VALUES (1944, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:37:37', '2022-07-21 11:37:37');
INSERT INTO `admin_operation_log` VALUES (1945, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:38:41', '2022-07-21 11:38:41');
INSERT INTO `admin_operation_log` VALUES (1946, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:39:15', '2022-07-21 11:39:15');
INSERT INTO `admin_operation_log` VALUES (1947, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:39:40', '2022-07-21 11:39:40');
INSERT INTO `admin_operation_log` VALUES (1948, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:39:53', '2022-07-21 11:39:53');
INSERT INTO `admin_operation_log` VALUES (1949, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:40:49', '2022-07-21 11:40:49');
INSERT INTO `admin_operation_log` VALUES (1950, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:43:35', '2022-07-21 11:43:35');
INSERT INTO `admin_operation_log` VALUES (1951, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:43:50', '2022-07-21 11:43:50');
INSERT INTO `admin_operation_log` VALUES (1952, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:44:18', '2022-07-21 11:44:18');
INSERT INTO `admin_operation_log` VALUES (1953, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:45:03', '2022-07-21 11:45:03');
INSERT INTO `admin_operation_log` VALUES (1954, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:45:11', '2022-07-21 11:45:11');
INSERT INTO `admin_operation_log` VALUES (1955, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:45:34', '2022-07-21 11:45:34');
INSERT INTO `admin_operation_log` VALUES (1956, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 11:46:04', '2022-07-21 11:46:04');
INSERT INTO `admin_operation_log` VALUES (1957, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 12:05:13', '2022-07-21 12:05:13');
INSERT INTO `admin_operation_log` VALUES (1958, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 12:05:53', '2022-07-21 12:05:53');
INSERT INTO `admin_operation_log` VALUES (1959, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 12:05:56', '2022-07-21 12:05:56');
INSERT INTO `admin_operation_log` VALUES (1960, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_selector\":{\"status\":\"1\"}}', '2022-07-21 12:07:11', '2022-07-21 12:07:11');
INSERT INTO `admin_operation_log` VALUES (1961, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:07:28', '2022-07-21 12:07:28');
INSERT INTO `admin_operation_log` VALUES (1962, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-21 12:07:32', '2022-07-21 12:07:32');
INSERT INTO `admin_operation_log` VALUES (1963, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:07:39', '2022-07-21 12:07:39');
INSERT INTO `admin_operation_log` VALUES (1964, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:07:59', '2022-07-21 12:07:59');
INSERT INTO `admin_operation_log` VALUES (1965, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:08:22', '2022-07-21 12:08:22');
INSERT INTO `admin_operation_log` VALUES (1966, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:08:39', '2022-07-21 12:08:39');
INSERT INTO `admin_operation_log` VALUES (1967, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:09:03', '2022-07-21 12:09:03');
INSERT INTO `admin_operation_log` VALUES (1968, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:09:39', '2022-07-21 12:09:39');
INSERT INTO `admin_operation_log` VALUES (1969, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:10:01', '2022-07-21 12:10:01');
INSERT INTO `admin_operation_log` VALUES (1970, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:10:10', '2022-07-21 12:10:10');
INSERT INTO `admin_operation_log` VALUES (1971, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:10:36', '2022-07-21 12:10:36');
INSERT INTO `admin_operation_log` VALUES (1972, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:11:18', '2022-07-21 12:11:18');
INSERT INTO `admin_operation_log` VALUES (1973, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:12:53', '2022-07-21 12:12:53');
INSERT INTO `admin_operation_log` VALUES (1974, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:13:06', '2022-07-21 12:13:06');
INSERT INTO `admin_operation_log` VALUES (1975, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:13:13', '2022-07-21 12:13:13');
INSERT INTO `admin_operation_log` VALUES (1976, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:13:39', '2022-07-21 12:13:39');
INSERT INTO `admin_operation_log` VALUES (1977, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:13:46', '2022-07-21 12:13:46');
INSERT INTO `admin_operation_log` VALUES (1978, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:14:04', '2022-07-21 12:14:04');
INSERT INTO `admin_operation_log` VALUES (1979, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:14:15', '2022-07-21 12:14:15');
INSERT INTO `admin_operation_log` VALUES (1980, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:14:34', '2022-07-21 12:14:34');
INSERT INTO `admin_operation_log` VALUES (1981, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:14:55', '2022-07-21 12:14:55');
INSERT INTO `admin_operation_log` VALUES (1982, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:15:01', '2022-07-21 12:15:01');
INSERT INTO `admin_operation_log` VALUES (1983, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:15:06', '2022-07-21 12:15:06');
INSERT INTO `admin_operation_log` VALUES (1984, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:15:16', '2022-07-21 12:15:16');
INSERT INTO `admin_operation_log` VALUES (1985, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:15:20', '2022-07-21 12:15:20');
INSERT INTO `admin_operation_log` VALUES (1986, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:15:55', '2022-07-21 12:15:55');
INSERT INTO `admin_operation_log` VALUES (1987, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:16:00', '2022-07-21 12:16:00');
INSERT INTO `admin_operation_log` VALUES (1988, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:16:05', '2022-07-21 12:16:05');
INSERT INTO `admin_operation_log` VALUES (1989, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:16:09', '2022-07-21 12:16:09');
INSERT INTO `admin_operation_log` VALUES (1990, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:16:32', '2022-07-21 12:16:32');
INSERT INTO `admin_operation_log` VALUES (1991, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:16:41', '2022-07-21 12:16:41');
INSERT INTO `admin_operation_log` VALUES (1992, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:17:45', '2022-07-21 12:17:45');
INSERT INTO `admin_operation_log` VALUES (1993, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:17:48', '2022-07-21 12:17:48');
INSERT INTO `admin_operation_log` VALUES (1994, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:17:59', '2022-07-21 12:17:59');
INSERT INTO `admin_operation_log` VALUES (1995, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:18:40', '2022-07-21 12:18:40');
INSERT INTO `admin_operation_log` VALUES (1996, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:18:46', '2022-07-21 12:18:46');
INSERT INTO `admin_operation_log` VALUES (1997, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:18:52', '2022-07-21 12:18:52');
INSERT INTO `admin_operation_log` VALUES (1998, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:19:02', '2022-07-21 12:19:02');
INSERT INTO `admin_operation_log` VALUES (1999, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:20:08', '2022-07-21 12:20:08');
INSERT INTO `admin_operation_log` VALUES (2000, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:24:25', '2022-07-21 12:24:25');
INSERT INTO `admin_operation_log` VALUES (2001, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:24:33', '2022-07-21 12:24:33');
INSERT INTO `admin_operation_log` VALUES (2002, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:24:41', '2022-07-21 12:24:41');
INSERT INTO `admin_operation_log` VALUES (2003, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:24:48', '2022-07-21 12:24:48');
INSERT INTO `admin_operation_log` VALUES (2004, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:25:01', '2022-07-21 12:25:01');
INSERT INTO `admin_operation_log` VALUES (2005, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:25:09', '2022-07-21 12:25:09');
INSERT INTO `admin_operation_log` VALUES (2006, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:25:14', '2022-07-21 12:25:14');
INSERT INTO `admin_operation_log` VALUES (2007, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:25:22', '2022-07-21 12:25:22');
INSERT INTO `admin_operation_log` VALUES (2008, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:26:34', '2022-07-21 12:26:34');
INSERT INTO `admin_operation_log` VALUES (2009, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:26:39', '2022-07-21 12:26:39');
INSERT INTO `admin_operation_log` VALUES (2010, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:26:44', '2022-07-21 12:26:44');
INSERT INTO `admin_operation_log` VALUES (2011, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:28:42', '2022-07-21 12:28:42');
INSERT INTO `admin_operation_log` VALUES (2012, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:28:46', '2022-07-21 12:28:46');
INSERT INTO `admin_operation_log` VALUES (2013, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:29:06', '2022-07-21 12:29:06');
INSERT INTO `admin_operation_log` VALUES (2014, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:29:26', '2022-07-21 12:29:26');
INSERT INTO `admin_operation_log` VALUES (2015, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:29:34', '2022-07-21 12:29:34');
INSERT INTO `admin_operation_log` VALUES (2016, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:29:54', '2022-07-21 12:29:54');
INSERT INTO `admin_operation_log` VALUES (2017, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:30:03', '2022-07-21 12:30:03');
INSERT INTO `admin_operation_log` VALUES (2018, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:30:59', '2022-07-21 12:30:59');
INSERT INTO `admin_operation_log` VALUES (2019, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:31:08', '2022-07-21 12:31:08');
INSERT INTO `admin_operation_log` VALUES (2020, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:31:24', '2022-07-21 12:31:24');
INSERT INTO `admin_operation_log` VALUES (2021, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:31:47', '2022-07-21 12:31:47');
INSERT INTO `admin_operation_log` VALUES (2022, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:32:27', '2022-07-21 12:32:27');
INSERT INTO `admin_operation_log` VALUES (2023, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:32:52', '2022-07-21 12:32:52');
INSERT INTO `admin_operation_log` VALUES (2024, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:34:22', '2022-07-21 12:34:22');
INSERT INTO `admin_operation_log` VALUES (2025, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:34:33', '2022-07-21 12:34:33');
INSERT INTO `admin_operation_log` VALUES (2026, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:35:00', '2022-07-21 12:35:00');
INSERT INTO `admin_operation_log` VALUES (2027, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:35:11', '2022-07-21 12:35:11');
INSERT INTO `admin_operation_log` VALUES (2028, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:40:44', '2022-07-21 12:40:44');
INSERT INTO `admin_operation_log` VALUES (2029, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:41:05', '2022-07-21 12:41:05');
INSERT INTO `admin_operation_log` VALUES (2030, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:41:20', '2022-07-21 12:41:20');
INSERT INTO `admin_operation_log` VALUES (2031, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:43:14', '2022-07-21 12:43:14');
INSERT INTO `admin_operation_log` VALUES (2032, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:43:19', '2022-07-21 12:43:19');
INSERT INTO `admin_operation_log` VALUES (2033, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:43:20', '2022-07-21 12:43:20');
INSERT INTO `admin_operation_log` VALUES (2034, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:46:39', '2022-07-21 12:46:39');
INSERT INTO `admin_operation_log` VALUES (2035, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:46:54', '2022-07-21 12:46:54');
INSERT INTO `admin_operation_log` VALUES (2036, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:47:41', '2022-07-21 12:47:41');
INSERT INTO `admin_operation_log` VALUES (2037, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:48:39', '2022-07-21 12:48:39');
INSERT INTO `admin_operation_log` VALUES (2038, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:48:44', '2022-07-21 12:48:44');
INSERT INTO `admin_operation_log` VALUES (2039, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:48:45', '2022-07-21 12:48:45');
INSERT INTO `admin_operation_log` VALUES (2040, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:48:46', '2022-07-21 12:48:46');
INSERT INTO `admin_operation_log` VALUES (2041, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:54:40', '2022-07-21 12:54:40');
INSERT INTO `admin_operation_log` VALUES (2042, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:55:14', '2022-07-21 12:55:14');
INSERT INTO `admin_operation_log` VALUES (2043, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:55:22', '2022-07-21 12:55:22');
INSERT INTO `admin_operation_log` VALUES (2044, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:55:36', '2022-07-21 12:55:36');
INSERT INTO `admin_operation_log` VALUES (2045, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:55:45', '2022-07-21 12:55:45');
INSERT INTO `admin_operation_log` VALUES (2046, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:55:55', '2022-07-21 12:55:55');
INSERT INTO `admin_operation_log` VALUES (2047, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:56:02', '2022-07-21 12:56:02');
INSERT INTO `admin_operation_log` VALUES (2048, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:56:41', '2022-07-21 12:56:41');
INSERT INTO `admin_operation_log` VALUES (2049, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 12:57:03', '2022-07-21 12:57:03');
INSERT INTO `admin_operation_log` VALUES (2050, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-21 13:11:46', '2022-07-21 13:11:46');
INSERT INTO `admin_operation_log` VALUES (2051, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-07-22 09:27:02', '2022-07-22 09:27:02');
INSERT INTO `admin_operation_log` VALUES (2052, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 09:27:05', '2022-07-22 09:27:05');
INSERT INTO `admin_operation_log` VALUES (2053, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-22 09:31:41', '2022-07-22 09:31:41');
INSERT INTO `admin_operation_log` VALUES (2054, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-22 09:31:46', '2022-07-22 09:31:46');
INSERT INTO `admin_operation_log` VALUES (2055, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-22 09:32:14', '2022-07-22 09:32:14');
INSERT INTO `admin_operation_log` VALUES (2056, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-22 09:32:22', '2022-07-22 09:32:22');
INSERT INTO `admin_operation_log` VALUES (2057, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-22 09:32:27', '2022-07-22 09:32:27');
INSERT INTO `admin_operation_log` VALUES (2058, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-22 09:37:20', '2022-07-22 09:37:20');
INSERT INTO `admin_operation_log` VALUES (2059, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-22 10:43:01', '2022-07-22 10:43:01');
INSERT INTO `admin_operation_log` VALUES (2060, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-22 10:47:56', '2022-07-22 10:47:56');
INSERT INTO `admin_operation_log` VALUES (2061, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-22 10:49:52', '2022-07-22 10:49:52');
INSERT INTO `admin_operation_log` VALUES (2062, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-22 10:50:06', '2022-07-22 10:50:06');
INSERT INTO `admin_operation_log` VALUES (2063, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-22 10:52:16', '2022-07-22 10:52:16');
INSERT INTO `admin_operation_log` VALUES (2064, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2022-07-22 10:52:52', '2022-07-22 10:52:52');
INSERT INTO `admin_operation_log` VALUES (2065, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"created_at\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2022-07-22 10:53:16', '2022-07-22 10:53:16');
INSERT INTO `admin_operation_log` VALUES (2066, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"created_at\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2022-07-22 10:53:19', '2022-07-22 10:53:19');
INSERT INTO `admin_operation_log` VALUES (2067, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 10:56:27', '2022-07-22 10:56:27');
INSERT INTO `admin_operation_log` VALUES (2068, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"created_at\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2022-07-22 10:56:38', '2022-07-22 10:56:38');
INSERT INTO `admin_operation_log` VALUES (2069, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"created_at\",\"type\":\"asc\"}}', '2022-07-22 10:58:41', '2022-07-22 10:58:41');
INSERT INTO `admin_operation_log` VALUES (2070, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 10:59:13', '2022-07-22 10:59:13');
INSERT INTO `admin_operation_log` VALUES (2071, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2022-07-22 11:00:59', '2022-07-22 11:00:59');
INSERT INTO `admin_operation_log` VALUES (2072, 1, 'admin/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:01:00', '2022-07-22 11:01:00');
INSERT INTO `admin_operation_log` VALUES (2073, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:01:00', '2022-07-22 11:01:00');
INSERT INTO `admin_operation_log` VALUES (2074, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"created_at\",\"type\":\"desc\"}}', '2022-07-22 11:01:06', '2022-07-22 11:01:06');
INSERT INTO `admin_operation_log` VALUES (2075, 1, 'admin/orders/9', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:01:09', '2022-07-22 11:01:09');
INSERT INTO `admin_operation_log` VALUES (2076, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2022-07-22 11:02:57', '2022-07-22 11:02:57');
INSERT INTO `admin_operation_log` VALUES (2077, 1, 'admin/products/11', 'PUT', '127.0.0.1', '{\"name\":\"name\",\"value\":\"Motherboard 5 TI0\",\"pk\":\"11\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2022-07-22 11:03:10', '2022-07-22 11:03:10');
INSERT INTO `admin_operation_log` VALUES (2078, 1, 'admin/orders/9', 'GET', '127.0.0.1', '[]', '2022-07-22 11:03:32', '2022-07-22 11:03:32');
INSERT INTO `admin_operation_log` VALUES (2079, 1, 'admin/orders/10', 'GET', '127.0.0.1', '[]', '2022-07-22 11:03:34', '2022-07-22 11:03:34');
INSERT INTO `admin_operation_log` VALUES (2080, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:07:27', '2022-07-22 11:07:27');
INSERT INTO `admin_operation_log` VALUES (2081, 1, 'admin/categories/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:07:32', '2022-07-22 11:07:32');
INSERT INTO `admin_operation_log` VALUES (2082, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:07:33', '2022-07-22 11:07:33');
INSERT INTO `admin_operation_log` VALUES (2083, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:07:34', '2022-07-22 11:07:34');
INSERT INTO `admin_operation_log` VALUES (2084, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:07:35', '2022-07-22 11:07:35');
INSERT INTO `admin_operation_log` VALUES (2085, 1, 'admin/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:07:36', '2022-07-22 11:07:36');
INSERT INTO `admin_operation_log` VALUES (2086, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:07:36', '2022-07-22 11:07:36');
INSERT INTO `admin_operation_log` VALUES (2087, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:07:36', '2022-07-22 11:07:36');
INSERT INTO `admin_operation_log` VALUES (2088, 1, 'admin/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:07:37', '2022-07-22 11:07:37');
INSERT INTO `admin_operation_log` VALUES (2089, 1, 'admin/banners/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:07:40', '2022-07-22 11:07:40');
INSERT INTO `admin_operation_log` VALUES (2090, 1, 'admin/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:07:41', '2022-07-22 11:07:41');
INSERT INTO `admin_operation_log` VALUES (2091, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:07:45', '2022-07-22 11:07:45');
INSERT INTO `admin_operation_log` VALUES (2092, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:14:04', '2022-07-22 11:14:04');
INSERT INTO `admin_operation_log` VALUES (2093, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:23:44', '2022-07-22 11:23:44');
INSERT INTO `admin_operation_log` VALUES (2094, 1, 'admin/brands', 'GET', '127.0.0.1', '[]', '2022-07-22 11:23:54', '2022-07-22 11:23:54');
INSERT INTO `admin_operation_log` VALUES (2095, 1, 'admin/brands/2', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:23:55', '2022-07-22 11:23:55');
INSERT INTO `admin_operation_log` VALUES (2096, 1, 'admin/brands/2', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:23:56', '2022-07-22 11:23:56');
INSERT INTO `admin_operation_log` VALUES (2097, 1, 'admin/brands/2', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:24:04', '2022-07-22 11:24:04');
INSERT INTO `admin_operation_log` VALUES (2098, 1, 'admin/brands/2', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:24:40', '2022-07-22 11:24:40');
INSERT INTO `admin_operation_log` VALUES (2099, 1, 'admin/brands/2', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:25:09', '2022-07-22 11:25:09');
INSERT INTO `admin_operation_log` VALUES (2100, 1, 'admin/brands/2', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:25:13', '2022-07-22 11:25:13');
INSERT INTO `admin_operation_log` VALUES (2101, 1, 'admin/brands/2', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:25:15', '2022-07-22 11:25:15');
INSERT INTO `admin_operation_log` VALUES (2102, 1, 'admin/brands/2', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:25:42', '2022-07-22 11:25:42');
INSERT INTO `admin_operation_log` VALUES (2103, 1, 'admin/brands/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:25:44', '2022-07-22 11:25:44');
INSERT INTO `admin_operation_log` VALUES (2104, 1, 'admin/brands/create', 'GET', '127.0.0.1', '[]', '2022-07-22 11:26:17', '2022-07-22 11:26:17');
INSERT INTO `admin_operation_log` VALUES (2105, 1, 'admin/brands', 'POST', '127.0.0.1', '{\"status\":\"off\",\"name\":\"123\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_previous_\":\"http:\\/\\/ecommerce.loc\\/admin\\/brands\"}', '2022-07-22 11:26:23', '2022-07-22 11:26:23');
INSERT INTO `admin_operation_log` VALUES (2106, 1, 'admin/brands', 'GET', '127.0.0.1', '[]', '2022-07-22 11:26:23', '2022-07-22 11:26:23');
INSERT INTO `admin_operation_log` VALUES (2107, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:26:33', '2022-07-22 11:26:33');
INSERT INTO `admin_operation_log` VALUES (2108, 1, 'admin/brands/9', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:26:36', '2022-07-22 11:26:36');
INSERT INTO `admin_operation_log` VALUES (2109, 1, 'admin/brands/8', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:26:39', '2022-07-22 11:26:39');
INSERT INTO `admin_operation_log` VALUES (2110, 1, 'admin/brands/3', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:26:42', '2022-07-22 11:26:42');
INSERT INTO `admin_operation_log` VALUES (2111, 1, 'admin/brands/2', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:26:45', '2022-07-22 11:26:45');
INSERT INTO `admin_operation_log` VALUES (2112, 1, 'admin/brands/4', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:26:47', '2022-07-22 11:26:47');
INSERT INTO `admin_operation_log` VALUES (2113, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"status\":[\"0\"],\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:27:16', '2022-07-22 11:27:16');
INSERT INTO `admin_operation_log` VALUES (2114, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"status\":[\"0\",\"1\"],\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:27:19', '2022-07-22 11:27:19');
INSERT INTO `admin_operation_log` VALUES (2115, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:27:21', '2022-07-22 11:27:21');
INSERT INTO `admin_operation_log` VALUES (2116, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:27:27', '2022-07-22 11:27:27');
INSERT INTO `admin_operation_log` VALUES (2117, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-07-22 11:27:47', '2022-07-22 11:27:47');
INSERT INTO `admin_operation_log` VALUES (2118, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-07-22 11:27:50', '2022-07-22 11:27:50');
INSERT INTO `admin_operation_log` VALUES (2119, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-07-22 11:28:04', '2022-07-22 11:28:04');
INSERT INTO `admin_operation_log` VALUES (2120, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-07-22 11:28:06', '2022-07-22 11:28:06');
INSERT INTO `admin_operation_log` VALUES (2121, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-07-22 11:28:13', '2022-07-22 11:28:13');
INSERT INTO `admin_operation_log` VALUES (2122, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-07-22 11:28:25', '2022-07-22 11:28:25');
INSERT INTO `admin_operation_log` VALUES (2123, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:28:32', '2022-07-22 11:28:32');
INSERT INTO `admin_operation_log` VALUES (2124, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:28:32', '2022-07-22 11:28:32');
INSERT INTO `admin_operation_log` VALUES (2125, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:28:34', '2022-07-22 11:28:34');
INSERT INTO `admin_operation_log` VALUES (2126, 1, 'admin/categories/2', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:28:36', '2022-07-22 11:28:36');
INSERT INTO `admin_operation_log` VALUES (2127, 1, 'admin/categories/5', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:28:40', '2022-07-22 11:28:40');
INSERT INTO `admin_operation_log` VALUES (2128, 1, 'admin/categories/5', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:28:40', '2022-07-22 11:28:40');
INSERT INTO `admin_operation_log` VALUES (2129, 1, 'admin/categories/4', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:28:41', '2022-07-22 11:28:41');
INSERT INTO `admin_operation_log` VALUES (2130, 1, 'admin/categories/4', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:28:41', '2022-07-22 11:28:41');
INSERT INTO `admin_operation_log` VALUES (2131, 1, 'admin/categories/3', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:28:41', '2022-07-22 11:28:41');
INSERT INTO `admin_operation_log` VALUES (2132, 1, 'admin/categories/3', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:28:42', '2022-07-22 11:28:42');
INSERT INTO `admin_operation_log` VALUES (2133, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2022-07-22 11:28:48', '2022-07-22 11:28:48');
INSERT INTO `admin_operation_log` VALUES (2134, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:29:14', '2022-07-22 11:29:14');
INSERT INTO `admin_operation_log` VALUES (2135, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:29:16', '2022-07-22 11:29:16');
INSERT INTO `admin_operation_log` VALUES (2136, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:29:17', '2022-07-22 11:29:17');
INSERT INTO `admin_operation_log` VALUES (2137, 1, 'admin/categories/2', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:29:18', '2022-07-22 11:29:18');
INSERT INTO `admin_operation_log` VALUES (2138, 1, 'admin/categories/2', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:29:18', '2022-07-22 11:29:18');
INSERT INTO `admin_operation_log` VALUES (2139, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"type\",\"type\":\"desc\"}}', '2022-07-22 11:29:21', '2022-07-22 11:29:21');
INSERT INTO `admin_operation_log` VALUES (2140, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"type\",\"type\":\"asc\"}}', '2022-07-22 11:29:22', '2022-07-22 11:29:22');
INSERT INTO `admin_operation_log` VALUES (2141, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"type\",\"type\":\"asc\"}}', '2022-07-22 11:30:09', '2022-07-22 11:30:09');
INSERT INTO `admin_operation_log` VALUES (2142, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:30:09', '2022-07-22 11:30:09');
INSERT INTO `admin_operation_log` VALUES (2143, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:30:10', '2022-07-22 11:30:10');
INSERT INTO `admin_operation_log` VALUES (2144, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:30:10', '2022-07-22 11:30:10');
INSERT INTO `admin_operation_log` VALUES (2145, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:30:15', '2022-07-22 11:30:15');
INSERT INTO `admin_operation_log` VALUES (2146, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:30:20', '2022-07-22 11:30:20');
INSERT INTO `admin_operation_log` VALUES (2147, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:30:23', '2022-07-22 11:30:23');
INSERT INTO `admin_operation_log` VALUES (2148, 1, 'admin/promotions/5', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:30:23', '2022-07-22 11:30:23');
INSERT INTO `admin_operation_log` VALUES (2149, 1, 'admin/promotions/6', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:30:24', '2022-07-22 11:30:24');
INSERT INTO `admin_operation_log` VALUES (2150, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:31:09', '2022-07-22 11:31:09');
INSERT INTO `admin_operation_log` VALUES (2151, 1, 'admin/promotions/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:31:10', '2022-07-22 11:31:10');
INSERT INTO `admin_operation_log` VALUES (2152, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:31:13', '2022-07-22 11:31:13');
INSERT INTO `admin_operation_log` VALUES (2153, 1, 'admin/promotions/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:31:14', '2022-07-22 11:31:14');
INSERT INTO `admin_operation_log` VALUES (2154, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:31:17', '2022-07-22 11:31:17');
INSERT INTO `admin_operation_log` VALUES (2155, 1, 'admin/promotions', 'GET', '127.0.0.1', '[]', '2022-07-22 11:31:17', '2022-07-22 11:31:17');
INSERT INTO `admin_operation_log` VALUES (2156, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:31:20', '2022-07-22 11:31:20');
INSERT INTO `admin_operation_log` VALUES (2157, 1, 'admin/promotions/5', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:31:25', '2022-07-22 11:31:25');
INSERT INTO `admin_operation_log` VALUES (2158, 1, 'admin/promotions/6', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:31:25', '2022-07-22 11:31:25');
INSERT INTO `admin_operation_log` VALUES (2159, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:31:27', '2022-07-22 11:31:27');
INSERT INTO `admin_operation_log` VALUES (2160, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:31:45', '2022-07-22 11:31:45');
INSERT INTO `admin_operation_log` VALUES (2161, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-07-22 11:32:14', '2022-07-22 11:32:14');
INSERT INTO `admin_operation_log` VALUES (2162, 1, 'admin/services/1', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:32:24', '2022-07-22 11:32:24');
INSERT INTO `admin_operation_log` VALUES (2163, 1, 'admin/services/1', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:32:24', '2022-07-22 11:32:24');
INSERT INTO `admin_operation_log` VALUES (2164, 1, 'admin/services/1', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:32:25', '2022-07-22 11:32:25');
INSERT INTO `admin_operation_log` VALUES (2165, 1, 'admin/services/1', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:32:28', '2022-07-22 11:32:28');
INSERT INTO `admin_operation_log` VALUES (2166, 1, 'admin/services/1', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:32:29', '2022-07-22 11:32:29');
INSERT INTO `admin_operation_log` VALUES (2167, 1, 'admin/services/1', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:32:30', '2022-07-22 11:32:30');
INSERT INTO `admin_operation_log` VALUES (2168, 1, 'admin/services/1', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:32:30', '2022-07-22 11:32:30');
INSERT INTO `admin_operation_log` VALUES (2169, 1, 'admin/services/1', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:32:34', '2022-07-22 11:32:34');
INSERT INTO `admin_operation_log` VALUES (2170, 1, 'admin/services/1', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:32:35', '2022-07-22 11:32:35');
INSERT INTO `admin_operation_log` VALUES (2171, 1, 'admin/services/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:32:37', '2022-07-22 11:32:37');
INSERT INTO `admin_operation_log` VALUES (2172, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:32:41', '2022-07-22 11:32:41');
INSERT INTO `admin_operation_log` VALUES (2173, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-07-22 11:32:41', '2022-07-22 11:32:41');
INSERT INTO `admin_operation_log` VALUES (2174, 1, 'admin/services/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:32:43', '2022-07-22 11:32:43');
INSERT INTO `admin_operation_log` VALUES (2175, 1, 'admin/services/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u0412\\u044b\\u0435\\u0437\\u0434\\u043d\\u043e\\u0439 \\u043a\\u043e\\u043c\\u043f\\u044c\\u044e\\u0442\\u0435\\u0440\\u043d\\u044b\\u0439 \\u0441\\u0435\\u0440\\u0432\\u0438\\u0441\",\"body\":\"<p>\\u041c\\u044b \\u0437\\u0430\\u043d\\u0438\\u043c\\u0430\\u0435\\u043c\\u0441\\u044f \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u043e\\u043c \\u041f\\u041a \\u0438 \\u043d\\u043e\\u0443\\u0442\\u0431\\u0443\\u043a\\u043e\\u0432 \\u0443\\u0436\\u0435 \\u0431\\u043e\\u043b\\u0435\\u0435 7-\\u0438 \\u043b\\u0435\\u0442 \\u0438 \\u043f\\u043e \\u043f\\u0440\\u0430\\u0432\\u0443 \\u043c\\u043e\\u0436\\u0435\\u043c \\u0441\\u0447\\u0438\\u0442\\u0430\\u0442\\u044c\\u0441\\u044f \\u043e\\u0434\\u043d\\u043e\\u0439 \\u0438\\u0437 \\u043a\\u0440\\u0443\\u043f\\u043d\\u0435\\u0439\\u0448\\u0438\\u0445 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0439 \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0435 IT-\\u0443\\u0441\\u043b\\u0443\\u0433.<\\/p>\\r\\n\\r\\n<p>\\u041d\\u0430\\u0448\\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0431\\u044b\\u0441\\u0442\\u0440\\u043e \\u0438 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e \\u043e\\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u044f\\u0442 \\u043d\\u0430\\u0441\\u0442\\u0440\\u043e\\u0439\\u043a\\u0443 \\u043f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043a\\u043e\\u043c\\u043f\\u044c\\u044e\\u0442\\u0435\\u0440\\u043e\\u0432, \\u043d\\u043e\\u0443\\u0442\\u0431\\u0443\\u043a\\u043e\\u0432 \\u0438 \\u043b\\u044e\\u0431\\u043e\\u0439 \\u043e\\u0444\\u0438\\u0441\\u043d\\u043e\\u0439 \\u0442\\u0435\\u0445\\u043d\\u0438\\u043a\\u0438, \\u043f\\u0440\\u0438 \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0443\\u0442 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442, \\u0443\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u044f\\u0442 \\u0437\\u0430\\u0449\\u0438\\u0442\\u0443 \\u043e\\u0442 \\u0432\\u0438\\u0440\\u0443\\u0441\\u043e\\u0432 \\u0438 \\u0434\\u0440\\u0443\\u0433\\u043e\\u0433\\u043e \\u0432\\u0440\\u0435\\u0434\\u043e\\u043d\\u043e\\u0441\\u043d\\u043e\\u0433\\u043e \\u041f\\u041e.<\\/p>\\r\\n\\r\\n<h2>\\u041c\\u044b \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c \\u0412\\u0430\\u043c:<\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\r\\n\\t<p>\\u041f\\u0430\\u043a\\u0435\\u0442&nbsp;<strong>&quot;\\u0421\\u0418\\u0422\\u0418 \\u0421\\u0442\\u0430\\u0440\\u0442&quot;<\\/strong>&nbsp;\\u0434\\u043b\\u044f \\u043a\\u043e\\u043c\\u043f\\u044c\\u044e\\u0442\\u0435\\u0440\\u043e\\u0432 \\u0438 \\u043d\\u043e\\u0443\\u0442\\u0431\\u0443\\u043a\\u043e\\u0432&nbsp;\\u043f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u041f\\u0430\\u043a\\u0435\\u0442&nbsp;<strong>&quot;\\u0421\\u0418\\u0422\\u0418 \\u041e\\u043f\\u0442\\u0438\\u043c\\u0430&quot;<\\/strong>&nbsp;\\u0434\\u043b\\u044f \\u043a\\u043e\\u043c\\u043f\\u044c\\u044e\\u0442\\u0435\\u0440\\u043e\\u0432 \\u0438 \\u043d\\u043e\\u0443\\u0442\\u0431\\u0443\\u043a\\u043e\\u0432&nbsp;\\u043f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p>\\u041f\\u0430\\u043a\\u0435\\u0442&nbsp;<strong>&quot;\\u0421\\u0418\\u0422\\u0418 \\u041c\\u0430\\u043a\\u0441&quot;<\\/strong>&nbsp;\\u0434\\u043b\\u044f \\u043a\\u043e\\u043c\\u043f\\u044c\\u044e\\u0442\\u0435\\u0440\\u043e\\u0432 \\u0438 \\u043d\\u043e\\u0443\\u0442\\u0431\\u0443\\u043a\\u043e\\u0432&nbsp;\\u043f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\",\"deadline\":\"123\",\"price\":\"100000\",\"is_discount\":\"1\",\"discount_from\":\"2022-06-30 07:04:32\",\"discount_to\":\"2022-07-01 07:04:32\",\"discount_price\":\"85000.00\",\"status\":\"off\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/ecommerce.loc\\/admin\\/services\"}', '2022-07-22 11:32:46', '2022-07-22 11:32:46');
INSERT INTO `admin_operation_log` VALUES (2176, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2022-07-22 11:32:46', '2022-07-22 11:32:46');
INSERT INTO `admin_operation_log` VALUES (2177, 1, 'admin/services/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:33:13', '2022-07-22 11:33:13');
INSERT INTO `admin_operation_log` VALUES (2178, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:33:33', '2022-07-22 11:33:33');
INSERT INTO `admin_operation_log` VALUES (2179, 1, 'admin/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:33:35', '2022-07-22 11:33:35');
INSERT INTO `admin_operation_log` VALUES (2180, 1, 'admin/banners', 'GET', '127.0.0.1', '[]', '2022-07-22 11:34:00', '2022-07-22 11:34:00');
INSERT INTO `admin_operation_log` VALUES (2181, 1, 'admin/banners/1', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:34:02', '2022-07-22 11:34:02');
INSERT INTO `admin_operation_log` VALUES (2182, 1, 'admin/banners/2', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:34:03', '2022-07-22 11:34:03');
INSERT INTO `admin_operation_log` VALUES (2183, 1, 'admin/banners/3', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:34:05', '2022-07-22 11:34:05');
INSERT INTO `admin_operation_log` VALUES (2184, 1, 'admin/banners/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:34:07', '2022-07-22 11:34:07');
INSERT INTO `admin_operation_log` VALUES (2185, 1, 'admin/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:34:19', '2022-07-22 11:34:19');
INSERT INTO `admin_operation_log` VALUES (2186, 1, 'admin/banners', 'GET', '127.0.0.1', '[]', '2022-07-22 11:34:19', '2022-07-22 11:34:19');
INSERT INTO `admin_operation_log` VALUES (2187, 1, 'admin/banners', 'GET', '127.0.0.1', '[]', '2022-07-22 11:34:49', '2022-07-22 11:34:49');
INSERT INTO `admin_operation_log` VALUES (2188, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 11:34:50', '2022-07-22 11:34:50');
INSERT INTO `admin_operation_log` VALUES (2189, 1, 'admin/posts/1', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:34:52', '2022-07-22 11:34:52');
INSERT INTO `admin_operation_log` VALUES (2190, 1, 'admin/posts/2', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:34:53', '2022-07-22 11:34:53');
INSERT INTO `admin_operation_log` VALUES (2191, 1, 'admin/posts/3', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:34:54', '2022-07-22 11:34:54');
INSERT INTO `admin_operation_log` VALUES (2192, 1, 'admin/posts/5', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:35:00', '2022-07-22 11:35:00');
INSERT INTO `admin_operation_log` VALUES (2193, 1, 'admin/posts/4', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:35:00', '2022-07-22 11:35:00');
INSERT INTO `admin_operation_log` VALUES (2194, 1, 'admin/posts/4', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:35:01', '2022-07-22 11:35:01');
INSERT INTO `admin_operation_log` VALUES (2195, 1, 'admin/posts/5', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 11:35:01', '2022-07-22 11:35:01');
INSERT INTO `admin_operation_log` VALUES (2196, 1, 'admin/brands', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 12:11:14', '2022-07-22 12:11:14');
INSERT INTO `admin_operation_log` VALUES (2197, 1, 'admin/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 12:11:16', '2022-07-22 12:11:16');
INSERT INTO `admin_operation_log` VALUES (2198, 1, 'admin/banners/1', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 12:11:17', '2022-07-22 12:11:17');
INSERT INTO `admin_operation_log` VALUES (2199, 1, 'admin/banners/2', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 12:11:17', '2022-07-22 12:11:17');
INSERT INTO `admin_operation_log` VALUES (2200, 1, 'admin/banners/2', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 12:11:21', '2022-07-22 12:11:21');
INSERT INTO `admin_operation_log` VALUES (2201, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 12:12:53', '2022-07-22 12:12:53');
INSERT INTO `admin_operation_log` VALUES (2202, 1, 'admin/promotions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 12:12:56', '2022-07-22 12:12:56');
INSERT INTO `admin_operation_log` VALUES (2203, 1, 'admin/promotions/3', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 12:12:56', '2022-07-22 12:12:56');
INSERT INTO `admin_operation_log` VALUES (2204, 1, 'admin/promotions/5', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 12:12:57', '2022-07-22 12:12:57');
INSERT INTO `admin_operation_log` VALUES (2205, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 12:13:39', '2022-07-22 12:13:39');
INSERT INTO `admin_operation_log` VALUES (2206, 1, 'admin/services/1', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 12:13:42', '2022-07-22 12:13:42');
INSERT INTO `admin_operation_log` VALUES (2207, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 12:14:07', '2022-07-22 12:14:07');
INSERT INTO `admin_operation_log` VALUES (2208, 1, 'admin/posts/3', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 12:14:09', '2022-07-22 12:14:09');
INSERT INTO `admin_operation_log` VALUES (2209, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 12:15:31', '2022-07-22 12:15:31');
INSERT INTO `admin_operation_log` VALUES (2210, 1, 'admin/categories/4', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 12:15:32', '2022-07-22 12:15:32');
INSERT INTO `admin_operation_log` VALUES (2211, 1, 'admin/categories/5', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 12:15:33', '2022-07-22 12:15:33');
INSERT INTO `admin_operation_log` VALUES (2212, 1, 'admin/categories/5', 'PUT', '127.0.0.1', '{\"status\":\"1\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 12:15:33', '2022-07-22 12:15:33');
INSERT INTO `admin_operation_log` VALUES (2213, 1, 'admin/categories/5', 'PUT', '127.0.0.1', '{\"status\":\"0\",\"_token\":\"YhH3RvO4UG3iCMb7935U2CXJOFjsfO3ceH1xjJLp\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}', '2022-07-22 12:15:40', '2022-07-22 12:15:40');
INSERT INTO `admin_operation_log` VALUES (2214, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 12:45:58', '2022-07-22 12:45:58');
INSERT INTO `admin_operation_log` VALUES (2215, 1, 'admin/banners', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 12:46:02', '2022-07-22 12:46:02');
INSERT INTO `admin_operation_log` VALUES (2216, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 12:46:02', '2022-07-22 12:46:02');
INSERT INTO `admin_operation_log` VALUES (2217, 1, 'admin/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 12:46:03', '2022-07-22 12:46:03');
INSERT INTO `admin_operation_log` VALUES (2218, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 12:46:04', '2022-07-22 12:46:04');
INSERT INTO `admin_operation_log` VALUES (2219, 1, 'admin/settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 12:46:04', '2022-07-22 12:46:04');
INSERT INTO `admin_operation_log` VALUES (2220, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 12:46:05', '2022-07-22 12:46:05');
INSERT INTO `admin_operation_log` VALUES (2221, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 12:46:05', '2022-07-22 12:46:05');
INSERT INTO `admin_operation_log` VALUES (2222, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 12:46:06', '2022-07-22 12:46:06');
INSERT INTO `admin_operation_log` VALUES (2223, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 12:46:06', '2022-07-22 12:46:06');
INSERT INTO `admin_operation_log` VALUES (2224, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-07-22 12:46:07', '2022-07-22 12:46:07');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_permissions_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, 'All permission', '*', '', '*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (1, 2, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_roles_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2022-05-24 10:42:29', '2022-05-24 10:42:29');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions`  (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$COGoQo/zZLl7EqoHEbGw0eUen22pjjwMwECogTLsn7XIms4FKUbpC', 'Administrator', NULL, 'tafvpMbCAmhavJkvN6mWZ99ARVuXYLXaVSYwL7ymX52zb7s08FTUjDzLB6K5', '2022-05-24 10:42:29', '2022-05-24 10:42:29');

-- ----------------------------
-- Table structure for attachments
-- ----------------------------
DROP TABLE IF EXISTS `attachments`;
CREATE TABLE `attachments`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `file` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `attachments_product_id_foreign`(`product_id`) USING BTREE,
  CONSTRAINT `attachments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of attachments
-- ----------------------------
INSERT INTO `attachments` VALUES (3, 3, 'images/1e27112f35591cd58fe4c09dccdcfda0.png', '2022-06-07 09:04:35', '2022-06-07 09:04:35');
INSERT INTO `attachments` VALUES (4, 3, 'images/90a6ac7318a22ddfab6db1b733f3920b.jpg', '2022-06-07 09:04:35', '2022-06-07 09:04:35');
INSERT INTO `attachments` VALUES (5, 4, 'images/MSIRTX20606GBVentusGPOC-500x500.webp', '2022-06-09 06:12:07', '2022-06-09 06:12:07');
INSERT INTO `attachments` VALUES (19, 11, 'images/97b20f89ba96382edee2e5abd1e7b980.jpg', '2022-06-30 08:11:57', '2022-06-30 08:11:57');
INSERT INTO `attachments` VALUES (20, 112, 'images/69298b8924a555a83d6d8cde044cf7c4.jpg', '2022-07-04 10:55:51', '2022-07-04 10:55:51');
INSERT INTO `attachments` VALUES (21, 112, 'images/26c24dfd2df06368fef9362ef491637c.jpg', '2022-07-04 10:55:51', '2022-07-04 10:55:51');

-- ----------------------------
-- Table structure for banners
-- ----------------------------
DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `status` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of banners
-- ----------------------------
INSERT INTO `banners` VALUES (1, 'images/fe280845a60a04b2fee6fafd44c53f15.jpg', '/categories', '2022-07-04 09:48:56', '2022-07-22 12:11:17', 0);
INSERT INTO `banners` VALUES (2, 'images/a0cad42213b0209e723aa4e974a2b5a3.jpg', '/products', '2022-07-04 09:59:31', '2022-07-22 12:11:21', 1);
INSERT INTO `banners` VALUES (3, 'images/5a1ca5407d44f64f9960a04a26f154f0.jpg', '/categories', '2022-07-06 11:07:35', '2022-07-22 11:34:05', 1);

-- ----------------------------
-- Table structure for brands
-- ----------------------------
DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `status` int(10) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of brands
-- ----------------------------
INSERT INTO `brands` VALUES (2, 'Intel', 'images/intel-logo-56a6fa195f9b58b7d0e5ce3a.png', '2022-06-07 08:59:42', '2022-07-22 11:26:45', 0);
INSERT INTO `brands` VALUES (3, 'Lenovo', 'images/Best-Computer-Brands-in-the-World-1.jpg', '2022-06-30 07:58:52', '2022-07-22 11:26:42', 0);
INSERT INTO `brands` VALUES (4, 'Dell', 'images/Dell-Company-Logo.jpg', '2022-06-30 07:59:03', '2022-07-22 11:26:47', 0);
INSERT INTO `brands` VALUES (5, 'Samsung', 'images/Samsung_logo_PNG12-e1616084447141.png', '2022-06-30 07:59:10', '2022-06-30 07:59:10', 1);
INSERT INTO `brands` VALUES (6, 'nvidia', 'images/List-of-Famous-Computer-Software-Company-Logos.jpg', '2022-06-30 07:59:24', '2022-06-30 07:59:24', 1);
INSERT INTO `brands` VALUES (7, 'MSI', 'images/msi-logo.jpg', '2022-06-30 07:59:31', '2022-06-30 07:59:31', 1);
INSERT INTO `brands` VALUES (8, 'Acer', 'images/logo-4-acer.png', '2022-06-30 07:59:37', '2022-07-22 11:26:39', 0);
INSERT INTO `brands` VALUES (9, '123', 'images/70ab64875218af2a3e4c1ed100e2eaa9.jpg', '2022-07-22 11:26:23', '2022-07-22 11:26:36', 1);

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `parent_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `categories_parent_id_foreign`(`parent_id`) USING BTREE,
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 297 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'Мониторы', 'images/7e7b8adb05022e254c38aa6f5c498b32.jpeg', NULL, '2022-06-07 08:49:16', '2022-07-22 11:29:17', 1, '', 1);
INSERT INTO `categories` VALUES (2, 'Видеокарты', 'images/graphic-card.jpg', NULL, '2022-06-07 08:58:51', '2022-07-22 11:29:18', 1, '', 1);
INSERT INTO `categories` VALUES (3, 'Компьютерные комплектующие', 'images/93b34e221c5e3e63628f4617d449ceec.jpg', NULL, '2022-06-07 10:08:35', '2022-07-22 11:28:42', 1, '', 1);
INSERT INTO `categories` VALUES (4, 'cat1', 'default.png', 2, '2022-06-08 03:46:37', '2022-07-22 12:15:32', 2, '', 0);
INSERT INTO `categories` VALUES (5, 'cat2', 'images/MSIRTX20606GBVentusGPOC2-500x500.webp', 2, '2022-06-08 03:49:23', '2022-07-22 12:15:40', 2, '', 0);
INSERT INTO `categories` VALUES (6, 'Protsessor', 'images/c28ecaa9a24d601a289346ab9d1c5436.jpg', NULL, '2022-06-28 10:29:00', '2022-06-28 10:29:00', 1, 'protsessor', 1);
INSERT INTO `categories` VALUES (7, 'Naomie Heaney', '0', NULL, '2022-06-30 10:15:16', '2022-06-30 10:30:42', 1, 'naomie-heaney', 1);
INSERT INTO `categories` VALUES (8, 'Mr. Arne Renner MD', '0', NULL, '2022-06-30 10:15:16', '2022-06-30 10:30:42', 1, 'mr-arne-renner-md', 1);
INSERT INTO `categories` VALUES (9, 'Molly Spencer', '0', NULL, '2022-06-30 10:15:16', '2022-06-30 10:30:42', 1, 'molly-spencer', 1);
INSERT INTO `categories` VALUES (10, 'Cleveland Schulist', '0', NULL, '2022-06-30 10:15:16', '2022-06-30 10:30:42', 1, 'cleveland-schulist', 1);
INSERT INTO `categories` VALUES (11, 'Marlen Ritchie', '0', NULL, '2022-06-30 10:15:16', '2022-06-30 10:30:42', 1, 'marlen-ritchie', 1);
INSERT INTO `categories` VALUES (12, 'Libby Harvey', '0', NULL, '2022-06-30 10:16:23', '2022-06-30 10:30:42', 1, 'libby-harvey', 1);
INSERT INTO `categories` VALUES (13, 'Jovany Lubowitz', '0', NULL, '2022-06-30 10:16:23', '2022-06-30 10:30:42', 1, 'jovany-lubowitz', 1);
INSERT INTO `categories` VALUES (14, 'Crystel Considine MD', '0', NULL, '2022-06-30 10:16:23', '2022-06-30 10:30:42', 1, 'crystel-considine-md', 1);
INSERT INTO `categories` VALUES (15, 'Samanta Runolfsson', '0', NULL, '2022-06-30 10:16:23', '2022-06-30 10:30:42', 1, 'samanta-runolfsson', 1);
INSERT INTO `categories` VALUES (16, 'Freeda Jaskolski', '0', NULL, '2022-06-30 10:16:23', '2022-06-30 10:30:42', 1, 'freeda-jaskolski', 1);
INSERT INTO `categories` VALUES (17, 'Mr. Jaiden Simonis', '0', NULL, '2022-06-30 10:17:10', '2022-06-30 10:30:42', 1, 'mr-jaiden-simonis', 1);
INSERT INTO `categories` VALUES (18, 'Nikita Crist DDS', '0', NULL, '2022-06-30 10:17:10', '2022-06-30 10:30:42', 1, 'nikita-crist-dds', 1);
INSERT INTO `categories` VALUES (19, 'Dr. Lina Stiedemann Jr.', '0', NULL, '2022-06-30 10:17:10', '2022-06-30 10:30:42', 1, 'dr-lina-stiedemann-jr', 1);
INSERT INTO `categories` VALUES (20, 'Odessa Ritchie', '0', NULL, '2022-06-30 10:17:10', '2022-06-30 10:30:42', 1, 'odessa-ritchie', 1);
INSERT INTO `categories` VALUES (21, 'Alejandrin Rempel MD', '0', NULL, '2022-06-30 10:17:10', '2022-06-30 10:30:42', 1, 'alejandrin-rempel-md', 1);
INSERT INTO `categories` VALUES (22, 'Jermain Cruickshank DVM', '0', NULL, '2022-06-30 10:17:26', '2022-06-30 10:30:42', 1, 'jermain-cruickshank-dvm', 1);
INSERT INTO `categories` VALUES (23, 'Evan Gislason', '0', NULL, '2022-06-30 10:17:27', '2022-06-30 10:30:42', 1, 'evan-gislason', 1);
INSERT INTO `categories` VALUES (24, 'Ms. Vena Hagenes', '0', NULL, '2022-06-30 10:17:27', '2022-06-30 10:30:42', 1, 'ms-vena-hagenes', 1);
INSERT INTO `categories` VALUES (25, 'Eleanore Bednar', '0', NULL, '2022-06-30 10:17:27', '2022-06-30 10:30:42', 1, 'eleanore-bednar', 1);
INSERT INTO `categories` VALUES (26, 'Cristal Dach', '0', NULL, '2022-06-30 10:17:27', '2022-06-30 10:30:42', 1, 'cristal-dach', 1);
INSERT INTO `categories` VALUES (27, 'Alana Wilderman', '0', NULL, '2022-06-30 10:18:29', '2022-06-30 10:30:42', 1, 'alana-wilderman', 1);
INSERT INTO `categories` VALUES (28, 'Dr. Janessa Wolf', '0', NULL, '2022-06-30 10:18:29', '2022-06-30 10:30:42', 1, 'dr-janessa-wolf', 1);
INSERT INTO `categories` VALUES (29, 'Mr. Lorenzo O\'Keefe', '0', NULL, '2022-06-30 10:18:29', '2022-06-30 10:30:42', 1, 'mr-lorenzo-okeefe', 1);
INSERT INTO `categories` VALUES (30, 'Paolo Kling', '0', NULL, '2022-06-30 10:18:29', '2022-06-30 10:30:42', 1, 'paolo-kling', 1);
INSERT INTO `categories` VALUES (31, 'Reese Upton', '0', NULL, '2022-06-30 10:18:29', '2022-06-30 10:30:42', 1, 'reese-upton', 1);
INSERT INTO `categories` VALUES (32, 'Ollie Wisozk', 'default.png', 13, '2022-06-30 10:20:14', '2022-06-30 10:30:42', 2, 'ollie-wisozk', 1);
INSERT INTO `categories` VALUES (33, 'Laurel Gislason', 'default.png', 12, '2022-06-30 10:20:14', '2022-06-30 10:30:42', 2, 'laurel-gislason', 1);
INSERT INTO `categories` VALUES (34, 'Retha Larson', 'default.png', 13, '2022-06-30 10:20:15', '2022-06-30 10:30:42', 2, 'retha-larson', 1);
INSERT INTO `categories` VALUES (35, 'Kelvin Christiansen', 'default.png', 19, '2022-06-30 10:20:15', '2022-06-30 10:30:42', 2, 'kelvin-christiansen', 1);
INSERT INTO `categories` VALUES (36, 'Luz Schamberger', 'default.png', 26, '2022-06-30 10:20:15', '2022-06-30 10:30:43', 2, 'luz-schamberger', 1);
INSERT INTO `categories` VALUES (37, 'Katherine Hettinger', 'default.png', 25, '2022-06-30 10:20:26', '2022-06-30 10:30:43', 2, 'katherine-hettinger', 1);
INSERT INTO `categories` VALUES (38, 'Simone Hickle', 'default.png', 26, '2022-06-30 10:20:26', '2022-06-30 10:30:43', 2, 'simone-hickle', 1);
INSERT INTO `categories` VALUES (39, 'Marisa Pacocha', 'default.png', 18, '2022-06-30 10:20:26', '2022-06-30 10:30:43', 2, 'marisa-pacocha', 1);
INSERT INTO `categories` VALUES (40, 'Jedediah Franecki', 'default.png', 26, '2022-06-30 10:20:26', '2022-06-30 10:30:43', 2, 'jedediah-franecki', 1);
INSERT INTO `categories` VALUES (41, 'Renee Herman', 'default.png', 16, '2022-06-30 10:20:26', '2022-06-30 10:30:43', 2, 'renee-herman', 1);
INSERT INTO `categories` VALUES (42, 'Walton Wehner', 'default.png', 31, '2022-06-30 10:20:26', '2022-06-30 10:30:43', 2, 'walton-wehner', 1);
INSERT INTO `categories` VALUES (43, 'Sincere Hintz', 'default.png', 29, '2022-06-30 10:20:26', '2022-06-30 10:30:43', 2, 'sincere-hintz', 1);
INSERT INTO `categories` VALUES (44, 'Estevan Lockman', 'default.png', 16, '2022-06-30 10:20:26', '2022-06-30 10:30:43', 2, 'estevan-lockman', 1);
INSERT INTO `categories` VALUES (45, 'Mr. Amir Bednar', 'default.png', 24, '2022-06-30 10:20:26', '2022-06-30 10:30:43', 2, 'mr-amir-bednar', 1);
INSERT INTO `categories` VALUES (46, 'Mara Dach', 'default.png', 22, '2022-06-30 10:20:26', '2022-06-30 10:30:43', 2, 'mara-dach', 1);
INSERT INTO `categories` VALUES (47, 'Brian Botsford', 'default.png', 18, '2022-06-30 10:20:26', '2022-06-30 10:30:43', 2, 'brian-botsford', 1);
INSERT INTO `categories` VALUES (48, 'Delores Carroll Sr.', 'default.png', 17, '2022-06-30 10:20:26', '2022-06-30 10:30:43', 2, 'delores-carroll-sr', 1);
INSERT INTO `categories` VALUES (49, 'Monserrat Hintz', 'default.png', 18, '2022-06-30 10:20:26', '2022-06-30 10:30:43', 2, 'monserrat-hintz', 1);
INSERT INTO `categories` VALUES (50, 'Virginie Rosenbaum DVM', 'default.png', 26, '2022-06-30 10:20:26', '2022-06-30 10:30:43', 2, 'virginie-rosenbaum-dvm', 1);
INSERT INTO `categories` VALUES (51, 'Prof. Kayleigh Gorczany', 'default.png', 25, '2022-06-30 10:20:26', '2022-06-30 10:30:43', 2, 'prof-kayleigh-gorczany', 1);
INSERT INTO `categories` VALUES (52, 'Ena Prohaska', 'default.png', 29, '2022-06-30 10:20:27', '2022-06-30 10:30:43', 2, 'ena-prohaska', 1);
INSERT INTO `categories` VALUES (53, 'Dr. Gabe Schneider', 'default.png', 14, '2022-06-30 10:20:27', '2022-06-30 10:30:43', 2, 'dr-gabe-schneider', 1);
INSERT INTO `categories` VALUES (54, 'Dr. Mohamed Jakubowski', 'default.png', 25, '2022-06-30 10:20:27', '2022-06-30 10:30:43', 2, 'dr-mohamed-jakubowski', 1);
INSERT INTO `categories` VALUES (55, 'Jammie Stracke I', 'default.png', 16, '2022-06-30 10:20:27', '2022-06-30 10:30:43', 2, 'jammie-stracke-i', 1);
INSERT INTO `categories` VALUES (56, 'Phyllis Morissette', 'default.png', 14, '2022-06-30 10:20:27', '2022-06-30 10:30:43', 2, 'phyllis-morissette', 1);
INSERT INTO `categories` VALUES (57, 'Dr. Anderson Turcotte II', 'default.png', 26, '2022-06-30 10:25:14', '2022-06-30 10:30:43', 2, 'dr-anderson-turcotte-ii', 1);
INSERT INTO `categories` VALUES (58, 'Ezra Rutherford', 'default.png', 23, '2022-06-30 10:25:14', '2022-06-30 10:30:43', 2, 'ezra-rutherford', 1);
INSERT INTO `categories` VALUES (59, 'Mrs. Kenyatta Stark I', 'default.png', 13, '2022-06-30 10:25:14', '2022-06-30 10:30:43', 2, 'mrs-kenyatta-stark-i', 1);
INSERT INTO `categories` VALUES (60, 'Quentin Mayert', 'default.png', 21, '2022-06-30 10:25:14', '2022-06-30 10:30:43', 2, 'quentin-mayert', 1);
INSERT INTO `categories` VALUES (61, 'Lorena Christiansen', 'default.png', 20, '2022-06-30 10:25:14', '2022-06-30 10:30:43', 2, 'lorena-christiansen', 1);
INSERT INTO `categories` VALUES (62, 'Macey Hahn', 'default.png', 17, '2022-06-30 10:25:14', '2022-06-30 10:30:43', 2, 'macey-hahn', 1);
INSERT INTO `categories` VALUES (63, 'Prof. Dessie Jones', 'default.png', 12, '2022-06-30 10:25:14', '2022-06-30 10:30:43', 2, 'prof-dessie-jones', 1);
INSERT INTO `categories` VALUES (64, 'Kara Goldner', 'default.png', 12, '2022-06-30 10:25:14', '2022-06-30 10:30:43', 2, 'kara-goldner', 1);
INSERT INTO `categories` VALUES (65, 'Maddison Heaney', 'default.png', 21, '2022-06-30 10:25:14', '2022-06-30 10:30:43', 2, 'maddison-heaney', 1);
INSERT INTO `categories` VALUES (66, 'Khalil Nolan', 'default.png', 21, '2022-06-30 10:25:14', '2022-06-30 10:30:43', 2, 'khalil-nolan', 1);
INSERT INTO `categories` VALUES (67, 'Malika Kuhic III', 'default.png', 21, '2022-06-30 10:25:14', '2022-06-30 10:30:43', 2, 'malika-kuhic-iii', 1);
INSERT INTO `categories` VALUES (68, 'Ada Boehm', 'default.png', 16, '2022-06-30 10:25:14', '2022-06-30 10:30:43', 2, 'ada-boehm', 1);
INSERT INTO `categories` VALUES (69, 'Ms. Yvonne Barton', 'default.png', 19, '2022-06-30 10:25:14', '2022-06-30 10:30:43', 2, 'ms-yvonne-barton', 1);
INSERT INTO `categories` VALUES (70, 'Orie Orn', 'default.png', 19, '2022-06-30 10:25:14', '2022-06-30 10:30:43', 2, 'orie-orn', 1);
INSERT INTO `categories` VALUES (71, 'Euna Hintz DVM', 'default.png', 26, '2022-06-30 10:25:14', '2022-06-30 10:30:43', 2, 'euna-hintz-dvm', 1);
INSERT INTO `categories` VALUES (72, 'Ally Schaden', 'default.png', 11, '2022-06-30 10:25:14', '2022-06-30 10:30:43', 2, 'ally-schaden', 1);
INSERT INTO `categories` VALUES (73, 'Dr. Fermin Hoppe', 'default.png', 20, '2022-06-30 10:25:14', '2022-06-30 10:30:43', 2, 'dr-fermin-hoppe', 1);
INSERT INTO `categories` VALUES (74, 'Hillard Volkman', 'default.png', 10, '2022-06-30 10:25:14', '2022-06-30 10:30:43', 2, 'hillard-volkman', 1);
INSERT INTO `categories` VALUES (75, 'Mr. Reagan Mosciski', 'default.png', 11, '2022-06-30 10:25:14', '2022-06-30 10:30:43', 2, 'mr-reagan-mosciski', 1);
INSERT INTO `categories` VALUES (76, 'Dr. Eden Beier Sr.', 'default.png', 29, '2022-06-30 10:25:14', '2022-06-30 10:30:43', 2, 'dr-eden-beier-sr', 1);
INSERT INTO `categories` VALUES (77, 'Joannie Schamberger IV', 'default.png', 30, '2022-06-30 10:25:36', '2022-06-30 10:30:43', 2, 'joannie-schamberger-iv', 1);
INSERT INTO `categories` VALUES (78, 'Tianna Reinger', 'default.png', 27, '2022-06-30 10:25:36', '2022-06-30 10:30:43', 2, 'tianna-reinger', 1);
INSERT INTO `categories` VALUES (79, 'Rosie Ankunding', 'default.png', 19, '2022-06-30 10:25:36', '2022-06-30 10:30:43', 2, 'rosie-ankunding', 1);
INSERT INTO `categories` VALUES (80, 'Sydni Denesik', 'default.png', 25, '2022-06-30 10:25:36', '2022-06-30 10:30:43', 2, 'sydni-denesik', 1);
INSERT INTO `categories` VALUES (81, 'Ms. Annabel Monahan II', 'default.png', 30, '2022-06-30 10:25:36', '2022-06-30 10:30:43', 2, 'ms-annabel-monahan-ii', 1);
INSERT INTO `categories` VALUES (82, 'Chelsea Morar III', 'default.png', 30, '2022-06-30 10:25:36', '2022-06-30 10:30:43', 2, 'chelsea-morar-iii', 1);
INSERT INTO `categories` VALUES (83, 'Monty Abernathy', 'default.png', 23, '2022-06-30 10:25:36', '2022-06-30 10:30:43', 2, 'monty-abernathy', 1);
INSERT INTO `categories` VALUES (84, 'Sienna Homenick', 'default.png', 21, '2022-06-30 10:25:36', '2022-06-30 10:30:43', 2, 'sienna-homenick', 1);
INSERT INTO `categories` VALUES (85, 'Prof. Bernhard Muller Sr.', 'default.png', 19, '2022-06-30 10:25:36', '2022-06-30 10:30:43', 2, 'prof-bernhard-muller-sr', 1);
INSERT INTO `categories` VALUES (86, 'Janiya Morissette', 'default.png', 26, '2022-06-30 10:25:36', '2022-06-30 10:30:43', 2, 'janiya-morissette', 1);
INSERT INTO `categories` VALUES (87, 'Josiane Torp', 'default.png', 23, '2022-06-30 10:25:36', '2022-06-30 10:30:43', 2, 'josiane-torp', 1);
INSERT INTO `categories` VALUES (88, 'Jaiden Jones', 'default.png', 17, '2022-06-30 10:25:36', '2022-06-30 10:30:43', 2, 'jaiden-jones', 1);
INSERT INTO `categories` VALUES (89, 'Flavio Bernier', 'default.png', 11, '2022-06-30 10:25:36', '2022-06-30 10:30:43', 2, 'flavio-bernier', 1);
INSERT INTO `categories` VALUES (90, 'Eleonore Dickinson', 'default.png', 31, '2022-06-30 10:25:36', '2022-06-30 10:30:43', 2, 'eleonore-dickinson', 1);
INSERT INTO `categories` VALUES (91, 'Mara Cummerata', 'default.png', 19, '2022-06-30 10:25:36', '2022-06-30 10:30:43', 2, 'mara-cummerata', 1);
INSERT INTO `categories` VALUES (92, 'Caesar Wiza', 'default.png', 18, '2022-06-30 10:25:37', '2022-06-30 10:30:44', 2, 'caesar-wiza', 1);
INSERT INTO `categories` VALUES (93, 'Miss Annabel Stanton I', 'default.png', 26, '2022-06-30 10:25:37', '2022-06-30 10:30:44', 2, 'miss-annabel-stanton-i', 1);
INSERT INTO `categories` VALUES (94, 'Dr. Tod Langworth III', 'default.png', 30, '2022-06-30 10:25:37', '2022-06-30 10:30:44', 2, 'dr-tod-langworth-iii', 1);
INSERT INTO `categories` VALUES (95, 'Dr. Tara Hirthe', 'default.png', 15, '2022-06-30 10:25:37', '2022-06-30 10:30:44', 2, 'dr-tara-hirthe', 1);
INSERT INTO `categories` VALUES (96, 'Maureen Marvin', 'default.png', 11, '2022-06-30 10:25:37', '2022-06-30 10:30:44', 2, 'maureen-marvin', 1);
INSERT INTO `categories` VALUES (97, 'Miss Lilian Satterfield', 'default.png', 20, '2022-06-30 10:25:37', '2022-06-30 10:30:44', 2, 'miss-lilian-satterfield', 1);
INSERT INTO `categories` VALUES (98, 'Mr. Erwin Kunze', 'default.png', 21, '2022-06-30 10:25:37', '2022-06-30 10:30:44', 2, 'mr-erwin-kunze', 1);
INSERT INTO `categories` VALUES (99, 'Fritz Koss', 'default.png', 15, '2022-06-30 10:25:37', '2022-06-30 10:30:44', 2, 'fritz-koss', 1);
INSERT INTO `categories` VALUES (100, 'Prof. Ellen Watsica', 'default.png', 17, '2022-06-30 10:25:37', '2022-06-30 10:30:44', 2, 'prof-ellen-watsica', 1);
INSERT INTO `categories` VALUES (101, 'Sam Orn III', 'default.png', 29, '2022-06-30 10:25:37', '2022-06-30 10:30:44', 2, 'sam-orn-iii', 1);
INSERT INTO `categories` VALUES (102, 'Dewayne Doyle', 'default.png', 16, '2022-06-30 10:25:37', '2022-06-30 10:30:44', 2, 'dewayne-doyle', 1);
INSERT INTO `categories` VALUES (103, 'Cindy O\'Kon', 'default.png', 25, '2022-06-30 10:25:37', '2022-06-30 10:30:44', 2, 'cindy-okon', 1);
INSERT INTO `categories` VALUES (104, 'Alexane Abshire', 'default.png', 26, '2022-06-30 10:25:37', '2022-06-30 10:30:44', 2, 'alexane-abshire', 1);
INSERT INTO `categories` VALUES (105, 'Brendon Lemke', 'default.png', 17, '2022-06-30 10:25:37', '2022-06-30 10:30:44', 2, 'brendon-lemke', 1);
INSERT INTO `categories` VALUES (106, 'Carissa Hodkiewicz DVM', 'default.png', 28, '2022-06-30 10:25:37', '2022-06-30 10:30:44', 2, 'carissa-hodkiewicz-dvm', 1);
INSERT INTO `categories` VALUES (107, 'Sadie Brown', 'default.png', 14, '2022-06-30 10:25:37', '2022-06-30 10:30:44', 2, 'sadie-brown', 1);
INSERT INTO `categories` VALUES (108, 'Elissa Yost', 'default.png', 20, '2022-06-30 10:25:37', '2022-06-30 10:30:44', 2, 'elissa-yost', 1);
INSERT INTO `categories` VALUES (109, 'Lane Metz', 'default.png', 20, '2022-06-30 10:25:37', '2022-06-30 10:30:44', 2, 'lane-metz', 1);
INSERT INTO `categories` VALUES (110, 'Ms. Carolyn Huels', 'default.png', 10, '2022-06-30 10:25:37', '2022-06-30 10:30:44', 2, 'ms-carolyn-huels', 1);
INSERT INTO `categories` VALUES (111, 'Prof. Desmond Jacobs DVM', 'default.png', 13, '2022-06-30 10:25:37', '2022-06-30 10:30:44', 2, 'prof-desmond-jacobs-dvm', 1);
INSERT INTO `categories` VALUES (112, 'Casandra Bosco', 'default.png', 11, '2022-06-30 10:25:37', '2022-06-30 10:30:44', 2, 'casandra-bosco', 1);
INSERT INTO `categories` VALUES (113, 'Mr. Colten O\'Connell DDS', 'default.png', 12, '2022-06-30 10:25:37', '2022-06-30 10:30:44', 2, 'mr-colten-oconnell-dds', 1);
INSERT INTO `categories` VALUES (114, 'Ricky Huels DVM', 'default.png', 24, '2022-06-30 10:25:38', '2022-06-30 10:30:44', 2, 'ricky-huels-dvm', 1);
INSERT INTO `categories` VALUES (115, 'Cielo Lind', 'default.png', 10, '2022-06-30 10:25:38', '2022-06-30 10:30:44', 2, 'cielo-lind', 1);
INSERT INTO `categories` VALUES (116, 'Deondre Mohr V', 'default.png', 19, '2022-06-30 10:25:38', '2022-06-30 10:30:44', 2, 'deondre-mohr-v', 1);
INSERT INTO `categories` VALUES (117, 'Eliane Bins', 'default.png', 26, '2022-06-30 10:25:38', '2022-06-30 10:30:44', 2, 'eliane-bins', 1);
INSERT INTO `categories` VALUES (118, 'Johanna Casper', 'default.png', 26, '2022-06-30 10:25:38', '2022-06-30 10:30:44', 2, 'johanna-casper', 1);
INSERT INTO `categories` VALUES (119, 'Mrs. Earnestine Conn', 'default.png', 23, '2022-06-30 10:25:38', '2022-06-30 10:30:44', 2, 'mrs-earnestine-conn', 1);
INSERT INTO `categories` VALUES (120, 'Jairo Ferry V', 'default.png', 18, '2022-06-30 10:25:38', '2022-06-30 10:30:44', 2, 'jairo-ferry-v', 1);
INSERT INTO `categories` VALUES (121, 'Greyson Wunsch II', 'default.png', 12, '2022-06-30 10:25:38', '2022-06-30 10:30:44', 2, 'greyson-wunsch-ii', 1);
INSERT INTO `categories` VALUES (122, 'Gene Konopelski', 'default.png', 15, '2022-06-30 10:25:38', '2022-06-30 10:30:44', 2, 'gene-konopelski', 1);
INSERT INTO `categories` VALUES (123, 'Mr. Eliezer Schowalter', 'default.png', 25, '2022-06-30 10:25:38', '2022-06-30 10:30:44', 2, 'mr-eliezer-schowalter', 1);
INSERT INTO `categories` VALUES (124, 'Aimee Torp', 'default.png', 11, '2022-06-30 10:25:38', '2022-06-30 10:30:44', 2, 'aimee-torp', 1);
INSERT INTO `categories` VALUES (125, 'Johnpaul Williamson', 'default.png', 28, '2022-06-30 10:25:38', '2022-06-30 10:30:44', 2, 'johnpaul-williamson', 1);
INSERT INTO `categories` VALUES (126, 'Dr. Everardo Monahan PhD', 'default.png', 19, '2022-06-30 10:25:38', '2022-06-30 10:30:44', 2, 'dr-everardo-monahan-phd', 1);
INSERT INTO `categories` VALUES (127, 'Stacy Kiehn', 'default.png', 12, '2022-06-30 10:25:38', '2022-06-30 10:30:44', 2, 'stacy-kiehn', 1);
INSERT INTO `categories` VALUES (128, 'Raquel Rowe', 'default.png', 19, '2022-06-30 10:25:38', '2022-06-30 10:30:44', 2, 'raquel-rowe', 1);
INSERT INTO `categories` VALUES (129, 'Robin Sipes Sr.', 'default.png', 28, '2022-06-30 10:25:38', '2022-06-30 10:30:44', 2, 'robin-sipes-sr', 1);
INSERT INTO `categories` VALUES (130, 'Kasandra Heaney', 'default.png', 18, '2022-06-30 10:25:38', '2022-06-30 10:30:44', 2, 'kasandra-heaney', 1);
INSERT INTO `categories` VALUES (131, 'Prof. Arlo Wolff V', 'default.png', 24, '2022-06-30 10:25:38', '2022-06-30 10:30:44', 2, 'prof-arlo-wolff-v', 1);
INSERT INTO `categories` VALUES (132, 'Ceasar Miller', 'default.png', 21, '2022-06-30 10:25:38', '2022-06-30 10:30:44', 2, 'ceasar-miller', 1);
INSERT INTO `categories` VALUES (133, 'Hilario Sanford II', 'default.png', 27, '2022-06-30 10:25:38', '2022-06-30 10:30:44', 2, 'hilario-sanford-ii', 1);
INSERT INTO `categories` VALUES (134, 'Arvilla Purdy', 'default.png', 24, '2022-06-30 10:25:38', '2022-06-30 10:30:44', 2, 'arvilla-purdy', 1);
INSERT INTO `categories` VALUES (135, 'Kimberly Wisoky MD', 'default.png', 31, '2022-06-30 10:25:38', '2022-06-30 10:30:44', 2, 'kimberly-wisoky-md', 1);
INSERT INTO `categories` VALUES (136, 'Julius Crona', 'default.png', 16, '2022-06-30 10:25:38', '2022-06-30 10:30:44', 2, 'julius-crona', 1);
INSERT INTO `categories` VALUES (137, 'Philip Anderson', 'default.png', 12, '2022-06-30 10:25:38', '2022-06-30 10:30:44', 2, 'philip-anderson', 1);
INSERT INTO `categories` VALUES (138, 'Ilene Hessel MD', 'default.png', 27, '2022-06-30 10:25:38', '2022-06-30 10:30:44', 2, 'ilene-hessel-md', 1);
INSERT INTO `categories` VALUES (139, 'Ms. Felicia Gutkowski', 'default.png', 19, '2022-06-30 10:25:38', '2022-06-30 10:30:44', 2, 'ms-felicia-gutkowski', 1);
INSERT INTO `categories` VALUES (140, 'Jermain Rohan', 'default.png', 13, '2022-06-30 10:25:38', '2022-06-30 10:30:44', 2, 'jermain-rohan', 1);
INSERT INTO `categories` VALUES (141, 'Orval Kirlin', 'default.png', 10, '2022-06-30 10:25:38', '2022-06-30 10:30:44', 2, 'orval-kirlin', 1);
INSERT INTO `categories` VALUES (142, 'Jerad Mosciski', 'default.png', 29, '2022-06-30 10:25:38', '2022-06-30 10:30:44', 2, 'jerad-mosciski', 1);
INSERT INTO `categories` VALUES (143, 'Prof. Marlee Weimann I', 'default.png', 31, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'prof-marlee-weimann-i', 1);
INSERT INTO `categories` VALUES (144, 'Bernadette Howe', 'default.png', 16, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'bernadette-howe', 1);
INSERT INTO `categories` VALUES (145, 'Alexandrea Baumbach', 'default.png', 15, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'alexandrea-baumbach', 1);
INSERT INTO `categories` VALUES (146, 'Mrs. Aliyah Mann', 'default.png', 12, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'mrs-aliyah-mann', 1);
INSERT INTO `categories` VALUES (147, 'Brooke Roob', 'default.png', 14, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'brooke-roob', 1);
INSERT INTO `categories` VALUES (148, 'Breanna O\'Keefe', 'default.png', 20, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'breanna-okeefe', 1);
INSERT INTO `categories` VALUES (149, 'Malinda Lakin', 'default.png', 25, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'malinda-lakin', 1);
INSERT INTO `categories` VALUES (150, 'Luigi Abernathy', 'default.png', 11, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'luigi-abernathy', 1);
INSERT INTO `categories` VALUES (151, 'Vaughn Ernser', 'default.png', 23, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'vaughn-ernser', 1);
INSERT INTO `categories` VALUES (152, 'Prof. Isom Brakus', 'default.png', 27, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'prof-isom-brakus', 1);
INSERT INTO `categories` VALUES (153, 'Dr. Hanna Huel', 'default.png', 14, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'dr-hanna-huel', 1);
INSERT INTO `categories` VALUES (154, 'Vernie Cummings III', 'default.png', 18, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'vernie-cummings-iii', 1);
INSERT INTO `categories` VALUES (155, 'Jack Upton', 'default.png', 10, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'jack-upton', 1);
INSERT INTO `categories` VALUES (156, 'Roel Bednar', 'default.png', 18, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'roel-bednar', 1);
INSERT INTO `categories` VALUES (157, 'Dr. Vidal Treutel', 'default.png', 18, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'dr-vidal-treutel', 1);
INSERT INTO `categories` VALUES (158, 'Gilberto Hansen', 'default.png', 16, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'gilberto-hansen', 1);
INSERT INTO `categories` VALUES (159, 'Dr. Arnoldo Dickens DDS', 'default.png', 31, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'dr-arnoldo-dickens-dds', 1);
INSERT INTO `categories` VALUES (160, 'Mrs. Cara Hilpert', 'default.png', 28, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'mrs-cara-hilpert', 1);
INSERT INTO `categories` VALUES (161, 'Ernest Wilderman', 'default.png', 17, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'ernest-wilderman', 1);
INSERT INTO `categories` VALUES (162, 'Prof. Terence Green', 'default.png', 23, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'prof-terence-green', 1);
INSERT INTO `categories` VALUES (163, 'Jackie Kilback', 'default.png', 22, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'jackie-kilback', 1);
INSERT INTO `categories` VALUES (164, 'Lambert Okuneva', 'default.png', 24, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'lambert-okuneva', 1);
INSERT INTO `categories` VALUES (165, 'Jonatan Kuhn', 'default.png', 28, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'jonatan-kuhn', 1);
INSERT INTO `categories` VALUES (166, 'Melisa Larson', 'default.png', 12, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'melisa-larson', 1);
INSERT INTO `categories` VALUES (167, 'Annette Hammes', 'default.png', 10, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'annette-hammes', 1);
INSERT INTO `categories` VALUES (168, 'Arne Wisozk III', 'default.png', 21, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'arne-wisozk-iii', 1);
INSERT INTO `categories` VALUES (169, 'Michale Douglas', 'default.png', 20, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'michale-douglas', 1);
INSERT INTO `categories` VALUES (170, 'Maya West', 'default.png', 25, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'maya-west', 1);
INSERT INTO `categories` VALUES (171, 'Alvah Grimes Jr.', 'default.png', 28, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'alvah-grimes-jr', 1);
INSERT INTO `categories` VALUES (172, 'Prof. Dock Heaney', 'default.png', 15, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'prof-dock-heaney', 1);
INSERT INTO `categories` VALUES (173, 'Prof. Unique Lockman Jr.', 'default.png', 22, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'prof-unique-lockman-jr', 1);
INSERT INTO `categories` VALUES (174, 'Wilford Schamberger DDS', 'default.png', 15, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'wilford-schamberger-dds', 1);
INSERT INTO `categories` VALUES (175, 'Mrs. Malvina Wehner', 'default.png', 18, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'mrs-malvina-wehner', 1);
INSERT INTO `categories` VALUES (176, 'Adolphus Schoen DVM', 'default.png', 31, '2022-06-30 10:25:39', '2022-06-30 10:30:44', 2, 'adolphus-schoen-dvm', 1);
INSERT INTO `categories` VALUES (177, 'Columbus Tromp', 'default.png', 29, '2022-06-30 10:25:40', '2022-06-30 10:30:44', 2, 'columbus-tromp', 1);
INSERT INTO `categories` VALUES (178, 'Ms. Yasmine Koss DVM', 'default.png', 10, '2022-06-30 10:25:40', '2022-06-30 10:30:44', 2, 'ms-yasmine-koss-dvm', 1);
INSERT INTO `categories` VALUES (179, 'Sharon Howell', 'default.png', 18, '2022-06-30 10:25:40', '2022-06-30 10:30:44', 2, 'sharon-howell', 1);
INSERT INTO `categories` VALUES (180, 'Mrs. Emmanuelle Klein', 'default.png', 21, '2022-06-30 10:25:40', '2022-06-30 10:30:45', 2, 'mrs-emmanuelle-klein', 1);
INSERT INTO `categories` VALUES (181, 'Cloyd Schmidt PhD', 'default.png', 22, '2022-06-30 10:25:40', '2022-06-30 10:30:45', 2, 'cloyd-schmidt-phd', 1);
INSERT INTO `categories` VALUES (182, 'Tressie Becker', 'default.png', 25, '2022-06-30 10:25:40', '2022-06-30 10:30:45', 2, 'tressie-becker', 1);
INSERT INTO `categories` VALUES (183, 'Elbert Reynolds', 'default.png', 29, '2022-06-30 10:25:40', '2022-06-30 10:30:45', 2, 'elbert-reynolds', 1);
INSERT INTO `categories` VALUES (184, 'Garrick Zieme Sr.', 'default.png', 29, '2022-06-30 10:25:40', '2022-06-30 10:30:45', 2, 'garrick-zieme-sr', 1);
INSERT INTO `categories` VALUES (185, 'Marcelo O\'Reilly', 'default.png', 10, '2022-06-30 10:25:40', '2022-06-30 10:30:45', 2, 'marcelo-oreilly', 1);
INSERT INTO `categories` VALUES (186, 'Johnathon Grady', 'default.png', 18, '2022-06-30 10:25:40', '2022-06-30 10:30:45', 2, 'johnathon-grady', 1);
INSERT INTO `categories` VALUES (187, 'Miles Jacobi MD', 'default.png', 28, '2022-06-30 10:25:40', '2022-06-30 10:30:45', 2, 'miles-jacobi-md', 1);
INSERT INTO `categories` VALUES (188, 'Tavares Klein', 'default.png', 26, '2022-06-30 10:25:40', '2022-06-30 10:30:45', 2, 'tavares-klein', 1);
INSERT INTO `categories` VALUES (189, 'Travon Robel DVM', 'default.png', 30, '2022-06-30 10:25:40', '2022-06-30 10:30:45', 2, 'travon-robel-dvm', 1);
INSERT INTO `categories` VALUES (190, 'Idell Huels I', 'default.png', 29, '2022-06-30 10:25:40', '2022-06-30 10:30:45', 2, 'idell-huels-i', 1);
INSERT INTO `categories` VALUES (191, 'Rachelle Schultz', 'default.png', 18, '2022-06-30 10:25:40', '2022-06-30 10:30:45', 2, 'rachelle-schultz', 1);
INSERT INTO `categories` VALUES (192, 'Terence Klocko', 'default.png', 19, '2022-06-30 10:25:40', '2022-06-30 10:30:45', 2, 'terence-klocko', 1);
INSERT INTO `categories` VALUES (193, 'Dr. Ephraim Herman DVM', 'default.png', 12, '2022-06-30 10:25:40', '2022-06-30 10:30:45', 2, 'dr-ephraim-herman-dvm', 1);
INSERT INTO `categories` VALUES (194, 'Esperanza Stiedemann', 'default.png', 24, '2022-06-30 10:25:40', '2022-06-30 10:30:45', 2, 'esperanza-stiedemann', 1);
INSERT INTO `categories` VALUES (195, 'Kathlyn Jast', 'default.png', 29, '2022-06-30 10:25:40', '2022-06-30 10:30:45', 2, 'kathlyn-jast', 1);
INSERT INTO `categories` VALUES (196, 'Mr. Herman Weimann DVM', 'default.png', 24, '2022-06-30 10:25:40', '2022-06-30 10:30:45', 2, 'mr-herman-weimann-dvm', 1);
INSERT INTO `categories` VALUES (197, 'Nayeli Gusikowski', 'default.png', 29, '2022-06-30 10:25:40', '2022-06-30 10:30:45', 2, 'nayeli-gusikowski', 1);
INSERT INTO `categories` VALUES (198, 'Ms. Aurelie Kihn Sr.', 'default.png', 28, '2022-06-30 10:25:40', '2022-06-30 10:30:45', 2, 'ms-aurelie-kihn-sr', 1);
INSERT INTO `categories` VALUES (199, 'Dr. Maxine Kiehn II', 'default.png', 16, '2022-06-30 10:25:40', '2022-06-30 10:30:45', 2, 'dr-maxine-kiehn-ii', 1);
INSERT INTO `categories` VALUES (200, 'Mr. Gardner Rosenbaum', 'default.png', 10, '2022-06-30 10:25:40', '2022-06-30 10:30:45', 2, 'mr-gardner-rosenbaum', 1);
INSERT INTO `categories` VALUES (201, 'Kelli Schroeder', 'default.png', 13, '2022-06-30 10:25:40', '2022-06-30 10:30:45', 2, 'kelli-schroeder', 1);
INSERT INTO `categories` VALUES (202, 'Jamal Streich', 'default.png', 13, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'jamal-streich', 1);
INSERT INTO `categories` VALUES (203, 'Lisa Crist', 'default.png', 30, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'lisa-crist', 1);
INSERT INTO `categories` VALUES (204, 'Dr. Gunner Langosh PhD', 'default.png', 25, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'dr-gunner-langosh-phd', 1);
INSERT INTO `categories` VALUES (205, 'Dr. Kamryn Rippin MD', 'default.png', 20, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'dr-kamryn-rippin-md', 1);
INSERT INTO `categories` VALUES (206, 'Prof. Joannie Shanahan DDS', 'default.png', 11, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'prof-joannie-shanahan-dds', 1);
INSERT INTO `categories` VALUES (207, 'Miss Marcia Koepp', 'default.png', 22, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'miss-marcia-koepp', 1);
INSERT INTO `categories` VALUES (208, 'Dr. Keon Mayert II', 'default.png', 15, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'dr-keon-mayert-ii', 1);
INSERT INTO `categories` VALUES (209, 'Ms. Ashtyn Mraz PhD', 'default.png', 18, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'ms-ashtyn-mraz-phd', 1);
INSERT INTO `categories` VALUES (210, 'Gunner Ebert', 'default.png', 25, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'gunner-ebert', 1);
INSERT INTO `categories` VALUES (211, 'Prof. Ezekiel McCullough I', 'default.png', 21, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'prof-ezekiel-mccullough-i', 1);
INSERT INTO `categories` VALUES (212, 'Carley Stehr V', 'default.png', 23, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'carley-stehr-v', 1);
INSERT INTO `categories` VALUES (213, 'Bianka McLaughlin', 'default.png', 22, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'bianka-mclaughlin', 1);
INSERT INTO `categories` VALUES (214, 'Viola Schroeder', 'default.png', 12, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'viola-schroeder', 1);
INSERT INTO `categories` VALUES (215, 'Ms. Jody Beer III', 'default.png', 17, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'ms-jody-beer-iii', 1);
INSERT INTO `categories` VALUES (216, 'Vern Nicolas', 'default.png', 23, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'vern-nicolas', 1);
INSERT INTO `categories` VALUES (217, 'Marlen Streich III', 'default.png', 24, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'marlen-streich-iii', 1);
INSERT INTO `categories` VALUES (218, 'Keara Schmidt III', 'default.png', 24, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'keara-schmidt-iii', 1);
INSERT INTO `categories` VALUES (219, 'Queenie Will', 'default.png', 12, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'queenie-will', 1);
INSERT INTO `categories` VALUES (220, 'Sylvester Gutkowski IV', 'default.png', 22, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'sylvester-gutkowski-iv', 1);
INSERT INTO `categories` VALUES (221, 'Miss Myra Wolf II', 'default.png', 16, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'miss-myra-wolf-ii', 1);
INSERT INTO `categories` VALUES (222, 'Jermey Hermiston', 'default.png', 28, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'jermey-hermiston', 1);
INSERT INTO `categories` VALUES (223, 'Mrs. Dovie Prohaska MD', 'default.png', 17, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'mrs-dovie-prohaska-md', 1);
INSERT INTO `categories` VALUES (224, 'Maritza Blanda', 'default.png', 18, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'maritza-blanda', 1);
INSERT INTO `categories` VALUES (225, 'Bennett Witting', 'default.png', 22, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'bennett-witting', 1);
INSERT INTO `categories` VALUES (226, 'Jakob Smitham', 'default.png', 31, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'jakob-smitham', 1);
INSERT INTO `categories` VALUES (227, 'Cleta Raynor', 'default.png', 30, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'cleta-raynor', 1);
INSERT INTO `categories` VALUES (228, 'Kitty Welch Jr.', 'default.png', 28, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'kitty-welch-jr', 1);
INSERT INTO `categories` VALUES (229, 'Cayla Dooley PhD', 'default.png', 28, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'cayla-dooley-phd', 1);
INSERT INTO `categories` VALUES (230, 'Hunter Walker', 'default.png', 26, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'hunter-walker', 1);
INSERT INTO `categories` VALUES (231, 'Emmanuelle Heathcote', 'default.png', 25, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'emmanuelle-heathcote', 1);
INSERT INTO `categories` VALUES (232, 'Ms. Treva Williamson', 'default.png', 19, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'ms-treva-williamson', 1);
INSERT INTO `categories` VALUES (233, 'Allie Bogisich', 'default.png', 14, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'allie-bogisich', 1);
INSERT INTO `categories` VALUES (234, 'Eulalia Paucek V', 'default.png', 14, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'eulalia-paucek-v', 1);
INSERT INTO `categories` VALUES (235, 'Julie Hand', 'default.png', 19, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'julie-hand', 1);
INSERT INTO `categories` VALUES (236, 'Daphney Howe', 'default.png', 11, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'daphney-howe', 1);
INSERT INTO `categories` VALUES (237, 'Mr. Presley Willms MD', 'default.png', 23, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'mr-presley-willms-md', 1);
INSERT INTO `categories` VALUES (238, 'Junior Johnson', 'default.png', 21, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'junior-johnson', 1);
INSERT INTO `categories` VALUES (239, 'Dr. Arlene Bednar I', 'default.png', 26, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'dr-arlene-bednar-i', 1);
INSERT INTO `categories` VALUES (240, 'Sandy Schuster', 'default.png', 11, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'sandy-schuster', 1);
INSERT INTO `categories` VALUES (241, 'Sadie Pagac II', 'default.png', 16, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'sadie-pagac-ii', 1);
INSERT INTO `categories` VALUES (242, 'Mrs. Abagail Heathcote', 'default.png', 11, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'mrs-abagail-heathcote', 1);
INSERT INTO `categories` VALUES (243, 'Prof. Keyon Reichel DVM', 'default.png', 18, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'prof-keyon-reichel-dvm', 1);
INSERT INTO `categories` VALUES (244, 'Bud Nitzsche', 'default.png', 25, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'bud-nitzsche', 1);
INSERT INTO `categories` VALUES (245, 'Myrl Sawayn', 'default.png', 27, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'myrl-sawayn', 1);
INSERT INTO `categories` VALUES (246, 'Aubrey Wisoky', 'default.png', 15, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'aubrey-wisoky', 1);
INSERT INTO `categories` VALUES (247, 'Mrs. Letitia Rowe', 'default.png', 21, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'mrs-letitia-rowe', 1);
INSERT INTO `categories` VALUES (248, 'Nadia Walsh', 'default.png', 31, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'nadia-walsh', 1);
INSERT INTO `categories` VALUES (249, 'Marley Bradtke', 'default.png', 24, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'marley-bradtke', 1);
INSERT INTO `categories` VALUES (250, 'Miss Ona Prohaska V', 'default.png', 11, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'miss-ona-prohaska-v', 1);
INSERT INTO `categories` VALUES (251, 'Miss Arlie Boehm', 'default.png', 13, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'miss-arlie-boehm', 1);
INSERT INTO `categories` VALUES (252, 'Timothy Kerluke', 'default.png', 31, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'timothy-kerluke', 1);
INSERT INTO `categories` VALUES (253, 'Chadd Hills', 'default.png', 12, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'chadd-hills', 1);
INSERT INTO `categories` VALUES (254, 'Bria Steuber', 'default.png', 20, '2022-06-30 10:25:41', '2022-06-30 10:30:45', 2, 'bria-steuber', 1);
INSERT INTO `categories` VALUES (255, 'Gaetano Leuschke', 'default.png', 10, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'gaetano-leuschke', 1);
INSERT INTO `categories` VALUES (256, 'Otha Sanford', 'default.png', 13, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'otha-sanford', 1);
INSERT INTO `categories` VALUES (257, 'Miss Georgette Gutmann IV', 'default.png', 21, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'miss-georgette-gutmann-iv', 1);
INSERT INTO `categories` VALUES (258, 'Dr. Bell Kunze', 'default.png', 15, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'dr-bell-kunze', 1);
INSERT INTO `categories` VALUES (259, 'Nathan Weber Jr.', 'default.png', 28, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'nathan-weber-jr', 1);
INSERT INTO `categories` VALUES (260, 'Prof. Virgie Price', 'default.png', 18, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'prof-virgie-price', 1);
INSERT INTO `categories` VALUES (261, 'Kaley McCullough', 'default.png', 30, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'kaley-mccullough', 1);
INSERT INTO `categories` VALUES (262, 'Estefania Hills Sr.', 'default.png', 10, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'estefania-hills-sr', 1);
INSERT INTO `categories` VALUES (263, 'Hollis Kshlerin', 'default.png', 22, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'hollis-kshlerin', 1);
INSERT INTO `categories` VALUES (264, 'Miss Marjolaine Bradtke III', 'default.png', 20, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'miss-marjolaine-bradtke-iii', 1);
INSERT INTO `categories` VALUES (265, 'Arlene Koepp', 'default.png', 29, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'arlene-koepp', 1);
INSERT INTO `categories` VALUES (266, 'Jaclyn Rau', 'default.png', 13, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'jaclyn-rau', 1);
INSERT INTO `categories` VALUES (267, 'Miss Maye Lebsack', 'default.png', 31, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'miss-maye-lebsack', 1);
INSERT INTO `categories` VALUES (268, 'Stuart Becker', 'default.png', 19, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'stuart-becker', 1);
INSERT INTO `categories` VALUES (269, 'Horace Bernhard', 'default.png', 31, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'horace-bernhard', 1);
INSERT INTO `categories` VALUES (270, 'Creola Adams II', 'default.png', 14, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'creola-adams-ii', 1);
INSERT INTO `categories` VALUES (271, 'Mrs. Catalina Steuber DVM', 'default.png', 13, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'mrs-catalina-steuber-dvm', 1);
INSERT INTO `categories` VALUES (272, 'Mr. Ryann Pfannerstill PhD', 'default.png', 20, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'mr-ryann-pfannerstill-phd', 1);
INSERT INTO `categories` VALUES (273, 'Pauline Hessel', 'default.png', 20, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'pauline-hessel', 1);
INSERT INTO `categories` VALUES (274, 'Ilene Luettgen', 'default.png', 11, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'ilene-luettgen', 1);
INSERT INTO `categories` VALUES (275, 'Kendall Pacocha', 'default.png', 30, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'kendall-pacocha', 1);
INSERT INTO `categories` VALUES (276, 'Prof. Eveline Boyle', 'default.png', 24, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'prof-eveline-boyle', 1);
INSERT INTO `categories` VALUES (277, 'Lyric Willms', 'default.png', 24, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'lyric-willms', 1);
INSERT INTO `categories` VALUES (278, 'Dr. Steve Durgan I', 'default.png', 12, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'dr-steve-durgan-i', 1);
INSERT INTO `categories` VALUES (279, 'Xavier Monahan', 'default.png', 25, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'xavier-monahan', 1);
INSERT INTO `categories` VALUES (280, 'Lavon Osinski', 'default.png', 11, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'lavon-osinski', 1);
INSERT INTO `categories` VALUES (281, 'Prof. Idell Abernathy Jr.', 'default.png', 28, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'prof-idell-abernathy-jr', 1);
INSERT INTO `categories` VALUES (282, 'Miss Mya Upton Sr.', 'default.png', 27, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'miss-mya-upton-sr', 1);
INSERT INTO `categories` VALUES (283, 'Mr. Kim Towne', 'default.png', 18, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'mr-kim-towne', 1);
INSERT INTO `categories` VALUES (284, 'Leonardo Legros', 'default.png', 17, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'leonardo-legros', 1);
INSERT INTO `categories` VALUES (285, 'Antonietta Huel MD', 'default.png', 16, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'antonietta-huel-md', 1);
INSERT INTO `categories` VALUES (286, 'Cayla Fadel PhD', 'default.png', 27, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'cayla-fadel-phd', 1);
INSERT INTO `categories` VALUES (287, 'Trevion Raynor', 'default.png', 23, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'trevion-raynor', 1);
INSERT INTO `categories` VALUES (288, 'Jarrod Runolfsson', 'default.png', 29, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'jarrod-runolfsson', 1);
INSERT INTO `categories` VALUES (289, 'Linda Herzog', 'default.png', 24, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'linda-herzog', 1);
INSERT INTO `categories` VALUES (290, 'Mathilde Brekke III', 'default.png', 17, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'mathilde-brekke-iii', 1);
INSERT INTO `categories` VALUES (291, 'Birdie Ruecker II', 'default.png', 18, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'birdie-ruecker-ii', 1);
INSERT INTO `categories` VALUES (292, 'Mr. Barton Mante II', 'default.png', 11, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'mr-barton-mante-ii', 1);
INSERT INTO `categories` VALUES (293, 'Weston Leannon', 'default.png', 28, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'weston-leannon', 1);
INSERT INTO `categories` VALUES (294, 'Jasmin Schiller', 'default.png', 26, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'jasmin-schiller', 1);
INSERT INTO `categories` VALUES (295, 'Waino Marvin', 'default.png', 21, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'waino-marvin', 1);
INSERT INTO `categories` VALUES (296, 'Gwendolyn Little Sr.', 'default.png', 23, '2022-06-30 10:25:42', '2022-06-30 10:30:45', 2, 'gwendolyn-little-sr', 1);

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_04_173148_create_admin_tables', 1);
INSERT INTO `migrations` VALUES (4, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (5, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (6, '2022_05_24_124550_create_brands_table', 2);
INSERT INTO `migrations` VALUES (7, '2022_05_24_124625_create_categories_table', 2);
INSERT INTO `migrations` VALUES (8, '2022_05_24_124636_create_products_table', 2);
INSERT INTO `migrations` VALUES (9, '2022_05_24_124650_create_attachments_table', 2);
INSERT INTO `migrations` VALUES (10, '2022_05_26_101258_create_options_table', 3);
INSERT INTO `migrations` VALUES (11, '2022_05_26_101739_create_attributes_table', 4);
INSERT INTO `migrations` VALUES (12, '2022_05_26_103254_create_option_images_table', 5);
INSERT INTO `migrations` VALUES (13, '2022_06_07_085757_create_brands_table', 6);
INSERT INTO `migrations` VALUES (14, '2022_06_07_085831_create_categories_table', 6);
INSERT INTO `migrations` VALUES (15, '2022_06_07_085903_create_products_table', 6);
INSERT INTO `migrations` VALUES (16, '2022_06_07_090032_create_options_table', 6);
INSERT INTO `migrations` VALUES (17, '2022_06_07_090246_create_product_option_table', 6);
INSERT INTO `migrations` VALUES (18, '2022_06_07_105048_create_attachments_table', 7);
INSERT INTO `migrations` VALUES (19, '2022_06_17_102201_create_views_table', 8);
INSERT INTO `migrations` VALUES (20, '2022_06_17_105737_create_ratings_table', 9);
INSERT INTO `migrations` VALUES (21, '2022_06_29_101715_create_promotions_table', 10);
INSERT INTO `migrations` VALUES (22, '2022_06_29_102213_create_promotion_products_table', 10);
INSERT INTO `migrations` VALUES (23, '2022_06_30_062152_create_services_table', 11);
INSERT INTO `migrations` VALUES (24, '2022_06_30_090635_promotion_service', 12);
INSERT INTO `migrations` VALUES (25, '2022_07_04_112750_create_banners_table', 13);
INSERT INTO `migrations` VALUES (26, '2022_07_04_124432_create_posts_table', 14);
INSERT INTO `migrations` VALUES (27, '2022_07_07_043120_create_orders_table', 15);
INSERT INTO `migrations` VALUES (28, '2022_07_07_043705_order_products_table', 15);
INSERT INTO `migrations` VALUES (29, '2022_07_21_103710_create_settings_table', 16);

-- ----------------------------
-- Table structure for options
-- ----------------------------
DROP TABLE IF EXISTS `options`;
CREATE TABLE `options`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of options
-- ----------------------------
INSERT INTO `options` VALUES (1, 'Option1', NULL, NULL);
INSERT INTO `options` VALUES (2, 'Option2', NULL, NULL);
INSERT INTO `options` VALUES (3, 'Видеоразъемы ', NULL, NULL);
INSERT INTO `options` VALUES (4, 'Частота графического процессора', NULL, NULL);
INSERT INTO `options` VALUES (5, 'Объем видеопамяти', NULL, NULL);
INSERT INTO `options` VALUES (6, 'Тип видеопамяти', NULL, NULL);
INSERT INTO `options` VALUES (7, 'Частота видеопамяти', NULL, NULL);
INSERT INTO `options` VALUES (8, 'Разрядность шины видеопамяти', NULL, NULL);

-- ----------------------------
-- Table structure for order_products
-- ----------------------------
DROP TABLE IF EXISTS `order_products`;
CREATE TABLE `order_products`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` double(20, 2) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_products_order_id_foreign`(`order_id`) USING BTREE,
  INDEX `order_products_product_id_foreign`(`product_id`) USING BTREE,
  CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_products
-- ----------------------------
INSERT INTO `order_products` VALUES (2, 1, 3, 'default.png', 213, 1, 1.00, NULL, NULL);
INSERT INTO `order_products` VALUES (3, 1, 4, 'default.png', 123, 4, 123.00, NULL, NULL);
INSERT INTO `order_products` VALUES (4, 3, 68, 'default.png', 765, 1, 765.00, NULL, NULL);
INSERT INTO `order_products` VALUES (5, 4, 98, 'default.png', 282, 1, 282.00, NULL, NULL);
INSERT INTO `order_products` VALUES (6, 4, 53, 'default.png', 484, 2, 968.00, NULL, NULL);
INSERT INTO `order_products` VALUES (7, 4, 19, 'default.png', 383, 1, 767.00, NULL, NULL);
INSERT INTO `order_products` VALUES (8, 5, 97, 'default.png', 443, 1, 443.00, NULL, NULL);
INSERT INTO `order_products` VALUES (9, 6, 13, 'default.png', 247, 2, 990.00, NULL, NULL);
INSERT INTO `order_products` VALUES (10, 7, 19, 'default.png', 383, 1, 767.00, NULL, NULL);
INSERT INTO `order_products` VALUES (11, 9, 4, 'images/MSIRTX20606GBVentusGPOC-500x500.webp', 485000, 2, 1940000.00, NULL, NULL);
INSERT INTO `order_products` VALUES (12, 9, 11, 'images/97b20f89ba96382edee2e5abd1e7b980.jpg', 56, 1, 112.00, NULL, NULL);
INSERT INTO `order_products` VALUES (13, 10, 4, 'images/MSIRTX20606GBVentusGPOC-500x500.webp', 485000, 2, 970000.00, NULL, NULL);
INSERT INTO `order_products` VALUES (14, 10, 11, 'images/97b20f89ba96382edee2e5abd1e7b980.jpg', 56, 1, 56.00, NULL, NULL);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `total` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `payment_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `delivery_cost` float(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `orders_customer_id_foreign`(`customer_id`) USING BTREE,
  CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 0, 1, 1, 2, 'cash', 'pickup', '2022-01-07 10:21:20', '2022-07-21 09:50:17', NULL);
INSERT INTO `orders` VALUES (2, 423, 1, 1, 2, 'payme', 'regular_delivery', '2022-06-07 10:21:20', '2022-07-07 10:21:20', NULL);
INSERT INTO `orders` VALUES (3, 123, 1, 1, 3, 'payme', 'fast_delivery', '2022-02-07 10:22:13', '2022-07-07 10:22:13', NULL);
INSERT INTO `orders` VALUES (4, 234, 1633, 1, 1, 'click', 'regular_delivery', '2022-03-21 10:31:08', '2022-07-21 10:31:08', NULL);
INSERT INTO `orders` VALUES (5, 333, 443, 1, 1, 'click', 'regular_delivery', '2022-04-21 10:33:32', '2022-07-21 10:33:32', NULL);
INSERT INTO `orders` VALUES (6, 555, 494, 1, 1, 'payme', 'fast_delivery', '2022-05-21 10:35:20', '2022-07-21 10:35:20', 50000.00);
INSERT INTO `orders` VALUES (7, 666, 383, 1, 1, 'click', 'fast_delivery', '2022-07-21 10:43:59', '2022-07-21 10:43:59', 50000.00);
INSERT INTO `orders` VALUES (8, 970056, 970056, 1, 1, 'cash', 'pickup', '2022-07-22 11:00:15', '2022-07-22 11:00:15', 0.00);
INSERT INTO `orders` VALUES (9, 970056, 970056, 1, 1, 'cash', 'pickup', '2022-07-22 11:00:55', '2022-07-22 11:00:55', 0.00);
INSERT INTO `orders` VALUES (10, 995056, 970056, 1, 1, 'click', 'regular_delivery', '2022-07-22 11:03:24', '2022-07-22 11:03:24', 25000.00);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` json NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `status` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `posts_category_id_foreign`(`category_id`) USING BTREE,
  CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, 'asdasdasd', '<p>asddsasad</p>', 'images/861eb960defd5957af6745ea97373f16.jpg', '\"\"', 8, '2022-07-04 10:57:03', '2022-07-22 11:34:52', 1);
INSERT INTO `posts` VALUES (2, 'asdasdasd', '<p>HyperX, подразделение компании по производству игровых устройств, уже занимает прочные позиции на мировом рынке самого необходимого игрового оборудования. Корпорация была основана в 1987 году Джоном Ту и имеет штаб-квартиру в Калифорнии. По состоянию на 2015 год количество сотрудников составляло 3000 человек.</p>\r\n\r\n<p>Продукция компании, в том числе устройства HyperX, не чужды узбекскому рынку. В интернет-магазине Olcha вы можете найти набор клавиатур, мышей и наушников для игр. Например, HyperX Sloud Alpha S, Blue (4P5L3AA) завоевали признание геймеров за удобство игровых наушников. Смело улучшайте звук во время игры и создавайте комфортную звуковую атмосферу для игроков. Можно настроить частоту средней и высокой громкости и отрегулировать разницу. Настройте уровни звука в игре и чате по своему вкусу и играйте с полной отдачей. Особенно, если эта мышь &mdash; уникальная мышь HyperX! HyperX Pulsefire FPS Pro (HX-MS003B) подключается к клавиатуре через USB и предназначен для игр на настольном компьютере. Клавиша прокрутки &mdash; одна из самых удобных доступных кнопок мыши. Почувствуйте себя настоящим мастером игр с удобной гарнитурой, мышью и уникальной клавиатурой. Уникальные клавиатуры тоже поколения HyperX! Благодаря яркой световой панели и плавным динамическим световым эффектам RGB HyperX Alloy Sore RGB &trade;, похоже, разработан для геймеров, стремящихся поднять свою производительность на новый уровень. На этой клавиатуре вы найдете идеальный баланс 6 различных световых эффектов и 3 уровней яркости. Благодаря прочному пластиковому корпусу и стабильности Alloy Sore RGB, высокой надежности, эта клавиатура является лучшим помощником для геймеров, которые любят продолжительные игры. Клавиатура HyperX также оснащена сенсорными кнопками, специальными элементами управления мультимедиа для освещения и игрового режима, а также волшебными элементами управления клавиатуры, которые ускоряют работу ваших пальцев. Блокировка клавиатуры позволяет заблокировать клавиатуру, не переводя всю систему в режим ожидания. Мы рады сообщить о начале сезона скидок на продукцию HyperX с 1 по 30 июня. Объявлены скидки на вышеуказанные 29% на наушники, 28% на мышки и 19% на клавиатуры. Это еще не все. Много отличных предложений на черешню!</p>', 'images/22da80de15aea0c6393575c4b8f5cb9c.jpg', '\"tagq,tag2\"', 24, '2022-07-04 11:01:08', '2022-07-22 11:34:53', 1);
INSERT INTO `posts` VALUES (3, 'news 23', '<p>HyperX, подразделение компании по производству игровых устройств, уже занимает прочные позиции на мировом рынке самого необходимого игрового оборудования. Корпорация была основана в 1987 году Джоном Ту и имеет штаб-квартиру в Калифорнии. По состоянию на 2015 год количество сотрудников составляло 3000 человек.</p>\r\n\r\n<p>Продукция компании, в том числе устройства HyperX, не чужды узбекскому рынку. В интернет-магазине Olcha вы можете найти набор клавиатур, мышей и наушников для игр. Например, HyperX Sloud Alpha S, Blue (4P5L3AA) завоевали признание геймеров за удобство игровых наушников. Смело улучшайте звук во время игры и создавайте комфортную звуковую атмосферу для игроков. Можно настроить частоту средней и высокой громкости и отрегулировать разницу. Настройте уровни звука в игре и чате по своему вкусу и играйте с полной отдачей. Особенно, если эта мышь &mdash; уникальная мышь HyperX! HyperX Pulsefire FPS Pro (HX-MS003B) подключается к клавиатуре через USB и предназначен для игр на настольном компьютере. Клавиша прокрутки &mdash; одна из самых удобных доступных кнопок мыши. Почувствуйте себя настоящим мастером игр с удобной гарнитурой, мышью и уникальной клавиатурой. Уникальные клавиатуры тоже поколения HyperX! Благодаря яркой световой панели и плавным динамическим световым эффектам RGB HyperX Alloy Sore RGB &trade;, похоже, разработан для геймеров, стремящихся поднять свою производительность на новый уровень. На этой клавиатуре вы найдете идеальный баланс 6 различных световых эффектов и 3 уровней яркости. Благодаря прочному пластиковому корпусу и стабильности Alloy Sore RGB, высокой надежности, эта клавиатура является лучшим помощником для геймеров, которые любят продолжительные игры. Клавиатура HyperX также оснащена сенсорными кнопками, специальными элементами управления мультимедиа для освещения и игрового режима, а также волшебными элементами управления клавиатуры, которые ускоряют работу ваших пальцев. Блокировка клавиатуры позволяет заблокировать клавиатуру, не переводя всю систему в режим ожидания. Мы рады сообщить о начале сезона скидок на продукцию HyperX с 1 по 30 июня. Объявлены скидки на вышеуказанные 29% на наушники, 28% на мышки и 19% на клавиатуры. Это еще не все. Много отличных предложений на черешню!</p>', 'images/d965a333001e3f362dc832b6cf64c77b.webp', '\"tag5,tag6\"', 6, '2022-07-04 11:01:30', '2022-07-22 12:14:09', 0);
INSERT INTO `posts` VALUES (4, 'adsasd', '<p>asdsda</p>', 'images/7274f5b2fa948898ddf6a9f5ffeeba1c.jpeg', '\"tag1,tag2\"', 8, '2022-07-05 03:52:15', '2022-07-22 11:35:01', 0);
INSERT INTO `posts` VALUES (5, '123231', '<p>23132231</p>', 'images/593f745e7bca2e00ac934a9d4b8944e0.webp', '\"312312\"', 7, '2022-07-05 03:52:27', '2022-07-22 11:35:01', 0);

-- ----------------------------
-- Table structure for product_option
-- ----------------------------
DROP TABLE IF EXISTS `product_option`;
CREATE TABLE `product_option`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_option_product_id_foreign`(`product_id`) USING BTREE,
  INDEX `product_option_option_id_foreign`(`option_id`) USING BTREE,
  CONSTRAINT `product_option_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product_option_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of product_option
-- ----------------------------
INSERT INTO `product_option` VALUES (3, 3, 3, 'HDMI, DisplayPort x3', '2022-06-07 09:04:35', '2022-06-07 09:04:35');
INSERT INTO `product_option` VALUES (4, 3, 4, '1770 МГц', '2022-06-07 09:04:35', '2022-06-07 09:04:35');
INSERT INTO `product_option` VALUES (5, 3, 5, '6144 МБ', '2022-06-07 09:04:35', '2022-06-07 09:04:35');
INSERT INTO `product_option` VALUES (6, 3, 6, 'GDDR6', '2022-06-07 09:04:35', '2022-06-07 09:04:35');
INSERT INTO `product_option` VALUES (7, 3, 8, '192 бит', '2022-06-07 09:04:35', '2022-06-07 09:04:35');

-- ----------------------------
-- Table structure for product_promotion
-- ----------------------------
DROP TABLE IF EXISTS `product_promotion`;
CREATE TABLE `product_promotion`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `promotion_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `promotion_products_promotion_id_foreign`(`promotion_id`) USING BTREE,
  INDEX `promotion_products_product_id_foreign`(`product_id`) USING BTREE,
  CONSTRAINT `promotion_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `promotion_products_promotion_id_foreign` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of product_promotion
-- ----------------------------
INSERT INTO `product_promotion` VALUES (22, 3, 4, NULL, NULL);
INSERT INTO `product_promotion` VALUES (23, 6, 3, NULL, NULL);
INSERT INTO `product_promotion` VALUES (24, 6, 11, NULL, NULL);
INSERT INTO `product_promotion` VALUES (25, 6, 4, NULL, NULL);
INSERT INTO `product_promotion` VALUES (26, 6, 12, NULL, NULL);
INSERT INTO `product_promotion` VALUES (27, 6, 15, NULL, NULL);
INSERT INTO `product_promotion` VALUES (28, 6, 16, NULL, NULL);
INSERT INTO `product_promotion` VALUES (29, 6, 17, NULL, NULL);
INSERT INTO `product_promotion` VALUES (30, 6, 18, NULL, NULL);
INSERT INTO `product_promotion` VALUES (31, 6, 13, NULL, NULL);
INSERT INTO `product_promotion` VALUES (32, 6, 14, NULL, NULL);
INSERT INTO `product_promotion` VALUES (33, 6, 19, NULL, NULL);
INSERT INTO `product_promotion` VALUES (34, 6, 20, NULL, NULL);
INSERT INTO `product_promotion` VALUES (35, 6, 23, NULL, NULL);
INSERT INTO `product_promotion` VALUES (36, 6, 22, NULL, NULL);
INSERT INTO `product_promotion` VALUES (37, 6, 21, NULL, NULL);
INSERT INTO `product_promotion` VALUES (38, 6, 24, NULL, NULL);
INSERT INTO `product_promotion` VALUES (39, 6, 25, NULL, NULL);
INSERT INTO `product_promotion` VALUES (40, 6, 26, NULL, NULL);
INSERT INTO `product_promotion` VALUES (41, 6, 28, NULL, NULL);
INSERT INTO `product_promotion` VALUES (42, 6, 27, NULL, NULL);

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `tags` json NULL,
  `price` double(16, 2) NULL DEFAULT NULL,
  `in_stock` int(11) NULL DEFAULT NULL,
  `guarantee` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'нет гарантии',
  `is_discount` tinyint(1) NULL DEFAULT 0,
  `discount_from` timestamp(0) NULL DEFAULT NULL,
  `discount_to` timestamp(0) NULL DEFAULT NULL,
  `discount_price` double(16, 2) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `products_category_id_foreign`(`category_id`) USING BTREE,
  INDEX `products_subcategory_id_foreign`(`subcategory_id`) USING BTREE,
  INDEX `products_brand_id_foreign`(`brand_id`) USING BTREE,
  CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 113 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (3, 2, 4, 2, 'aasd asdasdsdasdddd asddddddddddddddd asddddddddddddddddddddd asdddddddd', 0, '\"intel,videocards\"', 0.00, 1, 'нет гарантии', 1, '2022-07-01 11:03:56', '2022-07-01 11:03:56', 0.00, '2022-06-07 09:04:35', '2022-07-21 06:56:05', NULL);
INSERT INTO `products` VALUES (4, 2, 4, 2, 'videocard', 1, '\"tag1,tag2,tag3\"', 970000.00, 4, 'нет гарантии', 1, '2022-07-01 11:03:56', '2022-07-01 11:03:56', 485000.00, '2022-06-09 06:12:07', '2022-07-01 11:04:29', NULL);
INSERT INTO `products` VALUES (11, 2, 4, 3, 'Motherboard 5 TI0', 1, '\"\"', 112.00, 123, 'нет гарантии', 1, '2022-07-01 11:03:56', '2022-07-01 11:03:56', 56.00, '2022-06-30 08:11:57', '2022-07-22 11:03:11', '<p>123</p>');
INSERT INTO `products` VALUES (12, 97, 98, 5, 'Dr. Miles Raynor IV', 1, NULL, 685.00, 5, 'нет гарантии', 1, '2022-07-01 11:03:56', '2022-07-01 11:03:56', 342.00, '2022-06-30 10:25:42', '2022-07-01 11:04:29', NULL);
INSERT INTO `products` VALUES (13, 99, 100, 3, 'Dr. Jamir McKenzie', 1, NULL, 495.00, 1, 'нет гарантии', 1, '2022-07-01 11:03:56', '2022-07-01 11:03:56', 247.00, '2022-06-30 10:25:42', '2022-07-01 11:04:29', NULL);
INSERT INTO `products` VALUES (14, 101, 102, 8, 'Ursula Haag', 1, NULL, 72.00, 13, 'нет гарантии', 1, '2022-07-01 11:03:56', '2022-07-01 11:03:56', 36.00, '2022-06-30 10:25:42', '2022-07-01 11:04:29', NULL);
INSERT INTO `products` VALUES (15, 103, 104, 7, 'Kayley King V', 1, NULL, 777.00, 3, 'нет гарантии', 1, '2022-07-01 11:03:56', '2022-07-01 11:03:56', 388.00, '2022-06-30 10:25:42', '2022-07-01 11:04:29', NULL);
INSERT INTO `products` VALUES (16, 105, 106, 6, 'Kylie Toy', 1, NULL, 955.00, 18, 'нет гарантии', 1, '2022-07-01 11:03:56', '2022-07-01 11:03:56', 477.00, '2022-06-30 10:25:43', '2022-07-01 11:04:29', NULL);
INSERT INTO `products` VALUES (17, 107, 108, 4, 'Neal Mann', 1, NULL, 169.00, 3, 'нет гарантии', 1, '2022-07-01 11:03:56', '2022-07-01 11:03:56', 84.00, '2022-06-30 10:25:43', '2022-07-01 11:04:29', NULL);
INSERT INTO `products` VALUES (18, 109, 110, 4, 'Aimee Pollich', 1, NULL, 839.00, 14, 'нет гарантии', 1, '2022-07-01 11:03:56', '2022-07-01 11:03:56', 419.00, '2022-06-30 10:25:43', '2022-07-01 11:04:29', NULL);
INSERT INTO `products` VALUES (19, 111, 112, 4, 'Gabriel Shields DVM', 1, NULL, 767.00, 18, 'нет гарантии', 1, '2022-07-01 11:03:56', '2022-07-01 11:03:56', 383.00, '2022-06-30 10:25:43', '2022-07-01 11:04:29', NULL);
INSERT INTO `products` VALUES (20, 113, 114, 5, 'Dr. Andres Muller I', 1, NULL, 26.00, 15, 'нет гарантии', 1, '2022-07-01 11:03:56', '2022-07-01 11:03:56', 13.00, '2022-06-30 10:25:43', '2022-07-01 11:04:29', NULL);
INSERT INTO `products` VALUES (21, 115, 116, 7, 'Shemar Tromp', 1, NULL, 797.00, 16, 'нет гарантии', 1, '2022-07-01 11:03:56', '2022-07-01 11:03:56', 398.00, '2022-06-30 10:25:43', '2022-07-01 11:04:29', NULL);
INSERT INTO `products` VALUES (22, 117, 118, 6, 'Jamey Bruen', 1, NULL, 434.00, 6, 'нет гарантии', 1, '2022-07-01 11:03:56', '2022-07-01 11:03:56', 217.00, '2022-06-30 10:25:43', '2022-07-01 11:04:29', NULL);
INSERT INTO `products` VALUES (23, 119, 120, 2, 'Lia Casper', 1, NULL, 642.00, 15, 'нет гарантии', 1, '2022-07-01 11:03:56', '2022-07-01 11:03:56', 321.00, '2022-06-30 10:25:43', '2022-07-01 11:04:29', NULL);
INSERT INTO `products` VALUES (24, 121, 122, 2, 'Roselyn Dooley', 1, NULL, 899.00, 7, 'нет гарантии', 1, '2022-07-01 11:03:56', '2022-07-01 11:03:56', 449.00, '2022-06-30 10:25:43', '2022-07-01 11:04:29', NULL);
INSERT INTO `products` VALUES (25, 123, 124, 8, 'Margret Lakin', 1, NULL, 612.00, 20, 'нет гарантии', 1, '2022-07-01 11:03:56', '2022-07-01 11:03:56', 306.00, '2022-06-30 10:25:43', '2022-07-01 11:04:29', NULL);
INSERT INTO `products` VALUES (26, 125, 126, 5, 'Jaquan Gleichner', 1, NULL, 660.00, 1, 'нет гарантии', 1, '2022-07-01 11:03:56', '2022-07-01 11:03:56', 330.00, '2022-06-30 10:25:43', '2022-07-01 11:04:29', NULL);
INSERT INTO `products` VALUES (27, 127, 128, 5, 'Aurelio Rutherford', 1, NULL, 688.00, 5, 'нет гарантии', 1, '2022-07-01 11:03:56', '2022-07-01 11:03:56', 344.00, '2022-06-30 10:25:43', '2022-07-01 11:04:29', NULL);
INSERT INTO `products` VALUES (28, 129, 130, 7, 'Mr. Desmond Hamill', 1, NULL, 230.00, 4, 'нет гарантии', 1, '2022-07-01 11:03:56', '2022-07-01 11:03:56', 115.00, '2022-06-30 10:25:43', '2022-07-01 11:04:29', NULL);
INSERT INTO `products` VALUES (29, 131, 132, 3, 'Mr. Chadrick Auer', 1, NULL, 432.00, 3, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (30, 133, 134, 5, 'Flavie Reichert', 1, NULL, 985.00, 10, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (31, 135, 136, 4, 'Sally Torphy I', 1, NULL, 344.00, 15, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (32, 137, 138, 6, 'Joseph Green I', 1, NULL, 254.00, 18, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (33, 139, 140, 3, 'Esta Langosh', 1, NULL, 331.00, 19, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (34, 141, 142, 4, 'Eleazar Sporer', 1, NULL, 472.00, 6, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (35, 143, 144, 8, 'Maryse Stehr III', 1, NULL, 716.00, 12, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (36, 145, 146, 3, 'Ora Doyle', 1, NULL, 419.00, 16, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (37, 147, 148, 8, 'Belle Metz', 1, NULL, 995.00, 19, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (38, 149, 150, 8, 'Gladyce Beer DVM', 1, NULL, 925.00, 1, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (39, 151, 152, 3, 'Shanna Connelly', 1, NULL, 370.00, 6, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (40, 153, 154, 3, 'Timmothy Kreiger', 1, NULL, 72.00, 9, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (41, 155, 156, 8, 'Dr. Rickie Gerlach', 1, NULL, 150.00, 4, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (42, 157, 158, 3, 'Prof. Adeline Fisher IV', 1, NULL, 434.00, 6, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (43, 159, 160, 3, 'Ewell Schuppe', 1, NULL, 105.00, 18, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (44, 161, 162, 8, 'Maiya Zulauf', 1, NULL, 940.00, 3, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (45, 163, 164, 8, 'Albina Corwin', 1, NULL, 634.00, 6, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (46, 165, 166, 5, 'Frederique Kirlin', 1, NULL, 816.00, 13, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (47, 167, 168, 8, 'Prof. Benedict Dach', 1, NULL, 986.00, 6, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (48, 169, 170, 8, 'Mrs. Cydney Senger', 1, NULL, 153.00, 14, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (49, 171, 172, 4, 'Harmony Skiles DDS', 1, NULL, 838.00, 4, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (50, 173, 174, 8, 'Jorge King', 1, NULL, 718.00, 8, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (51, 175, 176, 6, 'Jana Schulist', 1, NULL, 879.00, 15, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (52, 177, 178, 8, 'Laurence Weissnat', 1, NULL, 124.00, 4, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (53, 179, 180, 2, 'Americo Shields', 1, NULL, 484.00, 20, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (54, 181, 182, 5, 'Ms. Gia O\'Hara', 1, NULL, 94.00, 1, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (55, 183, 184, 4, 'Camron Kirlin', 1, NULL, 664.00, 10, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (56, 185, 186, 2, 'Lenore Dicki', 1, NULL, 760.00, 19, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (57, 187, 188, 4, 'Maude Mills', 1, NULL, 59.00, 13, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (58, 189, 190, 2, 'Miss Alessandra Grant', 1, NULL, 318.00, 10, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (59, 191, 192, 8, 'Daphnee Legros', 1, NULL, 301.00, 5, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (60, 193, 194, 4, 'Shyanne Glover', 1, NULL, 830.00, 10, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (61, 195, 196, 7, 'Mr. Jensen Walsh I', 1, NULL, 449.00, 2, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (62, 197, 198, 5, 'Otho Denesik', 1, NULL, 664.00, 9, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (63, 199, 200, 2, 'Edwina Boyle', 1, NULL, 48.00, 6, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (64, 201, 202, 6, 'Miss Kimberly Mayer Jr.', 1, NULL, 135.00, 3, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (65, 203, 204, 2, 'Lila Ruecker II', 1, NULL, 346.00, 16, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (66, 205, 206, 2, 'Miss Mellie Haley', 1, NULL, 900.00, 16, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (67, 207, 208, 5, 'Ryann Mitchell', 1, NULL, 21.00, 11, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (68, 209, 210, 8, 'Rosalind Jacobson', 1, NULL, 765.00, 6, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (69, 211, 212, 8, 'Marjory Veum', 1, NULL, 918.00, 17, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (70, 213, 214, 5, 'Lolita Konopelski', 1, NULL, 721.00, 1, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (71, 215, 216, 4, 'Erica Pouros DDS', 1, NULL, 523.00, 11, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (72, 217, 218, 2, 'Tabitha Kutch', 1, NULL, 599.00, 10, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (73, 219, 220, 3, 'Sierra Collier', 1, NULL, 134.00, 20, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (74, 221, 222, 3, 'Wyatt Rath III', 1, NULL, 856.00, 16, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (75, 223, 224, 6, 'Aurore Hauck Jr.', 1, NULL, 773.00, 10, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (76, 225, 226, 3, 'Alva Schaefer', 1, NULL, 774.00, 18, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (77, 227, 228, 2, 'Zora Raynor', 1, NULL, 946.00, 10, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (78, 229, 230, 2, 'Claud Bins', 1, NULL, 678.00, 18, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (79, 231, 232, 7, 'Prof. Ernesto Bartell', 1, NULL, 298.00, 5, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (80, 233, 234, 2, 'Prof. Jacinto Murphy', 1, NULL, 185.00, 11, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (81, 235, 236, 6, 'Deshaun Von', 1, NULL, 607.00, 6, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (82, 237, 238, 2, 'Clementina Schaefer', 1, NULL, 76.00, 12, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (83, 239, 240, 6, 'Prof. Coby Herzog MD', 1, NULL, 38.00, 13, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (84, 241, 242, 6, 'Deondre Schoen', 1, NULL, 562.00, 20, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (85, 243, 244, 6, 'Mae Marvin', 1, NULL, 366.00, 20, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (86, 245, 246, 4, 'Grayce Crist IV', 1, NULL, 72.00, 2, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (87, 247, 248, 6, 'Catherine Romaguera', 1, NULL, 523.00, 7, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (88, 249, 250, 8, 'Terence Schamberger III', 1, NULL, 244.00, 4, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (89, 251, 252, 5, 'Elian Fisher', 1, NULL, 202.00, 10, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (90, 253, 254, 4, 'Torrance Dibbert', 1, NULL, 81.00, 3, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (91, 255, 256, 2, 'Dr. Gardner Raynor', 1, NULL, 820.00, 4, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (92, 257, 258, 6, 'Christiana McKenzie', 1, NULL, 416.00, 7, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (93, 259, 260, 2, 'Nathanial Maggio', 1, NULL, 434.00, 10, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (94, 261, 262, 6, 'Harvey Kuhlman', 1, NULL, 481.00, 16, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (95, 263, 264, 4, 'Cody Mitchell', 1, NULL, 506.00, 9, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (96, 265, 266, 5, 'Callie White II', 1, NULL, 582.00, 20, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (97, 267, 268, 8, 'Jerald Kreiger', 1, NULL, 443.00, 5, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (98, 269, 270, 4, 'Maryjane Wisozk', 1, NULL, 282.00, 9, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (99, 271, 272, 8, 'Zoey DuBuque V', 1, NULL, 278.00, 7, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (100, 273, 274, 2, 'Sydnie Dicki', 1, NULL, 18.00, 9, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (101, 275, 276, 5, 'Dr. Isabelle Treutel', 1, NULL, 813.00, 4, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (102, 277, 278, 6, 'Mrs. Joanie Denesik', 1, NULL, 560.00, 20, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (103, 279, 280, 8, 'Kaleigh Harvey', 1, NULL, 834.00, 11, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (104, 281, 282, 2, 'Penelope Hagenes', 1, NULL, 684.00, 2, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (105, 283, 284, 4, 'Aliyah Batz', 1, NULL, 346.00, 13, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (106, 285, 286, 4, 'Mustafa Bernier', 1, NULL, 371.00, 7, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (107, 287, 288, 3, 'Mr. Freddy Cormier Sr.', 1, NULL, 639.00, 7, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (108, 289, 290, 8, 'Samson Jakubowski', 1, NULL, 782.00, 12, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (109, 291, 292, 7, 'Maida Bradtke', 1, NULL, 935.00, 11, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (110, 293, 294, 3, 'Kellie Kerluke', 1, NULL, 187.00, 18, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (111, 295, 296, 4, 'Dr. Foster Wuckert', 1, NULL, 535.00, 6, 'нет гарантии', 0, NULL, NULL, NULL, '2022-06-30 10:25:43', '2022-06-30 10:25:43', NULL);
INSERT INTO `products` VALUES (112, 2, 5, 2, 'asdasd', 1, '\"\"', 0.00, 0, 'нет гарантии', 0, NULL, NULL, NULL, '2022-07-04 10:55:51', '2022-07-04 10:55:51', '<p>adsdasasd</p>');

-- ----------------------------
-- Table structure for promotion_service
-- ----------------------------
DROP TABLE IF EXISTS `promotion_service`;
CREATE TABLE `promotion_service`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `promotion_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `promotion_service_promotion_id_foreign`(`promotion_id`) USING BTREE,
  INDEX `promotion_service_service_id_foreign`(`service_id`) USING BTREE,
  CONSTRAINT `promotion_service_promotion_id_foreign` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `promotion_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of promotion_service
-- ----------------------------
INSERT INTO `promotion_service` VALUES (1, 5, 1, NULL, NULL);

-- ----------------------------
-- Table structure for promotions
-- ----------------------------
DROP TABLE IF EXISTS `promotions`;
CREATE TABLE `promotions`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` timestamp(0) NULL DEFAULT NULL,
  `end` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `promotion_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `promotion_value` float NULL DEFAULT NULL,
  `status` int(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of promotions
-- ----------------------------
INSERT INTO `promotions` VALUES (3, 'images/42574b9c2f1d9e81d6dbabb226ad88f6.jpg', 'Aksiya 2022', '<p>Aksiya 2022. hamma tovarlaga aksiya ketti</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>123123</td>\r\n			<td>213231123</td>\r\n		</tr>\r\n		<tr>\r\n			<td>123123</td>\r\n			<td>231321</td>\r\n		</tr>\r\n		<tr>\r\n			<td>231231</td>\r\n			<td>123123</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '2022-06-29 08:45:57', '2022-06-30 08:45:57', '2022-06-29 08:46:17', '2022-07-22 12:12:56', 'others', 0, 1);
INSERT INTO `promotions` VALUES (5, 'images/a2659446485af466fe002537b9f86fe6.jpg', 'service aksiya', '<p>service aksiya</p>', '2022-06-30 07:04:32', '2022-07-01 07:04:32', '2022-06-30 07:08:02', '2022-07-22 12:12:57', 'to_service', 0, 1);
INSERT INTO `promotions` VALUES (6, 'images/96ff9816daf207cb50f8bcd8c919528d.png', 'asddsa', '<p>asddssadasd</p>', '2022-07-01 11:03:56', '2022-07-01 11:03:56', '2022-07-01 11:04:29', '2022-07-22 11:31:25', 'to_product', 0, 0);

-- ----------------------------
-- Table structure for ratings
-- ----------------------------
DROP TABLE IF EXISTS `ratings`;
CREATE TABLE `ratings`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ratings
-- ----------------------------
INSERT INTO `ratings` VALUES (1, 1, 2, 3, 'asdsda', 0, '2022-06-17 09:12:04', '2022-06-17 09:12:04');
INSERT INTO `ratings` VALUES (2, 1, 7, 3, 'tuzu', 0, '2022-06-17 10:06:25', '2022-06-17 10:06:25');
INSERT INTO `ratings` VALUES (3, 1, 7, 5, 'zo\'rakan', 0, '2022-06-17 10:20:57', '2022-06-17 10:20:57');
INSERT INTO `ratings` VALUES (4, 1, 7, 4, 'asddsa', 0, '2022-06-17 10:28:40', '2022-06-17 10:28:40');
INSERT INTO `ratings` VALUES (5, 1, 7, 2, 'asdsda', 0, '2022-06-17 10:28:47', '2022-06-17 10:28:47');
INSERT INTO `ratings` VALUES (6, 1, 7, 1, 'bittali', 0, '2022-06-17 10:28:55', '2022-06-17 10:28:55');
INSERT INTO `ratings` VALUES (7, 1, 7, 5, 'asddas', 0, '2022-06-17 10:44:57', '2022-06-17 10:44:57');
INSERT INTO `ratings` VALUES (8, 1, 7, 5, 'asd', 0, '2022-06-17 10:45:48', '2022-06-17 10:45:48');
INSERT INTO `ratings` VALUES (9, 1, 9, 5, 'asddsa', 0, '2022-06-17 11:10:23', '2022-06-17 11:10:23');

-- ----------------------------
-- Table structure for services
-- ----------------------------
DROP TABLE IF EXISTS `services`;
CREATE TABLE `services`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deadline` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `price` double(8, 2) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `discount_price` decimal(10, 2) NULL DEFAULT NULL,
  `discount_from` timestamp(0) NULL DEFAULT NULL,
  `discount_to` timestamp(0) NULL DEFAULT NULL,
  `is_discount` tinyint(4) NULL DEFAULT 0,
  `status` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of services
-- ----------------------------
INSERT INTO `services` VALUES (1, 'Выездной компьютерный сервис', '<p>Мы занимаемся ремонтом ПК и ноутбуков уже более 7-и лет и по праву можем считаться одной из крупнейших компаний на рынке IT-услуг.</p>\r\n\r\n<p>Наши специалисты быстро и качественно осуществят настройку персональных компьютеров, ноутбуков и любой офисной техники, при необходимости произведут ремонт, установят защиту от вирусов и другого вредоносного ПО.</p>\r\n\r\n<h2>Мы предлагаем Вам:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Пакет&nbsp;<strong>&quot;СИТИ Старт&quot;</strong>&nbsp;для компьютеров и ноутбуков&nbsp;подробнее</p>\r\n	</li>\r\n	<li>\r\n	<p>Пакет&nbsp;<strong>&quot;СИТИ Оптима&quot;</strong>&nbsp;для компьютеров и ноутбуков&nbsp;подробнее</p>\r\n	</li>\r\n	<li>\r\n	<p>Пакет&nbsp;<strong>&quot;СИТИ Макс&quot;</strong>&nbsp;для компьютеров и ноутбуков&nbsp;подробнее</p>\r\n	</li>\r\n</ul>', 'images/124_msk_cl_all_1484555504.jpg', '123', 100000.00, '2022-06-30 04:40:58', '2022-07-22 12:13:42', 85000.00, '2022-06-30 07:04:32', '2022-07-01 07:04:32', 1, 1);

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `website_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_delivery_cost` double(8, 2) NOT NULL,
  `fast_delivery_cost` double(8, 2) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slogan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, '998330000000', 'itechno.uz', 25000.00, 50000.00, '2022-07-21 10:42:18', '2022-07-21 11:17:34', 'images/laptop-silhouette-with-a-cup-of-tea.png', 'Современный интернет магазин компьютерной техники');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'avatars/default.png',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'dsadsads updated 22', NULL, NULL, NULL, NULL, '2022-06-17 09:50:23', '2022-07-20 06:43:41', '998330000000', 'dasadsd updated', 'Adress', 'avatars/default.png');
INSERT INTO `users` VALUES (2, NULL, NULL, NULL, NULL, NULL, '2022-06-24 09:57:17', '2022-06-24 09:57:17', '+998909000000', NULL, NULL, 'avatars/default.png');
INSERT INTO `users` VALUES (3, 'sad', NULL, NULL, NULL, NULL, NULL, NULL, 'asd', NULL, NULL, 'avatars/default.png');
INSERT INTO `users` VALUES (4, '312321', NULL, NULL, NULL, NULL, NULL, NULL, '12321', NULL, NULL, 'avatars/default.png');

-- ----------------------------
-- Table structure for views
-- ----------------------------
DROP TABLE IF EXISTS `views`;
CREATE TABLE `views`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `viewable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewable_id` bigint(20) UNSIGNED NOT NULL,
  `visitor` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `collection` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `viewed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `views_viewable_type_viewable_id_index`(`viewable_type`, `viewable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 377 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of views
-- ----------------------------
INSERT INTO `views` VALUES (24, 'App\\Models\\Product', 2, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-23 10:26:53');
INSERT INTO `views` VALUES (25, 'App\\Models\\Product', 2, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-23 10:27:03');
INSERT INTO `views` VALUES (26, 'App\\Models\\Product', 2, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-23 10:27:04');
INSERT INTO `views` VALUES (27, 'App\\Models\\Product', 2, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-23 10:27:05');
INSERT INTO `views` VALUES (28, 'App\\Models\\Product', 5, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-24 09:15:37');
INSERT INTO `views` VALUES (29, 'App\\Models\\Product', 5, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-24 10:15:44');
INSERT INTO `views` VALUES (30, 'App\\Models\\Product', 5, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-24 11:16:57');
INSERT INTO `views` VALUES (31, 'App\\Models\\Product', 7, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-27 09:17:00');
INSERT INTO `views` VALUES (32, 'App\\Models\\Product', 9, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-27 09:20:58');
INSERT INTO `views` VALUES (33, 'App\\Models\\Product', 9, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-27 10:17:49');
INSERT INTO `views` VALUES (34, 'App\\Models\\Product', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-27 10:38:21');
INSERT INTO `views` VALUES (35, 'App\\Models\\Product', 2, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-28 03:11:32');
INSERT INTO `views` VALUES (36, 'App\\Models\\Product', 2, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-28 06:48:52');
INSERT INTO `views` VALUES (37, 'App\\Models\\Product', 4, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-28 07:52:07');
INSERT INTO `views` VALUES (38, 'App\\Models\\Product', 6, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-28 07:52:10');
INSERT INTO `views` VALUES (39, 'App\\Models\\Product', 8, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-28 07:52:15');
INSERT INTO `views` VALUES (40, 'App\\Models\\Product', 10, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-28 08:37:47');
INSERT INTO `views` VALUES (41, 'App\\Models\\Product', 2, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-28 10:37:42');
INSERT INTO `views` VALUES (42, 'App\\Models\\Product', 4, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-28 10:37:49');
INSERT INTO `views` VALUES (43, 'App\\Models\\Product', 5, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-29 07:45:53');
INSERT INTO `views` VALUES (44, 'App\\Models\\Product', 4, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-29 07:46:57');
INSERT INTO `views` VALUES (45, 'App\\Models\\Product', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-29 08:01:55');
INSERT INTO `views` VALUES (46, 'App\\Models\\Product', 9, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-29 08:02:06');
INSERT INTO `views` VALUES (47, 'App\\Models\\Product', 6, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-29 08:14:03');
INSERT INTO `views` VALUES (48, 'App\\Models\\Product', 4, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-29 10:20:48');
INSERT INTO `views` VALUES (49, 'App\\Models\\Product', 6, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-29 10:21:00');
INSERT INTO `views` VALUES (50, 'App\\Models\\Product', 4, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-30 08:54:57');
INSERT INTO `views` VALUES (51, 'App\\Models\\Product', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-30 09:04:18');
INSERT INTO `views` VALUES (52, 'App\\Models\\Product', 11, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-30 09:14:06');
INSERT INTO `views` VALUES (53, 'App\\Models\\Product', 4, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-06-30 11:10:38');
INSERT INTO `views` VALUES (54, 'App\\Models\\Product', 66, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-01 10:05:08');
INSERT INTO `views` VALUES (55, 'App\\Models\\Product', 15, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-01 10:05:11');
INSERT INTO `views` VALUES (56, 'App\\Models\\Product', 39, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-01 11:06:41');
INSERT INTO `views` VALUES (57, 'App\\Models\\Product', 15, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-01 11:07:00');
INSERT INTO `views` VALUES (58, 'App\\Models\\Product', 12, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-04 08:35:59');
INSERT INTO `views` VALUES (59, 'App\\Models\\Product', 13, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 03:37:00');
INSERT INTO `views` VALUES (60, 'App\\Models\\Product', 13, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 07:24:56');
INSERT INTO `views` VALUES (61, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 08:58:49');
INSERT INTO `views` VALUES (62, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 08:58:50');
INSERT INTO `views` VALUES (63, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 08:59:26');
INSERT INTO `views` VALUES (64, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 08:59:27');
INSERT INTO `views` VALUES (65, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 08:59:36');
INSERT INTO `views` VALUES (66, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:07:33');
INSERT INTO `views` VALUES (67, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:07:54');
INSERT INTO `views` VALUES (68, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:08:13');
INSERT INTO `views` VALUES (69, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:08:33');
INSERT INTO `views` VALUES (70, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:09:02');
INSERT INTO `views` VALUES (71, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:09:06');
INSERT INTO `views` VALUES (72, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:09:17');
INSERT INTO `views` VALUES (73, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:09:39');
INSERT INTO `views` VALUES (74, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:09:43');
INSERT INTO `views` VALUES (75, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:09:45');
INSERT INTO `views` VALUES (76, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:10:15');
INSERT INTO `views` VALUES (77, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:10:23');
INSERT INTO `views` VALUES (78, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:11:18');
INSERT INTO `views` VALUES (79, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:11:30');
INSERT INTO `views` VALUES (80, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:11:57');
INSERT INTO `views` VALUES (81, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:12:13');
INSERT INTO `views` VALUES (82, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:12:32');
INSERT INTO `views` VALUES (83, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:12:53');
INSERT INTO `views` VALUES (84, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:13:06');
INSERT INTO `views` VALUES (85, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:13:31');
INSERT INTO `views` VALUES (86, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:14:04');
INSERT INTO `views` VALUES (87, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:14:59');
INSERT INTO `views` VALUES (88, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:15:30');
INSERT INTO `views` VALUES (89, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:42:44');
INSERT INTO `views` VALUES (90, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:43:07');
INSERT INTO `views` VALUES (91, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:43:14');
INSERT INTO `views` VALUES (92, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:43:26');
INSERT INTO `views` VALUES (93, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:43:34');
INSERT INTO `views` VALUES (94, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:44:10');
INSERT INTO `views` VALUES (95, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:44:58');
INSERT INTO `views` VALUES (96, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:45:09');
INSERT INTO `views` VALUES (97, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:45:11');
INSERT INTO `views` VALUES (98, 'App\\Models\\Promotion', 5, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:46:30');
INSERT INTO `views` VALUES (99, 'App\\Models\\Promotion', 6, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:46:33');
INSERT INTO `views` VALUES (100, 'App\\Models\\Promotion', 6, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:47:24');
INSERT INTO `views` VALUES (101, 'App\\Models\\Promotion', 6, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:48:23');
INSERT INTO `views` VALUES (102, 'App\\Models\\Promotion', 6, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:48:31');
INSERT INTO `views` VALUES (103, 'App\\Models\\Promotion', 6, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:49:02');
INSERT INTO `views` VALUES (104, 'App\\Models\\Promotion', 6, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:49:22');
INSERT INTO `views` VALUES (105, 'App\\Models\\Promotion', 5, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:49:26');
INSERT INTO `views` VALUES (106, 'App\\Models\\Promotion', 5, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:49:53');
INSERT INTO `views` VALUES (107, 'App\\Models\\Promotion', 5, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:50:11');
INSERT INTO `views` VALUES (108, 'App\\Models\\Promotion', 5, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:50:52');
INSERT INTO `views` VALUES (109, 'App\\Models\\Promotion', 5, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:51:39');
INSERT INTO `views` VALUES (110, 'App\\Models\\Promotion', 5, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:51:57');
INSERT INTO `views` VALUES (111, 'App\\Models\\Promotion', 5, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:52:09');
INSERT INTO `views` VALUES (112, 'App\\Models\\Promotion', 5, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:52:18');
INSERT INTO `views` VALUES (113, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:52:27');
INSERT INTO `views` VALUES (114, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:52:50');
INSERT INTO `views` VALUES (115, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:52:55');
INSERT INTO `views` VALUES (116, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:52:57');
INSERT INTO `views` VALUES (117, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:53:02');
INSERT INTO `views` VALUES (118, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:53:09');
INSERT INTO `views` VALUES (119, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:53:33');
INSERT INTO `views` VALUES (120, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:53:44');
INSERT INTO `views` VALUES (121, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:53:46');
INSERT INTO `views` VALUES (122, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:53:50');
INSERT INTO `views` VALUES (123, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:53:51');
INSERT INTO `views` VALUES (124, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:54:04');
INSERT INTO `views` VALUES (125, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:54:05');
INSERT INTO `views` VALUES (126, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:54:06');
INSERT INTO `views` VALUES (127, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:54:15');
INSERT INTO `views` VALUES (128, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:54:16');
INSERT INTO `views` VALUES (129, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:54:25');
INSERT INTO `views` VALUES (130, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:54:26');
INSERT INTO `views` VALUES (131, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:54:28');
INSERT INTO `views` VALUES (132, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:54:42');
INSERT INTO `views` VALUES (133, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:54:43');
INSERT INTO `views` VALUES (134, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:54:44');
INSERT INTO `views` VALUES (135, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:54:50');
INSERT INTO `views` VALUES (136, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:54:51');
INSERT INTO `views` VALUES (137, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:55:08');
INSERT INTO `views` VALUES (138, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:55:13');
INSERT INTO `views` VALUES (139, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:55:14');
INSERT INTO `views` VALUES (140, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:55:29');
INSERT INTO `views` VALUES (141, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:55:34');
INSERT INTO `views` VALUES (142, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:55:39');
INSERT INTO `views` VALUES (143, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:55:45');
INSERT INTO `views` VALUES (144, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 09:55:52');
INSERT INTO `views` VALUES (145, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 10:00:30');
INSERT INTO `views` VALUES (146, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 10:00:57');
INSERT INTO `views` VALUES (147, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 10:02:18');
INSERT INTO `views` VALUES (148, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 10:02:46');
INSERT INTO `views` VALUES (149, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 10:02:51');
INSERT INTO `views` VALUES (150, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 10:03:03');
INSERT INTO `views` VALUES (151, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 10:03:30');
INSERT INTO `views` VALUES (152, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 10:03:43');
INSERT INTO `views` VALUES (153, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 10:03:45');
INSERT INTO `views` VALUES (154, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 10:03:55');
INSERT INTO `views` VALUES (155, 'App\\Models\\Promotion', 5, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 10:04:13');
INSERT INTO `views` VALUES (156, 'App\\Models\\Promotion', 5, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 10:04:18');
INSERT INTO `views` VALUES (157, 'App\\Models\\Promotion', 6, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 10:04:23');
INSERT INTO `views` VALUES (158, 'App\\Models\\Promotion', 6, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 10:05:18');
INSERT INTO `views` VALUES (159, 'App\\Models\\Promotion', 5, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 10:05:22');
INSERT INTO `views` VALUES (160, 'App\\Models\\Promotion', 5, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 10:05:27');
INSERT INTO `views` VALUES (161, 'App\\Models\\Promotion', 5, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 10:36:59');
INSERT INTO `views` VALUES (162, 'App\\Models\\Promotion', 5, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 10:37:08');
INSERT INTO `views` VALUES (163, 'App\\Models\\Promotion', 5, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 10:37:53');
INSERT INTO `views` VALUES (164, 'App\\Models\\Promotion', 5, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 10:37:58');
INSERT INTO `views` VALUES (165, 'App\\Models\\Promotion', 5, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 10:38:09');
INSERT INTO `views` VALUES (166, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 10:38:45');
INSERT INTO `views` VALUES (167, 'App\\Models\\Promotion', 6, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-05 10:38:52');
INSERT INTO `views` VALUES (168, 'App\\Models\\Promotion', 5, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 07:36:50');
INSERT INTO `views` VALUES (169, 'App\\Models\\Promotion', 6, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 07:36:52');
INSERT INTO `views` VALUES (170, 'App\\Models\\Promotion', 5, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 07:40:18');
INSERT INTO `views` VALUES (171, 'App\\Models\\Promotion', 6, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:25:57');
INSERT INTO `views` VALUES (172, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:27:44');
INSERT INTO `views` VALUES (173, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:28:42');
INSERT INTO `views` VALUES (174, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:29:28');
INSERT INTO `views` VALUES (175, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:29:47');
INSERT INTO `views` VALUES (176, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:29:48');
INSERT INTO `views` VALUES (177, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:30:01');
INSERT INTO `views` VALUES (178, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:30:02');
INSERT INTO `views` VALUES (179, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:30:03');
INSERT INTO `views` VALUES (180, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:36:03');
INSERT INTO `views` VALUES (181, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:36:52');
INSERT INTO `views` VALUES (182, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:37:34');
INSERT INTO `views` VALUES (183, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:37:56');
INSERT INTO `views` VALUES (184, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:38:08');
INSERT INTO `views` VALUES (185, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:38:21');
INSERT INTO `views` VALUES (186, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:38:33');
INSERT INTO `views` VALUES (187, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:38:55');
INSERT INTO `views` VALUES (188, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:39:01');
INSERT INTO `views` VALUES (189, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:39:10');
INSERT INTO `views` VALUES (190, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:39:14');
INSERT INTO `views` VALUES (191, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:39:21');
INSERT INTO `views` VALUES (192, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:39:34');
INSERT INTO `views` VALUES (193, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:40:00');
INSERT INTO `views` VALUES (194, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:40:37');
INSERT INTO `views` VALUES (195, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:40:47');
INSERT INTO `views` VALUES (196, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:41:29');
INSERT INTO `views` VALUES (197, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:41:37');
INSERT INTO `views` VALUES (198, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:42:28');
INSERT INTO `views` VALUES (199, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:43:04');
INSERT INTO `views` VALUES (200, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:43:20');
INSERT INTO `views` VALUES (201, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:43:41');
INSERT INTO `views` VALUES (202, 'App\\Models\\Promotion', 6, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:44:01');
INSERT INTO `views` VALUES (203, 'App\\Models\\Promotion', 6, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:44:16');
INSERT INTO `views` VALUES (204, 'App\\Models\\Promotion', 6, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:44:20');
INSERT INTO `views` VALUES (205, 'App\\Models\\Promotion', 5, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:44:32');
INSERT INTO `views` VALUES (206, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:44:40');
INSERT INTO `views` VALUES (207, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:45:01');
INSERT INTO `views` VALUES (208, 'App\\Models\\Promotion', 5, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:51:59');
INSERT INTO `views` VALUES (209, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:52:05');
INSERT INTO `views` VALUES (210, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:52:35');
INSERT INTO `views` VALUES (211, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:52:36');
INSERT INTO `views` VALUES (212, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:52:48');
INSERT INTO `views` VALUES (213, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:54:17');
INSERT INTO `views` VALUES (214, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:54:43');
INSERT INTO `views` VALUES (215, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:54:51');
INSERT INTO `views` VALUES (216, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:55:25');
INSERT INTO `views` VALUES (217, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:55:39');
INSERT INTO `views` VALUES (218, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:56:13');
INSERT INTO `views` VALUES (219, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:57:36');
INSERT INTO `views` VALUES (220, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:57:39');
INSERT INTO `views` VALUES (221, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:58:10');
INSERT INTO `views` VALUES (222, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:59:19');
INSERT INTO `views` VALUES (223, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:59:21');
INSERT INTO `views` VALUES (224, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:59:34');
INSERT INTO `views` VALUES (225, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:59:37');
INSERT INTO `views` VALUES (226, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 08:59:48');
INSERT INTO `views` VALUES (227, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:00:09');
INSERT INTO `views` VALUES (228, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:00:13');
INSERT INTO `views` VALUES (229, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:00:20');
INSERT INTO `views` VALUES (230, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:00:28');
INSERT INTO `views` VALUES (231, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:01:57');
INSERT INTO `views` VALUES (232, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:02:13');
INSERT INTO `views` VALUES (233, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:02:20');
INSERT INTO `views` VALUES (234, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:02:34');
INSERT INTO `views` VALUES (235, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:03:08');
INSERT INTO `views` VALUES (236, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:03:27');
INSERT INTO `views` VALUES (237, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:03:47');
INSERT INTO `views` VALUES (238, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:03:58');
INSERT INTO `views` VALUES (239, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:04:08');
INSERT INTO `views` VALUES (240, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:04:10');
INSERT INTO `views` VALUES (241, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:04:16');
INSERT INTO `views` VALUES (242, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:04:17');
INSERT INTO `views` VALUES (243, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:05:56');
INSERT INTO `views` VALUES (244, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:06:00');
INSERT INTO `views` VALUES (245, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:06:18');
INSERT INTO `views` VALUES (246, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:07:18');
INSERT INTO `views` VALUES (247, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:07:44');
INSERT INTO `views` VALUES (248, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:07:59');
INSERT INTO `views` VALUES (249, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:08:08');
INSERT INTO `views` VALUES (250, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:08:16');
INSERT INTO `views` VALUES (251, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:08:38');
INSERT INTO `views` VALUES (252, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:08:56');
INSERT INTO `views` VALUES (253, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:09:11');
INSERT INTO `views` VALUES (254, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:09:22');
INSERT INTO `views` VALUES (255, 'App\\Models\\Promotion', 5, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:12:06');
INSERT INTO `views` VALUES (256, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:12:11');
INSERT INTO `views` VALUES (257, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:13:49');
INSERT INTO `views` VALUES (258, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:14:04');
INSERT INTO `views` VALUES (259, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:14:08');
INSERT INTO `views` VALUES (260, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:14:11');
INSERT INTO `views` VALUES (261, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:14:20');
INSERT INTO `views` VALUES (262, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:17:48');
INSERT INTO `views` VALUES (263, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:18:01');
INSERT INTO `views` VALUES (264, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:18:05');
INSERT INTO `views` VALUES (265, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:18:09');
INSERT INTO `views` VALUES (266, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:18:15');
INSERT INTO `views` VALUES (267, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:18:19');
INSERT INTO `views` VALUES (268, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:18:27');
INSERT INTO `views` VALUES (269, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:19:21');
INSERT INTO `views` VALUES (270, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:19:29');
INSERT INTO `views` VALUES (271, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:19:33');
INSERT INTO `views` VALUES (272, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:19:41');
INSERT INTO `views` VALUES (273, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:22:47');
INSERT INTO `views` VALUES (274, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:22:49');
INSERT INTO `views` VALUES (275, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:23:02');
INSERT INTO `views` VALUES (276, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:23:14');
INSERT INTO `views` VALUES (277, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:23:28');
INSERT INTO `views` VALUES (278, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:23:42');
INSERT INTO `views` VALUES (279, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:24:04');
INSERT INTO `views` VALUES (280, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:24:13');
INSERT INTO `views` VALUES (281, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:24:20');
INSERT INTO `views` VALUES (282, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:24:21');
INSERT INTO `views` VALUES (283, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:24:25');
INSERT INTO `views` VALUES (284, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:24:31');
INSERT INTO `views` VALUES (285, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:24:32');
INSERT INTO `views` VALUES (286, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:24:35');
INSERT INTO `views` VALUES (287, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:24:36');
INSERT INTO `views` VALUES (288, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:25:03');
INSERT INTO `views` VALUES (289, 'App\\Models\\Promotion', 6, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:25:51');
INSERT INTO `views` VALUES (290, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:25:58');
INSERT INTO `views` VALUES (291, 'App\\Models\\Promotion', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:30:09');
INSERT INTO `views` VALUES (292, 'App\\Models\\Post', 2, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:32:15');
INSERT INTO `views` VALUES (293, 'App\\Models\\Post', 2, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:32:36');
INSERT INTO `views` VALUES (294, 'App\\Models\\Post', 2, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:33:21');
INSERT INTO `views` VALUES (295, 'App\\Models\\Post', 2, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:33:29');
INSERT INTO `views` VALUES (296, 'App\\Models\\Post', 2, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:33:35');
INSERT INTO `views` VALUES (297, 'App\\Models\\Post', 2, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:33:42');
INSERT INTO `views` VALUES (298, 'App\\Models\\Post', 2, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:34:14');
INSERT INTO `views` VALUES (299, 'App\\Models\\Post', 2, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:34:22');
INSERT INTO `views` VALUES (300, 'App\\Models\\Post', 2, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:34:48');
INSERT INTO `views` VALUES (301, 'App\\Models\\Post', 2, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:34:59');
INSERT INTO `views` VALUES (302, 'App\\Models\\Post', 2, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:35:50');
INSERT INTO `views` VALUES (303, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:52:08');
INSERT INTO `views` VALUES (304, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:54:41');
INSERT INTO `views` VALUES (305, 'App\\Models\\Post', 2, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:55:59');
INSERT INTO `views` VALUES (306, 'App\\Models\\Post', 2, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 09:56:07');
INSERT INTO `views` VALUES (307, 'App\\Models\\Post', 5, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 10:00:14');
INSERT INTO `views` VALUES (308, 'App\\Models\\Product', 59, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 10:00:30');
INSERT INTO `views` VALUES (309, 'App\\Models\\Product', 59, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 10:26:20');
INSERT INTO `views` VALUES (310, 'App\\Models\\Product', 59, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 10:26:59');
INSERT INTO `views` VALUES (311, 'App\\Models\\Product', 59, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 10:27:07');
INSERT INTO `views` VALUES (312, 'App\\Models\\Product', 59, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 10:28:51');
INSERT INTO `views` VALUES (313, 'App\\Models\\Product', 59, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 10:29:01');
INSERT INTO `views` VALUES (314, 'App\\Models\\Product', 59, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 10:30:19');
INSERT INTO `views` VALUES (315, 'App\\Models\\Product', 59, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 10:30:40');
INSERT INTO `views` VALUES (316, 'App\\Models\\Product', 59, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 10:31:43');
INSERT INTO `views` VALUES (317, 'App\\Models\\Product', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 10:31:51');
INSERT INTO `views` VALUES (318, 'App\\Models\\Product', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 10:31:56');
INSERT INTO `views` VALUES (319, 'App\\Models\\Product', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 10:32:16');
INSERT INTO `views` VALUES (320, 'App\\Models\\Product', 3, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 10:32:18');
INSERT INTO `views` VALUES (321, 'App\\Models\\Product', 11, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 10:32:23');
INSERT INTO `views` VALUES (322, 'App\\Models\\Product', 11, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 10:32:50');
INSERT INTO `views` VALUES (323, 'App\\Models\\Product', 11, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 10:33:57');
INSERT INTO `views` VALUES (324, 'App\\Models\\Product', 11, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 10:33:59');
INSERT INTO `views` VALUES (325, 'App\\Models\\Product', 11, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 10:34:01');
INSERT INTO `views` VALUES (326, 'App\\Models\\Product', 11, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 10:34:02');
INSERT INTO `views` VALUES (327, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 10:34:46');
INSERT INTO `views` VALUES (328, 'App\\Models\\Service', 1, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 10:35:01');
INSERT INTO `views` VALUES (329, 'App\\Models\\Product', 66, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 10:35:13');
INSERT INTO `views` VALUES (330, 'App\\Models\\Product', 66, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 10:48:26');
INSERT INTO `views` VALUES (331, 'App\\Models\\Product', 16, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 11:03:02');
INSERT INTO `views` VALUES (332, 'App\\Models\\Product', 11, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 11:20:56');
INSERT INTO `views` VALUES (333, 'App\\Models\\Product', 11, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-06 11:21:04');
INSERT INTO `views` VALUES (334, 'App\\Models\\Post', 2, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-07 02:27:09');
INSERT INTO `views` VALUES (335, 'App\\Models\\Product', 59, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-07 02:28:32');
INSERT INTO `views` VALUES (336, 'App\\Models\\Product', 59, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-07 02:28:36');
INSERT INTO `views` VALUES (337, 'App\\Models\\Product', 68, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-07 07:57:16');
INSERT INTO `views` VALUES (338, 'App\\Models\\Product', 68, 'NvzGTqe4IGm2WGfqspgSNQqVOBs0vjTlz8G4TYU3dtlzSuNAyHNzuxW0DtE5XidUeyuUT9XAdI9lHlDB', NULL, '2022-07-07 07:57:18');
INSERT INTO `views` VALUES (339, 'App\\Models\\Product', 29, 'U3A64B58ePiklz283RxCjONPBc0oGFyaaM3N7FgnaaxHot5zPsnyAC79oSz7wjhDCQ5z2YTYb0ToBYyA', NULL, '2022-07-16 12:27:16');
INSERT INTO `views` VALUES (340, 'App\\Models\\Product', 11, 'U3A64B58ePiklz283RxCjONPBc0oGFyaaM3N7FgnaaxHot5zPsnyAC79oSz7wjhDCQ5z2YTYb0ToBYyA', NULL, '2022-07-18 07:19:51');
INSERT INTO `views` VALUES (341, 'App\\Models\\Product', 3, 'U3A64B58ePiklz283RxCjONPBc0oGFyaaM3N7FgnaaxHot5zPsnyAC79oSz7wjhDCQ5z2YTYb0ToBYyA', NULL, '2022-07-18 07:31:33');
INSERT INTO `views` VALUES (342, 'App\\Models\\Product', 3, 'U3A64B58ePiklz283RxCjONPBc0oGFyaaM3N7FgnaaxHot5zPsnyAC79oSz7wjhDCQ5z2YTYb0ToBYyA', NULL, '2022-07-18 11:20:29');
INSERT INTO `views` VALUES (343, 'App\\Models\\Product', 3, 'U3A64B58ePiklz283RxCjONPBc0oGFyaaM3N7FgnaaxHot5zPsnyAC79oSz7wjhDCQ5z2YTYb0ToBYyA', NULL, '2022-07-18 11:20:29');
INSERT INTO `views` VALUES (344, 'App\\Models\\Product', 3, 'U3A64B58ePiklz283RxCjONPBc0oGFyaaM3N7FgnaaxHot5zPsnyAC79oSz7wjhDCQ5z2YTYb0ToBYyA', NULL, '2022-07-18 11:20:33');
INSERT INTO `views` VALUES (345, 'App\\Models\\Product', 3, 'U3A64B58ePiklz283RxCjONPBc0oGFyaaM3N7FgnaaxHot5zPsnyAC79oSz7wjhDCQ5z2YTYb0ToBYyA', NULL, '2022-07-18 11:48:13');
INSERT INTO `views` VALUES (346, 'App\\Models\\Product', 50, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-20 09:37:03');
INSERT INTO `views` VALUES (347, 'App\\Models\\Product', 50, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-20 09:37:07');
INSERT INTO `views` VALUES (348, 'App\\Models\\Product', 53, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-21 09:57:49');
INSERT INTO `views` VALUES (349, 'App\\Models\\Product', 53, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-21 09:57:50');
INSERT INTO `views` VALUES (350, 'App\\Models\\Product', 44, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-21 09:59:58');
INSERT INTO `views` VALUES (351, 'App\\Models\\Product', 53, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-21 10:00:20');
INSERT INTO `views` VALUES (352, 'App\\Models\\Product', 53, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-21 10:00:22');
INSERT INTO `views` VALUES (353, 'App\\Models\\Product', 19, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-21 10:02:08');
INSERT INTO `views` VALUES (354, 'App\\Models\\Product', 19, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-21 10:03:00');
INSERT INTO `views` VALUES (355, 'App\\Models\\Product', 19, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-21 10:03:31');
INSERT INTO `views` VALUES (356, 'App\\Models\\Product', 19, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-21 10:03:36');
INSERT INTO `views` VALUES (357, 'App\\Models\\Product', 19, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-21 10:03:47');
INSERT INTO `views` VALUES (358, 'App\\Models\\Product', 19, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-21 10:05:30');
INSERT INTO `views` VALUES (359, 'App\\Models\\Product', 19, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-21 10:05:38');
INSERT INTO `views` VALUES (360, 'App\\Models\\Product', 13, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-21 10:35:00');
INSERT INTO `views` VALUES (361, 'App\\Models\\Product', 13, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-21 10:35:02');
INSERT INTO `views` VALUES (362, 'App\\Models\\Product', 19, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-21 10:43:52');
INSERT INTO `views` VALUES (363, 'App\\Models\\Product', 19, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-21 10:43:53');
INSERT INTO `views` VALUES (364, 'App\\Models\\Product', 92, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-21 10:49:12');
INSERT INTO `views` VALUES (365, 'App\\Models\\Product', 92, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-21 10:49:14');
INSERT INTO `views` VALUES (366, 'App\\Models\\Product', 4, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-22 10:59:56');
INSERT INTO `views` VALUES (367, 'App\\Models\\Product', 4, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-22 10:59:57');
INSERT INTO `views` VALUES (368, 'App\\Models\\Product', 4, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-22 10:59:59');
INSERT INTO `views` VALUES (369, 'App\\Models\\Product', 11, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-22 11:00:06');
INSERT INTO `views` VALUES (370, 'App\\Models\\Product', 11, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-22 11:00:08');
INSERT INTO `views` VALUES (371, 'App\\Models\\Product', 11, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-22 11:01:48');
INSERT INTO `views` VALUES (372, 'App\\Models\\Product', 4, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-22 11:01:51');
INSERT INTO `views` VALUES (373, 'App\\Models\\Product', 4, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-22 11:02:50');
INSERT INTO `views` VALUES (374, 'App\\Models\\Product', 4, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-22 11:02:52');
INSERT INTO `views` VALUES (375, 'App\\Models\\Product', 11, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-22 11:03:13');
INSERT INTO `views` VALUES (376, 'App\\Models\\Product', 11, 'T9GcY7ICgUPAftaeOkjemvjW8ye6HRdb7eOjEY5pOf6lqTgeXsLfYwsl0aRV2xHS0Z8SYSWtxBeXkd6L', NULL, '2022-07-22 11:03:16');

SET FOREIGN_KEY_CHECKS = 1;
