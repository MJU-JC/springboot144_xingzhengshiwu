/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - gaoxiaobangongxingzheng
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gaoxiaobangongxingzheng` /*!40100 DEFAULT CHARACTER SET utf8 */;

/*Table structure for table `bangongshi` */

DROP TABLE IF EXISTS `bangongshi`;

CREATE TABLE `bangongshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bangongshi_name` varchar(200) DEFAULT NULL COMMENT '办公室房间号  Search111',
  `bangongshi_address` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '使用教师',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='办公室';

/*Data for the table `bangongshi` */

insert  into `bangongshi`(`id`,`bangongshi_name`,`bangongshi_address`,`jiaoshi_id`,`create_time`) values (9,'办公室房间号9','详细地址9',3,'2022-02-07 21:57:29'),(10,'办公室房间号10','详细地址10',1,'2022-02-07 21:57:29'),(11,'办公室房间号11','详细地址11',NULL,'2022-02-07 21:57:29');

/*Table structure for table `bangongshi_shenqing` */

DROP TABLE IF EXISTS `bangongshi_shenqing`;

CREATE TABLE `bangongshi_shenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '申请教师',
  `bangongshi_id` int(11) DEFAULT NULL COMMENT '申请办公室',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `bangongshi_shenqing_yesno_types` int(11) DEFAULT NULL COMMENT '申请结果 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='办公室申请';

/*Data for the table `bangongshi_shenqing` */

insert  into `bangongshi_shenqing`(`id`,`jiaoshi_id`,`bangongshi_id`,`insert_time`,`bangongshi_shenqing_yesno_types`,`create_time`) values (14,2,11,'2022-02-08 10:44:47',2,'2022-02-08 10:44:47');

/*Table structure for table `bangongwuzi` */

DROP TABLE IF EXISTS `bangongwuzi`;

CREATE TABLE `bangongwuzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bangongwuzi_uuid_number` varchar(200) DEFAULT NULL COMMENT '物资编号',
  `bangongwuzi_name` varchar(200) DEFAULT NULL COMMENT '物资名称  Search111',
  `bangongwuzi_types` int(11) DEFAULT NULL COMMENT '物资类型',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '使用教师',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='办公物资';

/*Data for the table `bangongwuzi` */

insert  into `bangongwuzi`(`id`,`bangongwuzi_uuid_number`,`bangongwuzi_name`,`bangongwuzi_types`,`jiaoshi_id`,`create_time`) values (1,'16442422491944','物资名称1',2,1,'2022-02-07 21:57:29'),(2,'164424224919420','物资名称2',1,2,'2022-02-07 21:57:29'),(3,'164424224919418','物资名称3',1,2,'2022-02-07 21:57:29'),(4,'16442422491940','物资名称4',2,1,'2022-02-07 21:57:29'),(5,'16442422491948','物资名称5',2,3,'2022-02-07 21:57:29'),(6,'16442422491940','物资名称6',2,1,'2022-02-07 21:57:29'),(7,'16442422491944','物资名称7',2,1,'2022-02-07 21:57:29'),(8,'16442422491944','物资名称8',1,2,'2022-02-07 21:57:29'),(9,'164424224919418','物资名称9',2,3,'2022-02-07 21:57:29'),(10,'164424224919418','物资名称10',1,3,'2022-02-07 21:57:29'),(11,'16442422491943','物资名称11',2,NULL,'2022-02-07 21:57:29');

/*Table structure for table `bangongwuzi_shenqing` */

DROP TABLE IF EXISTS `bangongwuzi_shenqing`;

