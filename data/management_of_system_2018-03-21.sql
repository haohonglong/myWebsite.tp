# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.18)
# Database: management_of_system
# Generation Time: 2018-03-21 02:55:11 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table finance
# ------------------------------------------------------------

DROP TABLE IF EXISTS `finance`;

CREATE TABLE `finance` (
  `id` tinyint(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` tinyint(3) DEFAULT NULL,
  `money` decimal(7,2) NOT NULL COMMENT '金额',
  `state` tinyint(1) unsigned NOT NULL COMMENT '1:支入;0:支出 ',
  `note` text NOT NULL COMMENT '录入时的备注',
  `lr_date` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='财务清单表';

LOCK TABLES `finance` WRITE;
/*!40000 ALTER TABLE `finance` DISABLE KEYS */;

INSERT INTO `finance` (`id`, `uid`, `money`, `state`, `note`, `lr_date`)
VALUES
	(1,NULL,2000.00,1,'收入来源。。。',1461139799),
	(2,NULL,2100.00,1,'收入来源1。。。',1461312599),
	(3,NULL,2110.00,1,'收入来源2。。。',1461830999);

/*!40000 ALTER TABLE `finance` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sorts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sorts`;

CREATE TABLE `sorts` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '类别名',
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `sorts` WRITE;
/*!40000 ALTER TABLE `sorts` DISABLE KEYS */;

INSERT INTO `sorts` (`id`, `name`, `date`)
VALUES
	(0,'无分类','2014-10-24 00:00:00'),
	(1,'前端','2014-10-24 00:00:00'),
	(2,'程序','2014-10-24 18:56:00'),
	(3,'新闻','2014-10-24 18:56:15'),
	(4,'视频','2014-10-24 18:58:12'),
	(5,'体育','0000-00-00 00:00:00'),
	(6,'娱乐','2014-10-24 18:59:10'),
	(7,'有客','2014-10-24 18:59:29'),
	(8,'乐居','0000-00-00 00:00:00'),
	(9,'js 插件','2014-11-06 00:00:00'),
	(10,'博客','2014-11-08 00:00:00'),
	(11,'手册','2014-11-25 00:00:00'),
	(12,'UI','2014-11-26 00:00:00'),
	(13,'参考的网页demo','2014-12-06 00:00:00'),
	(14,'yii2','2014-12-16 00:00:00'),
	(15,'电视剧','2015-01-09 00:00:00'),
	(16,'素材','2015-12-28 00:00:00'),
	(17,'工具箱','2015-12-28 00:00:00'),
	(18,'PHP','2016-04-15 00:00:00'),
	(19,'学习','2017-12-19 00:00:00'),
	(20,'github','2018-02-22 00:00:00'),
	(21,'C','2018-02-23 00:00:00'),
	(22,'nodejs','2018-02-23 00:00:00'),
	(23,'英语','2018-03-02 00:00:00'),
	(24,'gulp','2018-03-05 00:00:00'),
	(25,'books','2018-03-05 00:00:00'),
	(26,'meteor','2018-03-05 00:00:00'),
	(27,'数据库','2018-03-05 00:00:00'),
	(28,'mysql','2018-03-05 00:00:00'),
	(29,'vim','2018-03-06 00:00:00'),
	(30,'npm','2018-03-06 00:00:00'),
	(31,'python','2018-03-16 00:00:00'),
	(32,'语言','2018-03-19 00:00:00'),
	(33,'linux','2018-03-20 00:00:00'),
	(34,'tools','2018-03-20 00:00:00'),
	(35,'java','2018-03-21 00:00:00'),
	(36,'react','2018-03-21 00:00:00');

/*!40000 ALTER TABLE `sorts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` char(128) NOT NULL,
  `vido_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table video
# ------------------------------------------------------------

DROP TABLE IF EXISTS `video`;

CREATE TABLE `video` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `source` text NOT NULL,
  `vido_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;

INSERT INTO `video` (`id`, `title`, `source`, `vido_date`)
VALUES
	(1,'吸引力的秘密','','2014-08-11 00:00:00'),
	(2,'发现自我之旅','&lt;object type=&quot;application/x-shockwave-flash&quot; classid=&quot;clsid:d27cdb6e-ae6d-11cf-96b8-444553540000&quot; codebase=&quot;http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,0,0&quot; width=&quot;100%&quot; height=&quot;100%&quot; id=&quot;FPlayer&quot; align=&quot;middle&quot;&gt;		  	&lt;param name=&quot;allowScriptAccess&quot; value=&quot;always&quot;&gt;		  	&lt;param name=&quot;allowFullScreen&quot; value=&quot;true&quot;&gt;		  	&lt;param name=&quot;movie&quot; value=&quot;http://swf.ws.126.net/openplayer/v01/-0-2_M8BDVT4K9_M8BG2NR1V-vimg1_ws_126_net//image/snapshot_movie/2012/9/G/A/M8BG2SPGA-.swf&quot;&gt;		  	&lt;param name=&quot;quality&quot; value=&quot;high&quot;&gt;		  	&lt;param name=&quot;wmode&quot; value=&quot;opaque&quot;&gt;		  	&lt;embed src=&quot;http://swf.ws.126.net/openplayer/v01/-0-2_M8BDVT4K9_M8BG2NR1V-vimg1_ws_126_net//image/snapshot_movie/2012/9/G/A/M8BG2SPGA-.swf&quot; id=&quot;FPlayer&quot; quality=&quot;high&quot; width=&quot;550&quot; height=&quot;400&quot; name=&quot;FPlayer&quot; align=&quot;middle&quot; allowscriptaccess=&quot;always&quot; allowfullscreen=&quot;true&quot; type=&quot;application/x-shockwave-flash&quot; pluginspage=&quot;http://www.macromedia.com/go/getflashplayer&quot; wmode=&quot;opaque&quot;&gt;		  	&lt;/object&gt;','2013-10-24 00:00:00'),
	(3,'告别压力山大','&lt;object type=&quot;application/x-shockwave-flash&quot; classid=&quot;clsid:d27cdb6e-ae6d-11cf-96b8-444553540000&quot; codebase=&quot;http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,0,0&quot; width=&quot;100%&quot; height=&quot;100%&quot; id=&quot;FPlayer&quot; align=&quot;middle&quot;&gt;		  	&lt;param name=&quot;allowScriptAccess&quot; value=&quot;always&quot;&gt;		  	&lt;param name=&quot;allowFullScreen&quot; value=&quot;true&quot;&gt;		  	&lt;param name=&quot;movie&quot; value=&quot;http://swf.ws.126.net/openplayer/v01/-0-2_M8BDVT4K9_M8D69HMV6-vimg1_ws_126_net//image/snapshot_movie/2012/10/R/D/M8D6ALORD-.swf&quot;&gt;		  	&lt;param name=&quot;quality&quot; value=&quot;high&quot;&gt;		  	&lt;param name=&quot;wmode&quot; value=&quot;opaque&quot;&gt;		  	&lt;embed src=&quot;http://swf.ws.126.net/openplayer/v01/-0-2_M8BDVT4K9_M8D69HMV6-vimg1_ws_126_net//image/snapshot_movie/2012/10/R/D/M8D6ALORD-.swf&quot; id=&quot;FPlayer&quot; quality=&quot;high&quot; width=&quot;550&quot; height=&quot;400&quot; name=&quot;FPlayer&quot; align=&quot;middle&quot; allowscriptaccess=&quot;always&quot; allowfullscreen=&quot;true&quot; type=&quot;application/x-shockwave-flash&quot; pluginspage=&quot;http://www.macromedia.com/go/getflashplayer&quot; wmode=&quot;opaque&quot;&gt;		  	&lt;/object&gt;','2013-10-24 00:00:00'),
	(4,'A型人格','&lt;object type=&quot;application/x-shockwave-flash&quot; classid=&quot;clsid:d27cdb6e-ae6d-11cf-96b8-444553540000&quot; codebase=&quot;http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,0,0&quot; width=&quot;100%&quot; height=&quot;100%&quot; id=&quot;FPlayer&quot; align=&quot;middle&quot;&gt;		  	&lt;param name=&quot;allowScriptAccess&quot; value=&quot;always&quot;&gt;		  	&lt;param name=&quot;allowFullScreen&quot; value=&quot;true&quot;&gt;		  	&lt;param name=&quot;movie&quot; value=&quot;http://swf.ws.126.net/openplayer/v01/-0-2_M8BDVT4K9_M8BG2RNDN-vimg1_ws_126_net//image/snapshot_movie/2012/9/H/I/M8BG2V0HI-.swf&quot;&gt;		  	&lt;param name=&quot;quality&quot; value=&quot;high&quot;&gt;		  	&lt;param name=&quot;wmode&quot; value=&quot;opaque&quot;&gt;		  	&lt;embed src=&quot;http://swf.ws.126.net/openplayer/v01/-0-2_M8BDVT4K9_M8BG2RNDN-vimg1_ws_126_net//image/snapshot_movie/2012/9/H/I/M8BG2V0HI-.swf&quot; id=&quot;FPlayer&quot; quality=&quot;high&quot; width=&quot;550&quot; height=&quot;400&quot; name=&quot;FPlayer&quot; align=&quot;middle&quot; allowscriptaccess=&quot;always&quot; allowfullscreen=&quot;true&quot; type=&quot;application/x-shockwave-flash&quot; pluginspage=&quot;http://www.macromedia.com/go/getflashplayer&quot; wmode=&quot;opaque&quot;&gt;		  	&lt;/object&gt;','2013-10-24 00:00:00'),
	(5,'非言语沟通','&lt;object type=&quot;application/x-shockwave-flash&quot; classid=&quot;clsid:d27cdb6e-ae6d-11cf-96b8-444553540000&quot; codebase=&quot;http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,0,0&quot; width=&quot;100%&quot; height=&quot;100%&quot; id=&quot;FPlayer&quot; align=&quot;middle&quot;&gt;		  	&lt;param name=&quot;allowScriptAccess&quot; value=&quot;always&quot;&gt;		  	&lt;param name=&quot;allowFullScreen&quot; value=&quot;true&quot;&gt;		  	&lt;param name=&quot;movie&quot; value=&quot;http://swf.ws.126.net/openplayer/v01/-0-2_M8BDVT4K9_M8CUMV606-vimg1_ws_126_net//image/snapshot_movie/2012/10/O/K/M8CUN2UOK-.swf&quot;&gt;		  	&lt;param name=&quot;quality&quot; value=&quot;high&quot;&gt;		  	&lt;param name=&quot;wmode&quot; value=&quot;opaque&quot;&gt;		  	&lt;embed src=&quot;http://swf.ws.126.net/openplayer/v01/-0-2_M8BDVT4K9_M8CUMV606-vimg1_ws_126_net//image/snapshot_movie/2012/10/O/K/M8CUN2UOK-.swf&quot; id=&quot;FPlayer&quot; quality=&quot;high&quot; width=&quot;550&quot; height=&quot;400&quot; name=&quot;FPlayer&quot; align=&quot;middle&quot; allowscriptaccess=&quot;always&quot; allowfullscreen=&quot;true&quot; type=&quot;application/x-shockwave-flash&quot; pluginspage=&quot;http://www.macromedia.com/go/getflashplayer&quot; wmode=&quot;opaque&quot;&gt;		  	&lt;/object&gt;','2013-10-24 00:00:00'),
	(6,'斯坦福大学公开课：iPad和iPhone应用开发(iOS5)&gt; MVC 和 Objective-C 介绍','&lt;object type=&quot;application/x-shockwave-flash&quot; classid=&quot;clsid:d27cdb6e-ae6d-11cf-96b8-444553540000&quot; codebase=&quot;http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,0,0&quot; width=&quot;550&quot; height=&quot;400&quot; id=&quot;FPlayer&quot; align=&quot;middle&quot;&gt;		  	&lt;param name=&quot;allowScriptAccess&quot; value=&quot;always&quot;&gt;		  	&lt;param name=&quot;allowFullScreen&quot; value=&quot;true&quot;&gt;		  	&lt;param name=&quot;movie&quot; value=&quot;http://swf.ws.126.net/openplayer/v01/-0-2_M807AH0S5_M807F02TP-vimg1_ws_126_net//image/snapshot_movie/2012/5/L/6/M820J07L6-.swf&quot;&gt;		  	&lt;param name=&quot;quality&quot; value=&quot;high&quot;&gt;		  	&lt;param name=&quot;wmode&quot; value=&quot;opaque&quot;&gt;		  	&lt;embed src=&quot;http://swf.ws.126.net/openplayer/v01/-0-2_M807AH0S5_M807F02TP-vimg1_ws_126_net//image/snapshot_movie/2012/5/L/6/M820J07L6-.swf&quot; id=&quot;FPlayer&quot; quality=&quot;high&quot; width=&quot;550&quot; height=&quot;400&quot; name=&quot;FPlayer&quot; align=&quot;middle&quot; allowscriptaccess=&quot;always&quot; allowfullscreen=&quot;true&quot; type=&quot;application/x-shockwave-flash&quot; pluginspage=&quot;http://www.macromedia.com/go/getflashplayer&quot; wmode=&quot;opaque&quot;&gt;		  	&lt;/object&gt;','2013-10-24 00:00:00'),
	(7,'斯坦福大学公开课：iPad和iPhone应用开发(iOS5) &gt; 我的第一个iOS应用程序','&lt;object type=&quot;application/x-shockwave-flash&quot; classid=&quot;clsid:d27cdb6e-ae6d-11cf-96b8-444553540000&quot; codebase=&quot;http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,0,0&quot; width=&quot;100%&quot; height=&quot;100%&quot; id=&quot;FPlayer&quot; align=&quot;middle&quot;&gt;		  	&lt;param name=&quot;allowScriptAccess&quot; value=&quot;always&quot;&gt;		  	&lt;param name=&quot;allowFullScreen&quot; value=&quot;true&quot;&gt;		  	&lt;param name=&quot;movie&quot; value=&quot;http://swf.ws.126.net/openplayer/v01/-0-2_M807AH0S5_M807F04UO-vimg1_ws_126_net//image/snapshot_movie/2013/7/F/C/M92GK92FC-.swf&quot;&gt;		  	&lt;param name=&quot;quality&quot; value=&quot;high&quot;&gt;		  	&lt;param name=&quot;wmode&quot; value=&quot;opaque&quot;&gt;		  	&lt;embed src=&quot;http://swf.ws.126.net/openplayer/v01/-0-2_M807AH0S5_M807F04UO-vimg1_ws_126_net//image/snapshot_movie/2013/7/F/C/M92GK92FC-.swf&quot; id=&quot;FPlayer&quot; quality=&quot;high&quot; width=&quot;550&quot; height=&quot;400&quot; name=&quot;FPlayer&quot; align=&quot;middle&quot; allowscriptaccess=&quot;always&quot; allowfullscreen=&quot;true&quot; type=&quot;application/x-shockwave-flash&quot; pluginspage=&quot;http://www.macromedia.com/go/getflashplayer&quot; wmode=&quot;opaque&quot;&gt;		  	&lt;/object&gt;','2013-10-24 00:00:00'),
	(8,'斯坦福大学公开课：iPad和iPhone应用开发(iOS5)&gt;Objective-C','&lt;object type=&quot;application/x-shockwave-flash&quot; classid=&quot;clsid:d27cdb6e-ae6d-11cf-96b8-444553540000&quot; codebase=&quot;http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,0,0&quot; width=&quot;100%&quot; height=&quot;100%&quot; id=&quot;FPlayer&quot; align=&quot;middle&quot;&gt;		  	&lt;param name=&quot;allowScriptAccess&quot; value=&quot;always&quot;&gt;		  	&lt;param name=&quot;allowFullScreen&quot; value=&quot;true&quot;&gt;		  	&lt;param name=&quot;movie&quot; value=&quot;http://swf.ws.126.net/openplayer/v01/-0-2_M807AH0S5_M807H2ACM-vimg1_ws_126_net//image/snapshot_movie/2013/8/C/I/M95AKHCCI-.swf&quot;&gt;		  	&lt;param name=&quot;quality&quot; value=&quot;high&quot;&gt;		  	&lt;param name=&quot;wmode&quot; value=&quot;opaque&quot;&gt;		  	&lt;embed src=&quot;http://swf.ws.126.net/openplayer/v01/-0-2_M807AH0S5_M807H2ACM-vimg1_ws_126_net//image/snapshot_movie/2013/8/C/I/M95AKHCCI-.swf&quot; id=&quot;FPlayer&quot; quality=&quot;high&quot; width=&quot;550&quot; height=&quot;400&quot; name=&quot;FPlayer&quot; align=&quot;middle&quot; allowscriptaccess=&quot;always&quot; allowfullscreen=&quot;true&quot; type=&quot;application/x-shockwave-flash&quot; pluginspage=&quot;http://www.macromedia.com/go/getflashplayer&quot; wmode=&quot;opaque&quot;&gt;		  	&lt;/object&gt;','2013-10-24 00:00:00'),
	(10,' 斯坦福大学公开课：编程范式&gt; 编程范式2','&lt;object type=&quot;application/x-shockwave-flash&quot; classid=&quot;clsid:d27cdb6e-ae6d-11cf-96b8-444553540000&quot; codebase=&quot;http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,0,0&quot; width=&quot;100%&quot; height=&quot;100%&quot; id=&quot;FPlayer&quot; align=&quot;middle&quot;&gt;		  	&lt;param name=&quot;allowScriptAccess&quot; value=&quot;always&quot;&gt;		  	&lt;param name=&quot;allowFullScreen&quot; value=&quot;true&quot;&gt;		  	&lt;param name=&quot;movie&quot; value=&quot;http://swf.ws.126.net/openplayer/v01/-0-2_M6SL23BRS_M6SL2N8OE-vimg1_ws_126_net//image/snapshot_movie/2011/7/6/9/M77C1GS69-.swf&quot;&gt;		  	&lt;param name=&quot;quality&quot; value=&quot;high&quot;&gt;		  	&lt;param name=&quot;wmode&quot; value=&quot;opaque&quot;&gt;		  	&lt;embed src=&quot;http://swf.ws.126.net/openplayer/v01/-0-2_M6SL23BRS_M6SL2N8OE-vimg1_ws_126_net//image/snapshot_movie/2011/7/6/9/M77C1GS69-.swf&quot; id=&quot;FPlayer&quot; quality=&quot;high&quot; width=&quot;550&quot; height=&quot;400&quot; name=&quot;FPlayer&quot; align=&quot;middle&quot; allowscriptaccess=&quot;always&quot; allowfullscreen=&quot;true&quot; type=&quot;application/x-shockwave-flash&quot; pluginspage=&quot;http://www.macromedia.com/go/getflashplayer&quot; wmode=&quot;opaque&quot;&gt;		  	&lt;/object&gt;','2013-10-25 00:00:00'),
	(11,'只需专注10分钟（冥想）','&lt;object type=&quot;application/x-shockwave-flash&quot; classid=&quot;clsid:d27cdb6e-ae6d-11cf-96b8-444553540000&quot; codebase=&quot;http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,0,0&quot; width=&quot;100%&quot; height=&quot;100%&quot; id=&quot;FPlayer&quot; align=&quot;middle&quot;&gt;		  	&lt;param name=&quot;allowScriptAccess&quot; value=&quot;always&quot;&gt;		  	&lt;param name=&quot;allowFullScreen&quot; value=&quot;true&quot;&gt;		  	&lt;param name=&quot;movie&quot; value=&quot;http://swf.ws.126.net/openplayer/v01/-0-2_M94IULLG6_M94IURE1L-vimg1_ws_126_net//image/snapshot_movie/2013/8/R/V/M94IUR7RV-.swf&quot;&gt;		  	&lt;param name=&quot;quality&quot; value=&quot;high&quot;&gt;		  	&lt;param name=&quot;wmode&quot; value=&quot;opaque&quot;&gt;		  	&lt;embed src=&quot;http://swf.ws.126.net/openplayer/v01/-0-2_M94IULLG6_M94IURE1L-vimg1_ws_126_net//image/snapshot_movie/2013/8/R/V/M94IUR7RV-.swf&quot; id=&quot;FPlayer&quot; quality=&quot;high&quot; width=&quot;550&quot; height=&quot;400&quot; name=&quot;FPlayer&quot; align=&quot;middle&quot; allowscriptaccess=&quot;always&quot; allowfullscreen=&quot;true&quot; type=&quot;application/x-shockwave-flash&quot; pluginspage=&quot;http://www.macromedia.com/go/getflashplayer&quot; wmode=&quot;opaque&quot;&gt;		  	&lt;/object&gt;','2013-10-25 00:00:00');

/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table video_addres
# ------------------------------------------------------------

DROP TABLE IF EXISTS `video_addres`;

CREATE TABLE `video_addres` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(516) NOT NULL DEFAULT '',
  `info` varchar(2000) NOT NULL,
  `date` datetime DEFAULT NULL,
  `sortsId` tinyint(3) unsigned NOT NULL COMMENT '当前信息属于哪个类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `video_addres` WRITE;
/*!40000 ALTER TABLE `video_addres` DISABLE KEYS */;

INSERT INTO `video_addres` (`id`, `name`, `url`, `info`, `date`, `sortsId`)
VALUES
	(1,'日语入门课程','http://v.163.com/special/opencourse/japanese.html','暂无备注信息bbb！','2013-10-24 00:00:00',4),
	(2,'探索太阳','http://v.163.com/movie/2011/7/C/F/M852B7VLM_M857F55CF.html','探索太阳','2013-10-24 00:00:00',4),
	(3,'编程方法学','http://v.163.com/special/sp/programming.html','暂无备注信息！','2013-10-24 00:00:00',4),
	(4,'斯坦福大学公开课：编程范式','http://v.163.com/special/opencourse/paradigms.html','暂无备注信息！','2013-10-24 00:00:00',4),
	(5,'哈佛大学公开课：构建动态网站','http://v.163.com/special/opencourse/buildingdynamicwebsites.html','暂无备注信息！','2013-10-24 00:00:00',4),
	(6,'麻省理工学院公开课：算法导论','http://v.163.com/special/opencourse/algorithms.html','暂无备注信息！','2013-10-24 00:00:00',4),
	(7,'密歇根州公开课：平面设计','http://v.163.com/special/opencourse/designers.html','暂无备注信息！','2013-10-24 00:00:00',4),
	(14,'哈佛大学公开课：计算机科学导论','http://v.163.com/special/lectureroncomputerscience/?recomend=1','本课程教导学生如何思考,如何更有效地解决问题。涉及广泛的编程问题集——C以及PHP和JavaScript。','2013-12-26 00:00:00',4),
	(25,'有客','http://www.eyouke.com/','主站','2014-02-14 00:00:00',7),
	(31,'南京綦谷科技公司','http://oa.topdeep.cn//Logon.action','niexin\r\ngaoling\r\nyoupaipai\r\nshidewen\r\nzhangli\r\nluojunke\r\nqqin.yan\r\njming.he\r\njun.xu\r\njiachun.dai','2014-04-08 00:00:00',0),
	(33,'州游网','http://www.zytrip.com/','暂无备注信息！','2014-04-18 00:00:00',7),
	(34,'耐克官网','http://www.nike.com/cn/zh_cn/','暂无备注信息！','2014-05-08 00:00:00',5),
	(35,'江苏旅游资讯网','http://dms.website.eyouke.net/','江苏旅游信息网','2014-05-09 00:00:00',7),
	(37,'北京青旅后台','http://beijingqinglv.pj.eyouke.net:81/admin/login','暂无备注信息！','2014-05-14 00:00:00',7),
	(38,'江苏省旅游协会','http://xiehui.website.eyouke.net/','暂无备注信息！','2014-05-17 00:00:00',7),
	(39,'DMS 后台地址','http://dms.website.eyouke.net/manage/pub/login','暂无备注信息！','2014-05-19 00:00:00',7),
	(40,'安徽佑途网','http://www.youtour.cc/','安徽佑途网','2014-05-28 00:00:00',7),
	(44,'计算机科学及编程导论','http://v.163.com/movie/2010/6/D/6/M6TCSIN1U_M6TCSTQD6.html','这门课程适用于那些拥有很少或没有编程经验的学生,它致力于使学生理解计算机在解决问题中的作用,并且帮助学生，不论其专业，使他们对于能够完成有用的小程序的目标充满信心。\r\n','2014-06-09 00:00:00',4),
	(45,'抽象编程','http://v.163.com/movie/2008/7/7/Q/M6SIM7VT5_M6SIQI67Q.html','本课程是衔接编程方法论课程，并展示高级编程主题，如递归、算法分析、C++编程语言的数据抽象化，C++类似于C和JAVA语言。如果已经通过电脑科学AP测试并获得高分（4或5分），或者是在大学课程中取得高分，就可以从抽象化编程开始。 抽象化编程假定你已熟悉良好的编程风和软件工程内容(编程方法学的程度)。并能以编程和数据抽象化作为基础来掌握新主题。\r\n','2014-06-09 00:00:00',4),
	(48,'乐居后台地址（在线）','http://www.gezlife.com/site/index','\r\n进入后台的地址\r\nuser:xqzj\r\npass:123456','2014-08-01 00:00:00',8),
	(49,'jquery插件','http://www.jq-school.com/','jquery插件','2014-08-14 00:00:00',9),
	(53,'国外购物类网站','http://cartcraze.com/','暂无备注信息！','2014-08-21 00:00:00',13),
	(54,'自适应网页设计','http://www.ruanyifeng.com/blog/2012/05/responsive_web_design.html','暂无备注信息！','2014-08-24 00:00:00',1),
	(55,'Javascript编程风格','http://www.ruanyifeng.com/blog/2012/04/javascript_programming_style.html','暂无备注信息！','2014-08-24 00:00:00',2),
	(56,'乐居正式服务器地址','http://fb.gezlife.com/','暂无备注信息！','2014-08-26 00:00:00',8),
	(57,'国外地址1','http://demos.udthemes.com/raw/wordpress/white/','乐居前台首页幻灯参考网站','2014-08-26 00:00:00',13),
	(58,'国外地址2','http://www.sinnisclothing.com/zh/','暂无备注信息！','2014-08-26 00:00:00',1),
	(60,'国外地址3','http://themes.siiimple.com/360/','幻灯片360度轮播','2014-08-29 00:00:00',0),
	(62,'自适应图片网址','http://down.admin5.com/demo/code_pop/18/461/','暂无备注信息！','2014-08-29 00:00:00',1),
	(63,'自适应图片网址2','http://down.admin5.com/demo/code_pop/18/460/','暂无备注信息！','2014-08-29 00:00:00',13),
	(64,'变化灵活的CSS网页框架','http://down.admin5.com/demo/code_pop/1/%E5%8F%98%E5%8C%96%E7%81%B5%E6%B4%BB%E7%9A%84CSS%E7%BD%91%E9%A1%B5%E6%A1%86%E6%9E%B6/','变化灵活的CSS网页框架','2014-08-29 00:00:00',1),
	(65,'登录页面demo','https://www.tumblr.com/','登录页面参考页面','2014-08-30 00:00:00',13),
	(66,'css 手册','http://www.zhujiangroad.com/program/CSS/','涵盖有软件类，web类，设计类的资料','2014-09-10 00:00:00',1),
	(71,'css 3 资料','http://c7sky.com/works/css3slides/#1','暂无备注信息！','2014-09-12 00:00:00',1),
	(72,'页面效果参考网站','http://www.csswinner.com/winners/4','冯川发给我的','2014-09-15 00:00:00',13),
	(73,'张勇博客','http://www.zhangyoo.com/','乐居程序员张勇博客','2014-09-16 00:00:00',10),
	(74,'js 基础算法','http://www.cnblogs.com/super-d2/archive/2011/10/16/2212865.html','暂无备注信息！','2014-09-18 00:00:00',2),
	(75,'乐居后台模仿的网站','http://www.yyyweb.com/demo/metronic-bootstrap/index.html','乐居后台模仿的网站','2014-09-18 00:00:00',13),
	(76,'jquery插件库','http://www.jq22.com/','jquery插件库','2014-09-22 00:00:00',9),
	(77,'新闻','http://v.qq.com/cover/d/dxvur7an5kmbq6u.html?vid=n0015001ja6','暂无备注信息！','2014-09-24 00:00:00',3),
	(78,'挂失网','http://js.cnnboy.com/reportlossview.php?id=433','username:longhaohong\r\npassword:wanelslbmy0','2014-09-27 00:00:00',0),
	(79,'瀑布流样式','http://www.themes.red-sun-design.com/redfolio/portfolio/','乐居前台二套模板瀑布流样式','2014-09-27 00:00:00',1),
	(80,'腾讯官网','http://news.qq.com/original/living/l421.html#','腾讯官网 滚轮幻灯效果','2014-09-29 00:00:00',3),
	(81,'GoogleAnalyticsObject','https://mathiasbynens.be/notes/async-analytics-snippet','动态加载js文件技术','2014-09-29 00:00:00',1),
	(82,'伯乐在线','http://blog.jobbole.com/10011/','前段技术杂志','2014-09-29 00:00:00',1),
	(83,'如何将页脚固定在页面底部','http://blog.jobbole.com/10408/','暂无备注信息！','2014-09-29 00:00:00',1),
	(84,'requirejs','http://www.requirejs.org/','requirejs','2014-09-29 00:00:00',1),
	(85,'jQuery图片特效脚本prettyPhoto简介','http://zmingcx.com/about-jquery-image-effects-script-prettyphoto.html','jQuery图片特效脚本prettyPhoto简介','2014-09-30 00:00:00',1),
	(86,'prettyPhoto官网','http://www.no-margin-for-errors.com/projects/prettyphoto-jquery-lightbox-clone/documentation','暂无备注信息！','2014-09-30 00:00:00',0),
	(87,'C语言 视频教程','http://www.baojy.com/C.html','鑫路历程 c++','2014-10-11 00:00:00',21),
	(88,'当前前端','http://www.dqqd.me/tag/css3/','当前前端','2014-10-11 00:00:00',1),
	(90,'图片可等比放大','http://down.admin5.com/demo/code_pop/18/1961/index.html','响应式幻灯 图片可等比放大（代码不好扣下来）','2014-10-14 00:00:00',1),
	(91,'WordPress Theme','http://udthemes.com/themes/','国外模板 响应式\r\nhttp://udthemes.com\r\n\r\nProduct: WordPress Theme\r\nStyle: Photography, Portfolio\r\nResponsive: Yes\r\nTech.: HTML5, CSS3','2014-10-14 00:00:00',13),
	(92,'极品女士','http://tv.sohu.com/20141014/n405113253.shtml?pvid=tc_video&amp;a=&amp;b=http%3A%2F%2Fi1.itc.cn%2F20141015%2F32f_a15a524a_3bc6_c596_fbd2_bfdc619fd493_1.jpg','搞笑','2014-10-15 00:00:00',6),
	(93,'js 插件 bxslider','http://bxslider.com/','响应式幻灯','2014-10-15 00:00:00',9),
	(94,' jQuery图表开源软件','http://www.oschina.net/project/tag/275/jquery-chart',' jQuery图表开源软件','2014-10-16 00:00:00',1),
	(95,'用PHP画折线图','http://lisus2000.blog.163.com/blog/static/70886237201152245425541/','用PHP画折线图','2014-10-16 00:00:00',18),
	(97,'js 滑动插件','http://www.superslide2.com/','滑动插件','2014-10-16 00:00:00',9),
	(99,'国外页面参考样例','http://hakim.se/experiments','国外页面参考样例 experiments','2014-10-21 00:00:00',13),
	(100,'js 操作iframe 里元素','http://wenku.baidu.com/view/76d53a7b168884868762d6cb.html','暂无备注信息！','2014-10-27 00:00:00',1),
	(101,'那些界面动画设计需要瞭解的事情','http://www.ui.cn/project.php?id=20726','那些界面动画设计需要瞭解的事情','2014-10-29 00:00:00',1),
	(102,'网页动画：JavaScript和CSS3 动效库大全','http://www.ui.cn/project.php?id=16348','暂无备注信息！','2014-10-30 00:00:00',9),
	(103,'极速标签博客','http://www.gbtags.com/gb/gblibrary.htm','极速标签博客','2014-10-30 00:00:00',1),
	(104,'屌丝男士','http://tv.sohu.com/20121010/n354554959.shtml?pvid=20f123606d1c96ab','暂无备注信息！','2014-10-30 00:00:00',6),
	(106,'汤姆大叔的博客','http://www.cnblogs.com/TomXu/archive/2011/12/15/2288411.html','深入理解JavaScript系列（1）：编写高质量JavaScript代码的基本要点','2014-11-06 00:00:00',10),
	(107,'function与感叹号','http://swordair.com/function-and-exclamation-mark/','!function(){}();','2014-11-06 00:00:00',2),
	(108,'jQuery自定义滚动条插件-Easy Scroll','http://www.jq22.com/jquery-info335','jQuery插件库','2014-11-06 00:00:00',9),
	(109,'70个专家技巧','http://blog.csdn.net/fgdfgasd/article/details/7091042','暂无备注信息！','2014-11-08 00:00:00',1),
	(110,'HTML标签嵌套规则  ','http://blog.163.com/hongshaoguoguo%40126/blog/static/180469812013617115036500/','暂无备注信息！','2014-11-08 00:00:00',1),
	(111,'独行冰海','http://blog.163.com/hongshaoguoguo@126/','前端技术博客','2014-11-08 00:00:00',10),
	(112,'图片素材库','http://www.houzz.com/','暂无备注信息！','2014-11-10 00:00:00',13),
	(114,'后台管理系统自适应模版','http://www.weidea.net/post/33668','后台管理系统自适应模版\r\nhttp://adminex.themebucket.net/index.html','2014-11-11 00:00:00',1),
	(115,'登录页面demo','http://www.lofter.com/','暂无备注信息！','2014-11-13 00:00:00',13),
	(116,'一天玩转Bootstrap前端框架','http://study.163.com/course/introduction/704112.htm#/courseDetail','暂无备注信息！','2014-11-14 00:00:00',1),
	(117,'Bootstrap 工具','http://www.w3cschool.cc/bootstrap/bootstrap-responsive-utilities.html','Bootstrap','2014-11-20 00:00:00',1),
	(120,'国内最大的IT技能学习平台——慕课网','http://www.imooc.com/course/list','各种视频教程\r\nlly947923503@gmail.com','2014-11-24 00:00:00',4),
	(121,'优设','http://www.uisdc.com/web-dvpt-and-rapid-visual-6','暂无备注信息！','2014-11-26 00:00:00',12),
	(122,'w3c 手册','http://www.w3.org/tr','暂无备注信息！','2014-11-26 00:00:00',11),
	(123,'盘点8种CSS实现垂直居中水平居中的绝对定位居中技术','http://blog.csdn.net/freshlover/article/details/11579669','暂无备注信息！','2014-11-28 00:00:00',1),
	(124,'gezlife 室内设计模拟平台','http://www.gezlife.com/apartmentDesign','暂无备注信息！','2014-12-05 00:00:00',8),
	(125,'美家达人室内设计模拟平台','http://www.homestyler.com/floorplan','HomeStyler:美家达人室内设计模拟平台是一个在线室内设计家居装修软件网络版工具，由美国欧特克公司开发;用户可以在线创建和共享家居设计方案，打造你的梦想之家，支持在线创建户型图，添加家居产品等各种功能。\r\n\r\n美家达人的特点：\r\n1、拖放房间、门和家具，快速创建户型图;\r\n2、轻松试验不同的风格、色彩和装饰材料;\r\n3、大量的家居产品库;\r\n4、轻松一点，即可以三维方式呈现您的家居设计;\r\n5、把您的设计分享给家人、朋友和专家以供点评;\r\n6、使您在设计和选择产品时充满信心。\r\n\r\n美家达人是欧特克为中国家装消费者最新提供的一个家装设计平台，它提供了一套免费的绿色在线设计软件，帮助用户在装修伊始可以自己规划房间布局，风格搭配，并可以迅速通过免费的3D效果图和 照片级效果图来感受整体的设计。 另外美家达人在线丰富的图库可以让用户可以浏览到来自世界各地的设计创意，以激发用户的家装灵感。','2014-12-05 00:00:00',8),
	(126,'raphaeljs','http://dmitrybaranovskiy.github.io/raphael/','暂无备注信息！','2014-12-06 00:00:00',9),
	(127,'webrebuild','http://www.webrebuild.org/2014/','webrebuild.ORG的成立于2007年8月18日，致力于推广“Web标准”，促进全国前端开发工作者的交流，提升前端开发的影响力。自成立以来一直受到W3C中国、蓝色理想等组织的大力支持。深圳站于今年已经成功举办三届交流会。北京09年12月成功举办北京站第一届交流会。 \r\n每月最后一个周六还有web标准化交流会，面向全国各大城市的前端工作者，坐在一起自由交流web标准和前段开发。 \r\n\r\nhttp://www.webrebuild.org \r\nhttp://www.w3ctech.com \r\nhttp://site.douban.com/122158/','2014-12-06 00:00:00',1),
	(128,'SVG 与 Canvas：如何选择','http://msdn.microsoft.com/zh-cn/library/gg193983','暂无备注信息！','2014-12-06 00:00:00',11),
	(129,'msdn','https://code.msdn.microsoft.com/','microsoft','2014-12-08 00:00:00',11),
	(130,'layer','http://sentsin.com/jquery/layer/','layer是一款口碑极佳的web弹层组件，她具备全方位的解决方案，致力于服务各个水平段的开发人员，您的页面会轻松地拥有丰富而友好的操作体验。\r\n\r\n在与同类弹出层插件的比较中，layer总是能轻易获胜。她尽可能地在以更少的代码展现更强健的功能，且格外注重性能的提升、易用和实用性，正因如此，越来越多的开发者将媚眼投上了layer（已被795424人次关注）。layer兼容了包括IE6在内的所有主流浏览器。 她数量可观的接口，使得您可以自定义太多您需要的风格，每一种弹层模式各具特色，广受欢迎。当然，这种“王婆卖瓜”的陈述听起来总是有点难受，因此你需要进一步了解她是否真的如你所愿。\r\n\r\nlayer遵循LGPL协议，将永久性提供无偿服务。历经两年，截至到2014年7月5号，已运用在15万家web平台，其中包括中国联通、蚂蚁短租、phpyun、中国网等知名网站，如果您有大型项目也在使用layer，您可以联系作者，以便在此展现案例，也为您的品牌推广尽一些绵薄之力。Say','2014-12-08 00:00:00',1),
	(131,'Donate','https://pledgie.com/explore/charity','暂无备注信息！','2014-12-09 00:00:00',13),
	(133,'jQuery resize event','http://benalman.com/projects/jquery-resize-plugin/','暂无备注信息！','2014-12-11 00:00:00',9),
	(134,'jQuery 页面滚动插件 One Page Scroll','http://www.oschina.net/p/onepage-scroll','onepage-scroll 是一款 jQuery 单页滚动插件，它能够轻松的制作类似 iPhone 5s 的页面，它具有以下功能、特点\r\n\r\n（不）显示右侧圆点项目导航\r\n（不）显示命名锚记\r\n循环/禁止循环\r\n回退（使用浏览器自带滚动）/指定回退\r\n支持键盘控制，左右上下/ Page Up / Page Donw / Home / End 等\r\n水平/横向滚动\r\n回调函数','2014-12-11 00:00:00',9),
	(135,'阮一峰的网络日志','http://www.ruanyifeng.com/blog/2012/07/three_ways_to_define_a_javascript_class.html','Javascript定义类（class）的三种方法','2014-12-11 00:00:00',10),
	(136,'cloudgamer ','http://www.cnblogs.com/cloudgamer/archive/2008/11/17/Drag.html','JavaScript 拖放效果','2014-12-14 00:00:00',10),
	(138,'更改文件上传框的样式','http://bbs.blueidea.com/thread-1227402-1-1.html','暂无备注信息！','2014-12-16 00:00:00',1),
	(139,'YII 快速创建项目GII','http://www.cnblogs.com/linzhenjie/archive/2012/11/21/2781768.html','暂无备注信息！','2014-12-16 00:00:00',14),
	(140,'随鼠标一屏一屏滚动','https://www.tumblr.com/','暂无备注信息！','2014-12-19 00:00:00',13),
	(141,'让你彻底弄清offset','http://www.cnblogs.com/jscode/archive/2012/09/03/2669299.html','暂无备注信息！','2014-12-22 00:00:00',1),
	(142,'锤子网址','http://www.smartisan.com/#/overview','乐居售楼中心全屏滚动参考的网站','2014-12-23 00:00:00',13),
	(143,'让页面滚动更有趣','http://www.dowebok.com/131.html','让页面滚动更有趣','2014-12-23 00:00:00',9),
	(144,'CSS3动画库','http://www.dowebok.com/demo/2014/98/','CSS3动画库','2014-12-23 00:00:00',1),
	(145,'Javascript 实现老虎机游戏 涉及知识：鼠标单击 随机数 innerHTML 计时器等  ','http://blog.163.com/hongshaoguoguo@126/blog/static/1804698120125535958464/','Javascript 实现老虎机游戏 涉及知识：鼠标单击 随机数 innerHTML 计时器等  ','2014-12-24 00:00:00',10),
	(146,'clearfix 最完美的解决方法','http://my.oschina.net/u/1402334/blog/296441','clearfix 最完美的解决方法','2014-12-25 00:00:00',1),
	(147,'响应式案例','http://biome.imaginemthemes.com/wp/','暂无备注信息！','2014-12-26 00:00:00',1),
	(149,'瀑布流','http://www.wookmark.com/recent','暂无备注信息！','2015-01-07 00:00:00',13),
	(150,'jQuery 拖拽插件','http://jqueryui.com/sortable/#items','暂无备注信息！','2015-01-07 00:00:00',9),
	(151,'连体','http://v.qq.com/cover/5/5w4vn5eqtmj5i1n.html?pgv_ref=aio2012&amp;ptlang=2052','暂无备注信息！\r\nhttp://v.qq.com/cover/b/bwomphxmzrvulof.html?vid=k00150okf1w\r\n网传女子在警所被扒裤子 警方公布监控视频澄清','2015-01-09 00:00:00',15),
	(152,'售楼中心','http://salecenter.gezlive.net/salecenter/index/id/2','暂无备注信息！','2015-01-10 00:00:00',8),
	(153,'添加flash 信任位置','http://www.macromedia.com/support/documentation/cn/flashplayer/help/settings_manager04.html','暂无备注信息！','2015-01-12 00:00:00',1),
	(155,'优设','http://www.uisdc.com/the-great-chinese-webfont','前端工程师的菜！姗姗来迟的中文WEBFONT（附神器推荐）','2015-01-16 00:00:00',1),
	(156,' 李炎恢老师jQuery初级视频教程(共66课时)','http://edu.51cto.com/index.php?do=lession&amp;id=14456','暂无备注信息！','2015-01-17 00:00:00',1),
	(157,' jquery实现商品动画飞入购物车效果','http://www.jq-school.com/Preview.aspx?id=362','暂无备注信息！','2015-01-17 00:00:00',9),
	(158,'jQuery 加入购物车飞入效果','http://james.padolsey.com/javascript/new-jquery-plugin-fly-off-page/','New jQuery plugin: “Fly Off Page”','2015-01-17 00:00:00',9),
	(159,'加入购物车 ','http://bbs.blueidea.com/thread-3106825-1-1.html','论坛','2015-01-17 00:00:00',9),
	(160,'100个不能错过的实用JS自定义函数','http://wenku.baidu.com/link?url=wQPgkb6QVbp9d3vxpFoj-SEqLvOu98GjWbMUCZgfoUPPpyJ5KZfR3WuHsM5XwzIXY_P4_aWC3hkw-5N1fvD0wWj8QIX2cp8B1yJFNED6xzS','暂无备注信息！','2015-01-20 00:00:00',1),
	(161,'户型设计在线测试地址','http://www.gezlive.net/apartmentDesign','暂无备注信息！','2015-01-21 00:00:00',8),
	(162,'11 个最佳 jQuery 滚动条插件','http://www.iteye.com/news/27748','Custom Srollbar：自定义内容滚动条插件 \r\nhttp://manos.malihu.gr/jquery-custom-content-scroller/    \r\n\r\nA crossbrowser lightweight Javascript / jQuery scrollbar.\r\nhttp://baijs.com/tinyscrollbar/\r\n','2015-01-22 00:00:00',9),
	(163,'自定义滚动条','http://down.admin5.com/demo/code_pop/18/1464/','一个简单的自定义滚动条\r\n','2015-01-29 00:00:00',1),
	(164,'评论框','http://dev.duoshuo.com/','暂无备注信息！','2015-01-29 00:00:00',1),
	(166,'Console命令详解,让调试js代码变得更简单','http://www.cnblogs.com/see7di/archive/2011/11/21/2257442.html','暂无备注信息！','2015-02-10 00:00:00',1),
	(167,'SQLite的SQL语法','http://blog.csdn.net/ejzhang/article/details/6224915/#01','暂无备注信息！','2015-02-24 00:00:00',10),
	(168,'一个小时内学习SQLite数据库','http://database.51cto.com/art/201205/335411.htm','暂无备注信息！','2015-02-24 00:00:00',2),
	(169,'ThinkPHP完全开发手册','http://doc.thinkphp.cn/manual/entrance.html','暂无备注信息！','2015-02-24 00:00:00',2),
	(171,'张鑫旭(前端)','http://www.zhangxinxu.com/','推荐','0000-00-00 00:00:00',10),
	(172,'宁皓 视频网','http://ninghao.net/course','暂无备注信息！','0000-00-00 00:00:00',4),
	(173,'html5 撒花效果','http://www.108js.com/article/article3/30587.html?id=1862','暂无备注信息！','0000-00-00 00:00:00',1),
	(174,'codecanyon','http://codecanyon.net','国外素材学习网','0000-00-00 00:00:00',16),
	(175,'mootools','http://mootools.net/more/docs/1.5.1/Drag/Drag.Move','前端工具 js class 工具 ','0000-00-00 00:00:00',17),
	(176,'弹出窗口','http://www.17sucai.com/pins/3257.html','CSS3绚丽的弹出窗口动画过渡效果','0000-00-00 00:00:00',1),
	(177,'Javascript跨域和Ajax跨域解决方案','http://blog.163.com/lgh_2002/blog/static/4401752620105403614141/','有妹子看哦--','0000-00-00 00:00:00',1),
	(178,'C语言中文网','http://c.biancheng.net/cpp/','暂无备注信息！','0000-00-00 00:00:00',2),
	(179,'PHP视频教学网','https://php-art.com/','暂无备注信息！','0000-00-00 00:00:00',18),
	(180,'Drop-Down List','http://demo.htmleaf.com/1412/201412261436/index.html','下拉框','0000-00-00 00:00:00',1),
	(181,'jQuery响应式可拖拽的元素组件网格布局插件','http://www.jq22.com/yanshi6649','暂无备注信息！','0000-00-00 00:00:00',1),
	(182,'symfony','http://symfony.cn/docs/book/from_flat_php_to_symfony2.html','暂无备注信息！','0000-00-00 00:00:00',18),
	(183,'coffeeScript ','http://coffee-script.org/','暂无备注信息！','0000-00-00 00:00:00',2),
	(184,'移动天','http://bbs.8080.net/forum-128-1.html?t=1','暂无备注信息！','2017-09-29 16:31:10',10),
	(185,'吕涛博客','https://www.lvtao.net/dev/php-stream-info.html','PHP Streams(流)介绍及使用','2017-09-30 15:54:21',10),
	(187,'王垠的个人主页','http://docs.huihoo.com/homepage/shredderyin/','王垠的个人主页','2017-12-05 17:10:00',10),
	(188,'w3resource','https://www.w3resource.com/mysql/mathematical-functions/mysql-mathematical-format.php','MySQL 手册','2017-12-15 16:02:07',11),
	(189,'英语学习资料','http://210.240.55.2/~t311/moe/engb1/b1grammar/b1case.htm','英语学习资料(台湾教材)','2017-12-19 11:07:13',23),
	(190,'SSH登录主机','https://consiiii.me/2015/11/22/SSH%E7%99%BB%E5%BD%95%E4%B8%BB%E6%9C%BA/','SSH登录主机','2017-12-21 16:09:45',33),
	(191,'execScript 方法参考手册','http://help.dottoro.com/ljoswolk.php','web 参考手册','2017-12-29 13:41:18',11),
	(192,'Harttle','http://harttle.land/','参考大全','2018-02-08 11:22:12',10),
	(193,'How to Design Programs','http://www.htdp.org/2003-09-26/Book/curriculum-Z-H-45.html#node_chap_36','How to Design Programs','2018-02-08 11:25:04',2),
	(194,'教你从零开始搭建一款前端脚手架工具','https://segmentfault.com/a/1190000006190814','教你从零开始搭建一款前端脚手架工具\r\n\r\n','2018-02-08 17:55:33',1),
	(195,'前端脚手架','https://www.cnblogs.com/ihardcoder/p/6648423.html','前端脚手架','2018-02-22 15:32:21',1),
	(196,'Airbnb的eslint规范','https://github.com/airbnb/javascript','Airbnb的eslint规范','2018-02-22 16:22:30',20),
	(197,'做一个合格的前端，gulp资源大集合','https://segmentfault.com/a/1190000012910261','做一个合格的前端，gulp资源大集合','2018-02-22 16:24:05',1),
	(198,'用PHPExcel读取excel表格','https://i6448038.github.io/2017/06/18/%E7%94%A8PHPExcel%E8%AF%BB%E5%8F%96excel%E8%A1%A8%E6%A0%BC/','用PHPExcel读取excel表格','2018-02-22 17:02:10',18),
	(199,'自制前端脚手架','http://imweb.io/topic/59ffc48c1f0e50753869bf91','自制前端脚手架','2018-02-22 17:04:02',1),
	(200,'gulp','https://www.smashingmagazine.com/2014/06/building-with-gulp/','gulp','2018-02-23 15:15:13',24),
	(201,'meteor','https://www.meteor.com/','前端工具 meteor','2018-02-24 10:27:53',26),
	(202,'全栈万事屋','https://zhuanlan.zhihu.com/everythingfullstack','什么都做的小程序员和小公司，说人话的全栈技术博客\r\n\r\n','2018-02-24 17:16:51',10),
	(203,'iviewui','https://www.iviewui.com/','一套基于 Vue.js 的高质量 UI 组件库','2018-02-28 17:03:36',1),
	(204,'深度学习','https://www.slideshare.net/tw_dsconf/ss-62245351?qid=108adce3-2c3d-4758-a830-95d0a57e46bc&amp;amp;v=&amp;amp;b=&amp;amp;from_search=3','暂无备注信息！','2018-03-01 12:16:48',19),
	(205,'一步一步教你安装Nginx+PHP+Mysql','https://imcat.in/teach-you-step-by-step-install-nginx-php-mysql/','暂无备注信息！','2018-03-01 12:17:52',18),
	(206,'伯乐在线 ','http://blog.jobbole.com/category/career/page/11/','暂无备注信息！','2018-03-01 12:20:25',19),
	(207,'编程小技巧','https://www.oudahe.com/','暂无备注信息！','2018-03-01 12:33:22',10),
	(208,'yii2 简书','https://www.jianshu.com/p/a4e68bbaf455','暂无备注信息！','2018-03-02 08:42:44',14),
	(209,'英语语法','http://zhibimo.com/read/xiaolai/a-new-english-reading-handbook/044.html','暂无备注信息！','2018-03-02 16:59:45',23),
	(210,'李笑来','https://weibo.com/bylixiaolai?is_hot=1','暂无备注信息！','2018-03-05 10:37:39',10),
	(211,'Creating a Simple CRUD App With Yii2','http://www.yiiframework.com/wiki/490/creating-a-simple-crud-app-with-yii2-revised-12-20-2013/','暂无备注信息！','2018-03-05 12:25:53',14),
	(212,'How to Program With Yii2: Working With the Database and Active Record','https://code.tutsplus.com/tutorials/how-to-program-with-yii2-working-with-the-database-and-active-record--cms-22768','暂无备注信息！','2018-03-05 14:29:21',14),
	(213,'codeblock','https://www.jianshu.com/p/d5fa463df77d','暂无备注信息！','2018-03-05 14:45:47',21),
	(214,'boijs','https://boijs.github.io/docs/#/_advance-scaffold','暂无备注信息！','2018-03-05 14:46:45',1),
	(215,'sigplan','http://www.sigplan.org/','Special Interest Group on Programming Languages','2018-03-05 14:52:41',2),
	(216,'前端工程化：体系设计与实践','http://item.jd.com/12285480.html','暂无备注信息！','2018-03-05 15:19:17',25),
	(217,'浅析前端工程化','http://www.cnblogs.com/ihardcoder/p/5378290.html','暂无备注信息！','2018-03-05 15:19:55',10),
	(218,'meteor-中文','https://www.kancloud.cn/dingyiming/meteor/114161','暂无备注信息！','2018-03-05 15:22:51',26),
	(219,'结构图','https://upload-images.jianshu.io/upload_images/145902-6bc811053fdf809e.png','暂无备注信息！','2018-03-05 15:24:31',21),
	(220,'数据库常见面试题(开发者篇)','https://www.cnblogs.com/Java3y/p/8507258.html','暂无备注信息！','2018-03-05 17:03:47',27),
	(221,'博客园','https://www.cnblogs.com/','代码改变世界\r\n','2018-03-05 17:07:59',10),
	(222,'在Node.js环境下使用Express创建Web项目','http://blog.csdn.net/hearain528/article/details/45460287','暂无备注信息！','2018-03-06 10:48:48',22),
	(223,'tutorialspoint','https://www.tutorialspoint.com/index.htm','程序学习教程','2018-03-09 10:56:39',2),
	(224,'Are pointers and arrays equivalent in C?','https://eli.thegreenplace.net/2009/10/21/are-pointers-and-arrays-equivalent-in-c','暂无备注信息！','2018-03-12 16:44:53',21),
	(225,'Web性能压力测试工具','http://www.ha97.com/4623.html','Web性能压力测试工具之WebBench详解','2018-03-12 17:16:53',0),
	(226,'常识','https://books.google.com/books?id=eCqZCwAAQBAJ&amp;amp;pg=PT207&amp;amp;lpg=PT207&amp;amp;dq=%E6%8B%89%E4%B8%81%E5%AD%97%E6%AF%8D%E8%B5%B7%E6%BA%90&amp;amp;source=bl&amp;amp;ots=4HJm0XOZPA&amp;amp;sig=NzIUsbnx0g-yot6xWL7vBWeI8N8&amp;amp;hl=zh-CN&amp;amp;sa=X&amp;amp;ved=0ahUKEwjsmfK23OjZAhWBHZQKHUomBvkQ6AEIlwEwDA#v=onepage&amp;amp;q=%E6%8B%89%E4%B8%81%E5%AD%97%E6%AF%8D%E8%B5%B7%E6%BA%90&amp;amp;f=false','暂无备注信息！','2018-03-14 12:44:19',0),
	(227,'沪江英语','https://www.hjenglish.com/zimu/yuanyinzimu/','暂无备注信息！','2018-03-14 16:00:05',23),
	(228,'geeksforgeeks','https://www.geeksforgeeks.org/','暂无备注信息！','2018-03-16 17:08:28',2),
	(229,'php 读取pdf文件','https://www.pdfparser.org/documentation','暂无备注信息！','2018-03-16 17:13:06',18),
	(230,'Python读取PDF文件','http://blog.csdn.net/guozhenqiang19921021/article/details/71438318','暂无备注信息！','2018-03-16 17:14:09',31),
	(231,'专升本考试','http://sdata.jseea.cn/tpl_front/examplan/spcl/spclPlanListShzkQuery.html#','暂无备注信息！','2018-03-19 09:24:00',19),
	(232,'国际英标发音','http://www.internationalphoneticalphabet.org/ipa-sounds/ipa-chart-with-sounds-version-3/','暂无备注信息！','2018-03-19 12:30:36',32),
	(233,'英语音标发音','http://en-yinbiao.xiao84.com/','暂无备注信息！','2018-03-19 12:33:18',23),
	(234,'日韩发音','https://en.m.wikipedia.org/wiki/Japanese_phonology','暂无备注信息！','2018-03-19 12:57:12',32),
	(235,'Emmet html 快速开发','https://docs.emmet.io/#emmet--the-essential-toolkit-for-web-developers','暂无备注信息！','2018-03-20 09:41:20',1),
	(236,'前端 oop 类库','https://mootools.net/core','暂无备注信息！','2018-03-20 11:12:02',1),
	(237,'blazejs','http://blazejs.org/','暂无备注信息！','2018-03-20 12:28:16',1),
	(238,'Web development tutorials','https://www.w3resource.com/','暂无备注信息！','2018-03-20 16:10:06',2),
	(239,'fonts ','https://www.fontlab.com/','暂无备注信息！','2018-03-20 16:43:09',1),
	(240,'extjs甘特图说明','http://code1.okbase.net/codefile/ext-base-debug.js_201211205219_18.htm','暂无备注信息！','2018-03-20 16:45:25',1),
	(241,'空间大师','https://kjds.gezlife.com/bb/login.html','暂无备注信息！','2018-03-20 16:47:04',8),
	(242,'GitHub 中国区前 100 名到底是什么样的人','http://www.sohu.com/a/68019044_115128','暂无备注信息！','2018-03-20 16:48:10',0),
	(243,'一个IT人士的个人经历','https://kb.cnblogs.com/page/192251/','一个IT人士的个人经历，给迷失方向的朋友','2018-03-20 16:50:00',10),
	(244,'常用对照表','http://tool.oschina.net/commons','暂无备注信息！','2018-03-20 16:52:36',1),
	(245,'C 结构体','http://wiki.jikexueyuan.com/project/c/c-structures.html','暂无备注信息！','2018-03-20 16:53:14',21),
	(246,'Paste Tool','http://www.jslint.com/','Paste JavaScript source or JSON text','2018-03-20 16:55:12',1),
	(247,'修复npm权限','https://wohugb.gitbooks.io/npm/content/getting_started/fixing_npm_permissions.html','暂无备注信息！','2018-03-20 16:56:29',30),
	(248,'scp 跨机远程拷贝','http://linuxtools-rst.readthedocs.io/zh_CN/latest/tool/scp.html','暂无备注信息！','2018-03-20 16:59:35',33),
	(249,'Installation of CentOS in VirtualBox','http://teaching.idallen.com/cst8207/14f/notes/000_centos_virtualbox_install.html','Installation of CentOS in VirtualBox','2018-03-20 17:02:57',33),
	(250,'Mac下通过 brew 安装不同版本的php','http://www.piaoyi.org/php/Mac-brew-php.html','暂无备注信息！','2018-03-20 17:03:51',34),
	(251,'Linux下的压缩解压缩命令详解','http://www.php100.com/html/webkaifa/Linux/2009/1213/3652.html','暂无备注信息！','2018-03-20 17:05:18',33),
	(252,'trees','http://www.admin10000.com/document/3778.html','8 个最好的 jQuery 树形 Tree 插件','2018-03-20 17:09:08',1),
	(253,'javascript','http://crockford.com/javascript/','暂无备注信息！','2018-03-20 17:11:26',1),
	(255,'Monitus UI Library','https://www.monitus.net/documentation/jmui/jmui_core.js.html','暂无备注信息！','2018-03-20 17:12:32',1),
	(256,'pen','https://codepen.io/pen/','暂无备注信息！','2018-03-21 09:07:54',34),
	(257,'Makefile 入门','http://harttle.land/2014/01/01/makefile.html','暂无备注信息！','2018-03-21 09:10:43',21),
	(258,'开源问答 C language','https://www.oschina.net/question/tag/cpp','暂无备注信息！','2018-03-21 09:11:57',21),
	(259,'spring','https://repo.spring.io/webapp/#/home','暂无备注信息！','2018-03-21 09:16:59',35),
	(260,'javascript 中文网','http://www.itxueyuan.org/javascript/neihe/','暂无备注信息！','2018-03-21 09:18:04',1),
	(261,'触碰jQuery：AJAX异步详解','http://www.cnblogs.com/heyuquan/archive/2013/05/13/js-jquery-ajax.html','暂无备注信息！','2018-03-21 09:18:51',1),
	(262,'早绑定和迟绑定','https://www.tuicool.com/articles/v2eMveE','暂无备注信息！','2018-03-21 09:19:37',1),
	(263,'javascript Prototype 对象扩展  ','https://www.teakki.com/p/57dfc006d3a7507f975f27a0','暂无备注信息！','2018-03-21 09:20:15',0),
	(264,'hasAttribute method','http://help.dottoro.com/ljmaaqaf.php','暂无备注信息！','2018-03-21 09:21:06',1),
	(265,'走进 Ember.js','https://www.oschina.net/translate/getting-into-ember-js?cmp&amp;amp;p=2#&amp;amp;_t_t_t=0.12284458568319678&amp;amp;_t_t_t=0.8655746865551919&amp;amp;_t_t_t=0.7946103552822024&amp;amp;_t_t_t=0.34858470619656146&amp;amp;_t_t_t=0.7600963131990284','暂无备注信息！','2018-03-21 09:23:19',1),
	(266,'nodejs 教程','https://www.youtube.com/watch?v=QseHOX-5nJQ','暂无备注信息！','2018-03-21 09:24:06',1),
	(267,'JSLinux','https://bellard.org/jslinux/','暂无备注信息！','2018-03-21 09:25:10',0),
	(268,'一步一步教你安装Nginx+PHP+Mysql','https://imcat.in/teach-you-step-by-step-install-nginx-php-mysql/','暂无备注信息！','2018-03-21 09:26:59',18),
	(269,'教程','https://www.tutorialspoint.com/php/php_date_and_time.htm','暂无备注信息！','2018-03-21 09:29:41',18),
	(270,'phpstorm+Xdebug断点调试','https://my.oschina.net/yearnfar/blog/350051','暂无备注信息！','2018-03-21 09:30:30',18),
	(271,'Install MySQL on Mac OS X','http://obscuredclarity.blogspot.jp/2009/08/install-mysql-on-mac-os-x.html','暂无备注信息！','2018-03-21 09:31:26',28),
	(272,'Select2 Widget ','http://demos.krajee.com/widget-details/select2','暂无备注信息！','2018-03-21 09:32:48',14),
	(273,'PHP压力测试','https://www.jianshu.com/p/ef4c1dc329bd','暂无备注信息！','2018-03-21 09:33:29',18),
	(274,'Java类库及其组织结构','http://www.weixueyuan.net/view/6312.html','暂无备注信息！','2018-03-21 09:34:37',35),
	(275,'移动端前端框架UI库','https://www.jianshu.com/p/1da8a92c72f3','暂无备注信息！','2018-03-21 09:35:19',1),
	(276,'softwareengineering','https://softwareengineering.stackexchange.com/?tags=javascript','暂无备注信息！','2018-03-21 09:37:38',1),
	(277,'阿里字体库','http://www.iconfont.cn/#!/webfont/index','暂无备注信息！','2018-03-21 09:38:25',1),
	(278,'圣杯布局和双飞翼布局的原理是什么','https://segmentfault.com/q/1010000002709305','暂无备注信息！','2018-03-21 09:39:08',1),
	(279,'为什么要将icon做成字体','http://www.cnblogs.com/mizzle/p/3851867.html','暂无备注信息！','2018-03-21 09:39:49',1),
	(280,'CSS3的calc()使用','https://www.w3cplus.com/css3/how-to-use-css3-calc-function.html','暂无备注信息！','2018-03-21 09:40:41',1),
	(281,'CSS布局之--淘宝双飞翼布','http://www.cnblogs.com/langzs/archive/2013/01/27/taobaoshuangfeiyi.html','暂无备注信息！','2018-03-21 09:41:32',1),
	(282,'css框架','http://zh.learnlayout.com/frameworks.html','暂无备注信息！','2018-03-21 09:42:08',1),
	(283,'如何精简 jQuery','https://mmxiaowu.com/article/584820a3d4352863efb55457','暂无备注信息！','2018-03-21 09:43:30',1),
	(284,'唐霜','http://www.tangshuang.net/','暂无备注信息！','2018-03-21 09:44:46',10),
	(285,'smashingmagazine－BEM','https://www.smashingmagazine.com/2013/02/the-history-of-the-bem-methodology/','暂无备注信息！','2018-03-21 09:47:29',1),
	(286,'A Package Manager','https://yarnpkg.com/blog/2017/07/11/lets-dev-a-package-manager/','暂无备注信息！','2018-03-21 09:48:46',1),
	(287,'JS require() for browsers','https://pixelsvsbytes.com/2013/02/js-require-for-browsers-better-faster-stronger/','暂无备注信息！','2018-03-21 09:50:21',1),
	(288,'移动端真机调试实战经验','https://www.jianshu.com/p/b0234b7da021','暂无备注信息！','2018-03-21 09:51:02',1),
	(289,'jQuery 笔记 - JQ和JS和MUI比较','https://www.jianshu.com/p/e155bad03960','暂无备注信息！','2018-03-21 09:51:42',1),
	(290,'React入门实例','http://luckykun.com/work/2016-05-23/react-todo-study.html','React入门最好的实例－TodoList','2018-03-21 09:52:23',1),
	(291,'浏览器的工作原理','https://www.html5rocks.com/zh/tutorials/internals/howbrowserswork/','暂无备注信息！','2018-03-21 09:52:57',1),
	(292,'组件库','https://js.coach/?collection=React','暂无备注信息！','2018-03-21 09:54:58',36),
	(293,'粘贴板拷贝','https://clipboardjs.com/','暂无备注信息！','2018-03-21 09:55:43',1),
	(294,'html前端 rem布局','http://blog.csdn.net/zhazhaji/article/details/77069659','html前端 rem布局，完美兼容各手机端的尺寸，自适应布局','2018-03-21 09:56:21',1),
	(295,'孔明前端团队','http://blog.tangyouhua.com/2015-08-31','孔明前端团队React项目新手指南','2018-03-21 09:57:07',36),
	(296,'孔明科技招聘','https://www.w3ctech.com/topic/1731','暂无备注信息！','2018-03-21 09:57:58',1),
	(297,'nodejs express template','http://www.cnblogs.com/rubylouvre/p/3421805.html','暂无备注信息！','2018-03-21 09:58:54',22),
	(298,'Use EJS to Template','https://scotch.io/tutorials/use-ejs-to-template-your-node-application','Use EJS to Template Your Node Application','2018-03-21 09:59:55',22),
	(299,'大公司里怎样开发和部署前端代码','https://www.zhihu.com/question/20790576','暂无备注信息！','2018-03-21 10:00:19',1),
	(300,'前端工作版块','https://dwqs.gitbooks.io/frontenddevhandbook/content/practice/front-end-jobs.html','暂无备注信息！','2018-03-21 10:00:46',1),
	(301,'React - CSDN博客','https://so.csdn.net/so/search/s.do?q=React#md','暂无备注信息！','2018-03-21 10:01:37',36),
	(302,'一些前端开发大牛','http://caibaojian.com/some-fe','暂无备注信息！','2018-03-21 10:02:08',1),
	(303,'大公司里怎样开发和部署前端代码','http://web.jobbole.com/83392/','暂无备注信息！','2018-03-21 10:02:49',1),
	(304,'React 技术栈','https://github.com/ruanyf/jstraining/blob/master/docs/react.md','暂无备注信息！','2018-03-21 10:03:30',36),
	(305,'彻底弄懂css中单位px和em,rem的区别','https://www.cnblogs.com/leejersey/p/3662612.html','暂无备注信息！','2018-03-21 10:03:57',1),
	(306,'Webpack 打包优化之速度篇','https://jeffjade.com/2017/08/12/125-webpack-package-optimization-for-speed/#more','暂无备注信息！','2018-03-21 10:04:38',1),
	(307,'ipone','https://ipsw.me/','暂无备注信息！','2018-03-21 10:05:28',0),
	(308,'四川农业大学','http://www.cnzx.info/','暂无备注信息！','2018-03-21 10:06:13',0),
	(309,'Modules','http://exploringjs.com/es6/ch_modules.html','暂无备注信息！','2018-03-21 10:08:05',1),
	(310,'Creating an Open XML spreadsheet in PHP','http://openxmldeveloper.org/blog/b/openxmldeveloper/archive/2007/05/06/1515.aspx','Creating an Open XML spreadsheet in PHP','2018-03-21 10:12:10',18);

/*!40000 ALTER TABLE `video_addres` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
