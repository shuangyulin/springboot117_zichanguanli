/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot4j9k2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot4j9k2` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot4j9k2`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot4j9k2/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springboot4j9k2/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springboot4j9k2/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-11 09:16:58');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`,`shenfenzheng`,`sfsh`,`shhf`) values (11,'2021-05-11 09:16:58','用户1','123456','姓名1','男','http://localhost:8080/springboot4j9k2/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com','440300199101010001','是','');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`,`shenfenzheng`,`sfsh`,`shhf`) values (12,'2021-05-11 09:16:58','用户2','123456','姓名2','男','http://localhost:8080/springboot4j9k2/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com','440300199202020002','是','');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`,`shenfenzheng`,`sfsh`,`shhf`) values (13,'2021-05-11 09:16:58','用户3','123456','姓名3','男','http://localhost:8080/springboot4j9k2/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com','440300199303030003','是','');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`,`shenfenzheng`,`sfsh`,`shhf`) values (14,'2021-05-11 09:16:58','用户4','123456','姓名4','男','http://localhost:8080/springboot4j9k2/upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com','440300199404040004','是','');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`,`shenfenzheng`,`sfsh`,`shhf`) values (15,'2021-05-11 09:16:58','用户5','123456','姓名5','男','http://localhost:8080/springboot4j9k2/upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com','440300199505050005','是','');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`,`shenfenzheng`,`sfsh`,`shhf`) values (16,'2021-05-11 09:16:58','用户6','123456','姓名6','男','http://localhost:8080/springboot4j9k2/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com','440300199606060006','是','');

/*Table structure for table `zichanfenlei` */

DROP TABLE IF EXISTS `zichanfenlei`;

CREATE TABLE `zichanfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zichanfenlei` varchar(200) NOT NULL COMMENT '资产分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zichanfenlei` (`zichanfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='资产分类';

/*Data for the table `zichanfenlei` */

insert  into `zichanfenlei`(`id`,`addtime`,`zichanfenlei`) values (21,'2021-05-11 09:16:58','资产分类1');
insert  into `zichanfenlei`(`id`,`addtime`,`zichanfenlei`) values (22,'2021-05-11 09:16:58','资产分类2');
insert  into `zichanfenlei`(`id`,`addtime`,`zichanfenlei`) values (23,'2021-05-11 09:16:58','资产分类3');
insert  into `zichanfenlei`(`id`,`addtime`,`zichanfenlei`) values (24,'2021-05-11 09:16:58','资产分类4');
insert  into `zichanfenlei`(`id`,`addtime`,`zichanfenlei`) values (25,'2021-05-11 09:16:58','资产分类5');
insert  into `zichanfenlei`(`id`,`addtime`,`zichanfenlei`) values (26,'2021-05-11 09:16:58','资产分类6');

/*Table structure for table `zichanguihai` */

DROP TABLE IF EXISTS `zichanguihai`;

CREATE TABLE `zichanguihai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zichanbianhao` varchar(200) DEFAULT NULL COMMENT '资产编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `zichanfenlei` varchar(200) DEFAULT NULL COMMENT '资产分类',
  `zichantupian` varchar(200) DEFAULT NULL COMMENT '资产图片',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `guihairiqi` date DEFAULT NULL COMMENT '归还日期',
  `guihaibeizhu` varchar(200) DEFAULT NULL COMMENT '归还备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='资产归还';

/*Data for the table `zichanguihai` */