CREATE TABLE `bangongwuzi_shenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '申请教师',
  `bangongwuzi_id` int(11) DEFAULT NULL COMMENT '申请办公物资',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `bangongwuzi_shenqing_yesno_types` int(11) DEFAULT NULL COMMENT '申请结果 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='办公物资申请';

/*Data for the table `bangongwuzi_shenqing` */

insert  into `bangongwuzi_shenqing`(`id`,`jiaoshi_id`,`bangongwuzi_id`,`insert_time`,`bangongwuzi_shenqing_yesno_types`,`create_time`) values (12,2,11,'2022-02-08 10:54:20',2,'2022-02-08 10:54:20');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (65,'sex_types','性别类型',1,'男',NULL,NULL,'2022-02-07 21:57:15'),(66,'sex_types','性别类型',2,'女',NULL,NULL,'2022-02-07 21:57:15'),(67,'bangongwuzi_types','办公物资类型名称',1,'类型1',NULL,NULL,'2022-02-07 21:57:15'),(68,'bangongwuzi_types','办公物资类型名称',2,'类型2',NULL,NULL,'2022-02-07 21:57:15'),(69,'zhuangtai_types','状态',1,'未使用',NULL,NULL,'2022-02-07 21:57:15'),(70,'zhuangtai_types','状态',2,'已使用',NULL,NULL,'2022-02-07 21:57:15'),(71,'huiyishi_types','会议室类型名称',1,'类型1',NULL,NULL,'2022-02-07 21:57:15'),(72,'huiyishi_types','会议室类型名称',2,'类型2',NULL,NULL,'2022-02-07 21:57:15'),(73,'jiaoshi_qingjia_yesno_types','请假审核',1,'未审核',NULL,NULL,'2022-02-07 21:57:15'),(74,'jiaoshi_qingjia_yesno_types','请假审核',2,'通过',NULL,NULL,'2022-02-07 21:57:15'),(75,'jiaoshi_qingjia_yesno_types','请假审核',3,'拒绝',NULL,NULL,'2022-02-07 21:57:15'),(76,'jiaoshi_lizhi_yesno_types','离职审核',1,'未审核',NULL,NULL,'2022-02-07 21:57:15'),(77,'jiaoshi_lizhi_yesno_types','离职审核',2,'通过',NULL,NULL,'2022-02-07 21:57:15'),(78,'jiaoshi_lizhi_yesno_types','离职审核',3,'拒绝',NULL,NULL,'2022-02-07 21:57:15'),(79,'bangongshi_shenqing_yesno_types','办公室审核',1,'未审核',NULL,NULL,'2022-02-07 21:57:15'),(80,'bangongshi_shenqing_yesno_types','办公室审核',2,'通过',NULL,NULL,'2022-02-07 21:57:15'),(81,'bangongshi_shenqing_yesno_types','办公室审核',3,'拒绝',NULL,NULL,'2022-02-07 21:57:15'),(82,'bangongwuzi_shenqing_yesno_types','办公物资审核',1,'未审核',NULL,NULL,'2022-02-07 21:57:15'),(83,'bangongwuzi_shenqing_yesno_types','办公物资审核',2,'通过',NULL,NULL,'2022-02-07 21:57:15'),(84,'bangongwuzi_shenqing_yesno_types','办公物资审核',3,'拒绝',NULL,NULL,'2022-02-07 21:57:15'),(85,'huiyishi_shenqing_yesno_types','会议室审核',1,'未审核',NULL,NULL,'2022-02-07 21:57:15'),(86,'huiyishi_shenqing_yesno_types','会议室审核',2,'通过',NULL,NULL,'2022-02-07 21:57:15'),(87,'huiyishi_shenqing_yesno_types','会议室审核',3,'拒绝',NULL,NULL,'2022-02-07 21:57:15'),(88,'yinzhang_shenqing_yesno_types','印章审核',1,'未审核',NULL,NULL,'2022-02-07 21:57:15'),(89,'yinzhang_shenqing_yesno_types','印章审核',2,'通过',NULL,NULL,'2022-02-07 21:57:15'),(90,'yinzhang_shenqing_yesno_types','印章审核',3,'拒绝',NULL,NULL,'2022-02-07 21:57:15'),(91,'yinzhangadd_shenqing_yesno_types','印章添加审核',1,'未审核',NULL,NULL,'2022-02-07 21:57:15'),(92,'yinzhangadd_shenqing_yesno_types','印章添加审核',2,'通过',NULL,NULL,'2022-02-07 21:57:15'),(93,'yinzhangadd_shenqing_yesno_types','印章添加审核',3,'拒绝',NULL,NULL,'2022-02-07 21:57:15');

/*Table structure for table `huiyishi` */

DROP TABLE IF EXISTS `huiyishi`;

CREATE TABLE `huiyishi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huiyishi_uuid_number` varchar(200) DEFAULT NULL COMMENT '会议室编号',
  `huiyishi_address` varchar(200) DEFAULT NULL COMMENT '会议室地址  Search111',
  `huiyishi_size` varchar(200) DEFAULT NULL COMMENT '会议室大小',
  `huiyishi_types` int(11) DEFAULT NULL COMMENT '会议室类型',
  `zhuangtai_types` int(11) DEFAULT NULL COMMENT '会议室状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='会议室';

/*Data for the table `huiyishi` */

insert  into `huiyishi`(`id`,`huiyishi_uuid_number`,`huiyishi_address`,`huiyishi_size`,`huiyishi_types`,`zhuangtai_types`,`create_time`) values (5,'164424224920714','会议室地址5','会议室大小5',1,1,'2022-02-07 21:57:29'),(6,'164424224920716','会议室地址6','会议室大小6',2,2,'2022-02-07 21:57:29'),(7,'16442422492071','会议室地址7','会议室大小7',1,1,'2022-02-07 21:57:29'),(8,'164424224920720','会议室地址8','会议室大小8',2,2,'2022-02-07 21:57:29'),(9,'16442422492075','会议室地址9','会议室大小9',1,1,'2022-02-07 21:57:29'),(10,'16442422492073','会议室地址10','会议室大小10',1,1,'2022-02-07 21:57:29');

/*Table structure for table `huiyishi_shenqing` */

DROP TABLE IF EXISTS `huiyishi_shenqing`;

CREATE TABLE `huiyishi_shenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '申请教师',
  `huiyishi_id` int(11) DEFAULT NULL COMMENT '申请办公物资',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `huiyishi_shenqing_yesno_types` int(11) DEFAULT NULL COMMENT '申请结果 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='会议室申请';

