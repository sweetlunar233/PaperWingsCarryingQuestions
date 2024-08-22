/*
 Navicat Premium Data Transfer

 Source Server         : paperplaneOld
 Source Server Type    : MySQL
 Source Server Version : 50718 (5.7.18-cynos-2.1.12-log)
 Source Host           : bj-cynosdbmysql-grp-g9kxigho.sql.tencentcdb.com:23531
 Source Schema         : db

 Target Server Type    : MySQL
 Target Server Version : 50718 (5.7.18-cynos-2.1.12-log)
 File Encoding         : 65001

 Date: 21/08/2024 21:55:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
drop database if exists db;
create database db;
use db;

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add other option', 7, 'add_otheroption');
INSERT INTO `auth_permission` VALUES (26, 'Can change other option', 7, 'change_otheroption');
INSERT INTO `auth_permission` VALUES (27, 'Can delete other option', 7, 'delete_otheroption');
INSERT INTO `auth_permission` VALUES (28, 'Can view other option', 7, 'view_otheroption');
INSERT INTO `auth_permission` VALUES (29, 'Can add template', 8, 'add_template');
INSERT INTO `auth_permission` VALUES (30, 'Can change template', 8, 'change_template');
INSERT INTO `auth_permission` VALUES (31, 'Can delete template', 8, 'delete_template');
INSERT INTO `auth_permission` VALUES (32, 'Can view template', 8, 'view_template');
INSERT INTO `auth_permission` VALUES (33, 'Can add reward offering', 9, 'add_rewardoffering');
INSERT INTO `auth_permission` VALUES (34, 'Can change reward offering', 9, 'change_rewardoffering');
INSERT INTO `auth_permission` VALUES (35, 'Can delete reward offering', 9, 'delete_rewardoffering');
INSERT INTO `auth_permission` VALUES (36, 'Can view reward offering', 9, 'view_rewardoffering');
INSERT INTO `auth_permission` VALUES (37, 'Can add submission', 10, 'add_submission');
INSERT INTO `auth_permission` VALUES (38, 'Can change submission', 10, 'change_submission');
INSERT INTO `auth_permission` VALUES (39, 'Can delete submission', 10, 'delete_submission');
INSERT INTO `auth_permission` VALUES (40, 'Can view submission', 10, 'view_submission');
INSERT INTO `auth_permission` VALUES (41, 'Can add choice question', 11, 'add_choicequestion');
INSERT INTO `auth_permission` VALUES (42, 'Can change choice question', 11, 'change_choicequestion');
INSERT INTO `auth_permission` VALUES (43, 'Can delete choice question', 11, 'delete_choicequestion');
INSERT INTO `auth_permission` VALUES (44, 'Can view choice question', 11, 'view_choicequestion');
INSERT INTO `auth_permission` VALUES (45, 'Can add survey', 12, 'add_survey');
INSERT INTO `auth_permission` VALUES (46, 'Can change survey', 12, 'change_survey');
INSERT INTO `auth_permission` VALUES (47, 'Can delete survey', 12, 'delete_survey');
INSERT INTO `auth_permission` VALUES (48, 'Can view survey', 12, 'view_survey');
INSERT INTO `auth_permission` VALUES (49, 'Can add blank answer', 13, 'add_blankanswer');
INSERT INTO `auth_permission` VALUES (50, 'Can change blank answer', 13, 'change_blankanswer');
INSERT INTO `auth_permission` VALUES (51, 'Can delete blank answer', 13, 'delete_blankanswer');
INSERT INTO `auth_permission` VALUES (52, 'Can view blank answer', 13, 'view_blankanswer');
INSERT INTO `auth_permission` VALUES (53, 'Can add rating question', 14, 'add_ratingquestion');
INSERT INTO `auth_permission` VALUES (54, 'Can change rating question', 14, 'change_ratingquestion');
INSERT INTO `auth_permission` VALUES (55, 'Can delete rating question', 14, 'delete_ratingquestion');
INSERT INTO `auth_permission` VALUES (56, 'Can view rating question', 14, 'view_ratingquestion');
INSERT INTO `auth_permission` VALUES (57, 'Can add survey statistic', 15, 'add_surveystatistic');
INSERT INTO `auth_permission` VALUES (58, 'Can change survey statistic', 15, 'change_surveystatistic');
INSERT INTO `auth_permission` VALUES (59, 'Can delete survey statistic', 15, 'delete_surveystatistic');
INSERT INTO `auth_permission` VALUES (60, 'Can view survey statistic', 15, 'view_surveystatistic');
INSERT INTO `auth_permission` VALUES (61, 'Can add user reward record', 16, 'add_userrewardrecord');
INSERT INTO `auth_permission` VALUES (62, 'Can change user reward record', 16, 'change_userrewardrecord');
INSERT INTO `auth_permission` VALUES (63, 'Can delete user reward record', 16, 'delete_userrewardrecord');
INSERT INTO `auth_permission` VALUES (64, 'Can view user reward record', 16, 'view_userrewardrecord');
INSERT INTO `auth_permission` VALUES (65, 'Can add choice answer', 17, 'add_choiceanswer');
INSERT INTO `auth_permission` VALUES (66, 'Can change choice answer', 17, 'change_choiceanswer');
INSERT INTO `auth_permission` VALUES (67, 'Can delete choice answer', 17, 'delete_choiceanswer');
INSERT INTO `auth_permission` VALUES (68, 'Can view choice answer', 17, 'view_choiceanswer');
INSERT INTO `auth_permission` VALUES (69, 'Can add user', 18, 'add_user');
INSERT INTO `auth_permission` VALUES (70, 'Can change user', 18, 'change_user');
INSERT INTO `auth_permission` VALUES (71, 'Can delete user', 18, 'delete_user');
INSERT INTO `auth_permission` VALUES (72, 'Can view user', 18, 'view_user');
INSERT INTO `auth_permission` VALUES (73, 'Can add blank question', 19, 'add_blankquestion');
INSERT INTO `auth_permission` VALUES (74, 'Can change blank question', 19, 'change_blankquestion');
INSERT INTO `auth_permission` VALUES (75, 'Can delete blank question', 19, 'delete_blankquestion');
INSERT INTO `auth_permission` VALUES (76, 'Can view blank question', 19, 'view_blankquestion');
INSERT INTO `auth_permission` VALUES (77, 'Can add rating answer', 20, 'add_ratinganswer');
INSERT INTO `auth_permission` VALUES (78, 'Can change rating answer', 20, 'change_ratinganswer');
INSERT INTO `auth_permission` VALUES (79, 'Can delete rating answer', 20, 'delete_ratinganswer');
INSERT INTO `auth_permission` VALUES (80, 'Can view rating answer', 20, 'view_ratinganswer');
INSERT INTO `auth_permission` VALUES (81, 'Can add choice option', 21, 'add_choiceoption');
INSERT INTO `auth_permission` VALUES (82, 'Can change choice option', 21, 'change_choiceoption');
INSERT INTO `auth_permission` VALUES (83, 'Can delete choice option', 21, 'delete_choiceoption');
INSERT INTO `auth_permission` VALUES (84, 'Can view choice option', 21, 'view_choiceoption');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (13, 'user', 'blankanswer');
INSERT INTO `django_content_type` VALUES (19, 'user', 'blankquestion');
INSERT INTO `django_content_type` VALUES (17, 'user', 'choiceanswer');
INSERT INTO `django_content_type` VALUES (21, 'user', 'choiceoption');
INSERT INTO `django_content_type` VALUES (11, 'user', 'choicequestion');
INSERT INTO `django_content_type` VALUES (7, 'user', 'otheroption');
INSERT INTO `django_content_type` VALUES (20, 'user', 'ratinganswer');
INSERT INTO `django_content_type` VALUES (14, 'user', 'ratingquestion');
INSERT INTO `django_content_type` VALUES (9, 'user', 'rewardoffering');
INSERT INTO `django_content_type` VALUES (10, 'user', 'submission');
INSERT INTO `django_content_type` VALUES (12, 'user', 'survey');
INSERT INTO `django_content_type` VALUES (15, 'user', 'surveystatistic');
INSERT INTO `django_content_type` VALUES (8, 'user', 'template');
INSERT INTO `django_content_type` VALUES (18, 'user', 'user');
INSERT INTO `django_content_type` VALUES (16, 'user', 'userrewardrecord');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-06-10 13:09:15.133336');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2024-06-10 13:09:16.949176');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2024-06-10 13:09:17.520616');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-06-10 13:09:17.600670');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-10 13:09:17.683690');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-06-10 13:09:17.948001');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2024-06-10 13:09:18.068257');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2024-06-10 13:09:18.208558');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2024-06-10 13:09:18.292418');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2024-06-10 13:09:18.420957');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2024-06-10 13:09:18.479972');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2024-06-10 13:09:18.547790');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2024-06-10 13:09:18.756969');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2024-06-10 13:09:18.886619');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2024-06-10 13:09:19.003511');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2024-06-10 13:09:19.199754');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2024-06-10 13:09:19.332475');
INSERT INTO `django_migrations` VALUES (18, 'sessions', '0001_initial', '2024-06-10 13:09:19.639395');
INSERT INTO `django_migrations` VALUES (19, 'user', '0001_initial', '2024-06-10 13:13:02.704589');
INSERT INTO `django_migrations` VALUES (20, 'user', '0002_auto_20240609_0921', '2024-06-10 13:58:29.637944');
INSERT INTO `django_migrations` VALUES (21, 'user', '0003_alter_survey_is_released', '2024-06-10 13:58:29.713657');
INSERT INTO `django_migrations` VALUES (22, 'user', '0004_alter_survey_is_released', '2024-06-10 13:58:29.817314');
INSERT INTO `django_migrations` VALUES (23, 'user', '0002_auto_20240816_0334', '2024-08-16 03:35:06.597120');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

-- ----------------------------
-- Table structure for user_blankanswer
-- ----------------------------
DROP TABLE IF EXISTS `user_blankanswer`;
CREATE TABLE `user_blankanswer`  (
  `AnswerID` int(11) NOT NULL AUTO_INCREMENT,
  `Content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Question_id` int(11) NOT NULL,
  `Submission_id` int(11) NOT NULL,
  PRIMARY KEY (`AnswerID`) USING BTREE,
  INDEX `user_blankanswer_Question_id_625afceb_fk_user_blan`(`Question_id`) USING BTREE,
  INDEX `user_blankanswer_Submission_id_e93a8659_fk_user_subm`(`Submission_id`) USING BTREE,
  CONSTRAINT `user_blankanswer_Question_id_625afceb_fk_user_blan` FOREIGN KEY (`Question_id`) REFERENCES `user_blankquestion` (`QuestionID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_blankanswer_Submission_id_e93a8659_fk_user_subm` FOREIGN KEY (`Submission_id`) REFERENCES `user_submission` (`SubmissionID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 332 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_blankanswer
-- ----------------------------
INSERT INTO `user_blankanswer` VALUES (312, '300000', 197, 311);
INSERT INTO `user_blankanswer` VALUES (313, 'J.K罗琳', 198, 311);
INSERT INTO `user_blankanswer` VALUES (314, 'I=U/R', 199, 311);
INSERT INTO `user_blankanswer` VALUES (315, '1931', 200, 311);
INSERT INTO `user_blankanswer` VALUES (316, '欧亚大陆', 201, 311);
INSERT INTO `user_blankanswer` VALUES (325, '11', 167, 341);

-- ----------------------------
-- Table structure for user_blankquestion
-- ----------------------------
DROP TABLE IF EXISTS `user_blankquestion`;
CREATE TABLE `user_blankquestion`  (
  `QuestionID` int(11) NOT NULL AUTO_INCREMENT,
  `Text` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IsRequired` tinyint(1) NOT NULL,
  `QuestionNumber` int(11) NOT NULL,
  `Score` int(11) NULL DEFAULT NULL,
  `Category` int(11) NOT NULL,
  `CorrectAnswer` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Survey_id` int(11) NOT NULL,
  PRIMARY KEY (`QuestionID`) USING BTREE,
  INDEX `user_blankquestion_Survey_id_7028d567_fk_user_survey_SurveyID`(`Survey_id`) USING BTREE,
  CONSTRAINT `user_blankquestion_Survey_id_7028d567_fk_user_survey_SurveyID` FOREIGN KEY (`Survey_id`) REFERENCES `user_survey` (`SurveyID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 244 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_blankquestion
-- ----------------------------
INSERT INTO `user_blankquestion` VALUES (3, '姓名', 1, 1, 0, 3, '', 1);
INSERT INTO `user_blankquestion` VALUES (4, '学号', 1, 2, 0, 3, '', 1);
INSERT INTO `user_blankquestion` VALUES (167, '请填空', 1, 4, 0, 3, '', 284);
INSERT INTO `user_blankquestion` VALUES (169, '我们有哪些方面需要改进？', 0, 5, 0, 3, '', 291);
INSERT INTO `user_blankquestion` VALUES (170, '你的姓名', 1, 1, 0, 3, '', 292);
INSERT INTO `user_blankquestion` VALUES (171, '联系方式', 1, 2, 0, 3, '', 292);
INSERT INTO `user_blankquestion` VALUES (172, '您希望我们推出哪些新产品或服务', 1, 11, 0, 3, '', 294);
INSERT INTO `user_blankquestion` VALUES (173, '请描述您对我们公司最满意的方面：', 1, 15, 0, 3, '', 294);
INSERT INTO `user_blankquestion` VALUES (174, '请描述您对我们公司最不满意的方面：', 1, 16, 0, 3, '', 294);
INSERT INTO `user_blankquestion` VALUES (175, '您对我们公司未来的发展有哪些建议或期望', 1, 17, 0, 3, '', 294);
INSERT INTO `user_blankquestion` VALUES (176, '姓名', 1, 1, 0, 3, '', 295);
INSERT INTO `user_blankquestion` VALUES (177, '性别', 1, 2, 0, 3, '', 295);
INSERT INTO `user_blankquestion` VALUES (178, '您的年龄', 1, 3, 0, 3, '', 295);
INSERT INTO `user_blankquestion` VALUES (179, '联系电话', 1, 4, 0, 3, '', 295);
INSERT INTO `user_blankquestion` VALUES (180, '电子邮件', 1, 5, 0, 3, '', 295);
INSERT INTO `user_blankquestion` VALUES (181, '是否有特殊需求或过敏情况：', 1, 6, 0, 3, '', 295);
INSERT INTO `user_blankquestion` VALUES (182, '紧急联系人姓名及电话', 1, 8, 0, 3, '', 295);
INSERT INTO `user_blankquestion` VALUES (183, '您的姓名', 0, 1, 0, 3, '', 296);
INSERT INTO `user_blankquestion` VALUES (184, '如果您选择了“其他”，请详细说明您建议的活动', 0, 6, 0, 3, '', 296);
INSERT INTO `user_blankquestion` VALUES (185, '您对您所选择的活动提案有何具体建议或改进意见', 1, 8, 0, 3, '', 296);
INSERT INTO `user_blankquestion` VALUES (186, '您对其他未列出的社区活动或提案有何建议', 1, 9, 0, 3, '', 296);
INSERT INTO `user_blankquestion` VALUES (187, '您还有其他想要分享的意见或建议吗', 0, 11, 0, 3, '', 296);
INSERT INTO `user_blankquestion` VALUES (188, '光的传播速度在真空中约为______米/秒。', 1, 6, 3, 3, '300000000', 297);
INSERT INTO `user_blankquestion` VALUES (189, '《哈利·波特》的作者是______。', 1, 7, 3, 3, 'J.K.罗琳', 297);
INSERT INTO `user_blankquestion` VALUES (190, '欧姆定律的公式是______。', 1, 8, 3, 3, 'I=U/R', 297);
INSERT INTO `user_blankquestion` VALUES (191, '第二次世界大战开始于______年。', 1, 9, 3, 3, '1939', 297);
INSERT INTO `user_blankquestion` VALUES (192, '地球上最大的大陆是______。', 1, 10, 3, 3, '欧亚大陆', 297);
INSERT INTO `user_blankquestion` VALUES (193, '您希望我们推出哪些新产品或服务', 1, 11, 0, 3, '', 299);
INSERT INTO `user_blankquestion` VALUES (194, '请描述您对我们公司最满意的方面：', 1, 15, 0, 3, '', 299);
INSERT INTO `user_blankquestion` VALUES (195, '请描述您对我们公司最不满意的方面：', 1, 16, 0, 3, '', 299);
INSERT INTO `user_blankquestion` VALUES (196, '您对我们公司未来的发展有哪些建议或期望', 1, 17, 0, 3, '', 299);
INSERT INTO `user_blankquestion` VALUES (197, '光的传播速度在真空中约为______米/秒。', 1, 6, 3, 3, '300000000', 300);
INSERT INTO `user_blankquestion` VALUES (198, '《哈利·波特》的作者是______。', 1, 7, 3, 3, 'J.K.罗琳', 300);
INSERT INTO `user_blankquestion` VALUES (199, '欧姆定律的公式是______。', 1, 8, 3, 3, 'I=U/R', 300);
INSERT INTO `user_blankquestion` VALUES (200, '第二次世界大战开始于______年。', 1, 9, 3, 3, '1939', 300);
INSERT INTO `user_blankquestion` VALUES (201, '地球上最大的大陆是______。', 1, 10, 3, 3, '欧亚大陆', 300);
INSERT INTO `user_blankquestion` VALUES (213, '姓名', 1, 1, 0, 3, '', 306);
INSERT INTO `user_blankquestion` VALUES (214, '性别', 1, 2, 0, 3, '', 306);
INSERT INTO `user_blankquestion` VALUES (215, '您的年龄', 1, 3, 0, 3, '', 306);
INSERT INTO `user_blankquestion` VALUES (216, '联系电话', 1, 4, 0, 3, '', 306);
INSERT INTO `user_blankquestion` VALUES (217, '电子邮件', 1, 5, 0, 3, '', 306);
INSERT INTO `user_blankquestion` VALUES (218, '是否有特殊需求或过敏情况：', 1, 6, 0, 3, '', 306);
INSERT INTO `user_blankquestion` VALUES (219, '紧急联系人姓名及电话', 1, 8, 0, 3, '', 306);
INSERT INTO `user_blankquestion` VALUES (229, '姓名', 1, 1, 0, 3, '', 315);
INSERT INTO `user_blankquestion` VALUES (230, '性别', 1, 2, 0, 3, '', 315);
INSERT INTO `user_blankquestion` VALUES (231, '您的年龄', 1, 3, 0, 3, '', 315);
INSERT INTO `user_blankquestion` VALUES (232, '联系电话', 1, 4, 0, 3, '', 315);
INSERT INTO `user_blankquestion` VALUES (233, '电子邮件', 1, 5, 0, 3, '', 315);
INSERT INTO `user_blankquestion` VALUES (234, '是否有特殊需求或过敏情况：', 1, 6, 0, 3, '', 315);
INSERT INTO `user_blankquestion` VALUES (235, '紧急联系人姓名及电话', 1, 8, 0, 3, '', 315);
INSERT INTO `user_blankquestion` VALUES (236, '请填空', 1, 10, 0, 3, '', 315);
INSERT INTO `user_blankquestion` VALUES (237, '请填空', 1, 11, 0, 3, '', 315);
INSERT INTO `user_blankquestion` VALUES (238, '你的姓名', 1, 1, 0, 3, '', 316);
INSERT INTO `user_blankquestion` VALUES (239, '联系方式', 1, 2, 0, 3, '', 316);
INSERT INTO `user_blankquestion` VALUES (240, '请填空', 1, 2, 0, 3, '', 317);

-- ----------------------------
-- Table structure for user_choiceanswer
-- ----------------------------
DROP TABLE IF EXISTS `user_choiceanswer`;
CREATE TABLE `user_choiceanswer`  (
  `AnswerID` int(11) NOT NULL AUTO_INCREMENT,
  `ChoiceOptions_id` int(11) NOT NULL,
  `Question_id` int(11) NOT NULL,
  `Submission_id` int(11) NOT NULL,
  PRIMARY KEY (`AnswerID`) USING BTREE,
  INDEX `user_choiceanswer_ChoiceOptions_id_85a9363a_fk_user_choi`(`ChoiceOptions_id`) USING BTREE,
  INDEX `user_choiceanswer_Question_id_a85f9e65_fk_user_choi`(`Question_id`) USING BTREE,
  INDEX `user_choiceanswer_Submission_id_8ee212ca_fk_user_subm`(`Submission_id`) USING BTREE,
  CONSTRAINT `user_choiceanswer_ChoiceOptions_id_85a9363a_fk_user_choi` FOREIGN KEY (`ChoiceOptions_id`) REFERENCES `user_choiceoption` (`OptionID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_choiceanswer_Question_id_a85f9e65_fk_user_choi` FOREIGN KEY (`Question_id`) REFERENCES `user_choicequestion` (`QuestionID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_choiceanswer_Submission_id_8ee212ca_fk_user_subm` FOREIGN KEY (`Submission_id`) REFERENCES `user_submission` (`SubmissionID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 589 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_choiceanswer
-- ----------------------------
INSERT INTO `user_choiceanswer` VALUES (549, 1036, 538, 311);
INSERT INTO `user_choiceanswer` VALUES (550, 1041, 539, 311);
INSERT INTO `user_choiceanswer` VALUES (551, 1046, 540, 311);
INSERT INTO `user_choiceanswer` VALUES (552, 1049, 541, 311);
INSERT INTO `user_choiceanswer` VALUES (553, 1052, 542, 311);
INSERT INTO `user_choiceanswer` VALUES (576, 818, 470, 341);
INSERT INTO `user_choiceanswer` VALUES (577, 820, 471, 341);

-- ----------------------------
-- Table structure for user_choiceoption
-- ----------------------------
DROP TABLE IF EXISTS `user_choiceoption`;
CREATE TABLE `user_choiceoption`  (
  `OptionID` int(11) NOT NULL AUTO_INCREMENT,
  `Text` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IsCorrect` tinyint(1) NULL DEFAULT NULL,
  `OptionNumber` int(11) NOT NULL,
  `Question_id` int(11) NOT NULL,
  `MaxSelectablePeople` int(11) NOT NULL,
  PRIMARY KEY (`OptionID`) USING BTREE,
  INDEX `user_choiceoption_Question_id_8a4432e3_fk_user_choi`(`Question_id`) USING BTREE,
  CONSTRAINT `user_choiceoption_Question_id_8a4432e3_fk_user_choi` FOREIGN KEY (`Question_id`) REFERENCES `user_choicequestion` (`QuestionID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1213 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_choiceoption
-- ----------------------------
INSERT INTO `user_choiceoption` VALUES (8, '选项', 0, 1, 4, -1);
INSERT INTO `user_choiceoption` VALUES (9, '睡袋', 0, 1, 5, -1);
INSERT INTO `user_choiceoption` VALUES (10, '防潮垫', 0, 2, 5, -1);
INSERT INTO `user_choiceoption` VALUES (11, '头灯', 0, 3, 5, -1);
INSERT INTO `user_choiceoption` VALUES (12, '登山杖', 0, 4, 5, -1);
INSERT INTO `user_choiceoption` VALUES (13, '是', 0, 1, 6, -1);
INSERT INTO `user_choiceoption` VALUES (14, '否', 0, 2, 6, -1);
INSERT INTO `user_choiceoption` VALUES (818, '选项', 0, 1, 470, -1);
INSERT INTO `user_choiceoption` VALUES (819, '选项', 0, 2, 470, -1);
INSERT INTO `user_choiceoption` VALUES (820, '选项', 0, 1, 471, -1);
INSERT INTO `user_choiceoption` VALUES (821, '选项', 0, 2, 471, -1);
INSERT INTO `user_choiceoption` VALUES (828, '123456', 0, 1, 476, -1);
INSERT INTO `user_choiceoption` VALUES (829, '654321', 0, 1, 477, -1);
INSERT INTO `user_choiceoption` VALUES (834, '非常满意', 0, 1, 482, -1);
INSERT INTO `user_choiceoption` VALUES (835, '满意', 0, 2, 482, -1);
INSERT INTO `user_choiceoption` VALUES (836, '比较满意', 0, 3, 482, -1);
INSERT INTO `user_choiceoption` VALUES (837, '不满意', 0, 4, 482, -1);
INSERT INTO `user_choiceoption` VALUES (838, '非常好', 0, 1, 483, -1);
INSERT INTO `user_choiceoption` VALUES (839, '比较好', 0, 2, 483, -1);
INSERT INTO `user_choiceoption` VALUES (840, '比较差', 0, 3, 483, -1);
INSERT INTO `user_choiceoption` VALUES (841, '非常差', 0, 4, 483, -1);
INSERT INTO `user_choiceoption` VALUES (842, '优良', 0, 1, 484, -1);
INSERT INTO `user_choiceoption` VALUES (843, '中等', 0, 2, 484, -1);
INSERT INTO `user_choiceoption` VALUES (844, '差', 0, 3, 484, -1);
INSERT INTO `user_choiceoption` VALUES (845, '是', 0, 1, 485, -1);
INSERT INTO `user_choiceoption` VALUES (846, '否', 0, 2, 485, -1);
INSERT INTO `user_choiceoption` VALUES (847, '狗', 0, 1, 486, -1);
INSERT INTO `user_choiceoption` VALUES (848, '猫', 0, 2, 486, -1);
INSERT INTO `user_choiceoption` VALUES (849, '兔子', 0, 3, 486, -1);
INSERT INTO `user_choiceoption` VALUES (850, '老虎', 0, 4, 486, -1);
INSERT INTO `user_choiceoption` VALUES (851, '熊', 0, 5, 486, -1);
INSERT INTO `user_choiceoption` VALUES (852, '仓鼠', 0, 6, 486, -1);
INSERT INTO `user_choiceoption` VALUES (853, '鸟', 0, 7, 486, -1);
INSERT INTO `user_choiceoption` VALUES (873, '18-24岁', 0, 1, 499, -1);
INSERT INTO `user_choiceoption` VALUES (874, '25-34岁', 0, 2, 499, -1);
INSERT INTO `user_choiceoption` VALUES (875, '35-44岁', 0, 3, 499, -1);
INSERT INTO `user_choiceoption` VALUES (876, '45-54岁', 0, 4, 499, -1);
INSERT INTO `user_choiceoption` VALUES (877, '55岁及以上', 0, 5, 499, -1);
INSERT INTO `user_choiceoption` VALUES (878, '男', 0, 1, 500, -1);
INSERT INTO `user_choiceoption` VALUES (879, '女', 0, 2, 500, -1);
INSERT INTO `user_choiceoption` VALUES (880, '其他', 0, 3, 500, -1);
INSERT INTO `user_choiceoption` VALUES (881, '不愿透露', 0, 4, 500, -1);
INSERT INTO `user_choiceoption` VALUES (882, '高中及以下', 0, 1, 501, -1);
INSERT INTO `user_choiceoption` VALUES (883, '大专', 0, 2, 501, -1);
INSERT INTO `user_choiceoption` VALUES (884, '本科', 0, 3, 501, -1);
INSERT INTO `user_choiceoption` VALUES (885, '硕士', 0, 4, 501, -1);
INSERT INTO `user_choiceoption` VALUES (886, '博士及以上', 0, 5, 501, -1);
INSERT INTO `user_choiceoption` VALUES (887, 'IT/科技', 0, 1, 502, -1);
INSERT INTO `user_choiceoption` VALUES (888, '金融/保险', 0, 2, 502, -1);
INSERT INTO `user_choiceoption` VALUES (889, '教育', 0, 3, 502, -1);
INSERT INTO `user_choiceoption` VALUES (890, '医疗/健康', 0, 4, 502, -1);
INSERT INTO `user_choiceoption` VALUES (891, '零售/消费品', 0, 5, 502, -1);
INSERT INTO `user_choiceoption` VALUES (892, '其他', 0, 6, 502, -1);
INSERT INTO `user_choiceoption` VALUES (893, '实体店', 0, 1, 503, -1);
INSERT INTO `user_choiceoption` VALUES (894, '在线商店', 0, 2, 503, -1);
INSERT INTO `user_choiceoption` VALUES (895, '手机应用', 0, 3, 503, -1);
INSERT INTO `user_choiceoption` VALUES (896, '社交媒体平台', 0, 4, 503, -1);
INSERT INTO `user_choiceoption` VALUES (897, '其他', 0, 5, 503, -1);
INSERT INTO `user_choiceoption` VALUES (898, '500元以下', 0, 1, 504, -1);
INSERT INTO `user_choiceoption` VALUES (899, '500-1000元', 0, 2, 504, -1);
INSERT INTO `user_choiceoption` VALUES (900, '1000-2000元', 0, 3, 504, -1);
INSERT INTO `user_choiceoption` VALUES (901, '2000元以上', 0, 4, 504, -1);
INSERT INTO `user_choiceoption` VALUES (902, '价格', 0, 1, 505, -1);
INSERT INTO `user_choiceoption` VALUES (903, '品质', 0, 2, 505, -1);
INSERT INTO `user_choiceoption` VALUES (904, '品牌', 0, 3, 505, -1);
INSERT INTO `user_choiceoption` VALUES (905, '功能', 0, 4, 505, -1);
INSERT INTO `user_choiceoption` VALUES (906, '外观', 0, 5, 505, -1);
INSERT INTO `user_choiceoption` VALUES (907, '产品评价', 0, 1, 506, -1);
INSERT INTO `user_choiceoption` VALUES (908, '推荐', 0, 2, 506, -1);
INSERT INTO `user_choiceoption` VALUES (909, '广告宣传', 0, 3, 506, -1);
INSERT INTO `user_choiceoption` VALUES (910, '价格折扣', 0, 4, 506, -1);
INSERT INTO `user_choiceoption` VALUES (911, '功能', 0, 1, 507, -1);
INSERT INTO `user_choiceoption` VALUES (912, '性能', 0, 2, 507, -1);
INSERT INTO `user_choiceoption` VALUES (913, '客户服务', 0, 3, 507, -1);
INSERT INTO `user_choiceoption` VALUES (914, '价格', 0, 4, 507, -1);
INSERT INTO `user_choiceoption` VALUES (915, '质量', 0, 5, 507, -1);
INSERT INTO `user_choiceoption` VALUES (916, '技术创新', 0, 1, 508, -1);
INSERT INTO `user_choiceoption` VALUES (917, '价格变化', 0, 2, 508, -1);
INSERT INTO `user_choiceoption` VALUES (918, '消费者偏好变化', 0, 3, 508, -1);
INSERT INTO `user_choiceoption` VALUES (919, '经济形势', 0, 4, 508, -1);
INSERT INTO `user_choiceoption` VALUES (920, '政策法规', 0, 5, 508, -1);
INSERT INTO `user_choiceoption` VALUES (921, '其他', 0, 6, 508, -1);
INSERT INTO `user_choiceoption` VALUES (922, '非常强劲', 0, 1, 509, -1);
INSERT INTO `user_choiceoption` VALUES (923, '较强', 0, 2, 509, -1);
INSERT INTO `user_choiceoption` VALUES (924, '一般', 0, 3, 509, -1);
INSERT INTO `user_choiceoption` VALUES (925, '较弱', 0, 4, 509, -1);
INSERT INTO `user_choiceoption` VALUES (926, '非常弱', 0, 5, 509, -1);
INSERT INTO `user_choiceoption` VALUES (927, '是', 0, 1, 510, -1);
INSERT INTO `user_choiceoption` VALUES (928, '否', 0, 2, 510, -1);
INSERT INTO `user_choiceoption` VALUES (929, '是', 0, 1, 511, -1);
INSERT INTO `user_choiceoption` VALUES (930, '否', 0, 2, 511, -1);
INSERT INTO `user_choiceoption` VALUES (931, '初级编程（适合初学者）', 0, 1, 512, 30);
INSERT INTO `user_choiceoption` VALUES (932, '中级编程（已有基础）', 0, 2, 512, 30);
INSERT INTO `user_choiceoption` VALUES (933, '高级编程（进阶学习）', 0, 3, 512, 30);
INSERT INTO `user_choiceoption` VALUES (934, '18-24岁', 0, 1, 513, -1);
INSERT INTO `user_choiceoption` VALUES (935, '25-34岁', 0, 2, 513, -1);
INSERT INTO `user_choiceoption` VALUES (936, '35-44岁', 0, 3, 513, -1);
INSERT INTO `user_choiceoption` VALUES (937, '45-54岁', 0, 4, 513, -1);
INSERT INTO `user_choiceoption` VALUES (938, '55岁及以上', 0, 5, 513, -1);
INSERT INTO `user_choiceoption` VALUES (939, '男', 0, 1, 514, -1);
INSERT INTO `user_choiceoption` VALUES (940, '女', 0, 2, 514, -1);
INSERT INTO `user_choiceoption` VALUES (941, '不愿透露', 0, 3, 514, -1);
INSERT INTO `user_choiceoption` VALUES (942, '社区A', 0, 1, 515, -1);
INSERT INTO `user_choiceoption` VALUES (943, '社区B', 0, 2, 515, -1);
INSERT INTO `user_choiceoption` VALUES (944, '社区C', 0, 3, 515, -1);
INSERT INTO `user_choiceoption` VALUES (945, '社区园艺活动：组织社区成员共同参与园艺种植，提升社区绿化美化。', 0, 1, 516, -1);
INSERT INTO `user_choiceoption` VALUES (946, '健康讲座系列：邀请专家举办健康讲座，普及健康知识，提高居民的健康意识。', 0, 2, 516, -1);
INSERT INTO `user_choiceoption` VALUES (947, '青少年科技夏令营：为青少年提供科技相关的教育和实践机会，激发他们的创新思维。', 0, 3, 516, -1);
INSERT INTO `user_choiceoption` VALUES (948, '年度文化节：举办一年一度的文化节活动，展示社区多元文化和艺术才能。年度文化节：举办一年一度的文化节活动，展示社区多元文化和艺术才能。', 0, 4, 516, -1);
INSERT INTO `user_choiceoption` VALUES (949, '社区运动会：组织社区运动会，鼓励居民参与体育活动，增强体质和团队合作精神。', 0, 5, 516, -1);
INSERT INTO `user_choiceoption` VALUES (950, '其他（请在下方说明）', 0, 6, 516, -1);
INSERT INTO `user_choiceoption` VALUES (951, '提高社区凝聚力', 0, 1, 517, -1);
INSERT INTO `user_choiceoption` VALUES (952, '促进居民健康', 0, 2, 517, -1);
INSERT INTO `user_choiceoption` VALUES (953, '丰富社区文化生活', 0, 3, 517, -1);
INSERT INTO `user_choiceoption` VALUES (954, '激发青少年兴趣', 0, 4, 517, -1);
INSERT INTO `user_choiceoption` VALUES (955, '提升社区环境', 0, 5, 517, -1);
INSERT INTO `user_choiceoption` VALUES (956, '水和盐', 1, 1, 518, -1);
INSERT INTO `user_choiceoption` VALUES (957, '氧气和盐', 0, 2, 518, -1);
INSERT INTO `user_choiceoption` VALUES (958, '水和二氧化碳', 0, 3, 518, -1);
INSERT INTO `user_choiceoption` VALUES (959, '氧气和氢气', 0, 4, 518, -1);
INSERT INTO `user_choiceoption` VALUES (960, 'Huge', 0, 1, 519, -1);
INSERT INTO `user_choiceoption` VALUES (961, 'Tiny', 1, 2, 519, -1);
INSERT INTO `user_choiceoption` VALUES (962, 'Bright', 0, 3, 519, -1);
INSERT INTO `user_choiceoption` VALUES (963, 'Loud', 0, 4, 519, -1);
INSERT INTO `user_choiceoption` VALUES (964, '24小时', 0, 1, 520, -1);
INSERT INTO `user_choiceoption` VALUES (965, '30天', 0, 2, 520, -1);
INSERT INTO `user_choiceoption` VALUES (966, '365天', 1, 3, 520, -1);
INSERT INTO `user_choiceoption` VALUES (967, '1000天', 0, 4, 520, -1);
INSERT INTO `user_choiceoption` VALUES (968, '直接核酸', 0, 1, 521, -1);
INSERT INTO `user_choiceoption` VALUES (969, '脱氧核糖核酸', 1, 2, 521, -1);
INSERT INTO `user_choiceoption` VALUES (970, '脱氧糖核酸', 0, 3, 521, -1);
INSERT INTO `user_choiceoption` VALUES (971, '直接核糖核酸', 0, 4, 521, -1);
INSERT INTO `user_choiceoption` VALUES (972, 'x = 2', 1, 1, 522, -1);
INSERT INTO `user_choiceoption` VALUES (973, 'x = −2', 0, 2, 522, -1);
INSERT INTO `user_choiceoption` VALUES (974, 'x = 4', 0, 3, 522, -1);
INSERT INTO `user_choiceoption` VALUES (975, 'x = 0', 0, 4, 522, -1);
INSERT INTO `user_choiceoption` VALUES (978, '18-24岁', 0, 1, 525, -1);
INSERT INTO `user_choiceoption` VALUES (979, '25-34岁', 0, 2, 525, -1);
INSERT INTO `user_choiceoption` VALUES (980, '35-44岁', 0, 3, 525, -1);
INSERT INTO `user_choiceoption` VALUES (981, '45-54岁', 0, 4, 525, -1);
INSERT INTO `user_choiceoption` VALUES (982, '55岁及以上', 0, 5, 525, -1);
INSERT INTO `user_choiceoption` VALUES (983, '男', 0, 1, 526, -1);
INSERT INTO `user_choiceoption` VALUES (984, '女', 0, 2, 526, -1);
INSERT INTO `user_choiceoption` VALUES (985, '其他', 0, 3, 526, -1);
INSERT INTO `user_choiceoption` VALUES (986, '不愿透露', 0, 4, 526, -1);
INSERT INTO `user_choiceoption` VALUES (987, '高中及以下', 0, 1, 527, -1);
INSERT INTO `user_choiceoption` VALUES (988, '大专', 0, 2, 527, -1);
INSERT INTO `user_choiceoption` VALUES (989, '本科', 0, 3, 527, -1);
INSERT INTO `user_choiceoption` VALUES (990, '硕士', 0, 4, 527, -1);
INSERT INTO `user_choiceoption` VALUES (991, '博士及以上', 0, 5, 527, -1);
INSERT INTO `user_choiceoption` VALUES (992, 'IT/科技', 0, 1, 528, -1);
INSERT INTO `user_choiceoption` VALUES (993, '金融/保险', 0, 2, 528, -1);
INSERT INTO `user_choiceoption` VALUES (994, '教育', 0, 3, 528, -1);
INSERT INTO `user_choiceoption` VALUES (995, '医疗/健康', 0, 4, 528, -1);
INSERT INTO `user_choiceoption` VALUES (996, '零售/消费品', 0, 5, 528, -1);
INSERT INTO `user_choiceoption` VALUES (997, '其他', 0, 6, 528, -1);
INSERT INTO `user_choiceoption` VALUES (998, '实体店', 0, 1, 529, -1);
INSERT INTO `user_choiceoption` VALUES (999, '在线商店', 0, 2, 529, -1);
INSERT INTO `user_choiceoption` VALUES (1000, '手机应用', 0, 3, 529, -1);
INSERT INTO `user_choiceoption` VALUES (1001, '社交媒体平台', 0, 4, 529, -1);
INSERT INTO `user_choiceoption` VALUES (1002, '其他', 0, 5, 529, -1);
INSERT INTO `user_choiceoption` VALUES (1003, '500元以下', 0, 1, 530, -1);
INSERT INTO `user_choiceoption` VALUES (1004, '500-1000元', 0, 2, 530, -1);
INSERT INTO `user_choiceoption` VALUES (1005, '1000-2000元', 0, 3, 530, -1);
INSERT INTO `user_choiceoption` VALUES (1006, '2000元以上', 0, 4, 530, -1);
INSERT INTO `user_choiceoption` VALUES (1007, '价格', 0, 1, 531, -1);
INSERT INTO `user_choiceoption` VALUES (1008, '品质', 0, 2, 531, -1);
INSERT INTO `user_choiceoption` VALUES (1009, '品牌', 0, 3, 531, -1);
INSERT INTO `user_choiceoption` VALUES (1010, '功能', 0, 4, 531, -1);
INSERT INTO `user_choiceoption` VALUES (1011, '外观', 0, 5, 531, -1);
INSERT INTO `user_choiceoption` VALUES (1012, '产品评价', 0, 1, 532, -1);
INSERT INTO `user_choiceoption` VALUES (1013, '推荐', 0, 2, 532, -1);
INSERT INTO `user_choiceoption` VALUES (1014, '广告宣传', 0, 3, 532, -1);
INSERT INTO `user_choiceoption` VALUES (1015, '价格折扣', 0, 4, 532, -1);
INSERT INTO `user_choiceoption` VALUES (1016, '功能', 0, 1, 533, -1);
INSERT INTO `user_choiceoption` VALUES (1017, '性能', 0, 2, 533, -1);
INSERT INTO `user_choiceoption` VALUES (1018, '客户服务', 0, 3, 533, -1);
INSERT INTO `user_choiceoption` VALUES (1019, '价格', 0, 4, 533, -1);
INSERT INTO `user_choiceoption` VALUES (1020, '质量', 0, 5, 533, -1);
INSERT INTO `user_choiceoption` VALUES (1021, '技术创新', 0, 1, 534, -1);
INSERT INTO `user_choiceoption` VALUES (1022, '价格变化', 0, 2, 534, -1);
INSERT INTO `user_choiceoption` VALUES (1023, '消费者偏好变化', 0, 3, 534, -1);
INSERT INTO `user_choiceoption` VALUES (1024, '经济形势', 0, 4, 534, -1);
INSERT INTO `user_choiceoption` VALUES (1025, '政策法规', 0, 5, 534, -1);
INSERT INTO `user_choiceoption` VALUES (1026, '其他', 0, 6, 534, -1);
INSERT INTO `user_choiceoption` VALUES (1027, '非常强劲', 0, 1, 535, -1);
INSERT INTO `user_choiceoption` VALUES (1028, '较强', 0, 2, 535, -1);
INSERT INTO `user_choiceoption` VALUES (1029, '一般', 0, 3, 535, -1);
INSERT INTO `user_choiceoption` VALUES (1030, '较弱', 0, 4, 535, -1);
INSERT INTO `user_choiceoption` VALUES (1031, '非常弱', 0, 5, 535, -1);
INSERT INTO `user_choiceoption` VALUES (1032, '是', 0, 1, 536, -1);
INSERT INTO `user_choiceoption` VALUES (1033, '否', 0, 2, 536, -1);
INSERT INTO `user_choiceoption` VALUES (1034, '是', 0, 1, 537, -1);
INSERT INTO `user_choiceoption` VALUES (1035, '否', 0, 2, 537, -1);
INSERT INTO `user_choiceoption` VALUES (1036, '水和盐', 1, 1, 538, -1);
INSERT INTO `user_choiceoption` VALUES (1037, '氧气和盐', 0, 2, 538, -1);
INSERT INTO `user_choiceoption` VALUES (1038, '水和二氧化碳', 0, 3, 538, -1);
INSERT INTO `user_choiceoption` VALUES (1039, '氧气和氢气', 0, 4, 538, -1);
INSERT INTO `user_choiceoption` VALUES (1040, 'Huge', 0, 1, 539, -1);
INSERT INTO `user_choiceoption` VALUES (1041, 'Tiny', 1, 2, 539, -1);
INSERT INTO `user_choiceoption` VALUES (1042, 'Bright', 0, 3, 539, -1);
INSERT INTO `user_choiceoption` VALUES (1043, 'Loud', 0, 4, 539, -1);
INSERT INTO `user_choiceoption` VALUES (1044, '24小时', 0, 1, 540, -1);
INSERT INTO `user_choiceoption` VALUES (1045, '30天', 0, 2, 540, -1);
INSERT INTO `user_choiceoption` VALUES (1046, '365天', 1, 3, 540, -1);
INSERT INTO `user_choiceoption` VALUES (1047, '1000天', 0, 4, 540, -1);
INSERT INTO `user_choiceoption` VALUES (1048, '直接核酸', 0, 1, 541, -1);
INSERT INTO `user_choiceoption` VALUES (1049, '脱氧核糖核酸', 1, 2, 541, -1);
INSERT INTO `user_choiceoption` VALUES (1050, '脱氧糖核酸', 0, 3, 541, -1);
INSERT INTO `user_choiceoption` VALUES (1051, '直接核糖核酸', 0, 4, 541, -1);
INSERT INTO `user_choiceoption` VALUES (1052, 'x = 2', 1, 1, 542, -1);
INSERT INTO `user_choiceoption` VALUES (1053, 'x = −2', 0, 2, 542, -1);
INSERT INTO `user_choiceoption` VALUES (1054, 'x = 4', 0, 3, 542, -1);
INSERT INTO `user_choiceoption` VALUES (1055, 'x = 0', 0, 4, 542, -1);
INSERT INTO `user_choiceoption` VALUES (1086, '偏向于拘紧地想象即将来临的约会，只期待让它自然地发生。', 0, 1, 558, -1);
INSERT INTO `user_choiceoption` VALUES (1087, '偏向于去想象一大堆关于即将来临之约会的事情。', 0, 2, 558, -1);
INSERT INTO `user_choiceoption` VALUES (1088, '我自己的想法。', 0, 1, 559, -1);
INSERT INTO `user_choiceoption` VALUES (1089, '别人。', 0, 2, 559, -1);
INSERT INTO `user_choiceoption` VALUES (1090, '在夜晚开始的时候，我就疲倦了并且想回家。', 0, 1, 560, -1);
INSERT INTO `user_choiceoption` VALUES (1091, '夜色越深越有劲，一旦我开始投入，也许就是最晚离开的那一个。', 0, 2, 560, -1);
INSERT INTO `user_choiceoption` VALUES (1092, '待在家中与我的恋人做一些特别的事情，例如说观赏一部有趣的录像带并享用我最爱的外带食物。', 0, 1, 561, -1);
INSERT INTO `user_choiceoption` VALUES (1093, '与我的恋人到有很多人且社交活动频繁的地方。', 0, 2, 561, -1);
INSERT INTO `user_choiceoption` VALUES (1094, '较安静并保留，直到我觉得准备好了，才开始说话。', 0, 1, 562, -1);
INSERT INTO `user_choiceoption` VALUES (1095, '整体来说蛮健谈的。', 0, 2, 562, -1);
INSERT INTO `user_choiceoption` VALUES (1096, '透过私人的方式，例如婚恋网站、网络聊天、或是由亲密的朋友和家人介绍。', 0, 1, 563, -1);
INSERT INTO `user_choiceoption` VALUES (1097, '在公众场合，比如学习工作上、休闲活动中、或当朋友介绍我给他们的朋友时。', 0, 2, 563, -1);
INSERT INTO `user_choiceoption` VALUES (1098, '一些很亲密的朋友和一些认识的人。', 0, 1, 564, -1);
INSERT INTO `user_choiceoption` VALUES (1099, '很多认识的人和很亲密的朋友。', 0, 2, 564, -1);
INSERT INTO `user_choiceoption` VALUES (1100, '你能从自己的世界里面走出来一下吗？', 0, 1, 565, -1);
INSERT INTO `user_choiceoption` VALUES (1101, '你难道不可以安静一点吗？', 0, 2, 565, -1);
INSERT INTO `user_choiceoption` VALUES (1102, '我对目前状况实际认知。', 0, 1, 566, -1);
INSERT INTO `user_choiceoption` VALUES (1103, '我对有可能发生之事的想象和期望。', 0, 2, 566, -1);
INSERT INTO `user_choiceoption` VALUES (1104, '我直接的观察和现成的经验。', 0, 1, 567, -1);
INSERT INTO `user_choiceoption` VALUES (1105, '我的直觉。', 0, 2, 567, -1);
INSERT INTO `user_choiceoption` VALUES (1106, '若它没有被破坏，别修补它。', 0, 1, 568, -1);
INSERT INTO `user_choiceoption` VALUES (1107, '经常联络，因为永远有进步的空间。', 0, 2, 568, -1);
INSERT INTO `user_choiceoption` VALUES (1108, '实际的，具体的，关于「此时此地」的事物。例如说，我也许会在餐后谈论品酒的好方法，或我即将要参加的新奇旅程。', 0, 1, 569, -1);
INSERT INTO `user_choiceoption` VALUES (1109, '未来，关于改进或发明事物，和生活的种种可能性。例如说，我也许会谈论一个新的科学发明，或一个更好的方法来表达我的感受。', 0, 2, 569, -1);
INSERT INTO `user_choiceoption` VALUES (1110, '先掌握细节。', 0, 1, 570, -1);
INSERT INTO `user_choiceoption` VALUES (1111, '先看整个大局面。', 0, 2, 570, -1);
INSERT INTO `user_choiceoption` VALUES (1112, '与其活在虚无缥缈的精神世界，我选择活在现实中。', 0, 1, 571, -1);
INSERT INTO `user_choiceoption` VALUES (1113, '与其活在不完美的现实中，我选择活在我的精神世界里。', 0, 2, 571, -1);
INSERT INTO `user_choiceoption` VALUES (1114, '喜欢同时进行好几件事情。', 0, 1, 572, -1);
INSERT INTO `user_choiceoption` VALUES (1115, '喜欢在一个时间里专心于一件事情直到完成。', 0, 2, 572, -1);
INSERT INTO `user_choiceoption` VALUES (1132, '偏向于拘紧地想象即将来临的约会，只期待让它自然地发生。', 0, 1, 587, -1);
INSERT INTO `user_choiceoption` VALUES (1133, '偏向于去想象一大堆关于即将来临之约会的事情。', 0, 2, 587, -1);
INSERT INTO `user_choiceoption` VALUES (1134, '在夜晚开始的时候，我就疲倦了并且想回家。', 0, 1, 588, -1);
INSERT INTO `user_choiceoption` VALUES (1135, '夜色越深越有劲，一旦我开始投入，也许就是最晚离开的那一个。', 0, 2, 588, -1);
INSERT INTO `user_choiceoption` VALUES (1136, '待在家中与我的恋人做一些特别的事情，例如说观赏一部有趣的录像带并享用我最爱的外带食物。', 0, 1, 589, -1);
INSERT INTO `user_choiceoption` VALUES (1137, '与我的恋人到有很多人且社交活动频繁的地方。', 0, 2, 589, -1);
INSERT INTO `user_choiceoption` VALUES (1138, '较安静并保留，直到我觉得准备好了，才开始说话。', 0, 1, 590, -1);
INSERT INTO `user_choiceoption` VALUES (1139, '整体来说蛮健谈的。', 0, 2, 590, -1);
INSERT INTO `user_choiceoption` VALUES (1140, '透过私人的方式，例如婚恋网站、网络聊天、或是由亲密的朋友和家人介绍。', 0, 1, 591, -1);
INSERT INTO `user_choiceoption` VALUES (1141, '在公众场合，比如学习工作上、休闲活动中、或当朋友介绍我给他们的朋友时。', 0, 2, 591, -1);
INSERT INTO `user_choiceoption` VALUES (1142, '一些很亲密的朋友和一些认识的人。', 0, 1, 592, -1);
INSERT INTO `user_choiceoption` VALUES (1143, '很多认识的人和很亲密的朋友。', 0, 2, 592, -1);
INSERT INTO `user_choiceoption` VALUES (1144, '你能从自己的世界里面走出来一下吗？', 0, 1, 593, -1);
INSERT INTO `user_choiceoption` VALUES (1145, '你难道不可以安静一点吗？', 0, 2, 593, -1);
INSERT INTO `user_choiceoption` VALUES (1146, '我对目前状况实际认知。', 0, 1, 594, -1);
INSERT INTO `user_choiceoption` VALUES (1147, '我对有可能发生之事的想象和期望。', 0, 2, 594, -1);
INSERT INTO `user_choiceoption` VALUES (1148, '我直接的观察和现成的经验。', 0, 1, 595, -1);
INSERT INTO `user_choiceoption` VALUES (1149, '我的直觉。', 0, 2, 595, -1);
INSERT INTO `user_choiceoption` VALUES (1150, '若它没有被破坏，别修补它。', 0, 1, 596, -1);
INSERT INTO `user_choiceoption` VALUES (1151, '经常联络，因为永远有进步的空间。', 0, 2, 596, -1);
INSERT INTO `user_choiceoption` VALUES (1152, '实际的，具体的，关于「此时此地」的事物。例如说，我也许会在餐后谈论品酒的好方法，或我即将要参加的新奇旅程。', 0, 1, 597, -1);
INSERT INTO `user_choiceoption` VALUES (1153, '未来，关于改进或发明事物，和生活的种种可能性。例如说，我也许会谈论一个新的科学发明，或一个更好的方法来表达我的感受。', 0, 2, 597, -1);
INSERT INTO `user_choiceoption` VALUES (1154, '先掌握细节。', 0, 1, 598, -1);
INSERT INTO `user_choiceoption` VALUES (1155, '先看整个大局面。', 0, 2, 598, -1);
INSERT INTO `user_choiceoption` VALUES (1156, '与其活在虚无缥缈的精神世界，我选择活在现实中。', 0, 1, 599, -1);
INSERT INTO `user_choiceoption` VALUES (1157, '与其活在不完美的现实中，我选择活在我的精神世界里。', 0, 2, 599, -1);
INSERT INTO `user_choiceoption` VALUES (1158, '喜欢同时进行好几件事情。', 0, 1, 600, -1);
INSERT INTO `user_choiceoption` VALUES (1159, '喜欢在一个时间里专心于一件事情直到完成。', 0, 2, 600, -1);
INSERT INTO `user_choiceoption` VALUES (1169, '初级编程（适合初学者）', 0, 1, 604, 30);
INSERT INTO `user_choiceoption` VALUES (1170, '中级编程（已有基础）', 0, 2, 604, 30);
INSERT INTO `user_choiceoption` VALUES (1171, '高级编程（进阶学习）', 0, 3, 604, 30);
INSERT INTO `user_choiceoption` VALUES (1188, '初级编程（适合初学者）', 0, 1, 614, 30);
INSERT INTO `user_choiceoption` VALUES (1189, '中级编程（已有基础）', 0, 2, 614, 30);
INSERT INTO `user_choiceoption` VALUES (1190, '高级编程（进阶学习）', 0, 3, 614, 30);
INSERT INTO `user_choiceoption` VALUES (1191, '选项', 0, 1, 615, 1);
INSERT INTO `user_choiceoption` VALUES (1192, '选项', 0, 1, 616, 1);
INSERT INTO `user_choiceoption` VALUES (1193, '选项', 0, 2, 616, -1);
INSERT INTO `user_choiceoption` VALUES (1194, '选项', 0, 3, 616, -1);
INSERT INTO `user_choiceoption` VALUES (1195, '选项', 0, 4, 616, -1);
INSERT INTO `user_choiceoption` VALUES (1196, '是', 0, 1, 617, -1);
INSERT INTO `user_choiceoption` VALUES (1197, '否', 0, 2, 617, -1);
INSERT INTO `user_choiceoption` VALUES (1198, '狗', 0, 1, 618, -1);
INSERT INTO `user_choiceoption` VALUES (1199, '猫', 0, 2, 618, -1);
INSERT INTO `user_choiceoption` VALUES (1200, '兔子', 0, 3, 618, -1);
INSERT INTO `user_choiceoption` VALUES (1201, '老虎', 0, 4, 618, -1);
INSERT INTO `user_choiceoption` VALUES (1202, '熊', 0, 5, 618, -1);
INSERT INTO `user_choiceoption` VALUES (1203, '仓鼠', 0, 6, 618, -1);
INSERT INTO `user_choiceoption` VALUES (1204, '鸟', 0, 7, 618, -1);
INSERT INTO `user_choiceoption` VALUES (1205, '选项', 0, 1, 619, -1);

-- ----------------------------
-- Table structure for user_choicequestion
-- ----------------------------
DROP TABLE IF EXISTS `user_choicequestion`;
CREATE TABLE `user_choicequestion`  (
  `QuestionID` int(11) NOT NULL AUTO_INCREMENT,
  `Text` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IsRequired` tinyint(1) NOT NULL,
  `QuestionNumber` int(11) NOT NULL,
  `Score` int(11) NULL DEFAULT NULL,
  `Category` int(11) NOT NULL,
  `MaxSelectable` int(11) NULL DEFAULT NULL,
  `OptionCnt` int(11) NOT NULL,
  `Survey_id` int(11) NOT NULL,
  PRIMARY KEY (`QuestionID`) USING BTREE,
  INDEX `user_choicequestion_Survey_id_93bb75eb_fk_user_survey_SurveyID`(`Survey_id`) USING BTREE,
  CONSTRAINT `user_choicequestion_Survey_id_93bb75eb_fk_user_survey_SurveyID` FOREIGN KEY (`Survey_id`) REFERENCES `user_survey` (`SurveyID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 627 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_choicequestion
-- ----------------------------
INSERT INTO `user_choicequestion` VALUES (4, '是否是凌峰社的注册社员', 1, 3, 0, 1, 1, 1, 1);
INSERT INTO `user_choicequestion` VALUES (5, '是否需要租借以下户外用品（出队必备）', 1, 4, 0, 2, 1, 4, 1);
INSERT INTO `user_choicequestion` VALUES (6, '是否具有晕车症状', 1, 5, 0, 1, 1, 2, 1);
INSERT INTO `user_choicequestion` VALUES (470, '请选择一个选项', 1, 1, 0, 1, 1, 2, 284);
INSERT INTO `user_choicequestion` VALUES (471, '请选择以下选项（多选）', 1, 2, 0, 2, 2, 2, 284);
INSERT INTO `user_choicequestion` VALUES (476, '请选择一个选项', 1, 1, 0, 1, 1, 1, 288);
INSERT INTO `user_choicequestion` VALUES (477, '请选择一个选项', 1, 2, 0, 1, 1, 1, 288);
INSERT INTO `user_choicequestion` VALUES (482, '您对我们产品的总体满意度如何？', 1, 1, 0, 1, 1, 4, 291);
INSERT INTO `user_choicequestion` VALUES (483, '您认为我们的服务是否周到', 1, 2, 0, 1, 1, 4, 291);
INSERT INTO `user_choicequestion` VALUES (484, '您对于产品质量的评价是', 1, 3, 0, 1, 1, 3, 291);
INSERT INTO `user_choicequestion` VALUES (485, '是否想领养动物？', 1, 3, 0, 1, 1, 2, 292);
INSERT INTO `user_choicequestion` VALUES (486, '你喜欢哪些动物？', 0, 4, 0, 2, 7, 7, 292);
INSERT INTO `user_choicequestion` VALUES (499, '您的年龄段是', 1, 1, 0, 1, 1, 5, 294);
INSERT INTO `user_choicequestion` VALUES (500, '您的性别是', 1, 2, 0, 1, 1, 4, 294);
INSERT INTO `user_choicequestion` VALUES (501, '您的学历水平是', 1, 3, 0, 1, 1, 5, 294);
INSERT INTO `user_choicequestion` VALUES (502, '您所在的行业是', 1, 4, 0, 1, 1, 6, 294);
INSERT INTO `user_choicequestion` VALUES (503, '您通常在哪些渠道进行购物（可多选）', 1, 5, 0, 2, 5, 5, 294);
INSERT INTO `user_choicequestion` VALUES (504, '您每月在购物上的预算大致是多少', 1, 6, 0, 1, 1, 4, 294);
INSERT INTO `user_choicequestion` VALUES (505, '您最看重产品的哪些特性（可多选）', 1, 7, 0, 2, 5, 5, 294);
INSERT INTO `user_choicequestion` VALUES (506, '您在选择产品时，最长使用的决策因素是（可多选）', 1, 8, 0, 2, 4, 4, 294);
INSERT INTO `user_choicequestion` VALUES (507, '您最希望我们改进的产品/服务方面是（可多选）', 1, 10, 0, 2, 1, 5, 294);
INSERT INTO `user_choicequestion` VALUES (508, '您认为未来一年内，哪些市场趋势最有可能影响您的购买决策（可多选）', 1, 12, 0, 2, 1, 6, 294);
INSERT INTO `user_choicequestion` VALUES (509, '您如何看待当前市场上的竞争对手', 1, 13, 0, 1, 1, 5, 294);
INSERT INTO `user_choicequestion` VALUES (510, '您是否关注市场上的新兴品牌或产品', 1, 14, 0, 1, 1, 2, 294);
INSERT INTO `user_choicequestion` VALUES (511, '您是否愿意参加未来的市场调研或试用新产品', 1, 18, 0, 1, 1, 2, 294);
INSERT INTO `user_choicequestion` VALUES (512, '课程选择', 1, 7, 0, 1, 1, 3, 295);
INSERT INTO `user_choicequestion` VALUES (513, '您的年龄段是', 1, 2, 0, 1, 1, 5, 296);
INSERT INTO `user_choicequestion` VALUES (514, '您的性别是', 1, 3, 0, 1, 1, 3, 296);
INSERT INTO `user_choicequestion` VALUES (515, '您所在的社区或区域是', 1, 4, 0, 1, 1, 3, 296);
INSERT INTO `user_choicequestion` VALUES (516, '请从以下社区活动提案中选择您最支持的一个（可以选择多个选项）', 1, 5, 0, 2, 1, 6, 296);
INSERT INTO `user_choicequestion` VALUES (517, '您选择的活动提案中，您认为最重要的理由是什么（可多选）', 1, 7, 0, 2, 1, 5, 296);
INSERT INTO `user_choicequestion` VALUES (518, '下列哪项是酸碱中和反应的产物？', 1, 1, 2, 1, 1, 4, 297);
INSERT INTO `user_choicequestion` VALUES (519, '以下哪个单词的意思是“微小的”？', 1, 2, 2, 1, 1, 4, 297);
INSERT INTO `user_choicequestion` VALUES (520, '地球围绕太阳的公转周期为：', 1, 3, 2, 1, 1, 4, 297);
INSERT INTO `user_choicequestion` VALUES (521, '“DNA”是指：', 1, 4, 2, 1, 1, 4, 297);
INSERT INTO `user_choicequestion` VALUES (522, '二次方程  x² − 4 x + 4 = 0 的解是：', 1, 5, 2, 1, 1, 4, 297);
INSERT INTO `user_choicequestion` VALUES (525, '您的年龄段是', 1, 1, 0, 1, 1, 5, 299);
INSERT INTO `user_choicequestion` VALUES (526, '您的性别是', 1, 2, 0, 1, 1, 4, 299);
INSERT INTO `user_choicequestion` VALUES (527, '您的学历水平是', 1, 3, 0, 1, 1, 5, 299);
INSERT INTO `user_choicequestion` VALUES (528, '您所在的行业是', 1, 4, 0, 1, 1, 6, 299);
INSERT INTO `user_choicequestion` VALUES (529, '您通常在哪些渠道进行购物（可多选）', 1, 5, 0, 2, 1, 5, 299);
INSERT INTO `user_choicequestion` VALUES (530, '您每月在购物上的预算大致是多少', 1, 6, 0, 1, 1, 4, 299);
INSERT INTO `user_choicequestion` VALUES (531, '您最看重产品的哪些特性（可多选）', 1, 7, 0, 2, 1, 5, 299);
INSERT INTO `user_choicequestion` VALUES (532, '您在选择产品时，最长使用的决策因素是（可多选）', 1, 8, 0, 2, 1, 4, 299);
INSERT INTO `user_choicequestion` VALUES (533, '您最希望我们改进的产品/服务方面是（可多选）', 1, 10, 0, 2, 1, 5, 299);
INSERT INTO `user_choicequestion` VALUES (534, '您认为未来一年内，哪些市场趋势最有可能影响您的购买决策（可多选）', 1, 12, 0, 2, 1, 6, 299);
INSERT INTO `user_choicequestion` VALUES (535, '您如何看待当前市场上的竞争对手', 1, 13, 0, 1, 1, 5, 299);
INSERT INTO `user_choicequestion` VALUES (536, '您是否关注市场上的新兴品牌或产品', 1, 14, 0, 1, 1, 2, 299);
INSERT INTO `user_choicequestion` VALUES (537, '您是否愿意参加未来的市场调研或试用新产品', 1, 18, 0, 1, 1, 2, 299);
INSERT INTO `user_choicequestion` VALUES (538, '下列哪项是酸碱中和反应的产物？', 1, 1, 2, 1, 1, 4, 300);
INSERT INTO `user_choicequestion` VALUES (539, '以下哪个单词的意思是“微小的”？', 1, 2, 2, 1, 1, 4, 300);
INSERT INTO `user_choicequestion` VALUES (540, '地球围绕太阳的公转周期为：', 1, 3, 2, 1, 1, 4, 300);
INSERT INTO `user_choicequestion` VALUES (541, '“DNA”是指：', 1, 4, 2, 1, 1, 4, 300);
INSERT INTO `user_choicequestion` VALUES (542, '二次方程  x² − 4 x + 4 = 0 的解是：', 1, 5, 2, 1, 1, 4, 300);
INSERT INTO `user_choicequestion` VALUES (558, '我通常', 1, 1, 0, 1, 1, 2, 293);
INSERT INTO `user_choicequestion` VALUES (559, '我倾向从何处得到动力和信心：', 1, 2, 0, 1, 1, 2, 293);
INSERT INTO `user_choicequestion` VALUES (560, '当我参加一个社交聚会时，我一般是这样的状态：', 1, 3, 0, 1, 1, 2, 293);
INSERT INTO `user_choicequestion` VALUES (561, '下列哪一种听起来比较吸引人？', 1, 4, 0, 1, 1, 2, 293);
INSERT INTO `user_choicequestion` VALUES (562, '在约会中，我通常：', 1, 5, 0, 1, 1, 2, 293);
INSERT INTO `user_choicequestion` VALUES (563, '过去，我遇见我大部分恋人是：', 1, 6, 0, 1, 1, 2, 293);
INSERT INTO `user_choicequestion` VALUES (564, '论真实的想法，我倾向拥有：', 1, 7, 0, 1, 1, 2, 293);
INSERT INTO `user_choicequestion` VALUES (565, '过去，我的恋人倾向对我说这些：', 1, 8, 0, 1, 1, 2, 293);
INSERT INTO `user_choicequestion` VALUES (566, '我倾向透过以下方式形成脑海中的概念：', 1, 9, 0, 1, 1, 2, 293);
INSERT INTO `user_choicequestion` VALUES (567, '在我做分析的时候，首先能意识到的是：', 1, 10, 0, 1, 1, 2, 293);
INSERT INTO `user_choicequestion` VALUES (568, '在我自己的人际关系中，我一般是这样处理的：', 1, 11, 0, 1, 1, 2, 293);
INSERT INTO `user_choicequestion` VALUES (569, '当我在约会觉得放松时，我倾向谈论：', 1, 12, 0, 1, 1, 2, 293);
INSERT INTO `user_choicequestion` VALUES (570, '我是这种人：', 1, 13, 0, 1, 1, 2, 293);
INSERT INTO `user_choicequestion` VALUES (571, '在我内心深处，我认为：', 1, 14, 0, 1, 1, 2, 293);
INSERT INTO `user_choicequestion` VALUES (572, '我是这类型的人：', 1, 15, 0, 1, 1, 2, 293);
INSERT INTO `user_choicequestion` VALUES (587, '我通常', 1, 1, 0, 1, 1, 2, 307);
INSERT INTO `user_choicequestion` VALUES (588, '当我参加一个社交聚会时，我一般是这样的状态：', 1, 2, 0, 1, 1, 2, 307);
INSERT INTO `user_choicequestion` VALUES (589, '下列哪一种听起来比较吸引人？', 1, 3, 0, 1, 1, 2, 307);
INSERT INTO `user_choicequestion` VALUES (590, '在约会中，我通常：', 1, 4, 0, 1, 1, 2, 307);
INSERT INTO `user_choicequestion` VALUES (591, '过去，我遇见我大部分恋人是：', 1, 5, 0, 1, 1, 2, 307);
INSERT INTO `user_choicequestion` VALUES (592, '论真实的想法，我倾向拥有：', 1, 6, 0, 1, 1, 2, 307);
INSERT INTO `user_choicequestion` VALUES (593, '过去，我的恋人倾向对我说这些：', 1, 7, 0, 1, 1, 2, 307);
INSERT INTO `user_choicequestion` VALUES (594, '我倾向透过以下方式形成脑海中的概念：', 1, 8, 0, 1, 1, 2, 307);
INSERT INTO `user_choicequestion` VALUES (595, '在我做分析的时候，首先能意识到的是：', 1, 9, 0, 1, 1, 2, 307);
INSERT INTO `user_choicequestion` VALUES (596, '在我自己的人际关系中，我一般是这样处理的：', 1, 10, 0, 1, 1, 2, 307);
INSERT INTO `user_choicequestion` VALUES (597, '当我在约会觉得放松时，我倾向谈论：', 1, 11, 0, 1, 1, 2, 307);
INSERT INTO `user_choicequestion` VALUES (598, '我是这种人：', 1, 12, 0, 1, 1, 2, 307);
INSERT INTO `user_choicequestion` VALUES (599, '在我内心深处，我认为：', 1, 13, 0, 1, 1, 2, 307);
INSERT INTO `user_choicequestion` VALUES (600, '我是这类型的人：', 1, 14, 0, 1, 1, 2, 307);
INSERT INTO `user_choicequestion` VALUES (604, '课程选择', 1, 7, 0, 1, 1, 3, 306);
INSERT INTO `user_choicequestion` VALUES (614, '课程选择', 1, 7, 0, 1, 1, 3, 315);
INSERT INTO `user_choicequestion` VALUES (615, '你喜欢胡彦喆吗', 0, 9, 0, 1, 1, 1, 315);
INSERT INTO `user_choicequestion` VALUES (616, '请选择以下选项（多选）', 1, 12, 0, 2, 1, 4, 315);
INSERT INTO `user_choicequestion` VALUES (617, '是否想领养动物？', 1, 3, 0, 1, 1, 2, 316);
INSERT INTO `user_choicequestion` VALUES (618, '你喜欢哪些动物？', 0, 4, 0, 2, 1, 7, 316);
INSERT INTO `user_choicequestion` VALUES (619, '请选择以下选项（多选）', 1, 1, 0, 2, 1, 1, 317);

-- ----------------------------
-- Table structure for user_otheroption
-- ----------------------------
DROP TABLE IF EXISTS `user_otheroption`;
CREATE TABLE `user_otheroption`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `IsRequired` tinyint(1) NOT NULL,
  `Text` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_otheroption
-- ----------------------------

-- ----------------------------
-- Table structure for user_ratinganswer
-- ----------------------------
DROP TABLE IF EXISTS `user_ratinganswer`;
CREATE TABLE `user_ratinganswer`  (
  `AnswerID` int(11) NOT NULL AUTO_INCREMENT,
  `Rate` int(11) NULL DEFAULT NULL,
  `Question_id` int(11) NOT NULL,
  `Submission_id` int(11) NOT NULL,
  PRIMARY KEY (`AnswerID`) USING BTREE,
  INDEX `user_ratinganswer_Question_id_42956c1f_fk_user_rati`(`Question_id`) USING BTREE,
  INDEX `user_ratinganswer_Submission_id_34174394_fk_user_subm`(`Submission_id`) USING BTREE,
  CONSTRAINT `user_ratinganswer_Question_id_42956c1f_fk_user_rati` FOREIGN KEY (`Question_id`) REFERENCES `user_ratingquestion` (`QuestionID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_ratinganswer_Submission_id_34174394_fk_user_subm` FOREIGN KEY (`Submission_id`) REFERENCES `user_submission` (`SubmissionID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_ratinganswer
-- ----------------------------
INSERT INTO `user_ratinganswer` VALUES (77, 1, 77, 341);

-- ----------------------------
-- Table structure for user_ratingquestion
-- ----------------------------
DROP TABLE IF EXISTS `user_ratingquestion`;
CREATE TABLE `user_ratingquestion`  (
  `QuestionID` int(11) NOT NULL AUTO_INCREMENT,
  `Text` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IsRequired` tinyint(1) NOT NULL,
  `QuestionNumber` int(11) NOT NULL,
  `Score` int(11) NULL DEFAULT NULL,
  `Category` int(11) NOT NULL,
  `MinRating` int(11) NULL DEFAULT NULL,
  `MinText` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `MaxRating` int(11) NULL DEFAULT NULL,
  `MaxText` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Survey_id` int(11) NOT NULL,
  PRIMARY KEY (`QuestionID`) USING BTREE,
  INDEX `user_ratingquestion_Survey_id_96f41271_fk_user_survey_SurveyID`(`Survey_id`) USING BTREE,
  CONSTRAINT `user_ratingquestion_Survey_id_96f41271_fk_user_survey_SurveyID` FOREIGN KEY (`Survey_id`) REFERENCES `user_survey` (`SurveyID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 92 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_ratingquestion
-- ----------------------------
INSERT INTO `user_ratingquestion` VALUES (2, '请给凌峰社打一个印象分', 1, 6, 0, 4, 1, NULL, 5, NULL, 1);
INSERT INTO `user_ratingquestion` VALUES (77, '请评分', 1, 3, 0, 4, 1, NULL, 5, NULL, 284);
INSERT INTO `user_ratingquestion` VALUES (79, '请为我们的产品打个分', 1, 4, 0, 4, 1, NULL, 5, NULL, 291);
INSERT INTO `user_ratingquestion` VALUES (80, '您对我们公司目前的产品/服务的总体满意度如何（1星表示非常不满意，5星表示非常满意）', 1, 9, 0, 4, 1, NULL, 5, NULL, 294);
INSERT INTO `user_ratingquestion` VALUES (81, '您对社区活动的整体满意度如何（1星表示非常不满意，5星表示非常满意）', 1, 10, 0, 4, 1, NULL, 5, NULL, 296);
INSERT INTO `user_ratingquestion` VALUES (82, '您对我们公司目前的产品/服务的总体满意度如何（1星表示非常不满意，5星表示非常满意）', 1, 9, 0, 4, 1, NULL, 5, NULL, 299);
INSERT INTO `user_ratingquestion` VALUES (87, '请评分', 1, 13, 0, 4, 1, NULL, 5, NULL, 315);
INSERT INTO `user_ratingquestion` VALUES (88, '请评分', 1, 14, 0, 4, 1, NULL, 5, NULL, 315);

-- ----------------------------
-- Table structure for user_rewardoffering
-- ----------------------------
DROP TABLE IF EXISTS `user_rewardoffering`;
CREATE TABLE `user_rewardoffering`  (
  `RewardID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Zhibi` int(11) NOT NULL,
  `AvailableQuota` int(11) NOT NULL,
  `Survey_id` int(11) NOT NULL,
  PRIMARY KEY (`RewardID`) USING BTREE,
  INDEX `user_rewardoffering_Survey_id_2a37139d_fk_user_survey_SurveyID`(`Survey_id`) USING BTREE,
  CONSTRAINT `user_rewardoffering_Survey_id_2a37139d_fk_user_survey_SurveyID` FOREIGN KEY (`Survey_id`) REFERENCES `user_survey` (`SurveyID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_rewardoffering
-- ----------------------------

-- ----------------------------
-- Table structure for user_submission
-- ----------------------------
DROP TABLE IF EXISTS `user_submission`;
CREATE TABLE `user_submission`  (
  `SubmissionID` int(11) NOT NULL AUTO_INCREMENT,
  `SubmissionTime` datetime(6) NOT NULL,
  `Status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Score` int(11) NULL DEFAULT NULL,
  `Interval` int(11) NULL DEFAULT NULL,
  `Respondent_id` int(11) NOT NULL,
  `Survey_id` int(11) NOT NULL,
  PRIMARY KEY (`SubmissionID`) USING BTREE,
  INDEX `user_submission_Respondent_id_c9fba95f_fk_user_user_UserID`(`Respondent_id`) USING BTREE,
  INDEX `user_submission_Survey_id_025b3050_fk_user_survey_SurveyID`(`Survey_id`) USING BTREE,
  CONSTRAINT `user_submission_Respondent_id_c9fba95f_fk_user_user_UserID` FOREIGN KEY (`Respondent_id`) REFERENCES `user_user` (`UserID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_submission_Survey_id_025b3050_fk_user_survey_SurveyID` FOREIGN KEY (`Survey_id`) REFERENCES `user_survey` (`SurveyID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 349 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_submission
-- ----------------------------
INSERT INTO `user_submission` VALUES (311, '2024-08-17 10:12:40.881000', 'Graded', 16, 77, 1, 300);
INSERT INTO `user_submission` VALUES (326, '2024-08-18 12:28:32.412170', 'Unsubmitted', NULL, 0, 1, 307);
INSERT INTO `user_submission` VALUES (334, '2024-08-18 13:15:18.895070', 'Unsubmitted', NULL, 0, 1, 306);
INSERT INTO `user_submission` VALUES (338, '2024-08-18 13:43:28.844842', 'Unsubmitted', NULL, 0, 9, 306);
INSERT INTO `user_submission` VALUES (340, '2024-08-18 13:44:08.389059', 'Unsubmitted', NULL, 0, 9, 307);
INSERT INTO `user_submission` VALUES (341, '2024-08-19 01:28:42.880854', 'Submitted', 0, 0, 11, 284);
INSERT INTO `user_submission` VALUES (342, '2024-08-19 01:28:45.442852', 'Deleted', NULL, 0, 11, 284);
INSERT INTO `user_submission` VALUES (343, '2024-08-19 01:33:30.063681', 'Unsubmitted', NULL, 0, 11, 315);
INSERT INTO `user_submission` VALUES (348, '2024-08-21 13:18:44.504297', 'Deleted', NULL, 0, 9, 288);

-- ----------------------------
-- Table structure for user_survey
-- ----------------------------
DROP TABLE IF EXISTS `user_survey`;
CREATE TABLE `user_survey`  (
  `SurveyID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Is_released` tinyint(1) NOT NULL,
  `Is_open` tinyint(1) NOT NULL,
  `Is_deleted` tinyint(1) NOT NULL,
  `PublishDate` datetime(6) NULL DEFAULT NULL,
  `Category` int(11) NOT NULL,
  `TotalScore` int(11) NULL DEFAULT NULL,
  `TimeLimit` int(11) NULL DEFAULT NULL,
  `IsOrder` tinyint(1) NOT NULL,
  `Owner_id` int(11) NOT NULL,
  PRIMARY KEY (`SurveyID`) USING BTREE,
  INDEX `user_survey_Owner_id_4fccbdf4_fk_user_user_UserID`(`Owner_id`) USING BTREE,
  CONSTRAINT `user_survey_Owner_id_4fccbdf4_fk_user_user_UserID` FOREIGN KEY (`Owner_id`) REFERENCES `user_user` (`UserID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 322 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_survey
-- ----------------------------
INSERT INTO `user_survey` VALUES (1, '端午节出队报名', '统计端午节凤凰岭的出队情况', 0, 1, 0, NULL, 2, 0, 1, 1, 2);
INSERT INTO `user_survey` VALUES (284, '数据分析测试', '添加问卷描述', 0, 1, 1, '2024-08-20 00:00:00.000000', 0, 0, 1, 1, 1);
INSERT INTO `user_survey` VALUES (288, '交叉分析测试', '添加问卷描述', 0, 1, 1, '2024-08-17 00:00:00.000000', 0, 0, 1, 1, 3);
INSERT INTO `user_survey` VALUES (291, '客户满意度调查问卷', '此问卷面向客户了解客户对产品或服务的满意程度', 1, 0, 0, '2024-08-17 00:00:00.000000', 0, 0, 1, 1, 4);
INSERT INTO `user_survey` VALUES (292, '动物领养调查问卷', '如果有机会......你会想领养一个什么样的动物呢？', 1, 0, 0, '2024-08-17 00:00:00.000000', 0, 0, 1, 1, 4);
INSERT INTO `user_survey` VALUES (293, 'mbti测试', '快来测测你的mbti吧！', 1, 0, 0, '2024-08-17 00:00:00.000000', 0, 0, 1, 1, 4);
INSERT INTO `user_survey` VALUES (294, '市场调研问卷', '感谢您参加我们的市场调研。您的意见对我们非常重要，我们将根据您的反馈不断改进产品和服务。问卷大约需要 5-10 分钟完成。', 1, 0, 0, '2024-08-17 00:00:00.000000', 0, 0, 1, 1, 4);
INSERT INTO `user_survey` VALUES (295, '课程报名表', '针对某一课程的报名问卷', 1, 0, 0, '2024-08-17 00:00:00.000000', 2, 0, 1, 1, 4);
INSERT INTO `user_survey` VALUES (296, '2024 年度社区活动提案投票', '感谢您参与我们的社区活动提案投票。我们希望了解您的意见，以便更好地规划未来的社区活动。您的反馈将帮助我们选择最受欢迎的活动方案。请您认真填写问卷，选出您最支持的选项。', 1, 0, 0, '2024-08-17 00:00:00.000000', 1, 0, 1, 1, 4);
INSERT INTO `user_survey` VALUES (297, '2024 年度综合知识考试', '本次考试旨在评估您的综合知识水平，请根据您的实际情况认真作答。考试总时长为 90 分钟。请确保在答题纸上清晰书写，并按照题目要求作答。', 1, 0, 0, '2024-08-17 00:00:00.000000', 3, 0, 90, 1, 4);
INSERT INTO `user_survey` VALUES (299, '市场调研问卷', '感谢您参加我们的市场调研。您的意见对我们非常重要，我们将根据您的反馈不断改进产品和服务。问卷大约需要 5-10 分钟完成。', 0, 1, 0, '2024-08-17 00:00:00.000000', 0, 0, 1, 1, 1);
INSERT INTO `user_survey` VALUES (300, '2024 年度综合知识考试', '本次考试旨在评估您的综合知识水平，请根据您的实际情况认真作答。考试总时长为 90 分钟。请确保在答题纸上清晰书写，并按照题目要求作答。', 1, 1, 0, '2024-08-17 00:00:00.000000', 3, 0, 90, 1, 1);
INSERT INTO `user_survey` VALUES (306, '课程报名表', '针对某一课程的报名问卷', 1, 1, 0, '2024-08-18 00:00:00.000000', 2, 0, 1, 1, 9);
INSERT INTO `user_survey` VALUES (307, 'mbti测试', '快来测测你的mbti吧！', 1, 1, 0, '2024-08-17 00:00:00.000000', 0, 0, 1, 1, 9);
INSERT INTO `user_survey` VALUES (315, '课程报名表', '针对某一课程的报名问卷', 1, 0, 0, '2024-08-19 00:00:00.000000', 2, 0, 1, 1, 11);
INSERT INTO `user_survey` VALUES (316, '动物领养调查问卷', '如果有机会......你会想领养一个什么样的动物呢？', 0, 1, 0, '2024-08-19 00:00:00.000000', 0, 0, 1, 1, 11);
INSERT INTO `user_survey` VALUES (317, '问题标题', '添加问卷描述', 0, 1, 0, '2024-08-19 00:00:00.000000', 3, 0, 7, 0, 11);

-- ----------------------------
-- Table structure for user_surveystatistic
-- ----------------------------
DROP TABLE IF EXISTS `user_surveystatistic`;
CREATE TABLE `user_surveystatistic`  (
  `StatisticID` int(11) NOT NULL AUTO_INCREMENT,
  `TotalResponses` int(11) NOT NULL,
  `AverageScore` double NULL DEFAULT NULL,
  `LastResponseDate` datetime(6) NULL DEFAULT NULL,
  `Survey_id` int(11) NOT NULL,
  PRIMARY KEY (`StatisticID`) USING BTREE,
  UNIQUE INDEX `Survey_id`(`Survey_id`) USING BTREE,
  CONSTRAINT `user_surveystatistic_Survey_id_21067f71_fk_user_survey_SurveyID` FOREIGN KEY (`Survey_id`) REFERENCES `user_survey` (`SurveyID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_surveystatistic
-- ----------------------------

-- ----------------------------
-- Table structure for user_template
-- ----------------------------
DROP TABLE IF EXISTS `user_template`;
CREATE TABLE `user_template`  (
  `TemplateID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DefaultQuestionsJSON` json NOT NULL,
  `Description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`TemplateID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_template
-- ----------------------------

-- ----------------------------
-- Table structure for user_user
-- ----------------------------
DROP TABLE IF EXISTS `user_user`;
CREATE TABLE `user_user`  (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CreateDate` datetime(6) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `zhibi` int(11) NOT NULL,
  `own_photos` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`UserID`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_user
-- ----------------------------
INSERT INTO `user_user` VALUES (1, 'lorian', 'lorian', '1969024607@qq.com', '2024-06-10 13:15:41.024982', 0, 2300, '[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]');
INSERT INTO `user_user` VALUES (2, 'wly', 'wenliuyi', '21351002@buaa.edu.cn', '2024-06-10 13:17:08.366329', 0, 1000, '[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]');
INSERT INTO `user_user` VALUES (3, 'TieZhu', 'TieZhu', 'dcx1378832571@163.com', '2024-08-17 00:50:30.010152', 0, 500, '[12, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0]');
INSERT INTO `user_user` VALUES (4, 'huyanzhe', 'huyanzhe', '111111@qq.qqq', '2024-08-17 04:05:45.950956', 0, 0, '[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]');
INSERT INTO `user_user` VALUES (6, '阿阿阿阿阿阿', '111111', '1234567891@qq.com', '2024-08-17 08:30:29.396458', 0, 0, '[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]');
INSERT INTO `user_user` VALUES (7, 'lorian111', '111111', '1969024607@qq.com1', '2024-08-17 08:34:20.653448', 0, 0, '[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]');
INSERT INTO `user_user` VALUES (8, 'wenliuyi', 'wen03liuyi', '1658441344@qq.com', '2024-08-17 08:38:38.695275', 0, 0, '[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]');
INSERT INTO `user_user` VALUES (9, 'wenbo', 'wen76liuyi', '276045657@qq.com', '2024-08-17 14:42:45.036617', 0, 150, '[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]');
INSERT INTO `user_user` VALUES (10, 'xiaoshi760715', 'liuyixiaoxiao520', '327200148@qq.com', '2024-08-18 12:25:01.345244', 0, 0, '[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]');
INSERT INTO `user_user` VALUES (11, 'hwsnsdd', ',wmt369838385', '1647500727@qq.com', '2024-08-19 01:26:59.195976', 0, 50, '[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]');

-- ----------------------------
-- Table structure for user_userrewardrecord
-- ----------------------------
DROP TABLE IF EXISTS `user_userrewardrecord`;
CREATE TABLE `user_userrewardrecord`  (
  `RecordID` int(11) NOT NULL AUTO_INCREMENT,
  `Zhibi` int(11) NOT NULL,
  `RedemptionDate` date NOT NULL,
  `Respondent_id` int(11) NOT NULL,
  `Survey_id` int(11) NOT NULL,
  PRIMARY KEY (`RecordID`) USING BTREE,
  INDEX `user_userrewardrecord_Respondent_id_5007b57a_fk_user_user_UserID`(`Respondent_id`) USING BTREE,
  INDEX `user_userrewardrecord_Survey_id_220e3f74_fk_user_survey_SurveyID`(`Survey_id`) USING BTREE,
  CONSTRAINT `user_userrewardrecord_Respondent_id_5007b57a_fk_user_user_UserID` FOREIGN KEY (`Respondent_id`) REFERENCES `user_user` (`UserID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_userrewardrecord_Survey_id_220e3f74_fk_user_survey_SurveyID` FOREIGN KEY (`Survey_id`) REFERENCES `user_survey` (`SurveyID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_userrewardrecord
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
