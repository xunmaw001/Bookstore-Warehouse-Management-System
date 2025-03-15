-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm1mh8m
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
-- Table structure for table `chuhuoxinxi`
--

DROP TABLE IF EXISTS `chuhuoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chuhuoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chuhuobianhao` varchar(200) DEFAULT NULL COMMENT '出货编号',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) NOT NULL COMMENT '图书名称',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tushubianhao` (`tushubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611913038620 DEFAULT CHARSET=utf8 COMMENT='出货信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chuhuoxinxi`
--

LOCK TABLES `chuhuoxinxi` WRITE;
/*!40000 ALTER TABLE `chuhuoxinxi` DISABLE KEYS */;
INSERT INTO `chuhuoxinxi` VALUES (61,'2021-01-29 09:29:34','出货编号1','图书编号1','图书名称1',1,'员工工号1','员工姓名1','备注1'),(62,'2021-01-29 09:29:34','出货编号2','图书编号2','图书名称2',2,'员工工号2','员工姓名2','备注2'),(63,'2021-01-29 09:29:34','出货编号3','图书编号3','图书名称3',3,'员工工号3','员工姓名3','备注3'),(64,'2021-01-29 09:29:34','出货编号4','图书编号4','图书名称4',4,'员工工号4','员工姓名4','备注4'),(65,'2021-01-29 09:29:34','出货编号5','图书编号5','图书名称5',5,'员工工号5','员工姓名5','备注5'),(66,'2021-01-29 09:29:34','出货编号6','图书编号6','图书名称6',6,'员工工号6','员工姓名6','备注6'),(1611913038619,'2021-01-29 09:37:18','596565656','1611913140','科学管理',3,'123','胡月','<p>进货以后数量会增加。。出库以后数量会减少</p>');
/*!40000 ALTER TABLE `chuhuoxinxi` ENABLE KEYS */;
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm1mh8m/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspm1mh8m/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspm1mh8m/upload/picture3.jpg'),(6,'homepage','http://localhost:8080/jspm1mh8m/upload/1611912920435.png');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongyingshang`
--

DROP TABLE IF EXISTS `gongyingshang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongyingshang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyingshangbianhao` varchar(200) DEFAULT NULL COMMENT '供应商编号',
  `gongyingshangmingcheng` varchar(200) NOT NULL COMMENT '供应商名称',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `fuzerenxingming` varchar(200) NOT NULL COMMENT '负责人姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `qiyefengmian` varchar(200) DEFAULT NULL COMMENT '企业封面',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gongyingshangbianhao` (`gongyingshangbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611912855456 DEFAULT CHARSET=utf8 COMMENT='供应商';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongyingshang`
--

