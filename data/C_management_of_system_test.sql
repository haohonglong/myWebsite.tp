
--mysqldump 用法：
--mysqldump -u 用户名 -p 数据库名 > 导出的文件名
--mysqldump -uroot --default-character-set=utf8 -p management_of_system_test > f:/management_of_system_test.sql

-- creat dataBase
DROP DATABASE IF EXISTS `management_of_system_test`;
CREATE DATABASE IF NOT EXISTS `management_of_system_test` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
-- create users table 
USE `management_of_system_test`;


--============================================================================================
--用户
--============================================================================================
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user`(
	`id`            TINYINT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
	`username`  	VARCHAR(255) NOT NULL COMMENT '用户注册名是唯一的 只能是邮箱名称',
	`nickname`  	VARCHAR(255) NOT NULL COMMENT '用户昵称 昵称不是唯一的',
	`password` 	CHAR(128) NOT NULL COMMENT '用户密码',
	`date`          int(10) unsigned NOT NULL default '0' COMMENT '注册日期',
	`lastDate`      int(10) unsigned NOT NULL default '0' COMMENT '上次登录时间',
        `level`     	TINYINT(3) DEFAULT 0 NOT NULL COMMENT '用户级别： 默认0 没有管理权限一般用户 ，1普通管理员，2二级管理员，3特殊管理员',
        `ip`     	CHAR(15) NOT NULL COMMENT '用户登陆IP',
	PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '用户表';


--清单
DROP TABLE IF EXISTS `finance`;
CREATE TABLE IF NOT EXISTS `finance`(
	`id`     TINYINT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`uid`    TINYINT(3),
	`money`  DECIMAL(7,2) NOT NULL COMMENT '金额',
	`state`   TINYINT(1) UNSIGNED NOT NULL COMMENT '1:支入;0:支出 ',
        `note` 	  text NOT NULL COMMENT '录入时的备注',
	`lr_date` int(10) unsigned NOT NULL default '0' COMMENT '录入日期',
	PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '财务清单表';

INSERT INTO finance (id,uid,money,state,note,lr_date) VALUES 
                    (1,null,2000,1,'收入来源。。。',1461139799),
                    (2,null,2100,1,'收入来源1。。。',1461312599),
                    (3,null,2110,1,'收入来源2。。。',1461830999);

-- 栏目 无限极分类
--============================================================================================
DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu`(
	`id`            TINYINT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
        `pid`           TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '当前的父类id',
	`name`  	VARCHAR(10) NOT NULL COMMENT '名称',
        `url`           VARCHAR(255) DEFAULT '' COMMENT '跳转地址',
	PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '栏目';

-- 子级菜单
--============================================================================================
-- DROP TABLE IF EXISTS `menu_sub`;
-- CREATE TABLE IF NOT EXISTS `menu_sub`(
-- 	`id`            TINYINT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
-- 	`cid`           TINYINT(3) UNSIGNED NOT NULL,
-- 	`name_sub`  	VARCHAR(10) NOT NULL COMMENT '子级菜单名',
-- 	`url`           VARCHAR(255) NOT NULL COMMENT '跳转地址',
-- 	PRIMARY KEY(`id`),
--         FOREIGN KEY (`cid`) REFERENCES menu(`id`) 
--         ON DELETE CASCADE
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '子级菜单';



--============================================================================================
--类别表
--============================================================================================
DROP TABLE IF EXISTS `sorts`;
CREATE TABLE IF NOT EXISTS `sorts`(
	`id`     	TINYINT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
	`name`  	VARCHAR(255) NOT NULL COMMENT '类别名',
	`date` DATETIME NOT NULL,
	PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '类别表';


INSERT INTO `sorts` VALUES (2,'体育','2014-10-24 00:00:00');
--============================================================================================
--备份数据库
--============================================================================================
mysqldump -uroot -p GVido > F:\bakcup.sql;




--============================================================================================
--视频
--============================================================================================

-- create users table 
USE `management_of_system_test`;
DROP TABLE IF EXISTS `video`;
CREATE TABLE IF NOT EXISTS `video`(
	`id`     	TINYINT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
	`title`  	VARCHAR(500) NOT NULL COMMENT '标题',
	`source` 	text NOT NULL COMMENT '嵌入视频的源码',
	`vido_date` DATETIME NOT NULL,
	PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '存储视频表';

--url地址存储表
DROP TABLE IF EXISTS `video_addres`;
CREATE TABLE IF NOT EXISTS `video_addres`(
	`id`    TINYINT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
	`name`  VARCHAR(255) NOT NULL COMMENT '网站名称',
	`url` 	VARCHAR(225) NOT NULL COMMENT '网站路径',
	`info`	VARCHAR(2000) NOT NULL COMMENT '备注信息',
	`sortsId`TINYINT(3) UNSIGNED NOT NULL COMMENT '当前信息属于哪个类别',
	`date`  DATETIME NOT NULL,
	PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '网站地址信息表';
--添加一个
ALTER TABLE `video_addres` ADD `sortsId`TINYINT(3) UNSIGNED NOT NULL COMMENT '当前信息属于哪个类别';
UPDATE `video_addres` SET `sortsId` = 2 WHERE id = 34;

--============================================================================================
--修改
--============================================================================================

ALTER TABLE `video_addres` ADD `info` VARCHAR(2000) CHARACTER SET utf8 COLLATE utf8_general_ci ;


ALTER TABLE `viedo` CHANGE `source` `source` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;


ALTER TABLE tbl_cokepic ADD COLUMN `used_position` TINYINT not null default 0 COMMENT '0=品牌馆， 1=店铺';


#反馈信息表
DROP TABLE IF EXISTS `tbl_feedback`;
CREATE TABLE IF NOT EXISTS `tbl_feedback` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `times` int(10) DEFAULT NULL COMMENT '时间',
  `ip` varchar(256) DEFAULT NULL COMMENT 'IP',
  `brandhall_id` int(10) DEFAULT NULL COMMENT '品牌馆ID',
  `email` varchar(64) NOT NULL COMMENT '邮箱',
  `phone` varchar(64) NOT NULL COMMENT '手机',
  `name` varchar(256) NOT NULL COMMENT '昵称',
  `mess` varchar(256) NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;