/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - gaoxiaobiyeshengjiuye
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gaoxiaobiyeshengjiuye` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gaoxiaobiyeshengjiuye`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (4,'zhaopin_types','招聘岗位',1,'招聘岗位1',NULL,NULL,'2023-03-06 13:30:49'),(5,'zhaopin_types','招聘岗位',2,'招聘岗位2',NULL,NULL,'2023-03-06 13:30:49'),(6,'zhaopin_types','招聘岗位',3,'招聘岗位3',NULL,NULL,'2023-03-06 13:30:50'),(7,'shangxia_types','是否上架',1,'上架',NULL,NULL,'2023-03-06 13:30:50'),(8,'shangxia_types','是否上架',2,'下架',NULL,NULL,'2023-03-06 13:30:50'),(9,'sex_types','性别',1,'男',NULL,NULL,'2023-03-06 13:30:50'),(10,'sex_types','性别',2,'女',NULL,NULL,'2023-03-06 13:30:50'),(13,'news_types','公告信息类型',1,'公告信息类型1',NULL,NULL,'2023-03-06 13:30:50'),(14,'news_types','公告信息类型',2,'公告信息类型2',NULL,NULL,'2023-03-06 13:30:50'),(15,'news_types','公告信息类型',3,'公告信息类型3',NULL,NULL,'2023-03-06 13:30:50'),(17,'mianshishenqing_yesno_types','申请状态',1,'未回复',NULL,NULL,'2023-03-06 13:30:50'),(18,'mianshishenqing_yesno_types','申请状态',2,'通过',NULL,NULL,'2023-03-06 13:30:50'),(19,'mianshishenqing_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-03-06 13:30:50'),(20,'gongsi_types','公司类型',1,'公司类型1',NULL,NULL,'2023-03-06 13:30:50'),(21,'gongsi_types','公司类型',2,'公司类型2',NULL,NULL,'2023-03-06 13:30:50'),(22,'gongsi_types','公司类型',3,'公司类型3',NULL,NULL,'2023-03-06 13:30:50'),(23,'zhaopin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-06 13:30:50'),(24,'zhaopin_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-03-06 13:30:50'),(25,'zhaopin_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-03-06 13:30:50'),(26,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-06 13:30:50'),(27,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-06 13:30:50');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `gongsi_id` int(11) DEFAULT NULL COMMENT '公司',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`gongsi_id`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',NULL,3,NULL,'发布内容1',447,1,'2023-03-06 13:31:11','2023-03-06 13:31:11','2023-03-06 13:31:11'),(2,'帖子标题2',NULL,3,NULL,'发布内容2',245,1,'2023-03-06 13:31:11','2023-03-06 13:31:11','2023-03-06 13:31:11'),(3,'帖子标题3',NULL,3,NULL,'发布内容3',289,1,'2023-03-06 13:31:11','2023-03-06 13:31:11','2023-03-06 13:31:11'),(4,'帖子标题4',NULL,2,NULL,'发布内容4',433,1,'2023-03-06 13:31:11','2023-03-06 13:31:11','2023-03-06 13:31:11'),(5,'帖子标题5',NULL,2,NULL,'发布内容5',262,1,'2023-03-06 13:31:11','2023-03-06 13:31:11','2023-03-06 13:31:11'),(6,'帖子标题6',NULL,3,NULL,'发布内容6',232,1,'2023-03-06 13:31:11','2023-03-06 13:31:11','2023-03-06 13:31:11'),(7,'帖子标题7',NULL,2,NULL,'发布内容7',294,1,'2023-03-06 13:31:11','2023-03-06 13:31:11','2023-03-06 13:31:11'),(8,'帖子标题8',NULL,2,NULL,'发布内容8',54,1,'2023-03-06 13:31:11','2023-03-06 13:31:11','2023-03-06 13:31:11'),(9,'帖子标题9',NULL,2,NULL,'发布内容9',237,1,'2023-03-06 13:31:11','2023-03-06 13:31:11','2023-03-06 13:31:11'),(10,'帖子标题10',NULL,3,NULL,'发布内容10',249,1,'2023-03-06 13:31:11','2023-03-06 13:31:11','2023-03-06 13:31:11'),(11,'帖子标题11',NULL,3,NULL,'发布内容11',63,1,'2023-03-06 13:31:11','2023-03-06 13:31:11','2023-03-06 13:31:11'),(12,'帖子标题12',NULL,1,NULL,'发布内容12',289,1,'2023-03-06 13:31:11','2023-03-06 13:31:11','2023-03-06 13:31:11'),(13,'帖子标题13',NULL,3,NULL,'发布内容13',211,1,'2023-03-06 13:31:11','2023-03-06 13:31:11','2023-03-06 13:31:11'),(14,'帖子标题14',NULL,3,NULL,'<p>招聘信息详情14<img src=\"upload/1678087340546.jpeg\"></p>',31,1,'2023-03-06 13:31:11','2023-03-06 14:41:26','2023-03-06 13:31:11'),(15,NULL,NULL,1,NULL,'123123',14,2,'2023-03-06 15:50:46',NULL,'2023-03-06 15:50:46'),(16,NULL,1,NULL,NULL,'12312312',14,2,'2023-03-06 15:52:15',NULL,'2023-03-06 15:52:15'),(17,NULL,NULL,NULL,1,'123123',14,2,'2023-03-06 15:53:00',NULL,'2023-03-06 15:53:00');

