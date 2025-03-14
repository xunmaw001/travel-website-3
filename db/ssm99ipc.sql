-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm99ipc
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611923138660 DEFAULT CHARSET=utf8 COMMENT='客服中心';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (81,'2021-01-29 12:04:38',1,1,'提问1','回复1',1),(82,'2021-01-29 12:04:38',2,2,'提问2','回复2',2),(83,'2021-01-29 12:04:38',3,3,'提问3','回复3',3),(84,'2021-01-29 12:04:38',4,4,'提问4','回复4',4),(85,'2021-01-29 12:04:38',5,5,'提问5','回复5',5),(86,'2021-01-29 12:04:38',6,6,'提问6','回复6',6),(1611922959537,'2021-01-29 12:22:39',1611922844464,NULL,'这里可以咨询',NULL,0),(1611923138659,'2021-01-29 12:25:38',1611922844464,1,NULL,'这里回复用户咨询',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm99ipc/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm99ipc/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm99ipc/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjingdianxinxi`
--

DROP TABLE IF EXISTS `discussjingdianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611922877511 DEFAULT CHARSET=utf8 COMMENT='景点信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjingdianxinxi`
--

LOCK TABLES `discussjingdianxinxi` WRITE;
/*!40000 ALTER TABLE `discussjingdianxinxi` DISABLE KEYS */;
INSERT INTO `discussjingdianxinxi` VALUES (111,'2021-01-29 12:04:38',1,1,'评论内容1','回复内容1'),(112,'2021-01-29 12:04:38',2,2,'评论内容2','回复内容2'),(113,'2021-01-29 12:04:38',3,3,'评论内容3','回复内容3'),(114,'2021-01-29 12:04:38',4,4,'评论内容4','回复内容4'),(115,'2021-01-29 12:04:38',5,5,'评论内容5','回复内容5'),(116,'2021-01-29 12:04:38',6,6,'评论内容6','回复内容6'),(1611922877510,'2021-01-29 12:21:17',21,1611922844464,'登录后可以收藏  评论 在线购票  客服咨询  等操作','这里回复用户评论');
/*!40000 ALTER TABLE `discussjingdianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusslvyouzhoubian`
--

DROP TABLE IF EXISTS `discusslvyouzhoubian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusslvyouzhoubian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='旅游周边评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusslvyouzhoubian`
--

LOCK TABLES `discusslvyouzhoubian` WRITE;
/*!40000 ALTER TABLE `discusslvyouzhoubian` DISABLE KEYS */;
INSERT INTO `discusslvyouzhoubian` VALUES (121,'2021-01-29 12:04:38',1,1,'评论内容1','回复内容1'),(122,'2021-01-29 12:04:38',2,2,'评论内容2','回复内容2'),(123,'2021-01-29 12:04:38',3,3,'评论内容3','回复内容3'),(124,'2021-01-29 12:04:38',4,4,'评论内容4','回复内容4'),(125,'2021-01-29 12:04:38',5,5,'评论内容5','回复内容5'),(126,'2021-01-29 12:04:38',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusslvyouzhoubian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusstesemeishi`
--

DROP TABLE IF EXISTS `discusstesemeishi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusstesemeishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='特色美食评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusstesemeishi`
--

LOCK TABLES `discusstesemeishi` WRITE;
/*!40000 ALTER TABLE `discusstesemeishi` DISABLE KEYS */;
INSERT INTO `discusstesemeishi` VALUES (131,'2021-01-29 12:04:38',1,1,'评论内容1','回复内容1'),(132,'2021-01-29 12:04:38',2,2,'评论内容2','回复内容2'),(133,'2021-01-29 12:04:38',3,3,'评论内容3','回复内容3'),(134,'2021-01-29 12:04:38',4,4,'评论内容4','回复内容4'),(135,'2021-01-29 12:04:38',5,5,'评论内容5','回复内容5'),(136,'2021-01-29 12:04:38',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusstesemeishi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jingdianfenlei`
--

DROP TABLE IF EXISTS `jingdianfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jingdianfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1611923004351 DEFAULT CHARSET=utf8 COMMENT='景点分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jingdianfenlei`
--

LOCK TABLES `jingdianfenlei` WRITE;
/*!40000 ALTER TABLE `jingdianfenlei` DISABLE KEYS */;
INSERT INTO `jingdianfenlei` VALUES (11,'2021-01-29 12:04:38','湖泊风景区'),(12,'2021-01-29 12:04:38','山岳风景区'),(13,'2021-01-29 12:04:38','森林风景区'),(14,'2021-01-29 12:04:38','山水风景区'),(15,'2021-01-29 12:04:38','海滨风景区'),(16,'2021-01-29 12:04:38','革命纪念地'),(1611923004350,'2021-01-29 12:23:23','这里添加景点分类');
/*!40000 ALTER TABLE `jingdianfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jingdianpingjia`
--

DROP TABLE IF EXISTS `jingdianpingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jingdianpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `jingdiantupian` varchar(200) DEFAULT NULL COMMENT '景点图片',
  `menpiaojiage` varchar(200) DEFAULT NULL COMMENT '门票价格',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `jingdianpingfen` varchar(200) NOT NULL COMMENT '景点评分',
  `jingdianpingjia` longtext NOT NULL COMMENT '景点评价',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611923192630 DEFAULT CHARSET=utf8 COMMENT='景点评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jingdianpingjia`
--

LOCK TABLES `jingdianpingjia` WRITE;
/*!40000 ALTER TABLE `jingdianpingjia` DISABLE KEYS */;
INSERT INTO `jingdianpingjia` VALUES (71,'2021-01-29 12:04:38','景点名称1','分类1','http://localhost:8080/ssm99ipc/upload/jingdianpingjia_jingdiantupian1.jpg','门票价格1','总价格1','1','景点评价1','用户名1','手机1','是',''),(72,'2021-01-29 12:04:38','景点名称2','分类2','http://localhost:8080/ssm99ipc/upload/jingdianpingjia_jingdiantupian2.jpg','门票价格2','总价格2','1','景点评价2','用户名2','手机2','是',''),(73,'2021-01-29 12:04:38','景点名称3','分类3','http://localhost:8080/ssm99ipc/upload/jingdianpingjia_jingdiantupian3.jpg','门票价格3','总价格3','1','景点评价3','用户名3','手机3','是',''),(74,'2021-01-29 12:04:38','景点名称4','分类4','http://localhost:8080/ssm99ipc/upload/jingdianpingjia_jingdiantupian4.jpg','门票价格4','总价格4','1','景点评价4','用户名4','手机4','是',''),(75,'2021-01-29 12:04:38','景点名称5','分类5','http://localhost:8080/ssm99ipc/upload/jingdianpingjia_jingdiantupian5.jpg','门票价格5','总价格5','1','景点评价5','用户名5','手机5','是',''),(76,'2021-01-29 12:04:38','景点名称6','分类6','http://localhost:8080/ssm99ipc/upload/jingdianpingjia_jingdiantupian6.jpg','门票价格6','总价格6','1','景点评价6','用户名6','手机6','是',''),(1611923192629,'2021-01-29 12:26:32','景点名称1','海滨风景区','http://localhost:8080/ssm99ipc/upload/1611922448423.jpg','66','132','5','<p>这里进行景点评价	</p>','666','16459878983','是','这里回复景点评价');
/*!40000 ALTER TABLE `jingdianpingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jingdianxinxi`
--

DROP TABLE IF EXISTS `jingdianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) NOT NULL COMMENT '景点名称',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `jingdiantupian` varchar(200) DEFAULT NULL COMMENT '景点图片',
  `jingdianxingji` varchar(200) DEFAULT NULL COMMENT '景点星级',
  `jingdiandizhi` varchar(200) DEFAULT NULL COMMENT '景点地址',
  `menpiaojiage` int(11) NOT NULL COMMENT '门票价格',
  `yingyeshijian` varchar(200) DEFAULT NULL COMMENT '营业时间',
  `zhuyishixiang` varchar(200) DEFAULT NULL COMMENT '注意事项',
  `jingdianjieshao` longtext COMMENT '景点介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611923031882 DEFAULT CHARSET=utf8 COMMENT='景点信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jingdianxinxi`
--

LOCK TABLES `jingdianxinxi` WRITE;
/*!40000 ALTER TABLE `jingdianxinxi` DISABLE KEYS */;
INSERT INTO `jingdianxinxi` VALUES (21,'2021-01-29 12:04:38','景点名称1','海滨风景区','http://localhost:8080/ssm99ipc/upload/1611922448423.jpg','AAAAA','景点地址1',66,'营业时间1','注意事项1','<p>景点介绍1</p>','2021-01-29 20:26:53',10),(22,'2021-01-29 12:04:38','景点名称2','湖泊风景区','http://localhost:8080/ssm99ipc/upload/1611922505024.jpg','AAAAA','景点地址2',78,'营业时间2','注意事项2','<p>景点介绍2</p>','2021-01-29 20:15:02',3),(23,'2021-01-29 12:04:38','景点名称3','山水风景区','http://localhost:8080/ssm99ipc/upload/1611922520834.jpg','AAAAA','景点地址3',88,'营业时间3','注意事项3','<p>景点介绍3</p>','2021-01-29 20:15:15',4),(24,'2021-01-29 12:04:38','景点名称4','革命纪念地','http://localhost:8080/ssm99ipc/upload/1611922535838.jpg','AAAAA','景点地址4',60,'营业时间4','注意事项4','<p>景点介绍4</p>','2021-01-29 20:15:30',5),(25,'2021-01-29 12:04:38','景点名称5','革命纪念地','http://localhost:8080/ssm99ipc/upload/1611922552314.jpg','AAA','景点地址5',26,'营业时间5','注意事项5','<p>景点介绍5</p>','2021-01-29 20:21:58',7),(26,'2021-01-29 12:04:38','景点名称6','湖泊风景区','http://localhost:8080/ssm99ipc/upload/1611922564919.jpg','AAAA','景点地址6',60,'营业时间6','注意事项6','<p>景点介绍6</p>','2021-01-29 20:22:12',8),(1611923031881,'2021-01-29 12:23:51','济南景点','湖泊风景区','http://localhost:8080/ssm99ipc/upload/1611923013581.jpg','AAAAA','AA',55,'早九晚六','11','<p><img src=\"http://localhost:8080/ssm99ipc/upload/1611923029916.jpg\"></p>','2021-01-29 20:26:06',2);
/*!40000 ALTER TABLE `jingdianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvyouzhoubian`
--

DROP TABLE IF EXISTS `lvyouzhoubian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvyouzhoubian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiudianmingcheng` varchar(200) NOT NULL COMMENT '酒店名称',
  `leibie` varchar(200) NOT NULL COMMENT '类别',
  `xingji` varchar(200) NOT NULL COMMENT '星级',
  `jiudiantupian` varchar(200) DEFAULT NULL COMMENT '酒店图片',
  `jiudiandizhi` varchar(200) DEFAULT NULL COMMENT '酒店地址',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiudianjieshao` longtext COMMENT '酒店介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='旅游周边';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvyouzhoubian`
--

LOCK TABLES `lvyouzhoubian` WRITE;
/*!40000 ALTER TABLE `lvyouzhoubian` DISABLE KEYS */;
INSERT INTO `lvyouzhoubian` VALUES (31,'2021-01-29 12:04:38','酒店名称1','豪华酒店','五星','http://localhost:8080/ssm99ipc/upload/1611922619460.jpg','酒店地址1','13823888881','<p>酒店介绍1</p>'),(32,'2021-01-29 12:04:38','喜来登','豪华酒店','五星','http://localhost:8080/ssm99ipc/upload/1611922630416.jpg','酒店地址2','13823888882','<p>酒店介绍2</p>'),(33,'2021-01-29 12:04:38','酒店名称3','快捷酒店','一星','http://localhost:8080/ssm99ipc/upload/1611922643623.jpg','酒店地址3','13823888883','<p>酒店介绍3</p>'),(34,'2021-01-29 12:04:38','酒店名称4','连锁酒店','一星','http://localhost:8080/ssm99ipc/upload/1611922652367.jpg','酒店地址4','13823888884','<p>酒店介绍4</p>'),(35,'2021-01-29 12:04:38','酒店名称5','快捷酒店','一星','http://localhost:8080/ssm99ipc/upload/1611922663343.jpg','酒店地址5','13823888885','<p>酒店介绍5</p>'),(36,'2021-01-29 12:04:38','酒店名称6','快捷酒店','五星','http://localhost:8080/ssm99ipc/upload/1611922673110.jpg','酒店地址6','13823888886','<p>酒店介绍6</p>');
/*!40000 ALTER TABLE `lvyouzhoubian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menpiaoyuding`
--

DROP TABLE IF EXISTS `menpiaoyuding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menpiaoyuding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `jingdiantupian` varchar(200) DEFAULT NULL COMMENT '景点图片',
  `jingdiandizhi` varchar(200) DEFAULT NULL COMMENT '景点地址',
  `menpiaojiage` varchar(200) DEFAULT NULL COMMENT '门票价格',
  `goumaishuliang` int(11) NOT NULL COMMENT '购买数量',
  `zongjiage` int(11) DEFAULT NULL COMMENT '总价格',
  `yudingriqi` date DEFAULT NULL COMMENT '预定日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611922895072 DEFAULT CHARSET=utf8 COMMENT='门票预订';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menpiaoyuding`
--

LOCK TABLES `menpiaoyuding` WRITE;
/*!40000 ALTER TABLE `menpiaoyuding` DISABLE KEYS */;
INSERT INTO `menpiaoyuding` VALUES (61,'2021-01-29 12:04:38','景点名称1','分类1','http://localhost:8080/ssm99ipc/upload/menpiaoyuding_jingdiantupian1.jpg','景点地址1','门票价格1',1,1,'2021-01-29','备注1','用户名1','姓名1','手机1','身份证1','是','','未支付'),(62,'2021-01-29 12:04:38','景点名称2','分类2','http://localhost:8080/ssm99ipc/upload/menpiaoyuding_jingdiantupian2.jpg','景点地址2','门票价格2',2,2,'2021-01-29','备注2','用户名2','姓名2','手机2','身份证2','是','','未支付'),(63,'2021-01-29 12:04:38','景点名称3','分类3','http://localhost:8080/ssm99ipc/upload/menpiaoyuding_jingdiantupian3.jpg','景点地址3','门票价格3',3,3,'2021-01-29','备注3','用户名3','姓名3','手机3','身份证3','是','','未支付'),(64,'2021-01-29 12:04:38','景点名称4','分类4','http://localhost:8080/ssm99ipc/upload/menpiaoyuding_jingdiantupian4.jpg','景点地址4','门票价格4',4,4,'2021-01-29','备注4','用户名4','姓名4','手机4','身份证4','是','','未支付'),(65,'2021-01-29 12:04:38','景点名称5','分类5','http://localhost:8080/ssm99ipc/upload/menpiaoyuding_jingdiantupian5.jpg','景点地址5','门票价格5',5,5,'2021-01-29','备注5','用户名5','姓名5','手机5','身份证5','是','','未支付'),(66,'2021-01-29 12:04:38','景点名称6','分类6','http://localhost:8080/ssm99ipc/upload/menpiaoyuding_jingdiantupian6.jpg','景点地址6','门票价格6',6,6,'2021-01-29','备注6','用户名6','姓名6','手机6','身份证6','是','','未支付'),(1611922895071,'2021-01-29 12:21:34','景点名称1','海滨风景区','http://localhost:8080/ssm99ipc/upload/1611922448423.jpg','景点地址1','66',2,132,'2021-02-06','','666','小李','16459878981','654598789812654512','是','收到订单','已支付');
/*!40000 ALTER TABLE `menpiaoyuding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='旅游资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-01-29 12:04:38','济南古迹众多，为何没有像杭州一样成为旅游胜地？','济南和杭州都是历史文明名城，一个有天下第一泉趵突泉、一个有天下第三泉虎跑泉；一个有大明湖，一个有西湖。','http://localhost:8080/ssm99ipc/upload/1611922715189.jpg','<p class=\"ql-align-justify\">然而，来济南旅游的人，却远不及去杭州旅游的人多。</p><p class=\"ql-align-justify\">以2017年为例，济南旅游人次为72480.000千人次，而去杭州旅游的人则高达158844.000千人次，两者相差一倍还要多。</p><p class=\"ql-align-justify\"><img src=\"http://localhost:8080/ssm99ipc/upload/1611922767354.jpg\"></p>'),(102,'2021-01-29 12:04:38','省文化和旅游厅与济南市对“济南地铁4号线涉文物许可”组织跨层级联合会审','1月28日上午，省文化和旅游厅与济南市行政审批服务局联合组织文物保护专家，对济南轨道交通4号线一期工程文物保护许可事项进行跨层级联合会审。','http://localhost:8080/ssm99ipc/upload/1611922737834.jpg','<p class=\"ql-align-justify\">济南轨道交通4号线一期工程项目是济南市轨道交通线网中贯穿主城区东西的骨干线。该工程涉及省级文物保护单位2处、市级文物保护单位1处、县级文物保护单位1处、地下文物保护区1处，按照审批权限，须国家文物局、山东省文化和旅游厅、济南市行政审批服务局分级审批。</p><p class=\"ql-align-justify\">为体现便民服务，优化审批流程，提高审批效率，省文化和旅游厅将涉及多层级的建设工程文物保护许可事项进行业务整合，确定了分级办理、联合会审的审批方式，与济南市行政审批服务局共同组织了济南轨道交通4号线一期工程项目专家评审，首次实现了联合会审，受到了与会专家、办事企业的一致好评。</p><p><br></p>'),(103,'2021-01-29 12:04:38','济南旅游学校 家长送锦旗答谢师恩','　本报讯 近日，济南旅游学校的两位学生及其家长送来了“爱生如子 德才兼顾”的锦旗。校长吕凌云向家长热情介绍学校的培养举措，并勉励学生树立更高远的目标，以优秀校友为榜样，追求高学历高技能高素养。','http://localhost:8080/ssm99ipc/upload/1611922755580.jpg','<p><span style=\"background-color: rgb(255, 255, 255);\">　两位学生是来自2018级酒店班的王嘉硕和李贝宁同学，两人联袂参加了2019年山东省职业院校技能大赛酒店赛项的比赛并荣获一等奖，晋级全国大赛进而荣膺国家级三等奖，最近还先后荣获了国家级奖学金。李贝宁的爸爸以及王嘉硕的妈妈对孩子的变化、对学校的教育赞不绝口，家校一致肯定学生的形象气质、精神面貌都在发生着可喜变化。</span></p>'),(104,'2021-01-29 12:04:38','泉城济南旅游 不可错过的经典鲁菜','鲁菜起源于山东的齐鲁风味，是中国传统四大菜系(也是八大菜系)中唯一的自发型菜系 ，是历史最悠久、技法最丰富、难度最高、最见功力的菜系。来济南','http://localhost:8080/ssm99ipc/upload/1611922783073.jpeg','<p><img src=\"http://localhost:8080/ssm99ipc/upload/1611922786513.jpeg\"></p><p class=\"ql-align-justify\">在济南市中区经五路59号大观园北门，坐落一家城南往事济南风味主题餐厅，餐厅装潢漂亮，布局典雅，具有浓厚的中国古典风味。</p><p class=\"ql-align-justify\">济南的大观园美食城，进入这个门步行几米就是城南往事济南风味主题餐厅。</p><p><br></p>'),(105,'2021-01-29 12:04:38','标题5','简介5','http://localhost:8080/ssm99ipc/upload/news_picture5.jpg','内容5'),(106,'2021-01-29 12:04:38','标题6','简介6','http://localhost:8080/ssm99ipc/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611922866146 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1611922866145,'2021-01-29 12:21:05',1611922844464,21,'jingdianxinxi','景点名称1','http://localhost:8080/ssm99ipc/upload/1611922448423.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tesemeishi`
--

DROP TABLE IF EXISTS `tesemeishi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tesemeishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meishimingcheng` varchar(200) NOT NULL COMMENT '美食名称',
  `meishileixing` varchar(200) NOT NULL COMMENT '美食类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `dakadidian` varchar(200) DEFAULT NULL COMMENT '打卡地点',
  `renjunxiaofei` varchar(200) DEFAULT NULL COMMENT '人均消费',
  `meishijieshao` longtext COMMENT '美食介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='特色美食';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tesemeishi`
--

LOCK TABLES `tesemeishi` WRITE;
/*!40000 ALTER TABLE `tesemeishi` DISABLE KEYS */;
INSERT INTO `tesemeishi` VALUES (41,'2021-01-29 12:04:38','美食名称1','美食类型1','http://localhost:8080/ssm99ipc/upload/tesemeishi_tupian1.jpg','打卡地点1','人均消费1','美食介绍1'),(42,'2021-01-29 12:04:38','美食名称2','美食类型2','http://localhost:8080/ssm99ipc/upload/tesemeishi_tupian2.jpg','打卡地点2','人均消费2','美食介绍2'),(43,'2021-01-29 12:04:38','美食名称3','美食类型3','http://localhost:8080/ssm99ipc/upload/tesemeishi_tupian3.jpg','打卡地点3','人均消费3','美食介绍3'),(44,'2021-01-29 12:04:38','美食名称4','美食类型4','http://localhost:8080/ssm99ipc/upload/tesemeishi_tupian4.jpg','打卡地点4','人均消费4','美食介绍4'),(45,'2021-01-29 12:04:38','美食名称5','美食类型5','http://localhost:8080/ssm99ipc/upload/tesemeishi_tupian5.jpg','打卡地点5','人均消费5','美食介绍5'),(46,'2021-01-29 12:04:38','美食名称6','美食类型6','http://localhost:8080/ssm99ipc/upload/tesemeishi_tupian6.jpg','打卡地点6','人均消费6','美食介绍6');
/*!40000 ALTER TABLE `tesemeishi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','4o0het17tulyh3xnbu3idgl5oaj5k8md','2021-01-29 12:12:50','2021-01-29 13:26:41'),(2,1611922844464,'666','yonghu','用户','pg3cinb3rwkq86fij67tiv0yztdqkgw1','2021-01-29 12:20:48','2021-01-29 13:26:58');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-29 12:04:38'),(2,'000','000','管理员','2021-01-29 12:25:24');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1611922844465 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (51,'2021-01-29 12:04:38','用户1','123456','姓名1','男','http://localhost:8080/ssm99ipc/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com','440300199101010001'),(52,'2021-01-29 12:04:38','用户2','123456','姓名2','男','http://localhost:8080/ssm99ipc/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com','440300199202020002'),(53,'2021-01-29 12:04:38','用户3','123456','姓名3','男','http://localhost:8080/ssm99ipc/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com','440300199303030003'),(54,'2021-01-29 12:04:38','用户4','123456','姓名4','男','http://localhost:8080/ssm99ipc/upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com','440300199404040004'),(56,'2021-01-29 12:04:38','用户6','123456','姓名6','男','http://localhost:8080/ssm99ipc/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com','440300199606060006'),(1611922844464,'2021-01-29 12:20:44','666','666','小李','男','http://localhost:8080/ssm99ipc/upload/1611922852033.jpg','16459878983','132@123.com','654598789812654512');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-30 14:42:18
