-- phpMyAdmin SQL Dump
-- version 3.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 27, 2009 at 01:37 PM
-- Server version: 5.1.30
-- PHP Version: 5.2.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `loanmodc_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `processor` tinyint(1) NOT NULL DEFAULT '1',
  `team_id` int(1) DEFAULT '0',
  `role_id` int(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `fullname`, `firstname`, `lastname`, `username`, `password`, `email`, `status`, `processor`, `team_id`, `role_id`, `created`, `modified`) VALUES
(1, 'System Administrator', 'System', 'Adminstrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@loanmodcrm.net', 1, 0, 0, 0, '2008-12-09 11:30:02', '2008-12-09 11:23:12'),
(30, 'Processor Opener', 'Processor', 'Opener', 'opener', '5e40574d9651e2f52ac5a74cc039fd23', 'opener@loanmodcrm.org', 1, 1, 7, 1, '2009-02-02 13:55:18', '2009-02-02 13:55:27'),
(31, 'Processor Updater', 'Processor', 'Updater', 'updater', '878ec3cebea5b2c1ee4c0becdb00d3d3', 'updater@loanmodcrm.org', 1, 1, 7, 2, '2009-02-02 13:56:20', '2009-02-02 13:56:36'),
(32, 'Processor Negotiator', 'Processor', 'Negotiator', 'negotiator', '96e7b619fba462a4de1b8d25b4bf286a', 'negotiator@loanmodcrm.org', 1, 1, 7, 3, '2009-02-02 13:57:13', '2009-02-02 13:57:13');

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE IF NOT EXISTS `agents` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `manager_id` int(10) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `extension` int(4) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `commission_rate` decimal(7,2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=95 ;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `manager_id`, `fullname`, `firstname`, `lastname`, `extension`, `username`, `password`, `email`, `status`, `commission_rate`, `created`, `modified`) VALUES
(94, 30, 'Demo Agent', 'Demo', 'Agent', NULL, 'agent', 'b33aed8f3134996703dc39f9a7c95783', 'agent@loanmodcrm.org', 1, 20.00, '2009-02-02 13:52:29', '2009-02-02 13:52:29');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE IF NOT EXISTS `banks` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `extension` varchar(100) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=126 ;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `name`, `contact`, `email`, `phone`, `extension`, `fax`, `created`, `modified`) VALUES
(125, 'Demo Bank', NULL, NULL, NULL, NULL, NULL, '2009-02-02 14:05:31', '2009-03-23 15:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `cake_sessions`
--

CREATE TABLE IF NOT EXISTS `cake_sessions` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `data` text,
  `expires` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cake_sessions`
--

INSERT INTO `cake_sessions` (`id`, `data`, `expires`) VALUES
('e412e6ff17a6bf46f4094bea37913c95', 'Config|a:4:{s:9:"userAgent";s:32:"ce623bb8670bcb6312ba6bbf0619f386";s:4:"time";i:1238211316;s:4:"rand";i:1374111721;s:7:"timeout";i:10;}Manager|a:1:{s:7:"Manager";a:11:{s:2:"id";s:2:"30";s:8:"fullname";s:11:"Demo Branch";s:9:"firstname";s:4:"Firs";s:8:"lastname";s:6:"Branch";s:9:"extension";N;s:8:"username";s:7:"manager";s:8:"password";s:32:"1d0258c2440a8d19e716292b231e3190";s:5:"email";s:21:"branch@loanmodcrm.com";s:6:"status";s:1:"1";s:7:"created";s:19:"2009-02-02 13:52:09";s:8:"modified";s:19:"2009-02-02 13:52:09";}}Admin|a:2:{s:5:"Admin";a:13:{s:2:"id";s:1:"1";s:8:"fullname";s:20:"System Administrator";s:9:"firstname";s:6:"System";s:8:"lastname";s:12:"Adminstrator";s:8:"username";s:5:"admin";s:8:"password";s:32:"21232f297a57a5a743894a0e4a801fc3";s:5:"email";s:20:"admin@loanmodcrm.net";s:6:"status";s:1:"1";s:9:"processor";s:1:"0";s:7:"team_id";s:1:"0";s:7:"role_id";s:1:"0";s:7:"created";s:19:"2008-12-09 11:30:02";s:8:"modified";s:19:"2008-12-09 11:23:12";}s:4:"Team";a:4:{s:2:"id";N;s:4:"name";N;s:7:"created";N;s:8:"modified";N;}}Message|a:0:{}User|a:6:{s:4:"User";a:11:{s:2:"id";s:4:"1488";s:8:"agent_id";s:2:"94";s:7:"team_id";s:1:"7";s:11:"referrer_id";N;s:5:"email";s:18:"doe@loanmodcrm.org";s:8:"username";s:4:"demo";s:8:"password";s:32:"fe01ce2a7fbac8fafaed7c982a04e229";s:17:"verification_code";s:32:"a0848ddbf3ca70ed7b1a897d66e16b4a";s:6:"status";s:1:"1";s:7:"created";s:19:"2009-02-02 14:01:42";s:8:"modified";s:19:"2009-02-02 14:01:42";}s:5:"Agent";a:13:{s:2:"id";s:2:"94";s:10:"manager_id";s:2:"30";s:8:"fullname";s:10:"Demo Agent";s:9:"firstname";s:4:"Demo";s:8:"lastname";s:5:"Agent";s:9:"extension";N;s:8:"username";s:5:"agent";s:8:"password";s:32:"b33aed8f3134996703dc39f9a7c95783";s:5:"email";s:20:"agent@loanmodcrm.org";s:6:"status";s:1:"1";s:15:"commission_rate";s:5:"20.00";s:7:"created";s:19:"2009-02-02 13:52:29";s:8:"modified";s:19:"2009-02-02 13:52:29";}s:11:"UserProfile";a:19:{s:2:"id";s:4:"1496";s:7:"user_id";s:4:"1488";s:9:"firstname";s:4:"Demo";s:8:"lastname";s:8:"Customer";s:7:"address";s:15:"123 Some Street";s:8:"address2";s:13:"Wilton Manors";s:4:"city";s:7:"Florida";s:5:"state";s:2:"FL";s:7:"zipcode";s:5:"33324";s:10:"phone_home";s:12:"123-456-7890";s:10:"phone_work";s:12:"123-456-7890";s:10:"phone_cell";s:12:"123-456-7890";s:3:"dob";s:10:"1980-09-20";s:3:"ssn";s:11:"123-45-6789";s:11:"co_borrower";s:8:"Jane Doe";s:16:"co_borrower_cell";s:12:"123-456-7890";s:17:"co_borrower_email";s:18:"doe@loanmodcrm.org";s:7:"created";s:19:"2009-02-02 14:01:42";s:8:"modified";s:19:"2009-02-02 14:01:42";}s:7:"UserJob";a:0:{}s:12:"UserMortgage";a:0:{}s:8:"UserNote";a:2:{i:0;a:6:{s:2:"id";s:4:"3653";s:7:"user_id";s:4:"1488";s:7:"message";s:21:"Internal Testing Note";s:4:"type";s:1:"0";s:7:"created";s:19:"2009-02-02 14:06:42";s:8:"modified";s:19:"2009-02-02 14:06:42";}i:1;a:6:{s:2:"id";s:4:"3655";s:7:"user_id";s:4:"1488";s:7:"message";s:26:"Client Facing Testing Note";s:4:"type";s:1:"1";s:7:"created";s:19:"2009-02-02 14:07:04";s:8:"modified";s:19:"2009-02-02 14:07:04";}}}', 1238211317);