/*Data for the table `huiyishi_shenqing` */

insert  into `huiyishi_shenqing`(`id`,`jiaoshi_id`,`huiyishi_id`,`insert_time`,`huiyishi_shenqing_yesno_types`,`create_time`) values (17,NULL,9,'2022-02-08 14:46:10',2,'2022-02-08 14:46:10'),(18,5,6,'2022-02-08 15:49:35',2,'2022-02-08 15:49:35'),(19,NULL,7,'2022-02-08 15:52:35',2,'2022-02-08 15:52:35');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '学号',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `jiaoshi_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`username`,`password`,`jiaoshi_name`,`sex_types`,`jiaoshi_id_number`,`jiaoshi_phone`,`jiaoshi_photo`,`jiaoshi_delete`,`create_time`) values (1,'a1','123456','教师姓名1',1,'410224199610232001','17703786901','http://localhost:8080/gaoxiaobangongxingzheng/upload/1644283669105.jpg',1,'2022-02-07 21:57:29'),(2,'a2','123456','教师姓名2',2,'410224199610232002','17703786902','http://localhost:8080/gaoxiaobangongxingzheng/upload/1644283657139.jpg',1,'2022-02-07 21:57:29'),(3,'a3','123456','教师姓名3',1,'410224199610232003','17703786903','http://localhost:8080/gaoxiaobangongxingzheng/upload/1644283646392.jpg',1,'2022-02-07 21:57:29'),(4,'按','123456','教师a3',NULL,'431332199911211111','13344225151',NULL,2,'2022-02-08 15:45:53'),(5,'a4','123456','教师a4',2,'432114199911214111','13311442141','http://localhost:8080/gaoxiaobangongxingzheng/upload/1644306452613.jpg',2,'2022-02-08 15:47:18');

/*Table structure for table `jiaoshi_lizhi` */

DROP TABLE IF EXISTS `jiaoshi_lizhi`;

CREATE TABLE `jiaoshi_lizhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '申请教师',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '离职申请时间',
  `lizhi_content` text COMMENT '离职原因',
  `jiaoshi_lizhi_yesno_types` int(11) DEFAULT NULL COMMENT '审核结果 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='离职申请';

/*Data for the table `jiaoshi_lizhi` */

insert  into `jiaoshi_lizhi`(`id`,`jiaoshi_id`,`insert_time`,`lizhi_content`,`jiaoshi_lizhi_yesno_types`,`create_time`) values (1,1,'2022-02-07 21:57:29','离职原因1',3,'2022-02-07 21:57:29'),(2,3,'2022-02-07 21:57:29','离职原因2',3,'2022-02-07 21:57:29'),(13,5,'2022-02-08 15:49:17','<p>2312312312</p>',2,'2022-02-08 15:49:17');

/*Table structure for table `jiaoshi_qingjia` */

DROP TABLE IF EXISTS `jiaoshi_qingjia`;

