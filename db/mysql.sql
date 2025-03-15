DROP DATABASE IF EXISTS jspm1mh8m;

CREATE DATABASE jspm1mh8m default character set utf8mb4 collate utf8mb4_general_ci;

USE jspm1mh8m;

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`yuangonggonghao` varchar(200)  UNIQUE   COMMENT '员工工号',
	`yuangongxingming` varchar(200)    COMMENT '员工姓名',
	`mima` varchar(200)    COMMENT '密码',
	`bumen` varchar(200)    COMMENT '部门',
	`xingbie` varchar(200)    COMMENT '性别',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`youxiang` varchar(200)    COMMENT '邮箱',
	`shenfenzheng` varchar(200)    COMMENT '身份证',
	`jiatingzhuzhi` varchar(200)    COMMENT '家庭住址',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工';

INSERT INTO yuangong(id,yuangonggonghao,yuangongxingming,mima,bumen,xingbie,lianxidianhua,youxiang,shenfenzheng,jiatingzhuzhi) VALUES(11,'员工1','员工姓名1','123456','部门1','男','13823888881','773890001@qq.com','440300199101010001','家庭住址1');
INSERT INTO yuangong(id,yuangonggonghao,yuangongxingming,mima,bumen,xingbie,lianxidianhua,youxiang,shenfenzheng,jiatingzhuzhi) VALUES(12,'员工2','员工姓名2','123456','部门2','男','13823888882','773890002@qq.com','440300199202020002','家庭住址2');
INSERT INTO yuangong(id,yuangonggonghao,yuangongxingming,mima,bumen,xingbie,lianxidianhua,youxiang,shenfenzheng,jiatingzhuzhi) VALUES(13,'员工3','员工姓名3','123456','部门3','男','13823888883','773890003@qq.com','440300199303030003','家庭住址3');
INSERT INTO yuangong(id,yuangonggonghao,yuangongxingming,mima,bumen,xingbie,lianxidianhua,youxiang,shenfenzheng,jiatingzhuzhi) VALUES(14,'员工4','员工姓名4','123456','部门4','男','13823888884','773890004@qq.com','440300199404040004','家庭住址4');
INSERT INTO yuangong(id,yuangonggonghao,yuangongxingming,mima,bumen,xingbie,lianxidianhua,youxiang,shenfenzheng,jiatingzhuzhi) VALUES(15,'员工5','员工姓名5','123456','部门5','男','13823888885','773890005@qq.com','440300199505050005','家庭住址5');
INSERT INTO yuangong(id,yuangonggonghao,yuangongxingming,mima,bumen,xingbie,lianxidianhua,youxiang,shenfenzheng,jiatingzhuzhi) VALUES(16,'员工6','员工姓名6','123456','部门6','男','13823888886','773890006@qq.com','440300199606060006','家庭住址6');

DROP TABLE IF EXISTS `tushufenlei`;

CREATE TABLE `tushufenlei` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`tushufenlei` varchar(200) NOT NULL UNIQUE   COMMENT '图书分类',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图书分类';

INSERT INTO tushufenlei(id,tushufenlei) VALUES(21,'图书分类1');
INSERT INTO tushufenlei(id,tushufenlei) VALUES(22,'图书分类2');
INSERT INTO tushufenlei(id,tushufenlei) VALUES(23,'图书分类3');
INSERT INTO tushufenlei(id,tushufenlei) VALUES(24,'图书分类4');
INSERT INTO tushufenlei(id,tushufenlei) VALUES(25,'图书分类5');
INSERT INTO tushufenlei(id,tushufenlei) VALUES(26,'图书分类6');

DROP TABLE IF EXISTS `tushuxinxi`;

