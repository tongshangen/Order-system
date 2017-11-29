/*
Navicat MySQL Data Transfer

Source Server         : information
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : order

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-11-29 15:48:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `goods_list`
-- ----------------------------
DROP TABLE IF EXISTS `goods_list`;
CREATE TABLE `goods_list` (
  `gId` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `gNameZH` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '商品名称(中文)',
  `gNameEN` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '商品名称(英文)',
  `gClass` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '商品分类',
  `gTag` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '商品标签',
  `gDesc` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品描述',
  `gPrice` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品价格',
  `gSpec` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品规格',
  `gDetalisPic` text CHARACTER SET utf8 COMMENT '商品详情图片',
  `gPicture` text CHARACTER SET utf8 COMMENT '商品图片',
  `gIntro` text CHARACTER SET utf8 COMMENT '商品介绍',
  `isPutaway` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '是否上架',
  `key` int(10) unsigned DEFAULT NULL COMMENT 'key',
  PRIMARY KEY (`gId`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of goods_list
-- ----------------------------
INSERT INTO `goods_list` VALUES ('6', '环游世界·秋冬季蛋糕', 'Around The World Cake', '蛋糕', '推荐', '精选芝士、慕斯、鲜果与巧克力系列', '198', '1磅，2磅，3磅，5磅', '', './src/img/b002.jpg', '手工打发而成的进口鲜奶油,口感绵密，精致细腻,这份雪白让你有如获至宝的幸福感,进口的黑巧克力,通过精致的工艺,将巧克力的香醇甜蜜发挥到极致,每一口都倍感甜蜜', '上架', '2');
INSERT INTO `goods_list` VALUES ('7', '辣么巧流心蛋糕', 'Scorpio Chilli Chocolate Cake', '蛋糕', '人气', '不一样的味觉感受，等你来尝', '218', '1磅，2磅，3磅，5磅', '', './src/img/b003.jpg', '比利时进口黑巧克力暗藏玄机,丝丝辣味把浓情可可装进心里,看不透的秘密,就用吃来解决', '上架', '3');
INSERT INTO `goods_list` VALUES ('8', '实栗派核桃栗蓉蛋糕', 'walnut chestnut cake', '蛋糕', '人气', '栗子核桃香草巧克力', '218', '1磅，2磅，3磅，5磅', '', './src/img/b004.jpg', '城市中的人们来去匆匆,离清新的森林如此遥远,松软的戚风蛋糕如云拂过舌尖,醇香的核桃被栗子蓉覆盖,每一口都动人心弦,如沐斑斓阳光', '上架', '4');
INSERT INTO `goods_list` VALUES ('1', '雪域牛乳芝士蛋糕', 'Le Cheesecake', '蛋糕', '新品', '雪域牛乳芝士，比利时白巧克力，裱花奶油', '100', '1磅，2磅，3磅，5磅', '', './src/img/b001.jpg', '\r\n阿尔卑斯山的雪\r\n简单但有种永恒的美\r\n特浓牛乳和新西兰上等芝士用独特的工艺\r\n令芝士的香气完全散发出来\r\n蛋糕的口感也更加浓郁香滑、入口即溶\r\n上等食材的精心配比，让这款蛋糕回味无穷\r\n阿尔卑斯山的雪\r\n简单但有种永恒的美\r\n特浓牛乳和新西兰上等芝士用独特的工艺\r\n令芝士的香气完全散发出来\r\n蛋糕的口感也更加浓郁香滑、入口即溶\r\n上等食材的精心配比，让这款蛋糕回味无穷\r\n', '上架', '1');
INSERT INTO `goods_list` VALUES ('9', '鬼马小精灵蛋糕', 'Le Phantom Cake', '蛋糕', '人气', '草莓巧克力', '218', '1磅，2磅，3磅，5磅', '', './src/img/b005.jpg', '环绕着的巧克力片，像是一层幕布,小精灵们揭开面纱，跃上舞台,如同柔软绵密的戚风蛋糕和新鲜草莓,一起在舌尖碰撞出奇妙滋味,是万圣夜最亮眼的礼物', '上架', '5');
INSERT INTO `goods_list` VALUES ('10', '诺心花园•隆冬蛋糕', 'Le Cake’s Garden/Winter', '蛋糕', '新品', '牛乳松露蓝莓红豆芝士', '238', '1磅，2磅，3磅，5磅', '', './src/img/b006.jpg', '精选四款人气产品,雪域蓝莓芝士蛋糕、钻石雪域牛乳芝士蛋糕质,和风抹茶红豆蛋糕、巧克力松露蛋糕,四种蛋糕层次分明,如同隆冬飘雪里,一句一句说不完的故事', '上架', '6');
INSERT INTO `goods_list` VALUES ('11', '美刀刀蛋糕', 'Ms. Golden', '蛋糕', '新品', '奶油芝士白巧克力', '258', '1磅，2磅，3磅，5磅', '', './src/img/b007.jpg', '芝士与香草戚风被雪域奶油的浪漫笼罩,每一口都充满快乐的滋味,撩拨起无限的食欲,让味蕾懂得了心跳的感觉', '上架', '7');
INSERT INTO `goods_list` VALUES ('12', '钻石雪域牛乳芝士蛋糕', 'Diamond Cheesecake', '蛋糕', '推荐', '奶香芝士酒冻', '238', '1磅，2磅，3磅，5磅', '', './src/img/b008.jpg', '动人的纯粹,永远是最值得为之冒险的品质,撇开一切既有的存在去存在，才不枉此生,让一切回到最初的味道,淡淡的醇香奶油，柔滑的白巧克力，佐以酒的微苦,再诱人的千变万化，都不如一世绵长回味', '上架', '8');
INSERT INTO `goods_list` VALUES ('13', '鲜奶芒芒蛋糕', 'Mango Cream Cake', '蛋糕', '新品', '芒果香草奶油', '198', '1磅，2磅，3磅，5磅', '', './src/img/b009.jpg', '爱尔兰奶油与法国芒果果茸联袂演绎,口感与外在皆清爽细腻,就像是你记忆中跳动的小思绪,一口蛋糕就是一段快乐插曲', '上架', '9');
INSERT INTO `goods_list` VALUES ('14', '提拉米苏乐脆蛋糕', 'Tiramisu Crispy', '蛋糕', '人气', '可可巧克力芝士', '198', '1磅，2磅，3磅，5磅', '', './src/img/b010.jpg', '选用法国天然稀奶油,草莓 覆盆子 酸甜清新 错落有致且搭配适宜,慕斯与戚风 层层融合 口感绵密,相信会给你带来难忘的味蕾触动', '上架', '10');
INSERT INTO `goods_list` VALUES ('15', '爱•发声蛋糕', 'Le Loves', '蛋糕', '新品', '盛放的玫瑰', '258', '1磅，2磅，3磅，5磅', '', './src/img/b011.jpg', '巧克力的芬芳融合特选的香橙果酱,橙香四溢 造就了特有的口感,更加体现出蛋糕的本真原味,让爱·发声 眉梢嘴角间的流露的幸福,我想 这就是爱情', '上架', '11');
INSERT INTO `goods_list` VALUES ('16', '爱•撒娇蛋糕', 'Pink Loves', '蛋糕', '新品', '盛放的玫瑰', '258', '1磅，2磅，3磅，5磅', '', './src/img/b012.jpg', '粉色附在奶油表面极尽柔美,衬得酸奶味慕斯分外诱人,焦糖慕斯包裹着的苹果啫喱,唇齿间回味出点点惊喜,美味像情话般传递层层爱恋', '上架', '12');
INSERT INTO `goods_list` VALUES ('17', '花冠蛋糕', 'Stephanie Cake', '蛋糕', '推荐', '隐形的皇冠', '298', '1磅，2磅，3磅，5磅', '', './src/img/b013.jpg', '淡山茱萸粉的喷砂和巧克力慕斯里,包裹着双层诱人蓬松的红丝绒蛋糕,还有梨子啫喱、树莓啫喱交织的酸甜悠香,这顶隐形的皇冠，加冕你温柔而有趣的灵魂', '上架', '13');
INSERT INTO `goods_list` VALUES ('18', '牛乳大理石雪域双拼蛋糕', 'Milk & Marble Cheesecake', '蛋糕', '人气', '双拼蛋糕', '218', '1磅，2磅，3磅，5磅', '', './src/img/b014.jpg', '经久不衰的浓郁,别具一格的香醇,一席的交错,舞出黑白底片里的肆然情绪,入口即化的轻巧滋味,从心弥漫出的幸福', '上架', '14');
INSERT INTO `goods_list` VALUES ('19', '牛乳钻石雪域双拼蛋糕', 'Milk & Diamond Cheesecake', '蛋糕', '人气', '双拼蛋糕', '198', '1磅，2磅，3磅，5磅', '', './src/img/b015.jpg', '相同的美好记忆有那么多,纯白巧克力的浪漫关怀,轻甜奶油的温柔呢喃,都同微笑凝在嘴边,当身影从酒中折射而出璀璨,沦陷的是更久更久的时光', '上架', '15');
INSERT INTO `goods_list` VALUES ('20', '牛乳蓝莓雪域双拼蛋糕', 'Milk & Blueberry Cheesecake', '蛋糕', '新品', '双拼蛋糕', '258', '1磅，2磅，3磅，5磅', '', './src/img/b016.jpg', '特浓牛乳透露出丝丝浓郁,在熟悉的味道里,蓝莓衣袂飘飘,一点欢乐一点迷惑,让心灵在阳光下越发透彻清明,酸甜驻心 冰雪明媚', '上架', '16');
INSERT INTO `goods_list` VALUES ('21', '雪域蓝莓芝士蛋糕', 'Blueberry Cheesecake/Emily', '蛋糕', '新品', '芝士蛋糕', '258', '1磅，2磅，3磅，5磅', '', './src/img/b017.jpg', '年轻的艾米丽用热情感染着身边的每一个人,生活的欢乐与忧愁在她的心里化作一道彩虹,她有富足的心灵，只要你肯了解,就能为你带来阳光,蓝莓的清新果香与浓郁的芝士让你品味艾米丽带来的无穷乐趣', '上架', '17');
INSERT INTO `goods_list` VALUES ('22', '玫瑰雪域芝士蛋糕', 'Rose Cheesecake', '蛋糕', '推荐', '隐形的皇冠', '298', '1磅，2磅，3磅，5磅', '', './src/img/b018.jpg', '玫瑰是美丽爱情的象征,而一朵纯白的玫瑰则映衬出少男少女纯净的感情,这款蛋糕延续了雪域牛乳芝士系列的浓郁香醇的口感,回味绵长恰如爱情的滋味,充满法式浪漫和柔情', '上架', '18');
INSERT INTO `goods_list` VALUES ('23', '巧克力松露蛋糕', 'Chocolate Marquise', '蛋糕', '人气', '松露蛋糕', '218', '1磅，2磅，3磅，5磅', '', './src/img/b019.jpg', '凡尔赛宫气势恢宏令人神往,就像入口即化的松露巧克力,内涵深厚,经过精心制作为诺心的慕斯蛋糕,搭配如同宫殿上装饰的雕塑一般的比利时巧克力,化为一方巧克力魔盒,香气浓郁、口感醇和', '上架', '19');
INSERT INTO `goods_list` VALUES ('24', '草莓拿破仑蛋糕', 'Strawberry Mille-feuilles', '蛋糕', '人气', '草莓蛋糕', '218', '1磅，2磅，3磅，5磅', '', './src/img/b020.jpg', '拿破仑蛋糕又称千层酥,独特的制作手法保证酥皮的层层分明,薄脆爽口,搭配新鲜草莓,精准配比,既让草莓的水分充足又保证拿破仑蛋糕酥皮的清脆口感,这是富有层次的味觉体验', '上架', '20');
INSERT INTO `goods_list` VALUES ('25', '蓝莓拿破仑蛋糕', 'Blueberry Mille-feuilles', '蛋糕', '人气', '蓝莓蛋糕', '238', '1磅，2磅，3磅，5磅', '', './src/img/b021.jpg', '拿破仑蛋糕又称千层酥,独特的制作手法保证酥皮的层层分明,薄脆爽口,搭配新鲜草莓,精准配比,既让草莓的水分充足又保证拿破仑蛋糕酥皮的清脆口感,这是富有层次的味觉体验', '上架', '21');
INSERT INTO `goods_list` VALUES ('26', '莓果绵绵蛋糕', 'Strawberry Cream Cake', '蛋糕', '人气', '莓果蛋糕', '198', '1磅，2磅，3磅，5磅', '', './src/img/b022.jpg', '颗颗鲜红草莓散发诱人浓郁果香,软绵香甜的香草戚风蛋糕,包裹纯酥脆糖和醇厚黄油,在草莓粒粒脆的星星点缀下,绽放专属少女心得纯真浪漫', '上架', '22');
INSERT INTO `goods_list` VALUES ('27', '唯·歌剧院蛋糕', 'Le Opera', '蛋糕', '新品', '惊艳时光', '258', '1磅，2磅，3磅，5磅', '', './src/img/b023.jpg', '歌剧院蛋糕突破传统,创造10层惊艳口感,精心甄选物料对比调配,终于寻到鲜莓慕斯,覆盆子啫喱、朱古力牛油忌廉等组成10层搭配,既融为一体散发绝妙口感,又层层分明,体验舌尖原味的真谛', '上架', '23');
INSERT INTO `goods_list` VALUES ('28', '粉色玫瑰森林蛋糕', 'Rose Garden', '蛋糕', '新品', '玫瑰蛋糕', '258', '1磅，2磅，3磅，5磅', '', './src/img/b024.jpg', '山坡上的粉红玫瑰,温柔而坚韧,不惧骄阳和寒风,依然开出美的花朵,不仅有悦人的外表,比利时巧克力与法国奶油细腻柔滑的口感,成就出色的巧克力蛋糕', '上架', '24');
INSERT INTO `goods_list` VALUES ('29', '雪域榴香芝士蛋糕', 'Parmesan Cheesecake', '蛋糕', '推荐', '榴莲蛋糕', '268', '1磅，2磅，3磅，5磅', '', './src/img/b025.jpg', '榴莲如此独特,就像其生长环境中充足的光,源源不断散发出浓郁香气,入口的香甜与醇香细滑,搭配上无与伦比的芝士慕斯,让人流连忘返', '上架', '25');
INSERT INTO `goods_list` VALUES ('30', '海盐乳酪芝士蛋糕', 'Chocolate Marquise', '蛋糕', '人气', '创意蛋糕', '218', '1磅，2磅，3磅，5磅', '', './src/img/b026.jpg', '地中海的别样风情让人沉醉,清凉的风夹杂着丝丝的微咸轻抚脸庞,使得我产生了研发这款蛋糕的初衷,用海盐和新西兰上等芝士经过精心调配,让芝士的天然味道瞬间迸发出来,给味蕾出奇的惊艳', '上架', '26');
INSERT INTO `goods_list` VALUES ('31', '你好米菲蛋糕', 'hallo miffy', '蛋糕', '新品', '个性蛋糕', '218', '1磅，2磅，3磅，5磅', '', './src/img/b027.jpg', '萌动可爱的miffy造型亲切温暖,是全世界小朋友最想拥有的小伙伴,红丝绒蛋糕胚的绵软,搭配原味芝士的浓香醇厚,甜蜜交织松软,每一口滋味都犹如坠入米菲的童话世界,欢笑声编织了最美好的童年回忆', '上架', '27');
INSERT INTO `goods_list` VALUES ('32', '榛子千层拿破仑蛋糕', 'Hazelnut Mille-feuilles', '蛋糕', '人气', '榛子蛋糕', '198', '1磅，2磅，3磅，5磅', '', './src/img/b028.jpg', '拿破仑蛋糕又称千层酥,独特的制作手法保证酥皮的层层分明,薄脆爽口,搭配新鲜草莓,精准配比,既让草莓的水分充足又保证拿破仑蛋糕酥皮的清脆口感,这是富有层次的味觉体验', '上架', '28');
INSERT INTO `goods_list` VALUES ('33', '芒果千层拿破仑蛋糕', 'Mango Mille-feuilles', '蛋糕', '推荐', '芒果蛋糕', '198', '1磅，2磅，3磅，5磅', '', './src/img/b029.jpg', '拿破仑蛋糕又称千层酥,独特的制作手法保证酥皮的层层分明,薄脆爽口,搭配新鲜草莓,精准配比,既让草莓的水分充足又保证拿破仑蛋糕酥皮的清脆口感,这是富有层次的味觉体验', '上架', '29');
INSERT INTO `goods_list` VALUES ('34', '芒果心愿盒蛋糕', 'Mango Box', '蛋糕', '推荐', '芒果蛋糕', '218', '1磅，2磅，3磅，5磅', '', './src/img/b030.jpg', '与Shirley在香港品尝的甜品杨枝甘露让我萌生了创作这款蛋糕的想法,东南亚的芒果和泰国金柚肉,让这款甜品的口味与蛋糕融合在一起', '上架', '30');
INSERT INTO `goods_list` VALUES ('35', '宠爱蛋糕', 'Just Love', '蛋糕', '推荐', '创意蛋糕', '238', '1磅，2磅，3磅，5磅', '', './src/img/b031.jpg', '爱情的迷人酸甜和深切回味藏在这座精致的蛋糕城堡中,甄选新鲜草莓融入比利时白巧克力慕斯,搭配娇艳欲滴的玫瑰花瓣,每一口沁入舌尖的甜蜜,都是极致宠爱滋味', '上架', '31');
INSERT INTO `goods_list` VALUES ('36', '公主蛋糕', 'Princess Cake', '蛋糕', '推荐', '创意蛋糕', '238', '1磅，2磅，3磅，5磅', '', './src/img/b032.jpg', '彩色的棉花糖甜美柔和,粉色的巧克力皇冠搭配玫瑰风味啫喱,具有迷人魅力,这一刻,你就是备受宠爱的公主,如此创新美味,成就出色的巧克力蛋糕', '上架', '32');
INSERT INTO `goods_list` VALUES ('37', '王子蛋糕', 'Prince Cake', '蛋糕', '新品', '创意蛋糕', '238', '1磅，2磅，3磅，5磅', '', './src/img/b033.jpg', '淘气的小王子也有自己喜爱的甜蜜味道,蛋糕上层的巧克力与彩色巧克力豆,代表男性的阳光活力,比利时黑巧克力与奶油慕斯的组合口感醇厚而不甜腻,别有一番风味,如此创新美味成就出色的巧克力蛋糕', '上架', '33');
INSERT INTO `goods_list` VALUES ('38', '巧克力四重奏蛋糕', 'Chocolate Quartet', '蛋糕', '新品', '创意蛋糕', '238', '1磅，2磅，3磅，5磅', '', './src/img/b034.jpg', '奥地利的音乐享誉世界,纯粹的弦乐四重奏有一种深入人心的魔力,细腻柔滑的比利时巧克力,搭配法国奶油精心制作由浅至深的三层巧克力慕斯,辅以比利时黑巧克力蛋糕,四层迷人的风味犹如掉入了巧克力的漩涡无法自拔', '上架', '34');
INSERT INTO `goods_list` VALUES ('39', '和风抹茶红豆蛋糕', 'Matcha Red bean cake', '蛋糕', '推荐', '创意蛋糕', '218', '1磅，2磅，3磅，5磅', '', './src/img/b035.jpg', '蜜豆的甘甜与抹茶的微苦,细细品味才能发现其中的韵味,顶层经过烘烤后的抹茶蛋糕清香酥脆,抹茶淋面和抹茶粉的搭配让口感更丰富,成就出色的慕斯蛋糕', '上架', '35');
INSERT INTO `goods_list` VALUES ('40', '雪域大理石芝士蛋糕', 'Marble Cheesecake', '蛋糕', '人气', '创意蛋糕', '218', '1磅，2磅，3磅，5磅', '', './src/img/b036.jpg', '凡尔赛宫的大理石庭院有一种神秘而悠久的美,巧克力与奶油组合,线条和波纹的碰撞是别具一格的美,让蛋糕的口感达到美妙状态,浓醇的新西兰上等芝士甜而不腻,入口即溶,加上富有时尚感的外形,这是让人难忘的芝士蛋糕', '上架', '36');
INSERT INTO `goods_list` VALUES ('41', '阿尔蒙麦香蛋糕', 'Almond Oatmeal Aroma', '蛋糕', '新品', '创意蛋糕', '218', '1磅，2磅，3磅，5磅', '', './src/img/b037.jpg', '祖母烤巴旦木的味道,是童年品尝到难以忘怀的美味,这款蛋糕献给呵护成长的长辈们,精心烤制的巴旦木香味浓郁,加上木糖醇让蛋糕的口感更加丰富,健康美味,这款特别制作的慕斯蛋糕,让长辈们可以尽情享受美味而无后顾之忧', '上架', '37');
INSERT INTO `goods_list` VALUES ('42', '阿尔蒙洛克蛋糕', 'Almond Rocks Cake', '蛋糕', '人气', '创意蛋糕', '218', '1磅，2磅，3磅，5磅', '', './src/img/b038.jpg', '在机场可以遇见各式的离别与重聚,心情各有不同,但相信牵挂与深爱之心不会因距离而变,优质的巴旦木营养丰富,细致研磨后散发的迷人口感如同机场相见的拥抱抚慰心灵,你该让时刻停止一刻来细品它的味道', '上架', '38');
INSERT INTO `goods_list` VALUES ('43', '庆生明星熊', 'LE Cheesecake Bear', '蛋糕', '推荐', '创意蛋糕', '238', '1磅，2磅，3磅，5磅', '', './src/img/b039.jpg', '阿尔卑斯山的雪纯净结白,简单但有种永恒的美,令芝士的香气完全散发出来,上等食材的精心配比，让这款蛋糕回味无穷', '上架', '39');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `intro` varchar(255) DEFAULT NULL,
  `datails` varchar(255) DEFAULT NULL,
  `detailedness` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '红烧猪脚', '195', 'src/img/001.jpg', '热销', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('2', '红烧猪脚', '196', 'src/img/001.jpg', '热销', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('3', '红烧猪脚', '197', 'src/img/001.jpg', '热销', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('4', '红烧猪脚', '198', 'src/img/001.jpg', '热销', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('5', '红烧猪脚', '199', 'src/img/001.jpg', '热销', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('6', '大将', '200', 'src/img/008.jpg', '优惠', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('7', '大将', '201', 'src/img/008.jpg', '优惠', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('8', '大将', '202', 'src/img/008.jpg', '优惠', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('9', '大将', '203', 'src/img/008.jpg', '优惠', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('10', '大将', '204', 'src/img/008.jpg', '优惠', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('11', '红烧猪脚', '200', 'src/img/001.jpg', '中餐', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('12', '吮指烤鱼', '201', 'src/img/002.jpg', '中餐', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('13', '北京烤鸭', '202', 'src/img/003.jpg', '中餐', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('14', '神迹豆腐', '203', 'src/img/004.jpg', '中餐', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('15', '连丝甜薯', '204', 'src/img/005.jpg', '中餐', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('16', '将军鹅肝', '500', 'src/img/006.jpg', '西餐', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('17', '西冷牛扒', '501', 'src/img/007.jpg', '西餐', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('18', '大将', '502', 'src/img/008.jpg', '西餐', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('19', '橙仙之路', '503', 'src/img/009.jpg', '西餐', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('20', '日本秋田寿司', '504', 'src/img/010.jpg', '西餐', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('21', '荔枝木烤虾', '2010', 'src/img/011.jpg', '烧烤', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('22', '陈尔良烤鸡腿', '2011', 'src/img/012.jpg', '烧烤', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('23', '极品牛腱肉', '2012', 'src/img/013.jpg', '烧烤', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('24', '凤凰翅', '2013', 'src/img/014.jpg', '烧烤', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('25', '倩揍猪蹄', '2014', 'src/img/015.jpg', '烧烤', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('26', '手提包', '2015', 'src/img/016.jpg', '小吃', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('27', '温水蒸青蛙', '2016', 'src/img/017.jpg', '小吃', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('28', '万箭穿糕', '2017', 'src/img/018.jpg', '小吃', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('29', '弹力糖', '2018', 'src/img/019.jpg', '小吃', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('30', '一只玉米？', '431', 'src/img/020.jpg', '小吃', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('31', '熊掌', '432', 'src/img/021.jpg', '甜点', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('32', '富士山慕斯', '433', 'src/img/022.jpg', '甜点', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('33', '圣诞老蛋糕', '434', 'src/img/023.jpg', '甜点', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('34', '榴莲班戟', '435', 'src/img/024.jpg', '甜点', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('35', '太极圈圈', '436', 'src/img/025.jpg', '甜点', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('36', '冰山晚雪', '67', 'src/img/026.jpg', '饮料', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('37', '吸血鬼', '68', 'src/img/027.jpg', '饮料', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('38', '经典1667', '69', 'src/img/028.jpg', '饮料', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('39', '摩卡摩卡', '2028', 'src/img/029.jpg', '饮料', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');
INSERT INTO `menu` VALUES ('40', '柚人犯醉', '2029', 'src/img/030.jpg', '饮料', '由米其林五星大厨出品', '精选超肥大猪头的腿研制而成，经过七七四十九道工艺制作。');

-- ----------------------------
-- Table structure for `menuadd`
-- ----------------------------
DROP TABLE IF EXISTS `menuadd`;
CREATE TABLE `menuadd` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `idx` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `allprice` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `h2id` varchar(255) DEFAULT NULL COMMENT 'h2跟踪val的id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=218 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menuadd
-- ----------------------------
INSERT INTO `menuadd` VALUES ('210', '88', '极品牛腱肉', '\n                        2012\n                        ,196', '3\n                        ,2', '6036\n                        ,392', 'src/img/013.jpg,src/img/001.jpg', '22,1');

-- ----------------------------
-- Table structure for `test`
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `intro` varchar(255) DEFAULT NULL,
  `datails` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES (null, 'csx', null, null, '123456', null);
INSERT INTO `test` VALUES ('1', '黄焖鸡', '15', '../img/001.jpg', '鸡', '切开煮的');
INSERT INTO `test` VALUES ('2', '黄焖鸡', '16', '../img/002.jpg', '鸡', '切开煮的');
INSERT INTO `test` VALUES ('3', '黄焖鸡', '17', '../img/003.jpg', '鸡', '切开煮的');
INSERT INTO `test` VALUES ('4', '黄焖鸡', '18', '../img/004.jpg', '鸡', '切开煮的');
INSERT INTO `test` VALUES ('5', '黄焖鸡', '19', '../img/005.jpg', '鸡', '切开煮的');
INSERT INTO `test` VALUES ('6', '黄焖鸡', '20', '../img/006.jpg', '鸡', '切开煮的');
INSERT INTO `test` VALUES ('7', '黄焖鸡', '21', '../img/007.jpg', '鸡', '切开煮的');
INSERT INTO `test` VALUES ('8', '黄焖鸡', '22', '../img/008.jpg', '鸡', '切开煮的');
INSERT INTO `test` VALUES ('9', '黄焖鸡', '23', '../img/009.jpg', '鸡', '切开煮的');
INSERT INTO `test` VALUES ('10', '黄焖鸡', '24', '../img/010.jpg', '鸡', '切开煮的');
INSERT INTO `test` VALUES ('11', '黄焖鸡', '25', '../img/011.jpg', '鸡', '切开煮的');
INSERT INTO `test` VALUES ('12', '黄焖鸡', '26', '../img/012.jpg', '鸡', '切开煮的');
INSERT INTO `test` VALUES ('13', '黄焖鸡', '27', '../img/013.jpg', '鸡', '切开煮的');
INSERT INTO `test` VALUES ('14', '黄焖鸡', '28', '../img/014.jpg', '鸡', '切开煮的');
INSERT INTO `test` VALUES ('15', '黄焖鸡', '29', '../img/015.jpg', '鸡', '切开煮的');
INSERT INTO `test` VALUES ('16', '黄焖鸡', '30', '../img/016.jpg', '鸡', '切开煮的');
INSERT INTO `test` VALUES ('17', '黄焖鸡', '31', '../img/017.jpg', '鸡', '切开煮的');
INSERT INTO `test` VALUES ('18', '黄焖鸡', '32', '../img/018.jpg', '鸡', '切开煮的');
INSERT INTO `test` VALUES ('19', '黄焖鸡', '33', '../img/019.jpg', '鸡', '切开煮的');
INSERT INTO `test` VALUES ('20', '黄焖鸡', '34', '../img/020.jpg', '鸡', '切开煮的');
INSERT INTO `test` VALUES ('21', '黄焖鸡', '35', '../img/021.jpg', '鸡', '切开煮的');
INSERT INTO `test` VALUES ('22', '黄焖鸡', '36', '../img/022.jpg', '鸡', '切开煮的');
INSERT INTO `test` VALUES ('23', '黄焖鸡', '37', '../img/023.jpg', '鸡', '切开煮的');
INSERT INTO `test` VALUES ('24', '黄焖鸡', '38', '../img/024.jpg', '鸡', '切开煮的');
INSERT INTO `test` VALUES ('25', '黄焖鸡', '39', '../img/025.jpg', '鸡', '切开煮的');
INSERT INTO `test` VALUES ('26', '黄焖鸡', '40', '../img/026.jpg', '鸡', '切开煮的');
INSERT INTO `test` VALUES ('27', '黄焖鸡', '41', '../img/027.jpg', '鸡', '切开煮的');
INSERT INTO `test` VALUES ('28', '黄焖鸡', '42', '../img/028.jpg', '鸡', '切开煮的');
INSERT INTO `test` VALUES ('29', '黄焖鸡', '43', '../img/029.jpg', '鸡', '切开煮的');
INSERT INTO `test` VALUES (null, 'csx', null, null, '123456', null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `router` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'pyd', '123', 'cook');
INSERT INTO `user` VALUES ('2', 'tsg', '456', 'call_center');
