/*
Navicat MySQL Data Transfer

Source Server         : MySql
Source Server Version : 50710
Source Host           : localhost:3306
Source Database       : hotel

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2016-05-24 20:19:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for email
-- ----------------------------
DROP TABLE IF EXISTS `email`;
CREATE TABLE `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '邮件id',
  `name` varchar(30) DEFAULT NULL COMMENT '发送者',
  `tel` varchar(30) DEFAULT NULL COMMENT '发送者电话',
  `content` varchar(5000) DEFAULT NULL COMMENT '内容',
  `status` int(2) DEFAULT '0' COMMENT '邮件状态，0未读，1已读',
  `email` varchar(80) DEFAULT NULL COMMENT '发送者email',
  PRIMARY KEY (`id`),
  KEY `f_emailsendid_userid` (`name`),
  KEY `f_receiveid_userid` (`tel`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='邮件表';

-- ----------------------------
-- Records of email
-- ----------------------------
INSERT INTO `email` VALUES ('4', '123', '123', '123123123', '1', '123');
INSERT INTO `email` VALUES ('5', '123', '123', '123123123', '1', '123');
INSERT INTO `email` VALUES ('6', '123', '123', '123123123', '1', '123');
INSERT INTO `email` VALUES ('7', '123', '123', '123123', '1', '123');

-- ----------------------------
-- Table structure for evaluation
-- ----------------------------
DROP TABLE IF EXISTS `evaluation`;
CREATE TABLE `evaluation` (
  `eid` int(11) NOT NULL AUTO_INCREMENT COMMENT '评价id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `uname` varchar(50) DEFAULT NULL COMMENT '用户名',
  `content` varchar(5000) DEFAULT NULL COMMENT '评价内容',
  `evaluationtime` date DEFAULT NULL COMMENT '评价时间',
  `hid` int(11) DEFAULT NULL COMMENT '酒店ID',
  `star` int(11) DEFAULT NULL COMMENT '用户几星好评1-5',
  PRIMARY KEY (`eid`),
  KEY `eid_uid` (`uid`),
  KEY `ev_hid` (`hid`),
  CONSTRAINT `eid_uid` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `ev_hid` FOREIGN KEY (`hid`) REFERENCES `hotel` (`hid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='评价信息表';

-- ----------------------------
-- Records of evaluation
-- ----------------------------
INSERT INTO `evaluation` VALUES ('3', '3', '12', '123', '2016-05-23', '3', '5');
INSERT INTO `evaluation` VALUES ('4', '3', 'qw', 'qw', '2016-07-21', '3', '4');

-- ----------------------------
-- Table structure for hotel
-- ----------------------------
DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel` (
  `hid` int(11) NOT NULL AUTO_INCREMENT COMMENT '酒店编号',
  `hname` varchar(50) DEFAULT NULL COMMENT '酒店名称',
  `hemail` varchar(50) DEFAULT NULL COMMENT '电子邮箱',
  `htel` varchar(20) DEFAULT NULL COMMENT '电话号码',
  `hprovince` varchar(20) DEFAULT NULL COMMENT '所在省份',
  `hcity` varchar(20) DEFAULT NULL COMMENT '所在城市',
  `haddr` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `grand` int(2) DEFAULT NULL COMMENT '酒店星级',
  `guestratings` float DEFAULT NULL COMMENT '客户评级',
  `reviews` int(5) DEFAULT NULL COMMENT '评论人数',
  `summary` varchar(20000) DEFAULT NULL COMMENT '总体情况',
  `imagepath` varchar(200) DEFAULT NULL COMMENT '图片路径',
  `browsenumber` int(5) DEFAULT NULL COMMENT '浏览人数',
  `avgprice` float DEFAULT NULL COMMENT '平局每晚每人价格',
  `managerid` int(11) DEFAULT NULL COMMENT '酒店负责人id',
  PRIMARY KEY (`hid`),
  KEY `FK5EDC1B44457797F` (`managerid`),
  CONSTRAINT `f_hmid_uid` FOREIGN KEY (`managerid`) REFERENCES `user` (`uid`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='酒店信息表';

-- ----------------------------
-- Records of hotel
-- ----------------------------
INSERT INTO `hotel` VALUES ('2', '汉驿连锁旅店（武汉中南财大二店）', '530180782@qq.com', '027-86535918', '湖北', '武汉', '武汉 洪山区 南湖大道清水源3期卡迪亚公馆B座1楼 ，近武汉工商学院。', '5', null, null, '汉驿连锁旅店南湖财大二店位于武汉市洪山区南湖大道卡迪亚公馆B栋一楼（中南财经政法大学门），交通便捷，环境安静优雅，紧邻财经政法大学，华中农业大学、中南民族大学、武汉纺织大学、武汉职业技术学院均在附近，往北3公里可到达光谷步行街、鲁巷广场、光谷国际广场，更有大洋百货、苏宁电器、光谷书城等丰富资源；10分钟车程即可到达南湖大道上的光谷软件园，光谷大道上的金融港，三环边的武大科技园等名企；周边购物餐饮娱乐小吃齐全，附近1公里内有武商量贩、沃尔玛、麦当劳、简朴寨、中西餐厅等；武昌火车站乘538路公交车可直达财经政法大学，下车前行500米到达本店，汉口火车站乘590公交车可直达财经政法大学，下车前行500米到达本店。汉驿连锁旅店南湖财大二店全体员工期待您的光临！', null, null, '98.9', '2');
INSERT INTO `hotel` VALUES ('3', '武汉汉驿风尚酒店 ', '888888888@qq.com', '027-86535918', '湖北', '武汉', '武汉 江夏区 藏龙岛杨桥湖大道拓创大厦 ，近湖北经济学院。', '4', '5', '1', '汉驿风尚酒店位于拓创大厦二楼，湖北经济学院对面，紧邻湖北美术学院、城建学院、武汉传媒学院、武汉体育学院、华中农业大学楚天学院、武汉市交通学校等知名院校；乘车约5分钟可到三一重工、七二二研究所、富士康等知名企业，乘车约30分钟可到光谷步行街、地铁站。酒店周边相关配套设施齐全，生活极为便利。\r\n　　汉驿风尚酒店房间装修简洁大方，用材精细考究，配置舒适齐全，是高性价比的精品商务酒店，更是您学习、商务、会客、探亲的理想选择。我们贴心为宾客营造了一个理想的旅游度假居停之所，更致力于精心为每位客人提供一种无尽的生活享受。', null, null, '128', '12');
INSERT INTO `hotel` VALUES ('4', ' 汉驿阳光旅馆（武汉汉阳国博店）', '999999997@qq.com', '027-86535918', '湖北', '武汉', '武汉 蔡甸区 鹦鹉大道410号 ，世茂锦绣长江对面。', '5', null, null, '汉驿连锁旅店鹦鹉大道店位于鹦鹉大道410号，地处武汉三镇之一“汉阳”区，紧邻世茂锦绣长江三期生活中心。邻近全国著名的古刹归元禅寺、武汉著名的音乐文化古迹古琴台、国博会展中心、中铁大桥局设计院、市第五医院等，交通十分便利。武汉铁路桥梁学校、第32中学、华中科技大学（汉阳教育中心）、汉阳区公安分局近在咫尺；优质的服务，简约的设计风格是您旅行中温馨舒适的的驿站，汉驿连锁旅店鹦鹉大道店全体员工期待您的光临！', null, null, '99.8', '2');
INSERT INTO `hotel` VALUES ('5', '汉驿连锁旅店（武汉余家头理工大店） ', '666666666@qq.com', '027-86535918', '湖北', '武汉', '武汉 武昌区 友谊大道676号华城广场 ，近招商银行。', '5', '5', '1', '武汉汉驿连锁旅店（余家头理工大店）位于友谊大道676号华城广场，超大停车场就在门口，旁边就是武汉理工大学余家头校区；；从徐东销品茂，新世界百货，中商平价仅10分钟即可到达；离武昌江滩公园仅半小时路程；湖北大学和武汉科技大学青山校区乘坐公交仅3站路；武汉火车站（高铁站）和武昌火车站乘坐4号地铁仅半小时即可到达，转乘地铁2号线即可到达百年老街江汉路步行街和光谷步行街；交通十分便利！旅店店装修干净整洁、彩色鲜明，环境温馨优雅，基础设施完善，服务贴心周到，性价比极高；客房超赞，安静安全，被褥床单洁白干净，枕头饱满充盈，让您卸去一身疲惫酣睡到天明。这里价位亲民，环境优良，值得推荐，绝对是您商务会谈、娱乐工作休闲的理想选择。', null, null, '96', '1');
INSERT INTO `hotel` VALUES ('6', ' 汉驿阳光旅馆（武汉江汉步行街店） ', '123@outlook.com', '123123214', '湖北', '武汉', ' 武汉 江汉区 水塔街江汉二路11号 ，近前进五路。', '4', null, null, '汉驿连锁旅店江汉步行街店位于武汉市江汉区江汉二路11号，紧靠繁华的江汉步行街及江汉电脑市场核心商圈，位置优越，交通便利，著名的小吃一条街吉庆街仅步行10分钟即可到达；向南步行10分钟左右即可达到万达广场、王府井百货、大洋百货等购物娱乐美食中心；向北步行20分钟是全国著名医院--协和医院、亚州心脏病医院及轻轨线；向西步行5分钟是前进四路金融街坊，邻近慧泉中学、第19中学等。汉驿连锁旅店江汉步行街店全体员工将以家人般的热情，周到的服务欢迎您的光临！', null, null, '94', '2');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `newsid` int(11) NOT NULL AUTO_INCREMENT COMMENT '新闻id',
  `title` varchar(50) DEFAULT NULL COMMENT '新闻标题',
  `content` varchar(5000) DEFAULT NULL COMMENT '新闻内容',
  `author` varchar(50) DEFAULT NULL COMMENT '作者',
  `releasetime` date DEFAULT NULL COMMENT '发布时间',
  `keyword` varchar(50) DEFAULT NULL COMMENT '关键字',
  `hid` int(11) DEFAULT NULL COMMENT '酒店编号',
  `imgpath` varchar(200) DEFAULT NULL COMMENT '新闻图片路径',
  PRIMARY KEY (`newsid`),
  KEY `fk_news_hotel` (`hid`),
  CONSTRAINT `fk_news_hotel` FOREIGN KEY (`hid`) REFERENCES `hotel` (`hid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='新闻表';

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('6', '武汉今日雷雨将至 周末伴随大风降雨 气温小幅跳水', '　大风过后，雨水紧跟。前晚的大风让很多人以为要下雨，但昨天一整天天气不错。但受冷空气影响，阵雨天气将再度展开。武汉市气象台预测，武汉周六会有雷阵雨，周日的雨可能还较大，说不定会打雷闪电，再次刮起大风。今明两天我市会迎来新一轮的降水，阵雨将率先从我省鄂西南局部地区登陆。鄂西南、江汉平原、鄂东北有中到大雨，局部暴雨；鄂西北阴天有中雨；其他地区多云转雷阵雨。 \r\n\r\n    武汉气象台预计，今明两天受高空低槽东移、中低层切变线和地面冷空气南下共同影响，我市有降水天气发生，伴有雷电等强对流天气，气温下降，北风增强；武汉今天最高气温26℃，气压可能比较低，感觉会有点难受，而当天夜里会有冷空气南下，冷暖交会将形成阵雨或雷雨。明日冷空气和4—5级北风助攻下，气温将小幅跳水，最高气温只有22℃。后天我市将回归多云为主的天气。 \r\n\r\n    气象专家说，日历已经翻到5月，雨水增多是正常的自然规律，因为雨季来了。最近武汉气温上上下下很频繁，是因为每次冷空气抵达前会推高南下的气温，即所谓的“锋前增温”，所以当连续有冷空气南下的时候，气温就会起起落落。提醒大家注意强对流天气的发生，带好雨具，以防不便；还要及时添衣保暖，以防感冒。\r\n\r\n    具体预报：今天白天：多云转雷阵雨，气温19℃—26℃，偏东风3级；今天晚上到明天白天，中到大雨，伴有雷电，气温16℃—22℃，偏北风4到5级；明天晚上到后天白天，多云到晴天，气温13℃—26℃，偏北风2到3级。', '长江日报', '2016-05-14', '天气', '3', null);
INSERT INTO `news` VALUES ('7', '武汉今日雷雨将至 周末伴随大风降雨 气温小幅跳水', '　大风过后，雨水紧跟。前晚的大风让很多人以为要下雨，但昨天一整天天气不错。但受冷空气影响，阵雨天气将再度展开。武汉市气象台预测，武汉周六会有雷阵雨，周日的雨可能还较大，说不定会打雷闪电，再次刮起大风。今明两天我市会迎来新一轮的降水，阵雨将率先从我省鄂西南局部地区登陆。鄂西南、江汉平原、鄂东北有中到大雨，局部暴雨；鄂西北阴天有中雨；其他地区多云转雷阵雨。 \r\n\r\n    武汉气象台预计，今明两天受高空低槽东移、中低层切变线和地面冷空气南下共同影响，我市有降水天气发生，伴有雷电等强对流天气，气温下降，北风增强；武汉今天最高气温26℃，气压可能比较低，感觉会有点难受，而当天夜里会有冷空气南下，冷暖交会将形成阵雨或雷雨。明日冷空气和4—5级北风助攻下，气温将小幅跳水，最高气温只有22℃。后天我市将回归多云为主的天气。 \r\n\r\n    气象专家说，日历已经翻到5月，雨水增多是正常的自然规律，因为雨季来了。最近武汉气温上上下下很频繁，是因为每次冷空气抵达前会推高南下的气温，即所谓的“锋前增温”，所以当连续有冷空气南下的时候，气温就会起起落落。提醒大家注意强对流天气的发生，带好雨具，以防不便；还要及时添衣保暖，以防感冒。\r\n\r\n    具体预报：今天白天：多云转雷阵雨，气温19℃—26℃，偏东风3级；今天晚上到明天白天，中到大雨，伴有雷电，气温16℃—22℃，偏北风4到5级；明天晚上到后天白天，多云到晴天，气温13℃—26℃，偏北风2到3级。', '长江日报', '2016-05-14', '天气', '4', null);
INSERT INTO `news` VALUES ('8', '武汉今日雷雨将至 周末伴随大风降雨 气温小幅跳水', '　大风过后，雨水紧跟。前晚的大风让很多人以为要下雨，但昨天一整天天气不错。但受冷空气影响，阵雨天气将再度展开。武汉市气象台预测，武汉周六会有雷阵雨，周日的雨可能还较大，说不定会打雷闪电，再次刮起大风。今明两天我市会迎来新一轮的降水，阵雨将率先从我省鄂西南局部地区登陆。鄂西南、江汉平原、鄂东北有中到大雨，局部暴雨；鄂西北阴天有中雨；其他地区多云转雷阵雨。 \r\n\r\n    武汉气象台预计，今明两天受高空低槽东移、中低层切变线和地面冷空气南下共同影响，我市有降水天气发生，伴有雷电等强对流天气，气温下降，北风增强；武汉今天最高气温26℃，气压可能比较低，感觉会有点难受，而当天夜里会有冷空气南下，冷暖交会将形成阵雨或雷雨。明日冷空气和4—5级北风助攻下，气温将小幅跳水，最高气温只有22℃。后天我市将回归多云为主的天气。 \r\n\r\n    气象专家说，日历已经翻到5月，雨水增多是正常的自然规律，因为雨季来了。最近武汉气温上上下下很频繁，是因为每次冷空气抵达前会推高南下的气温，即所谓的“锋前增温”，所以当连续有冷空气南下的时候，气温就会起起落落。提醒大家注意强对流天气的发生，带好雨具，以防不便；还要及时添衣保暖，以防感冒。\r\n\r\n    具体预报：今天白天：多云转雷阵雨，气温19℃—26℃，偏东风3级；今天晚上到明天白天，中到大雨，伴有雷电，气温16℃—22℃，偏北风4到5级；明天晚上到后天白天，多云到晴天，气温13℃—26℃，偏北风2到3级。', '长江日报', '2016-05-14', '天气', '5', null);
INSERT INTO `news` VALUES ('11', '汉江大道最北段高架动工 从常青将可高架直达月湖桥', '(记者韩玮 通讯员邓华国 王小乐)本月12日8时，作为武汉汉江大道最北段的组成部分，常青高架工程(发展大道以北至三环线常青立交段)首根桩基正式开钻。\r\n\r\n\r\n\r\n常青高架位于汉江大道最北端，是我市“三环十三射”快速路系统中重要的一条放射线，道路等级定位为城市快速路，采用全线高架加地面辅道的建设方式。本工程全长3.12公里，含主线高架桥2.75公里，此外还将建复兴立交及范湖立交2.818公里匝道桥。\r\n\r\n车辆从三环线常青立交匝道落地后，沿常青路约行200米地面段，在常青路与长港路相交处，上常青高架主线，整条高架一直沿常青路上方布设，跨过二环线发展大道后，高架直达青年路。\r\n\r\n施工方中建三局介绍，因为常青高架工程以北段横跨京广客运、京广货运两个铁路桥及二环线，施工工艺复杂，交通疏解压力大，同时考虑到常青花园近70万人的出行问题，为缓解交通压力，常青高架工程并未全线同步开工，而是采取北段和南段分段施工。其中，发展大道以南至青年路段已于去年12月开工，目前已完成部分桩基、承台、墩柱，即将进行箱梁施工;目前动工的是发展大道以北段，从三环线常青立交至发展大道。整个常青高架工程预计2018年完工通车。\r\n\r\n常青高架工程完工后，我市二环线、三环线之间又将新增一条全高架快速联络通道，即现有常青路上方新增一条高架快速路，届时，常青路的拥堵情况将得到大幅缓解。此外，二环线上的车辆无需下地面，可通过常青高架直接上机场高速;三环线下来的车辆也可通过常青高架直达青年路;从常青高架起，经过宝丰北路高架和宝丰路—硚口路快速路，更可全线高架直达月湖桥。\r\n\r\n常青路交通流量较大，施工势必带来一定影响。施工方表示，初步预计前期施工将保持常青路双向两车道通行，后期预计发展大道以北的常青路将封闭施工，目前，具体施工方案和交通疏解方案正在制定中，待与交管部门沟通协商后再进行发布。\r\n\r\n汉江大道目前已经开工的路段\r\n\r\n常青高架 (从三环线常青立交经常青路接青年路范湖)\r\n\r\n宝丰北路高架\r\n\r\n(从常青路范湖立交跨武汉中央商务区至建设大道)\r\n\r\n宝丰路、硚口路快速化改造 (建设大道至京汉大道)\r\n\r\n京汉大道过月湖桥至梅子山通道\r\n\r\n(其中新建一座桥与月湖桥平行，名叫江汉四桥拓宽工程)\r\n\r\n墨水湖大桥——三环线\r\n\r\n汉江大道已全线开工\r\n\r\n2018年完工通车\r\n\r\n记者获悉，汉江大道将于2018年完工通车。\r\n\r\n汉江大道是我市继武汉大道、长江大道后的又一条南北大通道，北起三环线常青立交、南至三环线江城大道立交，全长约15公里，其中常青路至硚口路段采取全线高架。汉江大道是纵贯汉口、汉阳中心区的快速进出城大通道，也是我市主城区内联系一环、二环、三环的重要快速通道。', '长江网', '2016-05-14', '汉江大道', '2', null);
INSERT INTO `news` VALUES ('13', '苹果确认iTunes存在BUG 曾自动删除122G音乐文件', '　【TechWeb报道】前不久，自由作曲家James Pinkstone在网络上发表文章，表示iTunes自己删除了它保存在笔记本电脑上的122GB音乐文件，为此他非常苦恼，之后有不少人表示遇到了相似的问题，并且引起了广泛关注。\r\n\r\n　　之后苹果支持团队开始和他接触，并且做出结论由于Apple Music和iTunes删除处理了这些音乐文件，只是由于Apple Music存在兼容性BUG。\r\n\r\n　　之后苹果回应“用户报告反馈储存在电脑上的音乐文件在未经他们许可的情况下删除这是个别案例。目前我们已经认真对待这些报告因为我们知道音乐对于消 费者来说是有多么的重要，因此我们的团队已经着手追踪导致这个问题的原因。目前我们无法重现这个问题，但是我们将会在下周早些时候发布iTunes更新包 含额外的防护措施。如果用户还是经历了这个问题，可以联系AppleCare。”\r\n\r\n　　也就是说之后的更新包当中将会包含这个问题的解决和防护措施，但并不确定一定可以修复这个BUG。', 'TechWeb   ', '2016-05-14', ' itunes bug', '3', null);

-- ----------------------------
-- Table structure for olist
-- ----------------------------
DROP TABLE IF EXISTS `olist`;
CREATE TABLE `olist` (
  `oid` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `hid` int(11) DEFAULT NULL COMMENT '酒店id',
  `rid` int(11) DEFAULT NULL COMMENT '房间id',
  `indate` date DEFAULT NULL COMMENT '入住时间',
  `inmemo` varchar(100) DEFAULT NULL COMMENT '备注',
  `innumber` int(3) DEFAULT NULL COMMENT '入住人数',
  `inday` int(3) DEFAULT NULL COMMENT '入住天数',
  `outdate` date DEFAULT NULL COMMENT '退房时间',
  `ammount` float DEFAULT NULL COMMENT '应交费用',
  `odealid` int(11) DEFAULT NULL COMMENT '处理人id',
  `odeal` varchar(50) DEFAULT NULL COMMENT '订单状态',
  PRIMARY KEY (`oid`),
  KEY `ouid_useruid` (`uid`),
  KEY `ohid_hotelhid` (`hid`),
  KEY `orid_roomrid` (`rid`),
  KEY `omid_uid` (`odealid`),
  CONSTRAINT `ohid_hotelhid` FOREIGN KEY (`hid`) REFERENCES `hotel` (`hid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `omid_uid` FOREIGN KEY (`odealid`) REFERENCES `user` (`uid`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `orid_roomrid` FOREIGN KEY (`rid`) REFERENCES `room` (`roomid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ouid_useruid` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of olist
-- ----------------------------
INSERT INTO `olist` VALUES ('7', '1', '3', '15', '2016-01-25', null, null, null, '2016-01-26', '488', null, null);

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `roomid` int(11) NOT NULL AUTO_INCREMENT COMMENT '房间id，整个表的id',
  `rid` char(5) DEFAULT NULL COMMENT '房间id；房间号',
  `hid` int(11) DEFAULT NULL COMMENT '酒店id',
  `rtype` varchar(20) DEFAULT NULL COMMENT '房间类型',
  `rarea` int(11) DEFAULT NULL COMMENT '房间大小',
  `rprice` float DEFAULT '0' COMMENT '房间价格',
  `rpattern` varchar(500) DEFAULT NULL COMMENT '房间格局',
  `customs` tinyint(4) DEFAULT NULL COMMENT '房间可住人数',
  `rstatus` char(2) DEFAULT NULL COMMENT '房间状态,0 busy，1ready',
  `total` int(5) DEFAULT NULL COMMENT '房间总数',
  `imagepath` varchar(100) DEFAULT NULL,
  `available` int(5) DEFAULT NULL COMMENT '可用房间数',
  PRIMARY KEY (`roomid`),
  KEY `roomhid_hotelid` (`hid`) USING BTREE,
  CONSTRAINT `roomhid_hotelhid` FOREIGN KEY (`hid`) REFERENCES `hotel` (`hid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='房间表';

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES ('9', '1005', '2', '2张单人床', '199', '488', '标准双床房', '2', '1', '2', '/HotelManagerSystem/resourse/images/items2/item1.jpg', '2');
INSERT INTO `room` VALUES ('10', '1006', '2', '2张单人床', '199', '488', '标准双床房', '2', '1', '2', '/HotelManagerSystem/resourse/images/items2/item2.jpg', '2');
INSERT INTO `room` VALUES ('11', '1001', '3', '1张大号双人床 ', '170', '500.6', '标准大床房', '3', '1', '2', '/HotelManagerSystem/resourse/images/items2/item3.jpg', '2');
INSERT INTO `room` VALUES ('12', '1002', '3', '1张单人床  和  1张大号双人床', '106', '488', '特色家庭房', '3', '1', '2', '/HotelManagerSystem/resourse/images/items2/item4.jpg', '1');
INSERT INTO `room` VALUES ('13', '1003', '3', '1张大号双人床 ', '170', '500.6', '标准大床房', '3', '1', '2', '/HotelManagerSystem/resourse/images/items2/item5.jpg', '2');
INSERT INTO `room` VALUES ('14', '1004', '3', '1张单人床  和  1张大号双人床', '106', '488', '特色家庭房', '3', '0', '2', '/HotelManagerSystem/resourse/images/items2/item6.jpg', '1');
INSERT INTO `room` VALUES ('15', '1005', '3', '2张单人床', '199', '488', '标准双床房', '2', '1', '2', '/HotelManagerSystem/resourse/images/items2/item7.jpg', '2');
INSERT INTO `room` VALUES ('16', '1006', '3', '2张单人床', '199', '488', '标准双床房', '2', '1', '2', '/HotelManagerSystem/resourse/images/items2/item8.jpg', '2');
INSERT INTO `room` VALUES ('17', '1001', '4', '1张大号双人床 ', '170', '500.6', '标准大床房', '3', '1', '2', '/HotelManagerSystem/resourse/images/items2/item9.jpg', '2');
INSERT INTO `room` VALUES ('18', '1002', '4', '1张单人床  和  1张大号双人床', '106', '488', '特色家庭房', '3', '1', '2', '/HotelManagerSystem/resourse/images/items2/item10.jpg', '1');
INSERT INTO `room` VALUES ('19', '1003', '4', '1张大号双人床 ', '170', '500.6', '标准大床房', '3', '1', '2', '/HotelManagerSystem/resourse/images/items2/item11.jpg', '2');
INSERT INTO `room` VALUES ('20', '1004', '4', '1张单人床  和  1张大号双人床', '106', '488', '特色家庭房', '3', '0', '2', '/HotelManagerSystem/resourse/images/items2/item12.jpg', '1');
INSERT INTO `room` VALUES ('21', '1005', '4', '2张单人床', '199', '488', '标准双床房', '2', '1', '2', '/HotelManagerSystem/resourse/images/items2/item1.jpg', '2');
INSERT INTO `room` VALUES ('22', '1006', '4', '2张单人床', '199', '488', '标准双床房', '2', '1', '2', '/HotelManagerSystem/resourse/images/items2/item2.jpg', '2');
INSERT INTO `room` VALUES ('23', '1007', '4', ' 2张单人床  或 1张大号双人床', '964', '488', '聚贤荟豪华房', '2', '1', '1', '/HotelManagerSystem/resourse/images/items2/item3.jpg', '1');
INSERT INTO `room` VALUES ('24', '1001', '5', '1张大号双人床 ', '170', '500.6', '标准大床房', '3', '1', '2', '/HotelManagerSystem/resourse/images/items2/item4.jpg', '2');
INSERT INTO `room` VALUES ('25', '1002', '5', '1张单人床  和  1张大号双人床', '106', '488', '特色家庭房', '3', '1', '2', '/HotelManagerSystem/resourse/images/items2/item5.jpg', '1');
INSERT INTO `room` VALUES ('26', '1003', '5', '1张大号双人床 ', '170', '500.6', '标准大床房', '3', '1', '2', '/HotelManagerSystem/resourse/images/items2/item1.jpg', '2');
INSERT INTO `room` VALUES ('27', '1004', '5', '1张单人床  和  1张大号双人床', '106', '488', '特色家庭房', '3', '0', '2', '/HotelManagerSystem/resourse/images/items2/item6.jpg', '1');
INSERT INTO `room` VALUES ('28', '1005', '5', '2张单人床', '199', '488', '标准双床房', '2', '1', '2', '/HotelManagerSystem/resourse/images/items2/item7.jpg', '2');
INSERT INTO `room` VALUES ('29', '1006', '5', '2张单人床', '199', '488', '标准双床房', '2', '1', '2', '/HotelManagerSystem/resourse/images/items2/item8.jpg', '2');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `uname` varchar(50) NOT NULL COMMENT '用户名',
  `upwd` varchar(100) DEFAULT NULL COMMENT '登录密码',
  `realname` varchar(20) DEFAULT NULL COMMENT '真实姓名',
  `ugender` char(3) DEFAULT NULL COMMENT '用户性别',
  `idnumber` char(18) DEFAULT NULL COMMENT '身份证号码',
  `utel` varchar(20) DEFAULT NULL COMMENT '手机号码',
  `uemail` varchar(20) DEFAULT NULL COMMENT '电子邮箱',
  `level` tinyint(1) DEFAULT '0' COMMENT '用户级别',
  `money` double DEFAULT '0' COMMENT '账户余额',
  `imgpath` varchar(200) DEFAULT NULL COMMENT '图片路径',
  PRIMARY KEY (`uid`),
  KEY `level` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '001', '111', null, '男', null, null, null, '2', '998022.799987793', null);
INSERT INTO `user` VALUES ('2', '002', '002', '002', '男', null, '12345678902', null, '1', '1000', null);
INSERT INTO `user` VALUES ('3', '003', '003', '003', '女', null, '12345678903', '123@outlook.com', '0', '100', null);
INSERT INTO `user` VALUES ('11', '12313', '13123', '13123', '男', null, '132123', '1312312', '2', null, null);
INSERT INTO `user` VALUES ('12', '123', '123', '123', '男', null, '132123', '132', '2', null, null);

-- ----------------------------
-- Procedure structure for updateroom
-- ----------------------------
DROP PROCEDURE IF EXISTS `updateroom`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateroom`()
BEGIN

update room ,(SELECT COUNT(*) AS count, hid, rpattern FROM room AS rm1 GROUP BY hid , rpattern ) AS B  SET total = B.count   WHERE room.hid = B.hid AND room.rpattern = B.rpattern;
UPDATE room SET total = 0 WHERE total is NULL;
UPDATE room ,
(SELECT rm2.hid ,rm2.rpattern,IFNULL(B.count,0) AS count1, rm2.roomid
 FROM room as rm2
 LEFT JOIN 
(
SELECT COUNT(*) AS count, hid, rpattern
FROM room AS rm1 WHERE rstatus = '1'
 GROUP BY hid , rpattern 
) AS B 
ON rm2.hid = B.hid AND rm2.rpattern = B.rpattern ) AS availabletable 
SET room.available = availabletable.count1 WHERE room.roomid = availabletable.roomid ;

END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `avaliable_num`;
DELIMITER ;;
CREATE TRIGGER `avaliable_num` BEFORE INSERT ON `olist` FOR EACH ROW update room set available = available -1 where room.hid = NEW.hid and room.rid =  NEW.rid
;;
DELIMITER ;
