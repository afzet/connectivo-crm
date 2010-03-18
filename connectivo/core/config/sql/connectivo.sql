/*
MySQL Data Transfer
Source Host: mysql.sixninellc.com
Source Database: connectivo
Target Host: mysql.sixninellc.com
Target Database: connectivo
Date: 7/4/2009 3:12:25 AM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for action_logs
-- ----------------------------
DROP TABLE IF EXISTS `action_logs`;
CREATE TABLE `action_logs` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `controller` varchar(255) NOT NULL default '',
  `action` varchar(255) NOT NULL default '',
  `params` varchar(255) NOT NULL default '',
  `created` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2373 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for contact_types
-- ----------------------------
DROP TABLE IF EXISTS `contact_types`;
CREATE TABLE `contact_types` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int(10) NOT NULL auto_increment,
  `lead_id` int(10) default NULL,
  `contact_type_id` int(1) default NULL,
  `name` varchar(100) default NULL,
  `title` varchar(100) default NULL,
  `value` varchar(255) default NULL,
  `created` datetime default NULL,
  `modified` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for credit_cards
-- ----------------------------
DROP TABLE IF EXISTS `credit_cards`;
CREATE TABLE `credit_cards` (
  `id` int(10) NOT NULL auto_increment,
  `billing_name` varchar(100) default NULL,
  `billing_zip` int(5) default NULL,
  `card_type` varchar(40) default NULL,
  `card_number` varchar(30) default NULL,
  `card_exp` varchar(10) default NULL,
  `card_cvv2` varchar(10) default NULL,
  `amount` varchar(20) NOT NULL,
  `code` varchar(6) NOT NULL,
  `created` datetime default NULL,
  `modified` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `parent_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for leads
-- ----------------------------
DROP TABLE IF EXISTS `leads`;
CREATE TABLE `leads` (
  `id` mediumint(9) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `company` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `phone` varchar(255) default NULL,
  `url` varchar(255) default NULL,
  `source` varchar(255) default NULL,
  `product_id` int(20) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `leadtime` varchar(255) default NULL,
  `notes` text,
  `status` int(1) default '0',
  `created` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for notes
-- ----------------------------
DROP TABLE IF EXISTS `notes`;
CREATE TABLE `notes` (
  `id` int(10) NOT NULL auto_increment,
  `lead_id` int(10) default NULL,
  `user_id` int(10) NOT NULL,
  `type_id` tinyint(1) default NULL,
  `note` text,
  `date` date default NULL,
  `created` datetime default NULL,
  `modified` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(200) default NULL,
  `created` datetime default NULL,
  `modified` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `value` varchar(250) default NULL,
  `created` datetime default NULL,
  `modified` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for uploads
-- ----------------------------
DROP TABLE IF EXISTS `uploads`;
CREATE TABLE `uploads` (
  `id` int(11) NOT NULL auto_increment,
  `lead_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` varchar(255) default NULL,
  `name` varchar(75) NOT NULL,
  `type` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `data` mediumblob NOT NULL,
  `created` datetime default NULL,
  `modified` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `username` varchar(255) NOT NULL default '',
  `password` varchar(255) NOT NULL default '',
  `group_id` int(11) NOT NULL default '0',
  `created` datetime default NULL,
  `updated` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `action_logs` VALUES ('2349', '1', 'leads', 'index', '', '2009-07-03 23:21:37');
INSERT INTO `action_logs` VALUES ('2350', '1', 'users', 'index', '', '2009-07-03 23:21:41');
INSERT INTO `action_logs` VALUES ('2351', '1', 'users', 'edit', '1', '2009-07-03 23:21:45');
INSERT INTO `action_logs` VALUES ('2352', '1', 'users', 'edit', '1', '2009-07-03 23:21:48');
INSERT INTO `action_logs` VALUES ('2353', '1', 'users', 'index', '', '2009-07-03 23:21:49');
INSERT INTO `action_logs` VALUES ('2354', '1', 'users', 'edit', '20', '2009-07-03 23:21:51');
INSERT INTO `action_logs` VALUES ('2355', '1', 'users', 'edit', '20', '2009-07-03 23:21:55');
INSERT INTO `action_logs` VALUES ('2356', '1', 'users', 'index', '', '2009-07-03 23:21:56');
INSERT INTO `action_logs` VALUES ('2357', '1', 'users', 'index', '', '2009-07-03 23:26:43');
INSERT INTO `action_logs` VALUES ('2358', '1', 'users', 'logout', '', '2009-07-03 23:26:50');
INSERT INTO `action_logs` VALUES ('2359', '1', 'users', 'index', '', '2009-07-03 23:28:49');
INSERT INTO `action_logs` VALUES ('2360', '1', 'leads', 'index', '', '2009-07-03 23:28:52');
INSERT INTO `action_logs` VALUES ('2361', '1', 'action_logs', 'index', '', '2009-07-03 23:28:55');
INSERT INTO `action_logs` VALUES ('2362', '1', 'payments', 'index', '', '2009-07-03 23:28:57');
INSERT INTO `action_logs` VALUES ('2363', '1', 'payments', 'index', '', '2009-07-03 23:29:28');
INSERT INTO `action_logs` VALUES ('2364', '1', 'action_logs', 'index', '', '2009-07-03 23:29:31');
INSERT INTO `action_logs` VALUES ('2365', '1', 'leads', 'index', '', '2009-07-03 23:38:03');
INSERT INTO `action_logs` VALUES ('2366', '1', 'users', 'logout', '', '2009-07-03 23:38:14');
INSERT INTO `action_logs` VALUES ('2367', '20', 'leads', 'index', '', '2009-07-03 23:38:19');
INSERT INTO `action_logs` VALUES ('2368', '20', 'search', 'index', '', '2009-07-03 23:41:56');
INSERT INTO `action_logs` VALUES ('2369', '20', 'search', 'index', '', '2009-07-03 23:42:01');
INSERT INTO `action_logs` VALUES ('2370', '20', 'search', 'index', '', '2009-07-03 23:42:04');
INSERT INTO `action_logs` VALUES ('2371', '20', 'users', 'logout', '', '2009-07-03 23:42:39');
INSERT INTO `action_logs` VALUES ('2372', '1', 'leads', 'index', '', '2009-07-03 23:57:18');
INSERT INTO `contact_types` VALUES ('1', 'Email');
INSERT INTO `contact_types` VALUES ('2', 'Fax Number');
INSERT INTO `contact_types` VALUES ('3', 'Cell Phone');
INSERT INTO `contact_types` VALUES ('4', 'Home Phone');
INSERT INTO `contact_types` VALUES ('5', 'Other');
INSERT INTO `groups` VALUES ('1', 'Admin', null);
INSERT INTO `groups` VALUES ('2', 'Staff', null);
INSERT INTO `settings` VALUES ('1', 'company', 'Connectivo', '2009-07-03 16:34:55', '2009-07-03 16:34:58');
INSERT INTO `settings` VALUES ('2', 'copyright', 'Created by <a href=\"http://twitter.com/jonbradley\" target=\"new\" rel=\"external\">Jonathan Bradley<a>.', '2009-07-03 16:34:55', '2009-07-03 16:34:58');
INSERT INTO `settings` VALUES ('4', 'email', 'info@sixninellc.om', '2009-07-03 16:34:55', '2009-07-03 16:34:58');
INSERT INTO `users` VALUES ('1', 'Administrator', 'admin', '74bc469af3d692f9d15242af00e556a3b0a4bc76', '1', '2009-03-31 12:43:56', '2009-07-03 23:21:48');
INSERT INTO `users` VALUES ('20', 'Staff', 'staff', '5d7adf35edb677544f22fb003dc2a480b8b04a44', '2', '2009-04-09 11:53:52', '2009-07-03 23:21:55');
