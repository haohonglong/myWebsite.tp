
--============================================================================================
--上海厚禾食品有限公司
--============================================================================================

--mysqldump 用法：
--mysqldump -u 用户名 -p 数据库名 > 导出的文件名
--mysqldump -uroot --default-character-set=utf8 -p houhe > f:/houhe.sql

-- creat dataBase
DROP DATABASE IF EXISTS `houhe`;
CREATE DATABASE IF NOT EXISTS `houhe` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
-- create users table 
USE `houhe`;


--============================================================================================
--类别
--============================================================================================
DROP TABLE IF EXISTS `t_sort`;
CREATE TABLE IF NOT EXISTS `user`(
	`id`            int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`s_name`  	varchar(20) NOT NULL COMMENT '产品类别名称',
	PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '类别表';

--============================================================================================
--产品
--============================================================================================
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE IF NOT EXISTS `user`(
	`id`            int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
        `sid`           int(10) UNSIGNED NOT NULL DEFAULT 0     COMMENT '类别id',
	`name`  	varchar(20) NOT NULL                    COMMENT '产品名称',
	`title`  	varchar(64) NOT NULL                    COMMENT '产品标题',
	`info`  	text DEFAULT NULL                       COMMENT '产品描述',
	`price`  	float(9,2) NOT NULL DEFAULT 0           COMMENT '产品价格',
        `count`         int(10) NOT NULL DEFAULT 0              COMMENT '库存数量',
        `date_c`        int(10) DEFAULT NULL                    COMMENT '创建时间',
        `date_m`        int(10) DEFAULT NULL                    COMMENT '修改时间',
	PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '产品表';

--============================================================================================
--图片
--============================================================================================
DROP TABLE IF EXISTS `t_images`;
CREATE TABLE IF NOT EXISTS `user`(
	`id`            int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
        `pid`           int(10) UNSIGNED NOT NULL DEFAULT 0     COMMENT '产品id',
	`info`  	varchar(256) NOT NULL                   COMMENT '产品图片描述',
	`src`           varchar(256) NOT NULL                   COMMENT '产品图片路径',
        `date_c`        int(10) DEFAULT NULL                    COMMENT '创建时间',
        `date_m`        int(10) DEFAULT NULL                    COMMENT '修改时间',
	PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '图片表';

--============================================================================================
--公司
--============================================================================================
DROP TABLE IF EXISTS `t_company`;
CREATE TABLE IF NOT EXISTS `user`(
	`id`            int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
        `name`  	varchar(20) NOT NULL                    COMMENT '公司名称',
	`info`          varchar(256) NOT NULL                   COMMENT '公司简介',
        `date_c`        int(10) DEFAULT NULL                    COMMENT '创建时间',
        `date_m`        int(10) DEFAULT NULL                    COMMENT '修改时间',
	PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '公司表';





--============================================================================================
--修改
--============================================================================================

ALTER TABLE `video_addres` ADD `info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci ;


ALTER TABLE `viedo` CHANGE `source` `source` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;


ALTER TABLE tbl_cokepic ADD COLUMN `used_position` TINYINT not null default 0 COMMENT '0=品牌馆， 1=店铺';