LOCK TABLES `gongyingshang` WRITE;
/*!40000 ALTER TABLE `gongyingshang` DISABLE KEYS */;
INSERT INTO `gongyingshang` VALUES (41,'2021-01-29 09:29:34','供应商编号1','供应商名称1','地址1','联系电话1','负责人姓名1','联系方式1','http://localhost:8080/jspm1mh8m/upload/gongyingshang_qiyefengmian1.jpg'),(42,'2021-01-29 09:29:34','供应商编号2','供应商名称2','地址2','联系电话2','负责人姓名2','联系方式2','http://localhost:8080/jspm1mh8m/upload/gongyingshang_qiyefengmian2.jpg'),(43,'2021-01-29 09:29:34','供应商编号3','供应商名称3','地址3','联系电话3','负责人姓名3','联系方式3','http://localhost:8080/jspm1mh8m/upload/gongyingshang_qiyefengmian3.jpg'),(44,'2021-01-29 09:29:34','供应商编号4','供应商名称4','地址4','联系电话4','负责人姓名4','联系方式4','http://localhost:8080/jspm1mh8m/upload/gongyingshang_qiyefengmian4.jpg'),(45,'2021-01-29 09:29:34','供应商编号5','供应商名称5','地址5','联系电话5','负责人姓名5','联系方式5','http://localhost:8080/jspm1mh8m/upload/gongyingshang_qiyefengmian5.jpg'),(46,'2021-01-29 09:29:34','供应商编号6','供应商名称6','地址6','联系电话6','负责人姓名6','联系方式6','http://localhost:8080/jspm1mh8m/upload/gongyingshang_qiyefengmian6.jpg'),(1611912855455,'2021-01-29 09:34:15','1611913238','李月','意境花园','13613613611','胡继','13613613633','http://localhost:8080/jspm1mh8m/upload/1611912853338.jpg');
/*!40000 ALTER TABLE `gongyingshang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jinhuoxinxi`
--

DROP TABLE IF EXISTS `jinhuoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jinhuoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jinhuobianhao` varchar(200) DEFAULT NULL COMMENT '进货编号',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) NOT NULL COMMENT '图书名称',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tushubianhao` (`tushubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611913024317 DEFAULT CHARSET=utf8 COMMENT='进货信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jinhuoxinxi`
--

LOCK TABLES `jinhuoxinxi` WRITE;
/*!40000 ALTER TABLE `jinhuoxinxi` DISABLE KEYS */;
INSERT INTO `jinhuoxinxi` VALUES (51,'2021-01-29 09:29:34','进货编号1','图书编号1','图书名称1',1,'员工工号1','员工姓名1','备注1'),(52,'2021-01-29 09:29:34','进货编号2','图书编号2','图书名称2',2,'员工工号2','员工姓名2','备注2'),(53,'2021-01-29 09:29:34','进货编号3','图书编号3','图书名称3',3,'员工工号3','员工姓名3','备注3'),(54,'2021-01-29 09:29:34','进货编号4','图书编号4','图书名称4',4,'员工工号4','员工姓名4','备注4'),(55,'2021-01-29 09:29:34','进货编号5','图书编号5','图书名称5',5,'员工工号5','员工姓名5','备注5'),(56,'2021-01-29 09:29:34','进货编号6','图书编号6','图书名称6',6,'员工工号6','员工姓名6','备注6'),(1611913024316,'2021-01-29 09:37:03','2656565656','1611913140','科学管理',5,'123','胡月','<p>进货以后数量会增加。。出库以后数量会减少</p>');
/*!40000 ALTER TABLE `jinhuoxinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1611912906675 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (81,'2021-01-29 09:29:34','标题1','简介1','http://localhost:8080/jspm1mh8m/upload/news_picture1.jpg','内容1'),(82,'2021-01-29 09:29:34','标题2','简介2','http://localhost:8080/jspm1mh8m/upload/news_picture2.jpg','内容2'),(83,'2021-01-29 09:29:34','标题3','简介3','http://localhost:8080/jspm1mh8m/upload/news_picture3.jpg','内容3'),(84,'2021-01-29 09:29:34','标题4','简介4','http://localhost:8080/jspm1mh8m/upload/news_picture4.jpg','内容4'),(85,'2021-01-29 09:29:34','标题5','简介5','http://localhost:8080/jspm1mh8m/upload/news_picture5.jpg','内容5'),(86,'2021-01-29 09:29:34','标题6','简介6','http://localhost:8080/jspm1mh8m/upload/news_picture6.jpg','内容6'),(1611912906674,'2021-01-29 09:35:06','最新资讯',' 啊沙发上范德萨范德萨范德萨范德萨\r\n发士大夫十大法撒旦','http://localhost:8080/jspm1mh8m/upload/1611912890930.jpg','范德萨范德萨范德萨范德萨f发sdafds\r\n发士大夫的撒范德萨范德萨\r\n 发大水发的萨芬的撒<img src=\"http://localhost:8080/jspm1mh8m/upload/1611912904626.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm1mh8m/upload/1611912904626.jpg\">\r\n');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sunhuaishangbao`
--

DROP TABLE IF EXISTS `sunhuaishangbao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sunhuaishangbao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `qingkuangshuoming` longtext COMMENT '情况说明',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611913115719 DEFAULT CHARSET=utf8 COMMENT='损坏上报';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sunhuaishangbao`
--

LOCK TABLES `sunhuaishangbao` WRITE;
/*!40000 ALTER TABLE `sunhuaishangbao` DISABLE KEYS */;
INSERT INTO `sunhuaishangbao` VALUES (71,'2021-01-29 09:29:34','图书编号1','图书名称1','员工工号1','员工姓名1','2021-01-29 17:29:34','情况说明1','是',''),(72,'2021-01-29 09:29:34','图书编号2','图书名称2','员工工号2','员工姓名2','2021-01-29 17:29:34','情况说明2','是',''),(73,'2021-01-29 09:29:34','图书编号3','图书名称3','员工工号3','员工姓名3','2021-01-29 17:29:34','情况说明3','是',''),(74,'2021-01-29 09:29:34','图书编号4','图书名称4','员工工号4','员工姓名4','2021-01-29 17:29:34','情况说明4','是',''),(75,'2021-01-29 09:29:34','图书编号5','图书名称5','员工工号5','员工姓名5','2021-01-29 17:29:34','情况说明5','是',''),(76,'2021-01-29 09:29:34','图书编号6','图书名称6','员工工号6','员工姓名6','2021-01-29 17:29:34','情况说明6','是',''),(1611913115718,'2021-01-29 09:38:35','656956566','剑圣','123','胡月','2021-02-06 22:35:05','电费的撒范德萨范德萨范德萨法撒旦fsdfds\r\n范德萨法撒旦法撒旦法撒旦发射点发射点犯得上\r\n范德萨啊范德萨发的萨芬士大夫撒旦\r\n','是','11111');
/*!40000 ALTER TABLE `sunhuaishangbao` ENABLE KEYS */;
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
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','qx3cmfrnjxxqf26anwb2wb9we37gzvwm','2021-01-29 09:30:36','2021-01-29 10:38:56'),(2,1611912693074,'123','yuangong','员工','rmjvrygauys1fwar21e974vwfpl7sv0y','2021-01-29 09:35:40','2021-01-29 10:39:21');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushufenlei`
--

