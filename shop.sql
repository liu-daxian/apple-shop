/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.5.62 : Database - shop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shop` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shop`;

/*Table structure for table `shop_admin` */

CREATE TABLE `shop_admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(50) DEFAULT NULL,
  `aacount` varchar(50) NOT NULL,
  `apass` varchar(64) DEFAULT NULL,
  `astatus` smallint(6) DEFAULT '1' COMMENT '1:代表正常使用',
  `aphone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

/*Data for the table `shop_admin` */

insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (1,'sdfdsf@qq.com','jack','202cb962ac59075b964b07152d234b70',1,'13333333336');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (2,'我是小弟','rose','b429867f1810b6fd4e989ffadbfdde424bc80abf35b0f87cf2267b5a1e00c528',1,'1344444444');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (3,'t1','jaer','f048e528017f10ec49dcf1bc6e5359b4106aed40376aca8291416c0d96cb0229',1,'13212341234');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (4,'t2','tom2','666',1,'13212341234');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (5,'t3','tom3','666',1,'13212341234');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (6,'t4','tom4','666',1,'13212341234');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (7,'t5','tom5','666',1,'13212341234');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (8,'t6','tom6','666',1,'13212341234');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (9,'t7','tom7','666',1,'13212341234');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (10,'t8','tom8','666',1,'13212341234');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (11,'t9','tom9','666',1,'13212341234');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (12,'t10','tom10','666',1,'13212341234');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (13,'t11','tom11','666',1,'13212341234');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (14,'t12','tom12','666',1,'13212341234');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (15,'t13','tom13','666',1,'13212341234');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (16,'t14@qq.com','ttt','202cb962ac59075b964b07152d234b70',1,'13366666666');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (17,'t15','gggg','gggg',2,'123123123');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (18,'t66','1123','1232',1,'123123');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (19,'444','444','444',1,'4444');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (20,'555','555','55',1,'555');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (21,'666','66','666',1,'666');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (22,'777','77','777',1,'777');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (23,'7775','555','555555',1,'333');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (24,'5552','234','23423',1,'23423');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (25,'425','423','23432',1,'324');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (26,'3553','2532','223',1,'4324234');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (27,'234','345','123',1,'657657');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (28,'56865','8658','65856',1,'56858');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (29,'eeeeee','fffff','6074c6aa3488f3c2dddff2a7ca821aab',1,'123123123');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (30,'dg@qq.com','3454353','4297f44b13955235245b2497399d7a93',1,'13555555554');
insert  into `shop_admin`(`aid`,`aname`,`aacount`,`apass`,`astatus`,`aphone`) values (31,'dfdsf@qq.com','234234','21218cca77804d2ba1922c33e0151105',1,'13333333335');

/*Table structure for table `shop_admin_role` */