-- --------------------------------------------------------

--
-- Table structure for table `commissions`
--

CREATE TABLE IF NOT EXISTS `commissions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `agent_id` int(10) DEFAULT NULL,
  `invoice_id` int(10) DEFAULT NULL,
  `payment_id` int(10) DEFAULT NULL,
  `paid` decimal(7,2) DEFAULT NULL,
  `commission` decimal(7,2) DEFAULT NULL,
  `pay_period` tinyint(1) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `modified` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2962 ;

--
-- Dumping data for table `commissions`
--

INSERT INTO `commissions` (`id`, `user_id`, `agent_id`, `invoice_id`, `payment_id`, `paid`, `commission`, `pay_period`, `created`, `modified`) VALUES
(2959, 1488, 94, 1126, 1, 500.00, 100.00, 0, '2009-02-02', '2009-02-02'),
(2961, 1488, 94, 1126, 2, 600.00, 120.00, 1, '2009-03-20', '2009-03-20');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE IF NOT EXISTS `documents` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `document_name` varchar(255) DEFAULT NULL,
  `description` text,
  `hasFile` tinyint(1) DEFAULT NULL,
  `document_file` varchar(100) DEFAULT NULL,
  `employment` int(1) DEFAULT NULL,
  `initial_doc` tinyint(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=90 ;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `document_name`, `description`, `hasFile`, `document_file`, `employment`, `initial_doc`, `created`, `modified`) VALUES
(1, 'Legal Notices', 'We need copies of everything your lender has sent to you.', 0, '', NULL, 1, '2008-12-09 11:32:35', '2008-12-09 11:32:35'),
(2, 'Bank Statements', 'We need copies of your last 2 months statements. &#40;ALL PAGES&#41;', 0, '', NULL, 1, '2008-12-09 11:33:22', '2008-12-09 11:33:22'),
(3, 'Mortgage Coupon or Statement.', 'We need copies of the most recent coupons or statements for all loans secured against this home.', 0, '', NULL, 1, '2008-12-09 11:33:37', '2008-12-09 11:33:37'),
(4, 'Notes on all loans secured against this home.', 'This is the &quot;Promissory Note&quot; on the mortgage. In most cases it is a 1 to 6 page document that describes the terms of the loan. Typically it will say &quot;Note&quot; in the title of the page. IF THERE IS AN ARM RIDER PLEASE INCLUDE THIS.', 0, '', NULL, 1, '2008-12-09 11:34:15', '2008-12-09 11:34:15'),
(5, 'Most Recent Real Estate Tax Bill', '', 0, '', NULL, 0, '2008-12-09 11:34:22', '2008-12-09 11:34:22'),
(6, 'Insurance Policy', '', 0, '', NULL, 0, '2008-12-09 11:34:32', '2008-12-09 11:34:32'),
(7, 'Last 2 Years Personal Tax Returns', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(8, 'Last 2 Years Business Tax Returns', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(9, 'Last 6 Months Business Bank Statements', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(10, 'Copy of Business License', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(11, '6 Month Profit And Loss Statement', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(12, 'Social Security Awards Letter', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(13, 'Last 2 Years 1099', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(14, 'Pen Letter', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(15, 'Divorce Decree', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(16, 'Award''s Letter From Social Security for Child', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(17, 'Proof of Child Support', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(18, 'Last 2 Pay Stubs', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(19, '2 Years W2s or 2 Years Tax Returns', NULL, NULL, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE IF NOT EXISTS `invoices` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `amount` decimal(7,2) DEFAULT NULL,
  `remaining` decimal(7,2) DEFAULT NULL,
  `paid` tinyint(1) DEFAULT '0',
  `created` date DEFAULT NULL,
  `modified` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1127 ;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `user_id`, `description`, `amount`, `remaining`, `paid`, `created`, `modified`) VALUES
(1126, 1488, 'Client Fee', 1725.85, 625.85, 0, '2009-02-02', '2009-02-02');

-- --------------------------------------------------------

--
-- Table structure for table `log_logins`
--

CREATE TABLE IF NOT EXISTS `log_logins` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `group` varchar(100) DEFAULT NULL,
  `user` int(10) DEFAULT NULL,
  `ipaddress` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `log_logins`
--

INSERT INTO `log_logins` (`id`, `group`, `user`, `ipaddress`, `created`, `modified`) VALUES
(4, 'Admin', 1, '127.0.0.1', '2009-03-23 15:26:50', '2009-03-23 15:26:50'),
(5, 'Agent', 94, '127.0.0.1', '2009-03-25 12:35:09', '2009-03-25 12:35:09'),
(6, 'Manager', 30, '127.0.0.1', '2009-03-25 13:36:36', '2009-03-25 13:36:36'),
(7, 'Admin', 1, '127.0.0.1', '2009-03-26 10:59:10', '2009-03-26 10:59:10'),
(8, 'Client', 1494, '127.0.0.1', '2009-03-26 11:14:14', '2009-03-26 11:14:14'),
(9, 'Client', 1494, '127.0.0.1', '2009-03-26 14:00:45', '2009-03-26 14:00:45'),
(10, 'Admin', 30, '127.0.0.1', '2009-03-26 15:26:59', '2009-03-26 15:26:59'),
(11, 'Admin', 1, '127.0.0.1', '2009-03-26 15:35:29', '2009-03-26 15:35:29'),
(12, 'Agent', 94, '127.0.0.1', '2009-03-26 15:44:04', '2009-03-26 15:44:04'),
(13, 'Admin', 1, '127.0.0.1', '2009-03-26 15:53:16', '2009-03-26 15:53:16'),
(14, 'Manager', 30, '127.0.0.1', '2009-03-27 10:42:05', '2009-03-27 10:42:05'),
(15, 'Admin', 1, '127.0.0.1', '2009-03-27 10:54:56', '2009-03-27 10:54:56'),
(16, 'Client', 1488, '127.0.0.1', '2009-03-27 10:56:06', '2009-03-27 10:56:06');

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE IF NOT EXISTS `managers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `firstname` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `lastname` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `extension` int(4) DEFAULT NULL,
  `username` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`id`, `fullname`, `firstname`, `lastname`, `extension`, `username`, `password`, `email`, `status`, `created`, `modified`) VALUES