CREATE TABLE `tushuxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`tushubianhao` varchar(200)  UNIQUE   COMMENT '图书编号',
	`tushumingcheng` varchar(200) NOT NULL   COMMENT '图书名称',
	`tushufenlei` varchar(200)    COMMENT '图书分类',
	`shuliang` int    COMMENT '数量',
	`tupian` varchar(200)    COMMENT '图片',
	`zuozhe` varchar(200)    COMMENT '作者',
	`chubanshe` varchar(200)    COMMENT '出版社',
	`xiangqing` longtext    COMMENT '详情',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图书信息';

INSERT INTO tushuxinxi(id,tushubianhao,tushumingcheng,tushufenlei,shuliang,tupian,zuozhe,chubanshe,xiangqing) VALUES(31,'图书编号1','图书名称1','图书分类1',1,'http://localhost:8080/jspm1mh8m/upload/tushuxinxi_tupian1.jpg','作者1','出版社1','详情1');
INSERT INTO tushuxinxi(id,tushubianhao,tushumingcheng,tushufenlei,shuliang,tupian,zuozhe,chubanshe,xiangqing) VALUES(32,'图书编号2','图书名称2','图书分类2',2,'http://localhost:8080/jspm1mh8m/upload/tushuxinxi_tupian2.jpg','作者2','出版社2','详情2');
INSERT INTO tushuxinxi(id,tushubianhao,tushumingcheng,tushufenlei,shuliang,tupian,zuozhe,chubanshe,xiangqing) VALUES(33,'图书编号3','图书名称3','图书分类3',3,'http://localhost:8080/jspm1mh8m/upload/tushuxinxi_tupian3.jpg','作者3','出版社3','详情3');
INSERT INTO tushuxinxi(id,tushubianhao,tushumingcheng,tushufenlei,shuliang,tupian,zuozhe,chubanshe,xiangqing) VALUES(34,'图书编号4','图书名称4','图书分类4',4,'http://localhost:8080/jspm1mh8m/upload/tushuxinxi_tupian4.jpg','作者4','出版社4','详情4');
INSERT INTO tushuxinxi(id,tushubianhao,tushumingcheng,tushufenlei,shuliang,tupian,zuozhe,chubanshe,xiangqing) VALUES(35,'图书编号5','图书名称5','图书分类5',5,'http://localhost:8080/jspm1mh8m/upload/tushuxinxi_tupian5.jpg','作者5','出版社5','详情5');
INSERT INTO tushuxinxi(id,tushubianhao,tushumingcheng,tushufenlei,shuliang,tupian,zuozhe,chubanshe,xiangqing) VALUES(36,'图书编号6','图书名称6','图书分类6',6,'http://localhost:8080/jspm1mh8m/upload/tushuxinxi_tupian6.jpg','作者6','出版社6','详情6');

DROP TABLE IF EXISTS `gongyingshang`;

CREATE TABLE `gongyingshang` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`gongyingshangbianhao` varchar(200)  UNIQUE   COMMENT '供应商编号',
	`gongyingshangmingcheng` varchar(200) NOT NULL   COMMENT '供应商名称',
	`dizhi` varchar(200)    COMMENT '地址',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`fuzerenxingming` varchar(200) NOT NULL   COMMENT '负责人姓名',
	`lianxifangshi` varchar(200)    COMMENT '联系方式',
	`qiyefengmian` varchar(200)    COMMENT '企业封面',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商';

INSERT INTO gongyingshang(id,gongyingshangbianhao,gongyingshangmingcheng,dizhi,lianxidianhua,fuzerenxingming,lianxifangshi,qiyefengmian) VALUES(41,'供应商编号1','供应商名称1','地址1','联系电话1','负责人姓名1','联系方式1','http://localhost:8080/jspm1mh8m/upload/gongyingshang_qiyefengmian1.jpg');
INSERT INTO gongyingshang(id,gongyingshangbianhao,gongyingshangmingcheng,dizhi,lianxidianhua,fuzerenxingming,lianxifangshi,qiyefengmian) VALUES(42,'供应商编号2','供应商名称2','地址2','联系电话2','负责人姓名2','联系方式2','http://localhost:8080/jspm1mh8m/upload/gongyingshang_qiyefengmian2.jpg');
INSERT INTO gongyingshang(id,gongyingshangbianhao,gongyingshangmingcheng,dizhi,lianxidianhua,fuzerenxingming,lianxifangshi,qiyefengmian) VALUES(43,'供应商编号3','供应商名称3','地址3','联系电话3','负责人姓名3','联系方式3','http://localhost:8080/jspm1mh8m/upload/gongyingshang_qiyefengmian3.jpg');
INSERT INTO gongyingshang(id,gongyingshangbianhao,gongyingshangmingcheng,dizhi,lianxidianhua,fuzerenxingming,lianxifangshi,qiyefengmian) VALUES(44,'供应商编号4','供应商名称4','地址4','联系电话4','负责人姓名4','联系方式4','http://localhost:8080/jspm1mh8m/upload/gongyingshang_qiyefengmian4.jpg');
INSERT INTO gongyingshang(id,gongyingshangbianhao,gongyingshangmingcheng,dizhi,lianxidianhua,fuzerenxingming,lianxifangshi,qiyefengmian) VALUES(45,'供应商编号5','供应商名称5','地址5','联系电话5','负责人姓名5','联系方式5','http://localhost:8080/jspm1mh8m/upload/gongyingshang_qiyefengmian5.jpg');
INSERT INTO gongyingshang(id,gongyingshangbianhao,gongyingshangmingcheng,dizhi,lianxidianhua,fuzerenxingming,lianxifangshi,qiyefengmian) VALUES(46,'供应商编号6','供应商名称6','地址6','联系电话6','负责人姓名6','联系方式6','http://localhost:8080/jspm1mh8m/upload/gongyingshang_qiyefengmian6.jpg');

DROP TABLE IF EXISTS `jinhuoxinxi`;

CREATE TABLE `jinhuoxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`jinhuobianhao` varchar(200)    COMMENT '进货编号',
	`tushubianhao` varchar(200)  UNIQUE   COMMENT '图书编号',
	`tushumingcheng` varchar(200) NOT NULL   COMMENT '图书名称',
	`shuliang` int    COMMENT '数量',
	`yuangonggonghao` varchar(200)    COMMENT '员工工号',
	`yuangongxingming` varchar(200)    COMMENT '员工姓名',
	`beizhu` longtext    COMMENT '备注',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='进货信息';