/*Table structure for table `gongsi` */

DROP TABLE IF EXISTS `gongsi`;

CREATE TABLE `gongsi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `gongsi_name` varchar(200) DEFAULT NULL COMMENT '公司名称 Search111 ',
  `gongsi_types` int(11) DEFAULT NULL COMMENT '公司类型',
  `gongsi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `gongsi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `gongsi_photo` varchar(200) DEFAULT NULL COMMENT '公司封面',
  `gongsi_content` text COMMENT '公司简介 ',
  `gongsi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='公司';

/*Data for the table `gongsi` */

insert  into `gongsi`(`id`,`username`,`password`,`gongsi_name`,`gongsi_types`,`gongsi_phone`,`gongsi_email`,`gongsi_photo`,`gongsi_content`,`gongsi_delete`,`create_time`) values (1,'a1','123456','公司名称1',2,'17703786901','1@qq.com','upload/gongsi1.jpg','公司简介1',1,'2023-03-06 13:31:11'),(2,'a2','123456','公司名称2',2,'17703786902','2@qq.com','upload/gongsi2.jpg','公司简介2',1,'2023-03-06 13:31:11'),(3,'a3','123456','公司名称3',3,'17703786903','3@qq.com','upload/gongsi3.jpg','公司简介3',1,'2023-03-06 13:31:11');

/*Table structure for table `gongzuopingjia` */

DROP TABLE IF EXISTS `gongzuopingjia`;

CREATE TABLE `gongzuopingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `gongsi_id` int(11) DEFAULT NULL COMMENT '公司',
  `gongzuopingjia_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='工作评价';

/*Data for the table `gongzuopingjia` */

insert  into `gongzuopingjia`(`id`,`yonghu_id`,`gongsi_id`,`gongzuopingjia_text`,`insert_time`,`create_time`) values (1,2,2,'评价内容1','2023-03-06 13:31:11','2023-03-06 13:31:11'),(2,2,1,'评价内容2','2023-03-06 13:31:11','2023-03-06 13:31:11'),(3,1,2,'评价内容3','2023-03-06 13:31:11','2023-03-06 13:31:11'),(4,3,1,'评价内容4','2023-03-06 13:31:11','2023-03-06 13:31:11'),(5,1,3,'评价内容5','2023-03-06 13:31:11','2023-03-06 13:31:11'),(6,2,2,'评价内容6','2023-03-06 13:31:11','2023-03-06 13:31:11'),(7,1,2,'评价内容7','2023-03-06 13:31:11','2023-03-06 13:31:11'),(8,1,3,'评价内容8','2023-03-06 13:31:11','2023-03-06 13:31:11'),(9,2,2,'评价内容9','2023-03-06 13:31:11','2023-03-06 13:31:11'),(10,3,2,'评价内容10','2023-03-06 13:31:11','2023-03-06 13:31:11'),(11,2,2,'评价内容11','2023-03-06 13:31:11','2023-03-06 13:31:11'),(12,3,3,'评价内容12','2023-03-06 13:31:11','2023-03-06 13:31:11'),(13,3,3,'评价内容13','2023-03-06 13:31:11','2023-03-06 13:31:11'),(14,3,3,'评价内容14','2023-03-06 13:31:11','2023-03-06 13:31:11'),(29,3,1,'12312','2023-03-06 14:17:34','2023-03-06 14:17:34'),(30,1,1,'12312','2023-03-06 15:51:57','2023-03-06 15:51:57');

