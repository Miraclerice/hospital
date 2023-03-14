/*
 Navicat Premium Data Transfer

 Source Server         : curry
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 13/03/2023 13:50:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area`  (
  `areaId` int NOT NULL AUTO_INCREMENT,
  `areaName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`areaId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of area
-- ----------------------------
BEGIN;
INSERT INTO `area` (`areaId`, `areaName`) VALUES (4, '广东省xx有限公司 ');
COMMIT;

-- ----------------------------
-- Table structure for ban
-- ----------------------------
DROP TABLE IF EXISTS `ban`;
CREATE TABLE `ban`  (
  `bid` int NOT NULL AUTO_INCREMENT,
  `bname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`bid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of ban
-- ----------------------------
BEGIN;
INSERT INTO `ban` (`bid`, `bname`) VALUES (1, '有班'), (2, '无班');
COMMIT;

-- ----------------------------
-- Table structure for baoque
-- ----------------------------
DROP TABLE IF EXISTS `baoque`;
CREATE TABLE `baoque`  (
  `baoqueid` int NOT NULL AUTO_INCREMENT,
  `baoqueName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `baoqueNum` int NULL DEFAULT NULL,
  PRIMARY KEY (`baoqueid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of baoque
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bed
-- ----------------------------
DROP TABLE IF EXISTS `bed`;
CREATE TABLE `bed`  (
  `bedId` int NOT NULL AUTO_INCREMENT,
  `bedname` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `departmentId` int NOT NULL,
  `state` int NULL DEFAULT NULL,
  `Price` double NULL DEFAULT NULL,
  PRIMARY KEY (`bedId`) USING BTREE,
  INDEX `fk_bedDepartmentid`(`departmentId` ASC) USING BTREE,
  CONSTRAINT `fk_bedDepartmentid` FOREIGN KEY (`departmentId`) REFERENCES `departments` (`departmentid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of bed
-- ----------------------------
BEGIN;
INSERT INTO `bed` (`bedId`, `bedname`, `departmentId`, `state`, `Price`) VALUES (8, '外科1', 8, 1, 10), (9, '内科一', 7, 0, 10);
COMMIT;

-- ----------------------------
-- Table structure for caigou
-- ----------------------------
DROP TABLE IF EXISTS `caigou`;
CREATE TABLE `caigou`  (
  `caigouid` int NOT NULL AUTO_INCREMENT,
  `caigouname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gonghuoshang` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `danwei` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `candi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `leixing` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shuliang` int NULL DEFAULT NULL,
  PRIMARY KEY (`caigouid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of caigou
-- ----------------------------
BEGIN;
INSERT INTO `caigou` (`caigouid`, `caigouname`, `gonghuoshang`, `danwei`, `candi`, `leixing`, `shuliang`) VALUES (16, '阿莫西林', '春天大药房 ', '盒', '广东省xx有限公司  ', '西药', 20);
COMMIT;

-- ----------------------------
-- Table structure for cashier
-- ----------------------------
DROP TABLE IF EXISTS `cashier`;
CREATE TABLE `cashier`  (
  `cashier` int NOT NULL AUTO_INCREMENT,
  `reportId` int NOT NULL,
  `durgname` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `durgnum` int NOT NULL,
  `repiceprice` double NOT NULL,
  `repicetotal` double NOT NULL,
  `state` int NULL DEFAULT NULL,
  `ctime` date NULL DEFAULT NULL,
  `ostate` int NULL DEFAULT NULL,
  `jie` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mstate` int NULL DEFAULT NULL,
  PRIMARY KEY (`cashier`) USING BTREE,
  INDEX `fk_reportId`(`reportId` ASC) USING BTREE,
  CONSTRAINT `fk_reportId` FOREIGN KEY (`reportId`) REFERENCES `report` (`reportid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of cashier
-- ----------------------------
BEGIN;
INSERT INTO `cashier` (`cashier`, `reportId`, `durgname`, `durgnum`, `repiceprice`, `repicetotal`, `state`, `ctime`, `ostate`, `jie`, `mstate`) VALUES (34, 28, '板蓝根', 1, 30, 30, 0, '2019-11-21', NULL, NULL, NULL), (35, 28, '阿莫西林', 1, 30, 30, 0, '2019-11-21', NULL, NULL, NULL), (36, 28, '挂号费', 1, 30, 30, 2, '2019-11-21', NULL, NULL, NULL), (37, 29, 'ct', 1, 100, 100, 1, '2019-11-21', 1, '脑部肿瘤', 1), (38, 29, '打针', 1, 20, 20, 1, '2019-11-21', 0, NULL, 1), (39, 30, '阿莫西林', 1, 30, 30, 0, '2019-11-21', NULL, NULL, NULL), (40, 30, 'ct', 1, 100, 100, 1, '2019-11-21', 1, '良好', 1), (41, 30, '挂号费', 1, 30, 30, 2, '2019-11-21', NULL, NULL, NULL), (43, 31, 'ct', 1, 100, 100, 1, '2019-11-26', 1, '良好', 1), (44, 31, '打针', 1, 20, 20, 1, '2019-11-26', 0, NULL, 1), (45, 32, '板蓝根', 1, 30, 30, 0, '2022-11-14', NULL, NULL, NULL), (46, 32, 'ct', 1, 100, 100, 1, '2022-11-14', 1, '肚子正常', 1), (47, 32, '挂号费', 1, 20, 20, 2, '2022-11-14', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for checkup
-- ----------------------------
DROP TABLE IF EXISTS `checkup`;
CREATE TABLE `checkup`  (
  `cid` int NOT NULL AUTO_INCREMENT,
  `registerid` int NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ctime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE,
  INDEX `fk_rid`(`registerid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of checkup
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments`  (
  `departmentId` int NOT NULL AUTO_INCREMENT,
  `department` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`departmentId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of departments
-- ----------------------------
BEGIN;
INSERT INTO `departments` (`departmentId`, `department`) VALUES (7, '内科'), (8, '外科');
COMMIT;

-- ----------------------------
-- Table structure for doctor
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor`  (
  `doctorId` int NOT NULL AUTO_INCREMENT,
  `doctorName` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `departmentId` int NOT NULL,
  `registeredId` int NOT NULL,
  `dstate` int NULL DEFAULT NULL,
  `amStartTime` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '8:00',
  `amEndTime` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '12:00',
  `pmStartTime` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '14:00',
  `pmEndTime` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '18:00',
  PRIMARY KEY (`doctorId`) USING BTREE,
  INDEX `fk_department`(`departmentId` ASC) USING BTREE,
  INDEX `fk_registeredtype`(`registeredId` ASC) USING BTREE,
  CONSTRAINT `fk_department` FOREIGN KEY (`departmentId`) REFERENCES `departments` (`departmentId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_registeredtype` FOREIGN KEY (`registeredId`) REFERENCES `registeredtype` (`registeredid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of doctor
-- ----------------------------
BEGIN;
INSERT INTO `doctor` (`doctorId`, `doctorName`, `departmentId`, `registeredId`, `dstate`, `amStartTime`, `amEndTime`, `pmStartTime`, `pmEndTime`) VALUES (13, '华佗', 7, 5, 0, '8:00', '12:00', '14:00', '18:00'), (14, '扁鹊', 7, 6, 0, '8:00', '12:00', '14:00', '18:00'), (15, '张春明', 7, 5, 1, '8:00', '12:00', '14:00', '18:00'), (16, '王二', 8, 5, 1, '8:00', '12:00', '14:00', '18:00');
COMMIT;

-- ----------------------------
-- Table structure for drugdictionary
-- ----------------------------
DROP TABLE IF EXISTS `drugdictionary`;
CREATE TABLE `drugdictionary`  (
  `drugId` int NOT NULL AUTO_INCREMENT,
  `drugName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unitId` int NOT NULL,
  `sellingPrice` double NOT NULL,
  `areaId` int NOT NULL,
  `typeId` int NOT NULL,
  PRIMARY KEY (`drugId`) USING BTREE,
  INDEX `fk_unitid`(`unitId` ASC) USING BTREE,
  INDEX `fk_areaId`(`areaId` ASC) USING BTREE,
  INDEX `fk_typeId`(`typeId` ASC) USING BTREE,
  CONSTRAINT `fk_areaId` FOREIGN KEY (`areaId`) REFERENCES `area` (`areaId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_typeId` FOREIGN KEY (`typeId`) REFERENCES `type` (`typeid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_unitid` FOREIGN KEY (`unitId`) REFERENCES `unit` (`unitid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of drugdictionary
-- ----------------------------
BEGIN;
INSERT INTO `drugdictionary` (`drugId`, `drugName`, `unitId`, `sellingPrice`, `areaId`, `typeId`) VALUES (9, '阿莫西林', 7, 30, 4, 5), (10, '板蓝根', 9, 30, 4, 5);
COMMIT;

-- ----------------------------
-- Table structure for drugstore
-- ----------------------------
DROP TABLE IF EXISTS `drugstore`;
CREATE TABLE `drugstore`  (
  `rugstoreId` int NOT NULL AUTO_INCREMENT,
  `drugstoreName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `supplierId` int NULL DEFAULT NULL,
  `skullId` int NULL DEFAULT NULL,
  `warehouseId` int NULL DEFAULT NULL,
  `unit` int NOT NULL,
  `tradePrice` double NOT NULL,
  `sellingPrice` double NOT NULL,
  `area` int NOT NULL,
  `type` int NOT NULL,
  `produceDate` date NOT NULL,
  `validDate` date NOT NULL,
  `drugstorenum` int NOT NULL,
  `batch` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`rugstoreId`) USING BTREE,
  INDEX `fk_supplierId`(`supplierId` ASC) USING BTREE,
  INDEX `fk_skullId`(`skullId` ASC) USING BTREE,
  INDEX `fk_warehouseId`(`warehouseId` ASC) USING BTREE,
  INDEX `fk_dgarea`(`area` ASC) USING BTREE,
  INDEX `fk_dgunit`(`unit` ASC) USING BTREE,
  INDEX `fk_dtype`(`type` ASC) USING BTREE,
  CONSTRAINT `fk_dgarea` FOREIGN KEY (`area`) REFERENCES `area` (`areaId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_dgunit` FOREIGN KEY (`unit`) REFERENCES `unit` (`unitid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_dtype` FOREIGN KEY (`type`) REFERENCES `type` (`typeid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_skullId` FOREIGN KEY (`skullId`) REFERENCES `skull` (`skullid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_supplierId` FOREIGN KEY (`supplierId`) REFERENCES `upplier` (`supplierid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_warehouseId` FOREIGN KEY (`warehouseId`) REFERENCES `warehuose` (`warehouseid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of drugstore
-- ----------------------------
BEGIN;
INSERT INTO `drugstore` (`rugstoreId`, `drugstoreName`, `supplierId`, `skullId`, `warehouseId`, `unit`, `tradePrice`, `sellingPrice`, `area`, `type`, `produceDate`, `validDate`, `drugstorenum`, `batch`) VALUES (12, '板蓝根', 5, 4, 2, 9, 10, 30, 4, 5, '2019-10-30', '2020-01-04', 40, '20191121');
COMMIT;

-- ----------------------------
-- Table structure for home
-- ----------------------------
DROP TABLE IF EXISTS `home`;
CREATE TABLE `home`  (
  `homeId` int NOT NULL AUTO_INCREMENT,
  `homeName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int NULL DEFAULT NULL,
  `carId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`homeId`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 75 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of home
-- ----------------------------
BEGIN;
INSERT INTO `home` (`homeId`, `homeName`, `sex`, `age`, `carId`, `phone`) VALUES (73, '敲门', '男', 19, NULL, NULL), (74, '魏坚', '男', 19, '412823199912242414', '17634525258');
COMMIT;

-- ----------------------------
-- Table structure for hospitalprice
-- ----------------------------
DROP TABLE IF EXISTS `hospitalprice`;
CREATE TABLE `hospitalprice`  (
  `hospitalpriceid` int NOT NULL AUTO_INCREMENT,
  `registerId` int NOT NULL,
  `durgname` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `durgnum` int NOT NULL,
  `repiceprice` double NOT NULL,
  `repicetotal` double NOT NULL,
  `htime` datetime NULL DEFAULT NULL,
  `state` int NULL DEFAULT NULL,
  PRIMARY KEY (`hospitalpriceid`) USING BTREE,
  INDEX `fk_registerId`(`registerId`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 107 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of hospitalprice
-- ----------------------------
BEGIN;
INSERT INTO `hospitalprice` (`hospitalpriceid`, `registerId`, `durgname`, `durgnum`, `repiceprice`, `repicetotal`, `htime`, `state`) VALUES (104, 12, '开颅手术', 1, 500, 500, '2019-11-21 15:12:26', 1), (105, 12, '阿莫西林', 2, 30, 60, '2019-11-21 15:13:47', 2), (106, 13, '板蓝根', 1, 30, 30, '2019-11-26 19:11:44', 0);
COMMIT;

-- ----------------------------
-- Table structure for huishou
-- ----------------------------
DROP TABLE IF EXISTS `huishou`;
CREATE TABLE `huishou`  (
  `huishouid` int NOT NULL AUTO_INCREMENT,
  `huishouname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `huishounumber` int NOT NULL,
  `huishoupihao` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jbr` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `beizhu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`huishouid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of huishou
-- ----------------------------
BEGIN;
INSERT INTO `huishou` (`huishouid`, `huishouname`, `huishounumber`, `huishoupihao`, `jbr`, `beizhu`) VALUES (5, '阿莫西林', 17, '20191121', '门诊', '有问题，请更换 20盒');
COMMIT;

-- ----------------------------
-- Table structure for inhospitaltype
-- ----------------------------
DROP TABLE IF EXISTS `inhospitaltype`;
CREATE TABLE `inhospitaltype`  (
  `inhospitalId` int NOT NULL AUTO_INCREMENT,
  `projectName` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unit` int NOT NULL,
  `price` double NOT NULL,
  `bigprojectId` int NOT NULL,
  PRIMARY KEY (`inhospitalId`) USING BTREE,
  INDEX `fk_inhospitaltype`(`bigprojectId` ASC) USING BTREE,
  INDEX `fk_inhunit`(`unit` ASC) USING BTREE,
  CONSTRAINT `fk_inhospitaltype` FOREIGN KEY (`bigprojectId`) REFERENCES `projecttype` (`projectid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_inhunit` FOREIGN KEY (`unit`) REFERENCES `unit` (`unitid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of inhospitaltype
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for inoutpatienttype
-- ----------------------------
DROP TABLE IF EXISTS `inoutpatienttype`;
CREATE TABLE `inoutpatienttype`  (
  `inoutpatientId` int NOT NULL AUTO_INCREMENT,
  `projectName` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unit` int NOT NULL,
  `bigproJectId` int NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`inoutpatientId`) USING BTREE,
  INDEX `fk_inoutpatienttype`(`bigproJectId` ASC) USING BTREE,
  INDEX `fk_intunit`(`unit` ASC) USING BTREE,
  CONSTRAINT `fk_inoutpatienttype` FOREIGN KEY (`bigproJectId`) REFERENCES `projecttype` (`projectid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_intunit` FOREIGN KEY (`unit`) REFERENCES `unit` (`unitid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of inoutpatienttype
-- ----------------------------
BEGIN;
INSERT INTO `inoutpatienttype` (`inoutpatientId`, `projectName`, `unit`, `bigproJectId`, `price`) VALUES (5, '开颅手术', 8, 1, 500);
COMMIT;

-- ----------------------------
-- Table structure for jilu
-- ----------------------------
DROP TABLE IF EXISTS `jilu`;
CREATE TABLE `jilu`  (
  `jiluid` int NOT NULL AUTO_INCREMENT,
  `jiluname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jilutime` datetime NOT NULL,
  `jilutype` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jilupeople` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jilunumber` int NULL DEFAULT NULL,
  `jilupihao` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`jiluid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 193 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of jilu
-- ----------------------------
BEGIN;
INSERT INTO `jilu` (`jiluid`, `jiluname`, `jilutime`, `jilutype`, `jilupeople`, `jilunumber`, `jilupihao`) VALUES (187, '板蓝根', '2019-11-21 14:58:00', '常规入库', '门诊', 100, '20191121'), (188, '阿莫西林', '2019-11-21 14:58:46', '常规入库', '门诊', 30, '20191121'), (189, '阿莫西林', '2019-11-21 14:59:42', '正常出库', '门诊', 20, '20191121'), (190, '板蓝根', '2019-11-21 14:59:49', '正常出库', '门诊', 50, '20191121'), (191, '板蓝根', '2019-11-21 15:17:48', '紧急补给药房', '门诊', 10, '20191121'), (192, '阿莫西林', '2019-11-21 15:24:55', '正常出库', '门诊', 10, '20191121');
COMMIT;

-- ----------------------------
-- Table structure for moneytype
-- ----------------------------
DROP TABLE IF EXISTS `moneytype`;
CREATE TABLE `moneytype`  (
  `MoneyId` int NOT NULL AUTO_INCREMENT,
  `Moneytype` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Percent` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`MoneyId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of moneytype
-- ----------------------------
BEGIN;
INSERT INTO `moneytype` (`MoneyId`, `Moneytype`, `Percent`) VALUES (10, '无', '0%'), (11, '城镇社保', '30%'), (12, '农村医疗合作社', '35%');
COMMIT;

-- ----------------------------
-- Table structure for outpatienttype
-- ----------------------------
DROP TABLE IF EXISTS `outpatienttype`;
CREATE TABLE `outpatienttype`  (
  `outpatientId` int NOT NULL AUTO_INCREMENT,
  `projectName` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unit` int NOT NULL,
  `bigprojectId` int NOT NULL,
  `price` double NOT NULL,
  `ostate` int NULL DEFAULT NULL,
  PRIMARY KEY (`outpatientId`) USING BTREE,
  INDEX `fk_outpatienttype`(`bigprojectId` ASC) USING BTREE,
  INDEX `fk_outunit`(`unit` ASC) USING BTREE,
  CONSTRAINT `fk_outpatienttype` FOREIGN KEY (`bigprojectId`) REFERENCES `projecttype` (`projectid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_outunit` FOREIGN KEY (`unit`) REFERENCES `unit` (`unitid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of outpatienttype
-- ----------------------------
BEGIN;
INSERT INTO `outpatienttype` (`outpatientId`, `projectName`, `unit`, `bigprojectId`, `price`, `ostate`) VALUES (7, 'ct', 8, 2, 100, 1), (8, '打针', 8, 2, 20, 0);
COMMIT;

-- ----------------------------
-- Table structure for paiban
-- ----------------------------
DROP TABLE IF EXISTS `paiban`;
CREATE TABLE `paiban`  (
  `paiId` int NOT NULL AUTO_INCREMENT,
  `one` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '无班',
  `two` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '无班',
  `three` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '无班',
  `four` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '无班',
  `five` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '无班',
  `six` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '无班',
  `seven` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '无班',
  `doctorId` int NULL DEFAULT NULL,
  PRIMARY KEY (`paiId`) USING BTREE,
  INDEX `fk_paiId`(`doctorId` ASC) USING BTREE,
  CONSTRAINT `fk_paiId` FOREIGN KEY (`doctorId`) REFERENCES `doctor` (`doctorId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of paiban
-- ----------------------------
BEGIN;
INSERT INTO `paiban` (`paiId`, `one`, `two`, `three`, `four`, `five`, `six`, `seven`, `doctorId`) VALUES (12, '有班', '有班', '有班', '有班', '有班', '有班', '有班', 16), (13, '有班', '有班', '有班', '有班', '有班', '有班', '有班', 15), (14, '有班', '有班', '有班', '有班', '有班', '有班', '有班', 14), (15, '有班', '有班', '有班', '无班', '有班', '有班', '有班', 13);
COMMIT;

-- ----------------------------
-- Table structure for pay
-- ----------------------------
DROP TABLE IF EXISTS `pay`;
CREATE TABLE `pay`  (
  `payid` int NOT NULL AUTO_INCREMENT,
  `registerid` int NULL DEFAULT NULL,
  `money` double NULL DEFAULT NULL,
  `payDate` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`payid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of pay
-- ----------------------------
BEGIN;
INSERT INTO `pay` (`payid`, `registerid`, `money`, `payDate`) VALUES (9, 12, 10, '2019-11-21 15:13:09'), (10, 13, 10, '2019-11-26 09:44:56');
COMMIT;

-- ----------------------------
-- Table structure for pharmacy
-- ----------------------------
DROP TABLE IF EXISTS `pharmacy`;
CREATE TABLE `pharmacy`  (
  `pharmacyId` int NOT NULL AUTO_INCREMENT,
  `pharmacyName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `drugstoreId` int NULL DEFAULT NULL,
  `skullId` int NULL DEFAULT NULL,
  `warehouseId` int NULL DEFAULT NULL,
  `unit` int NOT NULL,
  `sellingPrice` double NOT NULL,
  `area` int NOT NULL,
  `type` int NOT NULL,
  `produceDate` date NOT NULL,
  `validDate` date NOT NULL,
  `drugstorenum` int NOT NULL,
  `skullbatch` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`pharmacyId`) USING BTREE,
  INDEX `fk_drugstoreIdp`(`drugstoreId` ASC) USING BTREE,
  INDEX `fk_skullIdp`(`skullId` ASC) USING BTREE,
  INDEX `fk_warehouseIdp`(`warehouseId` ASC) USING BTREE,
  INDEX `fk_dgareap`(`area` ASC) USING BTREE,
  INDEX `fk_unitp`(`unit` ASC) USING BTREE,
  INDEX `fk_typep`(`type` ASC) USING BTREE,
  CONSTRAINT `fk_dgareap` FOREIGN KEY (`area`) REFERENCES `area` (`areaId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_drugstoreIdp` FOREIGN KEY (`drugstoreId`) REFERENCES `drugstore` (`rugstoreId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_skullIdp` FOREIGN KEY (`skullId`) REFERENCES `skull` (`skullid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_typep` FOREIGN KEY (`type`) REFERENCES `type` (`typeid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_unitp` FOREIGN KEY (`unit`) REFERENCES `unit` (`unitid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_warehouseIdp` FOREIGN KEY (`warehouseId`) REFERENCES `warehuose` (`warehouseid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of pharmacy
-- ----------------------------
BEGIN;
INSERT INTO `pharmacy` (`pharmacyId`, `pharmacyName`, `drugstoreId`, `skullId`, `warehouseId`, `unit`, `sellingPrice`, `area`, `type`, `produceDate`, `validDate`, `drugstorenum`, `skullbatch`) VALUES (11, '板蓝根', NULL, 4, 2, 9, 30, 4, 5, '2019-10-30', '2020-01-04', 57, '20191121'), (12, '阿莫西林', NULL, 4, 2, 7, 30, 4, 5, '2019-10-25', '2020-02-01', 9, '20191121');
COMMIT;

-- ----------------------------
-- Table structure for projecttype
-- ----------------------------
DROP TABLE IF EXISTS `projecttype`;
CREATE TABLE `projecttype`  (
  `projectId` int NOT NULL AUTO_INCREMENT,
  `projectName` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`projectId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of projecttype
-- ----------------------------
BEGIN;
INSERT INTO `projecttype` (`projectId`, `projectName`) VALUES (1, '住院医疗综合服务类'), (2, '门诊医疗综合服务类');
COMMIT;

-- ----------------------------
-- Table structure for register
-- ----------------------------
DROP TABLE IF EXISTS `register`;
CREATE TABLE `register`  (
  `registerid` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int NOT NULL,
  `sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `department` int NOT NULL,
  `doctor` int NOT NULL,
  `diagnose` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Phone` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Idcard` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `registerDate` datetime NULL DEFAULT NULL,
  `bedNum` int NULL DEFAULT NULL,
  `Operator` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `money` double NULL DEFAULT NULL,
  `state` int NULL DEFAULT NULL,
  `endDate` datetime NULL DEFAULT NULL,
  `price` double UNSIGNED NULL DEFAULT NULL,
  `discount` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zhuan` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`registerid`) USING BTREE,
  INDEX `fk_regdepartment`(`department` ASC) USING BTREE,
  INDEX `fk_regdoctor`(`doctor` ASC) USING BTREE,
  CONSTRAINT `fk_regdepartment` FOREIGN KEY (`department`) REFERENCES `departments` (`departmentId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_regdoctor` FOREIGN KEY (`doctor`) REFERENCES `doctor` (`doctorId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of register
-- ----------------------------
BEGIN;
INSERT INTO `register` (`registerid`, `userName`, `age`, `sex`, `department`, `doctor`, `diagnose`, `address`, `Phone`, `Idcard`, `registerDate`, `bedNum`, `Operator`, `money`, `state`, `endDate`, `price`, `discount`, `zhuan`) VALUES (12, '李福州', 20, '男', 7, 15, '脑部肿瘤', '河南', '15565792390', '412827199605062586', '2019-11-21 15:11:17', 9, '门诊', 10010, 1, '2019-11-21 15:14:05', 392, '30%', NULL), (13, 'song', 12, '男', 8, 16, '良好', '河南', '13271678052', '412702199902080557', '2019-11-26 09:39:50', 8, '超级管理员', 1010, 0, NULL, 7046, '35%', '2022-11-14 16:08:05');
COMMIT;

-- ----------------------------
-- Table structure for registeredtype
-- ----------------------------
DROP TABLE IF EXISTS `registeredtype`;
CREATE TABLE `registeredtype`  (
  `registeredId` int NOT NULL AUTO_INCREMENT,
  `type` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`registeredId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of registeredtype
-- ----------------------------
BEGIN;
INSERT INTO `registeredtype` (`registeredId`, `type`, `price`) VALUES (5, '普通挂号', 20), (6, '专家号', 30);
COMMIT;

-- ----------------------------
-- Table structure for report
-- ----------------------------
DROP TABLE IF EXISTS `report`;
CREATE TABLE `report`  (
  `reportId` int NOT NULL AUTO_INCREMENT,
  `reportName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int NULL DEFAULT NULL,
  `department` int NULL DEFAULT NULL,
  `doctor` int NULL DEFAULT NULL,
  `reportType` int NULL DEFAULT NULL,
  `price` double NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  `users` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` int NULL DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `carid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zhuan` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`reportId`) USING BTREE,
  INDEX `fk_departmentr`(`department` ASC) USING BTREE,
  INDEX `fk_doctor`(`doctor` ASC) USING BTREE,
  INDEX `fk_reportType`(`reportType` ASC) USING BTREE,
  CONSTRAINT `fk_departmentr` FOREIGN KEY (`department`) REFERENCES `departments` (`departmentId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_doctor` FOREIGN KEY (`doctor`) REFERENCES `doctor` (`doctorId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_reportType` FOREIGN KEY (`reportType`) REFERENCES `registeredtype` (`registeredId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of report
-- ----------------------------
BEGIN;
INSERT INTO `report` (`reportId`, `reportName`, `sex`, `age`, `department`, `doctor`, `reportType`, `price`, `time`, `users`, `state`, `phone`, `carid`, `zhuan`) VALUES (28, '送高帅', '男', 20, 7, 14, 6, 30, '2019-11-21 14:00:00', NULL, 3, '13183380740', '412827199807156595', '头痛，发烧'), (29, '李福州', '男', 20, 7, 14, 6, 30, '2019-11-21 15:04:50', '门诊', 5, '15565792390', '412827199605062586', '脑部肿瘤'), (30, '杨帅', '男', 20, 7, 14, 6, 30, '2019-11-21 14:00:00', NULL, 3, '13183380740', '412369199512023695', '头痛'), (31, 'song', '男', 12, 7, 13, 5, 20, '2019-11-26 09:16:47', '超级管理员', 5, '13271678052', '412702199902080557', '良好'), (32, 'Bingxian Xie', '男', 22, 7, 13, 5, 20, '2022-11-14 16:09:17', '超级管理员', 2, '13059305376', '445323200012294567', '肚子痛');
COMMIT;

-- ----------------------------
-- Table structure for skull
-- ----------------------------
DROP TABLE IF EXISTS `skull`;
CREATE TABLE `skull`  (
  `skullId` int NOT NULL AUTO_INCREMENT,
  `skullName` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`skullId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of skull
-- ----------------------------
BEGIN;
INSERT INTO `skull` (`skullId`, `skullName`) VALUES (4, '张山');
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` int NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `spread` int NULL DEFAULT NULL COMMENT '0不展开1展开',
  `target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `available` int NULL DEFAULT NULL COMMENT '0不可用1可用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 90 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` (`id`, `pid`, `title`, `href`, `spread`, `target`, `icon`, `available`) VALUES (1, 0, '医院管理系统', '', 1, NULL, '&#xe68e;', 1), (2, 1, '门诊管理', '', 0, NULL, '&#xe653;', 1), (3, 1, '住院管理', '', 0, NULL, '&#xe663;', 1), (4, 1, '系统管理', '', 0, '', '&#xe716;', 1), (5, 1, '统计管理', '', 0, NULL, '&#xe629;', 1), (6, 2, '用户挂号', '../cao/index', 0, NULL, '&#xe770;', 1), (7, 2, '处方划价', '../caocc/cc', 0, NULL, '&#xe657;', 1), (8, 3, '入院登记', '../liao/admin', 0, NULL, '&#xe65b;', 1), (9, 3, '缴费管理', '../liao/pay', 0, NULL, '&#xe6b2;', 1), (11, 3, '药品记账', '../liao/drug', 0, NULL, '&#xe705;', 1), (12, 4, '菜单管理', '../toMenuManager', 0, NULL, '&#xe60f;', 1), (13, 4, '角色管理', '../toLoadAllRole', 0, '', '&#xe66f;', 1), (14, 4, '用户管理', '../toLoadAllUser', 0, NULL, '&#xe770;', 1), (15, 4, '图标管理', '../icon', 0, NULL, '&#xe655;', 1), (17, 4, '数据源监控', '../druid', 0, NULL, '&#xe857;', 1), (18, 5, '门诊月度统计', '../toReportFinance', 0, NULL, '&#xe63c;', 1), (19, 5, '住院月度统计', '../toZhuYaunManage', 0, NULL, '&#xe62c;', 1), (20, 5, '门诊年度统计', '../toBingYear', 0, NULL, '&#xe62d;', 1), (27, 2, '项目划价', '../caoout/xiang', 0, NULL, '&#xe60a;', 1), (28, 2, '项目缴费', '../xpay/xiangpay', 0, NULL, '&#xe65e;', 1), (30, 1, '数据中心', '', 0, NULL, '&#xe60a;', 1), (31, 30, '科室中心', '../toDepartments', 0, NULL, '&#xe68e;', 1), (32, 30, '医生列表', '../toDoctor', 0, NULL, '&#xe66f;', 1), (33, 30, '药品产地', '../toArea', 0, NULL, '&#xe630;', 1), (36, 30, '项目大类', '../toProjectTypeManage', 0, NULL, '&#xe620;', 1), (37, 30, '挂号类型', '../toRegisteredType', 0, NULL, '&#xe672;', 1), (40, 30, '仓库', '../toWarehuose', 0, NULL, '&#xe60a;', 1), (41, 30, '经办人', '../toSkull', 0, NULL, '&#xe612;', 1), (42, 30, '计量单位', '../toUnit', 0, NULL, '&#xe62a;', 1), (43, 30, '供货商', '../toSupply', 0, NULL, '&#xe613;', 1), (44, 30, '药品分类', '../toType', 0, NULL, '&#xe656;', 1), (46, 1, '排班管理', '1', 0, NULL, '&#xe770;', 1), (47, 46, '医生排班', '../toPaiban', 0, NULL, '&#xe770;', 1), (48, 30, '药品字典', '../toDrugdictionary', 0, NULL, '&#xe64d;', 1), (49, 3, '项目记账', '../liao/item', 0, NULL, '&#xe705;', 1), (52, 5, '住院年度统计', '../toBing2', 0, NULL, '&#xe630;', 1), (53, 2, '项目检查', '../xpay/seljian', 0, NULL, '&#xe674;', 1), (54, 1, '仓库管理', '', 0, NULL, '&#xe61c;', 1), (55, 54, '入库单', '../dsnavigation/beputinstorage', 0, NULL, '&#xe657;', 1), (56, 5, '医生统计对比', '../toDoctorDuibi', 0, NULL, '&#xe770;', 1), (57, 54, '库存查询', '../dsnavigation/selectdurg', 0, NULL, '&#xe62a;', 1), (58, 54, '出库单', '../dsnavigation/selectchuku', 0, NULL, '&#xe621;', 1), (59, 54, '库存不足', '../dsnavigation/selectless', 0, NULL, '&#xe6b2;', 1), (60, 54, '过期提醒', '../dsnavigation/seldrugDate', 0, NULL, '&#xe702;', 1), (61, 1, '药房管理', '', 0, NULL, '&#xe705;', 1), (62, 61, '药房详情', '../dsnavigation/pharymacyhtml', 0, NULL, '&#xe632;', 1), (64, 2, '药品缴费', '../caoout/out', 0, NULL, '&#xe65e;', 1), (65, 5, '门诊当天统计', '../toCurrent', 0, NULL, '&#xe60e;', 1), (69, 2, '门诊患者库', '../caotake/haun', 0, NULL, '&#xe66f;', 1), (70, 54, '操作记录', '../dsnavigation/record', 0, NULL, '&#xe6b2;', 1), (71, 54, '药品回收', '../dsnavigation/recycle', 0, NULL, '&#xe669;', 1), (72, 61, '门诊取药', '../caotake/seltake', 0, NULL, '&#xe857;', 1), (73, 61, '住院取药', '../liao/pharmacy', 0, NULL, '&#xe63c;', 1), (86, 3, '出院结算', '../liao/leave', 0, NULL, '&#xe65a;', 1), (90, 2, 'test', '', 0, NULL, '&#xe678;', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `roleid` int NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `roledesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `available` int NULL DEFAULT NULL,
  PRIMARY KEY (`roleid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` (`roleid`, `rolename`, `roledesc`, `available`) VALUES (1, '超级管理员', '拥有所有菜单权限', 1), (4, '门诊管理', '拥有门诊管理的权限', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `rid` int NOT NULL,
  `mid` int NOT NULL,
  PRIMARY KEY (`rid`, `mid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` (`rid`, `mid`) VALUES (1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8), (1, 9), (1, 10), (1, 11), (1, 12), (1, 13), (1, 14), (1, 15), (1, 17), (1, 18), (1, 19), (1, 20), (1, 27), (1, 28), (1, 30), (1, 31), (1, 32), (1, 33), (1, 36), (1, 37), (1, 40), (1, 41), (1, 42), (1, 43), (1, 44), (1, 46), (1, 47), (1, 48), (1, 49), (1, 52), (1, 53), (1, 54), (1, 55), (1, 56), (1, 57), (1, 58), (1, 59), (1, 60), (1, 61), (1, 62), (1, 64), (1, 65), (1, 69), (1, 70), (1, 71), (1, 72), (1, 73), (1, 86), (1, 88), (4, 1), (4, 2), (4, 6), (4, 7), (4, 27), (4, 28), (4, 53), (4, 64), (4, 69), (4, 90);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user`  (
  `uid` int NOT NULL,
  `rid` int NOT NULL,
  PRIMARY KEY (`uid`, `rid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_user` (`uid`, `rid`) VALUES (1, 1), (9, 1), (10, 1), (11, 1), (12, 1), (13, 1), (28, 4);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `userid` int NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int NULL DEFAULT NULL COMMENT '0女1男',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int NULL DEFAULT 2 COMMENT '1，超级管理员,2，系统用户',
  `available` int NULL DEFAULT NULL,
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` (`userid`, `loginname`, `identity`, `realname`, `sex`, `address`, `phone`, `pwd`, `position`, `type`, `available`, `salt`) VALUES (1, 'admin', '412365199601236544', '超级管理员', 1, '武汉', '13183380740', '6af4d08340b548cbcce38353d9bcaab4', 'CEO', 1, 1, 'd21fd4'), (28, 'mz', '412827199807156565', '门诊', 1, '河南', '13183365365', '8bab0ae05712cd0d765415ee965d29cb', '门诊管理员', 2, 1, 'b16016');
COMMIT;

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `typeId` int NOT NULL AUTO_INCREMENT,
  `typeName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`typeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of type
-- ----------------------------
BEGIN;
INSERT INTO `type` (`typeId`, `typeName`) VALUES (5, '西药'), (6, '中药');
COMMIT;

-- ----------------------------
-- Table structure for unit
-- ----------------------------
DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit`  (
  `unitId` int NOT NULL AUTO_INCREMENT,
  `unitName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`unitId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of unit
-- ----------------------------
BEGIN;
INSERT INTO `unit` (`unitId`, `unitName`) VALUES (7, '盒'), (8, '次'), (9, '袋');
COMMIT;

-- ----------------------------
-- Table structure for upplier
-- ----------------------------
DROP TABLE IF EXISTS `upplier`;
CREATE TABLE `upplier`  (
  `supplierId` int NOT NULL AUTO_INCREMENT,
  `supplierName` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `supplierPhone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `supplierAddress` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` int NULL DEFAULT NULL,
  PRIMARY KEY (`supplierId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of upplier
-- ----------------------------
BEGIN;
INSERT INTO `upplier` (`supplierId`, `supplierName`, `supplierPhone`, `supplierAddress`, `state`) VALUES (5, '春天大药房 ', NULL, NULL, 0);
COMMIT;

-- ----------------------------
-- Table structure for warehuose
-- ----------------------------
DROP TABLE IF EXISTS `warehuose`;
CREATE TABLE `warehuose`  (
  `warehouseId` int NOT NULL AUTO_INCREMENT,
  `supplierName` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`warehouseId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of warehuose
-- ----------------------------
BEGIN;
INSERT INTO `warehuose` (`warehouseId`, `supplierName`) VALUES (2, '仓库');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