(30, 'Demo Branch', 'Firs', 'Branch', NULL, 'manager', '1d0258c2440a8d19e716292b231e3190', 'branch@loanmodcrm.com', 1, '2009-02-02 13:52:09', '2009-02-02 13:52:09');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `amount` decimal(7,2) DEFAULT NULL,
  `remaining` decimal(7,2) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `modified` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1764 ;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `invoice_id`, `user_id`, `amount`, `remaining`, `created`, `modified`) VALUES
(1, 1126, 1488, 500.00, NULL, '2009-02-02', '2009-02-02'),
(2, 1126, 1488, 600.00, NULL, '2009-03-20', '2009-03-20');

-- --------------------------------------------------------

--
-- Table structure for table `promises`
--

CREATE TABLE IF NOT EXISTS `promises` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` decimal(9,2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Promissory Notes' AUTO_INCREMENT=100 ;

--
-- Dumping data for table `promises`
--

INSERT INTO `promises` (`id`, `invoice_id`, `user_id`, `date`, `amount`, `created`, `modified`) VALUES
(99, 1126, 1488, '2009-04-01', 400.00, '2009-03-27 10:55:27', '2009-03-27 10:55:27');

-- --------------------------------------------------------

--
-- Table structure for table `referrers`
--

CREATE TABLE IF NOT EXISTS `referrers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `referrers`
--

INSERT INTO `referrers` (`id`, `name`) VALUES
(1, 'Direct Mail'),
(2, 'Internet Lead'),
(3, 'Referral'),
(4, '[unknown]');

-- --------------------------------------------------------

--
-- Table structure for table `security_questions`
--

CREATE TABLE IF NOT EXISTS `security_questions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `question` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Security Questions' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `security_questions`
--

INSERT INTO `security_questions` (`id`, `question`, `created`, `modified`) VALUES
(1, 'What is your Mother''s Maiden name?', NULL, NULL),
(2, 'What is your favorite cartoon character?', NULL, NULL),
(3, 'What Street did you grow up on?', NULL, NULL),
(4, 'What is the last 4 of your social security number?', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `security_responses`
--

CREATE TABLE IF NOT EXISTS `security_responses` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `security_question_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `response` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Security Responses' AUTO_INCREMENT=466 ;

--
-- Dumping data for table `security_responses`
--

