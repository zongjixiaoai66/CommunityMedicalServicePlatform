/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t256`;
CREATE DATABASE IF NOT EXISTS `t256` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t256`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-04-30 11:04:09'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-04-30 11:04:09'),
	(3, 'keshi_types', '科室', 1, '牙科', NULL, NULL, '2022-04-30 11:04:09'),
	(4, 'keshi_types', '科室', 2, '内科', NULL, NULL, '2022-04-30 11:04:09'),
	(5, 'keshi_types', '科室', 3, '外科', NULL, NULL, '2022-04-30 11:04:09'),
	(6, 'zhiwei_types', '职位', 1, '普通医师', NULL, NULL, '2022-04-30 11:04:09'),
	(7, 'zhiwei_types', '职位', 2, '主治医师', NULL, NULL, '2022-04-30 11:04:09'),
	(8, 'zhiwei_types', '职位', 3, '主任', NULL, NULL, '2022-04-30 11:04:09'),
	(9, 'yibao_types', '医保类型', 1, '社区医保', NULL, NULL, '2022-04-30 11:04:09'),
	(10, 'yibao_types', '医保类型', 2, '乡镇医保', NULL, NULL, '2022-04-30 11:04:09'),
	(11, 'yisheng_yuyue_types', '预约类型', 1, '预约类型1', NULL, NULL, '2022-04-30 11:04:10'),
	(12, 'yisheng_yuyue_types', '预约类型', 2, '预约类型2', NULL, NULL, '2022-04-30 11:04:10'),
	(13, 'yisheng_yuyue_types', '预约类型', 3, '预约类型3', NULL, NULL, '2022-04-30 11:04:10'),
	(14, 'yisheng_yuyue_yesno_types', '预约状态', 1, '待审核', NULL, NULL, '2022-04-30 11:04:10'),
	(15, 'yisheng_yuyue_yesno_types', '预约状态', 2, '同意预约', NULL, NULL, '2022-04-30 11:04:10'),
	(16, 'yisheng_yuyue_yesno_types', '预约状态', 3, '拒绝预约', NULL, NULL, '2022-04-30 11:04:10'),
	(17, 'yaopin_types', '药物类型', 1, '药物类型1', NULL, NULL, '2022-04-30 11:04:10'),
	(18, 'yaopin_types', '药物类型', 2, '药物类型2', NULL, NULL, '2022-04-30 11:04:10'),
	(19, 'jixing_types', '药物剂型', 1, '内服药', NULL, NULL, '2022-04-30 11:04:10'),
	(20, 'jixing_types', '药物剂型', 2, '外敷药', NULL, NULL, '2022-04-30 11:04:10'),
	(21, 'yaopin_types', '药物类型', 3, '药物类型3', NULL, '', '2022-04-30 11:16:03');

DROP TABLE IF EXISTS `jiankang`;
CREATE TABLE IF NOT EXISTS `jiankang` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `xintiao` decimal(10,2) DEFAULT NULL COMMENT '心跳',
  `xueya` decimal(10,2) DEFAULT NULL COMMENT '血压',
  `xueyang` decimal(10,2) DEFAULT NULL COMMENT '血氧',
  `maibo` decimal(10,2) DEFAULT NULL COMMENT '脉搏',
  `celiang_time` date DEFAULT NULL COMMENT '测量日期 Search111 ',
  `jiankang_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='居民健康信息';

DELETE FROM `jiankang`;
INSERT INTO `jiankang` (`id`, `yonghu_id`, `xintiao`, `xueya`, `xueyang`, `maibo`, `celiang_time`, `jiankang_content`, `insert_time`, `create_time`) VALUES
	(1, 2, 62.25, 3.14, 756.72, 921.19, '2022-04-30', '备注1', '2022-04-30 11:07:42', '2022-04-30 11:07:42'),
	(2, 1, 68.74, 147.52, 267.85, 136.29, '2022-04-30', '备注2', '2022-04-30 11:07:42', '2022-04-30 11:07:42'),
	(3, 1, 41.40, 113.24, 519.17, 998.29, '2022-04-30', '备注3', '2022-04-30 11:07:42', '2022-04-30 11:07:42'),
	(4, 3, 864.22, 352.64, 506.17, 331.37, '2022-04-30', '备注4', '2022-04-30 11:07:42', '2022-04-30 11:07:42'),
	(5, 2, 45.38, 66.17, 59.03, 617.16, '2022-04-30', '备注5', '2022-04-30 11:07:42', '2022-04-30 11:07:42'),
	(6, 2, 22.00, 23.00, 24.00, 15.00, '2022-04-29', '<p>认识的电视剧水电费</p>', '2022-04-30 11:16:44', '2022-04-30 11:16:44'),
	(7, 1, 22.00, 12.00, 13.00, 14.00, '2022-04-29', '<p>所得到的</p>', '2022-04-30 11:18:56', '2022-04-30 11:18:56');

DROP TABLE IF EXISTS `jiuzhen`;
CREATE TABLE IF NOT EXISTS `jiuzhen` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yisheng_id` int DEFAULT NULL COMMENT '医生',
  `jiuzhen_uuid_number` varchar(200) DEFAULT NULL COMMENT '居民就诊编号 Search111 ',
  `zhusu_content` text COMMENT '主诉',
  `xianbingshi_content` text COMMENT '现病史',
  `tigejiancha_content` text COMMENT '体格检查',
  `zhenduanjieguo_content` text COMMENT '诊断结果',
  `chuliyijian_content` text COMMENT '处理意见',
  `jiuzhen_time` timestamp NULL DEFAULT NULL COMMENT '就诊时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='居民就诊';