/*Table structure for table `jinsheng` */

DROP TABLE IF EXISTS `jinsheng`;

CREATE TABLE `jinsheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jinsheng_name` varchar(200) DEFAULT NULL COMMENT '公司名称  Search111 ',
  `jinsheng_time` timestamp NULL DEFAULT NULL COMMENT '具体时间',
  `jinsheng_text` text COMMENT '相关情况',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='就业晋升信息';

/*Data for the table `jinsheng` */

insert  into `jinsheng`(`id`,`yonghu_id`,`jinsheng_name`,`jinsheng_time`,`jinsheng_text`,`insert_time`,`create_time`) values (1,3,'公司名称1','2023-03-06 13:31:11','相关情况1','2023-03-06 13:31:11','2023-03-06 13:31:11'),(2,3,'公司名称2','2023-03-06 13:31:11','相关情况2','2023-03-06 13:31:11','2023-03-06 13:31:11'),(3,1,'公司名称3','2023-03-06 13:31:11','相关情况3','2023-03-06 13:31:11','2023-03-06 13:31:11'),(4,1,'公司名称4','2023-03-06 13:31:11','相关情况4','2023-03-06 13:31:11','2023-03-06 13:31:11'),(5,1,'公司名称5','2023-03-06 13:31:11','相关情况5','2023-03-06 13:31:11','2023-03-06 13:31:11'),(6,2,'公司名称6','2023-03-06 13:31:11','相关情况6','2023-03-06 13:31:11','2023-03-06 13:31:11'),(7,3,'公司名称7','2023-03-06 13:31:11','相关情况7','2023-03-06 13:31:11','2023-03-06 13:31:11'),(8,1,'公司名称8','2023-03-06 13:31:11','相关情况8','2023-03-06 13:31:11','2023-03-06 13:31:11'),(9,1,'公司名称9','2023-03-06 13:31:11','相关情况9','2023-03-06 13:31:11','2023-03-06 13:31:11'),(10,2,'公司名称10','2023-03-06 13:31:11','相关情况10','2023-03-06 13:31:11','2023-03-06 13:31:11'),(11,3,'公司名称11','2023-03-06 13:31:11','相关情况11','2023-03-06 13:31:11','2023-03-06 13:31:11'),(12,2,'公司名称12','2023-03-06 13:31:11','相关情况12','2023-03-06 13:31:11','2023-03-06 13:31:11'),(13,1,'公司名称13','2023-03-06 13:31:11','相关情况13','2023-03-06 13:31:11','2023-03-06 13:31:11'),(14,1,'公司名称14','2023-03-06 13:31:11','相关情况14','2023-03-06 13:31:11','2023-03-06 13:31:11');

/*Table structure for table `mianshishenqing` */

DROP TABLE IF EXISTS `mianshishenqing`;

CREATE TABLE `mianshishenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '招聘',
  `mianshishenqing_time` timestamp NULL DEFAULT NULL COMMENT '面试时间',
  `mianshishenqing_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111',
  `mianshishenqing_yesno_text` text COMMENT '投递回复',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='面试申请';

/*Data for the table `mianshishenqing` */