DROP TABLE IF EXISTS `tushufenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushufenlei` varchar(200) NOT NULL COMMENT '图书分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tushufenlei` (`tushufenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1611912712846 DEFAULT CHARSET=utf8 COMMENT='图书分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushufenlei`
--

LOCK TABLES `tushufenlei` WRITE;
/*!40000 ALTER TABLE `tushufenlei` DISABLE KEYS */;
INSERT INTO `tushufenlei` VALUES (21,'2021-01-29 09:29:34','图书分类1'),(22,'2021-01-29 09:29:34','图书分类2'),(23,'2021-01-29 09:29:34','图书分类3'),(24,'2021-01-29 09:29:34','图书分类4'),(25,'2021-01-29 09:29:34','图书分类5'),(26,'2021-01-29 09:29:34','图书分类6'),(1611912704157,'2021-01-29 09:31:43','科学'),(1611912712845,'2021-01-29 09:31:52','童话');
/*!40000 ALTER TABLE `tushufenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushuxinxi`
--

DROP TABLE IF EXISTS `tushuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) NOT NULL COMMENT '图书名称',
  `tushufenlei` varchar(200) DEFAULT NULL COMMENT '图书分类',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `xiangqing` longtext COMMENT '详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tushubianhao` (`tushubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611912810673 DEFAULT CHARSET=utf8 COMMENT='图书信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushuxinxi`
--

LOCK TABLES `tushuxinxi` WRITE;
/*!40000 ALTER TABLE `tushuxinxi` DISABLE KEYS */;
INSERT INTO `tushuxinxi` VALUES (31,'2021-01-29 09:29:34','图书编号1','图书名称1','图书分类1',1,'http://localhost:8080/jspm1mh8m/upload/tushuxinxi_tupian1.jpg','作者1','出版社1','详情1'),(32,'2021-01-29 09:29:34','图书编号2','图书名称2','图书分类2',2,'http://localhost:8080/jspm1mh8m/upload/tushuxinxi_tupian2.jpg','作者2','出版社2','详情2'),(33,'2021-01-29 09:29:34','图书编号3','图书名称3','图书分类3',3,'http://localhost:8080/jspm1mh8m/upload/tushuxinxi_tupian3.jpg','作者3','出版社3','详情3'),(34,'2021-01-29 09:29:34','图书编号4','图书名称4','图书分类4',4,'http://localhost:8080/jspm1mh8m/upload/tushuxinxi_tupian4.jpg','作者4','出版社4','详情4'),(35,'2021-01-29 09:29:34','图书编号5','图书名称5','图书分类5',5,'http://localhost:8080/jspm1mh8m/upload/tushuxinxi_tupian5.jpg','作者5','出版社5','详情5'),(36,'2021-01-29 09:29:34','图书编号6','图书名称6','图书分类6',6,'http://localhost:8080/jspm1mh8m/upload/tushuxinxi_tupian6.jpg','作者6','出版社6','详情6'),(1611912810672,'2021-01-29 09:33:29','1611913140','科学管理','科学',22,'http://localhost:8080/jspm1mh8m/upload/1611912758871.jpg','李艺彤','咦哟出版社','发的啥发的啥法撒旦发大水发读书法撒旦范德萨范德萨<img src=\"http://localhost:8080/jspm1mh8m/upload/1611912808243.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm1mh8m/upload/1611912808243.jpg\">\r\n');
/*!40000 ALTER TABLE `tushuxinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-29 09:29:34');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangong`
--

DROP TABLE IF EXISTS `yuangong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611912693075 DEFAULT CHARSET=utf8 COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (11,'2021-01-29 09:29:34','员工1','员工姓名1','123456','部门1','男','13823888881','773890001@qq.com','440300199101010001','家庭住址1'),(12,'2021-01-29 09:29:34','员工2','员工姓名2','123456','部门2','男','13823888882','773890002@qq.com','440300199202020002','家庭住址2'),(13,'2021-01-29 09:29:34','员工3','员工姓名3','123456','部门3','男','13823888883','773890003@qq.com','440300199303030003','家庭住址3'),(14,'2021-01-29 09:29:34','员工4','员工姓名4','123456','部门4','男','13823888884','773890004@qq.com','440300199404040004','家庭住址4'),(15,'2021-01-29 09:29:34','员工5','员工姓名5','123456','部门5','男','13823888885','773890005@qq.com','440300199505050005','家庭住址5'),(16,'2021-01-29 09:29:34','员工6','员工姓名6','123456','部门6','男','13823888886','773890006@qq.com','440300199606060006','家庭住址6'),(1611912693074,'2021-01-29 09:31:33','123','胡月','123','仓库部','女','13613613633','23232565@qq.com','123456789789789','赴京花园');
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-01 14:38:57
