/*
 Navicat Premium Dump SQL

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80041 (8.0.41)
 Source Host           : localhost:3306
 Source Schema         : db_lpyx

 Target Server Type    : MySQL
 Target Server Version : 80041 (8.0.41)
 File Encoding         : 65001

 Date: 06/08/2025 23:42:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand`
(
    `id`          bigint                                                        NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `name`        varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL     DEFAULT NULL COMMENT '品牌名称',
    `logo`        varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL     DEFAULT NULL COMMENT '品牌图标',
    `create_time` timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `is_deleted`  tinyint                                                       NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 7
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci COMMENT = '分类品牌'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand`
VALUES (1, '小米', 'http://127.0.0.1:9000/lpyx-bucket/20250804/73d4cd96bbaf44cb97cd61739e76d2ddxiaomi.webp',
        '2025-08-04 09:30:27', '2025-08-04 14:02:52', 0);
INSERT INTO `brand`
VALUES (2, '华为', 'http://127.0.0.1:9000/lpyx-bucket/20250804/cce0dd43e8294cd4b18c9eb4bb5581c4huawei.webp',
        '2025-08-04 09:31:19', '2025-08-04 14:02:55', 0);
INSERT INTO `brand`
VALUES (6, '11', NULL, '2025-08-02 17:37:05', '2025-08-02 17:38:06', 1);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`
(
    `id`          bigint                                                        NOT NULL AUTO_INCREMENT COMMENT '分类id',
    `name`        varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci  NULL     DEFAULT NULL COMMENT '分类名称',
    `image_url`   varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL     DEFAULT NULL,
    `parent_id`   bigint                                                        NULL     DEFAULT NULL COMMENT '父分类id',
    `status`      tinyint                                                       NULL     DEFAULT NULL COMMENT '是否显示[0-不显示，1显示]',
    `order_num`   int                                                           NULL     DEFAULT NULL COMMENT '排序',
    `create_time` timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `is_deleted`  tinyint                                                       NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 9992
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品分类'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category`
VALUES (1, '数码办公', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/230f48f024a343c6be9be72597c2dcd0.png', 0, 1, 1,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (2, '手机通讯', '', 1, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (3, '手机', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204943.png', 2, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (4, '对讲机', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204944.png', 2, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (5, '摄影摄像', '', 1, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (6, '数码相机', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204947.png', 5, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (7, '单电/微单相机', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204948.png', 5, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (8, '单反相机', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204949.png', 5, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (9, '摄像机', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204950.png', 5, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (10, '拍立得', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204951.png', 5, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (11, '镜头', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204952.png', 5, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (12, '数码配件', '', 1, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (13, '存储卡', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204954.png', 12, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (14, '读卡器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204955.png', 12, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (15, '滤镜', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204956.png', 12, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (16, '闪光灯/手柄', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204957.png', 12, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (17, '相机包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204958.png', 12, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (18, '三脚架/云台', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204959.png', 12, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (19, '相机清洁', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204960.png', 12, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (20, '相机贴膜	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204961.png', 12, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (21, '机身附件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204962.png', 12, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (22, '镜头附件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204963.png', 12, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (23, '电池/充电器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204964.png', 12, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (24, '移动电源', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204965.png', 12, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (25, 'SSS', '', 12, 1, 100, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (26, '时尚影音', '', 1, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (27, 'MP3/MP4', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204967.png', 26, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (28, '智能设备', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204968.png', 26, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (29, '耳机/耳麦', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204969.png', 26, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (30, '音箱', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204970.png', 26, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (31, '高清播放器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204971.png', 26, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (32, '电子书', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204972.png', 26, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (33, '电子词典', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204973.png', 26, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (34, 'MP3/MP4配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204974.png', 26, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (35, '录音笔', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204975.png', 26, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (36, '麦克风', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204976.png', 26, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (37, '专业音频', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204977.png', 26, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (38, '电子教育', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204978.png', 26, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (39, '数码相框', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204979.png', 26, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (40, '苹果配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204980.png', 26, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (41, '电脑整机', '', 1, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (42, '笔记本', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204982.png', 41, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (43, '超极本', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204983.png', 41, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (44, '游戏本', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204984.png', 41, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (45, '平板电脑', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204985.png', 41, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (46, '平板电脑配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204986.png', 41, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (47, '台式机', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204987.png', 41, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (48, '服务器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204988.png', 41, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (49, '笔记本配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204989.png', 41, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (50, '电脑配件', '', 1, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (51, 'CPU', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399105.png', 50, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (52, '主板', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399106.png', 50, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (53, '显卡', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399107.png', 50, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (54, '硬盘', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399108.png', 50, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (55, 'SSD固态硬盘	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399109.png', 50, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (56, '内存', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399110.png', 50, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (57, '机箱	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399111.png', 50, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (58, '电源', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399112.png', 50, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (59, '显示器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399113.png', 50, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (60, '刻录机/光驱	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399114.png', 50, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (61, '散热器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399115.png', 50, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (62, '声卡/扩展卡', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399116.png', 50, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (63, '装机配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399117.png', 50, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (64, '外设产品', '', 1, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (65, '鼠标', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399119.png', 64, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (66, '键盘', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399120.png', 64, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (67, '移动硬盘', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399121.png', 64, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (68, 'U盘', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399122.png', 64, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (69, '摄像头', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399123.png', 64, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (70, '外置盒', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399124.png', 64, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (71, '游戏设备', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399125.png', 64, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (72, '电视盒', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399126.png', 64, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (73, '手写板	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399127.png', 64, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (74, '鼠标垫', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399128.png', 64, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (75, '插座', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399129.png', 64, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (76, 'UPS电源	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399130.png', 64, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (77, '线缆	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399131.png', 64, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (78, '电脑工具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399132.png', 64, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (79, '电脑清洁', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399133.png', 64, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (80, '网络产品', '', 1, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (81, '路由器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399135.png', 80, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (82, '网卡', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399136.png', 80, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (83, '交换机', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399137.png', 80, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (84, '网络存储', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399138.png', 80, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (85, '3G上网', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399139.png', 80, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (86, '网络盒子	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399140.png', 80, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (87, '办公打印', '', 1, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (88, '打印机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399142.png', 87, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (89, '一体机', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399143.png', 87, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (90, '投影机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399144.png', 87, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (91, '投影配件	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399145.png', 87, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (92, '传真机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399146.png', 87, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (93, '复合机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399147.png', 87, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (94, '碎纸机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399148.png', 87, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (95, '扫描仪	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399149.png', 87, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (96, '墨盒	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399150.png', 87, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (97, '墨粉', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399151.png', 87, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (98, '色带', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399152.png', 87, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (99, '定制服务', '', 87, 1, 100, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (100, '办公文仪', '', 1, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (101, '办公文具	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399154.png', 100, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (102, '文件管理	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399155.png', 100, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (103, '笔类	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399156.png', 100, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (104, '纸类	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399157.png', 100, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (105, '本册/便签	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399158.png', 100, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (106, '学生文具	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399159.png', 100, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (107, '财务用品	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399160.png', 100, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (108, '计算器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399161.png', 100, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (109, '激光笔', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399162.png', 100, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (110, '白板/封装	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399163.png', 100, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (111, '考勤机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399164.png', 100, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (112, '刻录碟片/附件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399165.png', 100, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (113, '点钞机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399166.png', 100, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (114, '支付设备/POS机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399167.png', 100, 1,
        0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (115, '安防监控	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399168.png', 100, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (116, '呼叫/会议设备	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399169.png', 100, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (117, '保险柜', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399170.png', 100, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (118, '办公家具	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399171.png', 100, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (119, '家用电器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/ada7d39419554cb1ab52b3d5aae1563a.png', 0, 1,
        2, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (120, '大家电', '', 119, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (121, '平板电视	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399555.png', 120, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (122, '空调	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399556.png', 120, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (123, '冰箱', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399557.png', 120, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (124, '洗衣机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399558.png', 120, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (125, '家庭影院	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399559.png', 120, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (126, 'DVD播放机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399560.png', 120, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (127, '迷你音响	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399561.png', 120, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (128, '烟机/灶具	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399562.png', 120, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (129, '热水器	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399563.png', 120, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (130, '消毒柜/洗碗机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399564.png', 120, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (131, '酒柜/冰吧/冷柜	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399565.png', 120, 1,
        0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (132, '家电配件	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399566.png', 120, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (133, '生活电器', '', 119, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (134, '电风扇	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399568.png', 133, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (135, '吸尘器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399569.png', 133, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (136, '加湿器	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399570.png', 133, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (137, '净水设备	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399571.png', 133, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (138, '饮水机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399572.png', 133, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (139, '冷风扇	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399573.png', 133, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (140, '电话机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399574.png', 133, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (141, '插座	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399575.png', 133, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (142, '除湿/干衣机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399576.png', 133, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (143, '清洁机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399577.png', 133, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (144, '取暖电器	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399578.png', 133, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (145, '其它生活电器	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399579.png', 133, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (146, '厨房电器', '', 119, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (147, '料理/榨汁机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399581.png', 146, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (148, '豆浆机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399582.png', 146, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (149, '电饭煲	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399583.png', 146, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (150, '电压力锅	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399584.png', 146, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (151, '面包机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399585.png', 146, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (152, '咖啡机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399586.png', 146, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (153, '微波炉	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399587.png', 146, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (154, '电烤箱	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399588.png', 146, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (155, '电饼铛/烧烤盘	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399589.png', 146, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (156, '煮蛋器	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399590.png', 146, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (157, '电水壶/热水瓶	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399591.png', 146, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (158, '其它厨房电器	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399592.png', 146, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (159, '五金家装', '', 119, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (160, '电动工具	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399609.png', 159, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (161, '手动工具	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399610.png', 159, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (162, '仪器仪表	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399611.png', 159, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (163, '浴霸/排气扇	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399612.png', 159, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (164, '灯具	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399613.png', 159, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (165, 'LED灯	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399614.png', 159, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (166, '水槽	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399615.png', 159, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (167, '龙头', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399616.png', 159, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (168, '淋浴花洒	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399617.png', 159, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (169, '厨卫五金	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399618.png', 159, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (170, '家具五金', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399619.png', 159, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (171, '插座	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399620.png', 159, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (172, '电工电料	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399621.png', 159, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (173, '监控安防	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399622.png', 159, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (174, '服装鞋帽', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/9bd0d0ed2ec546619d62889f2ae465c7.jpeg', 0, 1,
        3, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (175, '女装', '', 174, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (176, 'T恤', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204801.png', 175, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (177, '衬衫', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204802.png', 175, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (178, '雪纺衫', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204803.png', 175, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (179, '卫衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204804.png', 175, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (180, '马甲', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204805.png', 175, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (181, '连衣裙', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204806.png', 175, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (182, '半身裙', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204807.png', 175, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (183, '牛仔裤', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204808.png', 175, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (184, '休闲裤', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204809.png', 175, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (185, '正装裤', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204810.png', 175, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (186, '西服', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204811.png', 175, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (187, '短外套', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204812.png', 175, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (188, '风衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204813.png', 175, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (189, '大衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204814.png', 175, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (190, '皮衣皮草', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204815.png', 175, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (191, '棉服', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204816.png', 175, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (192, '羽绒服', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204817.png', 175, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (193, '孕妇装', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204818.png', 175, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (194, '大码装', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204819.png', 175, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (195, '婚纱礼服', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204820.png', 175, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (196, '男装', '', 174, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (197, '衬衫', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204822.png', 196, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (198, 'T恤', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204823.png', 196, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (199, 'POLO衫', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204824.png', 196, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (200, '针织衫', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204825.png', 196, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (201, '卫衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204826.png', 196, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (202, '马甲／背心', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204827.png', 196, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (203, '夹克', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204828.png', 196, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (204, '风衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204829.png', 196, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (205, '大衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204830.png', 196, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (206, '皮衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204831.png', 196, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (207, '外套', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204832.png', 196, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (208, '西服', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204833.png', 196, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (209, '牛仔裤', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204834.png', 196, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (210, '休闲裤', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204835.png', 196, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (211, '西裤', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204836.png', 196, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (212, '西服套装', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204837.png', 196, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (213, '大码装', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204838.png', 196, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (214, '中老年装', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204839.png', 196, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (215, '唐装', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204840.png', 196, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (216, '工装', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204841.png', 196, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (217, '内衣', '', 174, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (218, '文胸', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204843.png', 217, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (219, '女式内裤', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204844.png', 217, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (220, '男式内裤', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204845.png', 217, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (221, '家居', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204846.png', 217, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (222, '睡衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204847.png', 217, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (223, '塑身衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204848.png', 217, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (224, '睡袍／浴袍', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204849.png', 217, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (225, '泳衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204850.png', 217, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (226, '背心', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204851.png', 217, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (227, '抹胸', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204852.png', 217, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (228, '连裤袜', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204853.png', 217, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (229, '美腿袜', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204854.png', 217, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (230, '男袜', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204855.png', 217, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (231, '女袜', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204856.png', 217, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (232, '情趣内衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204857.png', 217, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (233, '保暖内衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204858.png', 217, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (234, '运动', '', 174, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (235, '休闲鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204860.png', 234, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (236, '帆布鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204861.png', 234, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (237, '跑步鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204862.png', 234, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (238, '篮球鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204863.png', 234, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (239, '足球鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204864.png', 234, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (240, '训练鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204865.png', 234, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (241, '乒羽鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204866.png', 234, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (242, '拖鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204867.png', 234, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (243, '卫衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204868.png', 234, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (244, '夹克', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204869.png', 234, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (245, 'T恤', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204870.png', 234, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (246, '棉服／羽绒服', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204871.png', 234, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (247, '运动裤', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204872.png', 234, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (248, '套装', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204873.png', 234, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (249, '运动包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204874.png', 234, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (250, '运动配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204875.png', 234, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (251, '女鞋', '', 174, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (252, '平底鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204877.png', 251, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (253, '高跟鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204878.png', 251, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (254, '单鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204879.png', 251, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (255, '休闲鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204880.png', 251, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (256, '凉鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204881.png', 251, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (257, '女靴', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204882.png', 251, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (258, '雪地靴', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204883.png', 251, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (259, '拖鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204884.png', 251, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (260, '裸靴', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204885.png', 251, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (261, '筒靴', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204886.png', 251, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (262, '帆布鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204887.png', 251, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (263, '雨鞋／雨靴', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204888.png', 251, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (264, '妈妈鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204889.png', 251, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (265, '鞋配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204890.png', 251, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (266, '特色鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204891.png', 251, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (267, '鱼嘴鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204892.png', 251, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (268, '布鞋／绣花鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204893.png', 251, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (269, '男鞋', '', 174, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (270, '商务休闲鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204895.png', 269, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (271, '正装鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204896.png', 269, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (272, '休闲鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204897.png', 269, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (273, '凉鞋／沙滩鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204898.png', 269, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (274, '男靴', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204899.png', 269, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (275, '功能鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204900.png', 269, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (276, '拖鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204901.png', 269, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (277, '传统布鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204902.png', 269, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (278, '鞋配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204903.png', 269, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (279, '帆布鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204904.png', 269, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (280, '豆豆鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204905.png', 269, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (281, '驾车鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204906.png', 269, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (282, '配饰', '', 174, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (283, '太阳镜', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204908.png', 282, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (284, '框镜', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204909.png', 282, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (285, '皮带', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204910.png', 282, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (286, '围巾', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204911.png', 282, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (287, '手套', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204912.png', 282, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (288, '帽子', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204913.png', 282, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (289, '领带', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204914.png', 282, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (290, '袖扣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204915.png', 282, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (291, '其他配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204916.png', 282, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (292, '丝巾', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204917.png', 282, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (293, '披肩', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204918.png', 282, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (294, '腰带', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204919.png', 282, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (295, '腰链／腰封', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204920.png', 282, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (296, '棒球帽', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204921.png', 282, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (297, '毛线', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204922.png', 282, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (298, '遮阳帽', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204923.png', 282, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (299, '防紫外线手套', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204924.png', 282, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (300, '草帽', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204925.png', 282, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (301, '童装', '', 174, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (302, '套装', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204927.png', 301, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (303, '上衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204928.png', 301, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (304, '裤子', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204929.png', 301, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (305, '裙子', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204930.png', 301, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (306, '内衣／家居服', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204931.png', 301, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (307, '羽绒服／棉服', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204932.png', 301, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (308, '亲子装', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204933.png', 301, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (309, '儿童配饰', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204934.png', 301, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (310, '礼服／演出服', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204935.png', 301, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (311, '运动鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204936.png', 301, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (312, '单鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204937.png', 301, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (313, '靴子', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204938.png', 301, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (314, '凉鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204939.png', 301, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (315, '功能鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204940.png', 301, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (316, '食品饮料', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/24b886dd9ea84559bdf173320b6c7366.png', 0, 1,
        3, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (317, '进口食品', '', 316, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (318, '饼干蛋糕', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399365.png', 317, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (319, '糖果巧克力', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399366.png', 317, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (320, '休闲零食', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399367.png', 317, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (321, '冲调饮品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399368.png', 317, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (322, '粮油调味', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399369.png', 317, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (323, '地方特产', '', 316, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (324, '华北', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399371.png', 323, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (325, '西北', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399372.png', 323, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (326, '西南', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399373.png', 323, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (327, '东北', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399374.png', 323, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (328, '华南', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399375.png', 323, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (329, '华东', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399376.png', 323, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (330, '华中', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399377.png', 323, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (331, '休闲食品', '', 316, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (332, '休闲零食', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399379.png', 331, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (333, '坚果炒货', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399380.png', 331, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (334, '肉干肉松', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399381.png', 331, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (335, '蜜饯果脯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399382.png', 331, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (336, '糖果/巧克力', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399383.png', 331, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (337, '饼干蛋糕', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399384.png', 331, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (338, '粮油调味', '', 316, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (339, '米面杂粮', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399386.png', 338, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (340, '食用油', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399387.png', 338, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (341, '调味品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399388.png', 338, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (342, '南北干货', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399389.png', 338, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (343, '方便食品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399390.png', 338, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (344, '有机食品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399391.png', 338, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (345, '中外名酒', '', 316, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (346, '白酒', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399393.png', 345, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (347, '洋酒', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399394.png', 345, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (348, '葡萄酒', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399395.png', 345, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (349, '啤酒', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399396.png', 345, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (350, '黄酒', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399397.png', 345, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (351, '饮料冲调', '', 316, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (352, '水', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399399.png', 351, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (353, '饮料', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399400.png', 351, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (354, '牛奶', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399401.png', 351, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (355, '茶叶', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399402.png', 351, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (356, '咖啡/奶茶', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399403.png', 351, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (357, '冲饮谷物', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399404.png', 351, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (358, '营养健康', '', 316, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (359, '基础营养', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399406.png', 358, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (360, '美体养颜', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399407.png', 358, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (361, '滋补调养', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399408.png', 358, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (362, '骨骼健康', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399409.png', 358, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (363, '保健茶饮', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399410.png', 358, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (364, '成分保健', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399411.png', 358, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (365, '无糖食品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399412.png', 358, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (366, '亚健康调理', '', 316, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (367, '调节三高', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399414.png', 366, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (368, '心脑养护', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399415.png', 366, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (369, '改善睡眠', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399416.png', 366, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (370, '肝肾养护', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399417.png', 366, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (371, '免疫调节', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399418.png', 366, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (372, '更多调理', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399419.png', 366, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (373, '健康礼品', '', 316, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (374, '参茸礼品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399421.png', 373, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (375, '更多礼品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399422.png', 373, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (376, '生鲜食品', '', 316, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (377, '水果', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399424.png', 376, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (378, '蔬菜', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399425.png', 376, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (379, '海鲜水产', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399426.png', 376, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (380, '禽蛋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399427.png', 376, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (381, '鲜肉', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399428.png', 376, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (382, '加工类肉食', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399429.png', 376, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (383, '冻品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399430.png', 376, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (384, '半成品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399431.png', 376, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (385, '礼品箱包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/ebc6c9e114d6416f9985a3ff7c8ea19f.png', 0, 1,
        4, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (386, '潮流女包', '', 385, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (387, '钱包/卡包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399174.png', 386, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (388, '手拿包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399175.png', 386, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (389, '单肩包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399176.png', 386, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (390, '双肩包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399177.png', 386, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (391, '手提包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399178.png', 386, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (392, '斜挎包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399179.png', 386, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (393, '时尚男包', '', 385, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (394, '钱包/卡包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399181.png', 393, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (395, '男士手包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399182.png', 393, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (396, '腰带／礼盒', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399183.png', 393, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (397, '商务公文包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399184.png', 393, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (398, '功能箱包', '', 385, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (399, '电脑数码包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399186.png', 398, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (400, '拉杆箱', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399187.png', 398, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (401, '旅行包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399188.png', 398, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (402, '旅行用品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399189.png', 398, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (403, '休闲运动包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399190.png', 398, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (404, '登山包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399191.png', 398, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (405, '妈咪包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399192.png', 398, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (406, '书包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399193.png', 398, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (407, '礼品', '', 385, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (408, '火机烟具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399195.png', 407, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (409, '礼品文具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399196.png', 407, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (410, '瑞士军刀', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399197.png', 407, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (411, '收藏品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399198.png', 407, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (412, '工艺礼品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399199.png', 407, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (413, '创意礼品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399200.png', 407, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (414, '礼卡礼卷', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399201.png', 407, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (415, '鲜花速递', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399202.png', 407, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (416, '婚庆用品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399203.png', 407, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (417, '奢侈品', '', 385, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (418, '奢侈品箱包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399205.png', 417, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (419, '钱包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399206.png', 417, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (420, '服饰', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399207.png', 417, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (421, '腰带', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399208.png', 417, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (422, '太阳镜眼镜', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399209.png', 417, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (423, '配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399210.png', 417, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (424, 'GUCCI', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399211.png', 417, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (425, 'PRADA', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399212.png', 417, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (426, 'FENDI', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399213.png', 417, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (427, 'BURBERRY', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399214.png', 417, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (428, 'ARMANI', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399215.png', 417, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (429, 'COACH', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399216.png', 417, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (430, '个护化妆', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/9a107ef24c444b30bf3a577ed9630fe1.jpeg', 0, 1,
        4, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (431, '面部护理', '', 430, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (432, '洁面乳', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399320.png', 431, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (433, '爽肤水	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399321.png', 431, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (434, '精华露	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399322.png', 431, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (435, '乳液面霜	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399323.png', 431, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (436, '面膜面贴	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399324.png', 431, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (437, '眼部护理	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399325.png', 431, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (438, 'T区护理	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399326.png', 431, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (439, '护肤套装	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399327.png', 431, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (440, '防晒隔离	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399328.png', 431, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (441, '身体护理', '', 430, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (442, '洗发护发	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399330.png', 441, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (443, '染发/造型	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399331.png', 441, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (444, '沐浴', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399332.png', 441, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (445, '身体乳	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399333.png', 441, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (446, '香薰精油	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399334.png', 441, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (447, '纤体瘦身	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399335.png', 441, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (448, '脱毛膏', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399336.png', 441, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (449, '手足护理	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399337.png', 441, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (450, '洗护套装	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399338.png', 441, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (451, '口腔护理', '', 430, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (452, '牙膏/牙粉	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399340.png', 451, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (453, '漱口水	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399341.png', 451, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (454, '女性护理', '', 430, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (455, '卫生巾	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399343.png', 454, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (456, '卫生护垫	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399344.png', 454, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (457, '洗液	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399345.png', 454, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (458, '男士护理', '', 430, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (459, '男士香水	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399347.png', 458, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (460, '剃须护理	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399348.png', 458, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (461, '魅力彩妆', '', 430, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (462, '粉底/遮瑕	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399350.png', 461, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (463, '腮红	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399351.png', 461, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (464, '眼影/眼线	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399352.png', 461, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (465, '眉笔	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399353.png', 461, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (466, '睫毛膏	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399354.png', 461, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (467, '唇膏唇彩	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399355.png', 461, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (468, '彩妆组合	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399356.png', 461, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (469, '卸妆', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399357.png', 461, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (470, '美甲	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399358.png', 461, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (471, '假发', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399359.png', 461, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (472, '香水SPA', '', 430, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (473, '女士香水', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399361.png', 472, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (474, '男士香水	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399362.png', 472, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (475, '厨房餐饮', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/155c65e778204372ac196ab6cd7cd598.png', 0, 1,
        5, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (476, '烹饪锅具', '', 475, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (477, '炒锅', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399276.png', 476, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (478, '煎锅', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399277.png', 476, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (479, '压力锅', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399278.png', 476, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (480, '汤锅', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399279.png', 476, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (481, '蒸锅', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399280.png', 476, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (482, '奶锅', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399281.png', 476, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (483, '套锅', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399282.png', 476, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (484, '煲锅', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399283.png', 476, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (485, '水壶', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399284.png', 476, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (486, '刀剪菜板', '', 475, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (487, '单刀', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399286.png', 486, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (488, '剪刀', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399287.png', 486, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (489, '套刀', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399288.png', 486, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (490, '砧板', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399289.png', 486, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (491, '刀具配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399290.png', 486, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (492, '收纳保鲜', '', 475, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (493, '保鲜盒', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399292.png', 492, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (494, '保鲜膜/袋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399293.png', 492, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (495, '塑料器皿', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399294.png', 492, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (496, '饭盒/提锅', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399295.png', 492, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (497, '水具酒具', '', 475, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (498, '塑料杯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399297.png', 497, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (499, '运动水壶', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399298.png', 497, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (500, '玻璃杯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399299.png', 497, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (501, '陶瓷马克杯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399300.png', 497, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (502, '保温壶', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399301.png', 497, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (503, '杯具套件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399302.png', 497, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (504, '餐具', '', 475, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (505, '餐具套装', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399304.png', 504, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (506, '碗/碟/盘', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399305.png', 504, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (507, '筷勺/刀叉', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399306.png', 504, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (508, '一次性餐具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399307.png', 504, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (509, '茶具/咖啡具', '', 475, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (510, '整套茶具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399309.png', 509, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (511, '茶杯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399310.png', 509, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (512, '茶壶', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399311.png', 509, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (513, '茶盘茶托', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399312.png', 509, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (514, '茶叶罐', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399313.png', 509, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (515, '茶具配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399314.png', 509, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (516, '茶宠摆件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399315.png', 509, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (517, '咖啡具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399316.png', 509, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (518, '其他', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399317.png', 509, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (519, '家居家装', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/d1a0cea8d5554bafafef7734efc08820.png', 0, 1,
        10, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (520, '家纺', '', 519, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (521, '床品套件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399219.png', 520, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (522, '被子', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399220.png', 520, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (523, '枕芯枕套', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399221.png', 520, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (524, '床单被罩', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399222.png', 520, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (525, '毛巾被/毯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399223.png', 520, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (526, '床垫/床褥', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399224.png', 520, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (527, '蚊帐/凉席', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399225.png', 520, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (528, '抱枕坐垫', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399226.png', 520, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (529, '毛巾家纺', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399227.png', 520, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (530, '', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399228.png', 520, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (531, '窗帘/窗纱', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399229.png', 520, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (532, '酒店用品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399230.png', 520, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (533, '灯具', '', 519, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (534, '台灯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399232.png', 533, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (535, '节能灯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399233.png', 533, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (536, '装饰灯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399234.png', 533, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (537, '落地灯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399235.png', 533, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (538, '应急灯/手电', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399236.png', 533, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (539, 'LED灯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399237.png', 533, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (540, '吸顶灯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399238.png', 533, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (541, '五金电器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399239.png', 533, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (542, '吊灯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399240.png', 533, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (543, '氛围照明', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399241.png', 533, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (544, '生活日用', '', 519, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (545, '收纳用品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399243.png', 544, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (546, '雨伞雨具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399244.png', 544, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (547, '浴室用品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399245.png', 544, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (548, '缝纫用品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399246.png', 544, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (549, '洗晒用品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399247.png', 544, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (550, '净化除味', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399248.png', 544, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (551, '家装软饰', '', 519, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (552, '桌布/罩件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399250.png', 551, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (553, '地毯地垫', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399251.png', 551, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (554, '沙发垫套', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399252.png', 551, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (555, '相框/相片墙', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399253.png', 551, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (556, '墙画墙贴', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399254.png', 551, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (557, '节庆饰品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399255.png', 551, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (558, '手工/十字绣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399256.png', 551, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (559, '工艺摆件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399257.png', 551, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (560, '其他', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399258.png', 551, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (561, '清洁日用', '', 519, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (562, '纸品湿巾', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399260.png', 561, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (563, '衣物清洁', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399261.png', 561, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (564, '清洁工具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399262.png', 561, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (565, '驱虫用品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399263.png', 561, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (566, '居室清洁', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399264.png', 561, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (567, '皮具护理', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399265.png', 561, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (568, '宠物生活', '', 519, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (569, '宠物主粮', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399267.png', 568, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (570, '宠物零食', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399268.png', 568, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (571, '营养品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399269.png', 568, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (572, '家居日用', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399270.png', 568, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (573, '玩具服饰', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399271.png', 568, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (574, '出行装备', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399272.png', 568, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (575, '医护美容', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399273.png', 568, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (576, '汽车用品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/665dd952b54e4911b99b5e1eba4b164f.png', 0, 1,
        10, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (577, '电子电器', '', 576, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (578, '导航仪', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399488.png', 577, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (579, '安全预警仪', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399489.png', 577, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (580, '行车记录仪', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399490.png', 577, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (581, '倒车雷达', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399491.png', 577, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (582, '车载电源', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399492.png', 577, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (583, '车载蓝牙', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399493.png', 577, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (584, '车载影音', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399494.png', 577, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (585, '车载净化器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399495.png', 577, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (586, '车载冰箱', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399496.png', 577, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (587, '车载吸尘器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399497.png', 577, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (588, '充气泵', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399498.png', 577, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (589, '车载生活电器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399499.png', 577, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (590, '系统养护', '', 576, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (591, '机油', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399501.png', 590, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (592, '添加剂', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399502.png', 590, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (593, '防冻冷却液', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399503.png', 590, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (594, '附属油', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399504.png', 590, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (595, '底盘装甲', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399505.png', 590, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (596, '空调清洗剂', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399506.png', 590, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (597, '改装配件', '', 576, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (598, '雨刷', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399508.png', 597, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (599, '车灯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399509.png', 597, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (600, '轮胎', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399510.png', 597, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (601, '贴膜', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399511.png', 597, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (602, '后视镜', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399512.png', 597, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (603, '机油滤', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399513.png', 597, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (604, '火花塞', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399514.png', 597, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (605, '刹车片', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399515.png', 597, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (606, '蓄电池', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399516.png', 597, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (607, '车身装饰', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399517.png', 597, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (608, '维修配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399518.png', 597, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (609, '汽修工具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399519.png', 597, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (610, '汽车美容', '', 576, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (611, '漆面美容', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399521.png', 610, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (612, '漆面修复', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399522.png', 610, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (613, '内饰清洁', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399523.png', 610, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (614, '玻璃美容', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399524.png', 610, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (615, '洗车机', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399525.png', 610, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (616, '洗车水枪', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399526.png', 610, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (617, '洗车配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399527.png', 610, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (618, '车掸', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399528.png', 610, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (619, '洗车液', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399529.png', 610, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (620, '坐垫脚垫', '', 576, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (621, '脚垫', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399531.png', 620, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (622, '坐垫', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399532.png', 620, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (623, '座套', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399533.png', 620, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (624, '内饰精品', '', 576, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (625, '车用香水', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399535.png', 624, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (626, '车用炭包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399536.png', 624, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (627, '头枕腰枕', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399537.png', 624, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (628, '方向盘套', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399538.png', 624, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (629, '功能小件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399539.png', 624, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (630, '车内挂饰', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399540.png', 624, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (631, '安全自驾', '', 576, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (632, '安全座椅', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399542.png', 631, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (633, '应急救援', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399543.png', 631, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (634, '汽修工具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399544.png', 631, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (635, '保温箱', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399545.png', 631, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (636, '储物箱', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399546.png', 631, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (637, '车衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399547.png', 631, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (638, '车锁', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399548.png', 631, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (639, '摩托车设备', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399549.png', 631, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (640, '整车', '', 576, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (641, '新车', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399551.png', 640, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (642, '二手车', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399552.png', 640, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (643, '玩具乐器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/0f423fb60f084b2caade164fae25a9a0.png', 0, 1,
        10, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (644, '适用年龄', '', 643, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (645, '1-3岁', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399678.png', 644, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (646, '3-6岁', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399679.png', 644, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (647, '6-14岁', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399680.png', 644, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (648, '14岁以上', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399681.png', 644, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (649, '遥控/电动', '', 643, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (650, '遥控车', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399683.png', 649, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (651, '遥控飞机', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399684.png', 649, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (652, '遥控船', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399685.png', 649, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (653, '机器人/电动', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399686.png', 649, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (654, '轨道/助力', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399687.png', 649, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (655, '毛绒布艺', '', 643, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (656, '毛绒/布艺', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399689.png', 655, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (657, '靠垫/抱枕', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399690.png', 655, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (658, '娃娃玩具', '', 643, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (659, '芭比娃娃', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399692.png', 658, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (660, '卡通娃娃', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399693.png', 658, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (661, '智能娃娃', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399694.png', 658, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (662, '模型玩具', '', 643, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (663, '仿真模型', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399696.png', 662, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (664, '拼插模型', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399697.png', 662, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (665, '收藏爱好', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399698.png', 662, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (666, '健身玩具', '', 643, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (667, '炫舞毯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399700.png', 666, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (668, '爬行垫/毯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399701.png', 666, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (669, '户外玩具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399702.png', 666, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (670, '戏水玩具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399703.png', 666, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (671, '动漫玩具', '', 643, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (672, '电影周边', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399705.png', 671, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (673, '卡通周边', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399706.png', 671, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (674, '网游周边', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399707.png', 671, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (675, '益智玩具', '', 643, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (676, '摇铃/床铃', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399709.png', 675, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (677, '健身架', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399710.png', 675, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (678, '早教启智', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399711.png', 675, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (679, '拖拉玩具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399712.png', 675, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (680, '积木拼插', '', 643, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (681, '积木', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399714.png', 680, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (682, '拼图', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399715.png', 680, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (683, '磁力棒', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399716.png', 680, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (684, '立体拼插', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399717.png', 680, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (685, 'DIY玩具', '', 643, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (686, '手工彩泥', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399719.png', 685, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (687, '绘画工具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399720.png', 685, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (688, '情景玩具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399721.png', 685, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (689, '创意减压', '', 643, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (690, '减压玩具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399723.png', 689, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (691, '创意玩具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399724.png', 689, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (692, '乐器相关', '', 643, 1, 0, '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (693, '钢琴', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399726.png', 692, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (694, '电子琴', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399727.png', 692, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (695, '手风琴', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399728.png', 692, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (696, '吉他/贝斯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399729.png', 692, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (697, '民族管弦乐器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399730.png', 692, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (698, '西洋管弦乐', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399731.png', 692, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (699, '口琴/口风琴/竖笛', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399732.png', 692, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (700, '西洋打击乐器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399733.png', 692, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (701, '各式乐器配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399734.png', 692, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (702, '电脑音乐', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399735.png', 692, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);
INSERT INTO `category`
VALUES (703, '工艺礼品乐器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399736.png', 692, 1, 0,
        '2025-08-01 15:51:28', '2025-08-01 15:51:28', 0);

-- ----------------------------
-- Table structure for category_brand
-- ----------------------------
DROP TABLE IF EXISTS `category_brand`;
CREATE TABLE `category_brand`
(
    `id`          bigint    NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `brand_id`    bigint    NULL     DEFAULT NULL COMMENT '品牌ID',
    `category_id` bigint    NULL     DEFAULT NULL COMMENT '分类ID',
    `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `is_deleted`  tinyint   NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 8
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci COMMENT = '分类品牌'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category_brand
-- ----------------------------
INSERT INTO `category_brand`
VALUES (1, 2, 3, '2025-08-04 10:59:08', '2025-08-04 16:03:53', 0);
INSERT INTO `category_brand`
VALUES (2, 1, 3, '2025-08-04 14:14:07', '2025-08-04 16:03:56', 0);
INSERT INTO `category_brand`
VALUES (3, 2, 42, '2025-08-04 15:20:21', '2025-08-04 16:04:00', 0);
INSERT INTO `category_brand`
VALUES (7, 1, 4, '2025-08-04 16:36:20', '2025-08-04 16:44:17', 1);

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`
(
    `id`                    bigint                                                        NOT NULL AUTO_INCREMENT COMMENT 'id',
    `user_id`               bigint                                                        NOT NULL DEFAULT 0 COMMENT '会员_id',
    `nick_name`             varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL     DEFAULT NULL COMMENT '昵称',
    `order_no`              char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci     NOT NULL DEFAULT '' COMMENT '订单号',
    `coupon_id`             bigint                                                        NULL     DEFAULT NULL COMMENT '使用的优惠券',
    `total_amount`          decimal(10, 2)                                                NOT NULL DEFAULT 0.00 COMMENT '订单总额',
    `coupon_amount`         decimal(10, 2)                                                NOT NULL DEFAULT 0.00 COMMENT '优惠券',
    `original_total_amount` decimal(10, 2)                                                NOT NULL DEFAULT 0.00 COMMENT '原价金额',
    `feight_fee`            decimal(10, 2)                                                NOT NULL DEFAULT 0.00 COMMENT '运费',
    `pay_type`              tinyint                                                       NULL     DEFAULT NULL COMMENT '支付方式【1->微信 2->支付宝】',
    `order_status`          tinyint                                                       NOT NULL DEFAULT 0 COMMENT '订单状态【0->待付款；1->待发货；2->已发货；3->待用户收货，已完成；-1->已取消】',
    `receiver_name`         varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL     DEFAULT NULL COMMENT '收货人姓名',
    `receiver_phone`        varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci  NULL     DEFAULT NULL COMMENT '收货人电话',
    `receiver_tag_name`     varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci  NULL     DEFAULT NULL COMMENT '收货人地址标签',
    `receiver_province`     bigint                                                        NULL     DEFAULT NULL COMMENT '省份/直辖市',
    `receiver_city`         bigint                                                        NULL     DEFAULT NULL COMMENT '城市',
    `receiver_district`     bigint                                                        NULL     DEFAULT NULL COMMENT '区',
    `receiver_address`      varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL     DEFAULT NULL COMMENT '详细地址',
    `payment_time`          datetime                                                      NULL     DEFAULT NULL COMMENT '支付时间',
    `delivery_time`         datetime                                                      NULL     DEFAULT NULL COMMENT '发货时间',
    `receive_time`          datetime                                                      NULL     DEFAULT NULL COMMENT '确认收货时间',
    `remark`                varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL     DEFAULT NULL COMMENT '订单备注',
    `cancel_time`           datetime                                                      NULL     DEFAULT NULL COMMENT '取消订单时间',
    `cancel_reason`         varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL     DEFAULT NULL COMMENT '取消订单原因',
    `create_time`           timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time`           timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `is_deleted`            tinyint                                                       NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 210
  CHARACTER SET = utf8mb3
  COLLATE = utf8mb3_general_ci COMMENT = '订单'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info`
VALUES (1, 1, 'admin', '1000011122555', NULL, 10.00, 0.00, 10.00, 0.00, 2, 0, 'test', '1501022222', '684568', 130000,
        NULL, NULL, '北京市天通苑大街', NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-06 21:06:29',
        '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (168, 1, NULL, '653f7153bf28454d82a5ac07d1c043d8', NULL, 11.00, 0.00, 11.00, 0.00, 2, 0, '晴天', '15014526352',
        '家', 130000, 130700, 130724, '天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-06 21:06:29',
        '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (169, 1, NULL, '1684393427504', NULL, 3.00, 0.00, 3.00, 0.00, 2, 0, '晴天', '15014526352', '家', 130000, 130700,
        130724, '天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-06 21:06:29', '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (170, 1, NULL, '1684747834653', NULL, 1.00, 0.00, 1.00, 0.00, 2, 0, '晴天', '15014526352', '家', 130000, 130700,
        130724, '天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-06 21:06:29', '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (171, 1, NULL, '1684826584591', NULL, 16.00, 0.00, 16.00, 0.00, 2, 0, '张三', '15012563333', '公司', 130000,
        130700, 130724, '快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-06 21:06:29', '2025-08-06 21:06:29',
        0);
INSERT INTO `order_info`
VALUES (172, 1, NULL, '1684827208589', NULL, 3.00, 0.00, 3.00, 0.00, 2, 0, '晴天', '15014526352', '家', 130000, 130700,
        130724, '天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-06 21:06:29', '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (173, 1, 'test', '1685351605797', NULL, 19.00, 0.00, 19.00, 0.00, 2, 0, '张三', '15012563333', '公司', 130000,
        130700, 130724, '快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-06 21:06:29', '2025-08-06 21:06:29',
        0);
INSERT INTO `order_info`
VALUES (174, 1, 'test', '1685352236016', NULL, 4.00, 0.00, 4.00, 0.00, 2, 0, '晴天', '15014526352', '家', 130000,
        130700, 130724, '天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-06 21:06:29',
        '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (175, 1, 'test', '1685403044073', NULL, 4.00, 0.00, 4.00, 0.00, 2, 0, '晴天', '15014526352', '家', 130000,
        130700, 130724, '天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-06 21:06:29',
        '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (176, 1, 'test', '1685403048904', NULL, 2003.00, 0.00, 2003.00, 0.00, 2, 1, '晴天', '15014526352', '家', 130000,
        130700, 130724, '天通苑大街1号', '2023-06-01 07:27:08', NULL, NULL, NULL, NULL, NULL, '2025-08-06 21:06:29',
        '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (177, 1, 'test', '1685403180956', NULL, 13001.00, 0.00, 13001.00, 0.00, 2, 0, '晴天', '15014526352', '家',
        130000, 130700, 130724, '天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-06 21:06:29',
        '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (178, 1, 'test', '1685408175090', NULL, 16000.00, 0.00, 16000.00, 0.00, 2, 0, '晴天', '15014526352', '家',
        130000, 130700, 130724, '天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-06 21:06:29',
        '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (179, 1, 'test', '1685408188255', NULL, 16000.00, 0.00, 16000.00, 0.00, 2, 1, '晴天', '15014526352', '家',
        130000, 130700, 130724, '天通苑大街1号', '2023-06-01 07:34:26', NULL, NULL, NULL, NULL, NULL,
        '2025-08-06 21:06:29', '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (180, 1, 'test', '1685498312468', NULL, 28997.00, 0.00, 28997.00, 0.00, 2, 0, '张三', '15012563333', '公司',
        130000, 130700, 130724, '快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-06 21:06:29',
        '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (181, 1, 'test', '1685592470587', NULL, 4998.00, 0.00, 4998.00, 0.00, 2, 0, '晴天', '15014526352', '家', 130000,
        130700, 130724, '天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-06 21:06:29',
        '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (182, 1, 'test', '1685604960824', NULL, 4998.00, 0.00, 4998.00, 0.00, 2, 1, '张三', '15012563333', '公司',
        130000, 130700, 130724, '快乐家园1号', '2023-06-01 07:36:23', NULL, NULL, NULL, NULL, NULL,
        '2025-08-06 21:06:29', '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (183, 1, 'test', '1685608890072', NULL, 2999.00, 0.00, 2999.00, 0.00, 2, 0, '晴天', '15014526352', '家', 130000,
        130700, 130724, '天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-06 21:06:29',
        '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (184, 1, 'test', '1685675623255', NULL, 7997.00, 0.00, 7997.00, 0.00, 2, 0, '张三', '15012563333', '公司',
        130000, 130700, 130724, '快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-06 21:06:29',
        '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (185, 1, 'test', '1685675729448', NULL, 7997.00, 0.00, 7997.00, 0.00, 2, 0, '晴天', '15014526352', '家', 110000,
        110100, 110114, '天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-06 21:06:29',
        '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (186, 1, 'test', '1686099951770', NULL, 13995.00, 0.00, 13995.00, 0.00, 1, 0, '晴天', '15014526352', '家',
        110000, 110100, 110114, '北京市北京市昌平区天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL,
        '2025-08-06 21:06:29', '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (187, 1, 'test', '1686123357507', NULL, 13995.00, 0.00, 13995.00, 0.00, 2, 0, '张三', '15012563333', '公司',
        130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL,
        '2025-08-06 21:06:29', '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (188, 1, 'test', '1686185180987', NULL, 7997.00, 0.00, 7997.00, 0.00, 2, 0, '晴天', '15014526352', '家', 110000,
        110100, 110114, '北京市北京市昌平区天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-06 21:06:29',
        '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (189, 1, 'test', '1686185194411', NULL, 1999.00, 0.00, 1999.00, 0.00, 2, 0, '张三', '15012563333', '公司',
        130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL,
        '2025-08-06 21:06:29', '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (190, 1, 'test', '1686185549074', NULL, 9996.00, 0.00, 9996.00, 0.00, 2, 0, '张三', '15012563333', '公司',
        130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL,
        '2025-08-06 21:06:29', '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (191, 1, '13700032456', '1686710657145', NULL, 3998.00, 0.00, 3998.00, 0.00, 2, 0, '张三', '15012563333', '公司',
        130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL,
        '2025-08-06 21:06:29', '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (192, 1, '13700032456', '1686710730886', NULL, 3998.00, 0.00, 3998.00, 0.00, 2, 0, '张三', '15012563333', '公司',
        130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL,
        '2025-08-06 21:06:29', '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (193, 1, '13700032456', '1686710753480', NULL, 1999.00, 0.00, 1999.00, 0.00, 2, 0, '张三', '15012563333', '公司',
        130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL,
        '2025-08-06 21:06:29', '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (194, 1, 'test', '1686713371363', NULL, 2999.00, 0.00, 2999.00, 0.00, 2, 0, '张三', '15012563333', '公司',
        130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL,
        '2025-08-06 21:06:29', '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (195, 1, '13700032456', '1686722955768', NULL, 1999.00, 0.00, 1999.00, 0.00, 2, 0, '张三', '15012563333', '公司',
        130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL,
        '2025-08-06 21:06:29', '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (196, 1, '13700032456', '1686732838424', NULL, 4998.00, 0.00, 4998.00, 0.00, 2, 0, '张三', '15012563333', '公司',
        130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL,
        '2025-08-06 21:06:29', '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (197, 1, '13700032456', '1689993414292', NULL, 6997.00, 0.00, 6997.00, 0.00, 2, 0, '张三', '15012563333', '公司',
        130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL,
        '2025-08-06 21:06:29', '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (198, 1, '13700032456', '1690006305717', NULL, 1999.00, 0.00, 1999.00, 0.00, 2, 0, '张三', '15012563333', '公司',
        130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL,
        '2025-08-06 21:06:29', '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (199, 1, '13700032456', '1690008262150', NULL, 2999.00, 0.00, 2999.00, 0.00, 2, 0, '张三', '15012563333', '公司',
        130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL,
        '2025-08-06 21:06:29', '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (200, 1, '13700032456', '1690008335205', NULL, 3998.00, 0.00, 3998.00, 0.00, 2, 0, '张三', '15012563333', '公司',
        130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL,
        '2025-08-06 21:06:29', '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (201, 1, '13700032456', '1690011204025', NULL, 1999.00, 0.00, 1999.00, 0.00, 2, 0, '张三', '15012563333', '公司',
        130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL,
        '2025-08-06 21:06:29', '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (202, 1, '13700032456', '1690012099399', NULL, 2999.00, 0.00, 2999.00, 0.00, 2, 0, '张三', '15012563333', '公司',
        130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL,
        '2025-08-06 21:06:29', '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (203, 1, '13700032456', '1690247814503', NULL, 1999.00, 0.00, 1999.00, 0.00, 2, 0, '张三', '15012563333', '公司',
        130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL,
        '2025-08-06 21:06:29', '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (204, 1, '13700032456', '1690248907152', NULL, 1999.00, 0.00, 1999.00, 0.00, 2, 0, '张三', '15012563333', '公司',
        130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL,
        '2025-08-06 21:06:29', '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (205, 1, '13700032456', '1690249178324', NULL, 1999.00, 0.00, 1999.00, 0.00, 2, 0, '张三', '15012563333', '公司',
        130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL,
        '2025-08-06 21:06:29', '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (206, 1, '13700032456', '1690249523884', NULL, 1999.00, 0.00, 1999.00, 0.00, 2, 0, '张三', '15012563333', '公司',
        130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL,
        '2025-08-06 21:06:29', '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (207, 1, '13700032456', '1690249600181', NULL, 1999.00, 0.00, 1999.00, 0.00, 2, 0, '张三', '15012563333', '公司',
        130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL,
        '2025-08-06 21:06:29', '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (208, 1, '13700032456', '1690250078835', NULL, 2999.00, 0.00, 2999.00, 0.00, 2, 0, '张三', '15012563333', '公司',
        130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL,
        '2025-08-06 21:06:29', '2025-08-06 21:06:29', 0);
INSERT INTO `order_info`
VALUES (209, 1, '13700032456', '1690250115807', NULL, 1999.00, 0.00, 1999.00, 0.00, 2, 0, '张三', '15012563333', '公司',
        130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL,
        '2025-08-06 21:06:29', '2025-08-06 21:06:29', 0);

-- ----------------------------
-- Table structure for order_item
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item`
(
    `id`          bigint                                                        NOT NULL AUTO_INCREMENT COMMENT 'id',
    `order_id`    bigint                                                        NULL     DEFAULT NULL COMMENT 'order_id',
    `sku_id`      bigint                                                        NULL     DEFAULT NULL COMMENT '商品sku编号',
    `sku_name`    varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL     DEFAULT NULL COMMENT '商品sku名字',
    `thumb_img`   varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL     DEFAULT NULL COMMENT '商品sku图片',
    `sku_price`   decimal(10, 2)                                                NULL     DEFAULT NULL COMMENT '商品sku价格',
    `sku_num`     int                                                           NULL     DEFAULT NULL COMMENT '商品购买的数量',
    `create_time` timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `is_deleted`  tinyint                                                       NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 446
  CHARACTER SET = utf8mb3
  COLLATE = utf8mb3_general_ci COMMENT = '订单项信息'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_item
-- ----------------------------
INSERT INTO `order_item`
VALUES (1, 1, 1, '华为笔记本 内存:8G', 'http://139.198.127.41:9000/sph/20230508/124322.png', 5.00, 1,
        '2023-05-15 09:07:58', '2023-05-15 09:08:18', 0);
INSERT INTO `order_item`
VALUES (2, 1, 2, '华为笔记本 内存:16G', 'http://139.198.127.41:9000/sph/20230508/124322.png', 5.00, 1,
        '2023-05-15 09:08:24', '2023-05-15 09:08:45', 0);
INSERT INTO `order_item`
VALUES (368, 168, 1, '华为笔记本 内存:8G', 'http://139.198.127.41:9000/sph/20230508/124322.png', 1.00, 2,
        '2023-05-18 11:54:34', '2023-05-18 11:54:34', 0);
INSERT INTO `order_item`
VALUES (369, 168, 3, '华为笔记本 内存:32G', 'http://139.198.127.41:9000/sph/20230508/0230508124243.png', 3.00, 3,
        '2023-05-18 11:54:34', '2023-05-18 11:54:34', 0);
INSERT INTO `order_item`
VALUES (370, 169, 3, '华为笔记本 内存:32G', 'http://139.198.127.41:9000/sph/20230508/0230508124243.png', 3.00, 1,
        '2023-05-18 15:03:45', '2023-05-18 15:03:45', 0);
INSERT INTO `order_item`
VALUES (371, 170, 1, '华为笔记本 内存:8G', 'http://139.198.127.41:9000/sph/20230508/124322.png', 1.00, 1,
        '2023-05-22 17:30:32', '2023-05-22 17:30:32', 0);
INSERT INTO `order_item`
VALUES (372, 171, 1, '华为笔记本 内存:8G', 'http://139.198.127.41:9000/sph/20230508/124322.png', 1.00, 4,
        '2023-05-23 15:23:04', '2023-05-23 15:23:04', 0);
INSERT INTO `order_item`
VALUES (373, 171, 3, '华为笔记本 内存:32G', 'http://139.198.127.41:9000/sph/20230508/0230508124243.png', 3.00, 4,
        '2023-05-23 15:23:05', '2023-05-23 15:23:05', 0);
INSERT INTO `order_item`
VALUES (374, 172, 3, '华为笔记本 内存:32G', 'http://139.198.127.41:9000/sph/20230508/0230508124243.png', 3.00, 1,
        '2023-05-23 15:33:29', '2023-05-23 15:33:29', 0);
INSERT INTO `order_item`
VALUES (375, 173, 3, '小米 红米Note10 5G手机 颜色:红色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-3_u_1.jpg', 19.00, 1, '2023-05-29 17:13:26',
        '2023-05-29 17:58:02', 0);
INSERT INTO `order_item`
VALUES (376, 174, 2, '华为笔记本 内存:18G', 'http://139.198.127.41:9000/sph/20230508/0508124316.png', 2.00, 2,
        '2023-05-29 17:23:56', '2023-05-29 17:23:56', 0);
INSERT INTO `order_item`
VALUES (377, 175, 2, '华为笔记本 内存:18G', 'http://139.198.127.41:9000/sph/20230508/0508124316.png', 2.00, 2,
        '2023-05-30 07:30:44', '2023-05-30 07:30:44', 0);
INSERT INTO `order_item`
VALUES (378, 176, 2, '华为笔记本 内存:18G', 'http://139.198.127.41:9000/sph/20230508/0508124316.png', 2.00, 2,
        '2023-05-30 07:30:49', '2023-05-30 07:30:49', 0);
INSERT INTO `order_item`
VALUES (379, 176, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-05-30 07:30:49',
        '2023-05-30 07:30:49', 0);
INSERT INTO `order_item`
VALUES (380, 177, 2, '华为笔记本 内存:18G', 'http://139.198.127.41:9000/sph/20230508/0508124316.png', 2.00, 2,
        '2023-05-30 07:33:01', '2023-05-30 07:33:01', 0);
INSERT INTO `order_item`
VALUES (381, 177, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-05-30 07:33:01',
        '2023-05-30 07:33:01', 0);
INSERT INTO `order_item`
VALUES (382, 177, 8, '华为笔记本 内存:16G', 'http://139.198.127.41:9000/lpyx/20230525/35b3b7e2e67b98b2.jpg.avif',
        4999.00, 1, '2023-05-30 07:33:01', '2023-05-30 07:33:01', 0);
INSERT INTO `order_item`
VALUES (383, 177, 9, '华为笔记本 内存:32G', 'http://139.198.127.41:9000/lpyx/20230525/c8f2eae0d36b6270.jpg.avif',
        5999.00, 1, '2023-05-30 07:33:01', '2023-05-30 07:33:01', 0);
INSERT INTO `order_item`
VALUES (384, 178, 2, '华为笔记本 内存:18G', 'http://139.198.127.41:9000/sph/20230508/0508124316.png', 2.00, 2,
        '2023-05-30 08:56:15', '2023-05-30 08:56:15', 0);
INSERT INTO `order_item`
VALUES (385, 178, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-05-30 08:56:15',
        '2023-05-30 08:56:15', 0);
INSERT INTO `order_item`
VALUES (386, 178, 8, '华为笔记本 内存:16G', 'http://139.198.127.41:9000/lpyx/20230525/35b3b7e2e67b98b2.jpg.avif',
        4999.00, 1, '2023-05-30 08:56:15', '2023-05-30 08:56:15', 0);
INSERT INTO `order_item`
VALUES (387, 178, 9, '华为笔记本 内存:32G', 'http://139.198.127.41:9000/lpyx/20230525/c8f2eae0d36b6270.jpg.avif',
        5999.00, 1, '2023-05-30 08:56:15', '2023-05-30 08:56:15', 0);
INSERT INTO `order_item`
VALUES (388, 178, 4, '小米 红米Note10 5G手机 颜色:红色 内存:18G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-3_u_1.jpg', 2999.00, 1, '2023-05-30 08:56:15',
        '2023-05-30 08:56:15', 0);
INSERT INTO `order_item`
VALUES (389, 179, 2, '华为笔记本 内存:18G', 'http://139.198.127.41:9000/sph/20230508/0508124316.png', 2.00, 2,
        '2023-05-30 08:56:28', '2023-05-30 08:56:28', 0);
INSERT INTO `order_item`
VALUES (390, 179, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-05-30 08:56:28',
        '2023-05-30 08:56:28', 0);
INSERT INTO `order_item`
VALUES (391, 179, 8, '华为笔记本 内存:16G', 'http://139.198.127.41:9000/lpyx/20230525/35b3b7e2e67b98b2.jpg.avif',
        4999.00, 1, '2023-05-30 08:56:28', '2023-05-30 08:56:28', 0);
INSERT INTO `order_item`
VALUES (392, 179, 9, '华为笔记本 内存:32G', 'http://139.198.127.41:9000/lpyx/20230525/c8f2eae0d36b6270.jpg.avif',
        5999.00, 1, '2023-05-30 08:56:28', '2023-05-30 08:56:28', 0);
INSERT INTO `order_item`
VALUES (393, 179, 4, '小米 红米Note10 5G手机 颜色:红色 内存:18G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-3_u_1.jpg', 2999.00, 1, '2023-05-30 08:56:28',
        '2023-05-30 08:56:28', 0);
INSERT INTO `order_item`
VALUES (394, 180, 8, '华为笔记本 内存:16G', 'http://139.198.127.41:9000/lpyx/20230525/35b3b7e2e67b98b2.jpg.avif',
        4999.00, 4, '2023-05-31 09:58:32', '2023-05-31 09:58:32', 0);
INSERT INTO `order_item`
VALUES (395, 180, 2, '华为笔记本 内存:18G', 'http://139.198.127.41:9000/sph/20230508/0508124316.png', 2.00, 2,
        '2023-05-31 09:58:32', '2023-05-31 09:58:32', 0);
INSERT INTO `order_item`
VALUES (396, 180, 4, '小米 红米Note10 5G手机 颜色:红色 内存:18G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-3_u_1.jpg', 2999.00, 3, '2023-05-31 09:58:32',
        '2023-05-31 09:58:32', 0);
INSERT INTO `order_item`
VALUES (397, 181, 6, '小米 红米Note10 5G手机 颜色:黑色 内存:18G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-1_u_1.jpg', 2999.00, 1, '2023-06-01 12:07:50',
        '2023-06-01 12:07:50', 0);
INSERT INTO `order_item`
VALUES (398, 181, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-06-01 12:07:50',
        '2023-06-01 12:07:50', 0);
INSERT INTO `order_item`
VALUES (399, 182, 6, '小米 红米Note10 5G手机 颜色:黑色 内存:18G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-1_u_1.jpg', 2999.00, 1, '2023-06-01 15:36:01',
        '2023-06-01 15:36:01', 0);
INSERT INTO `order_item`
VALUES (400, 182, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-06-01 15:36:01',
        '2023-06-01 15:36:01', 0);
INSERT INTO `order_item`
VALUES (401, 183, 4, '小米 红米Note10 5G手机 颜色:红色 内存:18G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-3_u_1.jpg', 2999.00, 1, '2023-06-01 16:41:30',
        '2023-06-01 16:41:30', 0);
INSERT INTO `order_item`
VALUES (402, 184, 6, '小米 红米Note10 5G手机 颜色:黑色 内存:18G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-1_u_1.jpg', 2999.00, 1, '2023-06-02 11:13:43',
        '2023-06-02 11:13:43', 0);
INSERT INTO `order_item`
VALUES (403, 184, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-06-02 11:13:43',
        '2023-06-02 11:13:43', 0);
INSERT INTO `order_item`
VALUES (404, 184, 4, '小米 红米Note10 5G手机 颜色:红色 内存:18G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-3_u_1.jpg', 2999.00, 1, '2023-06-02 11:13:43',
        '2023-06-02 11:13:43', 0);
INSERT INTO `order_item`
VALUES (405, 185, 6, '小米 红米Note10 5G手机 颜色:黑色 内存:18G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-1_u_1.jpg', 2999.00, 1, '2023-06-02 11:15:29',
        '2023-06-02 11:15:29', 0);
INSERT INTO `order_item`
VALUES (406, 185, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-06-02 11:15:29',
        '2023-06-02 11:15:29', 0);
INSERT INTO `order_item`
VALUES (407, 185, 4, '小米 红米Note10 5G手机 颜色:红色 内存:18G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-3_u_1.jpg', 2999.00, 1, '2023-06-02 11:15:29',
        '2023-06-02 11:15:29', 0);
INSERT INTO `order_item`
VALUES (408, 186, 2, '小米 红米Note10 5G手机 颜色:白色 内存:18G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 2999.00, 1, '2023-06-07 09:05:52',
        '2023-06-07 09:05:52', 0);
INSERT INTO `order_item`
VALUES (409, 186, 6, '小米 红米Note10 5G手机 颜色:黑色 内存:18G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-1_u_1.jpg', 2999.00, 1, '2023-06-07 09:05:52',
        '2023-06-07 09:05:52', 0);
INSERT INTO `order_item`
VALUES (410, 186, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-06-07 09:05:52',
        '2023-06-07 09:05:52', 0);
INSERT INTO `order_item`
VALUES (411, 186, 4, '小米 红米Note10 5G手机 颜色:红色 内存:18G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-3_u_1.jpg', 2999.00, 2, '2023-06-07 09:05:52',
        '2023-06-07 09:05:52', 0);
INSERT INTO `order_item`
VALUES (412, 187, 2, '小米 红米Note10 5G手机 颜色:白色 内存:18G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 2999.00, 1, '2023-06-07 15:35:57',
        '2023-06-07 15:35:57', 0);
INSERT INTO `order_item`
VALUES (413, 187, 6, '小米 红米Note10 5G手机 颜色:黑色 内存:18G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-1_u_1.jpg', 2999.00, 1, '2023-06-07 15:35:57',
        '2023-06-07 15:35:57', 0);
INSERT INTO `order_item`
VALUES (414, 187, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-06-07 15:35:58',
        '2023-06-07 15:35:58', 0);
INSERT INTO `order_item`
VALUES (415, 187, 4, '小米 红米Note10 5G手机 颜色:红色 内存:18G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-3_u_1.jpg', 2999.00, 2, '2023-06-07 15:35:58',
        '2023-06-07 15:35:58', 0);
INSERT INTO `order_item`
VALUES (416, 188, 2, '小米 红米Note10 5G手机 颜色:白色 内存:18G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 2999.00, 1, '2023-06-08 08:46:21',
        '2023-06-08 08:46:21', 0);
INSERT INTO `order_item`
VALUES (417, 188, 6, '小米 红米Note10 5G手机 颜色:黑色 内存:18G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-1_u_1.jpg', 2999.00, 1, '2023-06-08 08:46:21',
        '2023-06-08 08:46:21', 0);
INSERT INTO `order_item`
VALUES (418, 188, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-06-08 08:46:21',
        '2023-06-08 08:46:21', 0);
INSERT INTO `order_item`
VALUES (419, 189, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-06-08 08:46:34',
        '2023-06-08 08:46:34', 0);
INSERT INTO `order_item`
VALUES (420, 190, 2, '小米 红米Note10 5G手机 颜色:白色 内存:18G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 2999.00, 1, '2023-06-08 08:52:29',
        '2023-06-08 08:52:29', 0);
INSERT INTO `order_item`
VALUES (421, 190, 6, '小米 红米Note10 5G手机 颜色:黑色 内存:18G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-1_u_1.jpg', 2999.00, 1, '2023-06-08 08:52:29',
        '2023-06-08 08:52:29', 0);
INSERT INTO `order_item`
VALUES (422, 190, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 2, '2023-06-08 08:52:29',
        '2023-06-08 08:52:29', 0);
INSERT INTO `order_item`
VALUES (423, 191, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-06-14 10:44:17',
        '2023-06-14 10:44:17', 0);
INSERT INTO `order_item`
VALUES (424, 191, 5, '小米 红米Note10 5G手机 颜色:黑色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-1_u_1.jpg', 1999.00, 1, '2023-06-14 10:44:17',
        '2023-06-14 10:44:17', 0);
INSERT INTO `order_item`
VALUES (425, 192, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-06-14 10:45:31',
        '2023-06-14 10:45:31', 0);
INSERT INTO `order_item`
VALUES (426, 192, 5, '小米 红米Note10 5G手机 颜色:黑色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-1_u_1.jpg', 1999.00, 1, '2023-06-14 10:45:31',
        '2023-06-14 10:45:31', 0);
INSERT INTO `order_item`
VALUES (427, 193, 5, '小米 红米Note10 5G手机 颜色:黑色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-1_u_1.jpg', 1999.00, 1, '2023-06-14 10:45:53',
        '2023-06-14 10:45:53', 0);
INSERT INTO `order_item`
VALUES (428, 194, 6, '小米 红米Note10 5G手机 颜色:黑色 内存:18G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-1_u_1.jpg', 2999.00, 1, '2023-06-14 11:29:31',
        '2023-06-14 11:29:31', 0);
INSERT INTO `order_item`
VALUES (429, 195, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-06-14 14:09:16',
        '2023-06-14 14:09:16', 0);
INSERT INTO `order_item`
VALUES (430, 196, 6, '小米 红米Note10 5G手机 颜色:黑色 内存:18G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-1_u_1.jpg', 2999.00, 1, '2023-06-14 16:53:58',
        '2023-06-14 16:53:58', 0);
INSERT INTO `order_item`
VALUES (431, 196, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-06-14 16:53:58',
        '2023-06-14 16:53:58', 0);
INSERT INTO `order_item`
VALUES (432, 197, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 2, '2023-07-22 10:37:20',
        '2023-07-22 10:37:20', 0);
INSERT INTO `order_item`
VALUES (433, 197, 2, '小米 红米Note10 5G手机 颜色:白色 内存:18G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 2999.00, 1, '2023-07-22 10:37:20',
        '2023-07-22 10:37:20', 0);
INSERT INTO `order_item`
VALUES (434, 198, 3, '小米 红米Note10 5G手机 颜色:红色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-3_u_1.jpg', 1999.00, 1, '2023-07-22 14:11:45',
        '2023-07-22 14:11:45', 0);
INSERT INTO `order_item`
VALUES (435, 199, 2, '小米 红米Note10 5G手机 颜色:白色 内存:18G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 2999.00, 1, '2023-07-22 14:44:22',
        '2023-07-22 14:44:22', 0);
INSERT INTO `order_item`
VALUES (436, 200, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 2, '2023-07-22 14:45:35',
        '2023-07-22 14:45:35', 0);
INSERT INTO `order_item`
VALUES (437, 201, 5, '小米 红米Note10 5G手机 颜色:黑色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-1_u_1.jpg', 1999.00, 1, '2023-07-22 15:33:24',
        '2023-07-22 15:33:24', 0);
INSERT INTO `order_item`
VALUES (438, 202, 2, '小米 红米Note10 5G手机 颜色:白色 内存:18G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 2999.00, 1, '2023-07-22 15:48:19',
        '2023-07-22 15:48:19', 0);
INSERT INTO `order_item`
VALUES (439, 203, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-07-25 09:16:54',
        '2023-07-25 09:16:54', 0);
INSERT INTO `order_item`
VALUES (440, 204, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-07-25 09:35:07',
        '2023-07-25 09:35:07', 0);
INSERT INTO `order_item`
VALUES (441, 205, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-07-25 09:39:38',
        '2023-07-25 09:39:38', 0);
INSERT INTO `order_item`
VALUES (442, 206, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-07-25 09:45:23',
        '2023-07-25 09:45:23', 0);
INSERT INTO `order_item`
VALUES (443, 207, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-07-25 09:46:40',
        '2023-07-25 09:46:40', 0);
INSERT INTO `order_item`
VALUES (444, 208, 2, '小米 红米Note10 5G手机 颜色:白色 内存:18G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 2999.00, 1, '2023-07-25 09:54:38',
        '2023-07-25 09:54:38', 0);
INSERT INTO `order_item`
VALUES (445, 209, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G',
        'http://139.198.127.41:9000/lpyx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-07-25 09:55:15',
        '2023-07-25 09:55:15', 0);

-- ----------------------------
-- Table structure for order_log
-- ----------------------------
DROP TABLE IF EXISTS `order_log`;
CREATE TABLE `order_log`
(
    `id`             bigint                                                        NOT NULL AUTO_INCREMENT,
    `order_id`       bigint                                                        NULL     DEFAULT NULL COMMENT '订单id',
    `operate_user`   varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL     DEFAULT NULL COMMENT '操作人：用户；系统；后台管理员',
    `process_status` int                                                           NULL     DEFAULT NULL COMMENT '订单状态',
    `note`           varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL     DEFAULT NULL COMMENT '备注',
    `create_time`    timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time`    timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `is_deleted`     tinyint                                                       NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 217
  CHARACTER SET = utf8mb3
  COLLATE = utf8mb3_general_ci COMMENT = '订单操作日志记录'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_log
-- ----------------------------
INSERT INTO `order_log`
VALUES (175, 168, NULL, 0, '提交订单', '2023-05-18 11:54:34', '2023-05-18 11:54:34', 0);
INSERT INTO `order_log`
VALUES (176, 169, NULL, 0, '提交订单', '2023-05-18 15:03:45', '2023-05-18 15:03:45', 0);
INSERT INTO `order_log`
VALUES (177, 170, NULL, 0, '提交订单', '2023-05-22 17:30:32', '2023-05-22 17:30:32', 0);
INSERT INTO `order_log`
VALUES (178, 171, NULL, 0, '提交订单', '2023-05-23 15:23:05', '2023-05-23 15:23:05', 0);
INSERT INTO `order_log`
VALUES (179, 172, NULL, 0, '提交订单', '2023-05-23 15:33:29', '2023-05-23 15:33:29', 0);
INSERT INTO `order_log`
VALUES (180, 173, NULL, 0, '提交订单', '2023-05-29 17:13:26', '2023-05-29 17:13:26', 0);
INSERT INTO `order_log`
VALUES (181, 174, NULL, 0, '提交订单', '2023-05-29 17:23:56', '2023-05-29 17:23:56', 0);
INSERT INTO `order_log`
VALUES (182, 175, NULL, 0, '提交订单', '2023-05-30 07:30:44', '2023-05-30 07:30:44', 0);
INSERT INTO `order_log`
VALUES (183, 176, NULL, 0, '提交订单', '2023-05-30 07:30:49', '2023-05-30 07:30:49', 0);
INSERT INTO `order_log`
VALUES (184, 177, NULL, 0, '提交订单', '2023-05-30 07:33:01', '2023-05-30 07:33:01', 0);
INSERT INTO `order_log`
VALUES (185, 178, NULL, 0, '提交订单', '2023-05-30 08:56:15', '2023-05-30 08:56:15', 0);
INSERT INTO `order_log`
VALUES (186, 179, NULL, 0, '提交订单', '2023-05-30 08:56:28', '2023-05-30 08:56:28', 0);
INSERT INTO `order_log`
VALUES (187, 180, NULL, 0, '提交订单', '2023-05-31 09:58:33', '2023-05-31 09:58:33', 0);
INSERT INTO `order_log`
VALUES (188, 181, NULL, 0, '提交订单', '2023-06-01 12:07:51', '2023-06-01 12:07:51', 0);
INSERT INTO `order_log`
VALUES (189, 182, NULL, 0, '提交订单', '2023-06-01 15:36:01', '2023-06-01 15:36:01', 0);
INSERT INTO `order_log`
VALUES (190, 183, NULL, 0, '提交订单', '2023-06-01 16:41:30', '2023-06-01 16:41:30', 0);
INSERT INTO `order_log`
VALUES (191, 184, NULL, 0, '提交订单', '2023-06-02 11:13:43', '2023-06-02 11:13:43', 0);
INSERT INTO `order_log`
VALUES (192, 185, NULL, 0, '提交订单', '2023-06-02 11:15:29', '2023-06-02 11:15:29', 0);
INSERT INTO `order_log`
VALUES (193, 186, NULL, 0, '提交订单', '2023-06-07 09:05:52', '2023-06-07 09:05:52', 0);
INSERT INTO `order_log`
VALUES (194, 187, NULL, 0, '提交订单', '2023-06-07 15:35:58', '2023-06-07 15:35:58', 0);
INSERT INTO `order_log`
VALUES (195, 188, NULL, 0, '提交订单', '2023-06-08 08:46:21', '2023-06-08 08:46:21', 0);
INSERT INTO `order_log`
VALUES (196, 189, NULL, 0, '提交订单', '2023-06-08 08:46:34', '2023-06-08 08:46:34', 0);
INSERT INTO `order_log`
VALUES (197, 190, NULL, 0, '提交订单', '2023-06-08 08:52:29', '2023-06-08 08:52:29', 0);
INSERT INTO `order_log`
VALUES (198, 191, NULL, 0, '提交订单', '2023-06-14 10:44:17', '2023-06-14 10:44:17', 0);
INSERT INTO `order_log`
VALUES (199, 192, NULL, 0, '提交订单', '2023-06-14 10:45:31', '2023-06-14 10:45:31', 0);
INSERT INTO `order_log`
VALUES (200, 193, NULL, 0, '提交订单', '2023-06-14 10:45:53', '2023-06-14 10:45:53', 0);
INSERT INTO `order_log`
VALUES (201, 194, NULL, 0, '提交订单', '2023-06-14 11:29:31', '2023-06-14 11:29:31', 0);
INSERT INTO `order_log`
VALUES (202, 195, NULL, 0, '提交订单', '2023-06-14 14:09:16', '2023-06-14 14:09:16', 0);
INSERT INTO `order_log`
VALUES (203, 196, NULL, 0, '提交订单', '2023-06-14 16:53:58', '2023-06-14 16:53:58', 0);
INSERT INTO `order_log`
VALUES (204, 197, NULL, 0, '提交订单', '2023-07-22 10:37:20', '2023-07-22 10:37:20', 0);
INSERT INTO `order_log`
VALUES (205, 198, NULL, 0, '提交订单', '2023-07-22 14:11:45', '2023-07-22 14:11:45', 0);
INSERT INTO `order_log`
VALUES (206, 199, NULL, 0, '提交订单', '2023-07-22 14:44:22', '2023-07-22 14:44:22', 0);
INSERT INTO `order_log`
VALUES (207, 200, NULL, 0, '提交订单', '2023-07-22 14:45:35', '2023-07-22 14:45:35', 0);
INSERT INTO `order_log`
VALUES (208, 201, NULL, 0, '提交订单', '2023-07-22 15:33:24', '2023-07-22 15:33:24', 0);
INSERT INTO `order_log`
VALUES (209, 202, NULL, 0, '提交订单', '2023-07-22 15:48:19', '2023-07-22 15:48:19', 0);
INSERT INTO `order_log`
VALUES (210, 203, NULL, 0, '提交订单', '2023-07-25 09:16:54', '2023-07-25 09:16:54', 0);
INSERT INTO `order_log`
VALUES (211, 204, NULL, 0, '提交订单', '2023-07-25 09:35:07', '2023-07-25 09:35:07', 0);
INSERT INTO `order_log`
VALUES (212, 205, NULL, 0, '提交订单', '2023-07-25 09:39:38', '2023-07-25 09:39:38', 0);
INSERT INTO `order_log`
VALUES (213, 206, NULL, 0, '提交订单', '2023-07-25 09:45:23', '2023-07-25 09:45:23', 0);
INSERT INTO `order_log`
VALUES (214, 207, NULL, 0, '提交订单', '2023-07-25 09:46:40', '2023-07-25 09:46:40', 0);
INSERT INTO `order_log`
VALUES (215, 208, NULL, 0, '提交订单', '2023-07-25 09:54:38', '2023-07-25 09:54:38', 0);
INSERT INTO `order_log`
VALUES (216, 209, NULL, 0, '提交订单', '2023-07-25 09:55:15', '2023-07-25 09:55:15', 0);

-- ----------------------------
-- Table structure for order_statistics
-- ----------------------------
DROP TABLE IF EXISTS `order_statistics`;
CREATE TABLE `order_statistics`
(
    `id`            bigint                                                       NOT NULL AUTO_INCREMENT,
    `province_code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL     DEFAULT NULL COMMENT '省份',
    `order_date`    date                                                         NULL     DEFAULT NULL COMMENT '订单统计日期',
    `total_amount`  decimal(10, 2)                                               NULL     DEFAULT NULL COMMENT '总金额',
    `total_num`     int                                                          NULL     DEFAULT NULL COMMENT '订单总数',
    `create_time`   timestamp                                                    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time`   timestamp                                                    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `is_deleted`    tinyint                                                      NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 289
  CHARACTER SET = utf8mb3
  COLLATE = utf8mb3_general_ci COMMENT = '订单统计'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_statistics
-- ----------------------------
INSERT INTO `order_statistics`
VALUES (259, NULL, '2025-08-06', 24.00, 30, '2025-08-06 12:56:40', '2025-08-06 23:33:40', 0);
INSERT INTO `order_statistics`
VALUES (262, NULL, '2025-08-06', 100.00, 5, '2025-08-06 12:57:50', '2025-08-06 23:33:43', 0);
INSERT INTO `order_statistics`
VALUES (263, NULL, '2025-08-06', 10.00, 15, '2025-08-06 12:58:00', '2025-08-06 23:33:46', 0);
INSERT INTO `order_statistics`
VALUES (264, NULL, '2025-08-06', 50.00, 8, '2025-08-06 12:58:10', '2025-08-06 23:33:49', 0);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`
(
    `id`            bigint                                                        NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `name`          varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL     DEFAULT NULL COMMENT '商品名称',
    `brand_id`      bigint                                                        NULL     DEFAULT NULL COMMENT '品牌ID',
    `category1_id`  bigint                                                        NULL     DEFAULT NULL COMMENT '一级分类id',
    `category2_id`  bigint                                                        NULL     DEFAULT NULL COMMENT '二级分类id',
    `category3_id`  bigint                                                        NULL     DEFAULT NULL COMMENT '三级分类id',
    `unit_name`     varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci  NULL     DEFAULT NULL COMMENT '计量单位',
    `slider_urls`   text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci         NULL COMMENT '轮播图',
    `spec_value`    varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL     DEFAULT NULL COMMENT '商品规格json',
    `status`        tinyint                                                       NOT NULL DEFAULT 0 COMMENT '线上状态：0-初始值，1-上架，-1-自主下架',
    `audit_status`  tinyint                                                       NOT NULL DEFAULT 0 COMMENT '审核状态：0-初始值，1-通过，-1-未通过',
    `audit_message` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL     DEFAULT NULL COMMENT '审核信息',
    `create_time`   timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time`   timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `is_deleted`    tinyint                                                       NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 5
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product`
VALUES (4, '华为70plus', 2, 1, 2, 3, '台',
        'http://127.0.0.1:9000/lpyx-bucket/20250806/efbb46c92a124d72bcf97b6d791863028e9428fbd5744bf9.jpg,http://127.0.0.1:9000/lpyx-bucket/20250806/4181fd86e92046048c88a205910d80ac0b23d700ce75fe53.jpg',
        '[{\"key\":\"颜色\",\"valueList\":[\"黑\",\"白\",\"蓝\"]},{\"key\":\"配置\",\"valueList\":[\"8+256\",\"12+256\",\"12+512\"]}]',
        0, 0, NULL, '2025-08-06 14:24:21', '2025-08-06 14:24:21', 0);

-- ----------------------------
-- Table structure for product_attr
-- ----------------------------
DROP TABLE IF EXISTS `product_attr`;
CREATE TABLE `product_attr`
(
    `id`          bigint                                                        NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `product_id`  bigint                                                        NULL     DEFAULT NULL COMMENT '商品id',
    `attr_key`    varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL     DEFAULT NULL COMMENT '属性key',
    `attr_value`  varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL     DEFAULT NULL COMMENT '属性value',
    `create_time` timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `is_deleted`  tinyint                                                       NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品属性表'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_attr
-- ----------------------------

-- ----------------------------
-- Table structure for product_details
-- ----------------------------
DROP TABLE IF EXISTS `product_details`;
CREATE TABLE `product_details`
(
    `id`          bigint                                                NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `product_id`  bigint                                                NULL     DEFAULT NULL COMMENT '商品id',
    `image_urls`  text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '详情图片地址',
    `create_time` timestamp                                             NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` timestamp                                             NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `is_deleted`  tinyint                                               NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 5
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品sku属性表'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_details
-- ----------------------------
INSERT INTO `product_details`
VALUES (4, 4, '', '2025-08-06 14:24:21', '2025-08-06 14:24:21', 0);

-- ----------------------------
-- Table structure for product_sku
-- ----------------------------
DROP TABLE IF EXISTS `product_sku`;
CREATE TABLE `product_sku`
(
    `id`           bigint                                                        NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `sku_code`     varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci  NULL     DEFAULT NULL COMMENT '商品编号',
    `sku_name`     varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL     DEFAULT NULL,
    `product_id`   bigint                                                        NULL     DEFAULT NULL COMMENT '商品ID',
    `thumb_img`    varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL     DEFAULT NULL COMMENT '缩略图路径',
    `sale_price`   decimal(10, 2)                                                NULL     DEFAULT NULL COMMENT '售价',
    `market_price` decimal(10, 2)                                                NULL     DEFAULT NULL COMMENT '市场价',
    `cost_price`   decimal(10, 2)                                                NULL     DEFAULT NULL COMMENT '成本价',
    `stock_num`    int                                                           NULL     DEFAULT NULL COMMENT '库存数',
    `sale_num`     int                                                           NOT NULL DEFAULT 0 COMMENT '销量',
    `sku_spec`     varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL     DEFAULT '' COMMENT 'sku规格信息json',
    `weight`       decimal(10, 2)                                                NULL     DEFAULT NULL COMMENT '重量',
    `volume`       decimal(10, 2)                                                NULL     DEFAULT NULL COMMENT '体积',
    `status`       tinyint                                                       NULL     DEFAULT NULL COMMENT '线上状态：0-初始值，1-上架，-1-自主下架',
    `create_time`  timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time`  timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `is_deleted`   tinyint                                                       NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 20
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品sku'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_sku
-- ----------------------------
INSERT INTO `product_sku`
VALUES (11, '4_null', '华为70plus黑 + 8+256', 4, NULL, NULL, NULL, NULL, NULL, 0, '黑 + 8+256', NULL, NULL, 0,
        '2025-08-06 14:24:21', '2025-08-06 14:24:21', 0);
INSERT INTO `product_sku`
VALUES (12, '4_null', '华为70plus黑 + 12+256', 4, NULL, NULL, NULL, NULL, NULL, 0, '黑 + 12+256', NULL, NULL, 0,
        '2025-08-06 14:24:21', '2025-08-06 14:24:21', 0);
INSERT INTO `product_sku`
VALUES (13, '4_null', '华为70plus黑 + 12+512', 4, NULL, NULL, NULL, NULL, NULL, 0, '黑 + 12+512', NULL, NULL, 0,
        '2025-08-06 14:24:21', '2025-08-06 14:24:21', 0);
INSERT INTO `product_sku`
VALUES (14, '4_null', '华为70plus白 + 8+256', 4, NULL, NULL, NULL, NULL, NULL, 0, '白 + 8+256', NULL, NULL, 0,
        '2025-08-06 14:24:21', '2025-08-06 14:24:21', 0);
INSERT INTO `product_sku`
VALUES (15, '4_null', '华为70plus白 + 12+256', 4, NULL, NULL, NULL, NULL, NULL, 0, '白 + 12+256', NULL, NULL, 0,
        '2025-08-06 14:24:21', '2025-08-06 14:24:21', 0);
INSERT INTO `product_sku`
VALUES (16, '4_null', '华为70plus白 + 12+512', 4, NULL, NULL, NULL, NULL, NULL, 0, '白 + 12+512', NULL, NULL, 0,
        '2025-08-06 14:24:21', '2025-08-06 14:24:21', 0);
INSERT INTO `product_sku`
VALUES (17, '4_null', '华为70plus蓝 + 8+256', 4, NULL, NULL, NULL, NULL, NULL, 0, '蓝 + 8+256', NULL, NULL, 0,
        '2025-08-06 14:24:21', '2025-08-06 14:24:21', 0);
INSERT INTO `product_sku`
VALUES (18, '4_null', '华为70plus蓝 + 12+256', 4, NULL, NULL, NULL, NULL, NULL, 0, '蓝 + 12+256', NULL, NULL, 0,
        '2025-08-06 14:24:21', '2025-08-06 14:24:21', 0);
INSERT INTO `product_sku`
VALUES (19, '4_null', '华为70plus蓝 + 12+512', 4, NULL, NULL, NULL, NULL, NULL, 0, '蓝 + 12+512', NULL, NULL, 0,
        '2025-08-06 14:24:21', '2025-08-06 14:24:21', 0);

-- ----------------------------
-- Table structure for product_spec
-- ----------------------------
DROP TABLE IF EXISTS `product_spec`;
CREATE TABLE `product_spec`
(
    `id`          bigint                                                        NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `spec_name`   varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL     DEFAULT NULL COMMENT '规格名称',
    `spec_value`  text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci         NULL COMMENT '规格值：\"[{\"key\":\"颜色\",\"valueList\":[\"蓝\",\"白\",\"红\"]]\"',
    `create_time` timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `is_deleted`  tinyint                                                       NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 12
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品规格'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_spec
-- ----------------------------
INSERT INTO `product_spec`
VALUES (1, '小米手机',
        '[{\"key\":\"颜色\",\"valueList\":[\"白色\",\"红色\",\"黑色\"]},{\"key\":\"内存\",\"valueList\":[\"8G\",\"18G\"]}]',
        '2025-08-04 12:40:22', '2025-08-04 16:49:40', 0);
INSERT INTO `product_spec`
VALUES (2, '笔记本电脑', '[{\"key\":\"内存\",\"valueList\":[\"8G\",\"16G\",\"32G\"]}]', '2025-08-04 12:56:08',
        '2025-08-04 16:49:43', 0);
INSERT INTO `product_spec`
VALUES (8, '冰箱', '[{\"key\":\"高度\",\"valueList\":[\"200\"]},{\"key\":\"容积\",\"valueList\":[\"60L\"]}]',
        '2025-08-04 09:41:16', '2025-08-04 16:49:48', 0);
INSERT INTO `product_spec`
VALUES (9, '显示器',
        '[{\"key\":\"尺寸\",\"valueList\":[\"24寸\",\"27寸\",\"30寸\"]},{\"key\":\"刷新率\",\"valueList\":[\"60HZ\",\"100HZ\",\"120HZ\",\"144HZ\",\"165HZ\",\"180HZ\",\"240HZ\",\"320HZ\"]}]',
        '2025-08-04 17:10:36', '2025-08-04 17:11:26', 0);
INSERT INTO `product_spec`
VALUES (10, '1', '[]', '2025-08-04 17:12:05', '2025-08-04 17:12:07', 1);
INSERT INTO `product_spec`
VALUES (11, '华为手机',
        '[{\"key\":\"颜色\",\"valueList\":[\"黑\",\"白\",\"蓝\"]},{\"key\":\"配置\",\"valueList\":[\"8+256\",\"12+256\",\"12+512\"]}]',
        '2025-08-06 14:23:53', '2025-08-06 14:23:53', 0);

-- ----------------------------
-- Table structure for product_unit
-- ----------------------------
DROP TABLE IF EXISTS `product_unit`;
CREATE TABLE `product_unit`
(
    `id`          bigint                                                        NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `name`        varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL     DEFAULT NULL COMMENT '名称',
    `create_time` timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `is_deleted`  tinyint                                                       NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 6
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品单位'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_unit
-- ----------------------------
INSERT INTO `product_unit`
VALUES (1, '个', '2023-05-12 10:43:17', '2023-05-12 10:43:17', 0);
INSERT INTO `product_unit`
VALUES (2, '台', '2023-06-06 09:47:17', '2023-06-06 09:47:17', 0);
INSERT INTO `product_unit`
VALUES (3, '包', '2023-06-06 09:47:21', '2023-06-06 09:47:21', 0);
INSERT INTO `product_unit`
VALUES (4, '打', '2023-06-06 09:47:26', '2023-06-06 09:47:26', 0);
INSERT INTO `product_unit`
VALUES (5, '带', '2023-06-06 09:47:43', '2023-06-06 09:47:43', 0);

-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log`
(
    `id`          bigint                                                        NOT NULL AUTO_INCREMENT COMMENT '访问ID',
    `username`    varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci  NULL     DEFAULT '' COMMENT '用户账号',
    `ipaddr`      varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL     DEFAULT '' COMMENT '登录IP地址',
    `status`      tinyint(1)                                                    NULL     DEFAULT 0 COMMENT '登录状态（0成功 1失败）',
    `msg`         varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL     DEFAULT '' COMMENT '提示信息',
    `access_time` datetime                                                      NULL     DEFAULT NULL COMMENT '访问时间',
    `create_time` timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `update_time` timestamp                                                     NULL     DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    `is_deleted`  tinyint                                                       NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 4
  CHARACTER SET = utf8mb3
  COLLATE = utf8mb3_general_ci COMMENT = '系统用户登录记录'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`
(
    `id`          bigint                                                        NOT NULL AUTO_INCREMENT COMMENT '编号',
    `parent_id`   bigint                                                        NOT NULL DEFAULT 0 COMMENT '所属上级',
    `title`       varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci  NOT NULL DEFAULT '' COMMENT '菜单标题',
    `component`   varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL     DEFAULT NULL COMMENT '组件名称',
    `sort_value`  int                                                           NOT NULL DEFAULT 1 COMMENT '排序',
    `status`      tinyint                                                       NOT NULL DEFAULT 1 COMMENT '状态(0:禁止,1:正常)',
    `create_time` timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `is_deleted`  tinyint                                                       NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
    PRIMARY KEY (`id`) USING BTREE,
    INDEX `idx_parent_id` (`parent_id` ASC) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 34
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单表'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu`
VALUES (1, 0, '系统管理', 'system', 1, 1, '2025-07-30 10:46:47', '2025-07-30 15:34:03', 0);
INSERT INTO `sys_menu`
VALUES (2, 1, '用户管理', 'sysUser', 1, 1, '2025-07-30 10:47:13', '2025-07-30 15:34:05', 0);
INSERT INTO `sys_menu`
VALUES (3, 1, '角色管理', 'sysRole', 2, 1, '2025-07-30 10:47:19', '2025-07-30 15:34:07', 0);
INSERT INTO `sys_menu`
VALUES (4, 1, '菜单管理', 'sysMenu', 3, 1, '2025-07-30 10:47:26', '2025-07-30 15:34:10', 0);
INSERT INTO `sys_menu`
VALUES (5, 0, '基础数据管理', 'base', 2, 1, '2025-07-30 12:25:07', '2025-07-30 15:34:13', 0);
INSERT INTO `sys_menu`
VALUES (6, 5, '商品单位', 'productUnit', 2, 1, '2025-07-30 12:27:20', '2025-07-30 15:34:16', 0);
INSERT INTO `sys_menu`
VALUES (7, 5, '地区管理', 'region', 1, 1, '2025-07-30 15:38:09', '2025-07-30 15:34:23', 0);
INSERT INTO `sys_menu`
VALUES (8, 0, '商品管理', 'product', 3, 1, '2025-07-30 15:38:47', '2025-07-30 15:34:27', 0);
INSERT INTO `sys_menu`
VALUES (9, 8, '分类管理', 'category', 1, 1, '2025-07-30 15:39:04', '2025-07-30 15:34:31', 0);
INSERT INTO `sys_menu`
VALUES (10, 8, '品牌管理', 'brand', 2, 1, '2025-07-30 15:39:14', '2025-07-30 15:34:35', 0);
INSERT INTO `sys_menu`
VALUES (11, 8, '分类品牌', 'categoryBrand', 3, 1, '2025-07-30 15:39:23', '2025-07-30 15:34:38', 0);
INSERT INTO `sys_menu`
VALUES (12, 8, '商品规格', 'productSpec', 4, 1, '2025-07-30 15:39:34', '2025-07-30 15:34:40', 0);
INSERT INTO `sys_menu`
VALUES (13, 8, '商品列表', 'product', 5, 1, '2025-07-30 15:39:42', '2025-07-30 15:34:43', 0);
INSERT INTO `sys_menu`
VALUES (14, 0, '会员管理', 'users', 4, 1, '2025-07-30 15:41:00', '2025-07-30 15:34:47', 0);
INSERT INTO `sys_menu`
VALUES (15, 14, '会员列表', 'userInfo', 1, 1, '2025-07-30 15:41:24', '2025-07-30 15:34:50', 0);
INSERT INTO `sys_menu`
VALUES (16, 0, '订单管理', 'order', 5, 1, '2025-07-30 15:42:23', '2025-07-30 15:34:52', 0);
INSERT INTO `sys_menu`
VALUES (17, 16, '订单列表', 'orderInfo', 1, 1, '2025-07-30 15:42:43', '2025-07-30 15:34:55', 0);
INSERT INTO `sys_menu`
VALUES (18, 16, '订单统计', 'orderStatistics', 2, 1, '2025-07-30 15:43:05', '2025-07-30 15:34:57', 0);
INSERT INTO `sys_menu`
VALUES (21, 1, '操作日志', 'sysOperLog', 4, 1, '2025-07-30 09:04:13', '2025-07-30 15:35:30', 0);

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`
(
    `id`             bigint                                                         NOT NULL AUTO_INCREMENT COMMENT '日志主键',
    `title`          varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci   NULL     DEFAULT '' COMMENT '模块标题',
    `method`         varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci  NULL     DEFAULT '' COMMENT '方法名称',
    `request_method` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci   NULL     DEFAULT '' COMMENT '请求方式',
    `operator_type`  varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci   NULL     DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
    `oper_name`      varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci   NULL     DEFAULT '' COMMENT '操作人员',
    `oper_url`       varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci  NULL     DEFAULT '' COMMENT '请求URL',
    `oper_ip`        varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci  NULL     DEFAULT '' COMMENT '主机地址',
    `oper_param`     varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL     DEFAULT '' COMMENT '请求参数',
    `json_result`    varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL     DEFAULT '' COMMENT '返回参数',
    `status`         int                                                            NULL     DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
    `error_msg`      varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL     DEFAULT '' COMMENT '错误消息',
    `create_time`    timestamp                                                      NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `update_time`    timestamp                                                      NULL     DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    `is_deleted`     tinyint                                                        NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 80
  CHARACTER SET = utf8mb3
  COLLATE = utf8mb3_general_ci COMMENT = '操作日志记录'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log`
VALUES (64, '角色管理:修改', 'com.atguigu.lpyx.system.controller.SysRoleController.updateById()', 'PUT', 'MANAGE', NULL,
        '/admin/system/sysRole/updateById', '0:0:0:0:0:0:0:1',
        '{\"createTime\":1683196582000,\"roleCode\":\"yhgly\",\"roleName\":\"用户管理员\",\"description\":\"用户管理员\",\"id\":10}',
        '{\"code\":200,\"message\":\"成功\"}', 1, NULL, '2023-06-02 08:53:25', NULL, 0);
INSERT INTO `sys_oper_log`
VALUES (65, '角色管理:修改', 'com.atguigu.lpyx.system.controller.SysRoleController.updateById()', 'PUT', 'MANAGE',
        'admin', '/admin/system/sysRole/updateById', '0:0:0:0:0:0:0:1',
        '{\"createTime\":1683196566000,\"roleCode\":\"ptgly\",\"roleName\":\"平台管理员\",\"description\":\"平台管理员\",\"id\":9}',
        '{\"code\":200,\"message\":\"成功\"}', 1, NULL, '2023-06-02 09:03:31', NULL, 0);
INSERT INTO `sys_oper_log`
VALUES (66, '品牌管理:修改', 'com.atguigu.lpyx.product.controller.BrandController.updateById()', 'PUT', 'MANAGE',
        'admin', '/admin/product/brand/updateById', '117.173.208.34',
        '{\"createTime\":1683365427000,\"name\":\"小米\",\"logo\":\"http://139.198.127.41:9000/sph/20230506/小米.png\",\"id\":1}',
        '{\"code\":200,\"message\":\"成功\"}', 1, NULL, '2023-06-02 09:40:24', NULL, 0);
INSERT INTO `sys_oper_log`
VALUES (67, '角色管理:新增', 'com.atguigu.lpyx.system.controller.SysRoleController.save()', 'POST', 'MANAGE', 'admin',
        '/admin/system/sysRole/save', '0:0:0:0:0:0:0:1',
        '{\"roleCode\":\"1\",\"roleName\":\"1\",\"description\":\"1\",\"id\":27}',
        '{\"code\":200,\"message\":\"成功\"}', 1, NULL, '2023-06-25 10:13:43', NULL, 0);
INSERT INTO `sys_oper_log`
VALUES (68, '角色管理:新增', 'com.atguigu.lpyx.system.controller.SysRoleController.save()', 'POST', 'MANAGE', 'admin',
        '/admin/system/sysRole/save', '0:0:0:0:0:0:0:1',
        '{\"roleCode\":\"12\",\"roleName\":\"12\",\"description\":\"12\",\"id\":28}',
        '{\"code\":200,\"message\":\"成功\"}', 1, NULL, '2023-06-25 10:14:54', NULL, 0);
INSERT INTO `sys_oper_log`
VALUES (69, '角色管理:修改', 'com.atguigu.lpyx.system.controller.SysRoleController.updateById()', 'PUT', 'MANAGE',
        'admin', '/admin/system/sysRole/updateById', '0:0:0:0:0:0:0:1',
        '{\"roleCode\":\"112\",\"roleName\":\"112\",\"description\":\"112\",\"id\":28}', NULL, 0, NULL,
        '2023-06-25 10:15:38', NULL, 0);
INSERT INTO `sys_oper_log`
VALUES (70, '角色管理:修改', 'com.atguigu.lpyx.system.controller.SysRoleController.updateById()', 'PUT', 'MANAGE',
        'admin', '/admin/system/sysRole/updateById', '0:0:0:0:0:0:0:1',
        '{\"roleCode\":\"112\",\"roleName\":\"112\",\"description\":\"112\",\"id\":28}', NULL, 0, NULL,
        '2023-06-25 10:16:36', NULL, 0);
INSERT INTO `sys_oper_log`
VALUES (71, '角色管理:修改', 'com.atguigu.lpyx.system.controller.SysRoleController.updateById()', 'PUT', 'MANAGE',
        'admin', '/admin/system/sysRole/updateById', '0:0:0:0:0:0:0:1',
        '{\"roleCode\":\"112\",\"roleName\":\"112\",\"description\":\"112\",\"id\":28}',
        '{\"code\":200,\"message\":\"成功\"}', 1, NULL, '2023-06-25 10:23:35', NULL, 0);
INSERT INTO `sys_oper_log`
VALUES (72, '角色', 'com.atguigu.lpyx.controller.SysRoleController', 'GET', 'MANAGE', 'zhangsan',
        '/admin/system/sysRole/findByPage/1/3', '0:0:0:0:0:0:0:1', NULL,
        '{\"code\":200,\"data\":{\"endRow\":3,\"hasNextPage\":true,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":false,\"list\":[{\"createTime\":\"2023-07-19 14:09:32\",\"id\":34,\"isDeleted\":0,\"roleCode\":\"aaa\",\"roleName\":\"aaa\",\"updateTime\":\"2023-07-19 14:09:32\"},{\"createTime\":\"2023-07-18 14:36:22\",\"id\":33,\"isDeleted\":0,\"roleCode\":\"test\",\"roleName\":\"测试\",\"updateTime\":\"2023-07-18 14:36:22\"},{\"createTime\":\"2023-07-18 14:05:18\",\"id\":32,\"isDeleted\":0,\"roleCode\":\"test\",\"roleName\":\"test\",\"updateTime\":\"2023-07-18 14:05:18\"}],\"navigateFirstPage\":1,\"navigateLastPage\":2,\"navigatePages\":8,\"navigatepageNums\":[1,2],\"nextPage\":2,\"pageNum\":1,\"pageSize\":3,\"pages\":2,\"prePage\":0,\"size\":3,\"startRow\":1,\"total\":5},\"message\":\"操作成功\"}',
        0, NULL, '2023-07-19 14:26:14', NULL, 0);
INSERT INTO `sys_oper_log`
VALUES (73, '角色添加', 'com.atguigu.lpyx.controller.SysRoleController', 'POST', 'MANAGE', 'zhangsan',
        '/admin/system/sysRole/saveSysRole', '0:0:0:0:0:0:0:1', '{\"roleCode\":\"bbb\",\"roleName\":\"bbb\"}',
        '{\"code\":200,\"message\":\"操作成功\"}', 0, NULL, '2023-07-19 14:26:28', NULL, 0);
INSERT INTO `sys_oper_log`
VALUES (74, '角色', 'com.atguigu.lpyx.controller.SysRoleController', 'GET', 'MANAGE', 'zhangsan',
        '/admin/system/sysRole/findByPage/1/3', '0:0:0:0:0:0:0:1', NULL,
        '{\"code\":200,\"data\":{\"endRow\":3,\"hasNextPage\":true,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":false,\"list\":[{\"createTime\":\"2023-07-19 14:26:28\",\"id\":35,\"isDeleted\":0,\"roleCode\":\"bbb\",\"roleName\":\"bbb\",\"updateTime\":\"2023-07-19 14:26:28\"},{\"createTime\":\"2023-07-19 14:09:32\",\"id\":34,\"isDeleted\":0,\"roleCode\":\"aaa\",\"roleName\":\"aaa\",\"updateTime\":\"2023-07-19 14:09:32\"},{\"createTime\":\"2023-07-18 14:36:22\",\"id\":33,\"isDeleted\":0,\"roleCode\":\"test\",\"roleName\":\"测试\",\"updateTime\":\"2023-07-18 14:36:22\"}],\"navigateFirstPage\":1,\"navigateLastPage\":2,\"navigatePages\":8,\"navigatepageNums\":[1,2],\"nextPage\":2,\"pageNum\":1,\"pageSize\":3,\"pages\":2,\"prePage\":0,\"size\":3,\"startRow\":1,\"total\":6},\"message\":\"操作成功\"}',
        0, NULL, '2023-07-19 14:26:28', NULL, 0);
INSERT INTO `sys_oper_log`
VALUES (75, '角色菜单模块:分配菜单', 'com.atguigu.lpyx.service.impl.SysRoleMenuServiceImpl', 'POST', 'MANAGE',
        'zhangsan', '/admin/system/sysRoleMenu/doAssign', '0:0:0:0:0:0:0:1',
        '{\"roleId\":35,\"menuIdList\":[{\"id\":2,\"isHalf\":0},{\"id\":1,\"isHalf\":1}]}', 'null', 0, NULL,
        '2023-07-19 14:32:54', NULL, 0);
INSERT INTO `sys_oper_log`
VALUES (76, '角色', 'com.atguigu.lpyx.controller.SysRoleController', 'GET', 'MANAGE', 'zhangsan',
        '/admin/system/sysRole/findByPage/1/3', '0:0:0:0:0:0:0:1', NULL,
        '{\"code\":200,\"data\":{\"endRow\":3,\"hasNextPage\":true,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":false,\"list\":[{\"createTime\":\"2023-07-19 14:26:28\",\"id\":35,\"isDeleted\":0,\"roleCode\":\"bbb\",\"roleName\":\"bbb\",\"updateTime\":\"2023-07-19 14:26:28\"},{\"createTime\":\"2023-07-19 14:09:32\",\"id\":34,\"isDeleted\":0,\"roleCode\":\"aaa\",\"roleName\":\"aaa\",\"updateTime\":\"2023-07-19 14:09:32\"},{\"createTime\":\"2023-07-18 14:36:22\",\"id\":33,\"isDeleted\":0,\"roleCode\":\"test\",\"roleName\":\"测试\",\"updateTime\":\"2023-07-18 14:36:22\"}],\"navigateFirstPage\":1,\"navigateLastPage\":2,\"navigatePages\":8,\"navigatepageNums\":[1,2],\"nextPage\":2,\"pageNum\":1,\"pageSize\":3,\"pages\":2,\"prePage\":0,\"size\":3,\"startRow\":1,\"total\":6},\"message\":\"操作成功\"}',
        0, NULL, '2023-07-19 14:34:16', NULL, 0);
INSERT INTO `sys_oper_log`
VALUES (77, '角色菜单模块:分配菜单', 'com.atguigu.lpyx.service.impl.SysRoleMenuServiceImpl', 'POST', 'MANAGE',
        'zhangsan', '/admin/system/sysRoleMenu/doAssign', '0:0:0:0:0:0:0:1',
        '{\"roleId\":35,\"menuIdList\":[{\"id\":2,\"isHalf\":0},{\"id\":3,\"isHalf\":0},{\"id\":1,\"isHalf\":1}]}',
        'null', 1, '/ by zero', '2023-07-19 14:34:23', NULL, 0);
INSERT INTO `sys_oper_log`
VALUES (78, '角色菜单模块:分配菜单', 'com.atguigu.lpyx.service.impl.SysRoleMenuServiceImpl', 'POST', 'MANAGE',
        'zhangsan', '/admin/system/sysRoleMenu/doAssign', '0:0:0:0:0:0:0:1',
        '{\"roleId\":35,\"menuIdList\":[{\"id\":2,\"isHalf\":0},{\"id\":1,\"isHalf\":1}]}', 'null', 0, NULL,
        '2023-07-19 14:36:38', NULL, 0);
INSERT INTO `sys_oper_log`
VALUES (79, '角色', 'com.atguigu.lpyx.controller.SysRoleController', 'GET', 'MANAGE', 'zhangsan',
        '/admin/system/sysRole/findByPage/1/3', '0:0:0:0:0:0:0:1', NULL,
        '{\"code\":200,\"data\":{\"endRow\":3,\"hasNextPage\":true,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":false,\"list\":[{\"createTime\":\"2023-07-19 14:26:28\",\"id\":35,\"isDeleted\":0,\"roleCode\":\"bbb\",\"roleName\":\"bbb\",\"updateTime\":\"2023-07-19 14:26:28\"},{\"createTime\":\"2023-07-19 14:09:32\",\"id\":34,\"isDeleted\":0,\"roleCode\":\"aaa\",\"roleName\":\"aaa\",\"updateTime\":\"2023-07-19 14:09:32\"},{\"createTime\":\"2023-07-18 14:36:22\",\"id\":33,\"isDeleted\":0,\"roleCode\":\"test\",\"roleName\":\"测试\",\"updateTime\":\"2023-07-18 14:36:22\"}],\"navigateFirstPage\":1,\"navigateLastPage\":2,\"navigatePages\":8,\"navigatepageNums\":[1,2],\"nextPage\":2,\"pageNum\":1,\"pageSize\":3,\"pages\":2,\"prePage\":0,\"size\":3,\"startRow\":1,\"total\":6},\"message\":\"操作成功\"}',
        0, NULL, '2023-07-19 14:37:11', NULL, 0);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`
(
    `id`          bigint                                                        NOT NULL AUTO_INCREMENT COMMENT '角色id',
    `role_name`   varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci  NOT NULL DEFAULT '' COMMENT '角色名称',
    `role_code`   varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci  NULL     DEFAULT NULL COMMENT '角色编码',
    `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL     DEFAULT NULL COMMENT '描述',
    `create_time` timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `is_deleted`  tinyint                                                       NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 43
  CHARACTER SET = utf8mb3
  COLLATE = utf8mb3_general_ci COMMENT = '角色'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role`
VALUES (2, 'test02', 'test02', 'test02', '2025-07-30 21:23:41', '2025-07-30 15:35:10', 0);
INSERT INTO `sys_role`
VALUES (9, '平台管理员', 'ptgly', '平台管理员', '2025-07-30 10:36:06', '2025-07-30 15:35:13', 0);
INSERT INTO `sys_role`
VALUES (10, '用户管理员', 'yhgly', '用户管理员', '2025-07-30 10:36:22', '2025-07-30 15:35:15', 0);
INSERT INTO `sys_role`
VALUES (36, '销售人员', '销售', NULL, '2025-07-30 23:23:04', '2025-07-30 15:35:19', 0);
INSERT INTO `sys_role`
VALUES (37, '测试人员', 'test', NULL, '2025-07-30 23:24:26', '2025-07-30 15:35:21', 0);
INSERT INTO `sys_role`
VALUES (38, '开发人员', 'dev', NULL, '2025-07-30 23:24:32', '2025-07-30 15:35:23', 1);
INSERT INTO `sys_role`
VALUES (39, '运维人员', 'yw', NULL, '2025-07-30 10:04:41', '2025-07-30 15:35:27', 1);
INSERT INTO `sys_role`
VALUES (40, '123', '22', NULL, '2025-07-26 16:22:06', '2025-07-26 17:13:41', 0);
INSERT INTO `sys_role`
VALUES (42, '1', '1', NULL, '2025-07-26 17:13:56', '2025-07-26 17:29:32', 1);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`
(
    `id`          bigint    NOT NULL AUTO_INCREMENT,
    `role_id`     bigint    NOT NULL DEFAULT 0,
    `menu_id`     bigint    NOT NULL DEFAULT 0,
    `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `is_deleted`  tinyint   NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
    `is_half`     tinyint   NULL     DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    INDEX `idx_role_id` (`role_id` ASC) USING BTREE,
    INDEX `idx_menu_id` (`menu_id` ASC) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 137
  CHARACTER SET = utf8mb3
  COLLATE = utf8mb3_general_ci COMMENT = '角色菜单'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu`
VALUES (69, 32, 2, '2023-07-18 14:32:43', '2023-07-18 14:32:43', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (70, 32, 3, '2023-07-18 14:32:43', '2023-07-18 14:32:43', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (71, 32, 1, '2023-07-18 14:32:43', '2023-07-18 14:32:43', 0, 1);
INSERT INTO `sys_role_menu`
VALUES (84, 33, 2, '2023-07-18 14:39:13', '2023-07-18 14:39:13', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (85, 33, 30, '2023-07-18 14:39:13', '2023-07-18 14:39:13', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (86, 33, 3, '2023-07-18 14:39:13', '2023-07-18 14:39:13', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (87, 33, 1, '2023-07-18 14:39:13', '2023-07-18 14:39:13', 0, 1);
INSERT INTO `sys_role_menu`
VALUES (88, 10, 1, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (89, 10, 2, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (90, 10, 30, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (91, 10, 3, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (92, 10, 4, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (93, 10, 21, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (94, 10, 5, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (95, 10, 7, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (96, 10, 6, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (97, 10, 8, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (98, 10, 9, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (99, 10, 10, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (100, 10, 11, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (101, 10, 12, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (102, 10, 13, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (103, 10, 14, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (104, 10, 15, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (105, 10, 16, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (106, 10, 17, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (107, 10, 18, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (110, 35, 2, '2023-07-19 14:36:38', '2023-07-19 14:36:38', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (111, 35, 1, '2023-07-19 14:36:38', '2023-07-19 14:36:38', 0, 1);
INSERT INTO `sys_role_menu`
VALUES (112, 40, 2, '2025-07-29 16:46:32', '2025-07-29 16:46:32', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (113, 40, 3, '2025-07-29 16:46:32', '2025-07-29 16:46:32', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (114, 40, 4, '2025-07-29 16:46:32', '2025-07-29 16:46:32', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (115, 40, 1, '2025-07-29 16:46:32', '2025-07-29 16:46:32', 0, 1);
INSERT INTO `sys_role_menu`
VALUES (116, 37, 2, '2025-07-30 14:45:49', '2025-07-30 14:45:49', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (117, 37, 1, '2025-07-30 14:45:49', '2025-07-30 14:45:49', 0, 1);
INSERT INTO `sys_role_menu`
VALUES (118, 9, 1, '2025-07-30 15:16:22', '2025-07-30 15:16:22', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (119, 9, 2, '2025-07-30 15:16:22', '2025-07-30 15:16:22', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (120, 9, 3, '2025-07-30 15:16:22', '2025-07-30 15:16:22', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (121, 9, 4, '2025-07-30 15:16:22', '2025-07-30 15:16:22', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (122, 9, 21, '2025-07-30 15:16:22', '2025-07-30 15:16:22', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (123, 9, 5, '2025-07-30 15:16:22', '2025-07-30 15:16:22', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (124, 9, 7, '2025-07-30 15:16:22', '2025-07-30 15:16:22', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (125, 9, 6, '2025-07-30 15:16:22', '2025-07-30 15:16:22', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (126, 9, 8, '2025-07-30 15:16:22', '2025-07-30 15:16:22', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (127, 9, 9, '2025-07-30 15:16:22', '2025-07-30 15:16:22', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (128, 9, 10, '2025-07-30 15:16:22', '2025-07-30 15:16:22', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (129, 9, 11, '2025-07-30 15:16:22', '2025-07-30 15:16:22', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (130, 9, 12, '2025-07-30 15:16:22', '2025-07-30 15:16:22', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (131, 9, 13, '2025-07-30 15:16:22', '2025-07-30 15:16:22', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (132, 9, 14, '2025-07-30 15:16:22', '2025-07-30 15:16:22', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (133, 9, 15, '2025-07-30 15:16:22', '2025-07-30 15:16:22', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (134, 9, 16, '2025-07-30 15:16:22', '2025-07-30 15:16:22', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (135, 9, 17, '2025-07-30 15:16:22', '2025-07-30 15:16:22', 0, 0);
INSERT INTO `sys_role_menu`
VALUES (136, 9, 18, '2025-07-30 15:16:22', '2025-07-30 15:16:22', 0, 0);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`
(
    `id`          bigint                                                        NOT NULL AUTO_INCREMENT COMMENT '会员id',
    `username`    varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci  NOT NULL DEFAULT '' COMMENT '用户名',
    `password`    varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci  NOT NULL DEFAULT '' COMMENT '密码',
    `name`        varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci  NULL     DEFAULT NULL COMMENT '姓名',
    `phone`       varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci  NULL     DEFAULT NULL COMMENT '手机',
    `avatar`      varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL     DEFAULT NULL COMMENT '头像',
    `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL     DEFAULT NULL COMMENT '描述',
    `status`      tinyint                                                       NOT NULL DEFAULT 1 COMMENT '状态（1：正常 0：停用）',
    `create_time` timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `is_deleted`  tinyint                                                       NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 17
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户表'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user`
VALUES (1, 'admin', '96e79218965eb72c92a549dd5a330112', 'admin', '15011113652',
        'http://127.0.0.1:9000/lpyx-bucket/20250728/5ce6df3abad94e85861e9c580976adc2微信图片_20250718182248_5.jpg',
        NULL, 1, '2025-07-23 10:17:18', '2025-07-28 21:17:27', 0);
INSERT INTO `sys_user`
VALUES (5, 'zhangsan', '96e79218965eb72c92a549dd5a330112', '张三', '13589658968',
        'http://127.0.0.1:9000/lpyx-bucket/20250728/e8b4c03b71b440abbbef9912c76a968f微信图片_20250718182237_4.jpg', '',
        1, '2025-07-26 10:38:30', '2025-07-28 21:17:23', 0);
INSERT INTO `sys_user`
VALUES (6, 'test1212', '96e79218965eb72c92a549dd5a330112', 'test12', '15011245632',
        'http://127.0.0.1:9000/lpyx-bucket/20250728/48a906dbf8d54c1ab02b690cd6387b83微信图片_20250718182252_6.jpg',
        'test12', 1, '2025-07-26 11:03:48', '2025-07-28 20:15:53', 0);
INSERT INTO `sys_user`
VALUES (12, 'lucy', '96e79218965eb72c92a549dd5a330112', '2', '1',
        'http://127.0.0.1:9000/lpyx-bucket/20250728/74a91b64fd0c4a1b8608f3aec9c0e195微信图片_20250718182248_5.jpg', '1',
        1, '2025-07-26 14:36:03', '2025-07-28 20:15:49', 0);
INSERT INTO `sys_user`
VALUES (14, '1', 'c4ca4238a0b923820dcc509a6f75849b', '1', '1',
        'http://127.0.0.1:9000/lpyx-bucket/20250728/f77d8d3340bc4abdbe26c77c83f13f3e微信图片_20250718182237_4.jpg', '1',
        1, '2025-07-28 13:47:28', '2025-07-30 15:24:55', 1);
INSERT INTO `sys_user`
VALUES (15, '1', 'c4ca4238a0b923820dcc509a6f75849b', '1', '1', NULL, '1', 1, '2025-07-30 15:25:06',
        '2025-07-30 15:27:27', 1);
INSERT INTO `sys_user`
VALUES (16, '1', '96e79218965eb72c92a549dd5a330112', '1', '1', NULL, '1', 1, '2025-07-30 15:27:37',
        '2025-07-30 15:27:37', 0);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`
(
    `id`          bigint    NOT NULL AUTO_INCREMENT COMMENT '主键id',
    `role_id`     bigint    NOT NULL DEFAULT 0 COMMENT '角色id',
    `user_id`     bigint    NOT NULL DEFAULT 0 COMMENT '用户id',
    `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `is_deleted`  tinyint   NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
    PRIMARY KEY (`id`) USING BTREE,
    INDEX `idx_role_id` (`role_id` ASC) USING BTREE,
    INDEX `idx_admin_id` (`user_id` ASC) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 22
  CHARACTER SET = utf8mb3
  COLLATE = utf8mb3_general_ci COMMENT = '用户角色'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role`
VALUES (7, 9, 11, '2023-07-18 10:59:09', '2023-07-18 10:59:09', 0);
INSERT INTO `sys_user_role`
VALUES (10, 10, 8, '2023-07-18 11:09:35', '2023-07-18 11:09:35', 0);
INSERT INTO `sys_user_role`
VALUES (11, 10, 5, '2023-07-18 14:28:42', '2023-07-18 14:28:42', 0);
INSERT INTO `sys_user_role`
VALUES (13, 33, 12, '2023-07-18 14:39:07', '2023-07-18 14:39:07', 0);
INSERT INTO `sys_user_role`
VALUES (16, 32, 6, '2025-07-30 14:45:36', '2025-07-30 14:45:36', 0);
INSERT INTO `sys_user_role`
VALUES (17, 37, 6, '2025-07-30 14:45:36', '2025-07-30 14:45:36', 0);
INSERT INTO `sys_user_role`
VALUES (18, 9, 1, '2025-07-30 15:16:26', '2025-07-30 15:16:26', 0);
INSERT INTO `sys_user_role`
VALUES (19, 37, 14, '2025-07-30 15:24:11', '2025-07-30 15:24:11', 0);
INSERT INTO `sys_user_role`
VALUES (20, 37, 15, '2025-07-30 15:25:10', '2025-07-30 15:25:10', 0);
INSERT INTO `sys_user_role`
VALUES (21, 37, 16, '2025-07-30 15:27:40', '2025-07-30 15:27:40', 0);

-- ----------------------------
-- Table structure for user_address
-- ----------------------------
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address`
(
    `id`            int                                                           NOT NULL AUTO_INCREMENT,
    `user_id`       int                                                           NOT NULL DEFAULT 0 COMMENT '用户ID',
    `name`          varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci  NOT NULL DEFAULT '',
    `phone`         varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci  NOT NULL DEFAULT '' COMMENT '电话',
    `tag_name`      varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci  NULL     DEFAULT NULL COMMENT '标签名称',
    `province_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci  NULL     DEFAULT NULL,
    `city_code`     varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci  NULL     DEFAULT NULL,
    `district_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci  NULL     DEFAULT NULL,
    `address`       varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '详细地址',
    `full_address`  varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL     DEFAULT NULL COMMENT '完整地址',
    `is_default`    tinyint                                                       NOT NULL DEFAULT 1 COMMENT '是否默认地址（0：否 1：是）',
    `create_time`   timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time`   timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `is_deleted`    tinyint                                                       NOT NULL DEFAULT 0 COMMENT '删除标识（0：否 1：是）',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 4
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户地址表'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_address
-- ----------------------------
INSERT INTO `user_address`
VALUES (1, 1, '晴天', '15014526352', '家', '110000', '110100', '110114', '天通苑大街1号',
        '北京市北京市昌平区天通苑大街1号', 0, '2023-05-12 09:50:41', '2023-06-02 11:15:17', 0);
INSERT INTO `user_address`
VALUES (2, 1, '张三', '15012563333', '公司', '130000', '130700', '130724', '快乐家园1号',
        '河北省张家口市沽源县快乐家园1号', 1, '2023-05-17 16:57:11', '2023-06-07 15:35:49', 0);
INSERT INTO `user_address`
VALUES (3, 30, 'zhangs', '15201252001', '家', '110000', '110100', '110101', 'ddddd', '北京市北京市东城区ddddd', 1,
        '2023-05-23 14:14:00', '2023-05-23 14:14:00', 0);

-- ----------------------------
-- Table structure for user_browse_history
-- ----------------------------
DROP TABLE IF EXISTS `user_browse_history`;
CREATE TABLE `user_browse_history`
(
    `id`          bigint    NOT NULL AUTO_INCREMENT COMMENT '主键',
    `user_id`     bigint    NOT NULL COMMENT '用户ID',
    `sku_id`      bigint    NOT NULL DEFAULT 0 COMMENT '商品skuID',
    `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `is_deleted`  tinyint   NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`) USING BTREE,
    INDEX `idx_user_id` (`user_id` ASC) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 10
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户浏览记录表'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_browse_history
-- ----------------------------
INSERT INTO `user_browse_history`
VALUES (1, 1, 1, '2023-05-31 15:19:30', '2023-06-16 11:56:44', 0);
INSERT INTO `user_browse_history`
VALUES (2, 1, 2, '2023-05-31 15:35:39', '2023-06-08 22:33:31', 0);
INSERT INTO `user_browse_history`
VALUES (3, 1, 3, '2023-05-31 15:46:12', '2023-06-08 08:42:25', 0);
INSERT INTO `user_browse_history`
VALUES (4, 1, 4, '2023-05-31 15:46:19', '2023-06-13 16:35:13', 0);
INSERT INTO `user_browse_history`
VALUES (5, 1, 5, '2023-05-31 15:46:23', '2023-06-08 08:42:26', 0);
INSERT INTO `user_browse_history`
VALUES (6, 1, 6, '2023-05-31 15:46:28', '2023-06-14 10:02:23', 0);
INSERT INTO `user_browse_history`
VALUES (7, 1, 7, '2023-05-31 15:46:33', '2023-05-31 17:27:30', 0);
INSERT INTO `user_browse_history`
VALUES (8, 1, 8, '2023-05-31 15:46:38', '2023-05-31 17:22:56', 0);
INSERT INTO `user_browse_history`
VALUES (9, 1, 9, '2023-05-31 15:46:44', '2023-05-31 17:27:18', 0);

-- ----------------------------
-- Table structure for user_collect
-- ----------------------------
DROP TABLE IF EXISTS `user_collect`;
CREATE TABLE `user_collect`
(
    `id`          bigint    NOT NULL AUTO_INCREMENT COMMENT '主键',
    `user_id`     bigint    NOT NULL COMMENT '用户ID',
    `sku_id`      bigint    NOT NULL DEFAULT 0 COMMENT '商品skuID',
    `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `is_deleted`  tinyint   NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`) USING BTREE,
    INDEX `idx_user_id` (`user_id` ASC) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 4
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户收藏表'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_collect
-- ----------------------------
INSERT INTO `user_collect`
VALUES (1, 1, 2, '2023-05-31 14:55:22', '2023-05-31 14:55:22', 0);
INSERT INTO `user_collect`
VALUES (2, 1, 1, '2023-05-31 17:27:50', '2023-05-31 17:27:50', 0);
INSERT INTO `user_collect`
VALUES (3, 1, 4, '2023-06-13 16:35:18', '2023-06-13 16:35:18', 0);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`
(
    `id`              bigint                                                        NOT NULL AUTO_INCREMENT COMMENT 'id',
    `username`        varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci  NULL     DEFAULT NULL COMMENT '用户名',
    `password`        varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL     DEFAULT NULL COMMENT '密码',
    `nick_name`       varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL     DEFAULT NULL COMMENT '昵称',
    `phone`           varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci  NULL     DEFAULT NULL COMMENT '电话号码',
    `avatar`          varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL     DEFAULT NULL COMMENT '头像',
    `sex`             tinyint(1)                                                    NULL     DEFAULT NULL COMMENT '性别',
    `memo`            varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL     DEFAULT NULL COMMENT '备注',
    `open_id`         varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci  NULL     DEFAULT NULL COMMENT '微信open id',
    `union_id`        varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci  NULL     DEFAULT NULL COMMENT '微信开放平台unionID',
    `last_login_ip`   varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci  NULL     DEFAULT NULL COMMENT '最后一次登录ip',
    `last_login_time` datetime                                                      NULL     DEFAULT NULL COMMENT '最后一次登录时间',
    `status`          tinyint                                                       NULL     DEFAULT NULL COMMENT '状态：1为正常，0为禁止',
    `create_time`     timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time`     timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `is_deleted`      tinyint                                                       NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 33
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci COMMENT = '会员表'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info`
VALUES (1, '13700032456', '96e79218965eb72c92a549dd5a330112', 'test', '13700032456',
        'http://139.198.127.41:9000/sph/20230505/default_handsome.jpg', 1, 'test', NULL, NULL, '127.0.0.1',
        '2023-07-25 09:55:06', 1, '2023-05-12 09:14:03', '2023-07-25 09:55:06', 0);
INSERT INTO `user_info`
VALUES (30, '13700011111', '96e79218965eb72c92a549dd5a330112', '11', NULL,
        'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132',
        0, NULL, NULL, NULL, '0:0:0:0:0:0:0:1', '2023-05-23 06:34:35', 1, '2023-05-23 14:03:53', '2023-05-23 14:34:35',
        0);
INSERT INTO `user_info`
VALUES (31, '15100000000', '96e79218965eb72c92a549dd5a330112', '11', '15100000000',
        'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132',
        0, NULL, NULL, NULL, NULL, NULL, 1, '2023-06-12 10:29:01', '2023-06-12 10:29:01', 0);
INSERT INTO `user_info`
VALUES (32, '13521096172', '96e79218965eb72c92a549dd5a330112', '111', '13521096172',
        'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132',
        0, NULL, NULL, NULL, '0:0:0:0:0:0:0:1', '2023-07-22 10:24:06', 1, '2023-07-21 16:26:53', '2023-07-22 10:24:06',
        0);

SET FOREIGN_KEY_CHECKS = 1;