insert  into `mianshishenqing`(`id`,`yonghu_id`,`zhaopin_id`,`mianshishenqing_time`,`mianshishenqing_yesno_types`,`mianshishenqing_yesno_text`,`insert_time`,`create_time`) values (1,3,1,'2023-03-06 13:31:11',1,NULL,'2023-03-06 13:31:11','2023-03-06 13:31:11'),(2,2,2,'2023-03-06 13:31:11',1,NULL,'2023-03-06 13:31:11','2023-03-06 13:31:11'),(3,3,3,'2023-03-06 13:31:11',1,NULL,'2023-03-06 13:31:11','2023-03-06 13:31:11'),(4,3,4,'2023-03-06 13:31:11',1,NULL,'2023-03-06 13:31:11','2023-03-06 13:31:11'),(5,3,5,'2023-03-06 13:31:11',1,NULL,'2023-03-06 13:31:11','2023-03-06 13:31:11'),(6,2,6,'2023-03-06 13:31:11',1,NULL,'2023-03-06 13:31:11','2023-03-06 13:31:11'),(7,2,7,'2023-03-06 13:31:11',1,NULL,'2023-03-06 13:31:11','2023-03-06 13:31:11'),(8,2,8,'2023-03-06 13:31:11',1,NULL,'2023-03-06 13:31:11','2023-03-06 13:31:11'),(9,1,9,'2023-03-06 13:31:11',1,NULL,'2023-03-06 13:31:11','2023-03-06 13:31:11'),(10,1,10,'2023-03-06 13:31:11',1,NULL,'2023-03-06 13:31:11','2023-03-06 13:31:11'),(11,2,11,'2023-03-06 13:31:11',1,NULL,'2023-03-06 13:31:11','2023-03-06 13:31:11'),(12,1,12,'2023-03-06 13:31:11',1,NULL,'2023-03-06 13:31:11','2023-03-06 13:31:11'),(13,1,13,'2023-03-06 13:31:11',1,NULL,'2023-03-06 13:31:11','2023-03-06 13:31:11'),(14,3,14,'2023-03-06 13:31:11',2,'21','2023-03-06 13:31:11','2023-03-06 13:31:11'),(29,1,14,'2023-03-06 14:39:12',2,'123123','2023-03-06 14:39:16','2023-03-06 14:39:16');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告信息标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告信息类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告信息图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告信息时间',
  `news_content` text COMMENT '公告信息详情',
  `news_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`news_delete`,`create_time`) values (1,'公告信息标题1',2,'upload/news1.jpg','2023-03-06 13:31:11','公告信息详情1',1,'2023-03-06 13:31:11'),(2,'公告信息标题2',3,'upload/news2.jpg','2023-03-06 13:31:11','公告信息详情2',1,'2023-03-06 13:31:11'),(3,'公告信息标题3',2,'upload/news3.jpg','2023-03-06 13:31:11','公告信息详情3',1,'2023-03-06 13:31:11'),(4,'公告信息标题4',1,'upload/news4.jpg','2023-03-06 13:31:11','公告信息详情4',1,'2023-03-06 13:31:11'),(5,'公告信息标题5',1,'upload/news5.jpg','2023-03-06 13:31:11','公告信息详情5',1,'2023-03-06 13:31:11'),(6,'公告信息标题6',1,'upload/news6.jpg','2023-03-06 13:31:11','公告信息详情6',1,'2023-03-06 13:31:11'),(7,'公告信息标题7',2,'upload/news7.jpg','2023-03-06 13:31:11','公告信息详情7',1,'2023-03-06 13:31:11'),(8,'公告信息标题8',1,'upload/news8.jpg','2023-03-06 13:31:11','公告信息详情8',1,'2023-03-06 13:31:11'),(9,'公告信息标题9',1,'upload/news9.jpg','2023-03-06 13:31:11','公告信息详情9',1,'2023-03-06 13:31:11'),(10,'公告信息标题10',2,'upload/news10.jpg','2023-03-06 13:31:11','公告信息详情10',1,'2023-03-06 13:31:11'),(11,'公告信息标题11',1,'upload/news11.jpg','2023-03-06 13:31:11','公告信息详情11',1,'2023-03-06 13:31:11'),(12,'公告信息标题12',3,'upload/news12.jpg','2023-03-06 13:31:11','公告信息详情12',1,'2023-03-06 13:31:11'),(13,'公告信息标题13',3,'upload/news13.jpg','2023-03-06 13:31:11','公告信息详情13',1,'2023-03-06 13:31:11'),(14,'公告信息标题14',3,'upload/news14.jpg','2023-03-06 13:31:11','公告信息详情14',1,'2023-03-06 13:31:11');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','gongsi','公司','betfs9pqs7pz2qph0decfr2l0lc3pbw1','2023-03-06 13:49:04','2023-03-06 16:54:21'),(2,1,'admin','users','管理员','9dga151p407abhxe7fzzlbi94qgnjifi','2023-03-06 14:19:17','2023-03-06 16:56:04'),(3,1,'a1','yonghu','用户','iz3tpnb6gf4o6dz9at7v8pqg1x7y1a7x','2023-03-06 14:20:29','2023-03-06 16:48:34');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`sex_types`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','upload/yonghu1.jpg','17703786901','410224199010102001','1@qq.com',2,1,'2023-03-06 13:31:11'),(2,'a2','123456','用户姓名2','upload/yonghu2.jpg','17703786902','410224199010102002','2@qq.com',1,1,'2023-03-06 13:31:11'),(3,'a3','123456','用户姓名3','upload/yonghu3.jpg','17703786903','410224199010102003','3@qq.com',1,1,'2023-03-06 13:31:11');

/*Table structure for table `zhaopin` */

DROP TABLE IF EXISTS `zhaopin`;

CREATE TABLE `zhaopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongsi_id` int(11) DEFAULT NULL COMMENT '公司',
  `zhaopin_name` varchar(200) DEFAULT NULL COMMENT '招聘信息名称  Search111 ',
  `zhaopin_photo` varchar(200) DEFAULT NULL COMMENT '招聘信息照片',
  `zhaopin_daiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `zhaopin_address` varchar(200) DEFAULT NULL COMMENT '上班地点',
  `lianxiren_name` varchar(200) DEFAULT NULL COMMENT '联系人',
  `zhaopin_phone` varchar(200) DEFAULT NULL COMMENT '招聘电话',
  `zan_number` int(111) DEFAULT NULL COMMENT '赞',
  `cai_number` int(111) DEFAULT NULL COMMENT '踩',
  `zhaopin_types` int(11) DEFAULT NULL COMMENT '招聘岗位 Search111',
  `zhaopin_renshu_number` int(11) DEFAULT NULL COMMENT '招聘人数',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `zhaopin_content` text COMMENT '招聘信息详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='职位招聘';

