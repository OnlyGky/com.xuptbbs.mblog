/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50639
 Source Host           : localhost:3306
 Source Schema         : db_mblog

 Target Server Type    : MySQL
 Target Server Version : 50639
 File Encoding         : 65001

 Date: 19/11/2019 07:51:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for flyway_schema_history
-- ----------------------------
DROP TABLE IF EXISTS `flyway_schema_history`;
CREATE TABLE `flyway_schema_history`  (
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `script` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `checksum` int(11) NULL DEFAULT NULL,
  `installed_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `installed_on` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`) USING BTREE,
  INDEX `flyway_schema_history_s_idx`(`success`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of flyway_schema_history
-- ----------------------------
INSERT INTO `flyway_schema_history` VALUES (1, '3.2', 'update', 'SQL', 'V3.2__update.sql', -53734780, 'root', '2019-04-29 17:53:32', 114, 1);

-- ----------------------------
-- Table structure for mto_channel
-- ----------------------------
DROP TABLE IF EXISTS `mto_channel`;
CREATE TABLE `mto_channel`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key_` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(5) NOT NULL,
  `thumbnail` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mto_channel
-- ----------------------------
INSERT INTO `mto_channel` VALUES (1, 'banner', '时光', 1, '', 0);
INSERT INTO `mto_channel` VALUES (2, 'blog', '指尖', 0, '', 0);
INSERT INTO `mto_channel` VALUES (3, 'jotting', '随笔', 1, '', 0);
INSERT INTO `mto_channel` VALUES (4, 'share', '分享', 1, '/storage/thumbnails/_signature/1H09NSQ60RJL82TFTI0VABG7GT.png', 0);
INSERT INTO `mto_channel` VALUES (5, 'information', '资讯', 1, '/storage/thumbnails/_signature/KQ0G3689ECERQ6FESVCE73C48.png', 0);
INSERT INTO `mto_channel` VALUES (6, 'tech', '科技', 1, '/storage/thumbnails/_signature/2VOV446R3HMB4IEPRV9RC7QCUD.png', 0);

-- ----------------------------
-- Table structure for mto_comment
-- ----------------------------
DROP TABLE IF EXISTS `mto_comment`;
CREATE TABLE `mto_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author_id` bigint(20) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NULL DEFAULT NULL,
  `pid` bigint(20) NOT NULL,
  `post_id` bigint(20) NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IK_POST_ID`(`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mto_comment
-- ----------------------------
INSERT INTO `mto_comment` VALUES (1, 2, '世界上只有一个名字，使我这样牵肠挂肚，像有一根看不见的线，一头牢牢系在我心尖上，一头攥在你手中。', '2019-05-05 10:07:32', 0, 8, 0);
INSERT INTO `mto_comment` VALUES (2, 3, '世界上只有一个名字，使我这样牵肠挂肚，像有一根看不见的线，一头牢牢系在我心尖上，一头攥在你手中。', '2019-05-04 10:11:10', 0, 8, 0);
INSERT INTO `mto_comment` VALUES (3, 4, '虽是有缘无份，但愿在以后的日子里，我能在你的记忆中增加一份美好的回忆，能通过此生的努力，修满来世的情份。', '2019-05-03 10:13:24', 0, 8, 0);
INSERT INTO `mto_comment` VALUES (4, 5, '我爱你从见到你的上个世纪，我爱你直到我离去的那个世纪，我不会说永远，但爱你的期限总是比永远多一天！', '2019-05-02 10:14:09', 0, 8, 0);
INSERT INTO `mto_comment` VALUES (5, 6, '偷偷告诉你哦，我最近在练一门邪功-灵魂出窍，练成后我就不怕距离的考验，因为我的灵魂可会跋山涉水，不惧千里的飘到你身旁。', '2019-05-01 10:14:55', 0, 25, 0);
INSERT INTO `mto_comment` VALUES (6, 6, '上万事缘在其中，生死尚有时，缘之深浅岂无肖定缘来时喜，缘尽时悲！真是何苦又何必！不若有缘时珍惜。', '2019-04-28 10:15:12', 4, 8, 0);
INSERT INTO `mto_comment` VALUES (7, 6, '就这样与你告别，借万里青山，以之为隔，世世不见。', '2019-06-25 14:54:20', 0, 1, 0);
INSERT INTO `mto_comment` VALUES (8, 2, '别跟三观不一致的人争执，别向不关心你的人诉苦，别对不喜欢自己的人讨好，真的没有必要。', '2019-06-25 14:54:51', 0, 1, 0);
INSERT INTO `mto_comment` VALUES (9, 3, '这世上最远的距离，不是爱，不是恨，是相爱的人，渐渐变得陌生；是想见，不敢见；是想说，不敢说。', '2019-06-25 14:55:20', 0, 1, 0);
INSERT INTO `mto_comment` VALUES (10, 1, '当我还在舒适区里裸奔的时候，平时极不靠谱滴奇葩师兄狗哥，戳中了还在狂吃瑞士莲的我&mdash;&mdash;你要想将来舒服，就得现在使劲儿难为自己。', '2019-11-12 14:43:45', 0, 42, 0);

-- ----------------------------
-- Table structure for mto_favorite
-- ----------------------------
DROP TABLE IF EXISTS `mto_favorite`;
CREATE TABLE `mto_favorite`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime(0) NULL DEFAULT NULL,
  `post_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IK_USER_ID`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mto_favorite
-- ----------------------------
INSERT INTO `mto_favorite` VALUES (1, '2019-04-30 10:16:50', 24, 2);
INSERT INTO `mto_favorite` VALUES (2, '2019-04-30 10:16:54', 23, 2);
INSERT INTO `mto_favorite` VALUES (3, '2019-04-30 10:16:57', 22, 2);
INSERT INTO `mto_favorite` VALUES (4, '2019-04-30 10:17:00', 21, 2);
INSERT INTO `mto_favorite` VALUES (5, '2019-04-30 10:17:04', 20, 2);
INSERT INTO `mto_favorite` VALUES (6, '2019-04-30 10:17:11', 18, 2);
INSERT INTO `mto_favorite` VALUES (7, '2019-04-30 10:17:15', 16, 2);
INSERT INTO `mto_favorite` VALUES (8, '2019-04-30 16:45:18', 8, 1);
INSERT INTO `mto_favorite` VALUES (9, '2019-05-08 15:50:26', 9, 2);
INSERT INTO `mto_favorite` VALUES (10, '2019-05-09 15:17:16', 32, 1);
INSERT INTO `mto_favorite` VALUES (11, '2019-05-10 13:52:29', 32, 2);
INSERT INTO `mto_favorite` VALUES (12, '2019-06-25 14:55:39', 1, 2);
INSERT INTO `mto_favorite` VALUES (13, '2019-06-25 14:55:52', 1, 3);
INSERT INTO `mto_favorite` VALUES (14, '2019-06-25 14:56:04', 1, 6);
INSERT INTO `mto_favorite` VALUES (15, '2019-11-06 16:58:35', 37, 1);
INSERT INTO `mto_favorite` VALUES (16, '2019-11-06 17:01:52', 15, 1);

-- ----------------------------
-- Table structure for mto_links
-- ----------------------------
DROP TABLE IF EXISTS `mto_links`;
CREATE TABLE `mto_links`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updated` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mto_links
-- ----------------------------
INSERT INTO `mto_links` VALUES (1, '2019-11-06 10:17:23', 'Mtons', '2019-11-06 10:18:25', 'https://www.mtons.com/');
INSERT INTO `mto_links` VALUES (2, '2019-11-06 10:17:23', '百度一下', '2019-11-06 10:30:35', 'https://www.mtons.com/');
INSERT INTO `mto_links` VALUES (3, '2019-11-06 10:17:23', '指尖时光', '2019-11-06 10:30:42', 'https://www.mtons.com/');
INSERT INTO `mto_links` VALUES (4, '2019-11-06 10:17:23', '新浪微博', '2019-11-06 10:30:55', 'https://www.mtons.com/');
INSERT INTO `mto_links` VALUES (5, '2019-11-06 10:17:23', '华为官网', '2019-11-06 10:31:02', 'https://www.mtons.com/');
INSERT INTO `mto_links` VALUES (6, '2019-11-06 10:17:23', '抖音', '2019-11-06 10:31:11', 'https://www.mtons.com/');
INSERT INTO `mto_links` VALUES (7, '2019-11-06 10:17:23', 'hao123', '2019-11-06 10:31:19', 'https://www.mtons.com/');
INSERT INTO `mto_links` VALUES (8, '2019-11-06 10:17:23', '腾讯', '2019-11-06 10:31:25', 'https://www.mtons.com/');
INSERT INTO `mto_links` VALUES (9, '2019-11-06 10:17:23', '阿里巴巴', '2019-11-06 10:31:46', 'https://www.mtons.com/');
INSERT INTO `mto_links` VALUES (10, '2019-11-06 10:17:23', '美团', '2019-11-06 10:31:51', 'https://www.mtons.com/');

-- ----------------------------
-- Table structure for mto_message
-- ----------------------------
DROP TABLE IF EXISTS `mto_message`;
CREATE TABLE `mto_message`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime(0) NULL DEFAULT NULL,
  `event` int(11) NOT NULL,
  `from_id` bigint(20) NULL DEFAULT NULL,
  `post_id` bigint(20) NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mto_message
-- ----------------------------
INSERT INTO `mto_message` VALUES (1, '2019-04-30 10:07:32', 3, 2, 8, 0, 1);
INSERT INTO `mto_message` VALUES (2, '2019-06-12 10:18:50', 3, 3, 8, 0, 1);
INSERT INTO `mto_message` VALUES (3, '2019-04-30 10:13:24', 3, 4, 8, 0, 1);
INSERT INTO `mto_message` VALUES (4, '2019-04-30 10:14:10', 3, 5, 8, 0, 1);
INSERT INTO `mto_message` VALUES (5, '2019-04-30 10:14:55', 3, 6, 25, 1, 2);
INSERT INTO `mto_message` VALUES (6, '2019-04-30 10:15:12', 4, 6, 8, 0, 5);
INSERT INTO `mto_message` VALUES (7, '2019-04-30 10:16:50', 1, 2, 24, 1, 2);
INSERT INTO `mto_message` VALUES (8, '2019-04-30 10:16:54', 1, 2, 23, 0, 1);
INSERT INTO `mto_message` VALUES (9, '2019-04-30 10:16:57', 1, 2, 22, 0, 1);
INSERT INTO `mto_message` VALUES (10, '2019-04-30 10:17:00', 1, 2, 21, 0, 1);
INSERT INTO `mto_message` VALUES (11, '2019-04-30 10:17:04', 1, 2, 20, 0, 1);
INSERT INTO `mto_message` VALUES (12, '2019-04-30 10:17:12', 1, 2, 18, 0, 1);
INSERT INTO `mto_message` VALUES (13, '2019-04-30 10:17:15', 1, 2, 16, 0, 1);
INSERT INTO `mto_message` VALUES (14, '2019-04-30 16:45:18', 1, 1, 8, 0, 1);
INSERT INTO `mto_message` VALUES (15, '2019-05-08 15:50:27', 1, 2, 9, 0, 1);
INSERT INTO `mto_message` VALUES (16, '2019-05-09 15:17:16', 1, 1, 32, 0, 1);
INSERT INTO `mto_message` VALUES (17, '2019-05-10 13:52:29', 1, 2, 32, 0, 1);
INSERT INTO `mto_message` VALUES (18, '2019-06-25 14:54:20', 3, 6, 1, 0, 1);
INSERT INTO `mto_message` VALUES (19, '2019-06-25 14:54:51', 3, 2, 1, 0, 1);
INSERT INTO `mto_message` VALUES (20, '2019-06-25 14:55:20', 3, 3, 1, 0, 1);
INSERT INTO `mto_message` VALUES (21, '2019-06-25 14:55:39', 1, 2, 1, 0, 1);
INSERT INTO `mto_message` VALUES (22, '2019-06-25 14:55:52', 1, 3, 1, 0, 1);
INSERT INTO `mto_message` VALUES (23, '2019-06-25 14:56:04', 1, 6, 1, 0, 1);
INSERT INTO `mto_message` VALUES (24, '2019-11-06 16:58:35', 1, 1, 37, 0, 1);
INSERT INTO `mto_message` VALUES (25, '2019-11-06 17:01:52', 1, 1, 15, 0, 1);
INSERT INTO `mto_message` VALUES (26, '2019-11-12 14:43:46', 3, 1, 42, 0, 1);
INSERT INTO `mto_message` VALUES (27, '2019-11-14 10:51:04', 3, 2, 1, 0, 1);
INSERT INTO `mto_message` VALUES (28, '2019-11-14 11:29:48', 3, 2, 1, 0, 1);
INSERT INTO `mto_message` VALUES (29, '2019-11-14 11:30:51', 3, 2, 1, 0, 1);
INSERT INTO `mto_message` VALUES (30, '2019-11-14 12:59:57', 3, 2, 1, 0, 1);
INSERT INTO `mto_message` VALUES (31, '2019-11-14 13:13:28', 3, 2, 1, 0, 1);
INSERT INTO `mto_message` VALUES (32, '2019-11-14 13:15:23', 3, 2, 1, 0, 1);
INSERT INTO `mto_message` VALUES (33, '2019-11-14 15:31:58', 3, 1, 1, 0, 1);
INSERT INTO `mto_message` VALUES (34, '2019-11-14 15:33:01', 3, 1, 1, 0, 1);
INSERT INTO `mto_message` VALUES (35, '2019-11-14 17:03:38', 3, 1, 1, 0, 1);
INSERT INTO `mto_message` VALUES (36, '2019-11-14 17:20:59', 3, 2, 1, 0, 1);

-- ----------------------------
-- Table structure for mto_options
-- ----------------------------
DROP TABLE IF EXISTS `mto_options`;
CREATE TABLE `mto_options`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key_` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(5) NULL DEFAULT 0,
  `value` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mto_options
-- ----------------------------
INSERT INTO `mto_options` VALUES (1, 'site_name', 0, '指尖时光 - 小众私密日记');
INSERT INTO `mto_options` VALUES (2, 'site_domain', 0, 'http://www.zjsg.cc');
INSERT INTO `mto_options` VALUES (3, 'site_keywords', 0, '指尖,ZJ,博客,社区');
INSERT INTO `mto_options` VALUES (4, 'site_description', 0, '随时随地分享！');
INSERT INTO `mto_options` VALUES (5, 'site_metas', 0, '');
INSERT INTO `mto_options` VALUES (6, 'site_copyright', 0, 'Copyright © 指尖时光');
INSERT INTO `mto_options` VALUES (7, 'site_icp', 0, '京ICP备12345678号');
INSERT INTO `mto_options` VALUES (8, 'qq_callback', 0, 'http://{domain}/oauth/callback/qq');
INSERT INTO `mto_options` VALUES (9, 'qq_app_id', 0, 'qq');
INSERT INTO `mto_options` VALUES (10, 'qq_app_key', 0, 'qq');
INSERT INTO `mto_options` VALUES (11, 'weibo_callback', 0, 'http://{domain}/oauth/callback/weibo');
INSERT INTO `mto_options` VALUES (12, 'weibo_client_id', 0, 'weibo');
INSERT INTO `mto_options` VALUES (13, 'weibo_client_sercret', 0, 'weibo');
INSERT INTO `mto_options` VALUES (14, 'github_callback', 0, 'http://{domain}/oauth/callback/github');
INSERT INTO `mto_options` VALUES (15, 'github_client_id', 0, 'github');
INSERT INTO `mto_options` VALUES (16, 'github_secret_key', 0, 'github');
INSERT INTO `mto_options` VALUES (17, 'theme', 0, 'youth');
INSERT INTO `mto_options` VALUES (18, 'site_logo', 0, '/dist/images/logo/logo.png');
INSERT INTO `mto_options` VALUES (19, 'editor', 0, 'markdown');
INSERT INTO `mto_options` VALUES (20, 'site_favicon', 0, '/theme/youth/dist/images/logo/m.png');
INSERT INTO `mto_options` VALUES (21, 'site_introduce', 0, '指尖时光 - 专注于互联网，网络文学资讯，好书推荐，书单评论及科技、投资、分享网络新鲜资讯等领域的IT科技网站。');
INSERT INTO `mto_options` VALUES (22, 'site_title_1', 0, '♡ 分享你想表达的，让全世界都能听到你的心声！');
INSERT INTO `mto_options` VALUES (23, 'site_title_2', 0, '关于文学，关于爱情，关于穿越世界的旅行。');
INSERT INTO `mto_options` VALUES (24, 'site_qrcode_one', 0, '/theme/youth/dist/images/qqq.png');
INSERT INTO `mto_options` VALUES (25, 'site_qrcode_two', 0, '/theme/youth/dist/images/qqh.jpg');
INSERT INTO `mto_options` VALUES (26, 'site_contact', 0, '手机：135-00000000 </br> 邮箱：ygk@163.com </br> Q群：378433412');

-- ----------------------------
-- Table structure for mto_post
-- ----------------------------
DROP TABLE IF EXISTS `mto_post`;
CREATE TABLE `mto_post`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author_id` bigint(20) NULL DEFAULT NULL,
  `channel_id` int(11) NULL DEFAULT NULL,
  `comments` int(11) NOT NULL,
  `created` datetime(0) NULL DEFAULT NULL,
  `favors` int(11) NOT NULL,
  `featured` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `summary` varchar(140) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tags` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumbnail` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `views` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IK_CHANNEL_ID`(`channel_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mto_post
-- ----------------------------
INSERT INTO `mto_post` VALUES (1, 1, 2, 13, '2019-04-30 09:00:53', 3, 0, 0, '1、时间在变，人也在变。生命是一场无法回放的绝版电影，有些事，不管你如何努力，回不去就是回不去了。就算真的回去了，你也会发现，一切已经面目全非。唯一能回去的，只是存于心底的记忆。世界上最远的距离，不是爱，不是恨，而是熟悉的人，渐渐变得陌生。 2、...', '经典语录', '/storage/thumbnails/_signature/3BOC4H6MR6164S4ISJIB0KTAL2.jpeg', '时间在变，人也在变，回不去就是回不去了', 15836, 1);
INSERT INTO `mto_post` VALUES (2, 1, 2, 0, '2019-04-30 09:06:56', 0, 0, 0, '1、我们皆是赶路的众生，泪笑掺杂，悲喜交织，没有谁的欢乐可以长久，执手再紧亦将曲终人散。人生原本一场罪，痛苦的人，不过是自得其所；幸福的人，也只是苦中作乐。只有真切的哭过，绝望的累过，钻心的痛过，无言的悔过，此生方算完整。  2、让你烦恼的人，是...', '经典语录', '/storage/thumbnails/_signature/21PP1OUD0ID6MDLIJGAII78PJV.jpg', '我消失了，谁会半夜突然醒来，想我想到泣不成声', 15667, 0);
INSERT INTO `mto_post` VALUES (3, 1, 2, 0, '2019-04-30 09:08:42', 0, 0, 0, '1、每个人都有自己的活法，没必要去复制别人的生活。有的人表面风光，暗地里却不知流了多少眼泪；有的人看似生活窘迫，实际上却过得潇洒快活。幸福没有标准答案，快乐也不止一条道路；收回羡慕别人的目光，反观自己的内心。自己喜欢的日子，就是最好的日子；自己喜...', '经典语录', '/storage/thumbnails/_signature/14CCIOKI9JDE3UC0I16FJIE7DF.jpg', '每个人都有自己的活法，没必要去复制别人的生活', 4588, 0);
INSERT INTO `mto_post` VALUES (4, 1, 2, 0, '2019-04-30 09:10:29', 0, 0, 0, '1、相信人生不会亏待你，你吃的苦，你受的累，你掉进的坑，你走错的路，都会练就独一无二成熟坚强感恩的你。 2、幸福没有明天，也没有昨天，只有现在。有的爱散了，有的爱远了，有的爱淡了，若你发现身边有一份不离不弃的陪伴，那是时间沉淀给你最感动的圆满。 ...', '经典语录', '/storage/thumbnails/_signature/1MACCTB1F7PT0R38ONDO3FHSKV.jpg', '人的成熟不是年龄，而是懂得了放弃，学会了圆融', 69330, 0);
INSERT INTO `mto_post` VALUES (5, 1, 2, 0, '2019-04-30 09:11:42', 0, 0, 0, '1、生活如果不宠你，更要自己善待自己。这一生，风雨兼程，就是为了遇见最好的自己，如此而已。若我白发苍苍，容颜迟暮，你会不会，依旧如此，牵我双手，倾世温柔。 2、等与不等，我都等了。在与不在乎，我都已在乎了。任何事情，总有答案。与其烦恼，不如顺其自...', '经典语录', '/storage/thumbnails/_signature/15I1K8V39R73EI12MOLP8103OH.jpg', '每一步都走的好孤独，而学会孤独正是成长的必修课', 114574, 0);
INSERT INTO `mto_post` VALUES (6, 1, 2, 0, '2019-04-30 09:12:23', 0, 0, 0, '1、看清了很多人，却不能随意拆穿；讨厌着很多人，却又不能轻易翻脸。有时候，生活就是要逼自己变得逆来顺受，宠辱不惊。 2、敌人变成朋友，就比朋友更可靠，朋友变成敌人，比敌人更危险。有些事知道了就好，不必多说。有些人认识了就好，不必深交。 3、我给你...', '经典语录', '/storage/thumbnails/_signature/2OMTC0F82IS8O3T8R36F1RA892.jpg', '人生不是靠心情活着，调整心态看生活，处处都是阳光', 119899, 0);
INSERT INTO `mto_post` VALUES (7, 1, 2, 0, '2019-04-30 09:13:24', 0, 0, 0, '1、我是要有多勇敢，才敢一直对你念念不忘。我是要有多坚强，才能承受你的一伤再伤。若不是因为爱着你，怎么会深夜还没睡意，每个念头都关于你，我想你，好想你。 2、总有那么一些歌，让我们悲伤，让我们哭泣。但其实让我们哭泣的并不是那些歌本身，而是藏在回忆...', '经典语录', '/storage/thumbnails/_signature/3SGKUA4R7QTE7KCRDATD9OLR3B.jpg', '很想主动联系你，很想关心你，但是只能止于唇齿', 114902, 0);
INSERT INTO `mto_post` VALUES (8, 1, 1, 5, '2019-04-30 09:16:23', 1, 0, 0, '1、不必太纠结于当下，也不必太忧虑未来，当你经历过一些事情的时候，眼前的风景已经和从前不一样了。感情里，总会有分分合合；生命里，总会有来来去去。学会浅喜欢，静静爱，深深思索，淡淡释怀。 2、与其指望遇到一个谁，不如指望自己能吸引那样的人；与其指望...', '指尖时光', '/storage/thumbnails/_signature/319AMDLDUTS9CC13E4NS7HMT0P.jpg', '学会浅喜欢，静静爱，深深思索，淡淡释怀', 119779, 0);
INSERT INTO `mto_post` VALUES (9, 1, 1, 0, '2019-04-30 09:19:01', 1, 0, 0, '1、感情淡了我们再培养，无话可说了我们就再去找话题。觉得腻了我们重新认识，要是累了就给彼此空间。人潮汹涌的，遇到你也不容易，也不想再推开了。  2、不要对爱你的人太过刻薄，每个人都有脾气，为你忍下所有的怒气，仅仅因为那个人比你更心疼你。你错失了夏...', '指尖时光', '/storage/thumbnails/_signature/2EHNAACABO1THK8KBE21KRFGRS.jpg', '任何事，任何人，都会成为过去，不要跟它过不去', 115499, 0);
INSERT INTO `mto_post` VALUES (10, 1, 2, 0, '2019-04-30 09:20:24', 0, 0, 0, '1、总有那么一些歌，让我们悲伤，让我们哭泣。但其实让我们哭泣的并不是那些歌本身，而是藏在回忆里的那些人。不要太把一个人放在心上，因为在那个人的心里你或许什么都不是。 2、人都是被自己打败的，而且首先给自己的情绪打败。控制不了自己情绪的人，别人的一...', '经典语录', '/storage/thumbnails/_signature/3QV25K5GT6PJEUGBBU2RKESOCV.jpg', '有时候不是不明白，而是明白了也不知道该怎么做', 6690, 0);
INSERT INTO `mto_post` VALUES (11, 1, 2, 0, '2019-04-30 09:21:26', 0, 0, 0, '1、一个人的成熟，并不表现在获得了多少成就上，而是面对那些厌恶的人和事，不迎合也不抵触，只淡然一笑对之。当内心可以容纳很多自己不喜欢的事物时，这就叫气场。 2、两个人的沟通70%是情绪，30%是内容，如果沟通情绪不对，那内容就会给扭曲了，所以沟通...', '经典语录', '/storage/thumbnails/_signature/22VJ5JACD3G2J1MRC34GMR5BIQ.jpg', '无论我们最后生疏到什么样子，曾经对你的好都是真的', 8924, 0);
INSERT INTO `mto_post` VALUES (12, 1, 2, 0, '2019-04-30 09:22:29', 0, 0, 0, '1、比你强的人是不会嘲笑你的，那都是比你弱的人才会干的事！目的是把你变得跟他们一样弱。张开大嘴四处嚷嚷只是人的本能，闭上嘴巴用心思考才需要人的智慧。 2、什么事都要先在自身找原因，不要总是苟求他人。鞋子脏了，是因为你走的路不干净。年纪越大，越会发...', '经典语录', '/storage/thumbnails/_signature/1737F1K5G0DFDFDP4MNUHPKI40.jpg', '大多数时候，我们说得越多，彼此的距离却越远', 5453, 0);
INSERT INTO `mto_post` VALUES (13, 1, 2, 0, '2019-04-30 09:23:37', 0, 0, 0, '1、三分天注定，七分靠打拼。剩下的九十分，就交给颜值了！所谓的女汉子，只不过是因为长得丑而已，但凡有些爷们气质的漂亮姑娘，都被称为女王大人。 2、很多时候，不逼自己一把，你不会知道自己有多优秀。更多时候，逼自己一把，才发现原来真的会把事情搞砸。不...', '经典语录', '/storage/thumbnails/_signature/3488PJKHM3J2QK2RCRAMQHH0M8.jpg', '曾梦想仗剑走天涯，醒来忙碌柴米油盐茶', 99685, 0);
INSERT INTO `mto_post` VALUES (14, 1, 2, 0, '2019-04-30 09:25:37', 0, 0, 0, '1、人生不过如此，没有人可以和生活讨价还价，且行且珍惜，自己永远是自己的主角，每个人的性格中，都有某些无法让人接受的部分，再美好的人也一样。所以不要苛求别人，不要埋怨自己。 2、所有的改变，都伴随着阵痛，若不痛苦，势必会吃苦。其实苦味是最好的良药...', '经典语录', '/storage/thumbnails/_signature/2BVABD70KNEUS35PA9LB88CJQ3.jpg', '所有的改变，都伴随着阵痛，若不痛苦，势必会吃苦', 7787, 0);
INSERT INTO `mto_post` VALUES (15, 1, 2, 0, '2019-04-30 09:27:01', 1, 0, 0, '1、放下你的浮躁，放下你的懒惰，放下你的三分钟热度，放空你禁不住诱惑的大脑，放开你容易被任何事物吸引的眼睛，放淡你什么都想聊两句八卦的嘴巴，静下心来做你该做的事，该好好努力了！ 2、有时候真的努力后，你会发现自己要比想象的优秀很多。记住一句话，越...', '经典语录', '/storage/thumbnails/_signature/2VL7ALBHFAROESE3TPDJT98TT3.jpg', '只有在经历之后，领悟了多少，就有多少成长', 8170, 0);
INSERT INTO `mto_post` VALUES (16, 1, 3, 0, '2019-04-30 09:29:34', 1, 0, 0, '人们总说：解决人生困扰的方法在于找到明确的目标。但是，很多人，像我一样，或许终其一生也找不到热爱的东西，不知道想过怎样的生活，怎么办？ 就我来说，人生的很多际遇，比如学习、比如工作、比如朋友……都来自于跟那些优秀的人同行，从而让人生变得更具想象力...', '随笔', '/storage/thumbnails/_signature/3MAAQR10SRUOG5LN6T7I61M4PM.jpg', '当你不知道去哪儿，不如先选择与谁同行', 99554, 0);
INSERT INTO `mto_post` VALUES (17, 1, 3, 0, '2019-04-30 09:31:47', 0, 0, 0, '那天来了一个买书的人，很普通的老农民，来了之后，就坐在那里看书。临走的时候，买了一本书，他接过我包装好的书，很犹豫地说： “把方便袋子给我换换吧，我母亲刚刚不在了，用红的我心里难受!”我把方便袋子给他换成白色的，他千恩万谢地走了。这时我才想起，他...', '随笔', '/storage/thumbnails/_signature/1J0R5OON3677O9QKKQNMFEF2A4.jpg', '平凡人的平凡事儿', 45857, 0);
INSERT INTO `mto_post` VALUES (18, 1, 3, 0, '2019-04-30 09:34:12', 1, 0, 0, '谁终将声震人间，必长久深自缄默；谁终将点燃闪电，必长久如云漂泊。——尼采《谁终将声震人间》  那时我们还年轻。穿过残垣断壁苍松古柏，我们来到山崖上。沐浴着夕阳，心静如水，我们向云雾飘荡的远方眺望。其实啥也看不到，生活的悲欢离合远在地平线以外，而眺...', '随笔', '/storage/thumbnails/_signature/29BL4BM8R7A87CT1488OAQMEIK.jpg', '如果做不了大事，能把小事做得大气一点', 25878, 0);
INSERT INTO `mto_post` VALUES (19, 1, 3, 0, '2019-04-30 09:35:19', 0, 0, 0, '文：李丹 有时候我们会觉得很失落，因为我们正在事业的低谷期，满腹学识无以致用；有时候我们会觉得很孤单，身边的朋友各个出双入对，而我们却是被留下的那一个；有时候我们会觉得彷徨，别人都过的那么幸福快乐，而我们却过的如此痛苦无奈…….这样的日子，我们似...', '随笔', '/storage/thumbnails/_signature/12B0OHK9T8BP05MCCMC8HP8DOB.jpg', '决定你生命的层次的究竟是什么？', 23660, 0);
INSERT INTO `mto_post` VALUES (20, 1, 3, 0, '2019-04-30 09:40:21', 1, 0, 0, '过自己不想要的生活需要勇气，过自己想要的生活，不但需要勇气，你还得有能力。 人与人之间，有时感觉不对了，就稍微把距离拉远一点，过阵子，感觉对了，可以慢慢再近一点，有点类似跳华尔滋，是美丽的舞步。至于踩到了脚，没关系，笑笑就过去吧！—— 贝莉Ber...', '随笔', '/storage/thumbnails/_signature/2G2O8KV8KKATH1U8N26S7UO80L.jpg', '没有人可以回到过去，但谁都可以从现在开始', 114610, 0);
INSERT INTO `mto_post` VALUES (21, 1, 3, 0, '2019-04-30 09:41:27', 1, 0, 0, '当你七十岁，拿起老相片，除了满腹感慨，竟然找不到一丝英姿飒爽的影子。你只能任由皱纹无奈的放肆生长，然后看着夕阳日落，你的孤独只能在苍老的记忆里蔓延。 其实终老并不可怕，可怕的是你的一生没有一件令自己骄傲的事。你不是患者，但你却得了退缩的病。 人活...', '随笔', '/storage/thumbnails/_signature/1G9F56N6JUFKAIIE4C66USQI40.jpg', '你要足够努力，才能一直骄傲走下去', 44130, 0);
INSERT INTO `mto_post` VALUES (22, 1, 3, 0, '2019-04-30 09:42:30', 1, 0, 0, '商锦维/文 朋友分为三种，一种是远的，一种近的，还有一种是不远不近的。 远的朋友是用来怀念的。那份古早的友谊或深或浅，在时间的长河里最恰好的某一处，径直被放进了保鲜冷库妥善保存，平日里不摸不碰不见光，可只要每每打开回忆的门缝儿瞧一眼，永远都是那样...', '随笔', '/storage/thumbnails/_signature/235NGEK16H2C025RSLK05LI4I4.jpg', '其实你真的不需要那么多朋友', 6663, 0);
INSERT INTO `mto_post` VALUES (23, 1, 3, 0, '2019-04-30 09:45:14', 1, 0, 0, '鱼儿的故事 两条小鱼在水里游泳，突然碰到一条从对面游来的老鱼向他们点头问好： “早啊，小伙子们。水里怎样？” 小鱼继续往前游了一会儿，其中一条终于忍不住了，他望着另一条，问道： “水是个什么玩意？” 如果你以为华莱士将自己喻作“智慧老鱼”，正在向...', '随笔', '/storage/thumbnails/_signature/C46M3O0NL1JPL2T60L8ETCC98.jpg', '难过只是提醒你，还有其他的选择', 8962, 0);
INSERT INTO `mto_post` VALUES (24, 2, 4, 0, '2019-04-30 09:57:13', 1, 0, 0, '不要跟那些牙尖嘴利的人计较，过得好的人，都在忙着享受生活呢，过得不好又心眼儿坏的人，才巴望别人也一样不如意，才试图用自己的刻薄，削去别人的幸福感。别理这些人，好好爱自己。你勤奋充电、努力工作、保持身材、对人微笑，这些都不是为了取悦他人，而是为了扮...', '壁纸', '/storage/thumbnails/_signature/IHQASKA7RCQUM75TSOD000097.jpg', '人生没有白走的路，每一步都算数', 745, 0);
INSERT INTO `mto_post` VALUES (25, 2, 1, 1, '2019-04-30 10:04:53', 0, 0, 0, '1、亲爱的女孩，无论经历过什么，都要努力让自己像杯白开水一样，要沉淀，要清澈。白开水并不是索然无味的，它是你想要变化的，所有味道的根本。绚烂也好，低靡也罢，总是要回归平淡，做一杯清澈的白开水，温柔的刚刚好。 2、小时候觉得悲伤很酷，听催泪的情歌，...', '指尖时光', '/storage/thumbnails/_signature/2V7QNQ9IOQH8CUVFLCAHJ6OA44.jpg', '相信生活是美好的，相信人生是充满希望的', 45712, 0);
INSERT INTO `mto_post` VALUES (26, 1, 3, 0, '2019-05-05 07:04:50', 0, 0, 0, '肥肥鱼是个多愁善感的文艺青年，还获过文青聚集地——豆瓣网颁发的“豆瓣理想青年奖章”呢，曾经他在自己的音乐人小站简介里写过一句话，说“人生就是不断地往前走想要为困惑找到一个出口，可好不容易到了出口，发现迎接你的还是困惑。”后来他觉得自己的生活就是这...', '', '', '生活不是梦，但梦可以是生活', 6937, 0);
INSERT INTO `mto_post` VALUES (27, 1, 3, 0, '2019-05-05 07:06:03', 0, 0, 0, '半个月前一个读者给我留言，一个大一的女孩，和她的初恋在一起三年多，在一起时男孩曾离开过她和别的女生相恋，后来回到她身边，现在又抛下他，再次告诉他心里有了别人，她说现在的自己很痛苦。她问我，“我想知道怎样才能快点好起来 ” 我在脑海里想了很多方法，...', '', '/storage/thumbnails/_signature/1HD2C5U9PVCHMM9RMBVC7RBUA0.jpg', '你不必逞强,时间会为你疗伤.', 69328, 0);
INSERT INTO `mto_post` VALUES (28, 1, 3, 0, '2019-05-05 07:07:14', 0, 0, 0, '住在一间安静优美的小屋， 在鸟鸣中起床， 推窗有花香铺面而来。 早餐过后， 在阳光温暖的抚摸里， 我们骑车踏青或光脚奔跑。 累了， 我们就躺在绿草的清凉中， 看天空湛蓝如洗。 入夜， 我们一起数繁星点点， 聊我们的心事和青春。 遥望星空，此时， ...', '', '', '愿你的窗台，繁花盛开', 6936, 0);
INSERT INTO `mto_post` VALUES (29, 1, 1, 0, '2019-05-07 12:26:11', 0, 0, 0, '陈希是我的初恋。从高二到大三，我喜欢了他将近五年的时间，几乎是一整个青春。我们之间从始至终没有真正在一起过，也没有对彼此表白过，但他对我很好，也很懂得我。我觉得也够了。曾经在一个地方写了很长的文，从我们初二的第一次见面到我们大二的最后一次见面。断...', '', '/storage/thumbnails/_signature/33MRKN1MUHU6HBNJQUALKKSHRM.jpg', '与初恋的最后一次见面', 422, 0);
INSERT INTO `mto_post` VALUES (30, 1, 1, 0, '2019-05-08 17:14:15', 0, 0, 0, '再次见到J已是5年以后。 J坐在对面的咖啡座上，掬书端茶，注视着窗外，神情淡然，眉目之间透着悠闲。我如约而至，再见他不禁“春心”荡漾。 我牵起嘴角问他：“这么急找我,发生什么事了？” “没有什么事，我下个月结婚了，你来当我伴郎吧。” 我很惊讶：“...', '', '/storage/thumbnails/_signature/1USTV6KGB0I3BQ0CO3US21S5RE.jpg', '有些人，因为太相信在一起，最后分手了', 18, 0);
INSERT INTO `mto_post` VALUES (31, 1, 1, 0, '2019-05-08 17:15:22', 0, 0, 0, '一个人的旅行， 我走过了一季又一季， 从夏蝉鸣叫，到雪花飘飞。 一个人的旅行， 我漂泊了一程又一程， 从韶华年茂，到眉宇沧桑。', '', '/storage/thumbnails/_signature/196OVS3UHRJJ83F9MNUFAQJQ6V.jpg', '我一个人 吃饭 旅行 到处走走停停', 90, 0);
INSERT INTO `mto_post` VALUES (32, 1, 1, 0, '2019-05-09 08:28:03', 2, 0, 0, '这么多年，我一直在学习一件事情，就是不回头， 只为自己没有做过的事情后悔，不为自己做过的事情后悔。  人生每一步行来，都是需要付出代价的。 我得到了我想要的一些，失去了我不想失去的一些。 可这世上的芸芸众生，谁又不是这样呢？  这年头一点都不缺爱...', '', '/storage/thumbnails/_signature/2E89LCP36V660GAJ18KTJ24E6G.jpg', '就算终有一散，也别辜负相遇', 248, 0);
INSERT INTO `mto_post` VALUES (33, 1, 1, 0, '2019-05-11 11:05:57', 0, 0, 0, '小时候，幸福是件很简单的事；长大后，简单是件很幸福的事。 你懂吗？： 1.不是自己的东西不要,就是再喜欢也不行,要懂得放弃； 2.过去的事情可以不忘却,但一定要放下； 3.别人说的记在脑袋里,而自己的则放在心里； 4.你永远没有你本身想象中那么重...', '', '/storage/thumbnails/_signature/30N7FNPC8DVTAKV6QUNRAGT0Q1.jpg', '小时候，幸福是件很简单的事；长大后，简单是件很幸福的事。', 22, 0);
INSERT INTO `mto_post` VALUES (34, 1, 1, 0, '2019-05-11 11:07:46', 0, 0, 0, '暑假是个分手季，身边大大小小的情侣都已将爱化为恨与痛，从此相看两生厌。8月初的时候，偶看兔子和兔子先生的人人，看他们每天不厌其烦地转载各种心灵鸡汤，我就察觉出了一些不对头。后来兔子和我说，“我和他分了，一个月前的事了，这件事就不要再说了”。可能她...', '', '/storage/thumbnails/_signature/3B0MUF4S0DERRUQANPLHLC2LAE.jpg', '丢弃的东西就不要再捡了，哪怕曾经再美好', 83, 0);
INSERT INTO `mto_post` VALUES (35, 1, 1, 0, '2019-05-11 11:17:24', 0, 0, 0, '难过就是，虽然很难，但总会过去。 今天晚上你买了很多酒，我们去楼下的餐馆炒了几个菜带了回来，摊开一张小桌子，我们就菜喝酒，说话变成了很久远的事。 久远到，你醉了，红通通的一张脸，擦眼泪旳纸装满了垃圾桶，我只知道给你递纸，所有想说的话都哽咽在你的泪...', '', '/storage/thumbnails/_signature/3TTBDB9EDKP5BCVKJD36IU7S1H.jpg', '你曾住在我心上，现在空了一个地方', 67, 0);
INSERT INTO `mto_post` VALUES (36, 1, 3, 0, '2019-06-06 09:03:35', 0, 0, 0, '前段时间，朋友在微博上发了一个话题征集，问： \" 错过一个人的感受是什么？ \" 在这条微博的评论底下有很多经历过错过和失去的人，大家长篇大论地诉说着自己和那个人的遗憾，我看到有个男孩儿直接把一个名字缩写打了出来，没多说什么。 那一刻我突然意识到原...', '感受', '', '错过一个人的真实感受，你中了几条？', 80, 0);
INSERT INTO `mto_post` VALUES (37, 1, 1, 0, '2019-06-11 13:51:34', 1, 0, 0, '时间敲起的一个个浪花，渐渐散开成水滴，一滴……一滴……又滴落回海里。 我们相遇在浪花里，最后散落到海里，或许还会再次相遇，却已不再是那浪花。 骄阳似火的日子似乎在昨天，冷风拂面不过在今日。 桑，你那儿天气好吗？是否和我一样冷热交叠？ 昨日梦里遇见...', '夏日', '/storage/thumbnails/_signature/3D20H2NQ935S9T2SGPNM2SFVSR.jpg', '夏日骤凉 寒如秋至', 25, 0);
INSERT INTO `mto_post` VALUES (38, 1, 1, 0, '2019-06-11 13:55:27', 0, 0, 0, '陆地或海洋，相爱便好，遇见过便好，哪怕用荒凉的余生做抵偿。我们遇见了，可至始至终，都只是我爱你。 （壹） 雨是一身的过错，独成了失落。 日夜的飘雨，滴不成荒。 明明，应该是春暖花开的时节，花都开好了，却还没迎来温暖。 忘记了自己太多的事，是走的太...', '时光', '/storage/thumbnails/_signature/1HDVRCB66NFTC8816Q9RIDS655.jpg', '如果时光走了，谁还会等我？', 35, 0);
INSERT INTO `mto_post` VALUES (39, 1, 1, 0, '2019-06-11 14:45:42', 0, 0, 0, 'Holiday   专辑：Holiday 语种： 纯音乐 流派：Electronica 发行时间：2021-09-05', '电音', '/storage/thumbnails/_signature/1263FUHL3CHFR7LIG0RCF838EA.jpeg', '【MUSIC】Holiday Tobu / Itro 专辑：Holiday  ', 146, 0);
INSERT INTO `mto_post` VALUES (40, 1, 1, 0, '2019-06-12 14:59:27', 0, 0, 0, '在这缤纷的世界里，站在同一个太阳下，我们只有捧出一颗真心，真诚地对待别人，容纳别人，才能做好真正的自己。 一双灵空的耳“金无足赤，人无完人”。就是这样寥寥几字概括出一个亘古不变的真理。不错，我们每一个人都有自己的不足之处，在人生的道路上难免会出现...', '微笑', '/storage/thumbnails/_signature/3RKS7CU8AA7721PEG00HLCSMJC.jpeg', '用微笑面对生活，你会发现生命之美，永远与你同在', 171, 0);
INSERT INTO `mto_post` VALUES (41, 1, 4, 0, '2019-10-28 11:18:01', 0, 0, 0, '千万不要随便网恋！！哈哈哈哈哈哈 网友评论： @女追男进行ing：一个敢说一个敢听 @上杉夏乡·：其实我是王思聪的小号？？？信吗哈哈哈 @女装大佬：哈喽看我！我也会装女生，有老公来给我圈钱吗？ @撩哭你：吃鸡第1菜，王者第一坑，只要您召唤，我随时...', '网络', '/storage/thumbnails/_signature/134JEE0MHB1R1ORC6TFT6VIKIJ.jpg', '网络世界到底多虚假，一个装女生一个装经理', 32, 0);
INSERT INTO `mto_post` VALUES (42, 1, 2, 1, '2019-11-06 15:48:10', 0, 1, 0, '今天，我的好朋友大头午夜给我打了一个咨询电话：要不要从现在的国企辞职去创业？我用自己健全的心眼儿，给他分析了利弊得失之后，他依然困惑不已，踌躇不前，原因在于，他辞职以后，没有安稳的工资，没有每月按时缴纳的保险，没有家人朋友艳羡的目光…… 这样的电...', '世界', '/storage/thumbnails/_signature/14IBNVM6PTE3CA609FUSHCO26E.jpeg', '选择舒适，就别羡慕大千世界多精彩', 58, 0);

-- ----------------------------
-- Table structure for mto_post_attribute
-- ----------------------------
DROP TABLE IF EXISTS `mto_post_attribute`;
CREATE TABLE `mto_post_attribute`  (
  `id` bigint(20) NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `editor` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'tinymce',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mto_post_attribute
-- ----------------------------
INSERT INTO `mto_post_attribute` VALUES (1, '1、时间在变，人也在变。生命是一场无法回放的绝版电影，有些事，不管你如何努力，回不去就是回不去了。就算真的回去了，你也会发现，一切已经面目全非。唯一能回去的，只是存于心底的记忆。世界上最远的距离，不是爱，不是恨，而是熟悉的人，渐渐变得陌生。\r\n\r\n2、你只是仗着我比较爱你，所以你会舍得伤害我吧。人心是慢慢变冷，树叶是渐渐变黄。故事是缓缓写到结局。而爱，是因为失望太多。才变成不爱。\r\n\r\n3、你必须明白，要走的人你留不住，装睡的人你叫不醒，不爱你的人你感动不了。忽冷忽热最折磨人，反反复复最伤人。和你生疏到这种地步，真是不容易。\r\n\r\n4、有一天我终于对你不冷不热了，有一天我终于放手对你死心了。有一天我和别人走在一起了，有一天我和你彻底成为陌生人了，你会不会有一点后悔自己当初的不珍惜。\r\n\r\n5、也许一个人，要走过很多的路，经历过生命中无数突如其来的繁华和苍凉后，才会变得成熟。如果有一天我不再主动找你，不是因为你不重要了，而是我不知道我还重不重要。\r\n\r\n6、无数个瞬间我都在想，你在就好了，结果还是我一个人熬过了所有的这个时刻，后来，不用了，谢谢。或许我还是很喜欢你，只是少了那份非要在一起的执着。\r\n\r\n7、很多事，不是我想，就能做到的。很多东西，不是我要，就能得到的。很多人，不是我留，就能留住的。你就像指缝间的阳光，温暖，美好，却永远无法抓住。不再挣扎，不再纠缠，我一个人也很好。\r\n\r\n8、如果下辈子还会遇到你，我一定会记得避开。如果只是友情的话，能好好做朋友就好好做朋友吧，不要太贪心了。爱情这种事太极端，要么一生，要么陌生。\r\n\r\n9、已经渐渐养成不去解释的习惯，很多情绪也无从分享，干脆自我消化。懂的人自然懂，不懂的人再多解释也有时差，有些故事只能说给懂的人听。\r\n\r\n10、我以我的方式爱你，你却说我不了解你。可是我想告诉你，我也许给你的不是你想要的，但是我给你的都是我认为最好的。\r\n\r\n11、失望和生气怎么会一样，生气只是想被人哄，而失望是你说什么我都听不进去，开始理性思考这段感情存在的意义。\r\n![15b9eb7ef2f4cb.jpeg](/storage/thumbnails/_signature/10DF36VVTG01171B22BMC6R9CO.jpeg)', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (2, '1、我们皆是赶路的众生，泪笑掺杂，悲喜交织，没有谁的欢乐可以长久，执手再紧亦将曲终人散。人生原本一场罪，痛苦的人，不过是自得其所；幸福的人，也只是苦中作乐。只有真切的哭过，绝望的累过，钻心的痛过，无言的悔过，此生方算完整。\r\n\r\n![5_150902093952_1.jpg](/storage/thumbnails/_signature/1GHRRJCO9C76DRO5REGBJPKC9O.jpg)\r\n2、让你烦恼的人，是来帮你的；让你痛苦的人，是来渡你的；让你怨恨的人，是你生命的贵人；让你讨厌的人，是助你成长的；他们都是你自己的不同侧面，是另一个你自己。相反，你喜欢深爱的事物，常给你制造痛苦带来烦恼，它们是你的影子，让你老也抓不住。是故，保持一个好心态去面对才是真理。\r\n\r\n3、学会温和，对人对事，不要随意发脾气，谁都不欠你的。2、学会宽容，每个人都有自己的难处，大家都不容易。3、学会放弃，拽的越紧，痛苦的是自己。4、学会低调，取舍间，必有得失，不用太计较。5、学会简单，踏实而务实，不庸人自扰，越简单越快乐。6、学会忘记，善忘是一件好事。\r\n\r\n4、人生受益四言：健康是最高的利益；满足是最好的财产；信赖是最佳的缘分；心安是最大的幸福。人生三愿：吃得下饭；睡得着觉；笑得出来。人生四原则：懂得选择；善于放弃；耐得住寂寞；经得起诱惑。\r\n\r\n5、你尽量照顾每个人的感受，不想身边的人不开心，你总能发现他们情绪的细微变化，可最后被撇下的永远是你。若有一天，我消失了，谁会半夜突然醒来，想我想到泣不成声。\r\n\r\n6、跟自己说声对不起，因为总是莫名的忧伤。跟自己说声对不起，为了别人为难了自己。跟自己说声对不起，因为伪装让自己很累。跟自己说声对不起，因为倔强让自己受伤。\r\n\r\n7、有时候，嘴上说的，跟心里想的压根不是同一回事。其实，我很需要你，只是，不敢打扰你。喜欢你，很久了。等你，也很久了。现在，我要离开，比很久很久还要久。\r\n\r\n8、你一副不缺我的样子，让我怎敢深拥你；我们都像小孩，胡闹是因为依赖，礼貌是因为陌生，生气是因为在乎，不联系是因为怕自己是多余。\r\n\r\n9、主动久了才发现，心已随着那不冷不热的话语渐渐冷却；在乎多了才感觉，情已伴着那不痛不痒的态度慢慢瓦解。别把自己弄成了收不了场的笑话，总有一天我会坚强得让所有人都心疼。\r\n\r\n10、要走的人留不住，装睡的人叫不醒，不喜欢你的人感动不了。只是一起走过一段路而已，何必把怀念弄的比经过还长。最痛的，不是离别，而是离别后的回忆。', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (3, '1、每个人都有自己的活法，没必要去复制别人的生活。有的人表面风光，暗地里却不知流了多少眼泪；有的人看似生活窘迫，实际上却过得潇洒快活。幸福没有标准答案，快乐也不止一条道路；收回羡慕别人的目光，反观自己的内心。自己喜欢的日子，就是最好的日子；自己喜欢的活法，就是最好的活法。\r\n\r\n2、一件事，就算再美好，一旦没有结果，就不要再纠缠，久了你会累；一件物，就算再留念，如果你抓不住，就要适时放手，久了你会心碎。有时，放弃是另一种坚持，你错失了夏花绚烂，必将会走进秋叶静羌。任何事，任何人，都会成为过去，不要跟它过不去，无论多难，我们都要学会抽身而退。\r\n\r\n3、我们这一生，要走很多条路，有笔直坦途，有羊肠阡陌；有繁华，也有荒凉。无论如何，路要自己走，苦要自己吃，任何人无法给予全部依赖。没有所谓的无路可走，即使孤独跋涉，寂寞坚守，只要你愿意走，踩过的都是路。你以为走不过去的，跨过去后回头看看，也不过如此。不回避，不退缩，未来终将到来。\r\n\r\n4、日出东海落西山，愁也一天，喜也一天；遇事不钻牛角尖，人也舒坦，心也舒坦；自古万事难得圆，好也随缘，赖也随缘；人非圣贤难十全，睁一只眼，闭一只眼；忙里偷闲勤锻炼，忙也乐观，闲也乐观；常与知己聊聊天，你也心宽，他也心宽；万贯家产难进棺，贫也成灰，富也成灰。\r\n\r\n5、有的路，是用脚去走。有的路，要用心去走。绊住脚的，往往不是荆棘和石头，而是心。所以，看起来是路铺展在我们眼前，实际上，是心扑腾在路上。深一脚，浅一脚，痛一回，哭一回，欢喜在路上，悲伤在路上。眼光不到，容易走弯路；理智丧失，容易走绝路。但只要心不走在绝路上，生活也终不会给你绝路走。\r\n\r\n6、心情不好时，要经常问自己，你有什么想不通？有什么看不惯？如果你觉得不愉快了，就看看窗外，有无限的风光，看看广阔无垠的天空，也学青天不关门。人生没有绝望，只有想不通，人生没有尽头，只有看不透。新念何必理旧梦，一朝一夕皆来生。转个念就是希望，回个头就是来生。\r\n\r\n7、一念苦，一念乐，一念得，一念失，我们的心在苦乐得失间无数次的来与去，会有疲倦的时候，我们要时常护理好自己的内心，心平静了，才能听见自己的声音。心清净了，才能看见万物的清澈，心放下了，才不被他物所负累，心明了了，才不因外境而迷离。如果，人生是一个剧场，这个导演不在别处，只在心里。\r\n\r\n8、人生最大的痛苦就是心灵没有归属，不管你知不知觉，承不承认。心存美好，则无可恼之事；心存善良，则无可恨之人；心若简单，世间纷扰皆成空。做好人，身正心安魂梦稳；行善事，天知地鉴鬼神钦。你若不疑，人间不寒。你若不离，世界不远。你若不恨，苍天有暖。你若不语，四海升平。\r\n\r\n9、愿意吃亏的人，终究吃不了亏，吃亏多了，总有厚报；爱占便宜的人，定是占不了便宜，赢了微利，却失了大贵。再好的东西，你也不可能长久拥有，不必计一时回赠，莫如常怀怜悯之情，常施援助之爱，得到人心，他物不缺。莫要以为成败无因，今天的苦果，是昨天的播种；当下的付出，是明日的善报。\r\n\r\n10、不为鸡毛蒜皮的事情而斤斤计较。不执于苦时，苦就渐渐远了。不执于乐时，乐就渐渐近了。明心了了，给世界一个微笑，一份善意，一份担待，一份宽容！心宽了，路就宽了。趁岁月安好，种上一片福田，趁阳光温暖，播撒福报的种子，就让所有的相遇都是生命中没有遗憾的永恒。知足者得乐，惜福者得福。\r\n![0d7d91655e7ad1.jpg](/storage/thumbnails/_signature/3J8200LKISII79JS87C75F38QD.jpg)', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (4, '1、相信人生不会亏待你，你吃的苦，你受的累，你掉进的坑，你走错的路，都会练就独一无二成熟坚强感恩的你。\r\n\r\n2、幸福没有明天，也没有昨天，只有现在。有的爱散了，有的爱远了，有的爱淡了，若你发现身边有一份不离不弃的陪伴，那是时间沉淀给你最感动的圆满。\r\n\r\n3、每个人心里，都有个过不去的人，不管你有多爱，TA在你的生命里只有两种结局，要么是终点，要么是路人，再无别的选择。\r\n\r\n4、不冷战，不任性，多沟通。用舒服的方式喜欢和爱，知道承担，懂得分享，一起进步。愿你成为这样的人。愿你遇见这样的人。\r\n\r\n5、该来的都会来，该走的都会走，缘起缘灭、终有时，随缘、顺缘、不强求；遇到任何情况，面对、接受、处理、放下、不苛求。借了一副空皮囊而来，临了又空空无一物地去，人生几十年，不过如此。\r\n\r\n6、世上唯一永恒不变的，是无常。许多人事，无论你费尽多大心机，花了多少力气，即使能够拥有，也都是暂时的。身处无常的世界，要有一个平常的心态，才跟得上幸福的脚步。所谓平常的心态，就是是花开花谢皆风景的淡然，不以物喜，不以己悲的坦荡，安心享受得到，坦然面对失去的豁达。\r\n\r\n7、透过生死，才会明白健康的重要；透过成败，才会明白通达的重要；透过得失，才会明白淡泊的重要。人生最悲哀的事情，莫过于苦苦追求那些原本可以放弃的，却忽略了生命中那些最最宝贵的。人生难免会有迷茫，关键在于明白自己从哪里来，要到哪里去。多点淡然，少点虚荣，活得真实才能活得自在。\r\n\r\n8、看清一个人又何必去揭穿；讨厌一个人又何必去翻脸。活着，总有看不惯的人，就如别人看不惯我们。人的成熟不是年龄，而是懂得了放弃，学会了圆融，知道了不争。有些苦衷不言痛，不是没感觉，而是知道说与不说都一样；那些暗伤，不是不在乎，而是懂得了慢慢修复。\r\n\r\n9、人生有太多的问题找不到答案，太多的答案搞不懂为什么，冥冥中一切皆有定数，我们需要做的就是以善心处于顺境，以静心安于逆境。\r\n\r\n10、人生的一切痛苦，都来源于自己的内心。过去的，别再遗憾；未来的，无须忧虑；现在的，加倍珍惜。人生在世，要的就是快乐！一切看淡，心也就不累。所以，不论有多少的委屈，多么的难受，记得最终能治愈自己的还是自己。万事不能强求，否则只会给自己带来捆饶，只会给自己带来痛苦，只会让自己不开心。\r\n![47.jpg](/storage/thumbnails/_signature/JDD3HIT8OKJ22IJGG3236MDU4.jpg)', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (5, '1、生活如果不宠你，更要自己善待自己。这一生，风雨兼程，就是为了遇见最好的自己，如此而已。若我白发苍苍，容颜迟暮，你会不会，依旧如此，牵我双手，倾世温柔。\r\n\r\n2、等与不等，我都等了。在与不在乎，我都已在乎了。任何事情，总有答案。与其烦恼，不如顺其自然。不论结局，感恩相遇。生命中遇到的人，你要尽量去爱他们，即使终有一别，也别辜负了相遇。\r\n\r\n3、养好受伤的心，保持百斤左右体重，照顾好挑剔的胃，交一个能一路废话的朋友；给自己疲惫的生活找一个温柔的梦想，然后彻彻底底跟过去的悲伤道别。这就是你接下来要做的事。\r\n\r\n4、你还很年轻，将来你会遇到很多人，经历很多事，得到很多，也会失去很多，但无论如何，有两样东西，你绝不能丢弃。一个叫良心，一个叫理想。\r\n\r\n5、越长大，越知道，做事不容易，越知道，每个人都有难处，也就越不再随随便便发表评论，或者瞧不起谁。这不是虚伪，而是懂得体谅，温柔地和这个世界相处。\r\n\r\n6、我容易被感动，也容易满足；也许别人不经意对我的好，我会一直记得；我不坚强也不爱防备，我唯一能给别人的就是绝对的信任；不是真心就不要随意插足我的生活。\r\n\r\n7、人有时候也是可怜，喜欢的人得不到，得到的不珍惜，在一起的怀疑，失去的怀念，怀念的想相见，相见的恨晚，终其一生，都满是遗憾。\r\n\r\n8、女人就是要富养自己。你身上所有的焦虑和戾气，都是亏待出来的。不想被俗世浸透，那从现在开始，先爱上自己。我们要对自己足够好，才能一直优雅到老。\r\n\r\n9、回首那些走过的路，每一步都走的好孤独，而学会孤独正是成长的必修课，所以，别慌，一步步走，只要通过了，这就是上天给的礼物。\r\n\r\n10、最大的遗憾，不是错过了最好的人，而是当你遇见更好的人时，却已经把最好的自己用完了。感情是易耗品，只愿你把最好的自己留给对的人。\r\n![timg.jpg](/storage/thumbnails/_signature/14M9I5Q5PASBLBPOGORJ0RU7RO.jpg)', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (6, '1、看清了很多人，却不能随意拆穿；讨厌着很多人，却又不能轻易翻脸。有时候，生活就是要逼自己变得逆来顺受，宠辱不惊。\r\n\r\n2、敌人变成朋友，就比朋友更可靠，朋友变成敌人，比敌人更危险。有些事知道了就好，不必多说。有些人认识了就好，不必深交。\r\n\r\n3、我给你一颗糖，你很高兴，当你看到我给别人两颗，你就对我有看法了，但你不知道他也曾给我两颗糖，而你什么都没给过我。\r\n\r\n4、你知道的不要全说，听到的不要全信。有时不快乐，是因为太在意别人的感觉，一句非议一件小事，都在内心耿耿于怀，让外界控制了自己的心情。多数时候，别人说的话做的事，他或许早就忘了，我们却还在自我折磨着。活着已然不易，一路颠簸而来，大可不必屡屡跳下别人无心设置的陷阱。\r\n\r\n5、你以为人生最糟的事情是失去了最爱的人，其实最糟糕的事情却是，你因为太爱一个人而失去了自己。心本身不大，千万不要背负太多。昨天的纠结，只会囚禁你的今天和明天。人生，一定要学会释放！\r\n\r\n6、记住有时候心眼别太好了，也不要什么事都为别人着想！别人不会想你的感受和种种不易。他们会觉得一切都是理所当然。\r\n\r\n7、人的感情就像牙齿，掉了就没了，再装也是假的，掉了的东西就不要捡了，接受突如其来的失去，珍惜不期而遇的惊喜。\r\n\r\n8、张牙舞爪的人，往往是很脆弱的。因为真正强大的人，是自信的，自信就会温和，温和就会坚定。你说话的方式，体现了你的情商和修养，气不和时少说话，有言必失；心不顺时莫做事，做事必败。\r\n\r\n9、一个人，如果连自己的情绪都控制不了，即便给你整个世界，你也早晚毁掉一切。你成不了心态的主人，必然会沦为情绪的奴隶。请记住：脾气永远不要大于本事。\r\n\r\n10、生活就像一杯白开水，你每天都在喝，不要羡慕别人喝的饮料有各种颜色，其实未必有你的白开水解渴，人生不是靠心情活着，而要靠心态去生活。调整心态看生活，处处都是阳光。\r\n![1475906200_nwAqMNSH.jpg](/storage/thumbnails/_signature/8KGLIC6U21S3FBMTH2I422RV4.jpg)', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (7, '1、我是要有多勇敢，才敢一直对你念念不忘。我是要有多坚强，才能承受你的一伤再伤。若不是因为爱着你，怎么会深夜还没睡意，每个念头都关于你，我想你，好想你。\r\n\r\n2、总有那么一些歌，让我们悲伤，让我们哭泣。但其实让我们哭泣的并不是那些歌本身，而是藏在回忆里的那些人。\r\n\r\n3、我真的爱你，闭上眼，以为我能忘记，但流下的眼泪，却没有骗到自己。总有那么一个人，你总说不爱他了，却听到关于他的消息时，心总是像针扎一样。\r\n\r\n4、想一头扎进你怀里，闻着你身上的熟悉味道，告诉你这些天来的委屈，以及，我很想你。有时候我真想忘了你，只记得这个世界，然而，我常常忘了整个世界，只记得你。\r\n\r\n5、感情最折磨的不是别离，而是感动的回忆让人很容易站在原地，以为还回得去。总有那么一个人，心里总想着，但却刻意不再联系，不再打听，不再打扰。\r\n\r\n6、痛过，才知道如何保护自己；哭过，才知道心痛过是什么感觉；爱过，才知道自己其实很脆弱。其实，生活中并不需要这么些无谓的执着，没什么就真的不能割舍。\r\n\r\n7、我以为闭上眼睛，就可以不想你，可满世界晃动的，都是你熟悉的身影；我以为捂上耳朵，就可以远离你，可耳畔萦绕的，全是你缠绵的回音；我以为酒醉了，就可以忘记你，可我的心翻江倒海，只记得你一个人。\r\n\r\n8、很想主动联系你，很想关心你，很想知道你最近过得好不好，也很想紧紧的抱着你并告诉你，我很爱你很想你，但是有些爱，只能止于唇齿，掩于岁月。\r\n\r\n9、我一生中最幸运的两件事。一件，是时间终于将我对你的爱消耗殆尽。一件，是很久很久以前有一天，我遇见你。早知如此绊人心，不如当初不相逢。\r\n\r\n10、或许在某个夜里，你会无端想起一个人，那个曾让你对明天有所期待，但却完全没有出现在你明天里的人。每当夜深人静想起你的时候，眼泪总是忍不住的往下流。\r\n![e6945659e59e61.jpg](/storage/thumbnails/_signature/1VJ343JNSF8A9ROEGJK7M69LNG.jpg)', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (8, '1、不必太纠结于当下，也不必太忧虑未来，当你经历过一些事情的时候，眼前的风景已经和从前不一样了。感情里，总会有分分合合；生命里，总会有来来去去。学会浅喜欢，静静爱，深深思索，淡淡释怀。\r\n\r\n2、与其指望遇到一个谁，不如指望自己能吸引那样的人；与其指望每次失落的时候会有正能量出现温暖你，不如指望自己变成一个正能量的人。\r\n\r\n3、除了你自己，没有人会明白你的故事里有过多少快乐或伤悲，这世上根本不存在感同身受，所以别傻傻的摊开伤口向别人诉苦，这世上多的是撒盐的人，而不是医生。慢慢的，慢慢的总要变成形单影只，我们各怀心事，谁也安慰不了谁，谁也救赎不了谁，最漆黑的那段路终究要独自一人走完。\r\n\r\n4、累的时候抱抱自己，哭的时候哄哄自己，身边不可能无时无刻有一个人陪着你，宠着你，要学会自己疼自己。没有人会一直顺利，愿你更加强大，然后，有一天，你可以笑着讲述那些曾让你哭的瞬间。\r\n\r\n5、接受孤独，接受失去，接受自己是不完整的，偶尔还会被变故打败。也许接受是难以下咽的，但在无法承受的时候，要学会放过自己。\r\n\r\n6、不要期待，不要假想，不要强求，顺其自然，如果注定，便一定会发生。无须强求，最美好的总会在不经意间出现。怕什么路途遥远。走一步有一步的风景，进一步有一步的欢喜。幸福，在路上。\r\n\r\n7、何时何地，你都要明白，你是活给自己看的，别把别人的评价看得太重，凡事只要于心无愧，就不必计较太多。你才二十几岁，就担心这辈子再也遇不到喜欢的人了。余生很长，何必慌张。\r\n\r\n8、闭上眼睛，安静内心告诉自己。别人想什么，我们控制不了；别人做什么，我们也强求不了。唯一可以做的，就是尽心尽力做好自己的事，走自己的路，按自己的原则，好好生活。即使有人亏待了你，时间也不会亏待你，人生更加不会亏待你。\r\n\r\n9、永远都要活给自己看，而且笑容要特别灿烂，别在乎别人的指指点点，做好你自己，让看不起你的人高攀不起，让看得起你的人更喜欢你。\r\n\r\n10、一些该拿起的要拿起，一些该舍弃的要舍弃。因为，只有让该结束的结束了，该开始的才会开始。温柔要有，但不是妥协，我们要在安静中，不慌不忙的坚强。\r\n\r\n![5.jpg](/storage/thumbnails/_signature/35S012TJM6TPSNLLRQHJ1N7A89.jpg)', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (9, '1、感情淡了我们再培养，无话可说了我们就再去找话题。觉得腻了我们重新认识，要是累了就给彼此空间。人潮汹涌的，遇到你也不容易，也不想再推开了。\r\n![5cb57d0cd2ab9.jpg](/storage/thumbnails/_signature/30IS58AE02END7RJMBUFOUF5QI.jpg)\r\n2、不要对爱你的人太过刻薄，每个人都有脾气，为你忍下所有的怒气，仅仅因为那个人比你更心疼你。你错失了夏花绚烂，必将会走进秋叶静羌。任何事，任何人，都会成为过去，不要跟它过不去。\r\n![5cb57d104e487.jpg](/storage/thumbnails/_signature/1D1E5FC13UHS5LTMDSSJCNEIA4.jpg)\r\n3、分手后不可以做朋友，因为彼此伤害过，不可以做敌人，因为彼此深爱过，所以，我们变成了最熟悉的陌生人。时间会把对你最好的人留在最后，毕竟喜欢是一阵风，而爱是细水常流。\r\n\r\n![5cb57d0f76797.jpg](/storage/thumbnails/_signature/2H3QLVE7J8LK49BUM0UU39J4I5.jpg)\r\n\r\n4、我并不害怕我们暂时分开，如果好的爱情需要绕一大圈后再回来，到那时我也可以笑着拥抱你说，你看，你还是我的。有时候原谅一个人，并不是我真的愿意原谅他，而是不愿意失去他。\r\n\r\n![5cb57d113ac07.jpg](/storage/thumbnails/_signature/LG9SL8GG5TATKM9ACFJU1585D.jpg)\r\n\r\n\r\n\r\n', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (10, '1、总有那么一些歌，让我们悲伤，让我们哭泣。但其实让我们哭泣的并不是那些歌本身，而是藏在回忆里的那些人。不要太把一个人放在心上，因为在那个人的心里你或许什么都不是。\r\n\r\n2、人都是被自己打败的，而且首先给自己的情绪打败。控制不了自己情绪的人，别人的一个字，一句话，你就可以失眠一整晚了。\r\n\r\n3、有没有一个人，你想见，却又见不到；有没有一个人，你想爱，却又不敢爱；有没有一个人，你想忘，却又不舍忘。做女人“莫欺少年穷”；做男人“莫嫌老来丑”。女人懂相守，男人懂感恩，才能长久。\r\n\r\n4、我不知道自己到底在执着什么，但我知道我一直都在为难自己。有的时候难过的不是结局不够好，而是真诚没有被善待。\r\n\r\n5、你的内心或许住着两个不同的人，一个感性到泪水说流就流，一个理智偏执到近乎冷酷无情，所以，上一秒情绪泛滥的你总会在下一秒被自己嘲讽，或许是有原因的。\r\n\r\n6、哭的时候没人哄，我学会了坚强；怕的时候没人陪，我学会了勇敢；烦的时候没人问，我学会了承受；累的时候没人可以依靠，我学会了自立。一个人，如果不坚强，软弱给谁看。\r\n\r\n7、距离大概就是指：你知道我没睡，我也知道你没睡，看着彼此更新的动态，却不能说上一句话。不要踮着脚尖去爱一个人，重心不稳，撑不了太久。真正的幸福只有从容的心才能遇到。\r\n\r\n8、有时候不是不懂，只是不想懂；有时候不是不知道，只是不想说出来；有时候不是不明白，而是明白了也不知道该怎么做，于是就保持了沉默。\r\n\r\n9、疯过，傻过，执着过，坚持过，爱过，可到最后还是一个人过。才知道，不是我的，当初我就不该要。有一些东西错过了，就一辈子错过了。人是会变的，守住一个不变的承诺，却守不住一颗善变的心。\r\n\r\n10、经历越多就越不想说话，环境的不同，想说的话别人未必能懂，也就慢慢学会了自己承受。人一辈子，你得信这一条：留得住的不需用力，留不住的不需费力。来去随缘，强求不得。\r\n![3e5c9992ebd751.jpg](/storage/thumbnails/_signature/2EP81JG7KPHJH0C5FS4TEFU77F.jpg)', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (11, '1、一个人的成熟，并不表现在获得了多少成就上，而是面对那些厌恶的人和事，不迎合也不抵触，只淡然一笑对之。当内心可以容纳很多自己不喜欢的事物时，这就叫气场。\r\n\r\n2、两个人的沟通70%是情绪，30%是内容，如果沟通情绪不对，那内容就会给扭曲了，所以沟通内容之前，情绪层面一定要梳理好，不然误会只会越来越深。\r\n\r\n3、如果找不到坚持下去的理由，也都不要把自己留在原地，那就找一个重新开始的理由，生活本来就这么简单。只需要一点点勇气，你就可依把你的生活转个身，重新开始。生命太短，没有时间留给遗憾，若不是终点，请微笑一直向前。\r\n\r\n4、与老人沟通，不要忘了他的自尊；与男人沟通，不要忘了他的面子；与女人沟通，不要忘了她的情绪；与上级沟通，不要忘了他的尊严；与年轻人沟通，不要忘了他的直接；与儿童沟通，不要忘了他的天真。一种态度走天下，必然处处碰壁；因地制宜，因人而异，才能四海通达！\r\n\r\n5、茶不过两种姿态，浮、沉；饮茶人不过两种姿势，拿起、放下。人生如茶，沉时坦然，浮时淡然，拿得起也需要放得下。要记住，无论我们最后生疏到什么样子，曾经对你的好都是真的。\r\n\r\n6、有缘分，不拒绝，无缘分，不奢求。来的，欢迎，去的，相送。随缘不变，不变随缘。随遇而安，自在安然。为了一个你，我和多少人淡了关系，结果你走了，他们也没了。\r\n\r\n7、我难过的不是你和别人好，是看到别人那么容易，就代替了我的存在，对我来说没有人可以像你，但对你来说每个人都可以是我。\r\n\r\n8、别把自己想的太伟大，要知道，在别人的世界里，不管你做的多好，你都只是个配角而已。别去打扰那些连回你话都带着敷衍的人，别去打扰一个不愿意理你的人，难受的始终是自己。\r\n\r\n9、每个人都有那么一段故事，无法述说。只能放任那些在深夜里对自己倾述，深夜来临的时候，是一个人心灵最脆弱的时候，也是思念最疯狂的时候。在无数个失眠的晚上，习惯性地闭上眼睛，安静的想念一个人，一张脸，一个名字，成了最孤单的心事。在夜里独自哀伤。不想习惯，却无力更改。\r\n\r\n10、这一生总有很多事让人感觉无能为力，比如努力了还是上不去的成绩，比如用心了还是得不到的你。总有那么几个人，从无话不说到无话可说，从特别关心到不再联系。\r\n![d4df47f5aa2bf1b79da3519357fe71c2.jpg](/storage/thumbnails/_signature/2J814P948I2SMNMKCJASM0Q337.jpg)', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (12, '1、比你强的人是不会嘲笑你的，那都是比你弱的人才会干的事！目的是把你变得跟他们一样弱。张开大嘴四处嚷嚷只是人的本能，闭上嘴巴用心思考才需要人的智慧。\r\n\r\n2、什么事都要先在自身找原因，不要总是苟求他人。鞋子脏了，是因为你走的路不干净。年纪越大，越会发现社交的种种不堪，所以，踏实的掌握一门生存的技能，认真发展一个独处的爱好，永远都不会错。\r\n\r\n3、你整天负能量，觉得自己哪里都不好，时间都用来幻想，可和你一个起跑线的人，已经融入更好的圈子，多做事少抱怨，其实坏情绪就像垃圾，该扔就扔。不要过度追究没用的东西。快乐是自己给自己的，心态端正一切都不会让你心堵。\r\n\r\n4、到了一定年龄，便要学会寡言，每一句话都要有用，有重量。喜怒不形于色，大事淡然，有自己的底线。活着一天就是有福气，就该珍惜。当我哭泣我没有鞋子穿的时候，我发现有人却没有脚。\r\n\r\n5、我们总是喜欢拿顺其自然来敷衍人生道路上的坎坷，却很少承认，真正的顺其自然，其实是竭尽所能之后的不强求，而非两手一摊的不作为。\r\n\r\n6、为什么别人越来越不把你当一回事情，因为你太好说话了。什么事情，别人一找你就答应；什么东西，别人一给你就要。这样你就变得没那么珍贵了。做人除了说YES之外，还是要经常说一下NO。亲和力虽然很重要，但是人的价值，却是靠拒绝而来的。拒绝，可以让你变得更珍贵。\r\n\r\n7、后来才明白，要赚到足够令自己安心的钱，才能过上简单、安逸、自由的生活，才能让自己活得更有底气。所以，多花时间努力，少点功夫矫情。\r\n\r\n8、我们花了两年学会说话，却要花上六十年来学会闭嘴。大多数时候，我们说得越多，彼此的距离却越远，矛盾也越多。在沟通中，大多数人总是急于表达自己，一吐为快，却一点也不懂对方。两年学说话，一生学闭嘴。懂与不懂，不多说。心乱心静，慢慢说。若真没话，就别说。\r\n\r\n9、人多时，管住嘴！话多、错多、是非多，自找麻烦；人少时，管住心！妄念、妄想、痛苦多，自找烦恼。人生就像不停在用的铅笔，开始很尖，但慢慢地就磨的圆滑了。不过，太过圆滑了，就差不多又该挨削了。\r\n\r\n10、人生苦短、别省、别等、别放、别忍、别恨。风雨一辈子、开心最重要。人心简单就快乐！生活简单就幸福！人活得累，一是太认真，二是太想要。然而，凡是你想控制的，其实都控制了你。\r\n![juzi20151126.jpg](/storage/thumbnails/_signature/EERFCQ255M02OET4RROSOJOH.jpg)', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (13, '1、三分天注定，七分靠打拼。剩下的九十分，就交给颜值了！所谓的女汉子，只不过是因为长得丑而已，但凡有些爷们气质的漂亮姑娘，都被称为女王大人。\r\n\r\n2、很多时候，不逼自己一把，你不会知道自己有多优秀。更多时候，逼自己一把，才发现原来真的会把事情搞砸。不要没完没了的修图和美颜，你现实长得丑，我们都知道。\r\n\r\n3、真正努力过的人才知道，天赋有多重要。当别人不懂你的时候不要难过，因为他或许不是真不懂，而是不想懂。这世上没有所谓的玩笑，所有的玩笑都有认真的成分。\r\n\r\n4、长大后才发现，有时你说了真话，你还得和人家道歉，因为你戳穿了事实。所以想要活得顺畅，请时刻带上脑子。所谓门槛，能力够了就是门，能力不够就是槛。人生的沟沟坎坎，多半是能力不足所致。\r\n\r\n5、世界上，没有挤不出的时间，只有不想赴的约。每一个选择，其实都是内心所向。相爱容易，因为五官；相处不易，因为三观。你得有足够的实力，你的原则和底线才会被人尊重。\r\n![gleise-1555348_640.jpg](/storage/thumbnails/_signature/2C3K8OUQ1KCM95FFSTC4JNIF29.jpg)\r\n6、没有人会关心你付出过多少努力，撑得累不累，摔得痛不痛，他们只会看你最后站在什么位置，然后羡慕或鄙夷。成年人的生活里，没有容易二字，忧伤是一种本能，而微笑是一种能力。\r\n\r\n7、曾梦想仗剑走天涯，醒来忙碌柴米油盐茶。不要轻易让自己掉眼泪，你笑的时候，全世界跟着笑。但你哭的时候，全世界只有你一个人在哭。\r\n\r\n8、人不都是这样吗，安慰别人的时候头头是道，自己遇上点过不去的坎立马无法自拔，道理都懂，只是情绪作祟，故事太撩人。没有过不去的坎，只有过不完的坎！\r\n\r\n9、生活，在喜怒哀乐间走走停停。不知道会遇见什么，只知道阳光这么好，别辜负了今天。不懂得拒绝的人，即使把自己累死，也不会得到别人真正的尊重。因为对方习惯了你的顺从。\r\n\r\n10、刻薄嘴欠和幽默是两回事，口无遮拦和坦率是两回事，没有教养和随性是两回事，轻重不分和耿直是两回事。抱怨，是一种负能量，犹如搬起石头砸自己的脚，于人无益，于己不利，于事无补。', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (14, '1、人生不过如此，没有人可以和生活讨价还价，且行且珍惜，自己永远是自己的主角，每个人的性格中，都有某些无法让人接受的部分，再美好的人也一样。所以不要苛求别人，不要埋怨自己。\r\n\r\n2、所有的改变，都伴随着阵痛，若不痛苦，势必会吃苦。其实苦味是最好的良药，能让我们抛却平庸，拒绝麻木，不甘落后。要知道，痛苦只是成功与胜利的首付，你品尝得越多，后面属于你的空间越广阔。没人可以带走你的苦与痛，一切都要自己去面对。要学会在痛苦中挺立，别在苦水中浸泡得太久，要苦有所值。\r\n\r\n3、人要找快乐，其实很简单，跟自己最不如意的时候比比，就快乐了。人，要找不快乐也很简单，跟自己最风光的时候比，就郁闷了。其实人生，有个积极心理学，还有个消极心理学；快不快乐都取决于你自己。\r\n\r\n4、悲观的人会觉得做得再多再好，所有的一切都是徒劳，都是枉然，生活毫无意义。即使流芳百世，自己在哪里又不得而知，也不可能得知。如此说来，从知道人终有一死那天起，有的人一生悲观，或者悲观一时，生活消极，甘愿平庸，得过且过，碌碌无为。\r\n\r\n5、幸福不会时时等着你，爱你的人和你爱的人不是随时可以出现，好好把握，不要让自己和幸福擦肩。有所畏惧，是做人最基本的良心准则。所谓快乐，不是财富多而是欲望少。做人，人品为先，才能为次；做事，明理为先，勤奋为次。人生要学会不抱怨，不等待，不盲从。\r\n\r\n6、人都是逼出来的。一个人，如果不逼自己一把，就根本不知道自己有多优秀。每个人都有潜能的，所以，当面对压力时，要相信自己，一切都能处理得好。人只有压力才会有动力，穷则思变，时势造英雄，逼急了好汉可以上梁山。一个人的成长，必须通过磨炼。有时候，必须对自己狠一次，否则永远也活不出自己。\r\n\r\n7、人，要有压力，但不能压垮；可以迷茫，但不能绝望；现实的生活告诫我们：人的命运靠自己奋斗不抱有一丝幻想，不放弃一点机会不停止一切努力！加油！\r\n\r\n8、放弃是一种智慧，一种豪气，也是一种更深层面的进取。人生没有死胡同，就看你如何去寻找出路。思路就是出路。正视困境，不在困难面前退缩，才不会无路可走。成功，不仅是一种结果，更是一种不怕失败、在磨难中永不屈服的过程。\r\n\r\n9、成功的路上没有人会叫你起床，也没有人为你买单，你需要自我管理，自我约束，自我突破。人的潜能无限，安于现状，你将逐步被淘汰，逼自己一把，突破自我，你将创造奇迹，千万不要经常对自己说“不可能”。树的方向，风决定，人的方向，自己决定！\r\n\r\n10、人生短暂几十年，年复一年又一年；曾经的得失，都一笑而过吧，生活，是活在现实中，而不是活在梦想里。梦想那是人生的精神支柱，现实才是生活的常态。不必计较太多，只要精神上没有枷锁，比再多的拥有都要强上百倍。![6eab66360c3467e634abaa5974abe29d.jpg](/storage/thumbnails/_signature/K04U65APA87BDC1GHRAK63DCD.jpg)', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (15, '1、放下你的浮躁，放下你的懒惰，放下你的三分钟热度，放空你禁不住诱惑的大脑，放开你容易被任何事物吸引的眼睛，放淡你什么都想聊两句八卦的嘴巴，静下心来做你该做的事，该好好努力了！\r\n\r\n2、有时候真的努力后，你会发现自己要比想象的优秀很多。记住一句话，越努力，越幸运。每个人都有属于自己的舞台，这个舞台，是那么光灿，美丽，生命从此辉煌无悔！只要坚韧不拔的走下去！\r\n\r\n3、风雨人生，给自己一个微笑。人生路上，太多的为什么，没有答案；有时我们是在付出的路上，是能够收获的，是清楚的看到了自己想要的，或者是不想要的，这又何尝不是一种宝贵的结果。\r\n\r\n4、每天早晨，敲醒自己的不是钟声，而是梦想！不是每个人都注定成功，信念就是即使看不到未来，即使看不到希望，也依然相信自己错不了，自己选的人错不了，自己选的人生错不了。有梦想，就能看到未来！\r\n\r\n5、人人都忙于自己的欢喜与悲伤，哪有空顾你的孤独。时间是最公平的资源，你浇灌在哪里，哪里就可能长出灿烂的花朵。无论走到哪里，都要鼓励自己，给自己一些肯定，别总把那些挫败当成痛的诉说。\r\n\r\n6、放弃是一种智慧，一种豪气，也是一种更深层面的进取。人生没有死胡同，就看你如何去寻找出路。思路就是出路。正视困境，不在困难面前退缩，才不会无路可走。成功，不仅是一种结果，更是一种不怕失败、在磨难中永不屈服的过程。\r\n\r\n7、听着别人的故事热血沸腾，看着别人的成就羡慕不已，而自己却一直在原地观望，时间在走，年龄在长，来日不方长，在你还有机会拼搏的时候，一定要：该出手时就出手！\r\n\r\n8、在人生的路上，我们会遇到太多太多的坎坷，面对不计其数的失败和嘲笑，我们也许会失去自信，失去尊严，但我们唯一不能失去的只有微笑。\r\n\r\n9、无论生活中还是工作中，我们很难事事顺心，但我们可以做到事事尽心。积极的态度就是成功的保证。认真细致、尽心尽力的去做每一件事，这样我们才能收获惊喜、成长自己。\r\n\r\n10、人生的境界，只有在经历之后，领悟了多少，就有多少成长。人若是水一般做人，那么就便是浩瀚，人生之中是没有失败的，它带给每个人的深刻思考、刻骨铭心的经历和感受都是不可多得的财富。\r\n![1.jpg](/storage/thumbnails/_signature/2L61EEMCQN7MN39PAAF0HOPAO.jpg)', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (16, '人们总说：解决人生困扰的方法在于找到明确的目标。但是，很多人，像我一样，或许终其一生也找不到热爱的东西，不知道想过怎样的生活，怎么办？\r\n\r\n就我来说，人生的很多际遇，比如学习、比如工作、比如朋友……都来自于跟那些优秀的人同行，从而让人生变得更具想象力。\r\n\r\n去年的今天，我正处于一个非常糟糕的状态。没想到，经过一年，日子却变得更有盼头。所有的改变，其实都源于一次观念的转变。\r\n\r\n彼时，我刚收到研究生笔试通过的通知，却在是否参加面试上犹豫不决。\r\n\r\n这种想法理所当然受到闺蜜团的一致反对，强烈谴责我临阵脱逃和不思进取的行为。\r\n\r\n“可是，我都不知道为什么要去读这个学历啊！比起盲目地重回校园，想清楚我到底想要什么样的生活不是更重要吗？”\r\n\r\n“当你不知道去向哪里，不如先选择与谁同行。”这是我第二次听w说这句话（没错，还是那个w）。\r\n\r\n（一）\r\n\r\n大学时，我跟w同系不同专业，因在一个社团而熟知。\r\n\r\nw算是“墙内扎根墙外香”的类型。她在班内口碑一般，甚至有不少“高傲”“看不起人”“不合群”这样的负面评价。她很少参加班级活动，跟班里人打交道也非常少，我怀疑直到毕业她都没有记住所有同学的名字。\r\n\r\n但是，在班外人眼里，她一直都表现得聪明、负责又得体。\r\n\r\n当大部分人跟我一样，还陷在初入大学，迷茫不知出路时，w加入了院里最牛的两个社团，主动找师兄师姐一起组队参加全国大赛，跟着老师做项目跑企业，还申请创业学院的课程……\r\n\r\n“我真羡慕你。像我这种对未来毫无头绪的人，可怎么活？”\r\n\r\n“我也不知道想要什么样的生活啊。”w看着我一脸惊奇不相信的样子，补充道，“可是，哪怕我不知道去向哪里，我也不会停在原地。我的做事原则很简单：选择与谁同行。”\r\n\r\n那是我第一次听w说这句话，当时却没有太大的体会。\r\n\r\n“其实，我们班里的传言多半是真的。我的确不怎么出现。你知道为什么吗？因为我选择跟优秀，甚至比我强的人在一起。虽然我也不知道未来何去何从，但是我不想跟其他人一样，将时间花费在只能消耗我的人和事上。”\r\n\r\n很多时候，我们会因为暂时没有方向，而陷入某种迷思：既然我也不知道想过怎样的生活，那么我就跟其他人一样吧。\r\n\r\n一旦我们选择同那些懒惰、放纵、得过且过的人为伍，自己也极大可能成为这样的人。至少我懂得w为什么跟整天上网打游戏的室友不合群，而更喜欢同我们在一起。\r\n\r\n之后，w一路走来，一直恪守“同行人”决定自己的选择。毕业后，她放弃了广州一家知名外企，转而到北京一家汇聚业内牛人的新兴企业；之后，她又放弃了美国一所高校的企业奖学金，转而跳槽到一家顶尖的创新工厂；再之后，就是她作为联合创始人，开创了自己的事业。\r\n\r\n现在我懂了：每个人在市场上都有一个定价。这个价格（价值）除了同自身的能力有关，还跟你所处的市场以及组成这个市场的人有关。比如同一份工作，不同城市的人，工资水平明显不同；再比如，同样的条件，在不同的平台和圈子，结交的朋友、结婚的爱人、合作的伙伴……在层次和格局上可能也有巨大的差异。\r\n\r\n所以，让自己尽可能暴露在更高的平台、更大的城市，和更发达的国家，融入更优秀的人和更具想象力的世界。\r\n\r\n就像w说的，“我也许没有办法决定自己的目标是什么，但是并不妨碍我选择自己的朋友是谁。”\r\n\r\n（二）\r\n\r\n去年今日，是w第二次跟我说“当你不知道去向哪里，不如先选择与谁同行”。仅仅是一年的时间，生活就像由死水突然活过来一样，拥有了更多的趣味。\r\n\r\n我突然明白，很多时候，我们怕不合群，安于现状，不是我们懒，也不是我们真的没有激情和努力的欲望，而是我们找不到行动的理由。如果我们能把“选择与谁同行”作为迷茫时的决策动机，往往会有很多意想不到的收获。\r\n\r\n1.打破局限，扩大格局\r\n\r\n如果把我们当下的境况比作一个圆圈，当我们选择与其他优秀的人同行时，就相当于在现有的圈子打开一个缺口，与新的圆圈建立联系。想想这时会发生什么吧？\r\n\r\n你的生活圈子会变大，你会接收到新的输入和碰撞，这个过程会产生很多机会、合作和跨界融合。而且，你的圈子边界会变大，意味着你会有更大的见识，更开阔的思维格局。\r\n\r\n李嘉诚的第二个女秘书曾这样告诉他：“我跟着您参加会议，您在打电话说买哪地地皮，或者哪支股票时，我也会去买一点，现在资产已过千万！”很多时候，你不会是因为你压根不知道有这个东西，而你和谁在一起，甚至能改变你的成长轨迹，决定你的人生成败。\r\n\r\n2.居安思危，发挥主观能动性\r\n\r\n当圆圈扩大，还有一个影响就是，我们不知道的也会变多，从而居安思危，产生进步的动力，让自己变的更好，更加积极，并且敢于行动。\r\n\r\n乔布斯说过，“你所谓的生活，是由那些根本不如你聪明的人构建起来的。”当我们找不到方向，如果一味放任自己原地踏步，将是非常受限的人生。我们会以为生活就是这样，每天上上班做些没有挑战性的工作，结婚生几个孩子，每个月跟固定的朋友逛两次街。我们会以为生活就这么大，产生“日子将一直安稳下去、自己过的还不错”的错觉。\r\n\r\n可是，当我们能够与更优秀的人同行，就会发现生活的可能性原来还有这么多，自己的才能才发掘了不足一二，未来的挑战还要求更充分的准备，自己应该做的事还有这么多。\r\n\r\n最重要是，当我同这帮优秀的人在一起时，我能够摆脱 “生活就在那儿，我只是生活其中” 的错误观念，转而去拥抱它，提升它，我会想要去改变生活并让它更好，因为我知道它糟糕的样子。\r\n\r\n3.你的生活会变得简单\r\n\r\n在二十多岁时，我常感迷茫、挫折，觉得自己的人生好像卡住了。其实，我们之所以充满焦虑，其中一个原因就是我们的生活缺少衡量的尺度，即我们不知道做一个决定时应该以什么为标准，我们面对一个结果时应该依什么去判断。\r\n\r\n当我们不知道去向哪里，不论是学习、工作、生活甚至婚姻，选择与谁同行都会让决策变得简单，而且容易。更重要的是，这是避免自我消耗最便捷的方法了。\r\n\r\n4.你会有一个更具激励性的环境\r\n\r\n任何一个阶段，不论是上学，还是工作，都有两种人围在身边：你的助力，或者你的阻力。\r\n\r\n看过一个例子，“我说要辞职去创业，父母可能会先和我打一架，然后我妈哭着说养我不容易，邻居也过来说你看你怎么这么不孝，搞得好像一出话剧。除了离开这个环境，几乎别无他法。”有些人，当你谋求更大的发展时，他们不仅不是你的导师，反而会成为你成长的阻力。\r\n\r\n与之相反，开始mba学习后，虽然只有半年，我能感受到每个人身上强烈的生命力，和对”优秀“甚至”卓越“本身的认同，这会给人带来巨大的能量。所以，寻求更优质的人同行、进入更高层次的平台没有任何错，毕竟我们不能放任自己在平庸的状态下研磨、消耗，了了一生。因为你还年轻，并且聪明。\r\n\r\n5.影响你的思维习惯和行为模式\r\n\r\n所谓“近朱者赤，近墨者黑”，和什么样的人在一起，就会有什么样的人生。当我与这么多在不同领域展现才华的人相处时，我自己也会自觉不自觉地提升和改变。\r\n\r\n试想，你跟一个充满负能量，哪怕饭菜不好都要抱怨一个小时的人在一起，结果只有两个：你受不了，远离她；你受得了，被同化。\r\n\r\n科学家研究认为：”人是唯一能接受暗示的动物。”积极的暗示，会对人的情绪和生理状态产生良好的影响，激发人的内在潜能，发挥超常水平，催人奋进，不断自我更新和成长。\r\n\r\n所以，你去哪儿有时并不重要，重要的是你和谁在一起。\r\n\r\n亲爱的，看看你所在的环境，需要改变吗？\r\n\r\n（三）\r\n\r\n现在，我把这句话也送给你。\r\n\r\n当我们不知道去哪儿，没有目标时，选择时只用看一个标准：你将和谁同行。\r\n\r\n那么，该怎么选？\r\n\r\n你的偏好、情感因素不重要，对方的年龄，背景，亲疏都不重要，重要的是这个“谁”的格局，能力，影响力和品行魅力。一定要远离负能量、刻薄、只能消耗你的人和平台。最好，对方至少在某一方面比你厉害一点。\r\n\r\n同更优秀的人同行，你也会变得更优秀！\r\n\r\n同更有德行的人同行，你也会变得更包容！\r\n\r\n同更有智慧的人同行，你也会更容易成功！\r\n\r\n同更懂生活的人同行，你的生活质量也会提高！\r\n\r\n![ABUIABACGAAgjrCYtwUosOSKjQUwlQY4jQQ.jpg](/storage/thumbnails/_signature/2UE3F3D3DO2NR246JP0P9RJ7OH.jpg)\r\n我要说的是，心之所向是一件很私人的事情。很多人，像我一样，或许终其一生也找不到热爱的东西，不知道想过怎样的生活，那么什么都不做吗？安于现状吗？\r\n\r\n不论是学习、工作、生活甚至婚姻，我们要习惯人生的十字路口没有红绿灯。当你不知道去向哪里，当你不知道想要怎样的生活时，你能够做出的最好选择就是：选择与谁同行。\r\n\r\n因为，与优秀的人同行，至少生命不会在无聊空虚中消磨浪费，还能建立立足的资本和选择权。\r\n\r\n哪怕最后不是你想走的路，至少你不会走上错误的路，而且往往还可以回头。', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (17, '![57231438845573.jpg](/storage/thumbnails/_signature/1KJK0E2SH6J46EOMF22MB345QV.jpg)\r\n那天来了一个买书的人，很普通的老农民，来了之后，就坐在那里看书。临走的时候，买了一本书，他接过我包装好的书，很犹豫地说：\r\n\r\n“把方便袋子给我换换吧，我母亲刚刚不在了，用红的我心里难受!”我把方便袋子给他换成白色的，他千恩万谢地走了。这时我才想起，他曾经来买过好几次书，什么按摩啊，针灸啊，泡脚啊，总之都是一些中老年养生方面的书。而这次买的却是一本种植方面的书。原来是家有老母亲，他才买了那些养生的书啊!没想到他这样一个粗人，却有着这样细腻的心啊!\r\n\r\n邻居家有位老人，没有儿子，寄居在两个女儿家。每年的10月就到二女儿家去了，因为二女儿家有暖气。到了清明节的时候，春暖花开了，再回到邻居家—他的大女儿家里来。\r\n\r\n他眼睛花了，耳朵也聋了，手脚却还利索。他总是自己洗衣服，自己刷鞋，甚至连缝衣服这样的活，他也是自己动手。虽然是80多岁的人了，穿的却总是干干净净、整整齐齐。\r\n\r\n我们两家只一墙之隔，那天看到他在院子里缝鞋子。他想把线穿到针孔里去，一次次地尝试，却总也做不到。\r\n\r\n于是我赶紧跑到门外，这时候他通常要我来帮忙。果不其然，在书店门外，他把针和线递给我。我帮他穿好线，他笑笑又回去了。像他这一代老人，都很固执，但凡有一点办法，谁愿意住在女儿家呢？这位老人更是这样，他自己能做的事情，从不麻烦女儿，更不用说女儿家的其它人了。\r\n\r\n每次都是女儿家没人了，他才开始洗衣服，刷鞋。女儿家门前有一小片空地，每年他都坐着板凳，翻弄好了，种上豆角、辣椒，茄子。女儿家但凡他能做的活计，他都要仔仔细细、认认真真地参与。就连女儿家的柴禾，他都整理得整整齐齐，捆得结结实实。因为他耳朵聋，他也很少说话，看到我总是点头微笑，就算打招呼了。我家有什么活，他也很积极地帮忙。\r\n\r\n所以，每年清明节他回来的时候，我总是陪着他，默默地在门口坐一会儿，我们都不说话，只是笑笑，心里却感觉很好!\r\n\r\n写到这儿，让我又想起另外一位老人。他没有儿子，也是寄居在女儿家，是他唯一的女儿家。每年大蒜收获了，他都自己带了板凳来给我帮忙，每次留他吃饭他都不肯。\r\n\r\n他说人老了，脏，麻烦女儿是应该的，不能麻烦别人。他也有点耳聋，也很少说话，我家没活的时候，他就骑了他的小三轮车，到处转转，或者到我书店里看会儿书。以至于后来，他看了什么书，放到什么地方，看到第几页了，我都帮他记着， 每次他来了，我就很快帮他找出来，递给他。\r\n\r\n我一直很感激很敬重他，他也一直很喜欢到我书店里坐坐。女儿平时要上班，下班了还要忙家务，他喜欢听老戏，电视总是开到很大音量。因为怕吵了女儿和邻居，总是女儿上班去了，他才偶尔坐下来听听戏。\r\n\r\n后来一个秋天，老人突然病故了。我伤心了很多天，因为没能去看望他一下，一直觉得很愧疚。\r\n\r\n另外一位老人是我老房东的父亲，他是从徐州过来看望女儿的。女儿家是做生意的，每天开了车，东集到西集地卖布匹。女儿想在家陪陪他，他说什么都不肯。每次女儿出门了，他都要很长时间地张望，直到女儿家的车看不到了，他才肯回到房间里。他说：\r\n\r\n“像我这么大年纪的人，活不了几天了。能多看女儿几眼就多看几眼吧!看一眼少一眼了。”然后，他就开始很认真地吃药，每天都按时按量，做得一丝不苟。看到我好奇的样子，他说：\r\n\r\n“人老了，不中用了。自己照顾好自己，就是给儿女造福了！”吃完药，他开始上下楼梯锻炼身体，同时把女儿家的楼梯，擦得和新的一样干干净净，每天如此。\r\n\r\n因为原来厨房在书店后面的院子里，我每次做饭的时候，总是跑前跑后地忙活。他看到了，就要求来帮忙。不好拒绝他，只好答应了。不想他老人家，却把这事当成了一件很重要的事情。每天的中午十一点，下午的四点，他都准时来到书店里，很认真地帮我看店。\r\n\r\n后来，老人回去了。临走的时候，还给女儿买了洗衣机和电饭锅。他说，年轻的时候没有钱，现在有钱了，欠女儿的一定要给补回来！\r\n\r\n天哪！欠女儿的一定给补回来!话怎么可以这样说呢？到底是儿女欠了父母的？还是父母欠了儿女的呢？\r\n\r\n不知不觉又想到伯父。伯母不在了，伯父一个人生火做饭。一起吃饭的时候，他又劝我种棉花。我说没地方放，也没时间收。他老人家说：你种吧，就放你老家，我帮你看着！\r\n\r\n我很大声地笑了，低下头泪水就流出来了：都83岁的人了，还想着帮我做事情!可我呢，能给老人家做点什么呢？总是用一个忙字，来为自己开脱。真的就那么忙？还是真的懒惰了呢？\r\n\r\n那天又看到隔壁的老人在缝衣服，终于忍不住哭了。我的老人也老了，他也在自己缝衣服、自己洗衣服吗？\r\n\r\n女儿看到我这样，说：妈妈，老人还能自己洗衣服，这是一种福气啊！是啊，我也只能这样想。\r\n\r\n最平凡的人，总是留给我最深的感动!深深为这些平凡的老人祈祷！祝愿他们都健康长寿！', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (18, '谁终将声震人间，必长久深自缄默；谁终将点燃闪电，必长久如云漂泊。——尼采《谁终将声震人间》\r\n\r\n![11.jpg](/storage/thumbnails/_signature/1UGAHSJESKRHQHN97KUI4MF88U.jpg)\r\n\r\n那时我们还年轻。穿过残垣断壁苍松古柏，我们来到山崖上。沐浴着夕阳，心静如水，我们向云雾飘荡的远方眺望。其实啥也看不到，生活的悲欢离合远在地平线以外，而眺望是一种青春的姿态。——北岛\r\n\r\n![12.jpg](/storage/thumbnails/_signature/8C56NERKLOIHLMC1IJC6D8RPF.jpg)\r\n\r\n每个人心中都有一团火，路过的人只看到烟。——梵高\r\n\r\n![19.jpg](/storage/thumbnails/_signature/2UCN9L03JRNEHERCH69V2N3S5G.jpg)\r\n\r\n我天性不宜交际。在多数场合，我不是觉得对方乏味，就是害怕对方觉得我乏味。可是我既不愿忍受对方的乏味，也不愿费劲使自己显得有趣，那都太累了。我独处时最轻松，因为我不觉得自己乏味，即使乏味，也自己承受，不累及他人，无需感到不安。——周国平\r\n\r\n![30.jpg](/storage/thumbnails/_signature/2OJ5M5TOKGNOL0SOJAKBPSRNF8.jpg)\r\n\r\n勿道人之短，勿说己之长；人骂之一笑，人誉之一笑。—— 齐白石\r\n\r\n![15.jpg](/storage/thumbnails/_signature/2TJMKEUONRNLB7KPCTQIFE4DK5.jpg)\r\n\r\n每个人都有觉得自己不够好，羡慕别人闪闪发光的时候，但其实大多人都是普通的。不要沮丧，不必惊慌，做努力爬的蜗牛或坚持飞的笨鸟，在最平凡的生活里，谦卑和努力。总有一天，你会站在最亮的地方，活成自己曾经渴望的模样。——苑子文\r\n\r\n![26.jpg](/storage/thumbnails/_signature/4I84B5IDE5PV01N20DTFVEOV7.jpg)\r\n\r\n如果我做不了大事，我至少能把小事做得大气一点。——马丁•路德•金', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (19, '![081444cmoezrwi2x2fr3x5.jpg](/storage/thumbnails/_signature/35QKKQQ9PH6KLCOH6BKKA63K6D.jpg)\r\n文：李丹\r\n\r\n有时候我们会觉得很失落，因为我们正在事业的低谷期，满腹学识无以致用；有时候我们会觉得很孤单，身边的朋友各个出双入对，而我们却是被留下的那一个；有时候我们会觉得彷徨，别人都过的那么幸福快乐，而我们却过的如此痛苦无奈…….这样的日子，我们似乎不知道该怎么度过，无助无聊，孤单落寞，失落迷茫，我们在镜子中似乎都看不到那张本该属于我们的笑脸。有人问我：我该怎么样度过这段难捱的时光？\r\n\r\n生命中的一切都一定是有得有失的，当老天给你关上一扇门的时候，一定会再给你打开一扇窗。这样的时光，我建议我们来读书吧。书中自有黄金屋，书中自有颜如玉。曾经认识一位朋友，离异后很长的一段时间都是空巢期，她没有自怨自艾，而是给自己列了一个读书计划，她说那么多年忙忙碌碌，为家里的琐事没完没了，都忘记了自己是谁，为什么而活，自己的价值在哪里，觉得自己都丧失了聊天的资本，因为除了柴米油盐的生活，她都忘记了沉睡在抽屉里自己的专业，自己的特长。于是那段时间她开始读书，书，让她安静，让她沉淀，让她找到了那个在婚姻大战中迷失的自我，也让她以书为缘，找到了自己的另一半，开始了幸福的生活！\r\n\r\n有一位男性朋友因为公司一个重大的投资项目和自己的上司发生了意见分歧，上司将他踢出了这个项目的参与中，而且因为那个上司在公司位权深厚，很长一段时间这个男性朋友就像一件摆设一样被搁置在那里，没有人重用他，也没有人理会他，甚至他只拿最低的工资标准，没有项目就没有提成。但是他没有丝毫的抱怨，每天依然按部就班的上班下班。有人说，你这样呆着还有什么意思，还不如离职算了。他笑着，这几年一直马不停蹄的做事，人也累了，感觉有种黔驴技穷的感觉，乘着这段时间空闲，好好充充电，然后再考虑去哪里？\r\n\r\n机会总是给有准备的人准备的。于是他开始读书，一年后，公司一个项目再寻找项目负责人，他以自己极致发挥的专业水平和能力技压群雄，就像一匹跃出的黑马展现在所有人的面前，包括以前极力打压他的上司也不得不心生佩服的将这个项目交到这个唯一他能放心的人手中。因为这一年，这个男性朋友，没有时间去抱怨去诋毁，去上蹿下跳的找寻公平，他有时间做的就是看书。\r\n\r\n古往今来，不管是武则天还是热播的芈月，如果没有被冷落日子里的读书作伴，他们可能也坚持不到最后，如果不是读书中得到的博古论今的才华何以治理天下，让臣民信服。书总能带给我们不一样的学识，让我们看到不一样的天地，拥有不一样的胸怀！\r\n\r\n有一天读到一篇文章，讲的是台湾文案教母李欣频如何用诗歌般的创意文字将诚品书店塑造成为台北市的文化地标，那一年，37岁的李欣频去过37个国家，用7年的时间出版26本书，坚持每天看一本书，她说阅读是一种很棒的感受，那种在精神上贫瘠不堪的人又怎么能将生命活成一场由内而外的盛宴呢。\r\n\r\n生命的深浅层次最终还是决定于你自己。\r\n\r\n曾经有过这样一个振频实验，如果震动其中一个音叉，那么和他相同频率的就会引起震动，所以你是一个什么样人注定你的生命中会交往什么样的人，你会吸引什么样的人。如果现在的你因为感情，因为事业，因为生活让你伤心难过，那么请收起眼泪和失落，因为生命从来就是一场公平的赛程，当你在抱怨和痛苦中迟迟看不到阳光，那么你的生活永远就暗无天日，你接触的人群就和你一样抱怨诋毁。而如果你潜行修炼，不断完善调整自我，与书为伴，与正能量的人为友，那么一定会有好的机会，好的生活，好的男人或者女人在等着你，许你一生的快乐时光。\r\n\r\n当你还是一个人有着无法表述的孤单，当你还是一个人有着无法倾诉的失落，当你还是一个人有着沉重的生活负担和生活压力，请沉下一颗心读书吧，腹有诗书气自华，你会慢慢等到一个你想要的生活！\r\n', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (20, '过自己不想要的生活需要勇气，过自己想要的生活，不但需要勇气，你还得有能力。\r\n\r\n人与人之间，有时感觉不对了，就稍微把距离拉远一点，过阵子，感觉对了，可以慢慢再近一点，有点类似跳华尔滋，是美丽的舞步。至于踩到了脚，没关系，笑笑就过去吧！—— 贝莉Berry\r\n\r\n\r\n“如果能重回到18岁，你愿不愿意？”我的答案是“不愿意。”——与18岁相比，我更爱现在的自己。时间是一把刀，它刻下好多伤痕，但最终也把我雕成了一朵花。如约绽放。—— 苏芩\r\n\r\n\r\n痛苦是财富，这话是扯淡。姑娘，痛苦就是痛苦，对痛苦的思考才是财富。—— 陈虻（柴静《看见》）\r\n\r\n\r\n很多人没结婚，不是因为觉得婚姻不重要，而是婚姻很重要。——杨昌溢\r\n\r\n\r\n无论走到哪里,都该记住，回忆是一条没有尽头的路，一切以往的春天都不复存在，就连那最坚韧而又狂乱的爱情，归根结底也不过是转瞬即逝的现实。——马尔克斯《百年孤独》\r\n\r\n\r\n\r\n时光静悄悄地流逝。世界上有些人因为忙而感到生活的沉重，而有些人因为闲而活得压抑。——路遥《平凡的世界》\r\n\r\n\r\n真正关心你的人，是无事时百般挑剔，有事时抓着你手一声不吭的。监督你过顺境，支撑你过逆境，人生三两人，足矣。\r\n\r\n\r\n你不必逞强，不必说谎，懂你的人自然会知道你原本的模样。\r\n\r\n\r\n没有人可以回到过去，但谁都可以从现在开始。', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (21, '当你七十岁，拿起老相片，除了满腹感慨，竟然找不到一丝英姿飒爽的影子。你只能任由皱纹无奈的放肆生长，然后看着夕阳日落，你的孤独只能在苍老的记忆里蔓延。\r\n\r\n其实终老并不可怕，可怕的是你的一生没有一件令自己骄傲的事。你不是患者，但你却得了退缩的病。\r\n\r\n人活在当下，也不过短短几十年，我不想让我的青春直接走向死亡。我可以拼命，我可以失败，可是我不能眼睁睁看着岁月就这样无情流走。\r\n\r\n我不求白发苍苍，年过花甲的时候能安泰晚年，至少我能给我的一生一个交代，而不是碌碌无为的像个乞丐。\r\n\r\n1\r\n\r\n我前几年认识了一个姑娘，比我大两岁，应该算的上是我的学姐。\r\n\r\n那时候我跑去上海，整天奔波在路上，想在暑假找份工作，挣点学费。\r\n\r\n我们是在公司里打上交道的，因为小领导欺负我们是外来的，总会再三刁难我们。给我们加产量，让我们晚下班，不准我们说话，还不允许我们多吃饭。\r\n\r\n有苦还要往肚子里吞，就怕万一闹掰连工资都拿不到，毕竟连个合同都没签，你连哭都找不到地点。\r\n\r\n就在我们都委曲求全的埋头苦干时，她像英雄起义一样，终于受不了压迫，跑去领导办公室理论了一番，但是结果是没有任何卵用。\r\n\r\n暂且叫她园姑娘，一米七的个子，我当时在想这姑娘是吃熊心豹子胆了，真有勇气，还特别个性。\r\n\r\n那段时间，我们走的很近，去上海梅奔看了一场演出，当时我们说以后要一起去看周杰伦，陈奕迅，五月天，要去祭奠我们逝去的青春。\r\n\r\n我答应她了，并且我想等我们一毕业就去。\r\n\r\n她是个很努力的姑娘，也是我称之为佩服和崇拜的人。\r\n\r\n她上大二的时候，是校外舞蹈室的店长，没有工资白干活那种，但是她每天拼命练习，她说没有天赋不要紧，重要的是信念。\r\n\r\n她去年的时候去了北京一家流行舞基地，进行了两个月的魔鬼训练。她去培训的钱，都是打工还有省吃俭用攒下来的，我说她，是不是太不要命了。\r\n\r\n她跟我说，梦想虽然不一定会实现，但是要努力让自己不后悔。\r\n\r\n也许所有成功的路上，都会充满荆棘，但你要有一双斩草除魔的双手。\r\n\r\n去年11月份她离开舞蹈室，踏上实习面试的不归路，结果奔波了一个多月都没有着落，索性就回家休息去了。\r\n\r\n你不能说她不够优秀，而是现在这个社会，存在太多就业问题，但是我羡慕的是她说坚持就一定会努力的决心，她可以没有顾虑的勇往直前，就算最后没有任何回报，也只求一句无悔。\r\n\r\n2\r\n\r\n记得我小时候总是在想长大以后，到底是出国还是留在国内。\r\n\r\n但是事实我哪都去不了，我只有呆在小城市的命，上着以后混口饭吃的专业。\r\n\r\n曾经参加校运动会，差0.1秒就能拿到第六名，也只有全校第六名才颁发奖金，结果我什么都没有，连榜上提名都没有。\r\n\r\n有时候成功与你就是一秒，抓住你就为王，抓不住，那就很遗憾的告诉你，你就是个失败者。\r\n\r\n有段时间在医院住院的时候，我总是会看见那些消极的，积极的，乐观的，悲观的，还有上一秒存在，下一秒消失的。\r\n\r\n你会看见许多对生命的惋惜，他们觉得一切来的太突然，他们还有好多心愿未了，不甘心就这样被疾病折磨。\r\n\r\n在那些病人的眼里，他们总希望时光能温柔相待。\r\n\r\n可是在意外突然降临的时候，你不能被砸昏了头，除了否认，你也要奋起和恶魔战斗。\r\n\r\n我见过一个男孩，大概七八岁，莫名其妙不知道怎么得了血液疾病。这对一个尚未涉世的孩子来说，其实什么也不懂，他只知道要吃很多药，要做很多检查，身体才能好起来，才能去学校上学，他无法理解生命这两个字所承受的重量，更不明白它的概念。\r\n\r\n他确实很小，但他却承受了一个孩子不该承担的痛苦。\r\n\r\n他会抓着妈妈的手，笑着说:“别哭，我会好起来的。”\r\n\r\n当时病床的灯光照在他虚弱的脸上，正巧被我一个转身瞥见。\r\n\r\n我突然就在这一刹那，明白渴望，明白明天，明白命运多舛，明白要为我的每一天活着努力。\r\n\r\n人可以平平凡凡，但一定要健健康康。你拥有了一个健康的身躯，凭什么不努力。\r\n\r\n3\r\n\r\n闺蜜刚考大学那会，大伙都认为以她的实力，一本妥妥的。\r\n\r\n结果考了一个不知名的二本，她说要复习，不愿意去。我劝了她，谁都不知道下一年考题会怎样，万一考差了呢，宁做鸡头也不做凤尾。\r\n\r\n她去了以后，学了播音主持。我说，你不是艺术专业生，学这个专业对你来说没有太大作用。\r\n\r\n这次她说，她不想在乎别人的看法，她选择了就会努力。她偶尔会利用空余时间干一些喜欢的事，学个吉他，练练口语交流。\r\n\r\n她说她第一次活的这么潇洒，没有在乎那些流言蜚语和大众压力，她觉得很好。\r\n\r\n确实，她活的很精彩，播音学的并不比专业的差，参加比赛，参加演出，她很努力，并且也很快乐。\r\n\r\n所以，她的选择没有错，她的努力没有错，成功堵住了一些人的嘴，包括我。\r\n\r\n我曾经觉得只要一毕业，我就可以挣钱，然后创业，最后发财，买房买车送爸妈。\r\n\r\n可是如果目标能这么容易的实现，那社会也不会有这么多失败者了。\r\n\r\n有次，老妈带我去买衣服，相信下面我要说的场景，大家都耳熟能详了。\r\n\r\n当时我妈穿的很普通，她节约了一辈子，也不在乎穿着。但是对我却舍得花很多钱，我们去了一家xx名牌店，进去就随便溜，店员都把我们当空气。\r\n\r\n倒是旁边一个阔太太，招呼的服服帖帖的。老妈当时看中了一件衣服，还没说让她拿给我试一试，就把我妈冲一顿，说摸脏了她的衣服。\r\n\r\n我一听来了气，把衣服拿到她面前，问她哪里脏了，是不是她心里脏，看不起谁，你家衣服高贵你留着自己穿吧。\r\n\r\n原来如此，你要足够有势力，足够有钱，你才能被人看得起。\r\n![48845e7b19cc5ba24e9c432f0210f77a.jpg](/storage/thumbnails/_signature/2QNA0S154RH5OCL0J98SC7O7SN.jpg)\r\n4\r\n\r\n我说过我不能让我的一生都让人看不起，我不会一直活的卑微。\r\n\r\n我要走在哪里，都能买起任何东西。不管别人问什么问题，我都可以如鱼得水，我要用知识充盈我的大脑，不用一遇到任何事，都要死皮赖脸的去恳求别人。\r\n\r\n我想让自己活的有颜面，想让父母长脸，想告诉所有人我什么都可以。\r\n\r\n在命运面前我不是一个姑娘，我是一个求生者，是一个想要成功的人。\r\n\r\n但是在这些统统没有实现之前，我必须要足够努力，才能一直骄傲走下去。\r\n', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (22, '商锦维/文\r\n\r\n朋友分为三种，一种是远的，一种近的，还有一种是不远不近的。\r\n\r\n远的朋友是用来怀念的。那份古早的友谊或深或浅，在时间的长河里最恰好的某一处，径直被放进了保鲜冷库妥善保存，平日里不摸不碰不见光，可只要每每打开回忆的门缝儿瞧一眼，永远都是那样飘着仙气儿般明艳照人。\r\n\r\n近的朋友是用来依靠的。不一定非要真的提供什么物质帮助，可就是能这么实实在在的参与着你的人生。只要你遇到什么事情，无论大小，你总能最先想到这帮人。他们会陪着你大半夜一起打电话痛骂渣男绿茶婊，他们会逢年过节记着去你家给叔叔阿姨送点年货，他们会在你囊中羞涩的时候不等你开口就给你发个红包，附上一句贱贱的“还不领赏谢恩”，他们更会在自己遇到困难麻烦的时候毫不客气的扯着你的大腿“求包养，会暖床”。你得志了可以尽情的跟他们得瑟，等着他们夹枪带棒的损你一下，然后一起乐哈哈的去胡吃海喝庆祝一番。你失意了也可以纵情的对他们大哭，听着他们苦口婆心语重心长的数落你当初不听劝，然后咬牙切齿的陪着你从残酷社会骂到冷暖人间。这样的朋友不用你去刻意描绘什么友情，涂脂抹粉装腔作势感恩戴德只会换来他们的一个白眼，外加一句“矫情”。\r\n\r\n还有一种是不远不近的朋友。你说他们远，可他们就活生生的存在于你的朋友圈通讯录，每天你刷的动态他发的照片彼此都明晃晃的入了眼。可你说他们近，微信私聊里却从来没有他们的身影，一旦出现，不是求你投票，就在找你借钱。逢年过节的时候他们会给你群发一个恭喜发财，你说你是该回还是不回？这类的朋友大都于你有过那么或长或短的一段渊源，可能是曾经的同窗，可能是考研的战友，可能是初到一个地方一起AA制聚餐打牙祭的饭友，还可能是一道去了说走就走的旅行的驴友。你说你跟他们熟，算是吧，起码彼此的履历都略知一二，你也听过他们曾经添油加醋的某些过往。你说你跟他们不熟，也确实，因为你所知道的关于他们的一切，都是自他们自己口中说出来的，而不是与你一同经历的，而你与他们仅有的那么一小段共同经历，又没能像第一种远的朋友那样自带光环羽化成仙，就这么沾了地气的留在那里。鸡汤总是劝我们过去的回忆应该珍惜，是该珍惜，所以你结婚他给你包两百，回头你记在账本上等他儿子满月还回去。\r\n![7261d58642cc00f40af5f76d41faec0a.jpg](/storage/thumbnails/_signature/LTT36GFCL2RI65HLQPCJKQU9.jpg)\r\n只是这样也就罢了，偏偏这里头还混着一类人，就不爱见人好的。你发点什么美食自拍之类的从不见他们点赞，可一旦你发一条负能量的抱怨，马上就摆出一副邻家大妈的姿态问一句，“怎么啦？”就等着你把自己的不开心说出来，让他们开心开心呢。也许你会觉得，他们兴许是真的关心你呢，那为什么你遇上好事发开心的状态的时候没见他们关心你呢？\r\n\r\n就在前几天，一个妹子愤怒的跑来找老商，告诉老商一个奇葩的事。\r\n\r\n妹子长得不错，但是素颜和妆后差异略大，也就是那种平时灰头土脸累成狗，但是一出去玩就光鲜亮丽特上镜的姑娘。前些日子她得了空放了年假出去玩，自然是一路自拍，然后挑几张好看的发发朋友圈。朋友圈那么多人，有的点赞有的无视，妹子也没有真的在意。其实大部分人都一样，发了自己的照片上去也不过就是靠着自己臭美缓解一下平时工作的压力，只要不刷屏不吓人，大家看了没看也就那么回事儿。可是偏偏有人就看不过眼，就在妹纸加入的一个驴友群里，学着妹纸的姿势也拍一张，并附上妹子原图外加一句话，“向网红看齐”。这还不算完，下面还有别的人添油加醋，“你这表情不对，要嘴唇微张，眼神迷离……”妹子一气之下退了群，删了好友，照片也都删掉，跑来找老商哭诉。\r\n\r\n也许你会觉得妹子这样太玻璃心，何必为了这么一件小事就失去了几个朋友。确实不是什么大事，可能人家也只是无心的开个玩笑，毕竟现在社会嘈杂人心浮躁，总得有个发泄口释放一下嘲讽技能，不然弹幕吐槽何以如此盛行。可是问题就在于，这样的朋友留着究竟意义何在？除了不远不近的在那里偶尔秀一下存在感之外，还能做什么？老话总说多个朋友多条路，可这样的人，你能指望他在你紧要关头给你提供一条什么路，你怎么确定不是要你留下买路财的死胡同？\r\n\r\n都说现在是个熟人社会，见面就是朋友，大家都盼着能多给自己留条门路。可是我们真的需要那么多不远不近的朋友么？人情是债，出来混的迟早要还。走肾的是炮友，走胃的是酒肉之友，而朋友却要走心，是要彼此心心相映有回响的。\r\n\r\n高山流水君子之交那种朋友太高雅，合纵连横相爱相杀那种朋友留给古装剧。咱们都是普通人，朋友不用贪多，走心就好。', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (23, '![7b2a596fc893b5475bc4e8da5b8df135.jpg](/storage/thumbnails/_signature/1Q6STIQ0IB2GUUHQ77TBIIEJGI.jpg)\r\n## 鱼儿的故事\r\n两条小鱼在水里游泳，突然碰到一条从对面游来的老鱼向他们点头问好：\r\n\r\n“早啊，小伙子们。水里怎样？”\r\n\r\n小鱼继续往前游了一会儿，其中一条终于忍不住了，他望着另一条，问道：\r\n\r\n“水是个什么玩意？”\r\n\r\n如果你以为华莱士将自己喻作“智慧老鱼”，正在向这些即将毕业“小鱼儿”传授经验的话，那就错了。\r\n\r\n“我可不是什么智慧老鱼。”\r\n\r\n这个鱼儿的故事要表达的观点很简单：最明显、最普遍、最重要的关系，往往是最难发现、最少谈论的。\r\n## 你真的学会思考了吗？\r\n人文教育中“教我们如何思考”的真正含义：少些自大，多些对自己和自己所确信之事的“批判意识”……因为，有许多我不假思索便确信的事，结果却是大错特错的。\r\n\r\n有一个例子，足以说明我不假思索便确信了某件事，结果证明这完全是个错误。\r\n\r\n我所有的切身体验，都让我对一件事深信不疑：我绝对是宇宙的中心，是世界上最真实、最鲜明、最重要的人物。\r\n\r\n我们很少去思考这种自然而然出现的自我中心意识，因为从社交方面考虑，这种意识很叫人反感，但实际上，它又确确实实地存在于我们所有人的内心深处。\r\n\r\n这种意识，是我们自出生起就存在的默认设置。\r\n\r\n“学习如何思考”，其实是学习掌控自己思考的方式和内容。\r\n\r\n是让你以充分的自觉和警醒去选择关注的内容，选择从经验中构建意义的方式。\r\n\r\n因为，倘若你在成年生活中不能或不愿练习这种选择，那你将会被彻底打败。\r\n\r\n想想那句老掉牙的话：思维是“优秀的仆人，可怕的主人”。\r\n\r\n我认为，各位所接受的人文教育应当具有的实实在在的价值在于：在你们舒适、富足、体面的成年生活中，如何摆脱日复一日的重复单调，避免自己成为思维的奴隶，成为“如帝王一般独一无二的自我中心”这一默认设置的奴隶。\r\n\r\n## “日复一日”的真实含义\r\n即将毕业的各位完全不知晓“日复一日”的真实含义。\r\n\r\n而这恰恰是成年生活中最重要的部分，而大多数毕业典礼演讲却从未提及。\r\n\r\n举个例子，假设今天是你成年生活中平平常常的一天：\r\n\r\n你早晨起来，去干那份充满挑战的白领工作，辛辛苦苦干了九到十个小时，末了，你累了，筋疲力尽，你只想着回家吃顿好的，然后，也许你只放松了一两个小时，就得早早入睡了，因为明天还得早起，还得重复一模一样的事情。\r\n\r\n突然，你想起家中没有了食物——拜你那份充满挑战的工作所赐，你根本无暇购物——所以下班之后，你只好开车去超市。\r\n\r\n今天是本周的最后一个工作日，交通拥堵，路途比平时要远很多。好不容易到了超市又遇上人潮涌动……\r\n\r\n你不得不在灯火通明的巨大超市中穿梭，在一条条拥挤的过道间寻找你想要的东西，然后推着那毫无意义的推车，穿过同样推着小车、同样疲倦匆忙的人群。\r\n\r\n终于，你买好了所有的晚餐食材，又迎来了下一个问题——尽管现在是晚间购物高峰，超市里却没有足够的结账通道，人们排起了长长的队伍。\r\n\r\n这真是既愚蠢又气人，但你又不能把气撒在收银女士身上，她也是因为工作而过度劳累，其工作内容的单调和无聊程度远远超过了著名大学出身的在座诸君的想象……\r\n\r\n接着，你还得在缓慢、繁忙又挤满越野车的交通高峰时段开车回家，诸如此类。\r\n\r\n当然，在座诸君都有此种经历——但这些还没有成为各位实际生活的一部分，各位还没有如此日复一日周复一周月复一月年复一年。\r\n\r\n不过，这并不是重点。\r\n\r\n重点在于，像这样细微琐碎、令人厌烦的无聊破事，正是你做出选择的时机。\r\n\r\n正是堵塞的交通、拥挤的过道和结账时的大排长龙，让我有时间去思考，如果我对于如何思考和思考什么都无法做出明智的决定，那么每次采购时我都会生气难过，痛苦不堪，为我天生的默认设置就是——\r\n\r\n凡此种种都是针对我，针对我的饥饿、疲惫和回家的欲望，并且，似乎全世界的人都恰好挡住了我的去路，这些挡路者都他妈的是谁啊？\r\n## 由你来决定信仰什么\r\n你瞧，如果我选择这么想，好吧，很多人都是这样想的——但这样的想法往往都是非常简单、自然而然的，根本算不上是一种选择。\r\n\r\n但问题是，显然我们可以用不同的方式来思考这类事情。\r\n\r\n或者，刚刚超过我的那辆悍马可能是一位父亲载着自己受伤或生病的孩子，急匆匆地赶去医院，他的匆忙远比我的匆忙更加重要，更为合理——实际上，是我挡了他的路；\r\n\r\n又或者，我可以勉强自己考虑这样一种可能性：在超市收银台前排队的每个人，或许都和我一样无聊而沮丧，甚至有些人的处境比我更艰辛、更乏味、更痛苦。\r\n\r\n诸如此类……\r\n\r\n如果你真正学会了如何思考，如何关注，那么你就会明白，你还有其他的选择。\r\n\r\n那么，你将会拥有这样一种能力，把刚刚那幕拥挤烦躁、缓慢耗时、如同地狱般的购物情景变得既充满意义，又神圣无比，与点亮星星的神奇力量共同闪耀：同情、爱以及万事万物深层的和谐。\r\n\r\n神秘的事物不见得一定是真的：唯一绝对的真实是，你可以决定自己以何种视角去看待事物。\r\n\r\n我认为，这，就是真正教育的自由，以及学会如何更好地适应的自由：你会有意识地决定什么有意义，什么没有。\r\n\r\n由你来决定信仰什么……\r\n\r\n在成年生活中日复一日的沟槽里，其实并不存在什么无神论。\r\n\r\n根本不存在“无所信”。人人皆信仰。\r\n\r\n我们拥有的唯一选择，就是选择去信仰什么。\r\n\r\n如果你爱慕金钱和美食——觉得这才是生活的真正意义——那么，拥有多少都不足够。\r\n\r\n如果迷恋身材、美貌及性感魅力，你永远都会嫌弃自己的丑陋，当岁月和年龄的痕迹开始显现，在它们将你掩埋之前，你已经死过上百万次了。\r\n\r\n崇拜权力，你会感到软弱与恐惧，为了逃避这样的惧怕，你将需要更多更大的权力。\r\n\r\n崇拜智慧，努力在别人眼中树立智者的形象，你终将会觉得自己愚昧，欺骗了众人，随时都有可能被他人揭穿。\r\n\r\n诸如此类。\r\n\r\n真正重要的那种自由，意味着专注、自觉、自律、不懈努力，以及真诚地关怀他人，并且每天都以无数琐碎微小而乏味的方式，一次又一次地为他人牺牲奉献。\r\n\r\n和这种自由相对的，则是没有自觉、默认设置、永无止境的激烈竞争，始终处于一种持续不断的拥有和失去的痛苦之中。\r\n\r\n生活不会总是一帆风顺，我们要学会提醒自己走出思维定势的泥沼。同时，我们要学会给身边人更多的空间，因为我们不知道他们正在面对怎样的困苦。', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (24, '不要跟那些牙尖嘴利的人计较，过得好的人，都在忙着享受生活呢，过得不好又心眼儿坏的人，才巴望别人也一样不如意，才试图用自己的刻薄，削去别人的幸福感。别理这些人，好好爱自己。你勤奋充电、努力工作、保持身材、对人微笑，这些都不是为了取悦他人，而是为了扮靓自己，照亮自己的心，告诉自己：我是一股独立向上的力量。\r\n![0a715204602151.jpg](/storage/thumbnails/_signature/2579E4DT3VMJ4NNSG5C9FBGHAC.jpg)\r\n该努力还是要努力，进步一点点也是进步。你不要管你周围的人每天活得怎样怎样，人家怎么堕落是人家的事，你要做的就是自己好好努力，人只能和自己比较。再说了，这世间人这么多，跟别人比，哪里比得过来。\r\n\r\n\r\n至简至淡才是真正的成熟，一种超脱无我的禅心，它不是简单的无为无欲，更不是甘于平庸，不思进取，它是对物欲事理的适度取舍。面对红尘喧嚣、繁华诱惑，用一份平静与从容来面对生活，得之淡然，失之坦然。在人生旅途上，少一份圆滑世故，便多一份清纯典雅；少一份对功名利禄的执著，便多一份坦然自在。\r\n\r\n\r\n![0db625a2160521.jpg](/storage/thumbnails/_signature/25K9U8TEVA68CTNNDPQA1JS36H.jpg)\r\n生活从来不会刻意亏欠谁，人生就是一种承受。世上的事，不如己意者，那是当然的。人活着是一种心情，穷也好，富也好，得也好，失也好，一切都是过眼云烟，只要心情好，一切都好。懂得放心的人找到轻松，懂得遗忘的人找到快乐，懂得关怀的人找到朋友。过好每一天，就是过好一生。\r\n\r\n![1a6557c4f42611.jpg](/storage/thumbnails/_signature/12895O5DCRNBMVN4RL5VUJTTU6.jpg)\r\n人生千灯万盏，不如心灯一盏。人活得累，是因为能左右你心情的东西太多。天气的变化，人情的冷暖，不同的风景都会影响你的心情。而他们都是你无法左右的。看淡了，天无非阴晴，人不过聚散，地只是高低。不悲不喜，便是晴天。\r\n![4f3562a912e511.jpg](/storage/thumbnails/_signature/2KTEHURJEDL8J1QIAR0N0PLP33.jpg)\r\n婚姻就像爬山，两个人在山脚相遇，擦出爱情火花，约好一起登上顶峰。前行路上，你觉得累，便不想爬了。你停在山脚，以为可以等他回来。却不知，他在半山腰时，遇到了另一个愿意与他一起前行的人。\r\n![402a5126426851.jpg](/storage/thumbnails/_signature/28V8KQU6516EURHR5240JCM33A.jpg)\r\n求人不如求己，真正能够解忧的，只有自己。人生最酷的事情，就是你把老天爷安排给你的路走岔了，大家都觉得你完了。可是老天爷不知道，所有的绝地反击都才刚刚开始。你自己冲出来的路，才是最牛逼的路。人生没有白走的路，每一步都算数。', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (25, '1、亲爱的女孩，无论经历过什么，都要努力让自己像杯白开水一样，要沉淀，要清澈。白开水并不是索然无味的，它是你想要变化的，所有味道的根本。绚烂也好，低靡也罢，总是要回归平淡，做一杯清澈的白开水，温柔的刚刚好。\r\n\r\n2、小时候觉得悲伤很酷，听催泪的情歌，写决绝的字句，生怕自己看起来没情绪。现在想来，当时真是多虑了，人生的疾苦都会在未来的路上埋伏好等你出现，一样也不会少你的，一样你都躲不掉。\r\n\r\n3、如果想要改变命运，改变这种宿命的话，只有一条路可以走，那就是赢，而且要赢到最后。婚姻就像吃饭，你点的肯定都是你爱吃的，可等菜上了桌，你还是忍不住先看看别人的盘子。\r\n\r\n4、关于安全感这事，我发现有人能给你一碗那么多，有人能给你一个游泳池那么大，但能给一个太平洋的永远是自己。永远是这样，风后面是风，天空上面是天空，道路前面还是道路。\r\n\r\n![e301dafa68aa725fb4de6a4255c5e9fd.jpg](/storage/thumbnails/_signature/2QSTRL4S084P70E30R1G16OHFE.jpg)\r\n\r\n5、接受孤独，接受失去，接受自己是不完整的，偶尔还会被变故打败。也许接受是难以下咽的，但在无法承受的时候，要学会放过自己。\r\n\r\n6、总有人说，在错的时间遇见对的人，别闹，这个时间你遇到的都是错的人，没能走到最后，谈什么对错，那人还没有资格让你倾其一生。\r\n\r\n7、一个人最好的生活状态，是该看书时看书，该玩时尽情玩，看见优秀的人欣赏，看到落魄的人也不轻视，有自己的小生活和小情趣，不用去想改变世界，努力去活出自己。没人爱时专注自己，有人爱时，有能力拥抱彼此。\r\n\r\n8、幸福就是痒的时候就挠一下，不幸就是痒了但挠不着，更不幸的就是，很久以来灵魂和肉体都感觉不到那种蠢蠢欲动的痒了。\r\n\r\n9、相信生活是美好的，相信人生是充满希望的，懂得人比钱重要，能用钱解决的问题都不是问题。当一个人熬过了最艰难的时候，就不再想去寻找依靠，任何人都是负累。\r\n\r\n10、并不是说每一段感情的付出都是平衡的，因为每一个人都喜欢笑着拥有，却很难与不该属于自己的东西说再见。', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (26, '肥肥鱼是个多愁善感的文艺青年，还获过文青聚集地——豆瓣网颁发的“豆瓣理想青年奖章”呢，曾经他在自己的音乐人小站简介里写过一句话，说“人生就是不断地往前走想要为困惑找到一个出口，可好不容易到了出口，发现迎接你的还是困惑。”后来他觉得自己的生活就是这句话的写照，潜伏在人生道路两旁各种此起彼伏的困惑把肥肥鱼先生搞抑郁了。\r\n\r\n那时他22岁，刚毕业，拿着本科大学的文凭，为了能经常看到现场的音乐演出留在成都找工作。像全世界所有的年轻人一样，他听得见沸腾的热血在年轻的身体里呐喊，总有一股跺跺脚就能让大地颤抖的气势：我一个月之内要找到一份什么样的工作，要攒多少钱，要找到一个美丽善良大方的女朋友……欲望清单被一个月一个月地堆满，以为自己所向披靡，无所不能。可是世界甚至都不屑于回应你一个冷冰的笑脸，整整三个月，都没有一家公司录用他，后来好不容易找到了一份跟专业完全不沾边的工作，做网站编辑，但他不快乐。\r\n\r\n因为工作，他成了自己最讨厌的人，每天抓破脑袋把自己变成标题党骗取点击量，在公司论坛的群里每天看无数陌生人聚在一起聊星座配对娱乐八卦和吐槽抱怨……\r\n\r\n他一个人吃饭逛街弹吉他，不合群。白天混在拥挤的人群中等待路口的绿灯亮起被携裹着往前推，夜晚沉浸在自己内心无尽的黑暗之中。他终于把自己搞抑郁了，沉默寡言，深陷孤独，每天听着五月天的《你不是真正的快乐》痛苦不堪，站在窗口往下看就想要不要往下跳，跳了以后会怎样。白天他看上去依旧在笑，可他不傻，清楚自己的内心正在被某种空洞一点点地吞噬，但他毫无办法。\r\n\r\n他爱摄影，有一天去买镜头，看到有个年轻人抱着吉他接好了音响在街边卖唱，那个时候的成都大街上还没今天这般文艺，这是他第一次看到有人在路上把歌唱得这么坦然。他居然就驻足在那听了三个多小时，不是对方唱得多好，而是忽然觉得，哇，拿把吉他站在街边放声歌唱，高举梦想旗帜，好有放荡不羁爱自由的热血之感，多酷啊。更让他吃惊的是，那人唱了三个小时就有一百多元钱的收入，而当时的他，工作一天累死累活下来才八十元，吃饭的时候，最羡慕别人点一荤一素的“豪华套餐”。\r\n\r\n有天他在网上看到一个广告短片，一帮七老八十的爷爷们骑摩托车去环游，屏幕上的他们满脸皱纹，头发花白，可依然笑得灿烂明朗。肥肥鱼受到刺激了，自己这么年轻，为什么要在钢筋水泥办公楼里给自己打上一个又一个枷锁，他开始蠢蠢欲动想要抱着吉他去流浪，去寻找自由和快乐。那时穷游还不是全民爱好，做这个决定还需要时间思考，毕竟他只是个只有2千块钱积蓄的忧伤年轻人啊。直到有一天他看到了一张泸沽湖的照片，他听到自己内心有个声音在反复地说，好想去啊！\r\n\r\n那就去吧！\r\n\r\n第二天，他就辞职，订票，游说父母，他并不知道未来会怎样，只觉得年轻就应该拔腿就跑，既然没有什么人生的方式是万无一失的，那就出去试试看，看能不能把身体里的不快乐给清洗掉，看能不能爱上这个本觉得挺可恨的世界。\r\n\r\n像很多突然启程的人一样，他们厌倦了办公室，厌倦了城市，厌倦了同事，厌倦了房东，厌倦了像罐头一样的地铁，厌倦了看时尚杂志上铺天盖地的营销，厌倦了日复一日单调苍白的生活，流浪是一场逃亡，也是一种对抗和标榜：我走了，我牛逼，你们不走，你们傻逼。肥肥鱼也曾以为，在路上，是唯一的解脱和救赎。\r\n\r\n他立下的宏愿是一年环游中国，两年环游世界，没有钱，就给旅社做义工换取住宿，讲路上的各种奇遇故事去网友家蹭一顿热气腾腾的饭菜，差旅费就靠在路边卖唱，偶尔帮别人拍摄写真，以及把拍摄的照片做成明信片在路上摆摊出售。最初，旅行也是他的目的，带着在世俗世界里败退的骄傲和自尊去突围出一条捷径，想红，想出名，想要让更多人听到自己原创的歌曲，看到自己拍下的照片。流浪的前一个月，他所做的一切，都抱着一个能赚更多钱得更多利的功利目的，觉得火了才可以做一个专栏作家，红了才可以轻松挣钱呀。除此之外他还想向世界证明自己过得很好很快乐，他会花很多时间精力去拍摄一张照片，然后心急火燎地四处找网络，把照片发在微博和豆瓣，让别人羡慕他。\r\n\r\n所有在旅途上的人除了那份闲适的心境，除了能看到各种美景，更重要的，当然是能遇到许多奇奇怪怪且有趣有故事的人，肥肥鱼也是。得了癌症的亿万富翁姐姐会告诉他，年轻真好，我真羡慕你，虽然你看上去一无所有；他去做义工，给贫困的孩子们唱歌，看到他们生活得如此艰苦却依旧有那么清澈的笑容；还有退学流浪的高中生，隐居的才华横溢的画家，他还和摩梭族的人一起生活，参加他们的祭祀活动，篝火晚会……看到这么多不同于上班族的生活和选择，他会觉得，呀，自己的人生才刚刚开始啊。\r\n\r\n当他在泸沽湖边，发现这里的景象远比当初震慑到自己的那张照片还要美的时候，肥肥鱼感动得落泪。一个人出来旅行，他终于从内心感受到了快乐和平静，慢慢觉得，这世界最奢侈的，不是多大的房子，多厚的票子，多美的妹子，而是悠闲地把日子过成一段段美好时光。慢慢地，他在城市中那种急不可耐的要上房揭瓦的紧迫感终于在山川湖海之中被静静地安抚，曾经要环游世界的口号声也慢慢小了下来，最初的功利性目的也在不知不觉中消失殆尽。流浪不是为了证明给别人看自己可以对这个糟烂的世界多么不屑一顾，而是给自己的焦躁找到一个出口释放。\r\n\r\n他买了一块黑板，用粉笔在上面歪歪斜斜地写：“卖梦为生，生活不是梦，但梦可以是生活。我三月从成都出发，卖唱攒路费，我唱歌，你随意，然后自取一张我自制的明信片，愿简单欢喜。”这个社会，有人卖笑，有人卖肾，而他决定卖梦。他给自己列出一年的梦想清单，出一本书，办一次展览，做一次讲座，回家给父母做三个月的饭，他说：“能稀释悲伤的，只有重拾做梦的能力和远离悲伤的发酵器。”\r\n\r\n当旅行于他，不再是对抗，而是和解的时候，他居然在这自我放逐的路上找到了自我。他辞职的时候，很多人对他嗤之以鼻，当他说他要当一个畅销书作家，要办自己的摄影展，还要做讲座时，很多人觉得你不过是个流浪歌手，心比天高，可是他真的做到了，出书，办展览……包括他梦想清单上的回家给父母做几个月饭。曾经的他在抑郁的时候说不去旅行会死，没有音乐会死，当他拥抱了自己，后来发现没有这些都不会死。每当去菜市场买菜，就觉得生命鲜活，还给自己做的菜写歌，在菜市场里拍MV，给每一道菜选择光线和角度拍出有温度的写真，在豆瓣上引起很多人的关注。这个曾经想要通过流浪甩出生命中全部悲伤的人最后居然在自己的厨房里获得了最大的内心安定，当他停留过不同的远方，才发现，远方其实不是他的梦想，只是抵达梦想的过程。比流浪更美的，是在家和着切菜的节奏唱嘀嘀嗒嗒，料理是他的一场原地旅行；厨房，是他的又一次在路上。\r\n\r\n流浪，一度成为很多城市白领们心中最大的渴望，人们总是觉得在办公室不自由，可是，出去就能找到自由了吗？人们总觉得在城市不快乐，可是离开城市就一定快乐了吗？\r\n\r\n肥肥鱼抑郁的时候曾经说，我要甩掉所有的悲伤。但现在他知道如果真的甩掉了，那不是人生，那不正常，幸福并不是单一的快乐，我们所追求的幸福生活应该是一种平衡，是可以在快乐和悲伤中调和的。很多人都觉得，生活在别处就是自由，就可以无拘无束，可真正的自由不是没有束缚，而是可以想出去就出去想回来就回来，脱离哪个圈子，都可以活得很好。我曾经也无止境地思考自由的意义，像歌里唱的那样，没有什么能够阻挡我对自由的向往，但也许这个世界上没有真正的自由。如果有，可能就是对自由的那份向往，可随波逐流，抑可随处安家的淡然。\r\n\r\n流浪不是去抵抗融入世俗的唯一武器，因为唯一的道路在你的心里，旅行不过是一场发现自己的旅途，内心安定了，不在乎人是否被围困在城市，山川，厨房或爱里。', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (27, '半个月前一个读者给我留言，一个大一的女孩，和她的初恋在一起三年多，在一起时男孩曾离开过她和别的女生相恋，后来回到她身边，现在又抛下他，再次告诉他心里有了别人，她说现在的自己很痛苦。她问我，“我想知道怎样才能快点好起来 ” 我在脑海里想了很多方法，可后来还是告诉她，不要逞强，痛就痛，苦就苦，去继续自己的生活”\r\n\r\n也许她会觉得这个回答有些敷衍，可其实这就是最快的恢复方式。\r\n\r\n前些天好友给我发来信息，他的一个发小刚刚失去了父亲，问我该如何安慰，我回给他“让他一个人痛快的哭一场吧，只有当他自己走过这段痛苦的日子才能真的好起来 ”\r\n\r\n很多时候，人只有先狠狠的脆弱一次，才会懂得该如何坚强。\r\n\r\n从在网上写文章，便陆续收到过很多朋友的留言和私信，成长的挫折，爱情的伤痛，未来的困惑，生活的痛楚，面对每一个人的留言，我都想去尽力帮助，回想这些年自己和身边朋友的成长，倘若两年前我一定愿娓娓道来每一种不同苦痛的解救方式，可是如今，我只会说一句，你一定会好起来，剩下的,就全部交给时间吧。\r\n\r\n亲爱的朋友，每一个受过伤，想要尽快忘怀告诉自己要立即坚强起来的朋友，每一个曾深陷痛楚，固执的想要马上挣脱的朋友，每一个总想要逞强的朋友。\r\n\r\n我知道，深陷痛楚，你一定会不停的告诉自己要坚强，要原地满血复活，要忘记所有过去，你恨不得一觉醒来便从新笑颜如花，朝气满满。可我想告诉你的是，有时候，那是偏执的坚强，那是固执的倔强。你会因为太急于恢复，再一次伤害到自己。\r\n\r\n一个学姐，曾谈过三次三年的恋爱，可每次都是无疾而终，被人无情的抛弃。有一段时间她脆弱不堪，每天失魂落魄，后来她为了掩盖自己的脆弱彰显自己的坚强开始不停的更换男友展开新的恋情，她那时觉得只有这样才能让自己不断的活在新的生活中以忘掉过去的回忆，只有这样才能让自己尽快摆脱那些痛楚。\r\n\r\n可后来她告诉我那段时光才是最痛苦的，她表面逞强的假装已忘掉，可其实是在加深回忆和悔恨，伤害别人的感情内心愧疚，同时也在给自己的伤疤上撒盐，这是自我的折磨。后来她忽然释怀了，回忆便回忆，过不去就让它过不去，每天努力工作，关心家人朋友，对感情顺其自然，放下了过往的一切悔恨和不解，现在她结婚了，生活的很幸福，一点也看不出来像是有过这些经历的人。\r\n\r\n有些时候，人越想逞强，痛楚越会将你拽入更深的漩涡，越想忘记，回忆越会来的汹涌。越是想要马上渡过，越会将痛苦拉长。\r\n\r\n就像深陷泥潭，越是挣扎摆脱，越会陷入更深的泥泞，最后无法自拔。\r\n\r\n一个好友，高考时英语机读卡涂错考号，本能轻松进入重点大学，却只好回到学校重读一年，自责与悔恨如影随形。起初他每晚都在懊悔的灰暗中度过，每天都在想如何尽快脱离悔恨的阴影，晚上要看一部励志的电影后才能入睡，可他却过的越来越痛苦，悔恨与自责与日俱增。\r\n\r\n越想摆脱，越是不经意的把痛苦放大，越是想要快点坚强起来越是在潜意识中告诉自己受到的挫折有多么难以释怀。后来因为励志的电影几乎都已看遍，他不再熬夜看电影了，每晚按时上床睡觉，可之后的他，在没有励志电影，没有快点坚强起来的自我督促下，越来越释然，越来越积极。\r\n\r\n自顾自的逞强，有时只会让一个人前方的路越走越窄，如同遇到鬼打墙般陷入自己铸就的围城再也走不出来，直到把自己锁死。\r\n\r\n回想自己童年和成长的那些经历，那些曾持续数年里每晚刻骨的痛苦切肤的折磨，后来都能轻描淡写的笑着说出来，当一个人发现那些曾经让你最难过的事终于有一天可以笑着说出来时，也便真的明白了成长的意义。再不怨天，只是感谢，因为它们都是独属于自己成长道路上收获的宝藏。\r\n\r\n如今回头再看当初那些深陷痛楚的日子里，那时的自己因为总想要逞强，尽快脱离命运和痛楚的漩涡，可结果却越陷越深，明明是抗争，实际却是削弱自己的能量 ，越想逞强，痛楚越缠绕在身旁。\r\n\r\n曾经在患上轻度抑郁时看了一年的心理医生告诉我，每个人在每个年龄段都有不堪承受的痛楚，不是因为你的懦弱，不是因为你不够坚强，只是因为你处于那个年龄段。对于那时的挫折和痛楚，你要学会的是接受和坦然面对，去承认自己的脆弱 接受自己的不堪，你要敞开心扉的容纳它们，告诉自己，它们都是你生命里的一部分。\r\n\r\n积极的心理，并不是一味地与消极做斗争，很多时候，越是抵抗 它越是顽固，越是排斥 它越是汹涌，越想逞强，越会击垮你。就像我们失眠时，越逼自己快点睡着就越是睡不着。去接受消极，接受失望，接受不安 恐惧 焦虑，因为它们都是人生中必然存在的一部分，当一个人学会坦然的接受时，反而会很快得到释怀和解脱。\r\n\r\n后来的我，遇到任何无法抵挡的挫折，都会告诉自己，想哭就哭，想醉就醉，你不需逼着自己坚强到无人能敌。而结果便是，我比以往都恢复的更快，平静而坦然，没有任何强求，好起来，便是真的好起来了。\r\n\r\n很多问题，当时是找不到答案的，可只要过了一段时候，答案自然会出现，时间，可以解决很多问题，没有什么事情是时间所不能解决的。有些问题，既然当时不知答案，便不必苦苦追求，终究会有答案浮现在你的脑海里。一个偏要提前出现的答案，不过是人的执念 只会徒增你的伤痛和迷茫。\r\n\r\n有些伤疤，注定需要时间来治疗，你想要马上修复它们，可其实是在揭开伤疤加深伤口。就像小时候我们磕磕绊绊，摔过很多跤身上留下很多伤疤，那时因为好奇和调皮，总是经常摸摸结疙的伤口，心里懊恼为何还没好，可是越去碰触察看恢复的越慢，每次父母总是告诫不要去碰伤口，别管它，自己会好起来的, 后来也就这样不知不觉的好起来了。\r\n\r\n人的伤口无论再深再痛，总有一天会自我修复。而人的情感，爱，憎，恨，悔，其实也是有期限的，为一个人受苦，苦到某种程度，自然会醒悟 不再为他蹉跎岁月。思念一个人，当思念到某种程度 却换来长久地落空，也会欣然告别。只要过了那段时间，一切都会恢复平常，过了那个期限，一切都会化作似水流年。无论多么深刻的痛楚，痛的一定程度，也会阴霾散开，看到阳光。而需要你做的，只是去安静的度过那段时光。\r\n\r\n每个人都会经历一些措手不及又让人无可奈何的痛楚，上天为我们安排这些磨难与挫折并不是想考验我们能否一笑而过原地复活，太多的经历我们都不可能一觉之后便从容面对，这些磨难的安排其实是让你学会去承受痛楚，学会在困境中安然的成长，学会在逆风中继续前行，他需要你做的只是走过去，既不丢盔卸甲又不强颜欢笑的一步步安然的走过去。\r\n\r\n我知道你总是想让自己坚强些再坚强些，可生命中的痛楚是源源不断的，这样的你有时会让痛楚加倍，更是对自己的残忍，有一天会不堪重负跌倒在地上。内心再强大的人，也会有不堪一击的那一刻，再坚强的人，也都有过一段脆弱的时光。\r\n\r\n亲爱的朋友，这个世上没有人能够坚强到原地复活，不要再一味的告诉自己要强强，不要让自己再去偏执的逞强，很多时候 人只有先狠狠的脆弱过一次，才会懂得究竟该如何坚强。\r\n\r\n长大后的你要学会接受自己的脆弱和不堪，会流泪，会失望，允许自己懦弱，允许自己不知所措，放过那个一时软弱的自己，放过那个一时不堪的自己，给自己一点时间，给自己一些期限，你会在不知不觉中获得生命里最安静的坚强，最自然的坚韧。\r\n\r\n不躲闪，不逃避，不排斥，不必去逞强。只有忍受过病痛，才会懂得生命的可贵，只有经历过离别，才会懂得相聚的不易，只有痛快的哭过，才会在将来尽情的欢笑，只有经历痛楚才会明白成长的意义，只有度过那段脆弱的时光，才会在未来看到明亮的自己，当你安静的经历这一切之后便会发现自己曾经受过伤的每一道伤疤都已成为了身体里最强壮的地方。\r\n\r\n每一个懂事淡定的现在，都有一个很傻很天真的过去，每一个温暖而淡然的如今，都有一个悲伤而不安的曾经。很多的委屈从说不得，变成了不必说。你曾以为有些事，不说是个结，揭开是块疤，可当多年后你揭开疤，也许会发现那里早已开出一朵花。那些曾经能让你受伤的地方后来一定会变成你最强壮的地方。那些曾经让你最难过的事终有一天你会笑着说出来，成长的意义其实是要告诉你，一切你认为过不去的坎最终都会过去，一切你认为好不了的伤口最后一定都会好起来。\r\n\r\n痛就痛，苦就苦，就让它痛，就让它苦，又能耐你如何 ？ 总有一天，你会在不知不觉中发现所有的伤口正在慢慢愈合，所有的痛楚都已是过往。\r\n\r\n亲爱的朋友，你不必逞强，时间一定会为你疗伤。\r\n\r\n我们都一样，经历着别人所不能代替的成长。有些伤痛只能自己默默扛着，但有一天，终会明白这一切存在的意义，会笑着感激曾经的苦痛与伤害。别人没有体验过你的辛酸苦楚，也便收获不了你的快乐和幸福，你只需去安然的承受和忍耐，终会收获属于自己的那份美好。\r\n\r\n后来的我时常觉得人不属于动物，人的生命更像是季节。春夏秋冬，寒冷的冬天总会突然来到，让人猝不及防，可春天也一定会如期而至。你明白吗，暖阳与和风 绿树和鸟鸣 花香与燕舞的春天一定会到来。\r\n\r\n去坦然的承受寒冬，去安静的等待暖春。', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (28, '住在一间安静优美的小屋，\r\n\r\n在鸟鸣中起床，\r\n\r\n推窗有花香铺面而来。\r\n\r\n \r\n\r\n \r\n\r\n早餐过后，\r\n\r\n在阳光温暖的抚摸里，\r\n\r\n我们骑车踏青或光脚奔跑。\r\n\r\n \r\n\r\n \r\n\r\n累了，\r\n\r\n我们就躺在绿草的清凉中，\r\n\r\n看天空湛蓝如洗。\r\n\r\n \r\n\r\n \r\n\r\n入夜，\r\n\r\n我们一起数繁星点点，\r\n\r\n聊我们的心事和青春。\r\n\r\n \r\n\r\n \r\n\r\n遥望星空，此时，\r\n\r\n风景不在远方，而在身旁。\r\n\r\n \r\n\r\n \r\n\r\n只闻花香，不谈悲喜；\r\n\r\n记得随时带上自己的阳光。\r\n\r\n \r\n\r\n \r\n\r\n想起彩虹，美丽极致，\r\n\r\n分享传播幸福。\r\n\r\n \r\n\r\n \r\n\r\n真正的平静，\r\n\r\n不是避开车马喧嚣，\r\n\r\n而是在心中呵护一朵花开。\r\n\r\n \r\n\r\n \r\n\r\n闲看花开，静待花落。\r\n\r\n冷暖自知，干净如始。\r\n\r\n \r\n\r\n \r\n\r\n幸福就是有花有草，\r\n\r\n心中充满爱意！\r\n\r\n \r\n\r\n \r\n\r\n等老了，和心爱的人一起，\r\n\r\n找一个小镇，安静的住下，\r\n\r\n早上在巷口看日出，\r\n\r\n晚上相依相偎看夕阳。\r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\n每天早上睁开眼睛，\r\n\r\n看到暖暖的阳光和温柔的笑容，\r\n\r\n这就是我想要的未来。\r\n\r\n \r\n\r\n \r\n\r\n愿有一屋，不求华丽；\r\n\r\n不被打扰，幸福终老。\r\n\r\n推开窗，就能闻到风中树叶和蔷薇的清香。\r\n\r\n \r\n\r\n \r\n\r\n愿你的窗台，繁花盛开。\r\n\r\n都市的繁华，小山村的宁静，各有各的美好！', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (29, '陈希是我的初恋。从高二到大三，我喜欢了他将近五年的时间，几乎是一整个青春。我们之间从始至终没有真正在一起过，也没有对彼此表白过，但他对我很好，也很懂得我。我觉得也够了。曾经在一个地方写了很长的文，从我们初二的第一次见面到我们大二的最后一次见面。断断续续写了几个月，回忆到了记忆的每一个细微的褶皱里。今生都没有再去回忆一次的必要了。\r\n\r\n但是当时我没想到，在我写了那篇长文之后，我们竟还有一次见面——本来我以为我们今生是不会再见的了。因为早已经失去联系，他也远在某省，和他大学的女朋友结成眷属。他是那种和一人恋爱然后就会结婚的人，我早知道，但是毕竟没有这个福气。说远了。2013年过年的时候，他忽然联系我，说是过两日将坐火车回某地，想提前一天到我所在的城市，来找我玩。我非常意外他会想起要找我，心情也甚是复杂。我是早已经对他没有那种感情了，可是这个人毕竟是不同的。虽然他已经结婚了。我们已经大概四年没见过了。有必要见面吗？不知道是否带着他妻子？又觉得很不好意思问——当然是带着妻子的啊。带着就带着吧。这样想来想去，最后大概隔了快一天的样子，我回复了一个“好”。后来具体讨论来之后的安排的时候，我试探的问了一下他妻子的喜好，他很爽快的说，妻子在娘家，并没有一起。我心里顿觉轻松，到底我是不擅长和陌生人应酬的。虽然能勉强敷衍，但到底心累。\r\n\r\n接下来的几天连日大雪，传闻要封路，我很担心他不能在约定的日子里到达。原来我还是想见到他的。虽然不知道见了面该怎么相处，能说些什么话。听天由命吧。最后他如期而至。并且到的很早。那天我在家里反复想着穿什么，并且很后悔我没带什么好看的衣服回家，大衣里面没有好看的打底的裙子——女孩子真是什么时候都不能没有战衣。我穿了一件宝蓝的大衣，里面是黑色的打底裙，是我妈妈的。当时觉得这着装自己很不满意，但是也没办法。后来果然后悔了，这是后话了。早起洗了头发，但是竟然没有冲洗干净，出门到半路才觉得头发始终有点腻腻，贴在头皮，完全不蓬松，整个人感觉糟透了。我是那种头发不好整个人都不好了的人。那时候我才毕业一年，也没有任何化妆品，只临时想起来涂了一下口红想有点气色，但是现在想来，那口红是我妈妈的，颜色过于红艳，并不适合我的年纪。反正就这样凌乱的出门了。\r\n\r\n在客运站见到他。人很多。他很调皮的拍我左肩，然后在我右边出现，吓了我一跳。以前上学的时候他也爱这样，熟悉感瞬间回来了。第一眼感觉是，他还是以前的样子，只不过更好了。他向来十分清秀，但高中的时候有些太瘦了，并且脸上的表情总是偏向严肃的。现在的他还是偏瘦，但好得多了，看起来精神很好，满面笑容，初中时候那种飞扬跳脱的神彩又回来了。我记得我第一次见到他他就是灿烂的笑，好像阳光照射冰面穿越深井。现在他又是那样了。穿着一件米黄色及膝大衣，有腰带的那种，显得很挺拔很有朝气。我立时觉得自己相比而言穿的太过深色——事实证明后来他也注意到了这一点。\r\n\r\n当时快到中午，于是我们边说话边去一家我挺喜欢的地方吃饭，在人民广场那里。我记得走在路上瞎聊着，气氛就是很正常那种。他说，你还没男朋友吗。我说你怎么知道我没有，他说，现在我知道了。灿烂而略带狡黠的一笑。真的很像我初初认识他的样子啊。吃饭的细节我都不大记得了。那几天我胃痛，当时已经有点开始发作，但是他提议喝点啤酒，我便舍命陪君子。也不想显得自己总是病怏怏的这痛那痛的样子。大概没说什么有意思的话，就像普通的老同学那样，说些既不亲密又感觉热络的话语。say you say me.想来小时候我们在一起的时候，都是我神采飞扬的说话较多，大部分是他听着，现在好像是他说的较多。他提到想回武汉，但是现在工作的地方不放人，还在努力争取。很明显他过得很好，无论是家庭还是事业生活，都是幸福快乐的人才会有的轻松愉快气质。也没有沾染上我所厌恶的油滑、虚伪、愤青等气质中的任何一种。见面之前隐隐害怕他已经变成另一个人，并没有。他还是那样好。我欣慰的觉得自己当年没有喜欢错人。他大概是我一生中眼光最好的一次了。\r\n\r\n吃完饭无处可去，天冷的不得了，附近有个商场，于是他提议去逛商场算了，至少吹吹暖气。我也就欣然同意，并要求他一会儿穿我喜欢款式的男装大衣给我看看。他答应了，然而后面我们都没这事儿。去商场的路上，他不经意的说，大二那次武汉同学聚会，你怎么没去？我看了他一眼，说，你认真的吗？他说怎么了？我说，你们班同学聚会，可是我并不是你一个班的啊。。。他啊了一声，这才意识到不对，说，是……我以为我们高中是一个班的。我有点生气又惊愕的说，你理科我文科啊。心里难以相信他竟然能把这个都弄错。我又补充说，我们从没同班过。他说，是，我想起来了。我说，不过我们初中的时候，有共同的英语老师和数学老师。他嗯了一声，就很有兴致的跟我聊起一些初中的事情，有些我记得，有些我就没什么印象了。我说，额，初中太远了，我比较记得高中的。他很自然的说，高中的事情不知道怎么搞的，我好像记得的很少。高中对我来说挺痛苦的，压力很大，就是拼命学习。我觉得初中还挺快乐的。我噢了一声，想，原来是这样。心里轻笑一声，造化弄人，人心隔肚皮，你永远不知道同一件事在另一个人的记忆里是什么样。在我心里，高中灿烂精彩，是我人生最美好的回忆之一，而他是其中重要的一环，然而很多他不记得了。他记得的那些，我不记得了。因为我是在高中才真正喜欢他。我自以为自己记得与他的每一个细节，其实倒也不是那样。他大概是过得很好，又经历了真正刻骨铭心的感情，当年那些青春期的爱恋，对他来说也许不值一提了。忘记了也正常。\r\n\r\n后来在商场里我看衣服的时候，他不经意的提到他的妻子喜欢哪几家店，话语中是多年相处带来的对于另一半的熟稔。有时候我看了一下某件衣服，他便劝我试试。我说，我知道我不会买，就不试了。他说，为什么不呢？试一下，如果好看的话，就买啊。我给他讲了一下我的购物观，大致是我觉得那件衣服虽然比较好看，但是实用性差一点，我认为不值得那价钱。同时我认为那个价钱应该是一件什么样的衣服。他听着，流露出一丝意外，好像没想到我会这样井井有条或者说斤斤计较的买衣服？我不知道在他心里我应该是什么样，但是情不自禁的没有说下去了。\r\n\r\n走一走有些累了，我们在商场里的长椅上坐下。他说，你的手套是大学时候买的吧。我脖子上挂着一幅毛线手套，不知什么时候被他拿在手里把玩。那确实是我大学时候买的。我说是，你怎么知道。他说，好像和你现在的着装风格不同。我立刻意识到他指的是我的深色系着装，宝蓝大衣加黑色裙子的搭配。似乎他认为我现在走的是成熟路线，与我那副略显可爱的手套并不一致。我立刻辩解说，裙子是我妈妈的，我没带裙子回来。说完了也觉得兴味索然。啊，他现在是这么认为我的，也许并不仅仅是因为我的衣服。想了一想，还是忍不住问，你觉得我跟以前不一样了吗。他说，没怎么变。又想了一想说，好像有点拘谨了，以前你更活泼些。我点点头，没说话，心里莫名有点苦涩。心想，我在宠爱我的人面前才会飞扬跋扈活泼嚣张，你现在不是那样的人了。又想，也许是因为我没有你现在那样快乐畅意的气质。我感觉得出，他处于一种快乐满足的生活中，那带给他自信和放松的气质，而那时候的我，人生其实是处于低谷的。\r\n\r\n出了商场，左右无事，去了人民公园。那时候我已经开始明显的胃痛了，但忍着没说。山路上积了薄雪，我穿着带跟的靴子，小心翼翼的抓着扶手。有一两处斜坡难行，他伸出手来想要拉我，稍一迟疑还是避过我的手，抓在了我的胳膊上。这当然是应该的，但再一次提醒了我。我越发觉得，今天其实是无谓再见面的。于是便努力的自己上山，尽力不显露出有些吃力的样子，不再让他帮我——对方并不是一个会十分关心你的人，你是怎么也不能示弱的。我想在这这样的心情里，我也许是显得越来越不活泼？我不知道。\r\n\r\n山上早春的梅花开的很盛，我俩都拍了一些照片。我还趁他不注意偷拍了他几张，此前我存着的他的照片只有他上传在空间里的结婚照而已。但是都拍糊了。不过到底也没删，还在旧4S里。\r\n\r\n从山上下来天也有点晚了。晚饭吃的是锅巴饭。他说很想念高中学校外小吃城的锅巴饭，他倒是还记得这个。我第一次去那里就是和他一起，吃的是青椒肉丝饭。很久远的事情了。吃了饭我说我回去了，那时候胃已经疼的厉害。他说还早，劝我到他宾馆房间看会儿电视好了。我答应了。尽管开了空调房间还是透着一股湿冷，他远远坐在床边的椅子上，我坐在床沿。电视放了些什么我一点也不记得了， 只感觉胃疼的越来越厉害，不自觉的弯下了腰。他终于注意到了。于是给我倒热水，让我坐着休息一会儿。然而到底不见好转，我说我要回去了，他不再挽留，起身送我到楼下坐车，嘱咐我要吃药之类的。就这样告了别。\r\n\r\n不知道是不是身体不舒服的缘故，我竟想不起看他的最后一眼了。回到家里，他又叮嘱我好好休息，吃药，看病，又说下次我到某地一定要找他之类，我也道歉说没有好好招待他。我并不是在客套，但他我就不知道了。不知道怎么，心情淡淡的，好像一块石头沉在水底多年，终于提起来看了看，然后又放到了下去。这一次沉的更深。可能以后也提不起来了。', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (30, '![12864509608545.jpg](/storage/thumbnails/_signature/KRUQBOM8VJACQ8LU6QNGSRC2B.jpg)\r\n\r\n再次见到J已是5年以后。\r\nJ坐在对面的咖啡座上，掬书端茶，注视着窗外，神情淡然，眉目之间透着悠闲。我如约而至，再见他不禁“春心”荡漾。\r\n我牵起嘴角问他：“这么急找我,发生什么事了？”\r\n“没有什么事，我下个月结婚了，你来当我伴郎吧。”\r\n我很惊讶：“不会吧，你才22岁吧？你真是严格执行法定婚龄呀。”\r\n“我跟小小都觉得可以结婚了，9年恋爱，可以告一段落了。”\r\n我答应了他的新郎邀请。\r\n送走J以后，我一个人呆在咖啡馆想了很长时间。\r\nJ和小小从初一开始恋爱，初中两年、高中三年、大学四年，前前后后总共9年。\r\n9年光阴，他们已经从少男少女变成了帅男美女。9年来，他们吵吵闹闹，似乎每次都是因鸡皮蒜毛的小事吵架。但每次吵架之后感情却是越来越好。\r\n他们的初恋属于彼此。\r\n他们的第一次牵手，第一次拥抱，第一次接吻，第一次良宵都属于彼此。\r\n他们的故事就像一篇篇童话故事一般，串连在一起，永远同样的男主角，酸甜苦辣，最终修得正果。\r\n当天晚上我发了一个短信给他。\r\n愚昧而又真诚的请教：\r\n你们是怎么一步一步走到今天的？\r\nJ给我的答案让我出乎意料：\r\n我们也没有想到会走到今天，会步入婚姻殿堂。\r\nJ看我久久没有回复，又补充道：\r\n其实我们当初在一起只是因为两个人彼此看得顺眼，在那完全不懂爱的年纪，说爱也是不可信，但是我们在一起很开心呀。后来心智越来越成熟，就会遭遇越来越多的阻扰，我们也争吵，也闹别扭，也有第三方插足。往往这个时候是最容易分道扬镳的，但我没有执着究竟。\r\n这不代表我不爱她，而是我不想证明我爱她。证明爱一个人是件很复杂和无始无终的过程，如果你证明了，别人可以更加证明，这样下去“证来证去何时了”？带给她的也就是不知觉的比较，你认为这对双方有好处吗？\r\n你爱她，只跟你自己有关，当然她也会感受到；“爱”本身不需要比较和炫耀。\r\n一段爱情，两个人的成长。我们后来也就越来越有默契了，太多的口头解释也只是徒劳，心照不宣就好。\r\n我茅塞顿开，如同拨开云雾见青天。\r\n就好像越来越觉得自己开始变得很豁达，不再去拼命争取什么，只是渐渐明白：执者失之。\r\n爱情如此，人生亦如此。\r\n我想当一个诗人的时候，我就失去了诗，我想当一个人的时候，我就失去了我自己。在你什么也不想要的时候，一切如期而来。好运只是个副产品，只有当你不带任何私心杂念，单纯地去做事情时，它才会降临。\r\n哲学和心理学真的可以改变一个人，或是慢慢感化，或是自己慢慢顿悟。比如说我已成为过去的人，你眼前的我的存在不过是我往日的记忆残片。我心中最宝贵的东西早已寿终正寝，我只是按照过去的方式坐卧行止。\r\n琢磨先生说：有多少人喜欢你，可能就有多少人讨厌你。没人讨厌你，那可能意味着你没什么可取之处。鲜明的个性，往往会让喜欢与讨厌的人泾渭分明。这就是人性。优秀必然会引发嫉妒，很少有人愿意去踢一只死狗。你要做的就是继续前行，若你停下企图拼命对他们证明自己，那你将丢失原本属于自己的风景。\r\n行文至此，又突然想到《前任攻略》的一段话：\r\n有些人，因为太相信在一起，最后分手了。\r\n当初没看懂，现在懂了。', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (31, '一个人的旅行，\r\n我走过了一季又一季，\r\n从夏蝉鸣叫，到雪花飘飞。\r\n一个人的旅行，\r\n我漂泊了一程又一程，\r\n从韶华年茂，到眉宇沧桑。\r\n\r\n![11089435406d4514fcl.jpg](/storage/thumbnails/_signature/23FOLMMTDSMUN558VLSP2U5H1P.jpg)\r\n\r\n![11089436602855f2eel.jpg](/storage/thumbnails/_signature/1US2M221EJ2QOUO62T3I38FPBK.jpg)\r\n\r\n![11089437068132e91el.jpg](/storage/thumbnails/_signature/2AR8SPDB8O00CT8SQTQJQ4KUCN.jpg)\r\n\r\n![1103228871d8ae3837l.jpg](/storage/thumbnails/_signature/28VQDQ8RNP4SFLKBETE46PJ126.jpg)\r\n\r\n![1108943533cec85eb1l.jpg](/storage/thumbnails/_signature/QF6SVOSH1PRDEG58KPJUT2RIH.jpg)\r\n\r\n![1108943623e7bdd63dl.jpg](/storage/thumbnails/_signature/33H22JEPKQ35P1DRSDBP91FNKI.jpg)\r\n\r\n![1108943628be7763eal.jpg](/storage/thumbnails/_signature/18S2ND7EJ1ML51EUFJ696A98J3.jpg)', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (32, '这么多年，我一直在学习一件事情，就是不回头，\r\n只为自己没有做过的事情后悔，不为自己做过的事情后悔。\r\n\r\n![1419475976_NRrZLwOy.jpg](/storage/thumbnails/_signature/3DTE0EPEU6QDMDHO7NKQ9S4GFM.jpg)\r\n\r\n人生每一步行来，都是需要付出代价的。\r\n我得到了我想要的一些，失去了我不想失去的一些。\r\n可这世上的芸芸众生，谁又不是这样呢？\r\n\r\n![1419475976_RPeUEJYs.jpeg](/storage/thumbnails/_signature/3JA7QMVPAIBK5LQD8H50RC3P7D.jpeg)\r\n这年头一点都不缺爱情，缺的是把爱情当回事的人。\r\n\r\n![1419475976_VQHJVsUN.jpeg](/storage/thumbnails/_signature/8DKE946KOSM20TROTT4G209KR.jpeg)\r\n\r\n有时候，莫名的心情不好，不想和任何人说话，只想一个人静静的发呆；\r\n有时候，夜深人静，突然觉得不是睡不着，而是固执地不想睡。\r\n\r\n![1419475976_XFMDBLSK.jpg](/storage/thumbnails/_signature/5IIJGMI0UHP81KIMP2PIEAKQ7.jpg)\r\n\r\n最难受的思念，不是对方不知道你的思念，而是他知道却无所谓。\r\n\r\n![1419476154_ljkXyktv.jpeg](/storage/thumbnails/_signature/2LJ8H5ANR634498VN4U6LI39B.jpeg)\r\n\r\n有些人，无论你怎么对他好，他也不会留意，\r\n因为他的生命里，你显得是多么的微不足道。\r\n\r\n![1419476154_pgroFyHJ.jpg](/storage/thumbnails/_signature/1887RIAUJF4LGTMAIUDK9MC3IJ.jpg)\r\n\r\n寂寞确实跟孤单不一样，孤单只是身边没有别人，但寂寞却是心里没有人。\r\n\r\n![1419476154_qFGgCfvy.jpeg](/storage/thumbnails/_signature/322M6135UQQT3TUHRMKL553JIU.jpeg)\r\n\r\n有些人哪怕有了伴侣不再孤单，却继续寂寞着。\r\n真正的寂寞哪怕是连自己都忘了喜欢一个人的感觉。\r\n![1419476154_rOAHNrgc.jpg](/storage/thumbnails/_signature/3KFGFP314Q12MQBRBF61622LP8.jpg)', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (33, '小时候，幸福是件很简单的事；长大后，简单是件很幸福的事。\r\n\r\n你懂吗？：\r\n1.不是自己的东西不要,就是再喜欢也不行,要懂得放弃；\r\n2.过去的事情可以不忘却,但一定要放下；\r\n3.别人说的记在脑袋里,而自己的则放在心里；\r\n4.你永远没有你本身想象中那么重要；\r\n5.钱能解决的问题统统不叫问题；\r\n6.找点时间,单独呆会儿；\r\n7.不要感到是生活亏欠了你,其实是时机未到或你还努力不够。\r\n\r\n人生，没有永远的伤痛，再深的痛，伤口总会痊愈。人生，没有过不去的坎，你不可以坐在坎边等它消失，你只能想办法穿过它。人生，没有永远的爱情，没有结局的感情，总要结束；不能拥有的人，总会忘记。慢慢地，你不会再流泪；慢慢地，一切都过去了… 适当的放弃，是人生优雅的转身。\r\n\r\n幸福，不是长生不老，不是大鱼大肉，不是权倾朝野。幸福是每一个微小的生活愿望达成。当你想吃的时候有得吃，想被爱的时候有人来爱你。\r\n\r\n没有十全十美的东西，没有十全十美的人，关键是清楚到底想要什么。得到想要的，肯定会失去另外一部分。如果什么都想要，只会什么都得不到。\r\n\r\n“不要在意别人在背后怎么看你说你，编造关于你的是非，甚至是攻击你。人贵在大气，要学会对自己说，如果这样说能让你们满足，我愿意接受，并请相信，真正懂你的人绝不会因为那些有的、没的否定你！”\r\n\r\n应该知道的四句话：\r\n1.我们觉得不快乐，是因为我们追求的不是幸福，而是比别人幸福；\r\n2.爱情就好比打喷嚏，不经意总能打出来，刻意要打却总是不尽如人意；\r\n3.人生一半的麻烦，源自你说yes太快，说no太慢；\r\n4.许多事不要害怕做错，即使错了，也不必懊恼，人生就是对对错错，回头看来，对错已经无所谓了。\r\n\r\nThe reason so many people find it so hard to be happy is that they will always see the past better than it was, the present worse than it is, and the future less resolved than it will be.\r\n很多人不快乐，因为总觉得过去太美好，现在太糟糕，将来又太飘渺。\r\n\r\nPeople laugh and people cry; Some give up, Some always try; Some say hi while some say bye; Others may forgets u but never will I.\r\n有人欢喜有人忧；有人放弃，也会有人执着；有人走进你的世界，同时也会有人离开；或许会有人将你遗忘，但那绝对不会是我。', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (34, '暑假是个分手季，身边大大小小的情侣都已将爱化为恨与痛，从此相看两生厌。8月初的时候，偶看兔子和兔子先生的人人，看他们每天不厌其烦地转载各种心灵鸡汤，我就察觉出了一些不对头。后来兔子和我说，“我和他分了，一个月前的事了，这件事就不要再说了”。可能她已经将他的人人删去或拉黑，彼此都看不见彼此的痛。我觉得可惜，如果两个人都这么难受，换做我是兔子，应该会去挽留的，毕竟，一转身，就是一辈子。\r\n\r\n但是我后来就明白了。因为据那二十天之后，我也失恋了。\r\n\r\n7.23日晚上，他和我说，不会再爱我，我和他提了分手，给他自由。我从未想过我可以和C君结束的这么干脆，大哭一场后，就再也没有那样撕心裂肺的感受。\r\n\r\n我是典型的天蝎座，对任何事情都是黑白分明，是就是，非就是非；感情亦是，如果只是同情或者留恋，亦或是为了负责任而迁就的爱，我宁可不要。我要的就是完美的爱，毫无瑕疵，不掺杂其他杂质的感情。因此，我这次痛痛快快的放手了，没有挽留，也没有再和闺蜜们诉苦，只是一个人，静静得，体会着一个人的孤独。我知道，只有靠自己，我才能彻底走出来，我想证明，没有对任何人的依赖，我也可以活的好好的。\r\n\r\n刚开始几天，我盼望着他会后悔，会回头找我，每次看着人人访客，却一次次失望，或许他再也不会看我的人人了吧。那几天，白天除了练车，就是在学会排解自己的情绪，。酷我里面下载了各种疗伤圣曲，听着听着就哭了。有一次克制不住自己的情绪，我问MM（我们两唯一的共同的朋友），“他还好吗”，他说不知道，问我要不要劝劝他，让我们俩和好。我苦笑着，不用了。后来我再也没找过MM，这次是我给自己最后一次犯贱的机会。从此，我必须对自己狠心。\r\n\r\n后来，我学会了死心，我告诉自己，我和C君再也没有可能。我重视起曾经被自己忽视的友情和亲情，我除了练车就出去玩，慢慢的，我忙的差点就忘了他，直到每天梦中吓醒，才明白，那种痛，还是那么的清晰可怕。后来，我学会了自我催眠，我对自己说，自己成为更优秀的人，才会遇到更优秀的人，我会让你后悔。\r\n\r\n我慢慢减少出去瞎玩的时间，每天除了练车，就是看书，弹吉他，写毛笔字，偶尔看看电影，做点西式点心。就这么一个月过去了，我不再心痛，虽然想起你，还是心里闷闷的，但是，我很好，从未这么好。我真的成功证明了自己，会一直好好的，以后会更好，会比你好很多很多。\r\n\r\n8.21日，你看了我的人人，我不知道你出于什么心思，一个月前，我期盼你的访问记录，现在，我怕了，我不想动摇，动摇自己的决心。我之前问过A君，如果她的EX很久之后来找你，你还会接受吗？她的话，让我到现在还意犹未尽。她说，我不会，如果再复合了，或许他改变了，会对我好，但这时的他处在一种“补偿模式”，而我处于主动，这样对他不公平，两个人付出不等，最终的结果依然不会太好。我现在问自己，你万一对我仍有留恋，再来找我，我会怎么办？\r\n\r\n我想我现在就可以回答了，丢弃的东西，就不要再捡起了，即使它曾经再美好。爱的深，不如爱的刚刚好，既然已经错过，就不必纠结，时光会让你遇到对的人。曾经的我们歇斯底里，是一对作男作女，我已看开，愿你也能成熟。\r\n\r\n错过了，就不要再回头，趁彼此还有那么一点留恋的时候分开，没有必要将最后一点爱也磨得消耗殆尽。这是对我的告诫，亦是对你们的告诫。做到了这点，我们已是不一般的女子。', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (35, '![2013103010052215.jpg_500x0.jpg](/storage/thumbnails/_signature/2789HV17N9BI0EP55B23G1NM2D.jpg)\r\n\r\n难过就是，虽然很难，但总会过去。\r\n\r\n今天晚上你买了很多酒，我们去楼下的餐馆炒了几个菜带了回来，摊开一张小桌子，我们就菜喝酒，说话变成了很久远的事。\r\n\r\n久远到，你醉了，红通通的一张脸，擦眼泪旳纸装满了垃圾桶，我只知道给你递纸，所有想说的话都哽咽在你的泪水里。\r\n\r\n“其实就算以后结婚……婚姻根本不需要爱情，我和他那么相爱了这么多年，最后不也是败给了时间，败给了距离，败给了他不愿意说，而我却只能反复问的生活里！”\r\n\r\n我不知道分手对于你来说是一次成长，还是一场打击，我不愿意看到你为了爱过的人如此落魄伤心，但是所有人都知道，爱情只是伤人。\r\n\r\n连最后剩下来的回忆，也都是泡在泪水里。\r\n\r\n你和男朋友从高中开始恋爱，时间漫长的可以从一个春夏秋冬过渡到另一个末日流年，他很爱你，身为朋友的我们都看在眼里，你们两曾经是我们所有人最羡慕的一对。说的土了点是郎才女貌，但有时候相爱的彼此能够如此，那就是最惊羡人的平凡。\r\n\r\n大学的时候我们出去写生，碰上五一放假的时间，他为了能够见到你，在火车上站了八个小时赶到你在的城市，然后又独自问路坐车，爬了几个小时的山，赶到了我们写生的那座山顶。\r\n\r\n那时候为了见你一面而不顾一切的他，真的很优秀，不仅感动你，也打动了我们许多同学，我们觉得那样幸福相爱的你们，就像是遇见了自己人生的宿命，是一种不露声色的欣喜。\r\n\r\n那就像是青春该有的模样，为了心爱的人，开始一场说走就走的旅行，路程中再多的艰苦，也都在彼此相见的那一刻，化成了值得的满足感。\r\n\r\n你哭着问我，为什么曾经最了解你的他，对你许下很多美好诺言的他，慢慢的连解释的话不愿多说一句。\r\n\r\n我记得最近你在夜里给他打去电话，问他为什么你们会变成这个样子，他说让你自己想。\r\n\r\n其实，我也不明白，为什么在恋爱最初的时候，男生可以每日每夜煲电话粥，说那么多动听的情话，可是随着时间慢慢流逝，男生的耐心是不是也流逝了？\r\n\r\n那么为什么？为什么要在最开始的时候许下那么多？做不到又何必信誓旦旦！\r\n\r\n不要怪我们总是爱当真，那是因为，我们真的爱得很真。\r\n\r\n看到别人在文章里说，恋爱结束，分手之后的俩人，还可以彼此破涕而笑平淡分手。\r\n\r\n我不知道他们是怎么做到的，我也不明白他们真的是否曾经爱到自己以为未来就是我和你，的那种不容有二的既定。\r\n\r\n但是在朋友哭着熟睡的这个深夜，我清晰地嗅到了爱情的伤痛。\r\n\r\n曾经每一个觉得平常的日子，在此刻想起来的时候，似乎都成了灼魂蚀骨的寻常。\r\n\r\n一双鞋，刚买的时候蹭一点灰都要蹲下来擦干净，穿久了之后即使被人踩了一脚可能也很少低头。人大抵是这样，无论对物还是对情。最初，她皱一下眉你都心疼，到后来，她掉眼泪你也不大紧张。\r\n生活就是这样，就算再悲伤，我们也还得擦干眼泪继续前行，我们开始变得小心翼翼控制感情，开始在爱和不爱中挣扎，我们会遇见更多的人，但是，我们想要的就只剩下平淡。\r\n\r\n收拾起眼泪，做自己生命里无冕的女王，又何苦去做爱情里卑微的奴隶？\r\n\r\n我开始想十年后的生活，那时候，朋友就会悲伤不在，成为一个幸福的人。\r\n\r\n【我要有个人和我一起吃饭，\r\n\r\n只要开心，路边摊一样吃的很满足。\r\n\r\n我要下班时，有个人在门口等我，\r\n\r\n然后手牵手一起压马路。\r\n\r\n我要在我难过时给我个肩膀让我依偎，\r\n\r\n心里的难过会好很多。\r\n\r\n我要在我孤单时，\r\n\r\n有个人给我发短信，让我听见你的声音。\r\n\r\n我要的只是一声乖，一句问候，\r\n\r\n一句别怕宝贝，我一会就去找你。', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (36, '前段时间，朋友在微博上发了一个话题征集，问： \" 错过一个人的感受是什么？ \"\r\n\r\n在这条微博的评论底下有很多经历过错过和失去的人，大家长篇大论地诉说着自己和那个人的遗憾，我看到有个男孩儿直接把一个名字缩写打了出来，没多说什么。\r\n\r\n那一刻我突然意识到原来错过一个人的感受就是这么简单：Ta的名字就是你最难忘的。\r\n\r\n我不知道这个男孩儿用了多大的勇气才做出这样的举动，换做是我，我想我永远都不会把那个名字打出来。\r\n\r\n记忆向来都是一种会褪色的东西，它会因为时间长短而有深浅程度的不同，也许某一天当你路过跟前任去过的地方，你只记得你们来过这里，却忘了那天你们在这里做过什么好玩儿的事情，聊了什么有趣的话题。\r\n\r\n也许你已经忘记了生活中很多自己已经计划好的事情，忘记了明天要给家人打个电话，忘记了下周要约健身教练，忘记了最近有个朋友跟你说过的心事，但你却从未忘记过那个住在你心里的人，你比任何人都清楚，你知道你爱过他，而现在也依旧爱着。\r\n\r\n你选择一个人继续默默地爱着Ta，你不会再跟任何人提起Ta，以为只字不提就是最好的解决办法，但是你比任何人都清楚，你对Ta的感情并不会因为嘴上没说，心里就会停止想念。\r\n\r\n你会在小号里发着想念Ta的朋友圈，你会偶尔在微博上翻看Ta发过的所有动态，还庆幸微博和朋友圈没有访客记录，让想念Ta的这个秘密，只有你自己知道。\r\n\r\n你会在逛街的时候想起Ta，会在听了一首温柔细腻的情歌的时候想起Ta，会在自己一个人遇到困难、感到无助的时候想起Ta。\r\n\r\n你整个人的神经无时无刻不被Ta牵扯着，然后在某一个想起Ta的小瞬间里难过，遗憾没能和Ta走到最后。\r\n\r\n你单恋过一个人吗？我有过。我也不知道那时候谁给我的勇气坚持了那么久。我开始计划以后的生活，想着往后有他的日子。\r\n\r\n我甚至还设想了我们两个人结婚之后会在哪里买房子，多久以后会要孩子，如果是女孩儿要取什么名字，如果是男孩儿要让他学什么类型的兴趣班……\r\n\r\n我想着所有可能会和你经历的未来，可是我却忘了，你根本就不在我的未来里。\r\n\r\n一直觉得感情里最不公平的事情就是你不爱了，我却还深深地爱着。我不知道我还要爱你多久，我只知道，我没办法停下爱你。\r\n\r\n在你看来，错过一个人的感受是什么样的呢？你会不会在看到这个问题的时候，第一时间就想起了心里的那个Ta？\r\n\r\n那种感觉就好像是这世间的风都知道你还爱着Ta，唯独Ta不知道。', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (37, '![b452ac71gw1ehia2lj0r2j23a426lkjo-300x199.jpg](/storage/thumbnails/_signature/KUQF97QL6BH59E9GSUP2A9VMF.jpg)\r\n时间敲起的一个个浪花，渐渐散开成水滴，一滴……一滴……又滴落回海里。\r\n我们相遇在浪花里，最后散落到海里，或许还会再次相遇，却已不再是那浪花。\r\n\r\n骄阳似火的日子似乎在昨天，冷风拂面不过在今日。\r\n桑，你那儿天气好吗？是否和我一样冷热交叠？\r\n昨日梦里遇见你，留下一个背影，想念无法记得。\r\n努力想要去记起某些细节或是某些过程，可是，记忆是个很难缠的东西，越是想要记起却\r\n越是容易遗忘，而越是想要遗忘的东西却记得越是深刻。\r\n我在路边看着前几日雨水过后的残余，想着远方的你，我们是否能再次遇见。\r\n微风拂过，夹带着湿润的微凉，我就像是站在秋季一般，感觉有些凉意，而身边的路人似\r\n乎都很享受着这样的微凉，或许还依然感觉有些炎热。\r\n其实，我倒是庆幸下了这样一场雨，微凉瞬间替代了炎热，至少对于没有空调的我来说，\r\n这是一场及时雨。不过这样的突然转变却让我变成了彻彻底底的病人，或许是因为几日来\r\n玻璃窗都未关，因此有些受凉。\r\n也因为这样，半个月来不怎么用电脑和手机，手头的工作也都一直放着。直到昨日打开手机，发现好多信息，一条紧接着\r\n一条，我微微笑了笑，不免有些感动，原来我失踪了还有人会在乎。\r\n如果我从你的生活中消失了，你也会这样拼命的找我吗？\r\n曾经看过最多的一句话，不管是在哪里，看到的答案永远都是“会”。\r\n而真正在乎你的人不是应该会说，我永远都不会让你消失在我的生活中吗。\r\n我也想去拼命的寻找那个遗失了24年的妹妹，但是，我只是想而已，没有踪迹的寻找，不\r\n知该从何开始。', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (38, '![d51cb0d17545d9ff71cf2f8f42189f43.jpg](/storage/thumbnails/_signature/1UC7OV09GND2H8KOMCG0F7VV33.jpg)\r\n陆地或海洋，相爱便好，遇见过便好，哪怕用荒凉的余生做抵偿。我们遇见了，可至始至终，都只是我爱你。\r\n\r\n（壹）    雨是一身的过错，独成了失落。\r\n\r\n日夜的飘雨，滴不成荒。\r\n\r\n明明，应该是春暖花开的时节，花都开好了，却还没迎来温暖。\r\n\r\n忘记了自己太多的事，是走的太匆忙，还是因为记着你。只是，很久之后才明白： 没有要等的人，也没人等，才可以一身轻。\r\n\r\n而今，我停在这里，错过了花季。转身之后，才发现，已是千年万年。\r\n\r\n多少的是与非，都留给我一个人去辩知。所有的冷暖，自己去体会。\r\n\r\n午后，捧着一杯热茶，站在窗台。看远处无人问询的楼阁，看雨中偶尔的人迹。多少的繁华，尽于这一场烟雨。很久很久，不敢期盼一丝阳光倾蕴而至。\r\n\r\n闭上眼睛，我看不到烟雨，也看不到光亮。心，一寸一寸的，逐渐变成死灰。\r\n\r\n“阿念”\r\n\r\n“嗯？”\r\n\r\n“为什么送我这个？”\r\n\r\n“因为……我……喜欢你，我喜欢你。”\r\n\r\n“为什么喜欢我？”\r\n\r\n“安心，因为有你，就觉得很安心。”\r\n\r\n“阿念”\r\n\r\n“嗯”\r\n\r\n“其实，我给不了你想要的那种幸福”\r\n\r\n……\r\n\r\n睁开眼睛的时候，眼前是一片迷雾，脑海里只剩你发来的那首诗。\r\n\r\n书生一回逍遥醉，\r\n红唇皓齿笑意浓。\r\n水欲静而风不止，\r\n青湖有意酒无心。\r\n一滴泛起千层漾，\r\n香醇迷离心更乱 。\r\n\r\n你说，这是一个姑娘写给你的。然后，我便撕心裂肺的疼。\r\n\r\n雨是一身的过错，而我，独成了失落。\r\n\r\n（贰）    情不知何起，一往而深。\r\n\r\n雪小禅说：倾城必先倾心，而倾心了，一定是爱上一个人了。我想，爱情一定是这样的，在你还未来得及发觉，就已经埋下了祸根。嗯，对，是祸根，无从拔出。你看，就像我爱上了你之后，不知道怎么离开。\r\n\r\n铺开了雪白纸张，翻开了诗篇的一页。我提笔，却始终勾不出你身在江南的韵味。\r\n\r\n多少的黄昏，散不去的烟雨，在伞下，雨中，看不到你的身影。\r\n\r\n明明我相信着爱情，并且爱着你，可我却不信别人说的“喜欢”我。这一生，错过了你，我不知道谁才是对的人。嗯，就像有句话说的“深情一个错的你，世间再无对的人。”这一生，我知道，始终是错过了。可原谅我，无心去留恋别人的好。\r\n\r\n本子里，折起的一角，是为你写下的诗句。\r\n\r\n《忆江南》\r\n\r\n江南好，小楼夜留人，自得月下暗花香。\r\n\r\n影零乱，望中疑，谁为我歌一曲？\r\n\r\n若人问，非醉非醒，除君去，没人知。\r\n\r\n你也深知，我不甚言谈。深知我所有的脆弱以及悲伤。可，时光它，走了太远太远。我所有的悲喜，你再也不会去体会。\r\n\r\n【叁】     我无法表达孤独，也无法转述心中的喜悦。\r\n\r\n这一刻，我不知道怎么形容自己的心情，患得患失一般的去忙碌着。忙着的时候，我忘记了时间，忘了自己，忘了其实那么喜欢你。嗯，就是，无以复加的喜欢，被抽脱剥离。之后，只剩下一副躯体。\r\n\r\n洁白画纸，难以描摹的脸庞。时光伸展出触角，递与我与众不同的想象。在歇斯底里的搜寻记忆中的脸庞无果之后，都被我投进了纸篓里。\r\n\r\n关于你的一切，不想被人提及，而我却又时刻留在心底。有些话说不出来，有些情真意切也消散湮没。其实，我特别想知道多年以后的自己，重新回头看待现在的自己，这些所谓经历、所谓的爱情，会不会咯咯地笑起来。还是，会无奈地叹口气。\r\n\r\n当我写下这些字句，悲伤无以去除时，旁边的姑娘刚好叫着我的名字，一阵风从窗口漏进来，公路上的车响着，由远而近。这个时候，说不清道不明，我想去和你相遇。\r\n\r\n【肆】     明天，我们会不会在另一个纬度相遇？\r\n\r\n时光它不能停留，也不会停留，就像，你走的时候，我无论怎么伸手都握不到。过去的终究，还是过去了。我不祈求你留下来。\r\n\r\n这一生，如果要等一个人，我嫌时光它太长。可陪伴一个人，时光却又好像是太短了。而我似乎还太稚嫩，总显得有些执迷不悟。\r\n\r\n窗外好像隐约间听得见有些许雨滴溅落，打在屋檐上发出滴滴答答清亮的声音。听着电台，看完了一本书，心里湿漉漉的。并不是想流泪，也不是觉得欣喜，而是瞬间有一股轻松的安静扑过来 轻轻地拉扯着我。\r\n\r\n有时候，我很奇怪，老师为什么从来不干涉，就任我一堂课，一堂课地做着梦，任我看着与课堂无关的诗集。 偶尔，我也会在课堂上走会儿神，想着两年后的自己将会在哪里，遇见了谁，过着怎样的生活。这样偷偷幻想，小心翼翼地臆想着。\r\n\r\n我想着，如果将每一个遇见的人都安排在某一段不知名的故事里，那么那时候的画面是熙熙攘攘的嘈杂还是回眸再望的微笑呢？这样想着之后，心里满是期待。\r\n\r\n明天，我们会不会在另一个纬度相遇？多希望，昨天刚刚和你告别，而明天，你还在这里。你挑眉，望着我，斜斜的笑着。阳光，碎了一地。\r\n\r\n可是，一场风暴，使我们各分东西。你在我的航程上，而我，不在你的视线里。\r\n\r\n【伍】     陪着时光老去，留旧城一世荒芜。\r\n\r\n夜幕降临，灯光照着街角的时候，我躲在窗帘后面，看街上素不相识的人们擦肩而过。人潮拥挤，我看热闹，不敢收回视线。嗯，其实我怕，怕发现了自己的孤独。\r\n\r\n当车灯在眼际一闪而逝，仿佛时间被割开了一条裂痕，年轮跟着错乱，刺破心里的那层防备。黑暗里，我伸不出手，留不住温暖。汹涌而至的泪泉，眼皮子都挡不住。\r\n\r\n纷扰的人世里，一片慌乱。\r\n\r\n曾经，多想突然出现在你的城市里，踏着那片土地，我想，我一定会感到满足。因为也许我站着的地方，你刚好也站过。这种感觉多美好啊。\r\n\r\n而现在呢，我不敢去。\r\n\r\n我记得，我曾说：“若你不来，我便向你走去”，可此生，我不会再走向你。\r\n\r\n呵，就这样吧，让我在这个城市，陪着时光老去。\r\n\r\n【陆】     最后的温柔，是把手放开。\r\n\r\n最后，才终于知道，原来那些模糊不清的感情，是因为执着才变得深刻。不是不能忘记，而是，不想忘记。生命里，第一抹温暖，来自于你，就算悲伤得不能自己，也想努力的记着你。这是我的倔强。\r\n\r\n可是，我怕夜晚，华灯初上时，所有的孤独都无处躲藏。\r\n\r\n入夜之后，循环着一首歌。阿悄的《陪我去流浪》。\r\n\r\n哈，真是安静的雨夜。\r\n\r\n嗯，说不出再见的。可是，到此为止吧。把手放开，这是我最后的温柔。这样，我也好自由。\r\n\r\n【柒】    故事的最后，我们都没有最后，可我们还继续着生活\r\n\r\n嗯，我依旧在南宁。\r\n\r\n穿上茸茸的线衫，也不再羡慕那些四季如春的城市。庆幸自己生活在这里，冬夏分明。春天秋天不会冷得过分，冬末的回南天，也已经可以接受。我很好，安稳地在一座小城里听听风，过不快不慢的生活，偶尔和朋友去喝喝茶，说说心里话。\r\n\r\n走到楼底的树荫下，树影斑驳的间隙投射在脚下，我抬头，才发现云层里的太阳斜向着西边。红彤彤的像含少女害羞的脸庞一样，轻轻地抖一抖就红着脸跑走了。\r\n\r\n你好。你好，明天。\r\n\r\n你好。我笑着，轻轻的迈开了脚步。', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (39, 'Holiday\r\n\r\n<iframe style=\"width:800px;height:500px;\"src=\"//player.bilibili.com/player.html?aid=1686302&cid=2571249&page=1\" scrolling=\"no\" border=\"0\" frameborder=\"no\" framespacing=\"0\" allowfullscreen=\"true\"> </iframe>\r\n\r\n专辑：Holiday\r\n语种： 纯音乐\r\n流派：Electronica\r\n发行时间：2021-09-05\r\n![732d1fda50d2613df27d4df7e7e1da674f6a3880.jpg](/storage/thumbnails/_signature/3LUI43L0UONR2HS5UA612Q9QJR.jpg)\r\n', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (40, '在这缤纷的世界里，站在同一个太阳下，我们只有捧出一颗真心，真诚地对待别人，容纳别人，才能做好真正的自己。\r\n\r\n\r\n一双灵空的耳“金无足赤，人无完人”。就是这样寥寥几字概括出一个亘古不变的真理。不错，我们每一个人都有自己的不足之处，在人生的道路上难免会出现这样那样的过失。\r\n![yande.re 190422 eva200499 patricia_(puella_magi_madoka_magica) puella_magi_madoka_magica seifuku thighhighs.jpg](/storage/thumbnails/_signature/27433T8N2V2QP9UO5KV43TAQU8.jpg)\r\n\r\n但幸运的是我们还有亲人朋友，他们可以为我们排解许许多多的忧愁。在我们周围更有许多和我们志同道合之人。也许你身处逆境，但请不要灰心丧气，只要眼睛能够看到阳光，只要你敢于拼搏，只要你拥有一双灵空的耳，这个世界上，就没有什么困难能阻挡你。\r\n\r\n\r\n因为倾听是一种智慧，倾听是一笔财富，在他人的话语中，我们懂得许多自己无法发现的弊端，学会了倾听，我们才会找回真正的自己。\r\n\r\n\r\n一颗容人的心“海纳百川，有容乃大”。天空收容每一片云彩，不论美丑，所以天空广阔无边；大海吸纳每一条溪流，不论其大小，所以大海浩瀚无穷；高山接纳每一块岩石，不论其方正，所以高山巍峨无比。\r\n\r\n\r\n人生若能宽容每一次不如意，那么人生也将其乐无穷。因为宽容，春欣然接受雨的拍打，所以花香四溢；因为宽容，人们彼此体谅，所以和气满天下；也是因为宽容，人与人之间才不会有隔膜，只有微笑和惬意。拥有一颗容人的心，你的天空才会更加晴朗，你的心海才会更宽阔。\r\n\r\n\r\n一个真诚的笑笑是阳光，它能消除人们脸上的冬色，一个简单的微笑可以拉近两个人之间的距离。给陌生人一个微笑，你会得到一个好的心情；给朋友一个微笑，友谊之花会散发出更浓的芳香；给亲人一个微笑，浓浓亲情会在内心涌出；给每一条河每一座山一个真诚的笑，你会发现你天天生活在花的海洋，笑的怀抱。\r\n\r\n\r\n一双灵空的耳，学会了倾听；一颗容人的心，学会了坦然；一个真诚的笑，学会了快乐。严于律己，宽以待人，用微笑面对生活，你会发现生命之美永远与你同在。', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (41, '千万不要随便网恋！！哈哈哈哈哈哈\r\n \r\n\r\n网友评论：\r\n\r\n@女追男进行ing：一个敢说一个敢听\r\n\r\n@上杉夏乡·：其实我是王思聪的小号？？？信吗哈哈哈\r\n\r\n@女装大佬：哈喽看我！我也会装女生，有老公来给我圈钱吗？\r\n\r\n@撩哭你：吃鸡第1菜，王者第一坑，只要您召唤，我随时都在。\r\n\r\n@柠檬味学渣：我的那个网恋女友也是这样的。扎心！不敢网恋了！', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (42, '今天，我的好朋友大头午夜给我打了一个咨询电话：要不要从现在的国企辞职去创业？我用自己健全的心眼儿，给他分析了利弊得失之后，他依然困惑不已，踌躇不前，原因在于，他辞职以后，没有安稳的工资，没有每月按时缴纳的保险，没有家人朋友艳羡的目光……\r\n\r\n这样的电话，一般都会把友情推到一个这样的深渊里：你建议他辞职吧，他说你不够哥们儿；你建议他创业吧，他说你对他不够负责。\r\n\r\n话说五年前，大头也问过我同样让我头大的问题，他要不要离开家乡来北漂。最后，北京没房没车没父母的生活，吓退了他的所有勇气，让一大好青年留在国企当办公室助理，主要工作内容包括：每天收发信件、收拾卫生、端茶递水等。五年前的问题，五年过去了，还依然存在。他依然是一个不能走出来，只能和理想中的自己渐行渐远的孩子。只能在大脑的沟壑里，狂想突破下自己，却始终徘徊在现实的大门口，不忍心走出鸡肋的小世界。只因为习惯了它带来的安全和舒适。\r\n\r\n其实，我也有过类似的经历。本人出道时，做的是纯纯的零售工作，不为锻炼自己，也没有体验销售一线生活的高大上理想远景，选销售就是因为赚钱多。\r\n\r\n因奢侈品行业的关系，每月到手，起步价按表走也在10k以上，且店里人头熟稔，关系虽然错综复杂，拍平了之后，总还是能处得来。所以，在上司找我谈话，希望我去MKT做市场经理助理的时候，我就蒙圈了。\r\n\r\n尽管我透心凉的明白，零售的职业寿命虽然短暂，但总归是我已经驾轻就熟的领域，大不了我做个三到五年换一个东家就是了。尽管很多人唾沫横飞的规劝我，MKT才是一个品牌的精华，一个公司的灵魂。可要重新再去面对陌生的领域，陌生的品牌，陌生的同事，陌生的办公环境，刷掉一切的记录，一切从零开始，还有那比现在低了将近一半的薪水……即便前途比节能灯还好，我也犹豫了十来顿饭，外加三块芝士蛋糕，还没犹豫出个结果。今天我算明白了，在零售业，明知自己过两年也许会死得很惨但是抱着那份还凑合的薪水和不愿挪窝的心态，就是传说中的——舒适区了。\r\n\r\n在舒适区里躺着、摇曳、然后，不知不觉的挂掉。是诸多职场苦逼共同的道路。\r\n\r\n当我还在舒适区里裸奔的时候，平时极不靠谱滴奇葩师兄狗哥，戳中了还在狂吃瑞士莲的我——你要想将来舒服，就得现在使劲儿难为自己。\r\n\r\n这也是今时今日，我要对大头说的话。\r\n\r\n我大学毕业的那年，也被老爹用老泪纵横的招数逼迫自己去考公务员，跟我说，国家的饭碗才是铁饭碗。可是，铁饭碗里没有饭怎么办？吃饭碗么？\r\n\r\n有句俗得掉渣的老话叫：人无远虑必有近忧。放着现在的舒服，尽情享受的同时，其实那些会让你抓头发焦虑的事儿，早就已经蹲你家门外了。\r\n\r\n我能理解面对未知生活的恐惧，那种朝不保夕、不着边际的感觉，那种不确定、不可控制的飘忽感，确实会让我整个人不太好。但我也不愿原谅一个不肯从自己小世界走出来的人。放眼望去，谁不是从不熟悉走向熟悉的呢？\r\n\r\n人是个特别奇怪的动物，因为我们总喜欢舒服地过现在的生活，不管它烂到流脓，还是美到冒泡。但人之所以从猴子的庞大族群中脱颖而出，不就是不满足于从树上采摘野果果腹，才不断进化，增强生存技能，从而达到今天独霸全球的领域么？\r\n\r\n励志打鸡血的话，不想多说。温水煮青蛙的道理，做过初中阅读题的都懂。不过真想让明天的自己感谢今天的自己，不去逼自己一把，怎么实现？对你想实践的全盘掌握好了，考察过了，那就迈开腿离开你认为熟悉却鸡肋的环境、领域，去追寻更新的目标，否则你永远不会知道自己的逼格到底能高到哪一步，能力到底能吓死多少人。\r\n\r\n你可以选择待在舒适区停滞不前，前提是你得接受死得难看。\r\n\r\n\r\n[hide] ------------------ [/hide]\r\n \r\n', 'markdown');

-- ----------------------------
-- Table structure for mto_post_resource
-- ----------------------------
DROP TABLE IF EXISTS `mto_post_resource`;
CREATE TABLE `mto_post_resource`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `post_id` bigint(20) NULL DEFAULT NULL,
  `resource_id` bigint(20) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IK_POST_ID`(`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mto_post_resource
-- ----------------------------
INSERT INTO `mto_post_resource` VALUES (2, '/storage/thumbnails/_signature/1GHRRJCO9C76DRO5REGBJPKC9O.jpg', 2, 3, 0);
INSERT INTO `mto_post_resource` VALUES (3, '/storage/thumbnails/_signature/3J8200LKISII79JS87C75F38QD.jpg', 3, 6, 0);
INSERT INTO `mto_post_resource` VALUES (4, '/storage/thumbnails/_signature/JDD3HIT8OKJ22IJGG3236MDU4.jpg', 4, 8, 0);
INSERT INTO `mto_post_resource` VALUES (5, '/storage/thumbnails/_signature/14M9I5Q5PASBLBPOGORJ0RU7RO.jpg', 5, 10, 0);
INSERT INTO `mto_post_resource` VALUES (6, '/storage/thumbnails/_signature/8KGLIC6U21S3FBMTH2I422RV4.jpg', 6, 12, 0);
INSERT INTO `mto_post_resource` VALUES (7, '/storage/thumbnails/_signature/1VJ343JNSF8A9ROEGJK7M69LNG.jpg', 7, 14, 0);
INSERT INTO `mto_post_resource` VALUES (8, '/storage/thumbnails/_signature/35S012TJM6TPSNLLRQHJ1N7A89.jpg', 8, 16, 0);
INSERT INTO `mto_post_resource` VALUES (9, '/storage/thumbnails/_signature/2H3QLVE7J8LK49BUM0UU39J4I5.jpg', 9, 17, 0);
INSERT INTO `mto_post_resource` VALUES (10, '/storage/thumbnails/_signature/30IS58AE02END7RJMBUFOUF5QI.jpg', 9, 18, 0);
INSERT INTO `mto_post_resource` VALUES (11, '/storage/thumbnails/_signature/1D1E5FC13UHS5LTMDSSJCNEIA4.jpg', 9, 19, 0);
INSERT INTO `mto_post_resource` VALUES (12, '/storage/thumbnails/_signature/LG9SL8GG5TATKM9ACFJU1585D.jpg', 9, 20, 0);
INSERT INTO `mto_post_resource` VALUES (13, '/storage/thumbnails/_signature/2EP81JG7KPHJH0C5FS4TEFU77F.jpg', 10, 23, 0);
INSERT INTO `mto_post_resource` VALUES (15, '/storage/thumbnails/_signature/EERFCQ255M02OET4RROSOJOH.jpg', 12, 27, 0);
INSERT INTO `mto_post_resource` VALUES (16, '/storage/thumbnails/_signature/2C3K8OUQ1KCM95FFSTC4JNIF29.jpg', 13, 28, 0);
INSERT INTO `mto_post_resource` VALUES (17, '/storage/thumbnails/_signature/K04U65APA87BDC1GHRAK63DCD.jpg', 14, 30, 0);
INSERT INTO `mto_post_resource` VALUES (18, '/storage/thumbnails/_signature/2L61EEMCQN7MN39PAAF0HOPAO.jpg', 15, 33, 0);
INSERT INTO `mto_post_resource` VALUES (19, '/storage/thumbnails/_signature/2UE3F3D3DO2NR246JP0P9RJ7OH.jpg', 16, 35, 0);
INSERT INTO `mto_post_resource` VALUES (20, '/storage/thumbnails/_signature/1KJK0E2SH6J46EOMF22MB345QV.jpg', 17, 37, 0);
INSERT INTO `mto_post_resource` VALUES (21, '/storage/thumbnails/_signature/1UGAHSJESKRHQHN97KUI4MF88U.jpg', 18, 38, 0);
INSERT INTO `mto_post_resource` VALUES (22, '/storage/thumbnails/_signature/8C56NERKLOIHLMC1IJC6D8RPF.jpg', 18, 39, 0);
INSERT INTO `mto_post_resource` VALUES (23, '/storage/thumbnails/_signature/2UCN9L03JRNEHERCH69V2N3S5G.jpg', 18, 40, 0);
INSERT INTO `mto_post_resource` VALUES (24, '/storage/thumbnails/_signature/2OJ5M5TOKGNOL0SOJAKBPSRNF8.jpg', 18, 41, 0);
INSERT INTO `mto_post_resource` VALUES (25, '/storage/thumbnails/_signature/2TJMKEUONRNLB7KPCTQIFE4DK5.jpg', 18, 42, 0);
INSERT INTO `mto_post_resource` VALUES (26, '/storage/thumbnails/_signature/4I84B5IDE5PV01N20DTFVEOV7.jpg', 18, 43, 0);
INSERT INTO `mto_post_resource` VALUES (27, '/storage/thumbnails/_signature/35QKKQQ9PH6KLCOH6BKKA63K6D.jpg', 19, 46, 0);
INSERT INTO `mto_post_resource` VALUES (28, '/storage/thumbnails/_signature/2QNA0S154RH5OCL0J98SC7O7SN.jpg', 21, 48, 0);
INSERT INTO `mto_post_resource` VALUES (29, '/storage/thumbnails/_signature/LTT36GFCL2RI65HLQPCJKQU9.jpg', 22, 50, 0);
INSERT INTO `mto_post_resource` VALUES (30, '/storage/thumbnails/_signature/1Q6STIQ0IB2GUUHQ77TBIIEJGI.jpg', 23, 53, 0);
INSERT INTO `mto_post_resource` VALUES (39, '/storage/thumbnails/_signature/2QSTRL4S084P70E30R1G16OHFE.jpg', 25, 64, 0);
INSERT INTO `mto_post_resource` VALUES (43, '/storage/thumbnails/_signature/2J814P948I2SMNMKCJASM0Q337.jpg', 11, 81, 0);
INSERT INTO `mto_post_resource` VALUES (44, '/storage/thumbnails/_signature/KUQF97QL6BH59E9GSUP2A9VMF.jpg', 37, 82, 0);
INSERT INTO `mto_post_resource` VALUES (45, '/storage/thumbnails/_signature/1UC7OV09GND2H8KOMCG0F7VV33.jpg', 38, 84, 0);
INSERT INTO `mto_post_resource` VALUES (46, '/storage/thumbnails/_signature/3LUI43L0UONR2HS5UA612Q9QJR.jpg', 39, 87, 0);
INSERT INTO `mto_post_resource` VALUES (48, '/storage/thumbnails/_signature/1887RIAUJF4LGTMAIUDK9MC3IJ.jpg', 32, 100, 0);
INSERT INTO `mto_post_resource` VALUES (49, '/storage/thumbnails/_signature/2LJ8H5ANR634498VN4U6LI39B.jpeg', 32, 99, 0);
INSERT INTO `mto_post_resource` VALUES (50, '/storage/thumbnails/_signature/322M6135UQQT3TUHRMKL553JIU.jpeg', 32, 101, 0);
INSERT INTO `mto_post_resource` VALUES (51, '/storage/thumbnails/_signature/3DTE0EPEU6QDMDHO7NKQ9S4GFM.jpg', 32, 95, 0);
INSERT INTO `mto_post_resource` VALUES (52, '/storage/thumbnails/_signature/3JA7QMVPAIBK5LQD8H50RC3P7D.jpeg', 32, 96, 0);
INSERT INTO `mto_post_resource` VALUES (53, '/storage/thumbnails/_signature/3KFGFP314Q12MQBRBF61622LP8.jpg', 32, 102, 0);
INSERT INTO `mto_post_resource` VALUES (54, '/storage/thumbnails/_signature/5IIJGMI0UHP81KIMP2PIEAKQ7.jpg', 32, 98, 0);
INSERT INTO `mto_post_resource` VALUES (55, '/storage/thumbnails/_signature/8DKE946KOSM20TROTT4G209KR.jpeg', 32, 97, 0);
INSERT INTO `mto_post_resource` VALUES (56, '/storage/thumbnails/_signature/18S2ND7EJ1ML51EUFJ696A98J3.jpg', 31, 110, 0);
INSERT INTO `mto_post_resource` VALUES (57, '/storage/thumbnails/_signature/1US2M221EJ2QOUO62T3I38FPBK.jpg', 31, 105, 0);
INSERT INTO `mto_post_resource` VALUES (58, '/storage/thumbnails/_signature/23FOLMMTDSMUN558VLSP2U5H1P.jpg', 31, 104, 0);
INSERT INTO `mto_post_resource` VALUES (59, '/storage/thumbnails/_signature/28VQDQ8RNP4SFLKBETE46PJ126.jpg', 31, 107, 0);
INSERT INTO `mto_post_resource` VALUES (60, '/storage/thumbnails/_signature/2AR8SPDB8O00CT8SQTQJQ4KUCN.jpg', 31, 106, 0);
INSERT INTO `mto_post_resource` VALUES (61, '/storage/thumbnails/_signature/33H22JEPKQ35P1DRSDBP91FNKI.jpg', 31, 109, 0);
INSERT INTO `mto_post_resource` VALUES (62, '/storage/thumbnails/_signature/QF6SVOSH1PRDEG58KPJUT2RIH.jpg', 31, 108, 0);
INSERT INTO `mto_post_resource` VALUES (63, '/storage/thumbnails/_signature/KRUQBOM8VJACQ8LU6QNGSRC2B.jpg', 30, 112, 0);
INSERT INTO `mto_post_resource` VALUES (64, '/storage/thumbnails/_signature/2789HV17N9BI0EP55B23G1NM2D.jpg', 35, 115, 0);
INSERT INTO `mto_post_resource` VALUES (66, '/storage/thumbnails/_signature/12895O5DCRNBMVN4RL5VUJTTU6.jpg', 24, 122, 0);
INSERT INTO `mto_post_resource` VALUES (67, '/storage/thumbnails/_signature/2579E4DT3VMJ4NNSG5C9FBGHAC.jpg', 24, 120, 0);
INSERT INTO `mto_post_resource` VALUES (68, '/storage/thumbnails/_signature/25K9U8TEVA68CTNNDPQA1JS36H.jpg', 24, 121, 0);
INSERT INTO `mto_post_resource` VALUES (69, '/storage/thumbnails/_signature/28V8KQU6516EURHR5240JCM33A.jpg', 24, 124, 0);
INSERT INTO `mto_post_resource` VALUES (70, '/storage/thumbnails/_signature/2KTEHURJEDL8J1QIAR0N0PLP33.jpg', 24, 123, 0);
INSERT INTO `mto_post_resource` VALUES (72, '/storage/thumbnails/_signature/27433T8N2V2QP9UO5KV43TAQU8.jpg', 40, 144, 0);
INSERT INTO `mto_post_resource` VALUES (74, '/storage/thumbnails/_signature/10DF36VVTG01171B22BMC6R9CO.jpeg', 1, 197, 0);

-- ----------------------------
-- Table structure for mto_post_tag
-- ----------------------------
DROP TABLE IF EXISTS `mto_post_tag`;
CREATE TABLE `mto_post_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) NULL DEFAULT NULL,
  `tag_id` bigint(20) NULL DEFAULT NULL,
  `weight` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IK_TAG_ID`(`tag_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mto_post_tag
-- ----------------------------
INSERT INTO `mto_post_tag` VALUES (1, 1, 1, 1556586053588);
INSERT INTO `mto_post_tag` VALUES (2, 2, 1, 1556586442372);
INSERT INTO `mto_post_tag` VALUES (3, 3, 1, 1556586522026);
INSERT INTO `mto_post_tag` VALUES (4, 4, 1, 1556586629265);
INSERT INTO `mto_post_tag` VALUES (5, 5, 1, 1556586702013);
INSERT INTO `mto_post_tag` VALUES (6, 6, 1, 1556586742911);
INSERT INTO `mto_post_tag` VALUES (7, 7, 1, 1556586804435);
INSERT INTO `mto_post_tag` VALUES (8, 8, 2, 1556586982797);
INSERT INTO `mto_post_tag` VALUES (9, 9, 2, 1556587140957);
INSERT INTO `mto_post_tag` VALUES (10, 10, 1, 1556587223979);
INSERT INTO `mto_post_tag` VALUES (11, 11, 1, 1559270119342);
INSERT INTO `mto_post_tag` VALUES (12, 12, 1, 1556587349004);
INSERT INTO `mto_post_tag` VALUES (13, 13, 1, 1556587416605);
INSERT INTO `mto_post_tag` VALUES (14, 14, 1, 1556587537189);
INSERT INTO `mto_post_tag` VALUES (15, 15, 1, 1573022938048);
INSERT INTO `mto_post_tag` VALUES (16, 16, 3, 1556587774239);
INSERT INTO `mto_post_tag` VALUES (17, 17, 3, 1556587906516);
INSERT INTO `mto_post_tag` VALUES (18, 18, 3, 1556588051529);
INSERT INTO `mto_post_tag` VALUES (19, 19, 3, 1556588118717);
INSERT INTO `mto_post_tag` VALUES (20, 20, 3, 1556588421398);
INSERT INTO `mto_post_tag` VALUES (21, 21, 3, 1556588487375);
INSERT INTO `mto_post_tag` VALUES (22, 22, 3, 1556588550143);
INSERT INTO `mto_post_tag` VALUES (23, 23, 3, 1560324488387);
INSERT INTO `mto_post_tag` VALUES (24, 24, 4, 1560488124583);
INSERT INTO `mto_post_tag` VALUES (25, 25, 2, 1556589893170);
INSERT INTO `mto_post_tag` VALUES (26, 36, 5, 1559783064548);
INSERT INTO `mto_post_tag` VALUES (27, 36, 6, 1559787673837);
INSERT INTO `mto_post_tag` VALUES (28, 36, 7, 1559791214484);
INSERT INTO `mto_post_tag` VALUES (29, 37, 8, 1572314734854);
INSERT INTO `mto_post_tag` VALUES (30, 38, 9, 1573523463126);
INSERT INTO `mto_post_tag` VALUES (31, 39, 10, 1573523435026);
INSERT INTO `mto_post_tag` VALUES (32, 40, 11, 1573523091164);
INSERT INTO `mto_post_tag` VALUES (33, 41, 12, 1572312837015);
INSERT INTO `mto_post_tag` VALUES (34, 42, 13, 1573522976110);
INSERT INTO `mto_post_tag` VALUES (35, 1, 14, 1573537666863);
INSERT INTO `mto_post_tag` VALUES (36, 15, 14, 1573523007997);

-- ----------------------------
-- Table structure for mto_resource
-- ----------------------------
DROP TABLE IF EXISTS `mto_resource`;
CREATE TABLE `mto_resource`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` bigint(20) NOT NULL DEFAULT 0,
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `md5` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_MD5`(`md5`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 198 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mto_resource
-- ----------------------------
INSERT INTO `mto_resource` VALUES (1, 0, '2019-04-30 08:57:58', 'BB7LFPR0P5GRG50VQ992CTTE5', '/storage/thumbnails/_signature/BB7LFPR0P5GRG50VQ992CTTE5.jpg', '2019-04-30 08:57:58');
INSERT INTO `mto_resource` VALUES (2, 0, '2019-04-30 09:00:52', '35Q7VBEK3OT8DGSSRP37AH4VIE', '/storage/thumbnails/_signature/35Q7VBEK3OT8DGSSRP37AH4VIE.jpg', '2019-11-07 15:24:09');
INSERT INTO `mto_resource` VALUES (3, 1, '2019-04-30 09:06:31', '1GHRRJCO9C76DRO5REGBJPKC9O', '/storage/thumbnails/_signature/1GHRRJCO9C76DRO5REGBJPKC9O.jpg', '2019-04-30 09:06:56');
INSERT INTO `mto_resource` VALUES (4, 0, '2019-04-30 09:06:43', '21PP1OUD0ID6MDLIJGAII78PJV', '/storage/thumbnails/_signature/21PP1OUD0ID6MDLIJGAII78PJV.jpg', '2019-04-30 09:06:43');
INSERT INTO `mto_resource` VALUES (5, 0, '2019-04-30 09:08:19', '14CCIOKI9JDE3UC0I16FJIE7DF', '/storage/thumbnails/_signature/14CCIOKI9JDE3UC0I16FJIE7DF.jpg', '2019-04-30 09:08:19');
INSERT INTO `mto_resource` VALUES (6, 1, '2019-04-30 09:08:39', '3J8200LKISII79JS87C75F38QD', '/storage/thumbnails/_signature/3J8200LKISII79JS87C75F38QD.jpg', '2019-04-30 09:08:42');
INSERT INTO `mto_resource` VALUES (7, 0, '2019-04-30 09:10:08', '1MACCTB1F7PT0R38ONDO3FHSKV', '/storage/thumbnails/_signature/1MACCTB1F7PT0R38ONDO3FHSKV.jpg', '2019-04-30 09:10:08');
INSERT INTO `mto_resource` VALUES (8, 1, '2019-04-30 09:10:27', 'JDD3HIT8OKJ22IJGG3236MDU4', '/storage/thumbnails/_signature/JDD3HIT8OKJ22IJGG3236MDU4.jpg', '2019-04-30 09:10:29');
INSERT INTO `mto_resource` VALUES (9, 0, '2019-04-30 09:11:10', '15I1K8V39R73EI12MOLP8103OH', '/storage/thumbnails/_signature/15I1K8V39R73EI12MOLP8103OH.jpg', '2019-04-30 09:11:10');
INSERT INTO `mto_resource` VALUES (10, 1, '2019-04-30 09:11:34', '14M9I5Q5PASBLBPOGORJ0RU7RO', '/storage/thumbnails/_signature/14M9I5Q5PASBLBPOGORJ0RU7RO.jpg', '2019-04-30 09:11:42');
INSERT INTO `mto_resource` VALUES (11, 0, '2019-04-30 09:12:00', '2OMTC0F82IS8O3T8R36F1RA892', '/storage/thumbnails/_signature/2OMTC0F82IS8O3T8R36F1RA892.jpg', '2019-04-30 09:12:00');
INSERT INTO `mto_resource` VALUES (12, 1, '2019-04-30 09:12:21', '8KGLIC6U21S3FBMTH2I422RV4', '/storage/thumbnails/_signature/8KGLIC6U21S3FBMTH2I422RV4.jpg', '2019-04-30 09:12:23');
INSERT INTO `mto_resource` VALUES (13, 0, '2019-04-30 09:13:10', '3SGKUA4R7QTE7KCRDATD9OLR3B', '/storage/thumbnails/_signature/3SGKUA4R7QTE7KCRDATD9OLR3B.jpg', '2019-04-30 09:13:10');
INSERT INTO `mto_resource` VALUES (14, 1, '2019-04-30 09:13:23', '1VJ343JNSF8A9ROEGJK7M69LNG', '/storage/thumbnails/_signature/1VJ343JNSF8A9ROEGJK7M69LNG.jpg', '2019-04-30 09:13:24');
INSERT INTO `mto_resource` VALUES (15, 0, '2019-04-30 09:15:22', '319AMDLDUTS9CC13E4NS7HMT0P', '/storage/thumbnails/_signature/319AMDLDUTS9CC13E4NS7HMT0P.jpg', '2019-04-30 09:15:22');
INSERT INTO `mto_resource` VALUES (16, 1, '2019-04-30 09:16:20', '35S012TJM6TPSNLLRQHJ1N7A89', '/storage/thumbnails/_signature/35S012TJM6TPSNLLRQHJ1N7A89.jpg', '2019-04-30 09:16:22');
INSERT INTO `mto_resource` VALUES (17, 1, '2019-04-30 09:17:54', '2H3QLVE7J8LK49BUM0UU39J4I5', '/storage/thumbnails/_signature/2H3QLVE7J8LK49BUM0UU39J4I5.jpg', '2019-04-30 09:19:00');
INSERT INTO `mto_resource` VALUES (18, 1, '2019-04-30 09:18:42', '30IS58AE02END7RJMBUFOUF5QI', '/storage/thumbnails/_signature/30IS58AE02END7RJMBUFOUF5QI.jpg', '2019-04-30 09:19:00');
INSERT INTO `mto_resource` VALUES (19, 1, '2019-04-30 09:18:47', '1D1E5FC13UHS5LTMDSSJCNEIA4', '/storage/thumbnails/_signature/1D1E5FC13UHS5LTMDSSJCNEIA4.jpg', '2019-04-30 09:19:00');
INSERT INTO `mto_resource` VALUES (20, 1, '2019-04-30 09:18:50', 'LG9SL8GG5TATKM9ACFJU1585D', '/storage/thumbnails/_signature/LG9SL8GG5TATKM9ACFJU1585D.jpg', '2019-04-30 09:19:00');
INSERT INTO `mto_resource` VALUES (21, 0, '2019-04-30 09:18:54', '2EHNAACABO1THK8KBE21KRFGRS', '/storage/thumbnails/_signature/2EHNAACABO1THK8KBE21KRFGRS.jpg', '2019-04-30 09:18:54');
INSERT INTO `mto_resource` VALUES (22, 0, '2019-04-30 09:20:02', '3QV25K5GT6PJEUGBBU2RKESOCV', '/storage/thumbnails/_signature/3QV25K5GT6PJEUGBBU2RKESOCV.jpg', '2019-04-30 09:20:02');
INSERT INTO `mto_resource` VALUES (23, 1, '2019-04-30 09:20:22', '2EP81JG7KPHJH0C5FS4TEFU77F', '/storage/thumbnails/_signature/2EP81JG7KPHJH0C5FS4TEFU77F.jpg', '2019-04-30 09:20:23');
INSERT INTO `mto_resource` VALUES (24, 0, '2019-04-30 09:21:12', '22VJ5JACD3G2J1MRC34GMR5BIQ', '/storage/thumbnails/_signature/22VJ5JACD3G2J1MRC34GMR5BIQ.jpg', '2019-04-30 09:21:12');
INSERT INTO `mto_resource` VALUES (25, 0, '2019-04-30 09:21:24', '2JRK08LCNSCS8T76529EUU8K3J', '/storage/thumbnails/_signature/2JRK08LCNSCS8T76529EUU8K3J.jpg', '2019-05-31 10:35:19');
INSERT INTO `mto_resource` VALUES (26, 0, '2019-04-30 09:21:59', '1737F1K5G0DFDFDP4MNUHPKI40', '/storage/thumbnails/_signature/1737F1K5G0DFDFDP4MNUHPKI40.jpg', '2019-04-30 09:21:59');
INSERT INTO `mto_resource` VALUES (27, 1, '2019-04-30 09:22:27', 'EERFCQ255M02OET4RROSOJOH', '/storage/thumbnails/_signature/EERFCQ255M02OET4RROSOJOH.jpg', '2019-04-30 09:22:29');
INSERT INTO `mto_resource` VALUES (28, 1, '2019-04-30 09:23:21', '2C3K8OUQ1KCM95FFSTC4JNIF29', '/storage/thumbnails/_signature/2C3K8OUQ1KCM95FFSTC4JNIF29.jpg', '2019-04-30 09:23:36');
INSERT INTO `mto_resource` VALUES (29, 0, '2019-04-30 09:23:28', '3488PJKHM3J2QK2RCRAMQHH0M8', '/storage/thumbnails/_signature/3488PJKHM3J2QK2RCRAMQHH0M8.jpg', '2019-04-30 09:23:28');
INSERT INTO `mto_resource` VALUES (30, 1, '2019-04-30 09:24:49', 'K04U65APA87BDC1GHRAK63DCD', '/storage/thumbnails/_signature/K04U65APA87BDC1GHRAK63DCD.jpg', '2019-04-30 09:25:37');
INSERT INTO `mto_resource` VALUES (31, 0, '2019-04-30 09:25:34', '2BVABD70KNEUS35PA9LB88CJQ3', '/storage/thumbnails/_signature/2BVABD70KNEUS35PA9LB88CJQ3.jpg', '2019-04-30 09:25:34');
INSERT INTO `mto_resource` VALUES (32, 0, '2019-04-30 09:26:48', '149K1U78U9BJG3U0Q4J6UE93A3', '/storage/thumbnails/_signature/149K1U78U9BJG3U0Q4J6UE93A3.jpg', '2019-04-30 09:26:48');
INSERT INTO `mto_resource` VALUES (33, 1, '2019-04-30 09:26:57', '2L61EEMCQN7MN39PAAF0HOPAO', '/storage/thumbnails/_signature/2L61EEMCQN7MN39PAAF0HOPAO.jpg', '2019-04-30 09:27:01');
INSERT INTO `mto_resource` VALUES (34, 0, '2019-04-30 09:29:19', '3MAAQR10SRUOG5LN6T7I61M4PM', '/storage/thumbnails/_signature/3MAAQR10SRUOG5LN6T7I61M4PM.jpg', '2019-04-30 09:29:19');
INSERT INTO `mto_resource` VALUES (35, 1, '2019-04-30 09:29:32', '2UE3F3D3DO2NR246JP0P9RJ7OH', '/storage/thumbnails/_signature/2UE3F3D3DO2NR246JP0P9RJ7OH.jpg', '2019-04-30 09:29:34');
INSERT INTO `mto_resource` VALUES (36, 0, '2019-04-30 09:31:31', '1J0R5OON3677O9QKKQNMFEF2A4', '/storage/thumbnails/_signature/1J0R5OON3677O9QKKQNMFEF2A4.jpg', '2019-04-30 09:31:31');
INSERT INTO `mto_resource` VALUES (37, 1, '2019-04-30 09:31:39', '1KJK0E2SH6J46EOMF22MB345QV', '/storage/thumbnails/_signature/1KJK0E2SH6J46EOMF22MB345QV.jpg', '2019-04-30 09:31:46');
INSERT INTO `mto_resource` VALUES (38, 1, '2019-04-30 09:32:51', '1UGAHSJESKRHQHN97KUI4MF88U', '/storage/thumbnails/_signature/1UGAHSJESKRHQHN97KUI4MF88U.jpg', '2019-04-30 09:34:11');
INSERT INTO `mto_resource` VALUES (39, 1, '2019-04-30 09:32:56', '8C56NERKLOIHLMC1IJC6D8RPF', '/storage/thumbnails/_signature/8C56NERKLOIHLMC1IJC6D8RPF.jpg', '2019-04-30 09:34:11');
INSERT INTO `mto_resource` VALUES (40, 1, '2019-04-30 09:33:01', '2UCN9L03JRNEHERCH69V2N3S5G', '/storage/thumbnails/_signature/2UCN9L03JRNEHERCH69V2N3S5G.jpg', '2019-04-30 09:34:11');
INSERT INTO `mto_resource` VALUES (41, 1, '2019-04-30 09:33:06', '2OJ5M5TOKGNOL0SOJAKBPSRNF8', '/storage/thumbnails/_signature/2OJ5M5TOKGNOL0SOJAKBPSRNF8.jpg', '2019-04-30 09:34:11');
INSERT INTO `mto_resource` VALUES (42, 1, '2019-04-30 09:33:12', '2TJMKEUONRNLB7KPCTQIFE4DK5', '/storage/thumbnails/_signature/2TJMKEUONRNLB7KPCTQIFE4DK5.jpg', '2019-04-30 09:34:11');
INSERT INTO `mto_resource` VALUES (43, 1, '2019-04-30 09:33:23', '4I84B5IDE5PV01N20DTFVEOV7', '/storage/thumbnails/_signature/4I84B5IDE5PV01N20DTFVEOV7.jpg', '2019-04-30 09:34:11');
INSERT INTO `mto_resource` VALUES (44, 0, '2019-04-30 09:34:09', '29BL4BM8R7A87CT1488OAQMEIK', '/storage/thumbnails/_signature/29BL4BM8R7A87CT1488OAQMEIK.jpg', '2019-04-30 09:34:09');
INSERT INTO `mto_resource` VALUES (45, 0, '2019-04-30 09:35:05', '12B0OHK9T8BP05MCCMC8HP8DOB', '/storage/thumbnails/_signature/12B0OHK9T8BP05MCCMC8HP8DOB.jpg', '2019-04-30 09:35:05');
INSERT INTO `mto_resource` VALUES (46, 1, '2019-04-30 09:35:17', '35QKKQQ9PH6KLCOH6BKKA63K6D', '/storage/thumbnails/_signature/35QKKQQ9PH6KLCOH6BKKA63K6D.jpg', '2019-04-30 09:35:18');
INSERT INTO `mto_resource` VALUES (47, 0, '2019-04-30 09:40:19', '2G2O8KV8KKATH1U8N26S7UO80L', '/storage/thumbnails/_signature/2G2O8KV8KKATH1U8N26S7UO80L.jpg', '2019-04-30 09:40:19');
INSERT INTO `mto_resource` VALUES (48, 1, '2019-04-30 09:41:19', '2QNA0S154RH5OCL0J98SC7O7SN', '/storage/thumbnails/_signature/2QNA0S154RH5OCL0J98SC7O7SN.jpg', '2019-04-30 09:41:27');
INSERT INTO `mto_resource` VALUES (49, 0, '2019-04-30 09:41:23', '1G9F56N6JUFKAIIE4C66USQI40', '/storage/thumbnails/_signature/1G9F56N6JUFKAIIE4C66USQI40.jpg', '2019-04-30 09:41:23');
INSERT INTO `mto_resource` VALUES (50, 1, '2019-04-30 09:42:22', 'LTT36GFCL2RI65HLQPCJKQU9', '/storage/thumbnails/_signature/LTT36GFCL2RI65HLQPCJKQU9.jpg', '2019-04-30 09:42:30');
INSERT INTO `mto_resource` VALUES (51, 0, '2019-04-30 09:42:25', '235NGEK16H2C025RSLK05LI4I4', '/storage/thumbnails/_signature/235NGEK16H2C025RSLK05LI4I4.jpg', '2019-04-30 09:42:25');
INSERT INTO `mto_resource` VALUES (52, 0, '2019-04-30 09:45:02', '1H5CUC63OFTI0JUV93VITJM0V4', '/storage/thumbnails/_signature/1H5CUC63OFTI0JUV93VITJM0V4.jpg', '2019-04-30 09:45:02');
INSERT INTO `mto_resource` VALUES (53, 1, '2019-04-30 09:45:08', '1Q6STIQ0IB2GUUHQ77TBIIEJGI', '/storage/thumbnails/_signature/1Q6STIQ0IB2GUUHQ77TBIIEJGI.jpg', '2019-04-30 09:45:14');
INSERT INTO `mto_resource` VALUES (54, 0, '2019-04-30 09:55:19', '2TCNU0MFTRU4JB4JN5NNJLJLO2', '/storage/thumbnails/_signature/2TCNU0MFTRU4JB4JN5NNJLJLO2.jpg', '2019-04-30 09:55:19');
INSERT INTO `mto_resource` VALUES (55, 0, '2019-04-30 09:56:04', '2Q6RJF9GSTQMMMTF6991AT40S8', '/storage/thumbnails/_signature/2Q6RJF9GSTQMMMTF6991AT40S8.jpg', '2019-06-14 11:33:35');
INSERT INTO `mto_resource` VALUES (56, 0, '2019-04-30 09:56:10', '2UTA2FBHJL58VBVFRBU9M1H1J6', '/storage/thumbnails/_signature/2UTA2FBHJL58VBVFRBU9M1H1J6.jpg', '2019-06-14 12:55:24');
INSERT INTO `mto_resource` VALUES (57, 0, '2019-04-30 09:56:18', 'EB4JDHLC2GJBF3CMQTH9OK69V', '/storage/thumbnails/_signature/EB4JDHLC2GJBF3CMQTH9OK69V.jpg', '2019-06-14 12:55:24');
INSERT INTO `mto_resource` VALUES (58, 0, '2019-04-30 09:56:25', '2CGNDSK11ITN4BOKG2FLBVHQU', '/storage/thumbnails/_signature/2CGNDSK11ITN4BOKG2FLBVHQU.jpg', '2019-06-14 12:55:24');
INSERT INTO `mto_resource` VALUES (59, 0, '2019-04-30 09:56:29', '3P40MGDIVSSBEO8JBL10JEMPV1', '/storage/thumbnails/_signature/3P40MGDIVSSBEO8JBL10JEMPV1.jpg', '2019-06-14 12:55:24');
INSERT INTO `mto_resource` VALUES (60, 0, '2019-04-30 09:56:42', 'D1Q64QTIRAC1JLFGGK3D5B33P', '/storage/thumbnails/_signature/D1Q64QTIRAC1JLFGGK3D5B33P.jpg', '2019-06-14 12:55:24');
INSERT INTO `mto_resource` VALUES (61, 0, '2019-04-30 09:56:52', '16JNK9AMTEQSTJ1BTJP78TK3IB', '/storage/thumbnails/_signature/16JNK9AMTEQSTJ1BTJP78TK3IB.jpg', '2019-06-14 12:55:24');
INSERT INTO `mto_resource` VALUES (62, 0, '2019-04-30 09:57:10', '1IJ2EDNRP6TUUS5HPI1ENN82HK', '/storage/thumbnails/_signature/1IJ2EDNRP6TUUS5HPI1ENN82HK.jpg', '2019-06-14 12:55:24');
INSERT INTO `mto_resource` VALUES (63, 0, '2019-04-30 10:03:55', '2V7QNQ9IOQH8CUVFLCAHJ6OA44', '/storage/thumbnails/_signature/2V7QNQ9IOQH8CUVFLCAHJ6OA44.jpg', '2019-04-30 10:03:55');
INSERT INTO `mto_resource` VALUES (64, 1, '2019-04-30 10:04:51', '2QSTRL4S084P70E30R1G16OHFE', '/storage/thumbnails/_signature/2QSTRL4S084P70E30R1G16OHFE.jpg', '2019-04-30 10:04:53');
INSERT INTO `mto_resource` VALUES (65, 0, '2019-05-06 07:28:29', '33MRKN1MUHU6HBNJQUALKKSHRM', '/storage/thumbnails/_signature/33MRKN1MUHU6HBNJQUALKKSHRM.jpg', '2019-05-06 07:28:29');
INSERT INTO `mto_resource` VALUES (66, 0, '2019-05-07 12:22:53', '2VPM9PSBS4EPD0RRDLRS1Q17LC', '/storage/thumbnails/_signature/2VPM9PSBS4EPD0RRDLRS1Q17LC.jpg', '2019-05-07 12:22:53');
INSERT INTO `mto_resource` VALUES (67, 0, '2019-05-08 08:10:26', '39K3LIDP7R7PJ9QA2PDJLHHFBA', '/storage/thumbnails/_signature/39K3LIDP7R7PJ9QA2PDJLHHFBA.jpg', '2019-05-08 08:10:26');
INSERT INTO `mto_resource` VALUES (68, 0, '2019-05-08 17:14:11', '2T1L1PTH36D8LK50VAGL3R4N4H', '/storage/thumbnails/_signature/2T1L1PTH36D8LK50VAGL3R4N4H.jpg', '2019-05-08 17:14:11');
INSERT INTO `mto_resource` VALUES (69, 0, '2019-05-08 17:15:20', '1NK1LPLLQUQEO1T5QAALC1PBNS', '/storage/thumbnails/_signature/1NK1LPLLQUQEO1T5QAALC1PBNS.jpg', '2019-05-08 17:15:20');
INSERT INTO `mto_resource` VALUES (70, 0, '2019-05-09 08:27:40', '1244OQL9VCA1CTBHPC16TU4LTQ', '/storage/thumbnails/_signature/1244OQL9VCA1CTBHPC16TU4LTQ.jpg', '2019-05-09 08:27:40');
INSERT INTO `mto_resource` VALUES (71, 0, '2019-05-09 10:21:44', '26NOH4SBV4QBKV049IVGNMSSJR', '/storage/thumbnails/_signature/26NOH4SBV4QBKV049IVGNMSSJR.jpg', '2019-06-12 15:17:15');
INSERT INTO `mto_resource` VALUES (72, 0, '2019-05-09 10:21:56', '2CMK09SV1JAV0FCAN2B26L4D5J', '/storage/thumbnails/_signature/2CMK09SV1JAV0FCAN2B26L4D5J.jpg', '2019-06-12 15:17:15');
INSERT INTO `mto_resource` VALUES (73, 0, '2019-05-09 10:22:02', 'Q378HN3H78DHAER56O4U393FK', '/storage/thumbnails/_signature/Q378HN3H78DHAER56O4U393FK.jpg', '2019-06-12 15:17:15');
INSERT INTO `mto_resource` VALUES (74, 0, '2019-05-10 10:33:39', '1HD2C5U9PVCHMM9RMBVC7RBUA0', '/storage/thumbnails/_signature/1HD2C5U9PVCHMM9RMBVC7RBUA0.jpg', '2019-05-10 10:33:39');
INSERT INTO `mto_resource` VALUES (75, 0, '2019-05-11 11:04:06', 'MQ3F6K6FLD8S2LQ4M3KFA0QI0', '/storage/thumbnails/_signature/MQ3F6K6FLD8S2LQ4M3KFA0QI0.jpg', '2019-05-11 11:04:06');
INSERT INTO `mto_resource` VALUES (76, 0, '2019-05-11 11:07:43', '31EN7QBAFO4PG2RVGTGUVRKP6A', '/storage/thumbnails/_signature/31EN7QBAFO4PG2RVGTGUVRKP6A.png', '2019-05-11 11:07:43');
INSERT INTO `mto_resource` VALUES (77, 0, '2019-05-11 11:17:19', '1DFMD603K04NEKV9DM6R7T0F5Q', '/storage/thumbnails/_signature/1DFMD603K04NEKV9DM6R7T0F5Q.png', '2019-05-11 11:17:19');
INSERT INTO `mto_resource` VALUES (78, 0, '2019-05-30 11:44:05', '37INOCRDVEF0CAA9MK754H63VO', '/storage/thumbnails/_signature/37INOCRDVEF0CAA9MK754H63VO.jpg', '2019-05-30 11:44:05');
INSERT INTO `mto_resource` VALUES (79, 0, '2019-05-30 11:46:28', '1STHB5VPRQILPP9PO7OQHAPPFD', '/storage/thumbnails/_signature/1STHB5VPRQILPP9PO7OQHAPPFD.jpg', '2019-05-30 11:46:28');
INSERT INTO `mto_resource` VALUES (80, 0, '2019-05-30 14:49:45', 'QPVA94NOLSQJOIGN33D7UDD50', '/storage/thumbnails/_signature/QPVA94NOLSQJOIGN33D7UDD50.jpg', '2019-05-30 14:49:45');
INSERT INTO `mto_resource` VALUES (81, 1, '2019-05-31 10:35:17', '2J814P948I2SMNMKCJASM0Q337', '/storage/thumbnails/_signature/2J814P948I2SMNMKCJASM0Q337.jpg', '2019-05-31 10:35:19');
INSERT INTO `mto_resource` VALUES (82, 1, '2019-06-11 13:51:13', 'KUQF97QL6BH59E9GSUP2A9VMF', '/storage/thumbnails/_signature/KUQF97QL6BH59E9GSUP2A9VMF.jpg', '2019-06-11 13:51:33');
INSERT INTO `mto_resource` VALUES (83, 0, '2019-06-11 13:51:26', '74ED6N1KJNNQAEMD9LC6V6U1D', '/storage/thumbnails/_signature/74ED6N1KJNNQAEMD9LC6V6U1D.png', '2019-06-11 13:51:26');
INSERT INTO `mto_resource` VALUES (84, 1, '2019-06-11 13:55:05', '1UC7OV09GND2H8KOMCG0F7VV33', '/storage/thumbnails/_signature/1UC7OV09GND2H8KOMCG0F7VV33.jpg', '2019-06-11 13:55:27');
INSERT INTO `mto_resource` VALUES (85, 0, '2019-06-11 13:55:18', '276ESSF7DRJ60PMHOHRFPFRT41', '/storage/thumbnails/_signature/276ESSF7DRJ60PMHOHRFPFRT41.jpg', '2019-06-11 13:55:18');
INSERT INTO `mto_resource` VALUES (86, 0, '2019-06-11 14:42:23', '2T8LMEHGT8B4MMHRQEGCVE9M7U', '/storage/thumbnails/_signature/2T8LMEHGT8B4MMHRQEGCVE9M7U.jpg', '2019-06-11 14:42:23');
INSERT INTO `mto_resource` VALUES (87, 1, '2019-06-11 14:45:30', '3LUI43L0UONR2HS5UA612Q9QJR', '/storage/thumbnails/_signature/3LUI43L0UONR2HS5UA612Q9QJR.jpg', '2019-06-11 14:45:42');
INSERT INTO `mto_resource` VALUES (88, 0, '2019-06-12 10:40:40', '2TUJ6AQSG6EI5VGV67B6N40631', '/storage/thumbnails/_signature/2TUJ6AQSG6EI5VGV67B6N40631.jpg', '2019-06-12 10:40:40');
INSERT INTO `mto_resource` VALUES (89, 0, '2019-06-12 14:34:50', '3SU1JCP7FNA9J4SJBV6SEE9KHG', '/storage/thumbnails/_signature/3SU1JCP7FNA9J4SJBV6SEE9KHG.jpg', '2019-06-12 14:34:50');
INSERT INTO `mto_resource` VALUES (90, 0, '2019-06-12 14:35:10', 'COAQ21PH89JV225T10LRRNOTH', '/storage/thumbnails/_signature/COAQ21PH89JV225T10LRRNOTH.jpg', '2019-06-12 14:43:34');
INSERT INTO `mto_resource` VALUES (91, 0, '2019-06-12 14:40:53', 'U754RQKKIJLAJ5L0BPA23G9BQ', '/storage/thumbnails/_signature/U754RQKKIJLAJ5L0BPA23G9BQ.jpg', '2019-06-12 14:40:53');
INSERT INTO `mto_resource` VALUES (92, 0, '2019-06-12 14:41:12', 'T5CF2F4HG2FV9EB91OPAPDND', '/storage/thumbnails/_signature/T5CF2F4HG2FV9EB91OPAPDND.jpg', '2019-06-12 14:41:12');
INSERT INTO `mto_resource` VALUES (93, 0, '2019-06-12 14:42:40', '1MO4GVDFAD2M2PFMR12AIHQ8U5', '/storage/thumbnails/_signature/1MO4GVDFAD2M2PFMR12AIHQ8U5.jpeg', '2019-06-12 14:42:40');
INSERT INTO `mto_resource` VALUES (94, 0, '2019-06-12 14:59:20', 'F4QIPMGVVEQS6SMB1T067H1TO', '/storage/thumbnails/_signature/F4QIPMGVVEQS6SMB1T067H1TO.jpg', '2019-06-12 14:59:20');
INSERT INTO `mto_resource` VALUES (95, 1, '2019-06-12 15:15:42', '3DTE0EPEU6QDMDHO7NKQ9S4GFM', '/storage/thumbnails/_signature/3DTE0EPEU6QDMDHO7NKQ9S4GFM.jpg', '2019-06-12 15:17:15');
INSERT INTO `mto_resource` VALUES (96, 1, '2019-06-12 15:15:46', '3JA7QMVPAIBK5LQD8H50RC3P7D', '/storage/thumbnails/_signature/3JA7QMVPAIBK5LQD8H50RC3P7D.jpeg', '2019-06-12 15:17:15');
INSERT INTO `mto_resource` VALUES (97, 1, '2019-06-12 15:15:51', '8DKE946KOSM20TROTT4G209KR', '/storage/thumbnails/_signature/8DKE946KOSM20TROTT4G209KR.jpeg', '2019-06-12 15:17:15');
INSERT INTO `mto_resource` VALUES (98, 1, '2019-06-12 15:15:55', '5IIJGMI0UHP81KIMP2PIEAKQ7', '/storage/thumbnails/_signature/5IIJGMI0UHP81KIMP2PIEAKQ7.jpg', '2019-06-12 15:17:15');
INSERT INTO `mto_resource` VALUES (99, 1, '2019-06-12 15:15:58', '2LJ8H5ANR634498VN4U6LI39B', '/storage/thumbnails/_signature/2LJ8H5ANR634498VN4U6LI39B.jpeg', '2019-06-12 15:17:15');
INSERT INTO `mto_resource` VALUES (100, 1, '2019-06-12 15:16:02', '1887RIAUJF4LGTMAIUDK9MC3IJ', '/storage/thumbnails/_signature/1887RIAUJF4LGTMAIUDK9MC3IJ.jpg', '2019-06-12 15:17:15');
INSERT INTO `mto_resource` VALUES (101, 1, '2019-06-12 15:16:07', '322M6135UQQT3TUHRMKL553JIU', '/storage/thumbnails/_signature/322M6135UQQT3TUHRMKL553JIU.jpeg', '2019-06-12 15:17:15');
INSERT INTO `mto_resource` VALUES (102, 1, '2019-06-12 15:16:12', '3KFGFP314Q12MQBRBF61622LP8', '/storage/thumbnails/_signature/3KFGFP314Q12MQBRBF61622LP8.jpg', '2019-06-12 15:17:15');
INSERT INTO `mto_resource` VALUES (103, 0, '2019-06-12 15:17:13', '2E89LCP36V660GAJ18KTJ24E6G', '/storage/thumbnails/_signature/2E89LCP36V660GAJ18KTJ24E6G.jpg', '2019-06-12 15:17:13');
INSERT INTO `mto_resource` VALUES (104, 1, '2019-06-12 15:18:48', '23FOLMMTDSMUN558VLSP2U5H1P', '/storage/thumbnails/_signature/23FOLMMTDSMUN558VLSP2U5H1P.jpg', '2019-06-12 15:19:15');
INSERT INTO `mto_resource` VALUES (105, 1, '2019-06-12 15:18:52', '1US2M221EJ2QOUO62T3I38FPBK', '/storage/thumbnails/_signature/1US2M221EJ2QOUO62T3I38FPBK.jpg', '2019-06-12 15:19:15');
INSERT INTO `mto_resource` VALUES (106, 1, '2019-06-12 15:18:55', '2AR8SPDB8O00CT8SQTQJQ4KUCN', '/storage/thumbnails/_signature/2AR8SPDB8O00CT8SQTQJQ4KUCN.jpg', '2019-06-12 15:19:15');
INSERT INTO `mto_resource` VALUES (107, 1, '2019-06-12 15:19:01', '28VQDQ8RNP4SFLKBETE46PJ126', '/storage/thumbnails/_signature/28VQDQ8RNP4SFLKBETE46PJ126.jpg', '2019-06-12 15:19:15');
INSERT INTO `mto_resource` VALUES (108, 1, '2019-06-12 15:19:06', 'QF6SVOSH1PRDEG58KPJUT2RIH', '/storage/thumbnails/_signature/QF6SVOSH1PRDEG58KPJUT2RIH.jpg', '2019-06-12 15:19:15');
INSERT INTO `mto_resource` VALUES (109, 1, '2019-06-12 15:19:10', '33H22JEPKQ35P1DRSDBP91FNKI', '/storage/thumbnails/_signature/33H22JEPKQ35P1DRSDBP91FNKI.jpg', '2019-06-12 15:19:15');
INSERT INTO `mto_resource` VALUES (110, 1, '2019-06-12 15:19:14', '18S2ND7EJ1ML51EUFJ696A98J3', '/storage/thumbnails/_signature/18S2ND7EJ1ML51EUFJ696A98J3.jpg', '2019-06-12 15:19:15');
INSERT INTO `mto_resource` VALUES (111, 0, '2019-06-12 15:19:35', '196OVS3UHRJJ83F9MNUFAQJQ6V', '/storage/thumbnails/_signature/196OVS3UHRJJ83F9MNUFAQJQ6V.jpg', '2019-06-12 15:19:35');
INSERT INTO `mto_resource` VALUES (112, 1, '2019-06-12 15:21:00', 'KRUQBOM8VJACQ8LU6QNGSRC2B', '/storage/thumbnails/_signature/KRUQBOM8VJACQ8LU6QNGSRC2B.jpg', '2019-06-12 15:27:26');
INSERT INTO `mto_resource` VALUES (113, 0, '2019-06-12 15:27:24', '1USTV6KGB0I3BQ0CO3US21S5RE', '/storage/thumbnails/_signature/1USTV6KGB0I3BQ0CO3US21S5RE.jpg', '2019-06-12 15:27:24');
INSERT INTO `mto_resource` VALUES (114, 0, '2019-06-12 15:28:06', 'C46M3O0NL1JPL2T60L8ETCC98', '/storage/thumbnails/_signature/C46M3O0NL1JPL2T60L8ETCC98.jpg', '2019-06-12 15:28:06');
INSERT INTO `mto_resource` VALUES (115, 1, '2019-06-12 15:29:33', '2789HV17N9BI0EP55B23G1NM2D', '/storage/thumbnails/_signature/2789HV17N9BI0EP55B23G1NM2D.jpg', '2019-06-12 15:29:45');
INSERT INTO `mto_resource` VALUES (116, 0, '2019-06-12 15:29:44', '7RAALQMQ1J3QCPLNFTMDKMSGS', '/storage/thumbnails/_signature/7RAALQMQ1J3QCPLNFTMDKMSGS.jpg', '2019-06-12 15:29:44');
INSERT INTO `mto_resource` VALUES (117, 0, '2019-06-12 15:30:41', '3B0MUF4S0DERRUQANPLHLC2LAE', '/storage/thumbnails/_signature/3B0MUF4S0DERRUQANPLHLC2LAE.jpg', '2019-06-12 15:30:41');
INSERT INTO `mto_resource` VALUES (118, 0, '2019-06-12 15:31:45', '30N7FNPC8DVTAKV6QUNRAGT0Q1', '/storage/thumbnails/_signature/30N7FNPC8DVTAKV6QUNRAGT0Q1.jpg', '2019-06-12 15:31:45');
INSERT INTO `mto_resource` VALUES (119, 0, '2019-06-14 11:33:29', 'U0I7KUHLH186ACPC2KSAHTTCD', '/storage/thumbnails/_signature/U0I7KUHLH186ACPC2KSAHTTCD.jpg', '2019-06-14 12:55:24');
INSERT INTO `mto_resource` VALUES (120, 1, '2019-06-14 12:54:34', '2579E4DT3VMJ4NNSG5C9FBGHAC', '/storage/thumbnails/_signature/2579E4DT3VMJ4NNSG5C9FBGHAC.jpg', '2019-06-14 12:55:24');
INSERT INTO `mto_resource` VALUES (121, 1, '2019-06-14 12:54:39', '25K9U8TEVA68CTNNDPQA1JS36H', '/storage/thumbnails/_signature/25K9U8TEVA68CTNNDPQA1JS36H.jpg', '2019-06-14 12:55:24');
INSERT INTO `mto_resource` VALUES (122, 1, '2019-06-14 12:54:47', '12895O5DCRNBMVN4RL5VUJTTU6', '/storage/thumbnails/_signature/12895O5DCRNBMVN4RL5VUJTTU6.jpg', '2019-06-14 12:55:24');
INSERT INTO `mto_resource` VALUES (123, 1, '2019-06-14 12:54:51', '2KTEHURJEDL8J1QIAR0N0PLP33', '/storage/thumbnails/_signature/2KTEHURJEDL8J1QIAR0N0PLP33.jpg', '2019-06-14 12:55:24');
INSERT INTO `mto_resource` VALUES (124, 1, '2019-06-14 12:54:58', '28V8KQU6516EURHR5240JCM33A', '/storage/thumbnails/_signature/28V8KQU6516EURHR5240JCM33A.jpg', '2019-06-14 12:55:24');
INSERT INTO `mto_resource` VALUES (125, 0, '2019-06-14 12:55:23', 'IHQASKA7RCQUM75TSOD000097', '/storage/thumbnails/_signature/IHQASKA7RCQUM75TSOD000097.jpg', '2019-06-14 12:55:23');
INSERT INTO `mto_resource` VALUES (126, 0, '2019-06-29 15:20:49', '3SMKTGJ6HQGC8VD29RPLKTQ942', '/storage/thumbnails/_signature/3SMKTGJ6HQGC8VD29RPLKTQ942.png', '2019-06-29 15:20:49');
INSERT INTO `mto_resource` VALUES (127, 0, '2019-06-29 15:21:22', 'HBVQRD2FQFDDVK1OTSIP4HM4D', '/storage/thumbnails/_signature/HBVQRD2FQFDDVK1OTSIP4HM4D.png', '2019-06-29 15:21:22');
INSERT INTO `mto_resource` VALUES (128, 0, '2019-06-29 15:21:50', '23TQ7HV8DPSJCHSDL3C6P5CC9S', '/storage/thumbnails/_signature/23TQ7HV8DPSJCHSDL3C6P5CC9S.png', '2019-06-29 15:21:50');
INSERT INTO `mto_resource` VALUES (129, 0, '2019-06-29 15:28:22', '1QD1LT35ODVUGDT2558VQNSNF1', '/storage/thumbnails/_signature/1QD1LT35ODVUGDT2558VQNSNF1.png', '2019-06-29 15:28:22');
INSERT INTO `mto_resource` VALUES (130, 0, '2019-06-29 15:28:43', '2DQ2M4MVHHNL2JRCLP30I2IC0Q', '/storage/thumbnails/_signature/2DQ2M4MVHHNL2JRCLP30I2IC0Q.png', '2019-06-29 15:28:43');
INSERT INTO `mto_resource` VALUES (131, 0, '2019-06-29 15:29:14', '1CDLI3C3QRTCL31T03J10OD7FG', '/storage/thumbnails/_signature/1CDLI3C3QRTCL31T03J10OD7FG.png', '2019-06-29 15:29:14');
INSERT INTO `mto_resource` VALUES (132, 0, '2019-06-29 15:33:27', '2MCMO0HVQ0O78IPIM5UTPPGKQK', '/storage/thumbnails/_signature/2MCMO0HVQ0O78IPIM5UTPPGKQK.png', '2019-06-29 15:33:27');
INSERT INTO `mto_resource` VALUES (133, 0, '2019-06-29 15:35:57', '1H09NSQ60RJL82TFTI0VABG7GT', '/storage/thumbnails/_signature/1H09NSQ60RJL82TFTI0VABG7GT.png', '2019-06-29 15:35:57');
INSERT INTO `mto_resource` VALUES (134, 0, '2019-06-29 15:36:19', '11OC7HB34CETEI9TT9E1L0EOO8', '/storage/thumbnails/_signature/11OC7HB34CETEI9TT9E1L0EOO8.png', '2019-06-29 15:36:19');
INSERT INTO `mto_resource` VALUES (135, 0, '2019-06-29 15:36:35', '1V2U1LFPRQAMKT6CH0DAQ6IT04', '/storage/thumbnails/_signature/1V2U1LFPRQAMKT6CH0DAQ6IT04.png', '2019-06-29 15:36:35');
INSERT INTO `mto_resource` VALUES (136, 0, '2019-06-29 15:37:27', '2VOV446R3HMB4IEPRV9RC7QCUD', '/storage/thumbnails/_signature/2VOV446R3HMB4IEPRV9RC7QCUD.png', '2019-06-29 15:37:27');
INSERT INTO `mto_resource` VALUES (137, 0, '2019-06-29 15:37:57', 'KQ0G3689ECERQ6FESVCE73C48', '/storage/thumbnails/_signature/KQ0G3689ECERQ6FESVCE73C48.png', '2019-06-29 15:37:57');
INSERT INTO `mto_resource` VALUES (138, 0, '2019-07-02 10:16:51', '1NN09FQ4VLCGSN89GFQILUU42L', '/storage/thumbnails/_signature/1NN09FQ4VLCGSN89GFQILUU42L.jpg', '2019-07-02 10:16:51');
INSERT INTO `mto_resource` VALUES (139, 0, '2019-07-02 10:20:39', '1VHNKKJFEF7D2NKQEOPGID1PHN', '/storage/thumbnails/_signature/1VHNKKJFEF7D2NKQEOPGID1PHN.jpg', '2019-07-02 10:20:39');
INSERT INTO `mto_resource` VALUES (140, 0, '2019-07-02 10:21:09', '1MQNN9KDRTV458NUDD0VM3Q713', '/storage/thumbnails/_signature/1MQNN9KDRTV458NUDD0VM3Q713.jpg', '2019-07-02 10:21:09');
INSERT INTO `mto_resource` VALUES (141, 0, '2019-07-02 10:22:38', '2HFFRQVF9BCJJ0TN7JTTUM8Q5M', '/storage/thumbnails/_signature/2HFFRQVF9BCJJ0TN7JTTUM8Q5M.jpg', '2019-07-02 10:22:38');
INSERT INTO `mto_resource` VALUES (142, 0, '2019-08-10 15:23:22', '2F6TBFSM1B2EMIMB19PGULS9OI', '/storage/thumbnails/_signature/2F6TBFSM1B2EMIMB19PGULS9OI.jpg', '2019-08-10 15:23:22');
INSERT INTO `mto_resource` VALUES (143, 0, '2019-08-10 15:25:30', '2MOKA4D8VIQRLGVE0RDF77QHB9', '/storage/thumbnails/_signature/2MOKA4D8VIQRLGVE0RDF77QHB9.jpg', '2019-08-12 10:07:34');
INSERT INTO `mto_resource` VALUES (144, 1, '2019-08-12 10:07:32', '27433T8N2V2QP9UO5KV43TAQU8', '/storage/thumbnails/_signature/27433T8N2V2QP9UO5KV43TAQU8.jpg', '2019-08-12 10:07:34');
INSERT INTO `mto_resource` VALUES (145, 0, '2019-08-13 16:19:29', '3IK9ST6NCH36K0T1DDUAGTS6D1', '/storage/thumbnails/_signature/3IK9ST6NCH36K0T1DDUAGTS6D1.jpg', '2019-08-13 16:19:29');
INSERT INTO `mto_resource` VALUES (146, 0, '2019-08-13 16:19:51', '1D8S2MTOGEUL021FHI9K9TU9D4', '/storage/thumbnails/_signature/1D8S2MTOGEUL021FHI9K9TU9D4.jpg', '2019-08-13 16:19:51');
INSERT INTO `mto_resource` VALUES (147, 0, '2019-10-28 11:16:53', '2LBAN05LG8N1197HF04MI2HG7P', '/storage/thumbnails/_signature/2LBAN05LG8N1197HF04MI2HG7P.jpg', '2019-10-28 11:16:53');
INSERT INTO `mto_resource` VALUES (148, 0, '2019-10-28 11:19:41', '341I9VDREC60067I2243569U8U', '/storage/thumbnails/_signature/341I9VDREC60067I2243569U8U.jpg', '2019-10-28 11:19:41');
INSERT INTO `mto_resource` VALUES (149, 0, '2019-10-28 11:23:13', '2RDAM5PMG9RBTMTTJBIUMROMFA', '/storage/thumbnails/_signature/2RDAM5PMG9RBTMTTJBIUMROMFA.jpg', '2019-10-28 11:23:13');
INSERT INTO `mto_resource` VALUES (150, 0, '2019-10-28 11:25:04', 'FQQ3EMKVPCMEHBOKHV0UGMUEH', '/storage/thumbnails/_signature/FQQ3EMKVPCMEHBOKHV0UGMUEH.jpg', '2019-10-28 11:25:04');
INSERT INTO `mto_resource` VALUES (151, 0, '2019-10-28 15:25:07', 'KDLB0VKCP9PHUA9B5KUBGGLOG', '/storage/thumbnails/_signature/KDLB0VKCP9PHUA9B5KUBGGLOG.jpg', '2019-10-28 15:25:07');
INSERT INTO `mto_resource` VALUES (152, 0, '2019-10-28 15:26:06', '2HC46O1M7PGQO7GFBPEC58FVRN', '/storage/thumbnails/_signature/2HC46O1M7PGQO7GFBPEC58FVRN.jpg', '2019-10-28 15:26:06');
INSERT INTO `mto_resource` VALUES (153, 0, '2019-10-28 15:29:32', '3QKIBAO8VD1GHOTG4C2J16NCD7', '/storage/thumbnails/_signature/3QKIBAO8VD1GHOTG4C2J16NCD7.jpg', '2019-10-28 15:29:32');
INSERT INTO `mto_resource` VALUES (154, 0, '2019-10-29 09:26:38', '17RVHDJ4D8N5PD06F6O35GM7DM', '/storage/thumbnails/_signature/17RVHDJ4D8N5PD06F6O35GM7DM.jpeg', '2019-10-29 09:26:38');
INSERT INTO `mto_resource` VALUES (155, 0, '2019-10-29 09:27:20', '119NAE6MTKTHV0FN82T63OVLFF', '/storage/thumbnails/_signature/119NAE6MTKTHV0FN82T63OVLFF.jpg', '2019-10-29 09:27:20');
INSERT INTO `mto_resource` VALUES (156, 0, '2019-10-29 09:32:29', '5FNASL763FN3KDOA304F2TEK5', '/storage/thumbnails/_signature/5FNASL763FN3KDOA304F2TEK5.jpeg', '2019-10-29 09:32:29');
INSERT INTO `mto_resource` VALUES (157, 0, '2019-10-29 09:33:55', '134JEE0MHB1R1ORC6TFT6VIKIJ', '/storage/thumbnails/_signature/134JEE0MHB1R1ORC6TFT6VIKIJ.jpg', '2019-10-29 09:33:55');
INSERT INTO `mto_resource` VALUES (158, 0, '2019-10-29 09:35:08', '2RVGSFMIBT8DD003NOUI4ICPRD', '/storage/thumbnails/_signature/2RVGSFMIBT8DD003NOUI4ICPRD.jpeg', '2019-10-29 09:35:08');
INSERT INTO `mto_resource` VALUES (159, 0, '2019-10-29 09:45:35', 'P97R6UQCVIRLAV6QDL140G7PK', '/storage/thumbnails/_signature/P97R6UQCVIRLAV6QDL140G7PK.jpeg', '2019-10-29 09:45:35');
INSERT INTO `mto_resource` VALUES (160, 0, '2019-10-29 09:47:39', '2ME58ONIBIG3U2FR9444J1I410', '/storage/thumbnails/_signature/2ME58ONIBIG3U2FR9444J1I410.jpg', '2019-10-29 09:47:39');
INSERT INTO `mto_resource` VALUES (161, 0, '2019-10-29 10:05:33', '3D20H2NQ935S9T2SGPNM2SFVSR', '/storage/thumbnails/_signature/3D20H2NQ935S9T2SGPNM2SFVSR.jpg', '2019-10-29 10:05:33');
INSERT INTO `mto_resource` VALUES (162, 0, '2019-10-29 12:38:17', '3H0GKD6DH2V3GRJED4H4IKEP68', '/storage/thumbnails/_signature/3H0GKD6DH2V3GRJED4H4IKEP68.jpg', '2019-10-29 12:38:17');
INSERT INTO `mto_resource` VALUES (163, 0, '2019-11-06 10:35:53', 'U1CH726HCB5HLJV6PAVKKU5I8', '/storage/thumbnails/_signature/U1CH726HCB5HLJV6PAVKKU5I8.png', '2019-11-06 10:35:53');
INSERT INTO `mto_resource` VALUES (164, 0, '2019-11-06 10:36:44', '3M7A0386T3K6LBLG6RS6SUEAVC', '/storage/thumbnails/_signature/3M7A0386T3K6LBLG6RS6SUEAVC.png', '2019-11-06 10:36:44');
INSERT INTO `mto_resource` VALUES (165, 0, '2019-11-06 10:40:01', 'U6OP8MAIDCJ5APKK3GS24TR3Q', '/storage/thumbnails/_signature/U6OP8MAIDCJ5APKK3GS24TR3Q.png', '2019-11-06 10:40:01');
INSERT INTO `mto_resource` VALUES (166, 0, '2019-11-06 10:40:10', '8I0AI1CS8UKHCPHQB733ANHTF', '/storage/thumbnails/_signature/8I0AI1CS8UKHCPHQB733ANHTF.png', '2019-11-06 10:40:10');
INSERT INTO `mto_resource` VALUES (167, 0, '2019-11-06 11:18:18', '1MN0S7DM14U77RIPC9INAQS79U', '/storage/thumbnails/_signature/1MN0S7DM14U77RIPC9INAQS79U.png', '2019-11-06 11:18:18');
INSERT INTO `mto_resource` VALUES (168, 0, '2019-11-06 14:48:56', '2VL7ALBHFAROESE3TPDJT98TT3', '/storage/thumbnails/_signature/2VL7ALBHFAROESE3TPDJT98TT3.jpg', '2019-11-06 14:48:56');
INSERT INTO `mto_resource` VALUES (169, 0, '2019-11-06 15:48:08', 'EK13GECDUE1CR8UKM8NTJ33ER', '/storage/thumbnails/_signature/EK13GECDUE1CR8UKM8NTJ33ER.jpg', '2019-11-06 15:48:08');
INSERT INTO `mto_resource` VALUES (170, 0, '2019-11-07 14:45:04', '3TTBDB9EDKP5BCVKJD36IU7S1H', '/storage/thumbnails/_signature/3TTBDB9EDKP5BCVKJD36IU7S1H.jpg', '2019-11-07 14:45:04');
INSERT INTO `mto_resource` VALUES (171, 0, '2019-11-07 15:03:58', '14IBNVM6PTE3CA609FUSHCO26E', '/storage/thumbnails/_signature/14IBNVM6PTE3CA609FUSHCO26E.jpeg', '2019-11-07 15:03:58');
INSERT INTO `mto_resource` VALUES (172, 0, '2019-11-07 15:18:58', '3BOC4H6MR6164S4ISJIB0KTAL2', '/storage/thumbnails/_signature/3BOC4H6MR6164S4ISJIB0KTAL2.jpeg', '2019-11-07 15:18:58');
INSERT INTO `mto_resource` VALUES (173, 0, '2019-11-07 15:24:06', '2IBQDSDN9JRP03D2TJH6E1CB94', '/storage/thumbnails/_signature/2IBQDSDN9JRP03D2TJH6E1CB94.jpg', '2019-11-12 13:47:46');
INSERT INTO `mto_resource` VALUES (174, 0, '2019-11-12 08:58:56', '3PI319VG5U6OETB106N8JNS9FJ', '/storage/thumbnails/_signature/3PI319VG5U6OETB106N8JNS9FJ.jpg', '2019-11-12 08:58:56');
INSERT INTO `mto_resource` VALUES (175, 0, '2019-11-12 09:02:10', '37LG0GG3PBOM9F3RE0HCVLH7PR', '/storage/thumbnails/_signature/37LG0GG3PBOM9F3RE0HCVLH7PR.jpg', '2019-11-12 09:02:10');
INSERT INTO `mto_resource` VALUES (176, 0, '2019-11-12 09:04:18', '12BSFV05S5GGU6M729F9DRILM3', '/storage/thumbnails/_signature/12BSFV05S5GGU6M729F9DRILM3.jpg', '2019-11-12 09:04:18');
INSERT INTO `mto_resource` VALUES (177, 0, '2019-11-12 09:05:05', '1NJK8DCHQ3EG240TU8SKNLBRUQ', '/storage/thumbnails/_signature/1NJK8DCHQ3EG240TU8SKNLBRUQ.jpg', '2019-11-12 09:05:05');
INSERT INTO `mto_resource` VALUES (178, 0, '2019-11-12 09:06:05', 'V8L9GQIRQV68AM3QCFH4IM690', '/storage/thumbnails/_signature/V8L9GQIRQV68AM3QCFH4IM690.jpg', '2019-11-12 09:06:05');
INSERT INTO `mto_resource` VALUES (179, 0, '2019-11-12 09:06:52', '1345O42L0OO46650VF8QS16VKP', '/storage/thumbnails/_signature/1345O42L0OO46650VF8QS16VKP.jpg', '2019-11-12 09:06:52');
INSERT INTO `mto_resource` VALUES (180, 0, '2019-11-12 09:07:16', '36B559A71QAQLOSGS5F25C1E7M', '/storage/thumbnails/_signature/36B559A71QAQLOSGS5F25C1E7M.jpeg', '2019-11-12 09:07:16');
INSERT INTO `mto_resource` VALUES (181, 0, '2019-11-12 09:08:38', '14KU74SK608UDQAH89EJ3C7Q4M', '/storage/thumbnails/_signature/14KU74SK608UDQAH89EJ3C7Q4M.jpeg', '2019-11-12 09:08:38');
INSERT INTO `mto_resource` VALUES (182, 0, '2019-11-12 09:08:54', '1IQ43Q5RT586Q6S8AI9TB43PHS', '/storage/thumbnails/_signature/1IQ43Q5RT586Q6S8AI9TB43PHS.jpg', '2019-11-12 09:08:54');
INSERT INTO `mto_resource` VALUES (183, 0, '2019-11-12 09:19:41', '3V48KP5Q5HR93DF2BNR3BDSVQ', '/storage/thumbnails/_signature/3V48KP5Q5HR93DF2BNR3BDSVQ.jpg', '2019-11-12 09:19:41');
INSERT INTO `mto_resource` VALUES (184, 0, '2019-11-12 09:20:04', '11BT1IOLGM8I9V6RI8LVAUNAHK', '/storage/thumbnails/_signature/11BT1IOLGM8I9V6RI8LVAUNAHK.jpeg', '2019-11-12 09:20:04');
INSERT INTO `mto_resource` VALUES (185, 0, '2019-11-12 09:21:42', '26J7MDOKBBF4MMC68GRT04150G', '/storage/thumbnails/_signature/26J7MDOKBBF4MMC68GRT04150G.jpg', '2019-11-12 09:21:42');
INSERT INTO `mto_resource` VALUES (186, 0, '2019-11-12 09:22:21', '284OPN8FPN9QAK2B2ENFHU04RQ', '/storage/thumbnails/_signature/284OPN8FPN9QAK2B2ENFHU04RQ.jpg', '2019-11-12 09:22:21');
INSERT INTO `mto_resource` VALUES (187, 0, '2019-11-12 09:23:12', '2UGVVVKBR1B3B3OO9IBESMGN6U', '/storage/thumbnails/_signature/2UGVVVKBR1B3B3OO9IBESMGN6U.jpeg', '2019-11-12 09:23:12');
INSERT INTO `mto_resource` VALUES (188, 0, '2019-11-12 09:27:22', '2785V9MD62QTD6THL6PPRHFH', '/storage/thumbnails/_signature/2785V9MD62QTD6THL6PPRHFH.jpeg', '2019-11-12 09:27:22');
INSERT INTO `mto_resource` VALUES (189, 0, '2019-11-12 09:28:48', '1MTN0PSGBL5GOQ2QGMQ3S7BR41', '/storage/thumbnails/_signature/1MTN0PSGBL5GOQ2QGMQ3S7BR41.jpg', '2019-11-12 09:28:48');
INSERT INTO `mto_resource` VALUES (190, 0, '2019-11-12 09:32:29', 'OBKC20UGP8VCVPC8M7ECG34GK', '/storage/thumbnails/_signature/OBKC20UGP8VCVPC8M7ECG34GK.jpg', '2019-11-12 09:32:29');
INSERT INTO `mto_resource` VALUES (191, 0, '2019-11-12 09:34:15', 'T36GP34O43706NJR5E1NKQPRF', '/storage/thumbnails/_signature/T36GP34O43706NJR5E1NKQPRF.jpg', '2019-11-12 09:34:15');
INSERT INTO `mto_resource` VALUES (192, 0, '2019-11-12 09:39:08', 'S7IJM4VOVS3NSQMI4PTEMFQ9M', '/storage/thumbnails/_signature/S7IJM4VOVS3NSQMI4PTEMFQ9M.jpg', '2019-11-12 09:39:08');
INSERT INTO `mto_resource` VALUES (193, 0, '2019-11-12 09:41:25', '38GIO51BPIVF2NH08GPLGF1TEU', '/storage/thumbnails/_signature/38GIO51BPIVF2NH08GPLGF1TEU.jpg', '2019-11-12 09:41:25');
INSERT INTO `mto_resource` VALUES (194, 0, '2019-11-12 09:44:49', '3RKS7CU8AA7721PEG00HLCSMJC', '/storage/thumbnails/_signature/3RKS7CU8AA7721PEG00HLCSMJC.jpeg', '2019-11-12 09:44:49');
INSERT INTO `mto_resource` VALUES (195, 0, '2019-11-12 09:50:33', '1263FUHL3CHFR7LIG0RCF838EA', '/storage/thumbnails/_signature/1263FUHL3CHFR7LIG0RCF838EA.jpeg', '2019-11-12 09:50:33');
INSERT INTO `mto_resource` VALUES (196, 0, '2019-11-12 09:51:01', '1HDVRCB66NFTC8816Q9RIDS655', '/storage/thumbnails/_signature/1HDVRCB66NFTC8816Q9RIDS655.jpg', '2019-11-12 09:51:01');
INSERT INTO `mto_resource` VALUES (197, 1, '2019-11-12 13:47:45', '10DF36VVTG01171B22BMC6R9CO', '/storage/thumbnails/_signature/10DF36VVTG01171B22BMC6R9CO.jpeg', '2019-11-12 13:47:46');

-- ----------------------------
-- Table structure for mto_security_code
-- ----------------------------
DROP TABLE IF EXISTS `mto_security_code`;
CREATE TABLE `mto_security_code`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created` datetime(0) NOT NULL,
  `expired` datetime(0) NOT NULL,
  `key_` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `target` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_shxjkbkgnpxa80pnv4ts57o19`(`key_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for mto_tag
-- ----------------------------
DROP TABLE IF EXISTS `mto_tag`;
CREATE TABLE `mto_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime(0) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `latest_post_id` bigint(20) NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `posts` int(11) NOT NULL,
  `thumbnail` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updated` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_9ki38gg59bw5agwxsc4xtednf`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mto_tag
-- ----------------------------
INSERT INTO `mto_tag` VALUES (1, '2019-04-30 09:00:54', NULL, 15, '语录', 13, NULL, '2019-04-30 09:27:01');
INSERT INTO `mto_tag` VALUES (2, '2019-04-30 09:16:23', NULL, 29, '指尖', 4, NULL, '2019-05-06 07:29:13');
INSERT INTO `mto_tag` VALUES (3, '2019-04-30 09:29:34', NULL, 23, '随笔', 8, NULL, '2019-04-30 09:45:14');
INSERT INTO `mto_tag` VALUES (4, '2019-04-30 09:57:13', NULL, 24, '壁纸', 1, NULL, '2019-04-30 09:57:13');
INSERT INTO `mto_tag` VALUES (7, '2019-06-06 11:20:14', NULL, 36, '感受', 1, NULL, '2019-06-06 11:20:14');
INSERT INTO `mto_tag` VALUES (8, '2019-06-11 13:51:34', NULL, 37, '夏日', 1, NULL, '2019-06-11 13:51:34');
INSERT INTO `mto_tag` VALUES (9, '2019-06-11 13:55:27', NULL, 38, '时光', 1, NULL, '2019-06-11 13:55:27');
INSERT INTO `mto_tag` VALUES (10, '2019-06-11 14:45:42', NULL, 39, '电音', 1, NULL, '2019-06-11 14:45:42');
INSERT INTO `mto_tag` VALUES (11, '2019-06-12 14:59:27', NULL, 40, '微笑', 1, NULL, '2019-06-12 14:59:27');
INSERT INTO `mto_tag` VALUES (12, '2019-10-28 11:18:01', NULL, 41, '网络', 1, NULL, '2019-10-28 11:18:01');
INSERT INTO `mto_tag` VALUES (13, '2019-11-06 15:48:10', NULL, 42, '世界', 1, NULL, '2019-11-06 15:48:10');
INSERT INTO `mto_tag` VALUES (14, '2019-11-07 15:19:00', NULL, 15, '经典语录', 2, NULL, '2019-11-12 09:32:32');

-- ----------------------------
-- Table structure for mto_user
-- ----------------------------
DROP TABLE IF EXISTS `mto_user`;
CREATE TABLE `mto_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/dist/images/ava/default.png',
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(5) NOT NULL,
  `created` datetime(0) NULL DEFAULT NULL,
  `updated` datetime(0) NULL DEFAULT NULL,
  `last_login` datetime(0) NULL DEFAULT NULL,
  `gender` int(5) NOT NULL,
  `role_id` int(11) NULL DEFAULT NULL,
  `comments` int(11) NOT NULL,
  `posts` int(11) NOT NULL,
  `signature` varchar(140) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_USERNAME`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mto_user
-- ----------------------------
INSERT INTO `mto_user` VALUES (1, 'admin', '指尖时光', '/storage/avatars/000/000/001_240.jpg', 'example@mtons.com', '3TGCQF25BLHU9R7IQUITN0FCC5', 0, '2017-08-06 17:52:41', '2017-07-26 11:08:36', '2019-11-19 07:49:28', 0, 1, 1, 40, '');
INSERT INTO `mto_user` VALUES (2, 'user1', '指尖分享', '/storage/avatars/000/000/002_240.jpg', NULL, 'UUKHSDDI5KPA43A8VL06V0TU2', 0, '2019-04-30 09:47:55', NULL, '2019-11-14 17:20:50', 0, NULL, 2, 2, '');
INSERT INTO `mto_user` VALUES (3, 'user2', '低调的ヽ华丽', '/storage/avatars/000/000/003_240.jpg', NULL, 'UUKHSDDI5KPA43A8VL06V0TU2', 0, '2019-04-30 09:48:05', NULL, '2019-06-25 14:55:46', 0, NULL, 2, 0, '');
INSERT INTO `mto_user` VALUES (4, 'user3', '向往自由', '/storage/avatars/000/000/004_240.jpg', NULL, 'UUKHSDDI5KPA43A8VL06V0TU2', 0, '2019-04-30 09:48:15', NULL, '2019-04-30 10:13:09', 0, NULL, 1, 0, NULL);
INSERT INTO `mto_user` VALUES (5, 'user4', '亲爱的我们一起手牵手°', '/storage/avatars/000/000/005_240.jpg', NULL, 'UUKHSDDI5KPA43A8VL06V0TU2', 0, '2019-04-30 09:48:23', NULL, '2019-04-30 10:13:40', 0, NULL, 1, 0, NULL);
INSERT INTO `mto_user` VALUES (6, 'user5', '墨兮', '/storage/avatars/000/000/006_240.jpg', NULL, 'UUKHSDDI5KPA43A8VL06V0TU2', 0, '2019-04-30 09:48:32', NULL, '2019-06-25 14:55:58', 0, NULL, 3, 0, NULL);
INSERT INTO `mto_user` VALUES (7, 'user6', '①生只爱你①人', 'https://en.gravatar.com/userimage/154673030/b9a54b5b990a61cc074668b2e2a0b8c0.png', NULL, 'UUKHSDDI5KPA43A8VL06V0TU2', 0, '2019-04-30 09:48:40', NULL, '2019-04-30 09:48:40', 0, NULL, 0, 0, NULL);
INSERT INTO `mto_user` VALUES (8, 'user7', 'ζ、三分愛，七分醒。', 'https://en.gravatar.com/userimage/154673030/b9a54b5b990a61cc074668b2e2a0b8c0.png', NULL, 'UUKHSDDI5KPA43A8VL06V0TU2', 0, '2019-04-30 09:48:47', NULL, '2019-04-30 09:48:47', 0, NULL, 0, 0, NULL);
INSERT INTO `mto_user` VALUES (9, 'user8', '相聚容易离别难', 'https://en.gravatar.com/userimage/154673030/b9a54b5b990a61cc074668b2e2a0b8c0.png', NULL, 'UUKHSDDI5KPA43A8VL06V0TU2', 0, '2019-04-30 09:49:02', NULL, '2019-04-30 09:49:02', 0, NULL, 0, 0, NULL);
INSERT INTO `mto_user` VALUES (10, 'user9', 'の岁月茹梭╰つ', 'https://en.gravatar.com/userimage/154673030/b9a54b5b990a61cc074668b2e2a0b8c0.png', NULL, 'UUKHSDDI5KPA43A8VL06V0TU2', 0, '2019-04-30 09:49:10', NULL, '2019-04-30 09:49:10', 0, NULL, 0, 0, NULL);
INSERT INTO `mto_user` VALUES (11, 'sdfasf', 'sdfasf', 'https://en.gravatar.com/userimage/154673030/b9a54b5b990a61cc074668b2e2a0b8c0.png', NULL, '3A415TH7PSGD4AVLE7FHONK2BQ', 0, '2019-05-30 10:25:48', NULL, '2019-05-30 10:25:48', 0, NULL, 0, 0, NULL);

-- ----------------------------
-- Table structure for mto_user_oauth
-- ----------------------------
DROP TABLE IF EXISTS `mto_user_oauth`;
CREATE TABLE `mto_user_oauth`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `access_token` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expire_in` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `oauth_code` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `oauth_type` int(11) NULL DEFAULT NULL,
  `oauth_user_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `refresh_token` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for shiro_permission
-- ----------------------------
DROP TABLE IF EXISTS `shiro_permission`;
CREATE TABLE `shiro_permission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(140) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_id` bigint(11) NULL DEFAULT NULL,
  `version` int(11) NULL DEFAULT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_NAME`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of shiro_permission
-- ----------------------------
INSERT INTO `shiro_permission` VALUES (1, '进入后台', 'admin', 0, 0, 0);
INSERT INTO `shiro_permission` VALUES (2, '栏目管理', 'channel:list', 0, 0, 0);
INSERT INTO `shiro_permission` VALUES (3, '编辑栏目', 'channel:update', 2, 0, 0);
INSERT INTO `shiro_permission` VALUES (4, '删除栏目', 'channel:delete', 2, 0, 0);
INSERT INTO `shiro_permission` VALUES (5, '文章管理', 'post:list', 0, 0, 0);
INSERT INTO `shiro_permission` VALUES (6, '编辑文章', 'post:update', 5, 0, 0);
INSERT INTO `shiro_permission` VALUES (7, '删除文章', 'post:delete', 5, 0, 0);
INSERT INTO `shiro_permission` VALUES (8, '评论管理', 'comment:list', 0, 0, 0);
INSERT INTO `shiro_permission` VALUES (9, '删除评论', 'comment:delete', 8, 0, 0);
INSERT INTO `shiro_permission` VALUES (10, '用户管理', 'user:list', 0, 0, 0);
INSERT INTO `shiro_permission` VALUES (11, '用户授权', 'user:role', 10, 0, 0);
INSERT INTO `shiro_permission` VALUES (12, '修改密码', 'user:pwd', 10, 0, 0);
INSERT INTO `shiro_permission` VALUES (13, '激活用户', 'user:open', 10, 0, 0);
INSERT INTO `shiro_permission` VALUES (14, '关闭用户', 'user:close', 10, 0, 0);
INSERT INTO `shiro_permission` VALUES (15, '角色管理', 'role:list', 0, 0, 0);
INSERT INTO `shiro_permission` VALUES (16, '修改角色', 'role:update', 15, 0, 0);
INSERT INTO `shiro_permission` VALUES (17, '删除角色', 'role:delete', 15, 0, 0);
INSERT INTO `shiro_permission` VALUES (18, '主题管理', 'theme:index', 0, 0, 0);
INSERT INTO `shiro_permission` VALUES (19, '系统配置', 'options:index', 0, 0, 0);
INSERT INTO `shiro_permission` VALUES (20, '修改配置', 'options:update', 19, 0, 0);

-- ----------------------------
-- Table structure for shiro_role
-- ----------------------------
DROP TABLE IF EXISTS `shiro_role`;
CREATE TABLE `shiro_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(140) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of shiro_role
-- ----------------------------
INSERT INTO `shiro_role` VALUES (1, NULL, 'admin', 0);

-- ----------------------------
-- Table structure for shiro_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `shiro_role_permission`;
CREATE TABLE `shiro_role_permission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `permission_id` bigint(20) NULL DEFAULT NULL,
  `role_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of shiro_role_permission
-- ----------------------------
INSERT INTO `shiro_role_permission` VALUES (1, 1, 1);
INSERT INTO `shiro_role_permission` VALUES (2, 2, 1);
INSERT INTO `shiro_role_permission` VALUES (3, 3, 1);
INSERT INTO `shiro_role_permission` VALUES (4, 4, 1);
INSERT INTO `shiro_role_permission` VALUES (5, 5, 1);
INSERT INTO `shiro_role_permission` VALUES (6, 6, 1);
INSERT INTO `shiro_role_permission` VALUES (7, 7, 1);
INSERT INTO `shiro_role_permission` VALUES (8, 8, 1);
INSERT INTO `shiro_role_permission` VALUES (9, 9, 1);
INSERT INTO `shiro_role_permission` VALUES (10, 10, 1);
INSERT INTO `shiro_role_permission` VALUES (11, 11, 1);
INSERT INTO `shiro_role_permission` VALUES (12, 12, 1);
INSERT INTO `shiro_role_permission` VALUES (13, 13, 1);
INSERT INTO `shiro_role_permission` VALUES (14, 14, 1);
INSERT INTO `shiro_role_permission` VALUES (15, 15, 1);
INSERT INTO `shiro_role_permission` VALUES (16, 16, 1);
INSERT INTO `shiro_role_permission` VALUES (17, 17, 1);
INSERT INTO `shiro_role_permission` VALUES (18, 18, 1);
INSERT INTO `shiro_role_permission` VALUES (19, 19, 1);
INSERT INTO `shiro_role_permission` VALUES (20, 20, 1);

-- ----------------------------
-- Table structure for shiro_user_role
-- ----------------------------
DROP TABLE IF EXISTS `shiro_user_role`;
CREATE TABLE `shiro_user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of shiro_user_role
-- ----------------------------
INSERT INTO `shiro_user_role` VALUES (1, 1, 1);

SET FOREIGN_KEY_CHECKS = 1;

-- ----------------------------
-- Table structure for mto_tag_like  我感兴趣的文章 分值 观看/点赞/收藏/ 1/3/5  这两个表都需要手动创建
-- ----------------------------
DROP TABLE IF EXISTS `mto_tag_like`;
CREATE TABLE `mto_tag_like` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT, -- 用户的个人id
  `uid` bigint(20) NOT NULL,
  `mto_tag` bigint(20) NOT NULL, -- 文章类型
  `score` bigint(20) DEFAULT NULL, -- 分值
  PRIMARY KEY (`id`)
)ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mto_tag_create 我发表的文章 分值 观看/点赞/收藏/ 1/3/5/15
-- ----------------------------
DROP TABLE IF EXISTS `mto_tag_create`;
CREATE TABLE `mto_tag_create` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
    `uid` bigint(20) NOT NULL,
  `mto_tag` bigint(20) NOT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `user_rec_score`;
CREATE TABLE `user_rec_score` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
   `uid` bigint(20) NOT NULL,
  `weight` double NOT NULL,
  `score` bigint(20) DEFAULT NULL,
  `firsttime` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;