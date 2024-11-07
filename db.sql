/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmc8l16
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmc8l16` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmc8l16`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmc8l16/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmc8l16/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmc8l16/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `diqufenlei` */

DROP TABLE IF EXISTS `diqufenlei`;

CREATE TABLE `diqufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `diqufenlei` varchar(200) DEFAULT NULL COMMENT '地区分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='地区分类';

/*Data for the table `diqufenlei` */

insert  into `diqufenlei`(`id`,`addtime`,`diqufenlei`) values (41,'2021-04-29 16:27:41','地区分类1');
insert  into `diqufenlei`(`id`,`addtime`,`diqufenlei`) values (42,'2021-04-29 16:27:41','地区分类2');
insert  into `diqufenlei`(`id`,`addtime`,`diqufenlei`) values (43,'2021-04-29 16:27:41','地区分类3');
insert  into `diqufenlei`(`id`,`addtime`,`diqufenlei`) values (44,'2021-04-29 16:27:41','地区分类4');
insert  into `diqufenlei`(`id`,`addtime`,`diqufenlei`) values (45,'2021-04-29 16:27:41','地区分类5');
insert  into `diqufenlei`(`id`,`addtime`,`diqufenlei`) values (46,'2021-04-29 16:27:41','地区分类6');

/*Table structure for table `discussmanhuaxinxi` */

DROP TABLE IF EXISTS `discussmanhuaxinxi`;

CREATE TABLE `discussmanhuaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='漫画信息评论表';

/*Data for the table `discussmanhuaxinxi` */

insert  into `discussmanhuaxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (81,'2021-04-29 16:27:41',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussmanhuaxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (82,'2021-04-29 16:27:41',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussmanhuaxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (83,'2021-04-29 16:27:41',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussmanhuaxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (84,'2021-04-29 16:27:41',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussmanhuaxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (85,'2021-04-29 16:27:41',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussmanhuaxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (86,'2021-04-29 16:27:41',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `manhuafenlei` */

DROP TABLE IF EXISTS `manhuafenlei`;

CREATE TABLE `manhuafenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `manhuafenlei` varchar(200) DEFAULT NULL COMMENT '漫画分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='漫画分类';

/*Data for the table `manhuafenlei` */

insert  into `manhuafenlei`(`id`,`addtime`,`manhuafenlei`) values (31,'2021-04-29 16:27:41','漫画分类1');
insert  into `manhuafenlei`(`id`,`addtime`,`manhuafenlei`) values (32,'2021-04-29 16:27:41','漫画分类2');
insert  into `manhuafenlei`(`id`,`addtime`,`manhuafenlei`) values (33,'2021-04-29 16:27:41','漫画分类3');
insert  into `manhuafenlei`(`id`,`addtime`,`manhuafenlei`) values (34,'2021-04-29 16:27:41','漫画分类4');
insert  into `manhuafenlei`(`id`,`addtime`,`manhuafenlei`) values (35,'2021-04-29 16:27:41','漫画分类5');
insert  into `manhuafenlei`(`id`,`addtime`,`manhuafenlei`) values (36,'2021-04-29 16:27:41','漫画分类6');

/*Table structure for table `manhuaxinxi` */

DROP TABLE IF EXISTS `manhuaxinxi`;

CREATE TABLE `manhuaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `manhuabianhao` varchar(200) DEFAULT NULL COMMENT '漫画编号',
  `manhuamingcheng` varchar(200) DEFAULT NULL COMMENT '漫画名称',
  `manhuafenlei` varchar(200) DEFAULT NULL COMMENT '漫画分类',
  `diqu` varchar(200) DEFAULT NULL COMMENT '地区',
  `fengmiantupian` varchar(200) DEFAULT NULL COMMENT '封面图片',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `manhuazhuangtai` varchar(200) DEFAULT NULL COMMENT '漫画状态',
  `kaishiyuedu` longtext COMMENT '开始阅读',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `manhuabianhao` (`manhuabianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='漫画信息';

/*Data for the table `manhuaxinxi` */