insert  into `zichanguihai`(`id`,`addtime`,`zichanbianhao`,`shebeimingcheng`,`zichanfenlei`,`zichantupian`,`shuliang`,`guihairiqi`,`guihaibeizhu`,`yonghuming`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`) values (51,'2021-05-11 09:16:58','资产编号1','设备名称1','资产分类1','http://localhost:8080/springboot4j9k2/upload/zichanguihai_zichantupian1.jpg',1,'2021-05-11','归还备注1','用户名1','姓名1','13823888881','440300199101010001','是','');
insert  into `zichanguihai`(`id`,`addtime`,`zichanbianhao`,`shebeimingcheng`,`zichanfenlei`,`zichantupian`,`shuliang`,`guihairiqi`,`guihaibeizhu`,`yonghuming`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`) values (52,'2021-05-11 09:16:58','资产编号2','设备名称2','资产分类2','http://localhost:8080/springboot4j9k2/upload/zichanguihai_zichantupian2.jpg',2,'2021-05-11','归还备注2','用户名2','姓名2','13823888882','440300199202020002','是','');
insert  into `zichanguihai`(`id`,`addtime`,`zichanbianhao`,`shebeimingcheng`,`zichanfenlei`,`zichantupian`,`shuliang`,`guihairiqi`,`guihaibeizhu`,`yonghuming`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`) values (53,'2021-05-11 09:16:58','资产编号3','设备名称3','资产分类3','http://localhost:8080/springboot4j9k2/upload/zichanguihai_zichantupian3.jpg',3,'2021-05-11','归还备注3','用户名3','姓名3','13823888883','440300199303030003','是','');
insert  into `zichanguihai`(`id`,`addtime`,`zichanbianhao`,`shebeimingcheng`,`zichanfenlei`,`zichantupian`,`shuliang`,`guihairiqi`,`guihaibeizhu`,`yonghuming`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`) values (54,'2021-05-11 09:16:58','资产编号4','设备名称4','资产分类4','http://localhost:8080/springboot4j9k2/upload/zichanguihai_zichantupian4.jpg',4,'2021-05-11','归还备注4','用户名4','姓名4','13823888884','440300199404040004','是','');
insert  into `zichanguihai`(`id`,`addtime`,`zichanbianhao`,`shebeimingcheng`,`zichanfenlei`,`zichantupian`,`shuliang`,`guihairiqi`,`guihaibeizhu`,`yonghuming`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`) values (55,'2021-05-11 09:16:58','资产编号5','设备名称5','资产分类5','http://localhost:8080/springboot4j9k2/upload/zichanguihai_zichantupian5.jpg',5,'2021-05-11','归还备注5','用户名5','姓名5','13823888885','440300199505050005','是','');
insert  into `zichanguihai`(`id`,`addtime`,`zichanbianhao`,`shebeimingcheng`,`zichanfenlei`,`zichantupian`,`shuliang`,`guihairiqi`,`guihaibeizhu`,`yonghuming`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`) values (56,'2021-05-11 09:16:58','资产编号6','设备名称6','资产分类6','http://localhost:8080/springboot4j9k2/upload/zichanguihai_zichantupian6.jpg',6,'2021-05-11','归还备注6','用户名6','姓名6','13823888886','440300199606060006','是','');

/*Table structure for table `zichanjiechu` */

DROP TABLE IF EXISTS `zichanjiechu`;

CREATE TABLE `zichanjiechu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zichanbianhao` varchar(200) DEFAULT NULL COMMENT '资产编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `zichanfenlei` varchar(200) DEFAULT NULL COMMENT '资产分类',
  `zichantupian` varchar(200) DEFAULT NULL COMMENT '资产图片',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `jiechuriqi` date DEFAULT NULL COMMENT '借出日期',
  `jiechubeizhu` varchar(200) DEFAULT NULL COMMENT '借出备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='资产借出';

/*Data for the table `zichanjiechu` */