DELETE FROM `jiuzhen`;
INSERT INTO `jiuzhen` (`id`, `yonghu_id`, `yisheng_id`, `jiuzhen_uuid_number`, `zhusu_content`, `xianbingshi_content`, `tigejiancha_content`, `zhenduanjieguo_content`, `chuliyijian_content`, `jiuzhen_time`, `insert_time`, `create_time`) VALUES
	(1, 2, 1, '165131686225288', '主诉1', '现病史1', '体格检查1', '诊断结果1', '处理意见1', '2022-04-30 11:07:42', '2022-04-30 11:07:42', '2022-04-30 11:07:42'),
	(2, 2, 1, '165131686225277', '主诉2', '现病史2', '体格检查2', '诊断结果2', '处理意见2', '2022-04-30 11:07:42', '2022-04-30 11:07:42', '2022-04-30 11:07:42'),
	(3, 3, 1, '165131686225252', '主诉3', '现病史3', '体格检查3', '诊断结果3', '处理意见3', '2022-04-30 11:07:42', '2022-04-30 11:07:42', '2022-04-30 11:07:42'),
	(4, 2, 2, '16513168622526', '主诉4', '现病史4', '体格检查4', '诊断结果4', '处理意见4', '2022-04-30 11:07:42', '2022-04-30 11:07:42', '2022-04-30 11:07:42'),
	(5, 2, 2, '165131686225241', '主诉5', '现病史5', '体格检查5', '诊断结果5', '处理意见5', '2022-04-30 11:07:42', '2022-04-30 11:07:42', '2022-04-30 11:07:42'),
	(6, 2, 1, '1651317547459', '<p>头痛</p>', '<p>无</p>', '<p>正常体格</p>', '<p>纯粹头痛</p>', '<p>吃某某药</p><p>一天3顿 一顿一片</p>', '2022-04-30 11:19:50', '2022-04-30 11:19:51', '2022-04-30 11:19:51');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', 'am31qcdbuv2qlg068kas26ore6q67t07', '2022-04-30 11:09:28', '2024-07-10 02:43:08'),
	(2, 1, 'a1', 'yonghu', '用户', 'hzzoncplbv9dn57h1u9p5lly43wuqfnz', '2022-04-30 11:17:05', '2024-07-10 02:44:15'),
	(3, 2, 'a2', 'yonghu', '用户', 'yzygki7gs6zndx8vju887cw99w8jgzrh', '2022-04-30 11:17:24', '2022-04-30 12:17:25'),
	(4, 1, 'a1', 'yisheng', '医生', 'ut710gbjzl110pfawxhg70wtd5sim47c', '2022-04-30 11:18:27', '2024-07-10 02:44:03');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2022-05-02 06:51:13');