insert  into `manhuaxinxi`(`id`,`addtime`,`manhuabianhao`,`manhuamingcheng`,`manhuafenlei`,`diqu`,`fengmiantupian`,`zuozhe`,`manhuazhuangtai`,`kaishiyuedu`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (21,'2021-04-29 16:27:41','漫画编号1','漫画名称1','漫画分类1','地区1','http://localhost:8080/ssmc8l16/upload/manhuaxinxi_fengmiantupian1.jpg','作者1','完结','开始阅读1',1,1,'2021-04-29 16:29:27',2);
insert  into `manhuaxinxi`(`id`,`addtime`,`manhuabianhao`,`manhuamingcheng`,`manhuafenlei`,`diqu`,`fengmiantupian`,`zuozhe`,`manhuazhuangtai`,`kaishiyuedu`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (22,'2021-04-29 16:27:41','漫画编号2','漫画名称2','漫画分类2','地区2','http://localhost:8080/ssmc8l16/upload/manhuaxinxi_fengmiantupian2.jpg','作者2','完结','开始阅读2',2,2,'2021-04-29 16:27:41',2);
insert  into `manhuaxinxi`(`id`,`addtime`,`manhuabianhao`,`manhuamingcheng`,`manhuafenlei`,`diqu`,`fengmiantupian`,`zuozhe`,`manhuazhuangtai`,`kaishiyuedu`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (23,'2021-04-29 16:27:41','漫画编号3','漫画名称3','漫画分类3','地区3','http://localhost:8080/ssmc8l16/upload/manhuaxinxi_fengmiantupian3.jpg','作者3','完结','开始阅读3',3,3,'2021-04-29 16:27:41',3);
insert  into `manhuaxinxi`(`id`,`addtime`,`manhuabianhao`,`manhuamingcheng`,`manhuafenlei`,`diqu`,`fengmiantupian`,`zuozhe`,`manhuazhuangtai`,`kaishiyuedu`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (24,'2021-04-29 16:27:41','漫画编号4','漫画名称4','漫画分类4','地区4','http://localhost:8080/ssmc8l16/upload/manhuaxinxi_fengmiantupian4.jpg','作者4','完结','开始阅读4',4,4,'2021-04-29 16:27:41',4);
insert  into `manhuaxinxi`(`id`,`addtime`,`manhuabianhao`,`manhuamingcheng`,`manhuafenlei`,`diqu`,`fengmiantupian`,`zuozhe`,`manhuazhuangtai`,`kaishiyuedu`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (25,'2021-04-29 16:27:41','漫画编号5','漫画名称5','漫画分类5','地区5','http://localhost:8080/ssmc8l16/upload/manhuaxinxi_fengmiantupian5.jpg','作者5','完结','开始阅读5',5,5,'2021-04-29 16:27:41',5);
insert  into `manhuaxinxi`(`id`,`addtime`,`manhuabianhao`,`manhuamingcheng`,`manhuafenlei`,`diqu`,`fengmiantupian`,`zuozhe`,`manhuazhuangtai`,`kaishiyuedu`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (26,'2021-04-29 16:27:41','漫画编号6','漫画名称6','漫画分类6','地区6','http://localhost:8080/ssmc8l16/upload/manhuaxinxi_fengmiantupian6.jpg','作者6','完结','开始阅读6',6,6,'2021-04-29 16:28:56',7);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (71,'2021-04-29 16:27:41',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (72,'2021-04-29 16:27:41',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (73,'2021-04-29 16:27:41',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (74,'2021-04-29 16:27:41',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (75,'2021-04-29 16:27:41',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (76,'2021-04-29 16:27:41',6,'用户名6','留言内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT=' 漫画资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (61,'2021-04-29 16:27:41','标题1','简介1','http://localhost:8080/ssmc8l16/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (62,'2021-04-29 16:27:41','标题2','简介2','http://localhost:8080/ssmc8l16/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (63,'2021-04-29 16:27:41','标题3','简介3','http://localhost:8080/ssmc8l16/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (64,'2021-04-29 16:27:41','标题4','简介4','http://localhost:8080/ssmc8l16/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (65,'2021-04-29 16:27:41','标题5','简介5','http://localhost:8080/ssmc8l16/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (66,'2021-04-29 16:27:41','标题6','简介6','http://localhost:8080/ssmc8l16/upload/news_picture6.jpg','内容6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','vfrt2j57egavys5i17t1lz21zr6rlqbv','2021-04-29 16:29:22','2021-04-29 17:29:23');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-29 16:27:41');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (11,'2021-04-29 16:27:41','用户1','123456','姓名1','年龄1','男','13823888881','http://localhost:8080/ssmc8l16/upload/yonghu_zhaopian1.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (12,'2021-04-29 16:27:41','用户2','123456','姓名2','年龄2','男','13823888882','http://localhost:8080/ssmc8l16/upload/yonghu_zhaopian2.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (13,'2021-04-29 16:27:41','用户3','123456','姓名3','年龄3','男','13823888883','http://localhost:8080/ssmc8l16/upload/yonghu_zhaopian3.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (14,'2021-04-29 16:27:41','用户4','123456','姓名4','年龄4','男','13823888884','http://localhost:8080/ssmc8l16/upload/yonghu_zhaopian4.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (15,'2021-04-29 16:27:41','用户5','123456','姓名5','年龄5','男','13823888885','http://localhost:8080/ssmc8l16/upload/yonghu_zhaopian5.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (16,'2021-04-29 16:27:41','用户6','123456','姓名6','年龄6','男','13823888886','http://localhost:8080/ssmc8l16/upload/yonghu_zhaopian6.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