insert  into `zichanjiechu`(`id`,`addtime`,`zichanbianhao`,`shebeimingcheng`,`zichanfenlei`,`zichantupian`,`shuliang`,`jiechuriqi`,`jiechubeizhu`,`yonghuming`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`) values (41,'2021-05-11 09:16:58','资产编号1','设备名称1','资产分类1','http://localhost:8080/springboot4j9k2/upload/zichanjiechu_zichantupian1.jpg',1,'2021-05-11','借出备注1','用户名1','姓名1','13823888881','440300199101010001','是','');
insert  into `zichanjiechu`(`id`,`addtime`,`zichanbianhao`,`shebeimingcheng`,`zichanfenlei`,`zichantupian`,`shuliang`,`jiechuriqi`,`jiechubeizhu`,`yonghuming`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`) values (42,'2021-05-11 09:16:58','资产编号2','设备名称2','资产分类2','http://localhost:8080/springboot4j9k2/upload/zichanjiechu_zichantupian2.jpg',2,'2021-05-11','借出备注2','用户名2','姓名2','13823888882','440300199202020002','是','');
insert  into `zichanjiechu`(`id`,`addtime`,`zichanbianhao`,`shebeimingcheng`,`zichanfenlei`,`zichantupian`,`shuliang`,`jiechuriqi`,`jiechubeizhu`,`yonghuming`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`) values (43,'2021-05-11 09:16:58','资产编号3','设备名称3','资产分类3','http://localhost:8080/springboot4j9k2/upload/zichanjiechu_zichantupian3.jpg',3,'2021-05-11','借出备注3','用户名3','姓名3','13823888883','440300199303030003','是','');
insert  into `zichanjiechu`(`id`,`addtime`,`zichanbianhao`,`shebeimingcheng`,`zichanfenlei`,`zichantupian`,`shuliang`,`jiechuriqi`,`jiechubeizhu`,`yonghuming`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`) values (44,'2021-05-11 09:16:58','资产编号4','设备名称4','资产分类4','http://localhost:8080/springboot4j9k2/upload/zichanjiechu_zichantupian4.jpg',4,'2021-05-11','借出备注4','用户名4','姓名4','13823888884','440300199404040004','是','');
insert  into `zichanjiechu`(`id`,`addtime`,`zichanbianhao`,`shebeimingcheng`,`zichanfenlei`,`zichantupian`,`shuliang`,`jiechuriqi`,`jiechubeizhu`,`yonghuming`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`) values (45,'2021-05-11 09:16:58','资产编号5','设备名称5','资产分类5','http://localhost:8080/springboot4j9k2/upload/zichanjiechu_zichantupian5.jpg',5,'2021-05-11','借出备注5','用户名5','姓名5','13823888885','440300199505050005','是','');
insert  into `zichanjiechu`(`id`,`addtime`,`zichanbianhao`,`shebeimingcheng`,`zichanfenlei`,`zichantupian`,`shuliang`,`jiechuriqi`,`jiechubeizhu`,`yonghuming`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`) values (46,'2021-05-11 09:16:58','资产编号6','设备名称6','资产分类6','http://localhost:8080/springboot4j9k2/upload/zichanjiechu_zichantupian6.jpg',6,'2021-05-11','借出备注6','用户名6','姓名6','13823888886','440300199606060006','是','');

/*Table structure for table `zichanweixiu` */

DROP TABLE IF EXISTS `zichanweixiu`;

CREATE TABLE `zichanweixiu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zichanbianhao` varchar(200) NOT NULL COMMENT '资产编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `zichanfenlei` varchar(200) DEFAULT NULL COMMENT '资产分类',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `weixiushuliang` int(11) NOT NULL COMMENT '维修数量',
  `weixiushuoming` longtext COMMENT '维修说明',
  `weixiujindu` varchar(200) NOT NULL COMMENT '维修进度',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='资产维修';

/*Data for the table `zichanweixiu` */

insert  into `zichanweixiu`(`id`,`addtime`,`zichanbianhao`,`shebeimingcheng`,`zichanfenlei`,`shuliang`,`weixiushuliang`,`weixiushuoming`,`weixiujindu`) values (61,'2021-05-11 09:16:58','资产编号1','设备名称1','资产分类1',1,1,'维修说明1','维修中');
insert  into `zichanweixiu`(`id`,`addtime`,`zichanbianhao`,`shebeimingcheng`,`zichanfenlei`,`shuliang`,`weixiushuliang`,`weixiushuoming`,`weixiujindu`) values (62,'2021-05-11 09:16:58','资产编号2','设备名称2','资产分类2',2,2,'维修说明2','维修中');
insert  into `zichanweixiu`(`id`,`addtime`,`zichanbianhao`,`shebeimingcheng`,`zichanfenlei`,`shuliang`,`weixiushuliang`,`weixiushuoming`,`weixiujindu`) values (63,'2021-05-11 09:16:58','资产编号3','设备名称3','资产分类3',3,3,'维修说明3','维修中');
insert  into `zichanweixiu`(`id`,`addtime`,`zichanbianhao`,`shebeimingcheng`,`zichanfenlei`,`shuliang`,`weixiushuliang`,`weixiushuoming`,`weixiujindu`) values (64,'2021-05-11 09:16:58','资产编号4','设备名称4','资产分类4',4,4,'维修说明4','维修中');
insert  into `zichanweixiu`(`id`,`addtime`,`zichanbianhao`,`shebeimingcheng`,`zichanfenlei`,`shuliang`,`weixiushuliang`,`weixiushuoming`,`weixiujindu`) values (65,'2021-05-11 09:16:58','资产编号5','设备名称5','资产分类5',5,5,'维修说明5','维修中');
insert  into `zichanweixiu`(`id`,`addtime`,`zichanbianhao`,`shebeimingcheng`,`zichanfenlei`,`shuliang`,`weixiushuliang`,`weixiushuoming`,`weixiujindu`) values (66,'2021-05-11 09:16:58','资产编号6','设备名称6','资产分类6',6,6,'维修说明6','维修中');