DROP TABLE IF EXISTS `yaopin`;
CREATE TABLE IF NOT EXISTS `yaopin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yaopin_uuid_number` varchar(200) DEFAULT NULL COMMENT '药物编号 Search111 ',
  `yaopin_name` varchar(200) DEFAULT NULL COMMENT '药物名称 Search111 ',
  `yaopin_types` int DEFAULT NULL COMMENT '药物类型 Search111 ',
  `yaopin_guige` varchar(200) DEFAULT NULL COMMENT '产品规格',
  `yaopin_kucun_number` int DEFAULT NULL COMMENT '药物库存数量',
  `shengchanchangshang` varchar(200) DEFAULT NULL COMMENT '生产厂商',
  `jixing_types` int DEFAULT NULL COMMENT '药物剂型 Search111 ',
  `yongfayongliang` varchar(200) DEFAULT NULL COMMENT '用法用量',
  `gongxiao_content` text COMMENT '功效主治',
  `buliang_content` text COMMENT '不良反应',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='药物信息';

DELETE FROM `yaopin`;
INSERT INTO `yaopin` (`id`, `yaopin_uuid_number`, `yaopin_name`, `yaopin_types`, `yaopin_guige`, `yaopin_kucun_number`, `shengchanchangshang`, `jixing_types`, `yongfayongliang`, `gongxiao_content`, `buliang_content`, `insert_time`, `create_time`) VALUES
	(1, '165131686225539', '药物名称1', 2, '产品规格1', 101, '生产厂商1', 2, '用法用量1', '功效主治1', '不良反应1', '2022-04-30 11:07:42', '2022-04-30 11:07:42'),
	(2, '16513168622558', '药物名称2', 2, '产品规格2', 102, '生产厂商2', 2, '用法用量2', '功效主治2', '不良反应2', '2022-04-30 11:07:42', '2022-04-30 11:07:42'),
	(3, '165131686225646', '药物名称3', 2, '产品规格3', 103, '生产厂商3', 1, '用法用量3', '功效主治3', '不良反应3', '2022-04-30 11:07:42', '2022-04-30 11:07:42'),
	(4, '165131686225630', '药物名称4', 1, '产品规格4', 104, '生产厂商4', 1, '用法用量4', '功效主治4', '不良反应4', '2022-04-30 11:07:42', '2022-04-30 11:07:42'),
	(5, '165131686225630', '药物名称5', 1, '产品规格5', 106, '生产厂商5', 1, '用法用量5', '<p>功效主治5</p>', '<p>不良反应5</p>', '2022-04-30 11:07:42', '2022-04-30 11:07:42');

DROP TABLE IF EXISTS `yibao`;
CREATE TABLE IF NOT EXISTS `yibao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yibao_uuid_number` varchar(200) DEFAULT NULL COMMENT '医保编号 Search111 ',
  `yibao_types` int DEFAULT NULL COMMENT '医保类型 Search111 ',
  `yibao_time` date DEFAULT NULL COMMENT '医保到期日期 Search111 ',
  `yibao_content` text COMMENT '医保备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='居民医保信息';

DELETE FROM `yibao`;
INSERT INTO `yibao` (`id`, `yonghu_id`, `yibao_uuid_number`, `yibao_types`, `yibao_time`, `yibao_content`, `insert_time`, `create_time`) VALUES
	(1, 1, '165131686225966', 1, '2022-04-30', '医保备注1', '2022-04-30 11:07:42', '2022-04-30 11:07:42'),
	(2, 3, '165131686225949', 1, '2022-04-30', '医保备注2', '2022-04-30 11:07:42', '2022-04-30 11:07:42'),
	(3, 1, '165131686225959', 2, '2022-04-30', '医保备注3', '2022-04-30 11:07:42', '2022-04-30 11:07:42'),
	(4, 3, '165131686225935', 2, '2022-04-30', '医保备注4', '2022-04-30 11:07:42', '2022-04-30 11:07:42'),
	(5, 2, '165131686225999', 2, '2022-04-30', '医保备注5', '2022-04-30 11:07:42', '2022-04-30 11:07:42');

DROP TABLE IF EXISTS `yisheng`;
CREATE TABLE IF NOT EXISTS `yisheng` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yisheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '医生编号 Search111 ',
  `yisheng_name` varchar(200) DEFAULT NULL COMMENT '医生姓名 Search111 ',
  `yisheng_phone` varchar(200) DEFAULT NULL COMMENT '医生手机号',
  `yisheng_id_number` varchar(200) DEFAULT NULL COMMENT '医生身份证号',
  `yisheng_photo` varchar(200) DEFAULT NULL COMMENT '医生头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yisheng_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `keshi_types` int DEFAULT NULL COMMENT '科室 Search111 ',
  `zhiwei_types` int DEFAULT NULL COMMENT '职位 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='医生';