CREATE TABLE `shop_admin_role` (
  `aid` int(11) DEFAULT NULL COMMENT '用户id',
  `rid` int(11) DEFAULT NULL COMMENT '角色id',
  `a_r_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`a_r_id`),
  KEY `rid` (`rid`),
  KEY `aid` (`aid`),
  CONSTRAINT `shop_admin_role_ibfk_3` FOREIGN KEY (`aid`) REFERENCES `shop_admin` (`aid`),
  CONSTRAINT `shop_admin_role_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `shop_role` (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `shop_admin_role` */

insert  into `shop_admin_role`(`aid`,`rid`,`a_r_id`) values (2,2,3);
insert  into `shop_admin_role`(`aid`,`rid`,`a_r_id`) values (2,3,4);
insert  into `shop_admin_role`(`aid`,`rid`,`a_r_id`) values (29,1,5);
insert  into `shop_admin_role`(`aid`,`rid`,`a_r_id`) values (29,2,6);
insert  into `shop_admin_role`(`aid`,`rid`,`a_r_id`) values (29,3,7);
insert  into `shop_admin_role`(`aid`,`rid`,`a_r_id`) values (30,1,8);
insert  into `shop_admin_role`(`aid`,`rid`,`a_r_id`) values (30,2,9);
insert  into `shop_admin_role`(`aid`,`rid`,`a_r_id`) values (31,2,10);
insert  into `shop_admin_role`(`aid`,`rid`,`a_r_id`) values (31,3,11);
insert  into `shop_admin_role`(`aid`,`rid`,`a_r_id`) values (31,4,12);
insert  into `shop_admin_role`(`aid`,`rid`,`a_r_id`) values (1,2,17);
insert  into `shop_admin_role`(`aid`,`rid`,`a_r_id`) values (1,3,18);
insert  into `shop_admin_role`(`aid`,`rid`,`a_r_id`) values (1,4,19);
insert  into `shop_admin_role`(`aid`,`rid`,`a_r_id`) values (16,1,20);
insert  into `shop_admin_role`(`aid`,`rid`,`a_r_id`) values (1,1,21);

/*Table structure for table `shop_auth` */

CREATE TABLE `shop_auth` (
  `auid` int(11) NOT NULL AUTO_INCREMENT,
  `auname` varchar(50) DEFAULT NULL,
  `aupath` varchar(200) DEFAULT NULL,
  `autype` smallint(6) DEFAULT '2',
  `aupid` int(11) DEFAULT NULL COMMENT '依赖的父id',
  PRIMARY KEY (`auid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `shop_auth` */

insert  into `shop_auth`(`auid`,`auname`,`aupath`,`autype`,`aupid`) values (1,'首页','index',1,NULL);
insert  into `shop_auth`(`auid`,`auname`,`aupath`,`autype`,`aupid`) values (2,'用户管理','adminlist',1,1);
insert  into `shop_auth`(`auid`,`auname`,`aupath`,`autype`,`aupid`) values (3,'角色管理','rolelist',1,1);
insert  into `shop_auth`(`auid`,`auname`,`aupath`,`autype`,`aupid`) values (4,'权限管理','authlist',1,1);
insert  into `shop_auth`(`auid`,`auname`,`aupath`,`autype`,`aupid`) values (5,'查询用户','/adminList',2,2);
insert  into `shop_auth`(`auid`,`auname`,`aupath`,`autype`,`aupid`) values (6,'添加用户','adminAdd',2,2);
insert  into `shop_auth`(`auid`,`auname`,`aupath`,`autype`,`aupid`) values (7,'删除用户','/delAdmin',2,2);
insert  into `shop_auth`(`auid`,`auname`,`aupath`,`autype`,`aupid`) values (8,'修改用户','editAdmin',2,2);
insert  into `shop_auth`(`auid`,`auname`,`aupath`,`autype`,`aupid`) values (9,'查询角色','/roleList',2,3);
insert  into `shop_auth`(`auid`,`auname`,`aupath`,`autype`,`aupid`) values (10,'添加角色','/addRole',2,3);
insert  into `shop_auth`(`auid`,`auname`,`aupath`,`autype`,`aupid`) values (11,'删除角色','/delRole',2,3);
insert  into `shop_auth`(`auid`,`auname`,`aupath`,`autype`,`aupid`) values (12,'修改角色','/updRole',2,3);
insert  into `shop_auth`(`auid`,`auname`,`aupath`,`autype`,`aupid`) values (13,'编辑用户','jumpEdit',2,2);
insert  into `shop_auth`(`auid`,`auname`,`aupath`,`autype`,`aupid`) values (14,'新增用户','jumpAdd',2,2);

/*Table structure for table `shop_customer` */

CREATE TABLE `shop_customer` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(32) DEFAULT NULL,
  `apass` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `shop_customer` */

insert  into `shop_customer`(`aid`,`aname`,`apass`) values (1,'jack','123');
insert  into `shop_customer`(`aid`,`aname`,`apass`) values (2,'rose','123');
insert  into `shop_customer`(`aid`,`aname`,`apass`) values (3,'11111','11111');
insert  into `shop_customer`(`aid`,`aname`,`apass`) values (4,'22222','222222');
insert  into `shop_customer`(`aid`,`aname`,`apass`) values (5,'2222222222','22');
insert  into `shop_customer`(`aid`,`aname`,`apass`) values (6,'2222','2');
insert  into `shop_customer`(`aid`,`aname`,`apass`) values (7,'2323','2323');

/*Table structure for table `shop_goods` */

CREATE TABLE `shop_goods` (
  `gid` varchar(32) NOT NULL,
  `gname` varchar(200) NOT NULL,
  `gimage` varchar(200) DEFAULT NULL,
  `gprice` float DEFAULT NULL,
  `gtype` int(11) DEFAULT NULL COMMENT '商品类别表goods_type表的外键',
  `gdesc` varchar(255) DEFAULT NULL,
  `gdiscount` float DEFAULT '1' COMMENT '折扣字段;0.8:八折',
  `isdelete` int(11) DEFAULT '0' COMMENT '0:可用 1:删除',
  `glabel` int(11) DEFAULT '0' COMMENT '1:新品2:热销3:折扣',
  `gsex` int(11) DEFAULT '0' COMMENT '0:女装 1:男装 2:童装 3:lotita',
  PRIMARY KEY (`gid`),
  KEY `gtype` (`gtype`),
  CONSTRAINT `shop_goods_ibfk_1` FOREIGN KEY (`gtype`) REFERENCES `shop_goods_type` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `shop_goods` */

insert  into `shop_goods`(`gid`,`gname`,`gimage`,`gprice`,`gtype`,`gdesc`,`gdiscount`,`isdelete`,`glabel`,`gsex`) values ('12','乔碧萝小脚裤','images/product_1.jpg',520,11,NULL,0.8,1,3,0);
insert  into `shop_goods`(`gid`,`gname`,`gimage`,`gprice`,`gtype`,`gdesc`,`gdiscount`,`isdelete`,`glabel`,`gsex`) values ('13','唐显生是十三路末班车第一任司机','images/product_9.jpg',59,11,NULL,1,1,0,0);
insert  into `shop_goods`(`gid`,`gname`,`gimage`,`gprice`,`gtype`,`gdesc`,`gdiscount`,`isdelete`,`glabel`,`gsex`) values ('14','十年前就淹死了','images/product_7.jpg',59,12,NULL,1,0,1,0);
insert  into `shop_goods`(`gid`,`gname`,`gimage`,`gprice`,`gtype`,`gdesc`,`gdiscount`,`isdelete`,`glabel`,`gsex`) values ('15','含笑半步癫','images/product_4.jpg',49,13,'杀人放火，居家旅行，必备良药',0.8,0,2,0);
insert  into `shop_goods`(`gid`,`gname`,`gimage`,`gprice`,`gtype`,`gdesc`,`gdiscount`,`isdelete`,`glabel`,`gsex`) values ('16','牛包7','images/product_10.jpg',150,10,NULL,1,0,2,0);
insert  into `shop_goods`(`gid`,`gname`,`gimage`,`gprice`,`gtype`,`gdesc`,`gdiscount`,`isdelete`,`glabel`,`gsex`) values ('2','牛山挎包','images/product_2.jpg',77,10,NULL,1,0,1,0);
insert  into `shop_goods`(`gid`,`gname`,`gimage`,`gprice`,`gtype`,`gdesc`,`gdiscount`,`isdelete`,`glabel`,`gsex`) values ('22','卢本伟牛逼','https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3270515378,642130648&fm=26&gp=0.jpg',11,1,NULL,1,0,1,0);
insert  into `shop_goods`(`gid`,`gname`,`gimage`,`gprice`,`gtype`,`gdesc`,`gdiscount`,`isdelete`,`glabel`,`gsex`) values ('23','卢本伟的肯定','https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2892882232,3432829263&fm=26&gp=0.jpg',12,1,NULL,1,0,1,0);
insert  into `shop_goods`(`gid`,`gname`,`gimage`,`gprice`,`gtype`,`gdesc`,`gdiscount`,`isdelete`,`glabel`,`gsex`) values ('24','牛仔裤A款','images/product_1.jpg',66,11,NULL,1,0,0,0);
insert  into `shop_goods`(`gid`,`gname`,`gimage`,`gprice`,`gtype`,`gdesc`,`gdiscount`,`isdelete`,`glabel`,`gsex`) values ('25','变强卡','https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2651466156,1966797465&fm=26&gp=0.jpg',14,11,NULL,1,0,1,0);
insert  into `shop_goods`(`gid`,`gname`,`gimage`,`gprice`,`gtype`,`gdesc`,`gdiscount`,`isdelete`,`glabel`,`gsex`) values ('3','夹竹桃天下第一','images/product_3.jpg',717,11,NULL,1,1,2,0);
insert  into `shop_goods`(`gid`,`gname`,`gimage`,`gprice`,`gtype`,`gdesc`,`gdiscount`,`isdelete`,`glabel`,`gsex`) values ('4','挎包2','images/product_4.jpg',23,12,NULL,1,1,3,1);
insert  into `shop_goods`(`gid`,`gname`,`gimage`,`gprice`,`gtype`,`gdesc`,`gdiscount`,`isdelete`,`glabel`,`gsex`) values ('5','牛栏山挎包43','images/product_5.jpg',412,13,NULL,1,0,2,3);
insert  into `shop_goods`(`gid`,`gname`,`gimage`,`gprice`,`gtype`,`gdesc`,`gdiscount`,`isdelete`,`glabel`,`gsex`) values ('6','牛栏挎包54','images/product_6.jpg',53,14,NULL,1,0,3,0);
insert  into `shop_goods`(`gid`,`gname`,`gimage`,`gprice`,`gtype`,`gdesc`,`gdiscount`,`isdelete`,`glabel`,`gsex`) values ('7','牛包5','images/product_7.jpg',632,13,NULL,1,0,0,1);
insert  into `shop_goods`(`gid`,`gname`,`gimage`,`gprice`,`gtype`,`gdesc`,`gdiscount`,`isdelete`,`glabel`,`gsex`) values ('8','牛栏挎包6','images/product_8.jpg',234.2,12,NULL,1,1,0,3);
insert  into `shop_goods`(`gid`,`gname`,`gimage`,`gprice`,`gtype`,`gdesc`,`gdiscount`,`isdelete`,`glabel`,`gsex`) values ('9','牛7','images/product_9.jpg',11.1,11,NULL,1,1,0,2);
insert  into `shop_goods`(`gid`,`gname`,`gimage`,`gprice`,`gtype`,`gdesc`,`gdiscount`,`isdelete`,`glabel`,`gsex`) values ('a','潮流背带裤','https://pic.qqtn.com/up/2019-3/15537364504032743.jpg',888,11,NULL,1,0,0,0);

/*Table structure for table `shop_goods_type` */

CREATE TABLE `shop_goods_type` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(200) DEFAULT NULL COMMENT '商品类型名称',
  `tdesc` varchar(255) DEFAULT NULL,
  `timage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `shop_goods_type` */

insert  into `shop_goods_type`(`tid`,`tname`,`tdesc`,`timage`) values (1,'时尚夏季背包',NULL,'images/box_1.jpg');
insert  into `shop_goods_type`(`tid`,`tname`,`tdesc`,`timage`) values (10,'秋款休闲鞋',NULL,'images/box_2.jpg');
insert  into `shop_goods_type`(`tid`,`tname`,`tdesc`,`timage`) values (11,'牛仔商务爆款',NULL,'images/box_3.jpg');
insert  into `shop_goods_type`(`tid`,`tname`,`tdesc`,`timage`) values (12,'英伦头顶帽',NULL,NULL);
insert  into `shop_goods_type`(`tid`,`tname`,`tdesc`,`timage`) values (13,'渣渣辉',NULL,NULL);
insert  into `shop_goods_type`(`tid`,`tname`,`tdesc`,`timage`) values (14,'护腿',NULL,NULL);

/*Table structure for table `shop_order` */

CREATE TABLE `shop_order` (
  `oid` varchar(255) NOT NULL,
  `aid` int(11) DEFAULT NULL,
  `addressId` int(11) DEFAULT NULL,
  `ostatus` int(11) DEFAULT '1' COMMENT '1:未支付;2:已支付3:已发货;4:超时失效',
  `odate` datetime DEFAULT NULL,
  `ototal` float DEFAULT NULL,
  `isdelete` int(11) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `aid` (`aid`),
  CONSTRAINT `shop_order_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `shop_customer` (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `shop_order` */

insert  into `shop_order`(`oid`,`aid`,`addressId`,`ostatus`,`odate`,`ototal`,`isdelete`) values ('59e88c6bd0634ba19d0f19881296704f',2,1,4,'2019-11-05 10:52:20',200,NULL);
insert  into `shop_order`(`oid`,`aid`,`addressId`,`ostatus`,`odate`,`ototal`,`isdelete`) values ('59ee9f83cc4a4ea08dfeeb518e1c7b8e',2,1,1,'2019-11-05 10:57:09',200,NULL);
insert  into `shop_order`(`oid`,`aid`,`addressId`,`ostatus`,`odate`,`ototal`,`isdelete`) values ('60c51e6b46494b6e82f8b4fc5bf41878',2,1,4,'2019-11-05 10:53:10',200,NULL);
insert  into `shop_order`(`oid`,`aid`,`addressId`,`ostatus`,`odate`,`ototal`,`isdelete`) values ('7d26cd4b18b9418c9ec3581470ee9c68',2,1,4,'2019-11-05 10:42:29',200,NULL);
insert  into `shop_order`(`oid`,`aid`,`addressId`,`ostatus`,`odate`,`ototal`,`isdelete`) values ('8a782b53ccf441219bad106b252b35e3',2,1,4,'2019-11-04 15:34:46',200,NULL);
insert  into `shop_order`(`oid`,`aid`,`addressId`,`ostatus`,`odate`,`ototal`,`isdelete`) values ('d04ff3ade53f42c29941414e0f721473',2,1,4,'2019-12-10 09:55:17',200,NULL);
insert  into `shop_order`(`oid`,`aid`,`addressId`,`ostatus`,`odate`,`ototal`,`isdelete`) values ('e7efc2ed5b9540eb94b7a47cee667156',2,1,1,'2019-11-05 10:55:19',200,NULL);

/*Table structure for table `shop_order_detail` */

CREATE TABLE `shop_order_detail` (
  `odid` varchar(255) NOT NULL,
  `oid` varchar(255) DEFAULT NULL COMMENT '订单id',
  `gid` varchar(255) DEFAULT '商品id',
  `odprice` float DEFAULT NULL,
  `odnumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`odid`),
  KEY `oid` (`oid`),
  KEY `gid` (`gid`),
  CONSTRAINT `shop_order_detail_ibfk_1` FOREIGN KEY (`oid`) REFERENCES `shop_order` (`oid`),
  CONSTRAINT `shop_order_detail_ibfk_2` FOREIGN KEY (`gid`) REFERENCES `shop_goods` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `shop_order_detail` */

insert  into `shop_order_detail`(`odid`,`oid`,`gid`,`odprice`,`odnumber`) values ('0f2c4f67fe6511e99660000c2922b57b','59e88c6bd0634ba19d0f19881296704f','14',NULL,NULL);
insert  into `shop_order_detail`(`odid`,`oid`,`gid`,`odprice`,`odnumber`) values ('0f2ca35efe6511e99660000c2922b57b','59e88c6bd0634ba19d0f19881296704f','15',NULL,NULL);
insert  into `shop_order_detail`(`odid`,`oid`,`gid`,`odprice`,`odnumber`) values ('0f2ca500fe6511e99660000c2922b57b','59e88c6bd0634ba19d0f19881296704f','16',NULL,NULL);
insert  into `shop_order_detail`(`odid`,`oid`,`gid`,`odprice`,`odnumber`) values ('2cddd35afe6511e99660000c2922b57b','60c51e6b46494b6e82f8b4fc5bf41878','14',NULL,NULL);
insert  into `shop_order_detail`(`odid`,`oid`,`gid`,`odprice`,`odnumber`) values ('2cde09e0fe6511e99660000c2922b57b','60c51e6b46494b6e82f8b4fc5bf41878','15',NULL,NULL);
insert  into `shop_order_detail`(`odid`,`oid`,`gid`,`odprice`,`odnumber`) values ('2cde0ebcfe6511e99660000c2922b57b','60c51e6b46494b6e82f8b4fc5bf41878','16',NULL,NULL);
insert  into `shop_order_detail`(`odid`,`oid`,`gid`,`odprice`,`odnumber`) values ('547c3d09fe2811e99660000c2922b57b','8a782b53ccf441219bad106b252b35e3','14',NULL,NULL);
insert  into `shop_order_detail`(`odid`,`oid`,`gid`,`odprice`,`odnumber`) values ('547c9288fe2811e99660000c2922b57b','8a782b53ccf441219bad106b252b35e3','15',NULL,NULL);
insert  into `shop_order_detail`(`odid`,`oid`,`gid`,`odprice`,`odnumber`) values ('65bbf08414dd11eaa070000c2922b57b','d04ff3ade53f42c29941414e0f721473','14',NULL,NULL);
insert  into `shop_order_detail`(`odid`,`oid`,`gid`,`odprice`,`odnumber`) values ('79f3b161fe6511e99660000c2922b57b','e7efc2ed5b9540eb94b7a47cee667156','14',NULL,NULL);
insert  into `shop_order_detail`(`odid`,`oid`,`gid`,`odprice`,`odnumber`) values ('79f3fc24fe6511e99660000c2922b57b','e7efc2ed5b9540eb94b7a47cee667156','15',NULL,NULL);
insert  into `shop_order_detail`(`odid`,`oid`,`gid`,`odprice`,`odnumber`) values ('79f3fd9afe6511e99660000c2922b57b','e7efc2ed5b9540eb94b7a47cee667156','16',NULL,NULL);
insert  into `shop_order_detail`(`odid`,`oid`,`gid`,`odprice`,`odnumber`) values ('aee54621fe6311e99660000c2922b57b','7d26cd4b18b9418c9ec3581470ee9c68','14',NULL,NULL);
insert  into `shop_order_detail`(`odid`,`oid`,`gid`,`odprice`,`odnumber`) values ('aee7e607fe6311e99660000c2922b57b','7d26cd4b18b9418c9ec3581470ee9c68','15',NULL,NULL);
insert  into `shop_order_detail`(`odid`,`oid`,`gid`,`odprice`,`odnumber`) values ('bb4e5f28fe6511e99660000c2922b57b','59ee9f83cc4a4ea08dfeeb518e1c7b8e','14',NULL,NULL);
insert  into `shop_order_detail`(`odid`,`oid`,`gid`,`odprice`,`odnumber`) values ('bb4e6259fe6511e99660000c2922b57b','59ee9f83cc4a4ea08dfeeb518e1c7b8e','15',NULL,NULL);
insert  into `shop_order_detail`(`odid`,`oid`,`gid`,`odprice`,`odnumber`) values ('bb4e631dfe6511e99660000c2922b57b','59ee9f83cc4a4ea08dfeeb518e1c7b8e','16',NULL,NULL);

/*Table structure for table `shop_role` */

CREATE TABLE `shop_role` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `rname` varchar(50) DEFAULT NULL,
  `rdesc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `shop_role` */

insert  into `shop_role`(`rid`,`rname`,`rdesc`) values (1,'dage','最屌的那个');
insert  into `shop_role`(`rid`,`rname`,`rdesc`) values (2,'xiaodi','最菜的那个');
insert  into `shop_role`(`rid`,`rname`,`rdesc`) values (3,'大哥','被打的那个');
insert  into `shop_role`(`rid`,`rname`,`rdesc`) values (4,'超级大哥大','打人的那个');
insert  into `shop_role`(`rid`,`rname`,`rdesc`) values (5,'dfgdfg','dfgfg');
insert  into `shop_role`(`rid`,`rname`,`rdesc`) values (6,'王中王','我是火腿肠');
insert  into `shop_role`(`rid`,`rname`,`rdesc`) values (9,'tttt','ttttt');
insert  into `shop_role`(`rid`,`rname`,`rdesc`) values (10,'哈哈哈','反倒是的方式');
insert  into `shop_role`(`rid`,`rname`,`rdesc`) values (11,'555','5555');

/*Table structure for table `shop_role_auth` */

CREATE TABLE `shop_role_auth` (
  `rid` int(11) DEFAULT NULL,
  `auid` int(11) DEFAULT NULL,
  `r_au_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`r_au_id`),
  KEY `rid` (`rid`),
  KEY `auid` (`auid`),
  CONSTRAINT `shop_role_auth_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `shop_role` (`rid`),
  CONSTRAINT `shop_role_auth_ibfk_2` FOREIGN KEY (`auid`) REFERENCES `shop_auth` (`auid`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

/*Data for the table `shop_role_auth` */

insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (2,1,10);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (2,2,11);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (2,3,12);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (2,4,13);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (3,1,14);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (3,2,15);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (3,3,16);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (3,4,17);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (3,5,18);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (3,6,19);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (6,1,20);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (6,2,21);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (6,3,22);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (10,1,23);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (10,2,24);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (10,5,25);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (10,6,26);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (10,7,27);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (10,8,28);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (10,3,29);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (10,9,30);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (10,10,31);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (10,11,32);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (10,12,33);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (10,4,34);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (1,1,37);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (1,2,38);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (1,5,39);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (1,6,40);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (1,7,41);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (1,8,42);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (1,3,43);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (1,9,44);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (1,10,45);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (1,11,46);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (1,12,47);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (1,4,48);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (11,1,53);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (11,2,54);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (11,3,55);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (11,9,56);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (11,11,57);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (1,13,58);
insert  into `shop_role_auth`(`rid`,`auid`,`r_au_id`) values (1,14,59);

/*Table structure for table `shop_shiro` */

CREATE TABLE `shop_shiro` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(200) DEFAULT NULL,
  `sfilter` varchar(20) DEFAULT NULL,
  `sindex` int(11) DEFAULT NULL COMMENT '排序标识',
  `sstatus` int(11) DEFAULT '1' COMMENT '1可用; 0失效',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `shop_shiro` */

insert  into `shop_shiro`(`sid`,`sname`,`sfilter`,`sindex`,`sstatus`) values (1,'/images/**','anon',1,1);
insert  into `shop_shiro`(`sid`,`sname`,`sfilter`,`sindex`,`sstatus`) values (2,'/static/**','anon',2,1);
insert  into `shop_shiro`(`sid`,`sname`,`sfilter`,`sindex`,`sstatus`) values (3,'/js/**','anon',3,1);
insert  into `shop_shiro`(`sid`,`sname`,`sfilter`,`sindex`,`sstatus`) values (4,'/css/**','anon',4,1);
insert  into `shop_shiro`(`sid`,`sname`,`sfilter`,`sindex`,`sstatus`) values (5,'/login.jsp','anon',5,1);
insert  into `shop_shiro`(`sid`,`sname`,`sfilter`,`sindex`,`sstatus`) values (6,'/index.jsp','anon',6,1);
insert  into `shop_shiro`(`sid`,`sname`,`sfilter`,`sindex`,`sstatus`) values (7,'/login','anon',7,1);
insert  into `shop_shiro`(`sid`,`sname`,`sfilter`,`sindex`,`sstatus`) values (8,'/logout2','logout',8,1);
insert  into `shop_shiro`(`sid`,`sname`,`sfilter`,`sindex`,`sstatus`) values (9,'/goods.jsp','roles[dage]',9,1);
insert  into `shop_shiro`(`sid`,`sname`,`sfilter`,`sindex`,`sstatus`) values (10,'/order.jsp','roles[xiaodi]',10,1);
insert  into `shop_shiro`(`sid`,`sname`,`sfilter`,`sindex`,`sstatus`) values (11,'/list.jsp','roles[dage,xiaodi]',11,1);
insert  into `shop_shiro`(`sid`,`sname`,`sfilter`,`sindex`,`sstatus`) values (12,'/**','authc',99999,1);

/*Table structure for table `t_admin` */

CREATE TABLE `t_admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(20) DEFAULT NULL,
  `apass` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_admin` */

insert  into `t_admin`(`aid`,`aname`,`apass`) values (1,'jack','123');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
