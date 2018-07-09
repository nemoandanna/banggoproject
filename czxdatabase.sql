-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.5.5-10.0.14-MariaDB - mariadb.org binary distribution
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 database 的数据库结构
DROP DATABASE IF EXISTS `database`;
CREATE DATABASE IF NOT EXISTS `database` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `database`;


-- 导出  表 database.buycar 结构
DROP TABLE IF EXISTS `buycar`;
CREATE TABLE IF NOT EXISTS `buycar` (
  `indexid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_bin DEFAULT '0',
  `shopid` varchar(50) COLLATE utf8_bin DEFAULT '0',
  `shopnumber` varchar(50) COLLATE utf8_bin DEFAULT '0',
  `clothscolor` varchar(50) COLLATE utf8_bin DEFAULT '0',
  `clothssize` varchar(50) COLLATE utf8_bin DEFAULT '0',
  `buybrand` varchar(50) COLLATE utf8_bin DEFAULT '0',
  `buystyle` varchar(50) COLLATE utf8_bin DEFAULT '0',
  `buyprice` varchar(50) COLLATE utf8_bin DEFAULT '0',
  PRIMARY KEY (`indexid`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  database.buycar 的数据：~10 rows (大约)
/*!40000 ALTER TABLE `buycar` DISABLE KEYS */;
REPLACE INTO `buycar` (`indexid`, `username`, `shopid`, `shopnumber`, `clothscolor`, `clothssize`, `buybrand`, `buystyle`, `buyprice`) VALUES
	(33, 'czx123123', '42', '1', '亮白色', '160/84A', '骊语', '外套女短箱格仔衬衫', '536'),
	(34, 'czx123123', '34', '1', '西瓜红色', '160/84A', '骊语', '女A型百搭可爱大衣', '143'),
	(35, 'czx123123', '31', '3', '亮白色', '160/84A', 'Canshow', '女式大廓形麻质衬衫', '996'),
	(36, 'czx123123', '38', '2', '西瓜红色', '155/80A', 'Haoduoyi', '女牛仔长裤潮撞色小脚裤子铅笔裤', '333'),
	(37, 'czx123123', '36', '4', '西瓜红色', '160/84A', '妮芬儿', '女摇滚拼接连帽长款夹克外套', '395'),
	(38, 'czx123123', '32', '3', '西瓜红色', '160/84A', 'ANMO', '女情侣基本款牛仔夹克', '175'),
	(39, 'czx123123', '39', '1', '西瓜红色', '160/84A', 'Canshow', '女时髦扩型衬衫', '66'),
	(69, 'nemo123', '38', '2', '西瓜红色', '165/88A', 'Haoduoyi', '女牛仔长裤潮撞色小脚裤子铅笔裤', '333'),
	(70, 'nemo123', '40', '1', '亮白色', '165/88A', 'ANMO', '女套头卫衣韩版灯笼袖长袖', '941'),
	(71, 'nemo123', '39', '1', '亮白色', '170/92A', 'Canshow', '女时髦扩型衬衫', '66');
/*!40000 ALTER TABLE `buycar` ENABLE KEYS */;


-- 导出  表 database.childcloths 结构
DROP TABLE IF EXISTS `childcloths`;
CREATE TABLE IF NOT EXISTS `childcloths` (
  `indexid` int(11) NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(50) COLLATE utf8_bin DEFAULT '0',
  `brand` varchar(50) COLLATE utf8_bin DEFAULT '0',
  `rebate` varchar(50) COLLATE utf8_bin DEFAULT '0',
  `clothsstyle` varchar(50) COLLATE utf8_bin DEFAULT '0',
  `sale` varchar(50) COLLATE utf8_bin DEFAULT '0',
  `price` varchar(50) COLLATE utf8_bin DEFAULT '0',
  `idx` int(11) DEFAULT NULL,
  PRIMARY KEY (`indexid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  database.childcloths 的数据：~9 rows (大约)
/*!40000 ALTER TABLE `childcloths` DISABLE KEYS */;
REPLACE INTO `childcloths` (`indexid`, `imgurl`, `brand`, `rebate`, `clothsstyle`, `sale`, `price`, `idx`) VALUES
	(1, 'img/child1.jpg', 'MOOMOOM', '4.3折', '【夏季新品】迪士尼男童基本款', '49.00', '199.00', 1),
	(2, 'img/child2.jpg', 'MOOMOOM', '4.3折', '【春季新品】男中童基础短袖T', '49.00', '199.00', 2),
	(3, 'img/child3.jpg', 'MOOMOOM', '2.3折', '男婴童多彩撞色针织开衫', '149.00', '299.00', 3),
	(4, 'img/child4.jpg', 'MOOMOOM', '3.3折', '女婴童针织牛仔马甲', '39.00', '199.00', 4),
	(5, 'img/child5.jpg', 'MOOMOOM', '6.3折', '男女婴童多彩卡通数字图案短袖款', '79.00', '199.00', 5),
	(6, 'img/child6.jpg', 'MOOMOOM', '4.3折', '【夏季新品】迪士尼男童基本款', '39.00', '99.00', 6),
	(7, 'img/child7.jpg', 'MOOMOOM', '7.3折', '【夏季新品】迪士尼男童漫威潮', '56.00', '199.00', 7),
	(8, 'img/child8.jpg', 'MOOMOOM', '1.3折', '【夏季新品】迪士尼男童针织裤', '49.00', '199.00', 8),
	(9, 'img/child9.jpg', 'MOOMOOM', '5.3折', '女童雪纺印条裙裤', '59.00', '159.00', 9);
/*!40000 ALTER TABLE `childcloths` ENABLE KEYS */;


-- 导出  表 database.girlcloths 结构
DROP TABLE IF EXISTS `girlcloths`;
CREATE TABLE IF NOT EXISTS `girlcloths` (
  `indexid` int(11) NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(50) COLLATE utf8_bin DEFAULT '0',
  `brand` varchar(50) COLLATE utf8_bin DEFAULT '0',
  `rebate` varchar(50) COLLATE utf8_bin DEFAULT '0',
  `clothsstyle` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `sale` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `price` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `idx` int(11) DEFAULT NULL,
  PRIMARY KEY (`indexid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  database.girlcloths 的数据：~9 rows (大约)
/*!40000 ALTER TABLE `girlcloths` DISABLE KEYS */;
REPLACE INTO `girlcloths` (`indexid`, `imgurl`, `brand`, `rebate`, `clothsstyle`, `sale`, `price`, `idx`) VALUES
	(1, 'girlcloths1.jpg', 'METERSBONWE', '3.3折', '【夏季新品】女时尚绑带绣花雪', '99.00', '299.00', 1),
	(2, 'girlcloths2.jpg', 'METERSBONWE', '3.5折', '【夏季新品】女可爱木耳边短袖', '49.00', '199.00', 2),
	(3, 'girlcloths3.jpg', 'METERSBONWE', '4.3折', '【春季新品】女时尚字母印花短', '99.00', '199.00', 3),
	(4, 'girlcloths4.jpg', 'METERSBONWE', '2.1折', '【夏季新品】女时尚绑带绣花雪', '269.00', '1199.00', 4),
	(5, 'girlcloths5.jpg', 'METERSBONWE', '4.9折', '女式印花真丝连衣裙', '369.00', '599.00', 5),
	(6, 'girlcloths6.jpg', 'METERSBONWE', '5.3折', '【春季新品】女式百褶裙', '69.00', '299.00', 6),
	(7, 'girlcloths7.jpg', 'METERSBONWE', '6.0折', '【夏季新品】女新版毛边高腰牛', '59.00', '299.00', 7),
	(8, 'girlcloths8.jpg', 'METERSBONWE', '3.0折', '【夏季新品】女可爱磨毛花边高', '59.00', '199.00', 8),
	(9, 'girlcloths9.jpg', 'METERSBONWE', '3.1折', '【夏季新品】女基本宽松高腰', '449.00', '3299.00', 9);
/*!40000 ALTER TABLE `girlcloths` ENABLE KEYS */;


-- 导出  表 database.goodslistput 结构
DROP TABLE IF EXISTS `goodslistput`;
CREATE TABLE IF NOT EXISTS `goodslistput` (
  `indexid` int(11) NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `brand` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `rebate` float DEFAULT NULL,
  `styles` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `sale` float DEFAULT NULL,
  `price` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `shopid` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`indexid`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  database.goodslistput 的数据：~220 rows (大约)
/*!40000 ALTER TABLE `goodslistput` DISABLE KEYS */;
REPLACE INTO `goodslistput` (`indexid`, `imgurl`, `brand`, `rebate`, `styles`, `sale`, `price`, `shopid`) VALUES
	(1, 'img/goodsimg1.jpg', 'Metersbonwe', 6.9, '女高腰基本款紧身牛仔长裤', 673, '768.9', '1'),
	(2, 'img/goodsimg2.jpg', 'ME＆CITY', 7.1, '女款短款修身翻领机车PU皮衣', 613, '791.9', '2'),
	(3, 'img/goodsimg3.jpg', 'MISSMARY', 3.7, '女潮流翻边针织裤', 1025, '1110.9', '3'),
	(4, 'img/goodsimg4.jpg', 'ME＆CITY', 5.2, '情侣款-女美女与野兽精致绣花夹克', 592, '670.9', '4'),
	(5, 'img/goodsimg5.jpg', 'Canshow', 7.6, '女基本款修身罗纹套头毛衫', 618, '801.9', '5'),
	(6, 'img/goodsimg6.jpg', 'ANMO', 4, '女落肩廓形破洞牛仔夹克', 763, '846.9', '6'),
	(7, 'img/goodsimg7.jpg', '菲铂娅', 3.4, '【春季新品】女条纹打底衫', 390, '666.9', '7'),
	(8, 'img/goodsimg8.jpg', '骊语', 5.3, '女袖口打结翻领系带轻薄风衣', 1009, '1221.9', '8'),
	(9, 'img/goodsimg9.jpg', '寐丽', 4.3, '女后背印字中长派克', 795, '971.9', '9'),
	(10, 'img/goodsimg10.jpg', '妮芬儿', 6, '长袖衬衫女款显瘦白衬衣', 575, '670.9', '10'),
	(11, 'img/goodsimg11.jpg', 'Metersbonwe', 7, '女圆领肌理毛织马甲', 353, '554.9', '11'),
	(12, 'img/goodsimg12.jpg', 'ME＆CITY', 7.4, '女针织毛呢羊毛连帽夹克短外套', 334, '424.9', '12'),
	(13, 'img/goodsimg13.jpg', 'MISSMARY', 4.2, '女大格仔呢料大衣', 554, '735.9', '13'),
	(14, 'img/goodsimg14.jpg', 'ME＆CITY', 7.4, '女基本数字字母针织裤', 990, '1116.9', '14'),
	(15, 'img/goodsimg15.jpg', 'Canshow', 4.3, '女宽松打结阔腿裤', 186, '205.9', '15'),
	(16, 'img/goodsimg16.jpg', 'ANMO', 3.3, '女卫衣款圆领套头撞色', 604, '636.9', '16'),
	(17, 'img/goodsimg17.jpg', '菲铂娅', 3.5, '【春季新品】女复古格纹短茄克', 556, '784.9', '17'),
	(18, 'img/goodsimg18.jpg', '骊语', 3.3, '女MTEE', 867, '1107.9', '18'),
	(19, 'img/goodsimg19.jpg', '寐丽', 4.3, '迪士尼米奇系列卫衣连衣裙', 933, '1213.9', '19'),
	(20, 'img/goodsimg20.jpg', '妮芬儿', 3.8, '外套女款中长款风衣韩宽松文艺', 536, '768.9', '20'),
	(21, 'img/goodsimg21.jpg', 'MISSMARY', 6.3, '女条纹大喇叭袖衬衫', 709, '802.9', '21'),
	(22, 'img/goodsimg22.jpg', 'ME＆CITY', 7.4, '女收腰女性化细节牛仔派克', 467, '705.9', '22'),
	(23, 'img/goodsimg23.jpg', 'Canshow', 5.1, '女针织牛仔慢跑裤', 812, '883.9', '23'),
	(24, 'img/goodsimg24.jpg', 'ANMO', 3.6, '【春季新品】女休闲撞色印花外套', 328, '450.9', '24'),
	(25, 'img/goodsimg25.jpg', '菲铂娅', 6.9, '女长款复古V领羊毛麻修身毛织开衫', 402, '410.9', '25'),
	(26, 'img/goodsimg26.jpg', 'Metersbonwe', 3.4, '【春季新品】女牛仔衬衫', 767, '926.9', '26'),
	(27, 'img/goodsimg27.jpg', '寐丽', 5.4, '女棒球领短款简约长袖夹克', 536, '667.9', '27'),
	(28, 'img/goodsimg28.jpg', '妮芬儿', 4.5, '女脚口不规则牛仔小脚裤', 916, '970.9', '28'),
	(29, 'img/goodsimg29.jpg', 'MISSMARY', 5.2, '女基本牛津纺衬衫', 326, '597.9', '29'),
	(30, 'img/goodsimg30.jpg', 'Haoduoyi', 5.1, '女休闲基本款格纹衬衫', 728, '942.9', '30'),
	(31, 'img/goodsimg31.jpg', 'Canshow', 6.8, '女式大廓形麻质衬衫', 996, '1089.9', '31'),
	(32, 'img/goodsimg32.jpg', 'ANMO', 7.2, '女情侣基本款牛仔夹克', 175, '244.9', '32'),
	(33, 'img/goodsimg33.jpg', '菲铂娅', 4.3, '女腰部褶裥送腰带短裤', 949, '1080.9', '33'),
	(34, 'img/goodsimg34.jpg', '骊语', 7.7, '女A型百搭可爱大衣', 143, '345.9', '34'),
	(35, 'img/goodsimg35.jpg', '寐丽', 6.9, '女贴章男友牛仔裤', 673, '840.9', '35'),
	(36, 'img/goodsimg36.jpg', '妮芬儿', 5.7, '女摇滚拼接连帽长款夹克外套', 395, '432.9', '36'),
	(37, 'img/goodsimg37.jpg', 'MISSMARY', 6.7, '女飞机染整长款衬衫', 769, '827.9', '37'),
	(38, 'img/goodsimg38.jpg', 'Haoduoyi', 3.5, '女牛仔长裤潮撞色小脚裤子铅笔裤', 333, '521.9', '38'),
	(39, 'img/goodsimg39.jpg', 'Canshow', 7.2, '女时髦扩型衬衫', 66, '204.9', '39'),
	(40, 'img/goodsimg40.jpg', 'ANMO', 7.2, '女套头卫衣韩版灯笼袖长袖', 941, '1185.9', '40'),
	(41, 'img/goodsimg41.jpg', 'Metersbonwe', 6.9, '女膝盖割破9分牛仔长裤', 441, '723.9', '41'),
	(42, 'img/goodsimg42.jpg', '骊语', 5.1, '外套女短箱格仔衬衫', 536, '641.9', '42'),
	(43, 'img/goodsimg43.jpg', '寐丽', 6.7, '女时尚显瘦宽松白色七分阔腿裤', 942, '1090.9', '43'),
	(44, 'img/goodsimg44.jpg', '妮芬儿', 3.1, '女破洞弹力彩色牛仔紧身七分裤', 688, '902.9', '44'),
	(45, 'img/goodsimg45.jpg', 'MISSMARY', 7.8, '女防紫外线基本开衫', 235, '260.9', '45'),
	(46, 'img/goodsimg46.jpg', 'Haoduoyi', 4.7, '女MTEE', 834, '918.9', '46'),
	(47, 'img/goodsimg47.jpg', 'Canshow', 7.1, '张权系列撞色袖子卫衣', 133, '426.9', '47'),
	(48, 'img/goodsimg48.jpg', 'ANMO', 7.8, '女连帽中长牛仔派克', 582, '639.9', '48'),
	(49, 'img/goodsimg49.jpg', '菲铂娅', 4.8, '外套女款中长款风衣韩宽松文艺', 276, '382.9', '49'),
	(50, 'img/goodsimg50.jpg', '骊语', 6.4, '女条纹大喇叭袖衬衫', 201, '443.9', '50'),
	(51, 'img/goodsimg51.jpg', 'Metersbonwe', 7.3, '女收腰女性化细节牛仔派克', 417, '444.9', '51'),
	(52, 'img/goodsimg52.jpg', '妮芬儿', 4.6, '女针织牛仔慢跑裤', 187, '188.9', '52'),
	(53, 'img/goodsimg53.jpg', 'MISSMARY', 6.6, '【春季新品】女休闲撞色印花外套', 866, '1144.9', '53'),
	(54, 'img/goodsimg54.jpg', 'ME＆CITY', 5.3, '女长款复古V领羊毛麻修身毛织开衫', 231, '433.9', '54'),
	(55, 'img/goodsimg55.jpg', 'Canshow', 6.8, '【春季新品】女牛仔衬衫', 621, '713.9', '55'),
	(56, 'img/goodsimg56.jpg', 'ANMO', 6.6, '女棒球领短款简约长袖夹克', 74, '269.9', '56'),
	(57, 'img/goodsimg57.jpg', '菲铂娅', 3.7, '女脚口不规则牛仔小脚裤', 725, '989.9', '57'),
	(58, 'img/goodsimg58.jpg', 'Metersbonwe', 5.8, '女基本牛津纺衬衫', 545, '751.9', '58'),
	(59, 'img/goodsimg59.jpg', '寐丽', 3.2, '女休闲基本款格纹衬衫', 904, '959.9', '59'),
	(60, 'img/goodsimg60.jpg', 'Metersbonwe', 4.1, '女式大廓形麻质衬衫', 470, '732.9', '60'),
	(61, 'img/goodsimg61.jpg', 'MISSMARY', 3.9, '女情侣基本款牛仔夹克', 575, '782.9', '61'),
	(62, 'img/goodsimg62.jpg', 'Haoduoyi', 6.9, '女腰部褶裥送腰带短裤', 394, '646.9', '62'),
	(63, 'img/goodsimg63.jpg', 'Canshow', 5.3, '女A型百搭可爱大衣', 355, '548.9', '63'),
	(64, 'img/goodsimg64.jpg', 'ANMO', 6.5, '女贴章男友牛仔裤', 116, '414.9', '64'),
	(65, 'img/goodsimg65.jpg', '菲铂娅', 3.7, '女摇滚拼接连帽长款夹克外套', 302, '382.9', '65'),
	(66, 'img/goodsimg66.jpg', '骊语', 6.3, '女飞机染整长款衬衫', 959, '1143.9', '66'),
	(67, 'img/goodsimg67.jpg', '寐丽', 7, '女牛仔长裤潮撞色小脚裤子铅笔裤', 800, '1048.9', '67'),
	(68, 'img/goodsimg68.jpg', '妮芬儿', 3.5, '女时髦扩型衬衫', 420, '591.9', '68'),
	(69, 'img/goodsimg69.jpg', 'MISSMARY', 3, '女套头卫衣韩版灯笼袖长袖', 190, '455.9', '69'),
	(70, 'img/goodsimg70.jpg', 'Haoduoyi', 6, '女膝盖割破9分牛仔长裤', 282, '576.9', '70'),
	(71, 'img/goodsimg71.jpg', 'Canshow', 3.4, '女摇滚拼接连帽长款夹克', 877, '1107.9', '71'),
	(72, 'img/goodsimg72.jpg', 'ANMO', 3.8, '女时尚显瘦宽松白色七分阔腿裤', 374, '516.9', '72'),
	(73, 'img/goodsimg73.jpg', '菲铂娅', 5.3, '女破洞弹力彩色牛仔紧身七分裤', 733, '876.9', '73'),
	(74, 'img/goodsimg74.jpg', '骊语', 3.3, '女防紫外线基本开衫', 700, '807.9', '74'),
	(75, 'img/goodsimg75.jpg', 'Metersbonwe', 6.4, '女MTEE', 91, '171.9', '75'),
	(76, 'img/goodsimg76.jpg', '妮芬儿', 5.1, '张权系列撞色袖子卫衣', 434, '531.9', '76'),
	(77, 'img/goodsimg77.jpg', 'MISSMARY', 7, '女连帽中长牛仔派克', 842, '874.9', '77'),
	(78, 'img/goodsimg78.jpg', 'Haoduoyi', 3.9, '外套女款中长款风衣韩宽松文艺', 764, '1011.9', '78'),
	(79, 'img/goodsimg79.jpg', 'Canshow', 7.3, '女条纹大喇叭袖衬衫', 54, '156.9', '79'),
	(80, 'img/goodsimg80.jpg', 'ANMO', 4.9, '女收腰女性化细节牛仔派克', 460, '702.9', '80'),
	(81, 'img/goodsimg81.jpg', '菲铂娅', 7.4, '女针织牛仔慢跑裤', 536, '560.9', '81'),
	(82, 'img/goodsimg82.jpg', '骊语', 3.9, '【春季新品】女休闲撞色印花外套', 263, '528.9', '82'),
	(83, 'img/goodsimg83.jpg', '寐丽', 6.3, '女长款复古V领羊毛麻修身毛织开衫', 559, '707.9', '83'),
	(84, 'img/goodsimg84.jpg', '妮芬儿', 3.7, '【春季新品】女牛仔衬衫', 364, '422.9', '84'),
	(85, 'img/goodsimg85.jpg', 'MISSMARY', 6.7, '女棒球领短款简约长袖夹克', 654, '884.9', '85'),
	(86, 'img/goodsimg86.jpg', 'Haoduoyi', 4.2, '女脚口不规则牛仔小脚裤', 257, '394.9', '86'),
	(87, 'img/goodsimg87.jpg', 'Canshow', 5.3, '女基本牛津纺衬衫', 805, '1050.9', '87'),
	(88, 'img/goodsimg88.jpg', 'ANMO', 3.9, '女休闲基本款格纹衬衫', 503, '682.9', '88'),
	(89, 'img/goodsimg89.jpg', 'Metersbonwe', 6.3, '女式大廓形麻质衬衫', 297, '479.9', '89'),
	(90, 'img/goodsimg90.jpg', '骊语', 3.3, '女情侣基本款牛仔夹克', 144, '278.9', '90'),
	(91, 'img/goodsimg91.jpg', '寐丽', 5.8, '女腰部褶裥送腰带短裤', 535, '612.9', '91'),
	(92, 'img/goodsimg92.jpg', '妮芬儿', 4.3, '女A型百搭可爱大衣', 383, '411.9', '92'),
	(93, 'img/goodsimg93.jpg', 'MISSMARY', 5, '女贴章男友牛仔裤', 1006, '1076.9', '93'),
	(94, 'img/goodsimg94.jpg', 'Haoduoyi', 7.7, '女摇滚拼接连帽长款夹克外套', 819, '1111.9', '94'),
	(95, 'img/goodsimg95.jpg', 'Canshow', 7, '女飞机染整长款衬衫', 185, '400.9', '95'),
	(96, 'img/goodsimg96.jpg', 'ANMO', 6.6, '女牛仔长裤潮撞色小脚裤子铅笔裤', 67, '243.9', '96'),
	(97, 'img/goodsimg97.jpg', '菲铂娅', 3.5, '女时髦扩型衬衫', 769, '851.9', '97'),
	(98, 'img/goodsimg98.jpg', '骊语', 6.3, '女套头卫衣韩版灯笼袖长袖', 761, '984.9', '98'),
	(99, 'img/goodsimg99.jpg', '寐丽', 6.4, '女膝盖割破9分牛仔长裤', 91, '193.9', '99'),
	(100, 'img/goodsimg100.jpg', '妮芬儿', 3.9, '女摇滚拼接连帽长款夹克', 191, '259.9', '100'),
	(101, 'img/goodsimg101.jpg', 'MISSMARY', 3.1, '女时尚显瘦宽松白色七分阔腿裤', 645, '904.9', '101'),
	(102, 'img/goodsimg102.jpg', 'Haoduoyi', 4.3, '女破洞弹力彩色牛仔紧身七分裤', 617, '697.9', '102'),
	(103, 'img/goodsimg103.jpg', 'Canshow', 4.2, '女防紫外线基本开衫', 1048, '1181.9', '103'),
	(104, 'img/goodsimg104.jpg', 'ANMO', 4.1, '女MTEE', 762, '955.9', '104'),
	(105, 'img/goodsimg105.jpg', 'Metersbonwe', 5, '张权系列撞色袖子卫衣', 426, '707.9', '105'),
	(106, 'img/goodsimg106.jpg', '骊语', 5.1, '女连帽中长牛仔派克', 456, '660.9', '106'),
	(107, 'img/goodsimg107.jpg', 'Metersbonwe', 7.3, '外套女款中长款风衣韩宽松文艺', 710, '931.9', '107'),
	(108, 'img/goodsimg108.jpg', '妮芬儿', 6.7, '女条纹大喇叭袖衬衫', 517, '770.9', '108'),
	(109, 'img/goodsimg109.jpg', 'MISSMARY', 4.5, '女收腰女性化细节牛仔派克', 308, '529.9', '109'),
	(110, 'img/goodsimg110.jpg', 'Haoduoyi', 7.6, '女针织牛仔慢跑裤', 97, '347.9', '110'),
	(111, 'img/goodsimg111.jpg', 'Canshow', 5.7, '【春季新品】女休闲撞色印花外套', 821, '921.9', '111'),
	(112, 'img/goodsimg112.jpg', 'ANMO', 6.3, '女长款复古V领羊毛麻修身毛织开衫', 202, '327.9', '112'),
	(113, 'img/goodsimg113.jpg', '菲铂娅', 6.5, '【春季新品】女牛仔衬衫', 590, '632.9', '113'),
	(114, 'img/goodsimg114.jpg', 'Metersbonwe', 3.5, '女棒球领短款简约长袖夹克', 114, '313.9', '114'),
	(115, 'img/goodsimg115.jpg', 'Metersbonwe', 4, '女脚口不规则牛仔小脚裤', 713, '809.9', '115'),
	(116, 'img/goodsimg116.jpg', '妮芬儿', 7.2, '女基本牛津纺衬衫', 253, '426.9', '116'),
	(117, 'img/goodsimg117.jpg', 'MISSMARY', 5.8, '女休闲基本款格纹衬衫', 305, '507.9', '117'),
	(118, 'img/goodsimg118.jpg', 'Haoduoyi', 4.2, '女式大廓形麻质衬衫', 706, '850.9', '118'),
	(119, 'img/goodsimg119.jpg', 'Canshow', 6.7, '女情侣基本款牛仔夹克', 1015, '1077.9', '119'),
	(120, 'img/goodsimg120.jpg', 'ANMO', 7.7, '女腰部褶裥送腰带短裤', 115, '322.9', '120'),
	(121, 'img/goodsimg121.jpg', 'Metersbonwe', 7.5, '女A型百搭可爱大衣', 955, '1090.9', '121'),
	(122, 'img/goodsimg122.jpg', '骊语', 6.3, '女贴章男友牛仔裤', 976, '990.9', '122'),
	(123, 'img/goodsimg123.jpg', 'Metersbonwe', 7.5, '女摇滚拼接连帽长款夹克外套', 730, '972.9', '123'),
	(124, 'img/goodsimg124.jpg', '妮芬儿', 7.8, '女飞机染整长款衬衫', 159, '387.9', '124'),
	(125, 'img/goodsimg125.jpg', 'MISSMARY', 7.5, '女牛仔长裤潮撞色小脚裤子铅笔裤', 241, '362.9', '125'),
	(126, 'img/goodsimg126.jpg', 'Haoduoyi', 7.7, '女时髦扩型衬衫', 292, '337.9', '126'),
	(127, 'img/goodsimg127.jpg', 'Canshow', 3.4, '女套头卫衣韩版灯笼袖长袖', 425, '490.9', '127'),
	(128, 'img/goodsimg128.jpg', 'ANMO', 4.6, '女膝盖割破9分牛仔长裤', 345, '477.9', '128'),
	(129, 'img/goodsimg129.jpg', 'Metersbonwe', 6, '外套女短箱格仔衬衫', 758, '791.9', '129'),
	(130, 'img/goodsimg130.jpg', 'Metersbonwe', 4.7, '女时尚显瘦宽松白色七分阔腿裤', 394, '575.9', '130'),
	(131, 'img/goodsimg131.jpg', '寐丽', 6.9, '女破洞弹力彩色牛仔紧身七分裤', 309, '319.9', '131'),
	(132, 'img/goodsimg132.jpg', '妮芬儿', 7.7, '女防紫外线基本开衫', 673, '898.9', '132'),
	(133, 'img/goodsimg133.jpg', 'MISSMARY', 3.1, '女MTEE', 86, '281.9', '133'),
	(134, 'img/goodsimg134.jpg', 'Haoduoyi', 6.8, '张权系列撞色袖子卫衣', 1037, '1139.9', '134'),
	(135, 'img/goodsimg135.jpg', 'Canshow', 7.4, '女连帽中长牛仔派克', 745, '987.9', '135'),
	(136, 'img/goodsimg136.jpg', 'ANMO', 4.6, '外套女款中长款风衣韩宽松文艺', 317, '473.9', '136'),
	(137, 'img/goodsimg137.jpg', 'Metersbonwe', 5.2, '女条纹大喇叭袖衬衫', 416, '653.9', '137'),
	(138, 'img/goodsimg138.jpg', '骊语', 7.9, '女收腰女性化细节牛仔派克', 134, '169.9', '138'),
	(139, 'img/goodsimg139.jpg', 'Metersbonwe', 4, '女针织牛仔慢跑裤', 459, '522.9', '139'),
	(140, 'img/goodsimg140.jpg', '妮芬儿', 6.8, '【春季新品】女休闲撞色印花外套', 965, '1230.9', '140'),
	(141, 'img/goodsimg141.jpg', 'MISSMARY', 5.3, '女长款复古V领羊毛麻修身毛织开衫', 683, '822.9', '141'),
	(142, 'img/goodsimg142.jpg', 'Haoduoyi', 3.9, '【春季新品】女牛仔衬衫', 777, '882.9', '142'),
	(143, 'img/goodsimg143.jpg', 'Canshow', 3.3, '女棒球领短款简约长袖夹克', 683, '923.9', '143'),
	(144, 'img/goodsimg144.jpg', 'ANMO', 7.3, '女脚口不规则牛仔小脚裤', 638, '795.9', '144'),
	(145, 'img/goodsimg145.jpg', 'Metersbonwe', 7.5, '女基本牛津纺衬衫', 175, '374.9', '145'),
	(146, 'img/goodsimg146.jpg', '骊语', 4.9, '女休闲基本款格纹衬衫', 58, '194.9', '146'),
	(147, 'img/goodsimg147.jpg', '寐丽', 7.6, '女式大廓形麻质衬衫', 388, '475.9', '147'),
	(148, 'img/goodsimg148.jpg', '妮芬儿', 5.5, '女情侣基本款牛仔夹克', 749, '1000.9', '148'),
	(149, 'img/goodsimg149.jpg', 'MISSMARY', 5.1, '女腰部褶裥送腰带短裤', 745, '932.9', '149'),
	(150, 'img/goodsimg150.jpg', 'Haoduoyi', 5.5, '女A型百搭可爱大衣', 91, '153.9', '150'),
	(151, 'img/goodsimg151.jpg', 'Canshow', 3.9, '女贴章男友牛仔裤', 562, '838.9', '151'),
	(152, 'img/goodsimg152.jpg', 'ANMO', 5.1, '女摇滚拼接连帽长款夹克外套', 307, '398.9', '152'),
	(153, 'img/goodsimg153.jpg', '菲铂娅', 6.2, '女飞机染整长款衬衫', 225, '293.9', '153'),
	(154, 'img/goodsimg154.jpg', '骊语', 3.7, '女牛仔长裤潮撞色小脚裤子铅笔裤', 579, '757.9', '154'),
	(155, 'img/goodsimg155.jpg', 'Metersbonwe', 4.8, '女时髦扩型衬衫', 989, '1124.9', '155'),
	(156, 'img/goodsimg156.jpg', '妮芬儿', 7.3, '女套头卫衣韩版灯笼袖长袖', 949, '1187.9', '156'),
	(157, 'img/goodsimg157.jpg', 'MISSMARY', 5.9, '女膝盖割破9分牛仔长裤', 900, '1110.9', '157'),
	(158, 'img/goodsimg158.jpg', 'Haoduoyi', 7.8, '外套女短箱格仔衬衫', 67, '209.9', '158'),
	(159, 'img/goodsimg159.jpg', 'Canshow', 4.8, '女时尚显瘦宽松白色七分阔腿裤', 253, '403.9', '159'),
	(160, 'img/goodsimg160.jpg', 'ANMO', 5, '女破洞弹力彩色牛仔紧身七分裤', 278, '302.9', '160'),
	(161, 'img/goodsimg161.jpg', 'Metersbonwe', 7.9, '女防紫外线基本开衫', 350, '516.9', '161'),
	(162, 'img/goodsimg162.jpg', '骊语', 4.1, '女MTEE', 134, '313.9', '162'),
	(163, 'img/goodsimg163.jpg', 'Metersbonwe', 4.3, '张权系列撞色袖子卫衣', 830, '901.9', '163'),
	(164, 'img/goodsimg164.jpg', '妮芬儿', 3.6, '女连帽中长牛仔派克', 272, '552.9', '164'),
	(165, 'img/goodsimg165.jpg', 'MISSMARY', 7.1, '外套女款中长款风衣韩宽松文艺', 770, '841.9', '165'),
	(166, 'img/goodsimg166.jpg', 'Haoduoyi', 5.4, '女条纹大喇叭袖衬衫', 795, '1072.9', '166'),
	(167, 'img/goodsimg167.jpg', 'Canshow', 5.8, '女收腰女性化细节牛仔派克', 841, '1063.9', '167'),
	(168, 'img/goodsimg168.jpg', 'ANMO', 4, '女针织牛仔慢跑裤', 367, '476.9', '168'),
	(169, 'img/goodsimg169.jpg', '菲铂娅', 4.1, '【春季新品】女休闲撞色印花外套', 793, '816.9', '169'),
	(170, 'img/goodsimg170.jpg', '骊语', 7, '女长款复古V领羊毛麻修身毛织开衫', 509, '622.9', '170'),
	(171, 'img/goodsimg171.jpg', '寐丽', 4, '【春季新品】女牛仔衬衫', 907, '1087.9', '171'),
	(172, 'img/goodsimg172.jpg', '妮芬儿', 6.1, '女棒球领短款简约长袖夹克', 210, '359.9', '172'),
	(173, 'img/goodsimg173.jpg', 'MISSMARY', 3.3, '女脚口不规则牛仔小脚裤', 463, '624.9', '173'),
	(174, 'img/goodsimg174.jpg', 'Haoduoyi', 5.2, '女基本牛津纺衬衫', 138, '381.9', '174'),
	(175, 'img/goodsimg175.jpg', 'Canshow', 7.8, '女休闲基本款格纹衬衫', 251, '287.9', '175'),
	(176, 'img/goodsimg176.jpg', 'ANMO', 7.3, '女式大廓形麻质衬衫', 874, '1109.9', '176'),
	(177, 'img/goodsimg177.jpg', 'Metersbonwe', 7.8, '女情侣基本款牛仔夹克', 668, '900.9', '177'),
	(178, 'img/goodsimg178.jpg', '骊语', 3.6, '女腰部褶裥送腰带短裤', 292, '349.9', '178'),
	(179, 'img/goodsimg179.jpg', '寐丽', 5.7, '女A型百搭可爱大衣', 642, '684.9', '179'),
	(180, 'img/goodsimg180.jpg', '妮芬儿', 4.8, '女贴章男友牛仔裤', 856, '912.9', '180'),
	(181, 'img/goodsimg181.jpg', 'MISSMARY', 6.3, '女摇滚拼接连帽长款夹克外套', 673, '929.9', '181'),
	(182, 'img/goodsimg182.jpg', 'Haoduoyi', 4.4, '女飞机染整长款衬衫', 986, '1096.9', '182'),
	(183, 'img/goodsimg183.jpg', 'Canshow', 6.9, '女牛仔长裤潮撞色小脚裤子铅笔裤', 317, '573.9', '183'),
	(184, 'img/goodsimg184.jpg', 'ANMO', 6.5, '女时髦扩型衬衫', 204, '480.9', '184'),
	(185, 'img/goodsimg185.jpg', '菲铂娅', 4.4, '女套头卫衣韩版灯笼袖长袖', 944, '1201.9', '185'),
	(186, 'img/goodsimg186.jpg', '骊语', 7.6, '女膝盖割破9分牛仔长裤', 994, '1014.9', '186'),
	(187, 'img/goodsimg187.jpg', 'Metersbonwe', 3.2, '外套女短箱格仔衬衫', 75, '87.9', '187'),
	(188, 'img/goodsimg188.jpg', '妮芬儿', 4.2, '女时尚显瘦宽松白色七分阔腿裤', 523, '651.9', '188'),
	(189, 'img/goodsimg189.jpg', 'MISSMARY', 6.1, '女破洞弹力彩色牛仔紧身七分裤', 296, '519.9', '189'),
	(190, 'img/goodsimg190.jpg', 'Haoduoyi', 5.8, '女防紫外线基本开衫', 367, '431.9', '190'),
	(191, 'img/goodsimg191.jpg', 'Canshow', 6.5, '女MTEE', 677, '840.9', '191'),
	(192, 'img/goodsimg192.jpg', 'ANMO', 5.3, '张权系列撞色袖子卫衣', 506, '528.9', '192'),
	(193, 'img/goodsimg193.jpg', '菲铂娅', 3.1, '女连帽中长牛仔派克', 247, '446.9', '193'),
	(194, 'img/goodsimg194.jpg', '骊语', 3.6, '外套女款中长款风衣韩宽松文艺', 235, '392.9', '194'),
	(195, 'img/goodsimg195.jpg', '寐丽', 7.7, '女条纹大喇叭袖衬衫', 189, '443.9', '195'),
	(196, 'img/goodsimg196.jpg', '妮芬儿', 5, '女收腰女性化细节牛仔派克', 723, '910.9', '196'),
	(197, 'img/goodsimg197.jpg', 'MISSMARY', 5.4, '女针织牛仔慢跑裤', 176, '458.9', '197'),
	(198, 'img/goodsimg198.jpg', 'Haoduoyi', 7.2, '【春季新品】女休闲撞色印花外套', 935, '942.9', '198'),
	(199, 'img/goodsimg199.jpg', 'Canshow', 5, '女长款复古V领羊毛麻修身毛织开衫', 782, '941.9', '199'),
	(200, 'img/goodsimg200.jpg', 'ANMO', 3.2, '【春季新品】女牛仔衬衫', 324, '402.9', '200'),
	(201, 'img/goodsimg201.jpg', '菲铂娅', 7, '女棒球领短款简约长袖夹克', 248, '333.9', '201'),
	(202, 'img/goodsimg202.jpg', '骊语', 7.3, '女脚口不规则牛仔小脚裤', 1049, '1158.9', '202'),
	(203, 'img/goodsimg203.jpg', '寐丽', 4.8, '女基本牛津纺衬衫', 379, '572.9', '203'),
	(204, 'img/goodsimg204.jpg', '妮芬儿', 4.1, '女休闲基本款格纹衬衫', 859, '980.9', '204'),
	(205, 'img/goodsimg205.jpg', 'MISSMARY', 3.7, '女式大廓形麻质衬衫', 193, '482.9', '205'),
	(206, 'img/goodsimg206.jpg', 'Haoduoyi', 6.9, '女情侣基本款牛仔夹克', 847, '1038.9', '206'),
	(207, 'img/goodsimg207.jpg', 'Metersbonwe', 6.7, '女腰部褶裥送腰带短裤', 85, '96.9', '207'),
	(208, 'img/goodsimg208.jpg', 'ANMO', 8, '女A型百搭可爱大衣', 612, '722.9', '208'),
	(209, 'img/goodsimg209.jpg', '菲铂娅', 3.3, '女贴章男友牛仔裤', 920, '1211.9', '209'),
	(210, 'img/goodsimg210.jpg', '骊语', 6.5, '女摇滚拼接连帽长款夹克外套', 887, '1083.9', '210'),
	(211, 'img/goodsimg211.jpg', 'Metersbonwe', 5, '女飞机染整长款衬衫', 172, '308.9', '211'),
	(212, 'img/goodsimg212.jpg', '妮芬儿', 3.6, '女牛仔长裤潮撞色小脚裤子铅笔裤', 746, '996.9', '212'),
	(213, 'img/goodsimg213.jpg', 'Metersbonwe', 7.5, '女时髦扩型衬衫', 702, '812.9', '213'),
	(214, 'img/goodsimg214.jpg', 'Haoduoyi', 5.7, '女套头卫衣韩版灯笼袖长袖', 460, '494.9', '214'),
	(215, 'img/goodsimg215.jpg', 'Canshow', 6.1, '女膝盖割破9分牛仔长裤', 303, '311.9', '215'),
	(216, 'img/goodsimg216.jpg', 'ANMO', 3.5, '外套女短箱格仔衬衫', 773, '904.9', '216'),
	(217, 'img/goodsimg217.jpg', 'Metersbonwe', 4.9, '女时尚显瘦宽松白色七分阔腿裤', 751, '802.9', '217'),
	(218, 'img/goodsimg218.jpg', '骊语', 7.3, '女破洞弹力彩色牛仔紧身七分裤', 663, '807.9', '218'),
	(219, 'img/goodsimg219.jpg', '寐丽', 5.2, '女防紫外线基本开衫', 121, '234.9', '219'),
	(220, 'img/goodsimg220.jpg', '妮芬儿', 6.7, '女MTEE', 317, '383.9', '220');
/*!40000 ALTER TABLE `goodslistput` ENABLE KEYS */;


-- 导出  表 database.hotbrand 结构
DROP TABLE IF EXISTS `hotbrand`;
CREATE TABLE IF NOT EXISTS `hotbrand` (
  `indexid` int(11) NOT NULL,
  `imgurl` varchar(50) COLLATE utf8_bin NOT NULL,
  `idx` int(11) DEFAULT NULL,
  PRIMARY KEY (`indexid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  database.hotbrand 的数据：~8 rows (大约)
/*!40000 ALTER TABLE `hotbrand` DISABLE KEYS */;
REPLACE INTO `hotbrand` (`indexid`, `imgurl`, `idx`) VALUES
	(1, 'img/hotBand1.jpg', 1),
	(2, 'img/hotBand2.jpg', 2),
	(3, 'img/hotBand3.jpg', 3),
	(4, 'img/hotBand4.jpg', 4),
	(5, 'img/hotBand5.jpg', 5),
	(6, 'img/hotBand6.jpg', 6),
	(7, 'img/hotBand7.jpg', 7),
	(8, 'img/hotBand8.jpg', 8);
/*!40000 ALTER TABLE `hotbrand` ENABLE KEYS */;


-- 导出  表 database.mancloths 结构
DROP TABLE IF EXISTS `mancloths`;
CREATE TABLE IF NOT EXISTS `mancloths` (
  `indexid` int(11) NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `brand` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `rebate` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `clothsstyle` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `sale` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `price` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `idx` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`indexid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  database.mancloths 的数据：~9 rows (大约)
/*!40000 ALTER TABLE `mancloths` DISABLE KEYS */;
REPLACE INTO `mancloths` (`indexid`, `imgurl`, `brand`, `rebate`, `clothsstyle`, `sale`, `price`, `idx`) VALUES
	(1, 'mancloths1.jpg', 'METERSBONWE', '3折', '【夏季新品】男基础纯色翻领', '59.00', '199.00', '1'),
	(2, 'mancloths2.jpg', 'ME＆CITY', '3.8折', '男基本款纯色POLO', '69.00', '139.00', '2'),
	(3, 'mancloths3.jpg', 'METERSBONWE', '3折', '【夏季新品】男基础纯色翻领', '59.00', '199.00', '3'),
	(4, 'mancloths4.jpg', 'METERSBONWE', '6折', '【夏季新品】男潮流字母印花腰', '59.00', '99.00', '4'),
	(5, 'mancloths5.jpg', '卡机罗', '4.6折', '【夏季新品】男基础纯色翻领', '69.00', '199.00', '5'),
	(6, 'mancloths6.jpg', 'METERSBONWE', '2.4折', '【夏季新品】男亚麻中裤', '59.00', '199.00', '6'),
	(7, 'mancloths7.jpg', '米兰骑士', '3.8折', '纯棉舒适男士夏季休闲居家百搭', '99.00', '199.00', '7'),
	(8, 'mancloths8.jpg', 'METERSBONWE', '5.2折', '【夏季新品】男基础百搭休闲中', '39.00', '199.00', '8'),
	(9, 'mancloths9.jpg', '沃妮', '4.9折', '【夏季新品】男基础弹力舒适牛', '49.00', '199.00', '9');
/*!40000 ALTER TABLE `mancloths` ENABLE KEYS */;


-- 导出  表 database.randomcode 结构
DROP TABLE IF EXISTS `randomcode`;
CREATE TABLE IF NOT EXISTS `randomcode` (
  `indexid` int(11) NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(50) COLLATE utf8_bin DEFAULT '0',
  `numcontent` varchar(50) COLLATE utf8_bin DEFAULT '0',
  `numindex` varchar(50) COLLATE utf8_bin DEFAULT '0',
  PRIMARY KEY (`indexid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  database.randomcode 的数据：~9 rows (大约)
/*!40000 ALTER TABLE `randomcode` DISABLE KEYS */;
REPLACE INTO `randomcode` (`indexid`, `imgurl`, `numcontent`, `numindex`) VALUES
	(1, 'img/yzm1.jpg', 'dzr2', '1'),
	(2, 'img/yzm2.jpg', 'kwdk', '2'),
	(3, 'img/yzm3.jpg', 't73y', '3'),
	(4, 'img/yzm4.jpg', 'vnxr', '4'),
	(5, 'img/yzm5.jpg', '3ujx', '5'),
	(6, 'img/yzm6.jpg', '2nvc', '6'),
	(7, 'img/yzm7.jpg', 'qbip', '7'),
	(8, 'img/yzm8.jpg', 'anik', '8'),
	(9, 'img/yzm9.jpg', 'atg6', '9');
/*!40000 ALTER TABLE `randomcode` ENABLE KEYS */;


-- 导出  表 database.register 结构
DROP TABLE IF EXISTS `register`;
CREATE TABLE IF NOT EXISTS `register` (
  `indexid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `pwd` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `phoneNum` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`indexid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  database.register 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
REPLACE INTO `register` (`indexid`, `username`, `pwd`, `phoneNum`) VALUES
	(1, 'nemo123', 'czx123123', '12312312311'),
	(2, 'czx123123', 'czx123123', '12332112322');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;


-- 导出  表 database.selectbrand 结构
DROP TABLE IF EXISTS `selectbrand`;
CREATE TABLE IF NOT EXISTS `selectbrand` (
  `indexid` int(11) NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(50) COLLATE utf8_bin DEFAULT '0',
  `idx` int(11) DEFAULT NULL,
  PRIMARY KEY (`indexid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  database.selectbrand 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `selectbrand` DISABLE KEYS */;
REPLACE INTO `selectbrand` (`indexid`, `imgurl`, `idx`) VALUES
	(1, 'img/mianSlect1.jpg', 1),
	(2, 'img/mianSlect2.jpg', 2),
	(3, 'img/mianSlect3.jpg', 3);
/*!40000 ALTER TABLE `selectbrand` ENABLE KEYS */;


-- 导出  表 database.shoes 结构
DROP TABLE IF EXISTS `shoes`;
CREATE TABLE IF NOT EXISTS `shoes` (
  `indexid` int(11) NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(50) COLLATE utf8_bin DEFAULT '0',
  `brand` varchar(50) COLLATE utf8_bin DEFAULT '0',
  `rebate` varchar(50) COLLATE utf8_bin DEFAULT '0',
  `clothsstyle` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `sale` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `price` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `idx` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`indexid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  database.shoes 的数据：~9 rows (大约)
/*!40000 ALTER TABLE `shoes` DISABLE KEYS */;
REPLACE INTO `shoes` (`indexid`, `imgurl`, `brand`, `rebate`, `clothsstyle`, `sale`, `price`, `idx`) VALUES
	(1, 'img/shoes1.jpg', 'ME＆CITY', '4.3折', '【夏季新品】男时尚松紧带凉鞋', '359.00', '559.00', '1'),
	(2, 'img/shoes2.jpg', 'ME＆CITY', '5.3折', '【2018夏季新品】女极简厚底', '429.00', '699.00', '2'),
	(3, 'img/shoes3.jpg', 'ME＆CITY', '3.3折', '18夏季新品男士英伦潮流凉鞋', '128.00', '359.00', '3'),
	(4, 'img/shoes4.jpg', 'ME＆CITY', '2.3折', '18夏季新品男士英伦潮流凉鞋', '158.00', '399.00', '4'),
	(5, 'img/shoes5.jpg', 'ME＆CITY', '6.9折', '【夏季新品】女极简畔带平底拖', '359.00', '559.00', '5'),
	(6, 'img/shoes6.jpg', 'ME＆CITY', '4.0折', '【夏季新品】男时尚松紧带凉鞋', '239.00', '159.00', '6'),
	(7, 'img/shoes7.jpg', 'ME＆CITY', '3.3折', '【夏季新品】女荷叶边中跟拖鞋', '359.00', '559.00', '7'),
	(8, 'img/shoes8.jpg', 'ME＆CITY', '4.9折', '【夏季新品】女极简编织拖鞋', '299.00', '559.00', '8'),
	(9, 'img/shoes9.jpg', 'ME＆CITY', '5.3折', '男轻便勃肯鞋', '29.00', '99.00', '9');
/*!40000 ALTER TABLE `shoes` ENABLE KEYS */;


-- 导出  表 database.todayhot 结构
DROP TABLE IF EXISTS `todayhot`;
CREATE TABLE IF NOT EXISTS `todayhot` (
  `indexid` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(50) COLLATE utf8_bin NOT NULL,
  `brand` varchar(50) COLLATE utf8_bin NOT NULL,
  `rebate` varchar(50) COLLATE utf8_bin NOT NULL,
  `clothsstyle` varchar(50) COLLATE utf8_bin NOT NULL,
  `sale` varchar(50) COLLATE utf8_bin NOT NULL,
  `price` varchar(50) COLLATE utf8_bin NOT NULL,
  `idx` int(11) DEFAULT NULL,
  PRIMARY KEY (`indexid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  database.todayhot 的数据：~10 rows (大约)
/*!40000 ALTER TABLE `todayhot` DISABLE KEYS */;
REPLACE INTO `todayhot` (`indexid`, `imgurl`, `brand`, `rebate`, `clothsstyle`, `sale`, `price`, `idx`) VALUES
	(00000000001, 'img/todayhot1.jpg', 'METERSBONWE', '7.4折', '男常年款净色圆领T恤', '29.00', '39.00', 1),
	(00000000003, 'img/todayhot3.jpg', 'METERSBONWE', '7.4折', '【夏季新品】男休闲时尚印花短', '59.00', '99.00', 2),
	(00000000004, 'img/todayhot4.jpg', '倪芬尔', '2.5折', '男士夏季简约条纹衫短袖T恤', '59.00', '239.00', 3),
	(00000000005, 'img/todayhot5.jpg', 'METERS	BONWE', '4.2折', '【夏季新品】男粗条纹短袖T恤', '59.00', '139.00', 4),
	(00000000006, 'img/todayhot6.jpg', '符号公社', '6.9折', '男常年款净色圆领T恤', '29.00', '39.00', 5),
	(00000000007, 'img/todayhot7.jpg', 'METERSBONWE', '2.5折', '【夏季新品】男趣味卡通印花短', '59.00', '99.00', 6),
	(00000000008, 'img/todayhot8.jpg', 'METERSBONWE', '4.9折', '2018新款工装休闲裤短裤五分', '75.00', '299.00', 7),
	(00000000009, 'img/todayhot9.jpg', 'METERSBONWE', '3.9折', '【夏季新品】女基本光板T恤', '75.00', '299.00', 8),
	(00000000010, 'img/todayhot10.jpg', 'METERSBONWE', '4.9折', '【夏季新品】男潮流字母前后片', '49.00', '99.00', 9),
	(00000000011, 'img/todayhot11.jpg', 'ME＆CITY', '5.3折', '夏季韩版潮流', '79.00', '299.00', 10);
/*!40000 ALTER TABLE `todayhot` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