DELETE FROM `yisheng`;
INSERT INTO `yisheng` (`id`, `username`, `password`, `yisheng_uuid_number`, `yisheng_name`, `yisheng_phone`, `yisheng_id_number`, `yisheng_photo`, `sex_types`, `yisheng_email`, `keshi_types`, `zhiwei_types`, `create_time`) VALUES
	(1, '医生1', '123456', '165131686226191', '医生姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/yiliaozonghefuwu/upload/yisheng1.jpg', 1, '1@qq.com', 1, 1, '2022-04-30 11:07:42'),
	(2, '医生2', '123456', '165131686226141', '医生姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/yiliaozonghefuwu/upload/yisheng2.jpg', 2, '2@qq.com', 3, 3, '2022-04-30 11:07:42'),
	(3, '医生3', '123456', '165131686226123', '医生姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/yiliaozonghefuwu/upload/yisheng3.jpg', 1, '3@qq.com', 3, 2, '2022-04-30 11:07:42');

DROP TABLE IF EXISTS `yisheng_yuyue`;
CREATE TABLE IF NOT EXISTS `yisheng_yuyue` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yisheng_id` int DEFAULT NULL COMMENT '医生',
  `yisheng_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '医生预约编号 Search111 ',
  `yisheng_yuyue_name` varchar(200) DEFAULT NULL COMMENT '预约标题 Search111 ',
  `yisheng_yuyue_types` int DEFAULT NULL COMMENT '预约类型 Search111 ',
  `yisheng_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `yisheng_yuyue_content` text COMMENT '预约内容',
  `yisheng_yuyue_yesno_types` int DEFAULT NULL COMMENT '预约状态 Search111 ',
  `yisheng_yuyue_yesno_text` text COMMENT '预约回复',
  `yisheng_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='医生预约';

DELETE FROM `yisheng_yuyue`;
INSERT INTO `yisheng_yuyue` (`id`, `yonghu_id`, `yisheng_id`, `yisheng_yuyue_uuid_number`, `yisheng_yuyue_name`, `yisheng_yuyue_types`, `yisheng_yuyue_time`, `yisheng_yuyue_content`, `yisheng_yuyue_yesno_types`, `yisheng_yuyue_yesno_text`, `yisheng_yuyue_shenhe_time`, `create_time`) VALUES
	(1, 1, 2, '165131686226266', '预约标题1', 3, '2022-04-30 11:07:42', '预约内容1', 1, NULL, NULL, '2022-04-30 11:07:42'),
	(2, 3, 2, '165131686226234', '预约标题2', 3, '2022-04-30 11:07:42', '预约内容2', 1, NULL, NULL, '2022-04-30 11:07:42'),
	(3, 2, 3, '16513168622621', '预约标题3', 2, '2022-04-30 11:07:42', '预约内容3', 1, NULL, NULL, '2022-04-30 11:07:42'),
	(4, 2, 2, '165131686226239', '预约标题4', 1, '2022-04-30 11:07:42', '预约内容4', 1, NULL, NULL, '2022-04-30 11:07:42'),
	(5, 2, 1, '165131686226254', '预约标题5', 2, '2022-04-30 11:07:42', '预约内容5', 1, NULL, NULL, '2022-04-30 11:07:42'),
	(6, 2, 1, '1651317462115', '预约标题1211', 3, '2022-05-01 19:02:02', '<p>头痛需要预约医生查看以下</p>', 2, '来吧,当天有空', '2022-04-30 11:20:13', '2022-04-30 11:18:19');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `yonghu_address` varchar(200) DEFAULT NULL COMMENT '现住址',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_uuid_number`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `yonghu_address`, `sex_types`, `yonghu_email`, `create_time`) VALUES
	(1, '用户1', '123456', '165131686226659', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/yiliaozonghefuwu/upload/yonghu1.jpg', '现住址1', 2, '1@qq.com', '2022-04-30 11:07:42'),
	(2, '用户2', '123456', '16513168622667', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/yiliaozonghefuwu/upload/yonghu2.jpg', '现住址2', 1, '2@qq.com', '2022-04-30 11:07:42'),
	(3, '用户3', '123456', '165131686226663', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/yiliaozonghefuwu/upload/yonghu3.jpg', '现住址3', 2, '3@qq.com', '2022-04-30 11:07:42');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