INSERT INTO jinhuoxinxi(id,jinhuobianhao,tushubianhao,tushumingcheng,shuliang,yuangonggonghao,yuangongxingming,beizhu) VALUES(51,'进货编号1','图书编号1','图书名称1',1,'员工工号1','员工姓名1','备注1');
INSERT INTO jinhuoxinxi(id,jinhuobianhao,tushubianhao,tushumingcheng,shuliang,yuangonggonghao,yuangongxingming,beizhu) VALUES(52,'进货编号2','图书编号2','图书名称2',2,'员工工号2','员工姓名2','备注2');
INSERT INTO jinhuoxinxi(id,jinhuobianhao,tushubianhao,tushumingcheng,shuliang,yuangonggonghao,yuangongxingming,beizhu) VALUES(53,'进货编号3','图书编号3','图书名称3',3,'员工工号3','员工姓名3','备注3');
INSERT INTO jinhuoxinxi(id,jinhuobianhao,tushubianhao,tushumingcheng,shuliang,yuangonggonghao,yuangongxingming,beizhu) VALUES(54,'进货编号4','图书编号4','图书名称4',4,'员工工号4','员工姓名4','备注4');
INSERT INTO jinhuoxinxi(id,jinhuobianhao,tushubianhao,tushumingcheng,shuliang,yuangonggonghao,yuangongxingming,beizhu) VALUES(55,'进货编号5','图书编号5','图书名称5',5,'员工工号5','员工姓名5','备注5');
INSERT INTO jinhuoxinxi(id,jinhuobianhao,tushubianhao,tushumingcheng,shuliang,yuangonggonghao,yuangongxingming,beizhu) VALUES(56,'进货编号6','图书编号6','图书名称6',6,'员工工号6','员工姓名6','备注6');

DROP TABLE IF EXISTS `chuhuoxinxi`;