INSERT INTO `security_responses` (`id`, `security_question_id`, `user_id`, `response`, `created`, `modified`) VALUES
(462, 1, 1488, '3e47b75000b0924b6c9ba5759a7cf15d', '2009-02-02 14:20:39', '2009-02-02 14:20:39'),
(463, 2, 1490, 'ec0e2603172c73a8b644bb9456c1ff6e', '2009-03-19 14:21:14', '2009-03-19 14:21:14'),
(464, 1, 1491, 'eaf450085c15c3b880c66d0b78f2c041', '2009-03-20 12:38:52', '2009-03-20 12:38:52'),
(465, 1, 1494, 'd8cda8a25474968788f440baf13684d5', '2009-03-26 11:14:21', '2009-03-26 11:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `state` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `state_abbr` char(2) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='States' AUTO_INCREMENT=53 ;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state`, `state_abbr`) VALUES
(1, 'Alabama', 'AL'),
(2, 'Alaska', 'AK'),
(3, 'Arizona', 'AZ'),
(4, 'Arkansas', 'AR'),
(5, 'California', 'CA'),
(6, 'Colorado', 'CO'),
(7, 'Connecticut', 'CT'),
(8, 'Delaware', 'DE'),
(9, 'District of Columbia', 'DC'),
(10, 'Florida', 'FL'),
(11, 'Georgia', 'GA'),
(12, 'Hawaii', 'HI'),
(13, 'Idaho', 'ID'),
(14, 'Illinois', 'IL'),
(15, 'Indiana', 'IN'),
(16, 'Iowa', 'IA'),
(17, 'Kansas', 'KS'),
(18, 'Kentucky', 'KY'),
(19, 'Louisiana', 'LA'),
(20, 'Maine', 'ME'),
(21, 'Maryland', 'MD'),
(22, 'Massachusetts', 'MA'),
(23, 'Michigan', 'MI'),
(24, 'Minnesota', 'MN'),
(25, 'Mississippi', 'MS'),
(26, 'Missouri', 'MO'),
(27, 'Montana', 'MT'),
(28, 'Nebraska', 'NE'),
(29, 'Nevada', 'NV'),
(30, 'New Hampshire', 'NH'),
(31, 'New Jersey', 'NJ'),
(32, 'New Mexico', 'NM'),
(33, 'New York', 'NY'),
(34, 'North Carolina', 'NC'),
(35, 'North Dakota', 'ND'),
(36, 'Ohio', 'OH'),
(37, 'Oklahoma', 'OK'),
(38, 'Oregon', 'OR'),
(39, 'Pennsylvania', 'PA'),
(40, 'Rhode Island', 'RI'),
(41, 'South Carolina', 'SC'),
(42, 'South Dakota', 'SD'),
(43, 'Tennessee', 'TN'),
(44, 'Texas', 'TX'),
(45, 'Utah', 'UT'),
(46, 'Vermont', 'VT'),
(47, 'Virginia', 'VA'),
(48, 'Washington', 'WA'),
(49, 'West Virginia', 'WV'),
(50, 'Wisconsin', 'WI'),
(51, 'Wyoming', 'WY'),
(52, 'Puerto Rico', 'PR');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE IF NOT EXISTS `statuses` (
  `id` int(10) NOT NULL,
  `role_id` int(10) DEFAULT NULL,
  `timeline_key` int(11) DEFAULT NULL,
  `sort` int(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `role_id`, `timeline_key`, `sort`, `name`) VALUES
(99, 1, 0, 1, 'NEW CLIENT'),
(7, 1, 0, 2, 'PENDING DOCS'),
(9, 1, 0, 3, 'PENDING DOCS/14 DAY'),
(2, 3, 1, 5, 'PACKAGE COMPLETE'),
(3, 2, 2, 6, 'SUBMITTED TO LENDER'),
(11, 2, 2, 7, 'LENDER VERIFICATION'),
(12, 2, 2, 8, 'FOLLOW UP'),
(4, 3, 3, 9, 'NEGOTIATOR ASSIGNED'),
(22, 3, 4, 11, 'MODIFIED'),
(23, 3, 4, 12, 'STIP TO MOD'),
(24, 3, 5, 17, 'SUSPENDED'),
(25, 3, 5, 14, 'BANK DENIAL/CLOSED'),
(26, NULL, 5, 13, 'BANK DENIAL/RE-SUBMIT'),
(27, NULL, 5, 15, 'CANCELLED/REFUNDED'),
(28, NULL, 5, 16, 'CANCELLED/PENDING REFUND'),
(6, 3, 5, 18, 'CLOSED');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `task_group_id` int(10) DEFAULT NULL,
  `follow_up` date DEFAULT NULL,
  `remarks` varchar(250) DEFAULT NULL,
  `completed` tinyint(1) DEFAULT '0',
  `created` int(12) DEFAULT NULL,
  `modified` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=225 ;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `admin_id`, `user_id`, `task_group_id`, `follow_up`, `remarks`, `completed`, `created`, `modified`) VALUES
(215, 31, 1488, 1, '2009-05-02', 'Request information', 1, 1233601567, 1233601567),
(216, 30, 1488, 1, '2009-01-07', 'Request information', 1, 1233601579, 1237481668),
(217, NULL, NULL, 2, '2009-03-20', 'cxvxcvzxvvz', 1, 1237481686, 1237583121),
(218, 30, NULL, 1, '2009-03-19', 'He''s old and grumpy and you need to yell loud for him to hear.', 1, 1237487981, 1237488085),
(219, 32, NULL, 1, '2009-04-20', 'Get Documents', 1, 1237568611, 1237582012),
(220, 30, NULL, 1, '2009-02-01', '', 1, 1237580476, 1237822087),
(221, 30, NULL, 1, '2010-04-05', 'test', 1, 1237580881, 1237582019),
(222, 30, NULL, 1, '2010-03-04', 'test', 1, 1237580908, 1237582016),
(223, 30, NULL, 1, '2009-02-02', 'test', 1, 1237583129, 1237822084),
(224, NULL, NULL, 1, '2009-04-01', 'CALL BANK TO VERIFY', 0, 1238095814, 1238095814);

-- --------------------------------------------------------

--
-- Table structure for table `task_groups`
--

CREATE TABLE IF NOT EXISTS `task_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `modified` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `task_groups`
--

INSERT INTO `task_groups` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Call', NULL, NULL),
(2, 'Email', NULL, NULL),
(3, 'Fax', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE IF NOT EXISTS `teams` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `modified` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `created`, `modified`) VALUES
(7, 'Demo Team', '2009-02-02', '2009-02-02'),
(8, 'Jack&#39;s Team', '2009-03-26', '2009-03-26'),
(9, 'John''s Team', '2009-03-26', '2009-03-26');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `agent_id` int(10) DEFAULT NULL,
  `question` text,
  `status` tinyint(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `user_id`, `agent_id`, `question`, `status`, `created`, `modified`) VALUES
(56, 1488, 94, 'Just curious what are next steps will be? Ready to finalize this loan mod.\r\n\r\nThanks', 0, '2009-03-16 12:07:00', '2009-03-16 12:07:00'),
(57, 1491, 94, 'How long will this take?', 0, '2009-03-20 12:44:30', '2009-03-20 12:44:30'),
(58, 1488, 94, 'test', 0, '2009-03-20 16:52:26', '2009-03-20 16:52:26');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_responses`
--

CREATE TABLE IF NOT EXISTS `ticket_responses` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `response` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ticket_responses`
--


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `agent_id` int(10) NOT NULL DEFAULT '0',
  `team_id` int(10) DEFAULT '0',
  `referrer_id` int(10) DEFAULT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `verification_code` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1495 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `agent_id`, `team_id`, `referrer_id`, `email`, `username`, `password`, `verification_code`, `status`, `created`, `modified`) VALUES
(1488, 94, 7, NULL, 'doe@loanmodcrm.org', 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', 'a0848ddbf3ca70ed7b1a897d66e16b4a', 1, '2009-02-02 14:01:42', '2009-02-02 14:01:42'),
(1489, 94, 7, NULL, 'tom@webservices.us.com', 'tsoko1000', 'b55050b2f605b7cf0d48346ff3d432d3', '655f6d4a0d9864f0e78656915921505a', 1, '2009-03-19 12:53:29', '2009-03-19 12:53:29'),
(1490, 94, 7, NULL, 'bman@supersecret.com', 'batman', 'ec0e2603172c73a8b644bb9456c1ff6e', '18ba34fc8ea3741cc4158a31217d2af4', 1, '2009-03-19 14:20:51', '2009-03-19 14:20:51'),
(1491, 94, 7, NULL, 'email@email.com', 'johndoe', '6579e96f76baa00787a28653876c6127', 'd4b56b782ee4b8fbc9afe1487d585096', 1, '2009-03-20 12:38:16', '2009-03-20 12:38:16'),
(1492, 94, 7, NULL, 'john@954net.net', 'johnjohn ', '62318aca2ef2e809a13623715a8aaff4', '3680187cbb2411bf019166fbb39f2078', 1, '2009-03-20 19:36:35', '2009-03-20 19:36:35'),
(1493, 94, 7, NULL, 'bobsmith@bobsmith.bob.smith.com', 'bob', '9f9d51bc70ef21ca5c14f307980a29d8', 'c0080b16dfc18d81c1fc9df4704ee217', 1, '2009-03-23 11:31:27', '2009-03-23 11:31:27'),
(1494, 94, 7, NULL, 'jonathan@webservices.us.com', 'jonathan', '2924e9a3664cd2be3bf52e65da488c84', '93aa60f90c0f9684fc3c521df6c991b3', 1, '2009-03-25 13:30:15', '2009-03-26 11:12:44');

-- --------------------------------------------------------

--
-- Table structure for table `user_credit_cards`
--

CREATE TABLE IF NOT EXISTS `user_credit_cards` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `type` int(1) DEFAULT NULL,
  `number` varchar(40) DEFAULT NULL,
  `ccv2` int(4) DEFAULT NULL,
  `expiration_month` varchar(10) DEFAULT NULL,
  `expiration_year` int(4) DEFAULT NULL,
  `billing_firstname` varchar(100) DEFAULT NULL,
  `billing_lastname` varchar(100) DEFAULT NULL,
  `billing_zipcode` int(5) DEFAULT NULL,
  `bank_id` int(10) DEFAULT NULL,
  `check_number` int(10) DEFAULT NULL,
  `account_name` varchar(200) DEFAULT NULL,
  `number_routing` varchar(100) DEFAULT NULL,
  `number_account` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=174 ;

--
-- Dumping data for table `user_credit_cards`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_docs`
--

CREATE TABLE IF NOT EXISTS `user_docs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_document_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `filesize` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `user_docs`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_documents`
--

CREATE TABLE IF NOT EXISTS `user_documents` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `document_id` int(10) DEFAULT NULL,
  `recieved` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14466 ;

--
-- Dumping data for table `user_documents`
--

INSERT INTO `user_documents` (`id`, `user_id`, `document_id`, `recieved`, `created`, `modified`) VALUES
(14421, 1488, 1, 0, '2009-02-02 14:01:42', '2009-03-27 11:36:11'),
(14422, 1488, 2, 0, '2009-02-02 14:01:42', '2009-03-27 11:36:11'),
(14423, 1488, 3, 1, '2009-02-02 14:01:42', '2009-03-27 11:36:11'),
(14424, 1488, 4, 1, '2009-02-02 14:01:42', '2009-03-27 11:36:11'),
(14425, 1488, 18, 0, '2009-02-02 14:01:42', '2009-03-27 11:36:11'),
(14426, 1488, 19, 0, '2009-02-02 14:01:42', '2009-03-27 11:36:11'),
(14427, 1489, 1, 0, '2009-03-19 12:53:29', '2009-03-19 12:53:29'),
(14428, 1489, 2, 0, '2009-03-19 12:53:29', '2009-03-19 12:53:29'),
(14429, 1489, 3, 0, '2009-03-19 12:53:29', '2009-03-19 12:53:29'),
(14430, 1489, 4, 0, '2009-03-19 12:53:29', '2009-03-19 12:53:29'),
(14431, 1489, 18, 0, '2009-03-19 12:53:29', '2009-03-19 12:53:29'),
(14432, 1489, 19, 0, '2009-03-19 12:53:29', '2009-03-19 12:53:29'),
(14433, 1488, 13, 0, '2009-03-19 13:51:50', '2009-03-27 11:36:11'),
(14434, 1490, 1, 0, '2009-03-19 14:20:51', '2009-03-19 14:20:51'),
(14435, 1490, 2, 0, '2009-03-19 14:20:51', '2009-03-19 14:20:51'),
(14436, 1490, 3, 0, '2009-03-19 14:20:51', '2009-03-19 14:20:51'),
(14437, 1490, 4, 0, '2009-03-19 14:20:51', '2009-03-19 14:20:51'),
(14438, 1490, 18, 0, '2009-03-19 14:20:51', '2009-03-19 14:20:51'),
(14439, 1490, 19, 0, '2009-03-19 14:20:51', '2009-03-19 14:20:51'),
(14440, 1491, 1, 0, '2009-03-20 12:38:16', '2009-03-20 12:38:16'),
(14441, 1491, 2, 0, '2009-03-20 12:38:16', '2009-03-20 12:38:16'),
(14442, 1491, 3, 0, '2009-03-20 12:38:16', '2009-03-20 12:38:16'),
(14443, 1491, 4, 0, '2009-03-20 12:38:16', '2009-03-20 12:38:16'),
(14444, 1491, 18, 0, '2009-03-20 12:38:16', '2009-03-20 12:38:16'),
(14445, 1491, 19, 0, '2009-03-20 12:38:16', '2009-03-20 12:38:16'),
(14446, 1492, 1, 0, '2009-03-20 19:36:35', '2009-03-20 19:36:35'),
(14447, 1492, 2, 0, '2009-03-20 19:36:35', '2009-03-20 19:36:35'),
(14448, 1492, 3, 0, '2009-03-20 19:36:35', '2009-03-20 19:36:35'),
(14449, 1492, 4, 0, '2009-03-20 19:36:35', '2009-03-20 19:36:35'),
(14450, 1492, 18, 0, '2009-03-20 19:36:35', '2009-03-20 19:36:35'),
(14451, 1492, 19, 0, '2009-03-20 19:36:35', '2009-03-20 19:36:35'),
(14452, 1493, 1, 0, '2009-03-23 11:31:27', '2009-03-23 11:31:27'),
(14453, 1493, 2, 0, '2009-03-23 11:31:27', '2009-03-23 11:31:27'),
(14454, 1493, 3, 0, '2009-03-23 11:31:27', '2009-03-23 11:31:27'),
(14455, 1493, 4, 0, '2009-03-23 11:31:27', '2009-03-23 11:31:27'),
(14456, 1493, 18, 0, '2009-03-23 11:31:27', '2009-03-23 11:31:27'),
(14457, 1493, 19, 0, '2009-03-23 11:31:27', '2009-03-23 11:31:27'),
(14458, NULL, NULL, NULL, '2009-03-23 16:36:57', '2009-03-23 16:36:57'),
(14459, NULL, NULL, NULL, '2009-03-23 16:38:59', '2009-03-23 16:38:59'),
(14460, 1494, 1, 0, '2009-03-25 13:30:16', '2009-03-25 13:30:16'),
(14461, 1494, 2, 0, '2009-03-25 13:30:16', '2009-03-25 13:30:16'),
(14462, 1494, 3, 0, '2009-03-25 13:30:16', '2009-03-25 13:30:16'),
(14463, 1494, 4, 0, '2009-03-25 13:30:16', '2009-03-25 13:30:16'),
(14464, 1494, 18, 0, '2009-03-25 13:30:16', '2009-03-25 13:30:16'),
(14465, 1494, 19, 0, '2009-03-25 13:30:16', '2009-03-25 13:30:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_jobs`
--

CREATE TABLE IF NOT EXISTS `user_jobs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `employer` varchar(100) DEFAULT NULL,
  `job_title` varchar(100) DEFAULT NULL,
  `job_years` int(4) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `user_jobs`
--

INSERT INTO `user_jobs` (`id`, `user_id`, `employer`, `job_title`, `job_years`, `status`, `created`, `modified`) VALUES
(45, 1490, 'Gotham City', 'Batman', 10, 2, '2009-03-19 14:21:52', '2009-03-19 14:21:52');

-- --------------------------------------------------------

--
-- Table structure for table `user_loans`
--

CREATE TABLE IF NOT EXISTS `user_loans` (
  `id` varchar(10) NOT NULL DEFAULT '',
  `user_id` int(10) NOT NULL DEFAULT '0',
  `status_id` int(2) NOT NULL DEFAULT '0',
  `created` date NOT NULL DEFAULT '0000-00-00',
  `modified` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_loans`
--

INSERT INTO `user_loans` (`id`, `user_id`, `status_id`, `created`, `modified`) VALUES
('IP63VDVS', 1488, 2, '2009-02-02', '2009-03-27'),
('0NBOJFT0', 1489, 99, '2009-03-19', '2009-03-19'),
('BNHU22QS', 1490, 99, '2009-03-19', '2009-03-19'),
('5CSGZD55', 1491, 4, '2009-03-20', '2009-03-20'),
('Q67N8NKJ', 1492, 99, '2009-03-20', '2009-03-20'),
('O73Q2VQJ', 1493, 99, '2009-03-23', '2009-03-23'),
('9UXIHQHO', 1494, 23, '2009-03-25', '2009-03-26');

-- --------------------------------------------------------

--
-- Table structure for table `user_loan_logs`
--

CREATE TABLE IF NOT EXISTS `user_loan_logs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_loan_id` varchar(100) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `admin_id` int(10) DEFAULT NULL,
  `state_previous` int(10) DEFAULT NULL,
  `state_current` int(10) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1930 ;

--
-- Dumping data for table `user_loan_logs`
--

INSERT INTO `user_loan_logs` (`id`, `user_loan_id`, `user_id`, `admin_id`, `state_previous`, `state_current`, `created`, `modified`) VALUES
(1921, 'IP63VDVS', 1488, 1, 0, 15, '2009-02-02', '2009-02-02 14:18:41'),
(1922, 'IP63VDVS', 1488, 1, 15, 15, '2009-02-02', '2009-02-02 14:18:51'),
(1923, 'IP63VDVS', 1488, 1, 15, 15, '2009-02-02', '2009-02-02 14:18:58'),
(1924, 'IP63VDVS', 1488, 1, 15, 15, '2009-02-02', '2009-02-02 14:19:32'),
(1925, '5CSGZD55', 1491, 1, 0, 4, '2009-03-20', '2009-03-20 13:00:48'),
(1926, 'IP63VDVS', 1488, 1, NULL, NULL, '2009-03-26', '2009-03-26 11:09:17'),
(1927, 'IP63VDVS', 1488, 1, 9, 9, '2009-03-26', '2009-03-26 11:10:21'),
(1928, '9UXIHQHO', 1494, 1, 99, 23, '2009-03-26', '2009-03-26 11:44:41'),
(1929, 'IP63VDVS', 1488, 1, 9, 2, '2009-03-27', '2009-03-27 11:40:43');

-- --------------------------------------------------------

--
-- Table structure for table `user_logins`
--

CREATE TABLE IF NOT EXISTS `user_logins` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2908 ;

--
-- Dumping data for table `user_logins`
--

INSERT INTO `user_logins` (`id`, `user_id`, `created`, `modified`) VALUES
(2861, 1488, '2009-02-02 14:20:33', '2009-02-02 14:20:33'),
(2862, 1488, '2009-02-02 14:20:39', '2009-02-02 14:20:39'),
(2863, 1488, '2009-02-04 11:44:38', '2009-02-04 11:44:38'),
(2864, 1488, '2009-02-05 15:08:16', '2009-02-05 15:08:16'),
(2865, 1488, '2009-02-06 15:45:02', '2009-02-06 15:45:02'),
(2866, 1488, '2009-02-06 19:21:22', '2009-02-06 19:21:22'),
(2867, 1488, '2009-03-03 15:51:34', '2009-03-03 15:51:34'),
(2868, 1488, '2009-03-03 15:52:24', '2009-03-03 15:52:24'),
(2869, 1488, '2009-03-03 15:52:58', '2009-03-03 15:52:58'),
(2870, 1488, '2009-03-04 09:28:07', '2009-03-04 09:28:07'),
(2871, 1488, '2009-03-04 09:29:03', '2009-03-04 09:29:03'),
(2872, 1488, '2009-03-05 15:49:29', '2009-03-05 15:49:29'),
(2873, 1488, '2009-03-05 22:19:15', '2009-03-05 22:19:15'),
(2874, 1488, '2009-03-06 17:42:36', '2009-03-06 17:42:36'),
(2875, 1488, '2009-03-14 16:08:41', '2009-03-14 16:08:41'),
(2876, 1488, '2009-03-16 11:58:04', '2009-03-16 11:58:04'),
(2877, 1488, '2009-03-19 12:44:28', '2009-03-19 12:44:28'),
(2878, 1489, '2009-03-19 12:55:09', '2009-03-19 12:55:09'),
(2879, 1488, '2009-03-19 12:55:25', '2009-03-19 12:55:25'),
(2880, 1488, '2009-03-19 12:55:42', '2009-03-19 12:55:42'),
(2881, 1490, '2009-03-19 14:21:01', '2009-03-19 14:21:01'),
(2882, 1490, '2009-03-19 14:21:14', '2009-03-19 14:21:14'),
(2883, 1490, '2009-03-19 14:40:32', '2009-03-19 14:40:32'),
(2884, 1490, '2009-03-19 17:16:25', '2009-03-19 17:16:25'),
(2885, 1488, '2009-03-19 17:54:08', '2009-03-19 17:54:08'),
(2886, 1489, '2009-03-19 19:47:51', '2009-03-19 19:47:51'),
(2887, 1488, '2009-03-20 11:45:06', '2009-03-20 11:45:06'),
(2888, 1488, '2009-03-20 11:48:28', '2009-03-20 11:48:28'),
(2889, 1488, '2009-03-20 12:35:43', '2009-03-20 12:35:43'),
(2890, 1491, '2009-03-20 12:38:46', '2009-03-20 12:38:46'),
(2891, 1491, '2009-03-20 12:38:52', '2009-03-20 12:38:52'),
(2892, 1488, '2009-03-20 14:04:18', '2009-03-20 14:04:18'),
(2893, 1488, '2009-03-20 16:13:29', '2009-03-20 16:13:29'),
(2894, 1488, '2009-03-20 16:31:18', '2009-03-20 16:31:18'),
(2895, 1488, '2009-03-20 16:51:40', '2009-03-20 16:51:40'),
(2896, 1488, '2009-03-20 16:54:18', '2009-03-20 16:54:18'),
(2897, 1488, '2009-03-20 16:54:54', '2009-03-20 16:54:54'),
(2898, 1489, '2009-03-20 17:25:44', '2009-03-20 17:25:44'),
(2899, 1488, '2009-03-23 11:00:30', '2009-03-23 11:00:30'),
(2900, 1490, '2009-03-23 11:01:10', '2009-03-23 11:01:10'),
(2901, 1488, '2009-03-23 11:01:17', '2009-03-23 11:01:17'),
(2902, 1488, '2009-03-23 11:01:36', '2009-03-23 11:01:36'),
(2903, 1488, '2009-03-23 14:53:23', '2009-03-23 14:53:23'),
(2904, 1494, '2009-03-26 11:14:14', '2009-03-26 11:14:14'),
(2905, 1494, '2009-03-26 11:14:21', '2009-03-26 11:14:21'),
(2906, 1494, '2009-03-26 14:00:45', '2009-03-26 14:00:45'),
(2907, 1488, '2009-03-27 10:56:06', '2009-03-27 10:56:06');

-- --------------------------------------------------------

--
-- Table structure for table `user_mortgages`
--

CREATE TABLE IF NOT EXISTS `user_mortgages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `co_borrower` varchar(200) DEFAULT NULL,
  `mortgage_number` int(1) DEFAULT NULL,
  `months_behind` tinyint(2) DEFAULT NULL,
  `arm_fixed` int(1) DEFAULT NULL,
  `interest_rate` varchar(10) DEFAULT NULL,
  `payment_amount` decimal(8,2) DEFAULT NULL,
  `bank_id` int(10) DEFAULT NULL,
  `lender` varchar(100) DEFAULT NULL,
  `loan_number` varchar(20) DEFAULT NULL,
  `issaledate` tinyint(1) DEFAULT NULL,
  `saledate` date DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1460 ;

--
-- Dumping data for table `user_mortgages`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_notes`
--

CREATE TABLE IF NOT EXISTS `user_notes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `message` text,
  `type` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3662 ;

--
-- Dumping data for table `user_notes`
--

INSERT INTO `user_notes` (`id`, `user_id`, `message`, `type`, `created`, `modified`) VALUES
(3653, 1488, 'Internal Testing Note', 0, '2009-02-02 14:06:42', '2009-02-02 14:06:42'),
(3655, 1488, 'Client Facing Testing Note', 1, '2009-02-02 14:07:04', '2009-02-02 14:07:04'),
(3658, 1489, 'dfajkshajsdkfa', 1, '2009-03-19 12:54:16', '2009-03-19 12:54:16'),
(3659, 1488, 'Client Facing 2', 1, '2009-03-27 11:00:17', '2009-03-27 11:00:17'),
(3660, 1488, 'Client Facing 2', 1, '2009-03-27 11:00:52', '2009-03-27 11:00:52'),
(3661, 1488, 'Client Facing 2', 1, '2009-03-27 11:01:06', '2009-03-27 11:01:06');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE IF NOT EXISTS `user_profiles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zipcode` varchar(5) DEFAULT NULL,
  `phone_home` varchar(25) DEFAULT NULL,
  `phone_work` varchar(25) DEFAULT NULL,
  `phone_cell` varchar(25) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `ssn` varchar(255) DEFAULT NULL,
  `co_borrower` varchar(200) DEFAULT NULL,
  `co_borrower_cell` varchar(100) DEFAULT NULL,
  `co_borrower_email` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1503 ;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `user_id`, `firstname`, `lastname`, `address`, `address2`, `city`, `state`, `zipcode`, `phone_home`, `phone_work`, `phone_cell`, `dob`, `ssn`, `co_borrower`, `co_borrower_cell`, `co_borrower_email`, `created`, `modified`) VALUES
(1496, 1488, 'Demo', 'Customer', '123 Some Street', 'Wilton Manors', 'Florida', 'FL', '33324', '123-456-7890', '123-456-7890', '123-456-7890', '1980-09-20', '123-45-6789', 'Jane Doe', '123-456-7890', 'doe@loanmodcrm.org', '2009-02-02 14:01:42', '2009-02-02 14:01:42'),
(1497, 1489, 'Tom', 'Sokolowski', '2201 Wilton Dr', '', 'Fort Lauderdale', 'FL', '33305', '954-555-1212', '954-839-1352', '', '1950-08-16', '111-22-3333', '', '', '', '2009-03-19 12:53:29', '2009-03-19 12:53:29'),
(1498, 1490, 'Bat', 'Man', '55 Super Secret Drive', '', 'Gotham City', 'MO', '00010', '3642223333', '3643332222', '3645554444', '1933-03-11', '000552222', 'Wilma', 'Flintstone', 'wfilnt@rocknet.com', '2009-03-19 14:20:51', '2009-03-19 14:20:51'),
(1499, 1491, 'John', 'Doe', '555 North Street', '', 'Coral Springs', 'FL', '33033', '9545555555', '9545555555', '9545555555', '1913-08-12', '2222222222', '', '', '', '2009-03-20 12:38:16', '2009-03-20 12:38:16'),
(1500, 1492, 'john', 'lewis', '347890', '890', '890', 'AL', '890', '890', '890', '890', NULL, '8908', '', '', '', '2009-03-20 19:36:35', '2009-03-20 19:36:35'),
(1501, 1493, 'Bob', 'Smith', '540 Clover Lane', '', 'Pawtucket', 'CT', '05542', '2032224234', '2031134024', '2035542032', '1909-08-22', '822095533', '', '', '', '2009-03-23 11:31:27', '2009-03-23 11:31:27'),
(1502, 1494, 'Jonathan', 'Bradley', '10733 Cleary Blvd', 'Apt 209', 'Plantation', 'FL', '33324', '954-513-8875', '954-513-8875', '954-513-8875', '1980-09-20', '111-11-1111', '', '', '', '2009-03-25 13:30:15', '2009-03-26 11:12:44');