/*Data for the table `zhaopin` */

insert  into `zhaopin`(`id`,`gongsi_id`,`zhaopin_name`,`zhaopin_photo`,`zhaopin_daiyu`,`zhaopin_address`,`lianxiren_name`,`zhaopin_phone`,`zan_number`,`cai_number`,`zhaopin_types`,`zhaopin_renshu_number`,`shangxia_types`,`zhaopin_content`,`create_time`) values (1,3,'招聘信息名称1','upload/zhaopin1.jpg','薪资待遇1','上班地点1','联系人1','17703786901',315,374,2,192,1,'招聘信息详情1','2023-03-06 13:31:11'),(2,3,'招聘信息名称2','upload/zhaopin2.jpg','薪资待遇2','上班地点2','联系人2','17703786902',17,239,1,244,1,'招聘信息详情2','2023-03-06 13:31:11'),(3,2,'招聘信息名称3','upload/zhaopin3.jpg','薪资待遇3','上班地点3','联系人3','17703786903',431,17,2,116,1,'招聘信息详情3','2023-03-06 13:31:11'),(4,3,'招聘信息名称4','upload/zhaopin4.jpg','薪资待遇4','上班地点4','联系人4','17703786904',112,343,3,229,1,'招聘信息详情4','2023-03-06 13:31:11'),(5,1,'招聘信息名称5','upload/zhaopin5.jpg','薪资待遇5','上班地点5','联系人5','17703786905',216,270,1,341,1,'招聘信息详情5','2023-03-06 13:31:11'),(6,3,'招聘信息名称6','upload/zhaopin6.jpg','薪资待遇6','上班地点6','联系人6','17703786906',12,109,1,159,1,'招聘信息详情6','2023-03-06 13:31:11'),(7,2,'招聘信息名称7','upload/zhaopin7.jpg','薪资待遇7','上班地点7','联系人7','17703786907',354,363,3,81,1,'招聘信息详情7','2023-03-06 13:31:11'),(8,1,'招聘信息名称8','upload/zhaopin8.jpg','薪资待遇8','上班地点8','联系人8','17703786908',348,297,3,311,1,'招聘信息详情8','2023-03-06 13:31:11'),(9,2,'招聘信息名称9','upload/zhaopin9.jpg','薪资待遇9','上班地点9','联系人9','17703786909',200,98,1,389,1,'招聘信息详情9','2023-03-06 13:31:11'),(10,2,'招聘信息名称10','upload/zhaopin10.jpg','薪资待遇10','上班地点10','联系人10','17703786910',225,30,1,500,1,'招聘信息详情10','2023-03-06 13:31:11'),(11,3,'招聘信息名称11','upload/zhaopin11.jpg','薪资待遇11','上班地点11','联系人11','17703786911',250,223,2,230,1,'招聘信息详情11','2023-03-06 13:31:11'),(12,1,'招聘信息名称12','upload/zhaopin12.jpg','薪资待遇12','上班地点12','联系人12','17703786912',184,455,1,334,1,'招聘信息详情12','2023-03-06 13:31:11'),(13,3,'招聘信息名称13','upload/zhaopin13.jpg','薪资待遇13','上班地点13','联系人13','17703786913',307,306,3,384,1,'招聘信息详情13','2023-03-06 13:31:11'),(14,1,'招聘信息名称14','upload/zhaopin14.jpg','薪资待遇14','上班地点14','联系人14','17703786914',409,55,2,105,1,'<p>招聘信息详情14<img src=\"upload/1678087340546.jpeg\"></p>','2023-03-06 13:31:11');

