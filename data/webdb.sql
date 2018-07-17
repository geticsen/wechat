/*
 Navicat MySQL Data Transfer

 Source Server         : fs
 Source Server Type    : MySQL
 Source Server Version : 50560
 Source Host           : localhost:3306
 Source Schema         : webdb

 Target Server Type    : MySQL
 Target Server Version : 50560
 File Encoding         : 65001

 Date: 17/07/2018 16:45:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ansuser
-- ----------------------------
DROP TABLE IF EXISTS `ansuser`;
CREATE TABLE `ansuser`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` char(15) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `password` char(15) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ansuser
-- ----------------------------
INSERT INTO `ansuser` VALUES (1, '1000', '1234', NULL);
INSERT INTO `ansuser` VALUES (16, '1000', '1234', '2018-07-16 15:43:28');
INSERT INTO `ansuser` VALUES (17, '1000', '1234', '2018-07-16 15:51:58');
INSERT INTO `ansuser` VALUES (18, '1000', '1234', '2018-07-16 15:52:02');
INSERT INTO `ansuser` VALUES (19, '1001', '1234', '2018-07-16 15:57:59');
INSERT INTO `ansuser` VALUES (20, '1321', '1234', '2018-07-16 15:58:46');
INSERT INTO `ansuser` VALUES (21, '1322', '1234', '2018-07-16 15:59:09');
INSERT INTO `ansuser` VALUES (22, '1002', '13131', '2018-07-16 16:12:20');
INSERT INTO `ansuser` VALUES (23, '1003', '13131', '2018-07-16 16:16:44');
INSERT INTO `ansuser` VALUES (24, '1005', '13131', '2018-07-16 16:19:29');
INSERT INTO `ansuser` VALUES (25, '1003', '286348794', '2018-07-16 17:15:47');
INSERT INTO `ansuser` VALUES (26, '1006', '258', '2018-07-16 17:20:18');

-- ----------------------------
-- Table structure for msg
-- ----------------------------
DROP TABLE IF EXISTS `msg`;
CREATE TABLE `msg`  (
  `message` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of msg
-- ----------------------------
INSERT INTO `msg` VALUES ('　与你相约，是一种清浅的禅意，而我，便在红尘最深处的禅意里，等你', 1);
INSERT INTO `msg` VALUES ('　窗外，细雨的绵柔音律，偶尔听听，是清宁的，洒落在我的庭院，也肥了那株茶树的花枝。', 2);
INSERT INTO `msg` VALUES ('想来，流年暗换，三月已不是那段枯瘦的光阴。旧年的那首《葬花吟》，只剩短歌余韵，如一阕殇词，清浅地沉落，忧伤而不失风雅。', 3);
INSERT INTO `msg` VALUES ('与你相约，等待一场即将到来的花期，于我，是一个小小的欢喜，因为，我偶尔地想你，是一种忧伤的美丽！', 4);
INSERT INTO `msg` VALUES ('春雨，滴落的不仅是水滴，还有旧年那一朵茶花的香韵；雨里，放眼循着美人香草的小径，寻一朵花魂的归期。或许，归期是遥遥无期，而去日却是皁经远去，给人留下或多或少感伤的憾意。是呵，遥望那些旧年里走散的日月，情感总在流放中，流放成一种固执，在每一场花落之后的日子里，等待再一次花开的声音。', 5);
INSERT INTO `msg` VALUES ('如果，可以用一生的打坐，笃定成一种禅意，那么，我深信，一直等下去，等待一个人一场天荒地老的爱情。', 6);
INSERT INTO `msg` VALUES ('与你相约，将芳华正好的青春，等待成一个暮年苍苍的老人。晨钟与暮鼓，小楼与长亭，红颜与风情，在写给你的文字里，字字余香，会成为那些岁月里永恒的风景，让我记得。', 7);
INSERT INTO `msg` VALUES ('美人香草，浅窗兰叶，茶花香魂，蓝鸟声声，和着三月的雨声绵柔，是否，你能听见，我的心语依旧一如花开的声音。', 8);
INSERT INTO `msg` VALUES ('与你相约，茶花开时，人已来。', 9);
INSERT INTO `msg` VALUES ('是谁，在一纸浅墨文字里安静等待？是谁，在一路时光里仆仆风尘？又是谁，在一叶轻舟里只影远行？', 10);
INSERT INTO `msg` VALUES ('那个人，是清浅岁月里最沉重的那一滴雨，在记忆的天空，季季滴落，季季来去。我流连在三月的雨季，看见永恒的天空已然由暗灰变作了烟青，看见蛮荒的塬上渐渐滋生出生命嫩绿的芽子，写意成一帘梵净山里早春的风景。一树茶花，朦胧烟雨，借着三月乍暖还寒的春光，我分明看见，晶莹的泪珠两行，悄然跌落，是滑落过岁月绸帕上的清冽水迹。', 11);
INSERT INTO `msg` VALUES ('很多时候，我想，你一如深山里的山茶，你一如幽潭里的素莲，在未至的花期里，幽隐着，而我，便在与你相约的时光里，对生活心怀敬意，--期待，在那一个花期来临的日子，一睹你花开的样子。', 12);
INSERT INTO `msg` VALUES ('如此，我退居于山野小村，营生着一颗素朴的心，在不计时长的小村时光里，热爱着平凡的事情，热爱陌生人家的爽朗笑声，热爱市井人生的无聊嬉戏，也热爱小猫小狗在日头下的慵懒困意，偶尔也吃茶养花，偶尔也读书听雨，沉湎于日月星辰、花草田间、露水晨昏，在低温的日子，不急不缓，深情地活着！', 13);
INSERT INTO `msg` VALUES ('与你，相约，是一种清浅的禅意，因为，想你，是一种忧伤的美丽！', 14);
INSERT INTO `msg` VALUES ('初春的雨，总是会落进心里的某个地方，或者落进某一个不经意间涌动的念里，天青的颜色，乍暖还寒时候，最难将息。就如看见细雨飘零，总会令人无端想起旧年的黄梅子黄梅雨，还有一个遥远北方的你。', 15);
INSERT INTO `msg` VALUES ('来于大千，行于世间，或许，每一个人都会有极致的孤独，每一个人都会有深眷的时刻，都有一个可以唯一与之相约的人，那个人，或许在天边，或许在近前，而那一款独一的深情，却是极致到不悔，就算，真正能陪着自己走完人生的，只有时间最钟情。', 16);
INSERT INTO `msg` VALUES ('世界大无穷，可融芸芸众生，你与我，恰恰都是众生里的两个，就如两枚山茶花，原本该是各自幽香，不近风尘，不染亲疏，但这世界偏是又小如犄墙，在墙影的转角处，那个彷如山茶花开的你，非得让我遇见，从此，有了牵连，与你有关，让我活着的深情，细腻而丰盈。', 17);
INSERT INTO `msg` VALUES ('你是一个怎样的女子呀？在即将来临的花期，会像一朵艳丽的山茶，繁丽的盛开在我写给你的那一纸文字幽角，在三月的时光里，繁荣我的那些没有藩篱遮拦的往事茶园，在第一朵茶花绽开的时候，与你温上一壶梵净山新出的绿茶，游历在武陵正源海拔高度1000米处的茶树茶花茶叶的每一寸清幽世界，惬意时弹笑，寄情江湖，悲凉时潸泪，快意人生，一如季节更替，枯荣自觉。', 18);
INSERT INTO `msg` VALUES ('　我想念你，在春茶采收的季节，是如此深情的；我想念你，在那一朵茶花飘香的日子，是如此忧伤的；我想念你，在梵净山悠悠的梵唱里，是如此清浅的。', 19);
INSERT INTO `msg` VALUES ('与你相约，是一种清浅的禅意，而我，便在红尘最深处的禅意里，等你！', 20);
INSERT INTO `msg` VALUES ('时间如来，不期而至，世界如是，相见恨晚，若能守得一隅清明，只许你与我共度，做梵净山里的飞鸟相与还，朝花夕拾，煮茶焚香，杖藜执酒，白马轻舟，君可愿？', 21);
INSERT INTO `msg` VALUES ('日夜思念的明月映入眼帘\r\n慌忙的寻找黑夜的一边\r\n月光浸透了大地的脸\r\n月光下的大地羞羞的笑了\r\n秋冬的月夜悲凉残愁\r\n萧瑟的风吹打着你的身体\r\n充满怨气的树叶阻碍你的旅途\r\n这样的月夜充满寂静\r\n充满伤悲，充满思乡人的眼泪\r\n有点失落，月色残破\r\n泛出黑黑的，金黄的脸\r\n月夜愁淡着脸，在没有人凝记的一天\r\n消磨了属于自己生命的一段\r\n凝视着今晚的月亮，心中交集百感\r\n钟爱的人不多，月夜风景又如何\r\n借着茫茫的月色抒发伤感\r\n月夜美，愚人不知又如何', 22);
INSERT INTO `msg` VALUES (' 当写下煮一壶阳光暖心的文字，就会想到煮一壶白雪解渴的日子。\r\n在如歌的岁月里，为了索取训练基地的气象资料，与血气方刚的战友驻扎在草原旁一个孤独的村落。“小雪封地，大雪封河”此时的小雪刚过，已是零下二十多度。极度的寒彻，终于唤来了一场二十年不遇的大雪。根据我们的气象资料显示，大雪仍在继续。老乡们说，到了冬季，这里的人就要靠煮雪用水。送走漫长的冬季，人们的肌肤就会变得细腻红润，因为，雪之为水，水之甜美，不仅清洁用水，且可滋润肌肤。我们除了把探空气球放入高空，观测地面气象要素，其余的时间，多半来“煮雪”度日。', 23);
INSERT INTO `msg` VALUES ('煮阳光暖心。不仅是一种人生的态度，更有其妙不可言的乐趣。比如把阳光装进壶里，文火慢煮，水就会浮在层面，能量沉淀其下方。此刻，就会再现一种“此中有妙义，孤然不凄凉”的意境。', 24);
INSERT INTO `msg` VALUES ('世界真奇怪，有的人衣食无忧，财富五车，却郁郁寡寡，在阴霾中走向岁月的深处。因为，他们从未打开过心灵之窗，没有汲取阳光的暖。即便炎炎夏日，心田也是一片寒彻，让原本生机的灵魂慢慢枯萎，甚至死亡。', 25);
INSERT INTO `msg` VALUES ('一位年逾花甲的孤寡老者，曾居住在小区附近一间小屋，阴暗潮湿，靠捡废品为生。他就是一位“煮阳光”的人。艰苦的生活，孤寡的人生，却不流露丝毫的悲戚和孤苦。那仅有的一扇小窗，迎来一轮朝日，尚未黎明，就可听到半导体的新闻播报，河南豫剧。夜色渐浓，温柔的灯光泻在小屋的角角落落。春节，我路过门前问他，年货办好了吗？他说：很丰盛，四斤牛羊肉，五瓶二锅头，一块豆腐，几棵白菜，还有宽粉。', 26);
INSERT INTO `msg` VALUES ('孤独的老者，用阳光点亮了每一个日子的晚霞，温暖了每一个日子的黎明。用心“煮”出来的阳光，是可以传递的，也温暖了我的心房。', 27);
INSERT INTO `msg` VALUES ('人生之旅，难免会有疾病，困苦，遗憾，苦别的困扰。然而，只要坚持煮阳光暖心，无论岁月里的阴霾何以厚重，每一个日子也会绚烂多姿，不乏希望的。', 28);
INSERT INTO `msg` VALUES (' 羊城的冬天，像春天一样，阳光灿烂，晴空万里，百花齐放，绿树精神抖擞，小溪缓缓流淌，湖水清澈见底。冬天，公园里花香四溢，菊花奔放，让游人一饱眼福。岁月流走，却没有带走冬花的温柔；流年似水，却浸不老菊花的倾国倾城；时光飞逝，却让短暂的花香越发弥足珍贵。', 29);
INSERT INTO `msg` VALUES ('菊花盛开，五彩缤纷。紫的、白的、红的、黄的，大片大片的怒放，让人目不暇接。有的像倒挂的小伞；有的像斑斓的烟花；有的像风采正盛的霓裳羽衣。花香满园，流光溢彩，花型独特，美不胜收。', 30);

-- ----------------------------
-- Table structure for qs
-- ----------------------------
DROP TABLE IF EXISTS `qs`;
CREATE TABLE `qs`  (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `A` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `B` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `C` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `D` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `anwser` varchar(5) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qs
-- ----------------------------
INSERT INTO `qs` VALUES (1, '下列说法有误的一项是：（）', '《论语》是春秋战国时期儒家学派的创始人孔子所著的一本书，记录的是孔子的言行。', '《史记》是我国第一部纪传体通史，全书一百三十篇。作者是西汉史学家、文学家司马迁。被誉为“史家之绝唱，无韵之离骚”。', '王羲之是东晋杰出的书法家，被称为“书圣”，他的《兰亭集序》帖是我国古代书法艺术最灿烂的瑰宝，被称为“天下第一行书”。', '莫泊桑是法国作家，被称为短篇小说的巨匠，代表作品有《我的叔叔于勒》《项链》等。', 'A');
INSERT INTO `qs` VALUES (2, '下列说法有误的一项是：（）', '小说以塑造人物形象为中心，通过完整的故事情节的叙述和典型的环境描写来反映社会生活。', '诗歌在漫长的历史进程中，演化出许多不同的形式。诗、词、曲，从文学角度看，都是诗歌。但赋除外。', '剧本通常包括两个部分：一是剧作家的舞台提示，一是人物自身的台词。', '散文在写法上往往从细小处落笔，在细微的描绘中见精彩。朱自清的《学科网(www.zxxk.com)--国内最大的教育资源门户，提供试卷、教案、课件、论文、素材及各类教学资源下载，还有大量而丰富的教学相关资讯！背影》一文就采用了这样的写法。', 'B');
INSERT INTO `qs` VALUES (3, '蚂蚁能够安全过冬是因为蚂蚁储存了足够的食物。而蟋蟀因为没有储存食物，冬天里被饿死、冻死的不计其数。那么，是什么原因让蟋蟀没能储存食物呢？', '没有仓库；', '演出去了', '打仗去了', '玩去了', 'A');
INSERT INTO `qs` VALUES (4, '奥林匹克运动会的发源地是:( )', '古罗马', '古希腊', '古代中国', '古巴比伦', 'B');
INSERT INTO `qs` VALUES (5, '\"发展体育运动,增强人民体质\"是我国哪位领导人的题词?(  )', '毛泽东', '周恩来', '邓小平', '贺龙', 'A');
INSERT INTO `qs` VALUES (6, '我国最早在奥运会上夺金牌的是哪位运动员?()', '李宁', '许海峰', '高凤莲', '吴佳怩', 'B');
INSERT INTO `qs` VALUES (7, '咖啡的故乡是哪里?( )', '亚洲', '美洲', '大洋洲', '非洲', 'D');
INSERT INTO `qs` VALUES (8, '我国少数民族分布最多的省份是:( )', '广西', '西藏 ', '云南', '四川', 'C');
INSERT INTO `qs` VALUES (9, '世界上最长的运河是哪一条?( )', '中国京杭大运河', '苏伊士运河', '巴拿马运河', '灵渠', 'A');
INSERT INTO `qs` VALUES (10, '被称为\"画圣\"的古代画家是:( )', '吴道子', '顾恺之', '韩干', '张择端', 'A');
INSERT INTO `qs` VALUES (11, '我国发现最早的纸币是在哪个时期?( )', '唐朝', '宋朝', '元朝', '明朝', 'B');
INSERT INTO `qs` VALUES (12, '到了明朝已形成完备的封建科举考试制度，共分四级。下边排列的四级考试哪项正确?()', '院试──会试──乡试──殿试', '乡试──会试──院试──殿试', '乡试──院试──会试──殿试', '院试──乡试──会试──殿试', 'D');
INSERT INTO `qs` VALUES (13, '红军长征中,哪次战役最突出反映毛泽东军事思想和指挥才能?( )', '四渡赤水', '飞夺沪定桥', '抢渡大渡河', '直罗镇战役', 'A');
INSERT INTO `qs` VALUES (14, '我国第一颗氢弹研制成功是在哪一年?( )', '1960', '1962', '1964', '1967', 'D');
INSERT INTO `qs` VALUES (15, '以下哪一个是联合国安理会常任理事国之一?( )', '意大利', '法国', '德国', '日本', 'B');
INSERT INTO `qs` VALUES (16, '杜甫《望岳》：“岱宗夫如何，齐鲁青未了”中的“岱宗”指的是( )', '华山', '恒山', '泰山', '嵩山', 'C');
INSERT INTO `qs` VALUES (17, '被称为我国最大的古典艺术宝库的石窟是哪一个?( )', '甘肃敦煌莫高窟', '新疆千佛洞', '云岗石窟 ', '龙门石窟', 'A');
INSERT INTO `qs` VALUES (18, '冬天倒开水时，容易爆破的杯子是：( )', '很薄的玻璃杯', '很厚的玻璃杯', '越高的', '没区别', 'B');
INSERT INTO `qs` VALUES (19, '《孙子算经》中的“物不知数”： “今有一些物不知其数量。如果三个三个地去数它，则最后还剩二个;如果五个五个地去数它，则最后还剩三个;如果七个七个地去数它，则最后也剩二个。问：这些物至少有多少?”( )', '15', '21', '23', '25', 'C');
INSERT INTO `qs` VALUES (20, '洲际导弹的射程一般在多少公里以上?(  )', '一百', '一千', '一万', '十万', 'C');
INSERT INTO `qs` VALUES (21, '古代军事家曹操是哪个时期的人物?( )', '西汉', '东汉', '三国', '南北朝', 'B');
INSERT INTO `qs` VALUES (22, '成语\"闻鸡起舞\"\"中流击楫\"是出自哪个古代将领的故事?', '岳飞', '戚继光', '祖逖', '郑成功', 'C');
INSERT INTO `qs` VALUES (23, '目前世界纪元(公元前后的划分)的方法是以什么为标准:( )', '伊斯兰教', '佛教', '犹太教 ', '耶稣基督教', 'D');
INSERT INTO `qs` VALUES (24, '美国第一任总统是谁?( )', '林肯', '华盛顿', '罗斯福', '杜鲁门', 'B');
INSERT INTO `qs` VALUES (25, '我国是在哪个时期进入奴隶社会的?( )', '夏', '商 ', '战国', '秦', 'A');
INSERT INTO `qs` VALUES (26, '下列农民起义哪次是洪秀全领导的:( )', '大泽乡起义', '黄巾起义', '赤眉起义', '金田起义', 'D');
INSERT INTO `qs` VALUES (27, '\"文房四宝\"中的毛笔是谁发明的?(  )', '乐毅', '闻仲', '蒙恬', '刘伯温', 'C');
INSERT INTO `qs` VALUES (28, '下列著名宫殿哪个位于英国?(  )', '故宫', '凡尔赛宫', '白金汉宫', '克里姆林宫', 'C');
INSERT INTO `qs` VALUES (29, '史书《汉书》是哪位史学家所著?( )', '司马迁', '司马光', '左丘明', '班固', 'D');
INSERT INTO `qs` VALUES (30, '吉林省抚松县被人们称为是哪种药材之乡?', '当归', '枸杞', '人参', '田七', 'C');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `dept` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `age` int(3) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1004 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1000, '王顺', '计算机', 18, '湖南');
INSERT INTO `student` VALUES (1001, '江瓜皮', '计算机', 19, '湖南');
INSERT INTO `student` VALUES (1002, '涛涛狗', '计算机', 19, '湖南');
INSERT INTO `student` VALUES (1003, '李瓜皮', '计算机', 20, '湖南');

-- ----------------------------
-- Table structure for uscore
-- ----------------------------
DROP TABLE IF EXISTS `uscore`;
CREATE TABLE `uscore`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(11) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `score` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of uscore
-- ----------------------------
INSERT INTO `uscore` VALUES (9, '1000', '0', '1970-01-01 08:00:00');
INSERT INTO `uscore` VALUES (10, '1000', '50', '1970-01-01 08:00:00');
INSERT INTO `uscore` VALUES (11, '1000', '0', '1970-01-01 08:00:00');
INSERT INTO `uscore` VALUES (12, '1000', '0', '1970-01-01 08:00:00');
INSERT INTO `uscore` VALUES (13, '1000', '25', '1970-01-01 08:00:00');
INSERT INTO `uscore` VALUES (14, '1000', '50', '1970-01-01 08:00:00');
INSERT INTO `uscore` VALUES (15, '1000', '75', '1970-01-01 08:00:00');
INSERT INTO `uscore` VALUES (16, '1000', '50', '1970-01-01 08:00:00');
INSERT INTO `uscore` VALUES (17, '1000', '50', '1970-01-01 08:00:00');
INSERT INTO `uscore` VALUES (18, '1000', '50', '1970-01-01 08:00:00');
INSERT INTO `uscore` VALUES (19, '1000', '50', '1970-01-01 08:00:00');
INSERT INTO `uscore` VALUES (20, '1000', '50', '1970-01-01 08:00:00');
INSERT INTO `uscore` VALUES (21, '1000', '75', '1970-01-01 08:00:00');
INSERT INTO `uscore` VALUES (22, '1000', '25', '1970-01-01 08:00:00');
INSERT INTO `uscore` VALUES (23, '1000', '25', '1970-01-01 08:00:00');
INSERT INTO `uscore` VALUES (24, '1000', '25', '1970-01-01 08:00:00');
INSERT INTO `uscore` VALUES (25, '1000', '100', '1970-01-01 08:00:00');
INSERT INTO `uscore` VALUES (26, '1000', '25', '1970-01-01 08:00:00');
INSERT INTO `uscore` VALUES (27, '1000', '0', '2018-07-16 10:01:36');
INSERT INTO `uscore` VALUES (28, '1000', '25', '2018-07-16 10:05:33');
INSERT INTO `uscore` VALUES (29, '1000', '25', '2018-07-16 10:45:22');
INSERT INTO `uscore` VALUES (30, '1000', '75', '2018-07-16 10:54:11');
INSERT INTO `uscore` VALUES (31, '1000', '75', '2018-07-16 10:56:14');
INSERT INTO `uscore` VALUES (32, '1000', '100', '2018-07-16 11:06:22');
INSERT INTO `uscore` VALUES (33, '1000', '50', '2018-07-16 11:06:42');
INSERT INTO `uscore` VALUES (34, '1000', '50', '2018-07-16 11:06:58');
INSERT INTO `uscore` VALUES (35, '1000', '25', '2018-07-16 11:09:43');
INSERT INTO `uscore` VALUES (36, '1000', '0', '2018-07-16 11:10:40');
INSERT INTO `uscore` VALUES (37, '1000', '100', '2018-07-16 11:13:04');
INSERT INTO `uscore` VALUES (38, '1000', '0', '2018-07-16 11:22:18');
INSERT INTO `uscore` VALUES (39, '1000', '25', '2018-07-16 11:22:23');
INSERT INTO `uscore` VALUES (40, '1000', '100', '2018-07-16 11:23:20');
INSERT INTO `uscore` VALUES (42, '1003', '25', '2018-07-16 16:18:25');
INSERT INTO `uscore` VALUES (43, '1003', '25', '2018-07-16 16:18:29');
INSERT INTO `uscore` VALUES (44, '1003', '25', '2018-07-16 16:18:41');
INSERT INTO `uscore` VALUES (45, '1003', '100', '2018-07-16 16:18:59');
INSERT INTO `uscore` VALUES (46, '1005', '50', '2018-07-16 16:19:33');
INSERT INTO `uscore` VALUES (47, '1000', '0', '2018-07-16 16:52:47');
INSERT INTO `uscore` VALUES (48, '1000', '25', '2018-07-16 17:05:43');
INSERT INTO `uscore` VALUES (49, '1003', '0', '2018-07-16 17:16:00');
INSERT INTO `uscore` VALUES (50, '1003', '100', '2018-07-16 17:17:31');
INSERT INTO `uscore` VALUES (51, '1003', '50', '2018-07-16 17:18:36');
INSERT INTO `uscore` VALUES (52, '1003', '50', '2018-07-16 17:18:53');
INSERT INTO `uscore` VALUES (53, '1006', '0', '2018-07-16 17:20:33');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` char(15) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `name` char(10) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `sex` char(2) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('001', '王顺', '男', 18);

SET FOREIGN_KEY_CHECKS = 1;