/*Table structure for table `zichanxinxi` */

DROP TABLE IF EXISTS `zichanxinxi`;

CREATE TABLE `zichanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zichanbianhao` varchar(200) NOT NULL COMMENT '资产编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `zichanfenlei` varchar(200) NOT NULL COMMENT '资产分类',
  `zichantupian` varchar(200) DEFAULT NULL COMMENT '资产图片',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `beizhushuoming` varchar(200) DEFAULT NULL COMMENT '备注说明',
  `dangqianweizhi` varchar(200) DEFAULT NULL COMMENT '当前位置',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zichanbianhao` (`zichanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='资产信息';

/*Data for the table `zichanxinxi` */

insert  into `zichanxinxi`(`id`,`addtime`,`zichanbianhao`,`shebeimingcheng`,`zichanfenlei`,`zichantupian`,`shuliang`,`beizhushuoming`,`dangqianweizhi`) values (31,'2021-05-11 09:16:58','资产编号1','设备名称1','资产分类1','http://localhost:8080/springboot4j9k2/upload/zichanxinxi_zichantupian1.jpg',1,'备注说明1','当前位置1');
insert  into `zichanxinxi`(`id`,`addtime`,`zichanbianhao`,`shebeimingcheng`,`zichanfenlei`,`zichantupian`,`shuliang`,`beizhushuoming`,`dangqianweizhi`) values (32,'2021-05-11 09:16:58','资产编号2','设备名称2','资产分类2','http://localhost:8080/springboot4j9k2/upload/zichanxinxi_zichantupian2.jpg',2,'备注说明2','当前位置2');
insert  into `zichanxinxi`(`id`,`addtime`,`zichanbianhao`,`shebeimingcheng`,`zichanfenlei`,`zichantupian`,`shuliang`,`beizhushuoming`,`dangqianweizhi`) values (33,'2021-05-11 09:16:58','资产编号3','设备名称3','资产分类3','http://localhost:8080/springboot4j9k2/upload/zichanxinxi_zichantupian3.jpg',3,'备注说明3','当前位置3');
insert  into `zichanxinxi`(`id`,`addtime`,`zichanbianhao`,`shebeimingcheng`,`zichanfenlei`,`zichantupian`,`shuliang`,`beizhushuoming`,`dangqianweizhi`) values (34,'2021-05-11 09:16:58','资产编号4','设备名称4','资产分类4','http://localhost:8080/springboot4j9k2/upload/zichanxinxi_zichantupian4.jpg',4,'备注说明4','当前位置4');
insert  into `zichanxinxi`(`id`,`addtime`,`zichanbianhao`,`shebeimingcheng`,`zichanfenlei`,`zichantupian`,`shuliang`,`beizhushuoming`,`dangqianweizhi`) values (35,'2021-05-11 09:16:58','资产编号5','设备名称5','资产分类5','http://localhost:8080/springboot4j9k2/upload/zichanxinxi_zichantupian5.jpg',5,'备注说明5','当前位置5');
insert  into `zichanxinxi`(`id`,`addtime`,`zichanbianhao`,`shebeimingcheng`,`zichanfenlei`,`zichantupian`,`shuliang`,`beizhushuoming`,`dangqianweizhi`) values (36,'2021-05-11 09:16:58','资产编号6','设备名称6','资产分类6','http://localhost:8080/springboot4j9k2/upload/zichanxinxi_zichantupian6.jpg',6,'备注说明6','当前位置6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
