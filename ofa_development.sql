/*
 Navicat Premium Data Transfer

 Source Server         : lc
 Source Server Type    : MySQL
 Source Server Version : 50512
 Source Host           : localhost
 Source Database       : ofa_development

 Target Server Type    : MySQL
 Target Server Version : 50512
 File Encoding         : utf-8

 Date: 02/26/2012 17:02:13 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `answers`
-- ----------------------------
DROP TABLE IF EXISTS `answers`;
CREATE TABLE `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `question_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_answers_on_question_id` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `answers`
-- ----------------------------
BEGIN;
INSERT INTO `answers` VALUES ('1', 'qq', 'ee', '1', '2012-02-26 11:21:18', '2012-02-26 11:21:18'), ('3', 'D2', 'TTT', '1', '2012-02-26 14:06:44', '2012-02-26 14:06:44'), ('8', 'D2', 'text text text text', '2', '2012-02-26 15:43:22', '2012-02-26 15:52:04'), ('9', 'D3', 'Distractor +++', '2', '2012-02-26 15:43:32', '2012-02-26 15:43:54'), ('10', 'Right Answer', '$1=1$', '2', '2012-02-26 15:43:44', '2012-02-26 15:43:44'), ('11', 'D1', 'DDDD', '3', '2012-02-26 15:54:43', '2012-02-26 15:54:43'), ('12', 'D2', 'DFG', '3', '2012-02-26 16:01:24', '2012-02-26 16:01:24');
COMMIT;

-- ----------------------------
--  Table structure for `questions`
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `difficulty` decimal(10,0) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `questions`
-- ----------------------------
BEGIN;
INSERT INTO `questions` VALUES ('1', 'First Question', 'text $\\int$', '1', 'book', '2012-02-26 10:52:42', '2012-02-26 10:52:42'), ('2', 'Second Question', 'Testo', '2', 'book', '2012-02-26 14:09:57', '2012-02-26 14:09:57'), ('3', 'Third Question', 'Example', '2', 'book 2', '2012-02-26 15:54:30', '2012-02-26 15:54:30');
COMMIT;

-- ----------------------------
--  Table structure for `schema_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `schema_migrations`
-- ----------------------------
BEGIN;
INSERT INTO `schema_migrations` VALUES ('20120226104445'), ('20120226104852'), ('20120226111542');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