/*Table structure for table `zhaopin_collection` */

DROP TABLE IF EXISTS `zhaopin_collection`;

CREATE TABLE `zhaopin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '职位',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhaopin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='职位收藏';

/*Data for the table `zhaopin_collection` */

insert  into `zhaopin_collection`(`id`,`zhaopin_id`,`yonghu_id`,`zhaopin_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-03-06 13:31:11','2023-03-06 13:31:11'),(2,2,2,1,'2023-03-06 13:31:11','2023-03-06 13:31:11'),(3,3,3,1,'2023-03-06 13:31:11','2023-03-06 13:31:11'),(4,4,1,1,'2023-03-06 13:31:11','2023-03-06 13:31:11'),(5,5,2,1,'2023-03-06 13:31:11','2023-03-06 13:31:11'),(6,6,1,1,'2023-03-06 13:31:11','2023-03-06 13:31:11'),(8,8,2,1,'2023-03-06 13:31:11','2023-03-06 13:31:11'),(9,9,1,1,'2023-03-06 13:31:11','2023-03-06 13:31:11'),(10,10,2,1,'2023-03-06 13:31:11','2023-03-06 13:31:11'),(12,12,3,1,'2023-03-06 13:31:11','2023-03-06 13:31:11'),(14,14,3,1,'2023-03-06 13:31:11','2023-03-06 13:31:11');

/*Table structure for table `zhaopin_liuyan` */

DROP TABLE IF EXISTS `zhaopin_liuyan`;

CREATE TABLE `zhaopin_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '职位',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhaopin_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='职位留言';

/*Data for the table `zhaopin_liuyan` */

insert  into `zhaopin_liuyan`(`id`,`zhaopin_id`,`yonghu_id`,`zhaopin_liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,1,'留言内容1','回复信息1','2023-03-06 13:31:11','2023-03-06 13:31:11','2023-03-06 13:31:11'),(2,2,3,'留言内容2','回复信息2','2023-03-06 13:31:11','2023-03-06 13:31:11','2023-03-06 13:31:11'),(3,3,2,'留言内容3','回复信息3','2023-03-06 13:31:11','2023-03-06 13:31:11','2023-03-06 13:31:11'),(4,4,2,'留言内容4','回复信息4','2023-03-06 13:31:11','2023-03-06 13:31:11','2023-03-06 13:31:11'),(5,5,2,'留言内容5','回复信息5','2023-03-06 13:31:11','2023-03-06 13:31:11','2023-03-06 13:31:11'),(6,6,3,'留言内容6','回复信息6','2023-03-06 13:31:11','2023-03-06 13:31:11','2023-03-06 13:31:11'),(7,7,2,'留言内容7','回复信息7','2023-03-06 13:31:11','2023-03-06 13:31:11','2023-03-06 13:31:11'),(8,8,1,'留言内容8','回复信息8','2023-03-06 13:31:11','2023-03-06 13:31:11','2023-03-06 13:31:11'),(9,9,1,'留言内容9','回复信息9','2023-03-06 13:31:11','2023-03-06 13:31:11','2023-03-06 13:31:11'),(10,10,2,'留言内容10','回复信息10','2023-03-06 13:31:11','2023-03-06 13:31:11','2023-03-06 13:31:11'),(11,11,1,'留言内容11','回复信息11','2023-03-06 13:31:11','2023-03-06 13:31:11','2023-03-06 13:31:11'),(12,12,1,'留言内容12','回复信息12','2023-03-06 13:31:11','2023-03-06 13:31:11','2023-03-06 13:31:11'),(13,13,1,'留言内容13','回复信息13','2023-03-06 13:31:11','2023-03-06 13:31:11','2023-03-06 13:31:11'),(14,14,3,'留言内容14','回复信息14','2023-03-06 13:31:11','2023-03-06 13:31:11','2023-03-06 13:31:11'),(15,14,1,'789','`12312','2023-03-06 14:39:23','2023-03-06 15:51:40','2023-03-06 14:39:23');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