CREATE TABLE `jiaoshi_qingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '申请教师',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '请假时间',
  `qingjia_time` timestamp NULL DEFAULT NULL COMMENT '请假结束时间',
  `jiaoshi_qingjia_yesno_types` int(11) DEFAULT NULL COMMENT '审核结果 Search111',
  `qingjia_content` text COMMENT '请假原因',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='请假申请';

/*Data for the table `jiaoshi_qingjia` */

insert  into `jiaoshi_qingjia`(`id`,`jiaoshi_id`,`insert_time`,`qingjia_time`,`jiaoshi_qingjia_yesno_types`,`qingjia_content`,`create_time`) values (1,3,'2022-02-07 21:57:29','2022-02-07 21:57:29',3,'请假原因1','2022-02-07 21:57:29'),(2,1,'2022-02-07 21:57:29','2022-02-07 21:57:29',1,'请假原因2','2022-02-07 21:57:29'),(13,5,'2022-02-08 15:48:55','2022-02-25 00:00:00',2,'<p><span style=\"color: rgb(96, 98, 102);\">请假原因123123</span></p>','2022-02-08 15:48:55');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','apinqxw9qt7qwnz8nv02yc5tzh0l3u7s','2022-02-07 21:14:04','2022-02-08 17:01:21'),(2,1,'a1','jiaoshi','教师','bjdt628d504dyac6mf8sgtlb0hc1lpt7','2022-02-08 10:15:30','2022-02-08 16:43:55'),(3,2,'a2','jiaoshi','教师','3lzz4gdw2ugxaq8wbel18riobav85686','2022-02-08 10:25:00','2022-02-08 16:44:31'),(4,3,'a3','jiaoshi','教师','gn4zaepmov2p6fu3zn0tpljshky4xkwr','2022-02-08 15:46:02','2022-02-08 16:46:02'),(5,5,'a4','jiaoshi','教师','vjn8bs2qd12lv83ozxpa7vyvt5uoi7n0','2022-02-08 15:47:27','2022-02-08 16:54:21');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yinzhang` */

DROP TABLE IF EXISTS `yinzhang`;

CREATE TABLE `yinzhang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yinzhang_uuid_number` varchar(200) DEFAULT NULL COMMENT '印章编号',
  `yinzhang_name` varchar(200) DEFAULT NULL COMMENT '印章名称  Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='印章';

/*Data for the table `yinzhang` */

insert  into `yinzhang`(`id`,`yinzhang_uuid_number`,`yinzhang_name`,`create_time`) values (1,'164424224924611','印章名称1','2022-02-07 21:57:29'),(9,'164424224924611','印章名称9','2022-02-07 21:57:29'),(15,'1644306803398','教师a4添加的印章信息',NULL);

/*Table structure for table `yinzhang_shenqing` */

DROP TABLE IF EXISTS `yinzhang_shenqing`;

CREATE TABLE `yinzhang_shenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '申请教师',
  `yinzhang_id` int(11) DEFAULT NULL COMMENT '申请办公物资',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `yinzhang_shenqing_yesno_types` int(11) DEFAULT NULL COMMENT '申请结果 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='印章申请';

/*Data for the table `yinzhang_shenqing` */

insert  into `yinzhang_shenqing`(`id`,`jiaoshi_id`,`yinzhang_id`,`insert_time`,`yinzhang_shenqing_yesno_types`,`create_time`) values (1,3,1,'2022-02-07 21:57:29',1,'2022-02-07 21:57:29'),(14,5,15,'2022-02-08 15:54:26',2,'2022-02-08 15:54:26');

/*Table structure for table `yinzhangadd_shenqing` */

DROP TABLE IF EXISTS `yinzhangadd_shenqing`;

CREATE TABLE `yinzhangadd_shenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '申请教师',
  `yinzhang_name` varchar(200) DEFAULT NULL COMMENT '印章名称  Search111',
  `yinzhang_file` varchar(200) DEFAULT NULL COMMENT '材料',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `yinzhangadd_shenqing_yesno_types` int(11) DEFAULT NULL COMMENT '申请结果 Search111',
  `yinzhang_shenqing_content` text COMMENT '添加原因 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='印章添加申请';

/*Data for the table `yinzhangadd_shenqing` */

insert  into `yinzhangadd_shenqing`(`id`,`jiaoshi_id`,`yinzhang_name`,`yinzhang_file`,`insert_time`,`yinzhangadd_shenqing_yesno_types`,`yinzhang_shenqing_content`,`create_time`) values (13,5,'教师a4添加的印章信息','http://localhost:8080/gaoxiaobangongxingzheng/upload/1644306617591.index','2022-02-08 15:50:22',2,'<p><span style=\"color: rgb(96, 98, 102);\">添加原因11111</span></p>','2022-02-08 15:50:22');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
