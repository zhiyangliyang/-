USE jsptest;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `jspuser`
-- ----------------------------
DROP TABLE IF EXISTS `jspuser`;
CREATE TABLE `jspuser` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jspuser
-- ----------------------------
INSERT INTO `jspuser` VALUES ('1', 'test1', 'test1@lyu.edu.cn', 'test123');
INSERT INTO `jspuser` VALUES ('2', 'test2', 'test2@lyu.edu.cn', 'test223');