CREATE TABLE `chuhuoxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`chuhuobianhao` varchar(200)    COMMENT '出货编号',
	`tushubianhao` varchar(200)  UNIQUE   COMMENT '图书编号',
	`tushumingcheng` varchar(200) NOT NULL   COMMENT '图书名称',
	`shuliang` int    COMMENT '数量',
	`yuangonggonghao` varchar(200)    COMMENT '员工工号',
	`yuangongxingming` varchar(200)    COMMENT '员工姓名',
	`beizhu` longtext    COMMENT '备注',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='出货信息';

INSERT INTO chuhuoxinxi(id,chuhuobianhao,tushubianhao,tushumingcheng,shuliang,yuangonggonghao,yuangongxingming,beizhu) VALUES(61,'出货编号1','图书编号1','图书名称1',1,'员工工号1','员工姓名1','备注1');
INSERT INTO chuhuoxinxi(id,chuhuobianhao,tushubianhao,tushumingcheng,shuliang,yuangonggonghao,yuangongxingming,beizhu) VALUES(62,'出货编号2','图书编号2','图书名称2',2,'员工工号2','员工姓名2','备注2');
INSERT INTO chuhuoxinxi(id,chuhuobianhao,tushubianhao,tushumingcheng,shuliang,yuangonggonghao,yuangongxingming,beizhu) VALUES(63,'出货编号3','图书编号3','图书名称3',3,'员工工号3','员工姓名3','备注3');
INSERT INTO chuhuoxinxi(id,chuhuobianhao,tushubianhao,tushumingcheng,shuliang,yuangonggonghao,yuangongxingming,beizhu) VALUES(64,'出货编号4','图书编号4','图书名称4',4,'员工工号4','员工姓名4','备注4');
INSERT INTO chuhuoxinxi(id,chuhuobianhao,tushubianhao,tushumingcheng,shuliang,yuangonggonghao,yuangongxingming,beizhu) VALUES(65,'出货编号5','图书编号5','图书名称5',5,'员工工号5','员工姓名5','备注5');
INSERT INTO chuhuoxinxi(id,chuhuobianhao,tushubianhao,tushumingcheng,shuliang,yuangonggonghao,yuangongxingming,beizhu) VALUES(66,'出货编号6','图书编号6','图书名称6',6,'员工工号6','员工姓名6','备注6');

DROP TABLE IF EXISTS `sunhuaishangbao`;

CREATE TABLE `sunhuaishangbao` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`tushubianhao` varchar(200)    COMMENT '图书编号',
	`tushumingcheng` varchar(200)    COMMENT '图书名称',
	`yuangonggonghao` varchar(200)    COMMENT '员工工号',
	`yuangongxingming` varchar(200)    COMMENT '员工姓名',
	`dengjishijian` datetime    COMMENT '登记时间',
	`qingkuangshuoming` longtext    COMMENT '情况说明',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='损坏上报';

INSERT INTO sunhuaishangbao(id,tushubianhao,tushumingcheng,yuangonggonghao,yuangongxingming,dengjishijian,qingkuangshuoming,sfsh,shhf) VALUES(71,'图书编号1','图书名称1','员工工号1','员工姓名1',CURRENT_TIMESTAMP,'情况说明1','是','');
INSERT INTO sunhuaishangbao(id,tushubianhao,tushumingcheng,yuangonggonghao,yuangongxingming,dengjishijian,qingkuangshuoming,sfsh,shhf) VALUES(72,'图书编号2','图书名称2','员工工号2','员工姓名2',CURRENT_TIMESTAMP,'情况说明2','是','');
INSERT INTO sunhuaishangbao(id,tushubianhao,tushumingcheng,yuangonggonghao,yuangongxingming,dengjishijian,qingkuangshuoming,sfsh,shhf) VALUES(73,'图书编号3','图书名称3','员工工号3','员工姓名3',CURRENT_TIMESTAMP,'情况说明3','是','');
INSERT INTO sunhuaishangbao(id,tushubianhao,tushumingcheng,yuangonggonghao,yuangongxingming,dengjishijian,qingkuangshuoming,sfsh,shhf) VALUES(74,'图书编号4','图书名称4','员工工号4','员工姓名4',CURRENT_TIMESTAMP,'情况说明4','是','');
INSERT INTO sunhuaishangbao(id,tushubianhao,tushumingcheng,yuangonggonghao,yuangongxingming,dengjishijian,qingkuangshuoming,sfsh,shhf) VALUES(75,'图书编号5','图书名称5','员工工号5','员工姓名5',CURRENT_TIMESTAMP,'情况说明5','是','');
INSERT INTO sunhuaishangbao(id,tushubianhao,tushumingcheng,yuangonggonghao,yuangongxingming,dengjishijian,qingkuangshuoming,sfsh,shhf) VALUES(76,'图书编号6','图书名称6','员工工号6','员工姓名6',CURRENT_TIMESTAMP,'情况说明6','是','');

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`title` varchar(200) NOT NULL   COMMENT '标题',
	`introduction` longtext    COMMENT '简介',
	`picture` varchar(200) NOT NULL   COMMENT '图片',
	`content` longtext NOT NULL   COMMENT '内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统公告';

INSERT INTO news(id,title,introduction,picture,content) VALUES(81,'标题1','简介1','http://localhost:8080/jspm1mh8m/upload/news_picture1.jpg','内容1');
INSERT INTO news(id,title,introduction,picture,content) VALUES(82,'标题2','简介2','http://localhost:8080/jspm1mh8m/upload/news_picture2.jpg','内容2');
INSERT INTO news(id,title,introduction,picture,content) VALUES(83,'标题3','简介3','http://localhost:8080/jspm1mh8m/upload/news_picture3.jpg','内容3');
INSERT INTO news(id,title,introduction,picture,content) VALUES(84,'标题4','简介4','http://localhost:8080/jspm1mh8m/upload/news_picture4.jpg','内容4');
INSERT INTO news(id,title,introduction,picture,content) VALUES(85,'标题5','简介5','http://localhost:8080/jspm1mh8m/upload/news_picture5.jpg','内容5');
INSERT INTO news(id,title,introduction,picture,content) VALUES(86,'标题6','简介6','http://localhost:8080/jspm1mh8m/upload/news_picture6.jpg','内容6');


DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name,value) values(1,'picture1','http://localhost:8080/jspm1mh8m/upload/picture1.jpg');
insert into config(id,name,value) values(2,'picture2','http://localhost:8080/jspm1mh8m/upload/picture2.jpg');
insert into config(id,name,value) values(3,'picture3','http://localhost:8080/jspm1mh8m/upload/picture3.jpg');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

