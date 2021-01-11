/*
 Navicat Premium Data Transfer

 Source Server         : chenchen
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : ehr

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 03/12/2020 02:46:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ia_test_record
-- ----------------------------
DROP TABLE IF EXISTS `ia_test_record`;
CREATE TABLE `ia_test_record`  (
  `Patient_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Identity number of patient',
  `Duration` float NOT NULL COMMENT 'Disease duration',
  `DMARDs` int NOT NULL COMMENT 'Disease modifying anti-rheumatic drugs',
  `PDQ_score` int NOT NULL COMMENT 'Pain DETECT Questionnaire score',
  `Inflammatory_Arthritis` int NOT NULL COMMENT 'Inflammatory Arthritis Status (Yes=1, No=0)',
  `Exam_date` date NOT NULL COMMENT 'Date of the exam',
  `BMI` float NOT NULL COMMENT 'Body Mass Index',
  `SBP` float NOT NULL COMMENT 'Systolic Blood Pressure',
  `DBP` float NOT NULL COMMENT 'Diastolic Blood Pressure',
  `Smoking_Status` int NOT NULL COMMENT 'Smoking_Status(Yes=1, No=0)',
  `Diabetes` int NOT NULL COMMENT 'Diabetes Status(Yes=1, No=0)',
  PRIMARY KEY (`Patient_id`) USING BTREE,
  CONSTRAINT `Pid` FOREIGN KEY (`Patient_id`) REFERENCES `patient` (`Patient_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ia_test_record
-- ----------------------------
INSERT INTO `ia_test_record` VALUES ('10001', 5, 0, -1, 1, '2018-01-03', 18.5, 111, 80, 1, 1);
INSERT INTO `ia_test_record` VALUES ('10002', 3, 1, 5, 1, '2019-04-09', 23, 119, 80, 0, 1);
INSERT INTO `ia_test_record` VALUES ('10003', 18, 1, 3, 1, '2018-04-05', 22.8, 120, 82, 0, 0);
INSERT INTO `ia_test_record` VALUES ('10004', 11, 1, 7, 1, '2018-04-05', 25.6, 145, 92, 1, 1);
INSERT INTO `ia_test_record` VALUES ('10005', 1, 1, 3, 1, '2019-06-10', 24.3, 180, 110, 0, 1);
INSERT INTO `ia_test_record` VALUES ('10006', 16, 0, 1, 1, '2020-01-30', 21.8, 165, 107, 1, 1);
INSERT INTO `ia_test_record` VALUES ('10007', 5, 0, 14, 1, '2020-06-15', 22.7, 125, 82, 0, 1);
INSERT INTO `ia_test_record` VALUES ('10008', 3, 1, 25, 1, '2019-05-19', 19.2, 140, 90, 0, 0);
INSERT INTO `ia_test_record` VALUES ('10009', 7, 0, 32, 1, '2019-03-20', 18.2, 120, 82, 1, 1);
INSERT INTO `ia_test_record` VALUES ('10010', 3, 1, 11, 1, '2017-06-05', 17.4, 145, 92, 1, 0);
INSERT INTO `ia_test_record` VALUES ('10011', 11, 0, 25, 1, '2018-05-30', 22.3, 180, 110, 0, 0);
INSERT INTO `ia_test_record` VALUES ('10012', 12, 0, 28, 1, '2020-02-13', 24, 165, 107, 1, 0);
INSERT INTO `ia_test_record` VALUES ('10013', 15, 1, 21, 1, '2015-03-30', 28.1, 120, 84, 1, 0);
INSERT INTO `ia_test_record` VALUES ('10014', 20, 1, 10, 1, '2019-03-01', 25.1, 147, 92, 1, 0);
INSERT INTO `ia_test_record` VALUES ('10015', 9, 0, 9, 1, '2019-08-22', 25.9, 180, 110, 1, 0);
INSERT INTO `ia_test_record` VALUES ('10016', 13, 0, 7, 1, '2018-04-21', 26.6, 166, 107, 0, 0);
INSERT INTO `ia_test_record` VALUES ('10017', 19, 0, 2, 1, '2019-05-05', 27.3, 122, 82, 1, 1);
INSERT INTO `ia_test_record` VALUES ('10018', 12, 0, 3, 1, '2020-03-02', 25.1, 145, 92, 0, 0);
INSERT INTO `ia_test_record` VALUES ('10019', 13, 0, 5, 1, '2018-07-08', 20.9, 178, 110, 1, 1);
INSERT INTO `ia_test_record` VALUES ('10020', 10, 1, 6, 1, '2019-11-09', 19.8, 165, 107, 1, 1);
INSERT INTO `ia_test_record` VALUES ('10021', 8, 0, 16, 1, '2020-08-03', 17.3, 125, 82, 1, 0);

-- ----------------------------
-- Table structure for pancreatic_cancer
-- ----------------------------
DROP TABLE IF EXISTS `pancreatic_cancer`;
CREATE TABLE `pancreatic_cancer`  (
  `Patient_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Identity number of patient',
  `PPI_Use` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Proton Pump-Inhibitor Use(Yes=1, No=0)',
  `Pancreatic_Cancer` int NOT NULL COMMENT 'Pancreatic Cancer status\r\n(Yes=1, No=0)',
  `Exam_date` date NOT NULL COMMENT 'Date of the exam',
  PRIMARY KEY (`Patient_id`) USING BTREE,
  CONSTRAINT `Patient_id` FOREIGN KEY (`Patient_id`) REFERENCES `patient` (`Patient_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pancreatic_cancer
-- ----------------------------
INSERT INTO `pancreatic_cancer` VALUES ('10001', '0', 0, '2018-01-03');
INSERT INTO `pancreatic_cancer` VALUES ('10002', '0', 1, '2019-04-09');
INSERT INTO `pancreatic_cancer` VALUES ('10008', '1', 0, '2019-05-19');
INSERT INTO `pancreatic_cancer` VALUES ('10009', '0', 0, '2019-03-20');
INSERT INTO `pancreatic_cancer` VALUES ('10011', '1', 1, '2018-05-30');
INSERT INTO `pancreatic_cancer` VALUES ('10016', '1', 0, '2018-04-21');
INSERT INTO `pancreatic_cancer` VALUES ('10017', '0', 1, '2019-05-05');

-- ----------------------------
-- Table structure for patient
-- ----------------------------
DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient`  (
  `Patient_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Identity number of patient',
  `First_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'First Name',
  `Last_Name` int NOT NULL COMMENT 'Last Name',
  `Gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Gender',
  `Birth_Date` date NOT NULL COMMENT 'Birth Date',
  `Race` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Race',
  `Education` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Education',
  `Email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Email of patient',
  `Contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Contact of patient',
  PRIMARY KEY (`Patient_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of patient
-- ----------------------------
INSERT INTO `patient` VALUES ('10001', 'Malyn', 0, 'F', '1997-05-06', 'Asian', 'Associate degre', 'JaneSmithChicago@ESP.com', '14530192012');
INSERT INTO `patient` VALUES ('10002', 'Jonet', 0, 'F', '1995-06-10', 'White', 'Bachelor\'s degree', 'MayurDikShit@example.com', '10018585115');
INSERT INTO `patient` VALUES ('10003', 'Alise', 0, 'F', '1992-05-09', 'Black or African American', 'Associate degre', 'Google@example.com', '17417413005');
INSERT INTO `patient` VALUES ('10004', 'Salove', 0, 'F', '1998-10-11', 'Hispanic or Latino', 'High school diploma or equivalent', 'party@college.edu', '12054232319');
INSERT INTO `patient` VALUES ('10005', 'Acelina', 0, 'F', '2000-05-30', 'American Indian or Alaska Native', 'High school diploma or equivalent', 'ironman@timgarage.com', '13469515966');
INSERT INTO `patient` VALUES ('10006', 'Anselet', 0, 'M', '1999-02-15', 'Hispanic or Latino', 'Bachelor\'s degree', 'jamesbond@xyzdetectiveagency.com', '18784931910');
INSERT INTO `patient` VALUES ('10007', 'Beavis', 0, 'M', '1990-09-27', 'American Indian or Alaska Native', 'Master\'s degree', 'CEO@yourdomain.com', '19920972431');
INSERT INTO `patient` VALUES ('10008', 'Joss', 0, 'M', '1988-10-10', 'White', 'Doctoral degree', 'services@yourdomain.com', '19775883758');
INSERT INTO `patient` VALUES ('10009', 'Anchier', 0, 'M', '2003-05-19', 'Black or African American', 'High school diploma or equivalent', 'press@yourdomain.com', '10863397036');
INSERT INTO `patient` VALUES ('10010', 'David', 0, 'M', '2001-12-25', 'Hispanic or Latino', 'Master\'s degree', 'hi@example.com', '11379644376');
INSERT INTO `patient` VALUES ('10011', 'Andriu', 0, 'F', '1996-03-03', 'White', 'High school diploma or equivalent', 'Jane5656SmithChicago@ESP.com', '15296085128');
INSERT INTO `patient` VALUES ('10012', 'Humph', 0, 'F', '1997-04-04', 'Black or African American', 'Master\'s degree', 'Mayur11111DikShit@example.com', '18865612342');
INSERT INTO `patient` VALUES ('10013', 'Geoffrey', 0, 'F', '1995-06-06', 'Hispanic or Latino', 'High school diploma or equivalent', 'Google33@example.com', '13603783749');
INSERT INTO `patient` VALUES ('10014', 'Gipp', 0, 'M', '1993-04-10', 'White', 'High school diploma or equivalent', 'party3333@college.edu', '19863480238');
INSERT INTO `patient` VALUES ('10015', 'Evelune', 0, 'M', '1998-04-07', 'Black or African American', 'Master\'s degree', 'ironm414an@timgarage.com', '18792079394');
INSERT INTO `patient` VALUES ('10016', 'Isotta', 0, 'F', '2003-09-09', 'Hispanic or Latino', 'Bachelor\'s degree', 'jame141sbond@xyzdetectiveagency.com', '11738208111');
INSERT INTO `patient` VALUES ('10017', 'Petur', 0, 'F', '2004-10-12', 'American Indian or Alaska Native', 'Associate degre', 'CE52O@yourdomain.com', '14493807407');
INSERT INTO `patient` VALUES ('10018', 'Gaufridus', 0, 'F', '2000-09-07', 'Hispanic or Latino', 'High school diploma or equivalent', 'serv124ices@yourdomain.com', '19875345485');
INSERT INTO `patient` VALUES ('10019', 'Elyscia', 0, 'M', '2010-05-03', 'American Indian or Alaska Native', 'Bachelor\'s degree', 'pr2ess@yourdomain.com', '16808851773');
INSERT INTO `patient` VALUES ('10020', 'Typhenete', 0, 'M', '2001-07-09', 'American Indian or Alaska Native', 'Associate degre', 'h12345i@example.com', '16864974651');
INSERT INTO `patient` VALUES ('10021', 'Gifford', 0, 'F', '2003-05-06', 'Hispanic or Latino', 'High school diploma or equivalent', 'seres@yourdomain.com', '11922096352');

SET FOREIGN_KEY_CHECKS = 1;
