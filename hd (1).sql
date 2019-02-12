-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-01-14 07:18:27
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hd`
--

-- --------------------------------------------------------

--
-- 表的结构 `detail_image`
--
SET NAMES UTF8;
DROP DATABASE IF EXISTS hd;
CREATE DATABASE hd CHARSET=UTF8;
USE hd;
CREATE TABLE `detail_image` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `detail_image`
--

INSERT INTO `detail_image` (`id`, `img_url`) VALUES
(1, 'http://127.0.0.1:3000/img/detail-01.jpg'),
(2, 'http://127.0.0.1:3000/img/detail-02.jpg'),
(3, 'http://127.0.0.1:3000/img/detail-03.jpg'),
(4, 'http://127.0.0.1:3000/img/detail-04.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `hd_comment`
--

CREATE TABLE `hd_comment` (
  `id` int(11) NOT NULL,
  `nid` int(11) DEFAULT NULL,
  `user_name` varchar(25) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  `content` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hd_comment`
--

INSERT INTO `hd_comment` (`id`, `nid`, `user_name`, `ctime`, `content`) VALUES
(1, 1, 'dd', '2018-12-20 22:10:26', '111'),
(2, 3, 'minmin', '2019-01-09 19:33:20', '开心就是拥有你的爱啊');

-- --------------------------------------------------------

--
-- 表的结构 `hd_fx`
--

CREATE TABLE `hd_fx` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hd_fx`
--

INSERT INTO `hd_fx` (`id`, `img_url`, `title`, `subtitle`) VALUES
(1, 'http://127.0.0.1:3000/img/7bddfe188ccdc39cf1f86d993c6cd94f239196af.png', 'Don\'t Merry Chirstmas,Merry me!', 'Less is more...'),
(2, 'http://127.0.0.1:3000/img/1a9f4cef3506fd524bee9a37278e3501effb69e1.png', '简单生活爱好者请进', 'Less is more...'),
(3, 'http://127.0.0.1:3000/img/f9ae57b8509c7cb6b836730b1a6c9d74365046ed.png', '简单生活爱好者请进', 'Less is more...'),
(4, 'http://127.0.0.1:3000/img/fba3f247b9c548004bb1e8e5659a1a007d1621a5.png', '简单生活爱好者请进', 'Less is more...'),
(5, 'http://127.0.0.1:3000/img/e3b75821012607f823185fa9aaad64502876f957.png', 'Don\'t Merry Chirstmas,Merry me!', 'Less is more...'),
(6, 'http://127.0.0.1:3000/img/c0567e5b9601d79af1429804447a20728add08d9.png', '简单生活爱好者请进', 'Less is more...'),
(7, 'http://127.0.0.1:3000/img/1bc96789dd6cff408c0eaf87fb8d605f241fc84a.png', 'Don\'t Merry Chirstmas,Merry me!', 'Less is more...'),
(8, 'http://127.0.0.1:3000/img/8002b73c3ce063e7bb59cf4b8624fc43b7ab61b3.png', 'Don\'t Merry Chirstmas,Merry me!', 'Less is more...'),
(9, 'http://127.0.0.1:3000/img/e3b75821012607f823185fa9aaad64502876f957.png', 'Don\'t Merry Chirstmas,Merry me!', 'Less is more...'),
(10, 'http://127.0.0.1:3000/img/fba3f247b9c548004bb1e8e5659a1a007d1621a5.png', '简单生活爱好者请进', 'Less is more...'),
(11, 'http://127.0.0.1:3000/img/7bddfe188ccdc39cf1f86d993c6cd94f239196af.png', 'Don\'t Merry Chirstmas,Merry me!', 'Less is more...'),
(12, 'http://127.0.0.1:3000/img/1a9f4cef3506fd524bee9a37278e3501effb69e1.png', '简单生活爱好者请进', 'Less is more...'),
(13, 'http://127.0.0.1:3000/img/f9ae57b8509c7cb6b836730b1a6c9d74365046ed.png', '简单生活爱好者请进', 'Less is more...'),
(14, 'http://127.0.0.1:3000/img/fba3f247b9c548004bb1e8e5659a1a007d1621a5.png', '简单生活爱好者请进', 'Less is more...'),
(15, 'http://127.0.0.1:3000/img/e3b75821012607f823185fa9aaad64502876f957.png', 'Don\'t Merry Chirstmas,Merry me!', 'Less is more...'),
(16, 'http://127.0.0.1:3000/img/c0567e5b9601d79af1429804447a20728add08d9.png', '简单生活爱好者请进', 'Less is more...'),
(17, 'http://127.0.0.1:3000/img/1bc96789dd6cff408c0eaf87fb8d605f241fc84a.png', 'Don\'t Merry Chirstmas,Merry me!', 'Less is more...'),
(18, 'http://127.0.0.1:3000/img/8002b73c3ce063e7bb59cf4b8624fc43b7ab61b3.png', 'Don\'t Merry Chirstmas,Merry me!', 'Less is more...');

-- --------------------------------------------------------

--
-- 表的结构 `hd_image`
--

CREATE TABLE `hd_image` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hd_image`
--

INSERT INTO `hd_image` (`id`, `img_url`, `title`, `price`) VALUES
(1, 'http://127.0.0.1:3000/img/th-01.jpg', '水滴子植物盆栽家具装饰绿植', '60.00'),
(2, 'http://127.0.0.1:3000/img/th-01.jpg', '水滴子植物盆栽家具装饰绿植', '60.00'),
(3, 'http://127.0.0.1:3000/img/th-01.jpg', '水滴子植物盆栽家具装饰绿植', '60.00'),
(4, 'http://127.0.0.1:3000/img/th-01.jpg', '水滴子植物盆栽家具装饰绿植', '60.00'),
(5, 'http://127.0.0.1:3000/img/th-01.jpg', '水滴子植物盆栽家具装饰绿植', '60.00'),
(6, 'http://127.0.0.1:3000/img/th-01.jpg', '水滴子植物盆栽家具装饰绿植', '60.00'),
(7, 'http://127.0.0.1:3000/img/th-01.jpg', '水滴子植物盆栽家具装饰绿植', '60.00'),
(8, 'http://127.0.0.1:3000/img/th-01.jpg', '水滴子植物盆栽家具装饰绿植', '60.00'),
(9, 'http://127.0.0.1:3000/img/th-01.jpg', '水滴子植物盆栽家具装饰绿植', '60.00'),
(10, 'http://127.0.0.1:3000/img/th-01.jpg', '水滴子植物盆栽家具装饰绿植', '60.00'),
(11, 'http://127.0.0.1:3000/img/th-01.jpg', '水滴子植物盆栽家具装饰绿植', '60.00'),
(12, 'http://127.0.0.1:3000/img/th-01.jpg', '水滴子植物盆栽家具装饰绿植', '60.00'),
(13, 'http://127.0.0.1:3000/img/th-01.jpg', '水滴子植物盆栽家具装饰绿植', '60.00'),
(14, 'http://127.0.0.1:3000/img/th-01.jpg', '水滴子植物盆栽家具装饰绿植', '60.00'),
(15, 'http://127.0.0.1:3000/img/th-01.jpg', '水滴子植物盆栽家具装饰绿植', '60.00'),
(16, 'http://127.0.0.1:3000/img/th-01.jpg', '水滴子植物盆栽家具装饰绿植', '60.00'),
(17, 'http://127.0.0.1:3000/img/th-01.jpg', '水滴子植物盆栽家具装饰绿植', '60.00'),
(18, 'http://127.0.0.1:3000/img/th-01.jpg', '水滴子植物盆栽家具装饰绿植', '60.00'),
(26, 'http://127.0.0.1:3000/img/th-01.jpg', '水滴子植物盆栽家具装饰绿植', '60.00'),
(27, 'http://127.0.0.1:3000/img/th-01.jpg', '水滴子植物盆栽家具装饰绿植', '60.00'),
(28, 'http://127.0.0.1:3000/img/th-01.jpg', '水滴子植物盆栽家具装饰绿植', '60.00'),
(29, 'http://127.0.0.1:3000/img/th-01.jpg', '水滴子植物盆栽家具装饰绿植', '60.00'),
(30, 'http://127.0.0.1:3000/img/th-01.jpg', '水滴子植物盆栽家具装饰绿植', '60.00');

-- --------------------------------------------------------

--
-- 表的结构 `hd_login`
--

CREATE TABLE `hd_login` (
  `id` int(11) NOT NULL,
  `uname` varchar(25) NOT NULL DEFAULT '',
  `upwd` varchar(32) NOT NULL DEFAULT '',
  `cpwd` varchar(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hd_login`
--

INSERT INTO `hd_login` (`id`, `uname`, `upwd`, `cpwd`) VALUES
(15, 'xixixi', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e'),
(17, 'minmin', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e'),
(18, '东东', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e'),
(19, '敏敏', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e'),
(20, 'hahaha', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- 表的结构 `hd_lztp`
--

CREATE TABLE `hd_lztp` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hd_lztp`
--

INSERT INTO `hd_lztp` (`id`, `img_url`) VALUES
(1, 'http://127.0.0.1:3000/img/1.png'),
(2, 'http://127.0.0.1:3000/img/1.png');

-- --------------------------------------------------------

--
-- 表的结构 `hd_news`
--

CREATE TABLE `hd_news` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hd_news`
--

INSERT INTO `hd_news` (`id`, `title`, `ctime`, `point`, `img_url`, `content`) VALUES
(1, '幸福是什么呢？', '2018-12-20 21:26:56', 0, 'http://127.0.0.1:3000/img/2b29058c0e9e6a1f149227e79c18c28a8ff6ca41.png', '能和心爱的人一起睡觉，是件幸福的事情；可是，打呼噜怎么办？'),
(2, '快乐是什么？', '2018-12-20 21:26:56', 0, 'http://127.0.0.1:3000/img/2b29058c0e9e6a1f149227e79c18c28a8ff6ca41.png', '要努力呀！为了想要的生活，为了人间的烟火气，为了今天的风和月。'),
(3, '开心是什么？', '2018-12-20 21:26:56', 0, 'http://127.0.0.1:3000/img/2b29058c0e9e6a1f149227e79c18c28a8ff6ca41.png', '“希望这个冬天 我被各种火锅 奶茶 甜品 的怀抱围住”'),
(4, '幸福是什么呢？', '2018-12-20 21:26:56', 0, 'http://127.0.0.1:3000/img/2b29058c0e9e6a1f149227e79c18c28a8ff6ca41.png', '能和心爱的人一起睡觉，是件幸福的事情；可是，打呼噜怎么办？'),
(5, '快乐是什么？', '2018-12-20 21:26:56', 0, 'http://127.0.0.1:3000/img/2b29058c0e9e6a1f149227e79c18c28a8ff6ca41.png', '要努力呀！为了想要的生活，为了人间的烟火气，为了今天的风和月。'),
(6, '开心是什么？', '2018-12-20 21:26:56', 0, 'http://127.0.0.1:3000/img/2b29058c0e9e6a1f149227e79c18c28a8ff6ca41.png', '“希望这个冬天 我被各种火锅 奶茶 甜品 的怀抱围住”'),
(7, '幸福是什么呢', '2018-12-20 21:26:56', 0, 'http://127.0.0.1:3000/img/2b29058c0e9e6a1f149227e79c18c28a8ff6ca41.png', '能和心爱的人一起睡觉，是件幸福的事情；可是，打呼噜怎么办？'),
(8, '快乐是什么？', '2018-12-20 21:26:56', 0, 'http://127.0.0.1:3000/img/2b29058c0e9e6a1f149227e79c18c28a8ff6ca41.png', '要努力呀！为了想要的生活，为了人间的烟火气，为了今天的风和月。'),
(9, '开心是什么？', '2018-12-20 21:26:56', 0, 'http://127.0.0.1:3000/img/2b29058c0e9e6a1f149227e79c18c28a8ff6ca41.png', '“希望这个冬天 我被各种火锅 奶茶 甜品 的怀抱围住”'),
(10, '幸福是什么呢？', '2018-12-20 21:26:56', 0, 'http://127.0.0.1:3000/img/2b29058c0e9e6a1f149227e79c18c28a8ff6ca41.png', '能和心爱的人一起睡觉，是件幸福的事情；可是，打呼噜怎么办？'),
(11, '快乐是什么？', '2018-12-20 21:26:56', 0, 'http://127.0.0.1:3000/img/2b29058c0e9e6a1f149227e79c18c28a8ff6ca41.png', '要努力呀！为了想要的生活，为了人间的烟火气，为了今天的风和月。'),
(12, '开心是什么？', '2018-12-20 21:26:56', 0, 'http://127.0.0.1:3000/img/2b29058c0e9e6a1f149227e79c18c28a8ff6ca41.png', '“希望这个冬天 我被各种火锅 奶茶 甜品 的怀抱围住”'),
(13, '幸福', '2018-12-20 21:26:56', 0, 'http://127.0.0.1:3000/img/2b29058c0e9e6a1f149227e79c18c28a8ff6ca41.png', '能和心爱的人一起睡觉，是件幸福的事情；可是，打呼噜怎么办？'),
(14, '快乐是什么？', '2018-12-20 21:26:56', 0, 'http://127.0.0.1:3000/img/2b29058c0e9e6a1f149227e79c18c28a8ff6ca41.png', '要努力呀！为了想要的生活，为了人间的烟火气，为了今天的风和月。'),
(15, '开心是什么？', '2018-12-20 21:26:56', 0, 'http://127.0.0.1:3000/img/2b29058c0e9e6a1f149227e79c18c28a8ff6ca41.png', '“希望这个冬天 我被各种火锅 奶茶 甜品 的怀抱围住”'),
(16, '幸福是什么呢？', '2018-12-20 21:26:56', 0, 'http://127.0.0.1:3000/img/2b29058c0e9e6a1f149227e79c18c28a8ff6ca41.png', '能和心爱的人一起睡觉，是件幸福的事情；可是，打呼噜怎么办？'),
(17, '快乐是什么？', '2018-12-20 21:26:56', 0, 'http://127.0.0.1:3000/img/2b29058c0e9e6a1f149227e79c18c28a8ff6ca41.png', '要努力呀！为了想要的生活，为了人间的烟火气，为了今天的风和月。'),
(18, '开心是什么？', '2018-12-20 21:26:56', 0, 'http://127.0.0.1:3000/img/2b29058c0e9e6a1f149227e79c18c28a8ff6ca41.png', '“希望这个冬天 我被各种火锅 奶茶 甜品 的怀抱围住”'),
(19, '幸福是什么呢？', '2018-12-20 21:26:56', 0, 'http://127.0.0.1:3000/img/2b29058c0e9e6a1f149227e79c18c28a8ff6ca41.png', '能和心爱的人一起睡觉，是件幸福的事情；可是，打呼噜怎么办？'),
(20, '快乐是什么？', '2018-12-20 21:26:56', 0, 'http://127.0.0.1:3000/img/2b29058c0e9e6a1f149227e79c18c28a8ff6ca41.png', '要努力呀！为了想要的生活，为了人间的烟火气，为了今天的风和月。'),
(21, '开心是什么？', '2018-12-20 21:26:56', 0, 'http://127.0.0.1:3000/img/2b29058c0e9e6a1f149227e79c18c28a8ff6ca41.png', '“希望这个冬天 我被各种火锅 奶茶 甜品 的怀抱围住”');

-- --------------------------------------------------------

--
-- 表的结构 `hd_shoppingcart_item`
--

CREATE TABLE `hd_shoppingcart_item` (
  `iid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hd_shoppingcart_item`
--

INSERT INTO `hd_shoppingcart_item` (`iid`, `user_id`, `product_id`, `img_url`, `count`) VALUES
(1, 1, 1, NULL, 3),
(2, 1, 2, NULL, 1),
(3, 1, 3, NULL, 1),
(4, 1, 4, NULL, 0),
(5, 1, 3, NULL, 0),
(6, 1, 0, NULL, 1),
(7, 1, 3, NULL, 8),
(8, 1, 2, NULL, 1),
(9, 1, 3, NULL, 4),
(10, 1, 1, NULL, 4),
(11, NULL, 3, NULL, 5),
(12, NULL, 1, NULL, 4),
(13, 9, 1, NULL, 1),
(14, 9, 1, NULL, 1),
(15, 9, 1, NULL, 1),
(16, 0, 1, NULL, 3),
(17, 0, 1, NULL, 1),
(18, 0, 1, NULL, 1),
(19, 2, 1, NULL, 1),
(20, 2, 1, NULL, 1),
(21, 2, 1, NULL, 1),
(22, 0, 1, NULL, 1),
(23, -4, 1, NULL, 1),
(24, 19, 1, NULL, 1),
(25, 19, 1, NULL, 1),
(26, 19, 1, NULL, 1),
(27, 19, 1, NULL, 1),
(28, 19, 1, NULL, 1),
(29, 19, 1, NULL, 1),
(30, 19, 1, NULL, 1),
(31, 19, 1, NULL, 1),
(32, 19, 1, NULL, 1),
(33, 19, 1, NULL, 1),
(34, 17, 1, NULL, 1),
(35, 17, 1, NULL, 1);

-- --------------------------------------------------------

--
-- 表的结构 `hd_sztp`
--

CREATE TABLE `hd_sztp` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hd_sztp`
--

INSERT INTO `hd_sztp` (`id`, `img_url`, `title`, `subtitle`, `price`) VALUES
(1, 'http://127.0.0.1:3000/img/405780f175429ce66a0e25e6ceadd40bb21c2878.png', 'Nature自然系列 | Pro系列', '品质升级，花量翻倍', '169.00'),
(2, 'http://127.0.0.1:3000/img/1497878047307953.png', 'Nature自然系列 | Pro系列', '品质升级，花量翻倍', '169.00'),
(3, 'http://127.0.0.1:3000/img/1497878520601491.png', 'Nature自然系列 | Pro系列', '品质升级，花量翻倍', '169.00'),
(4, 'http://127.0.0.1:3000/img/1497878917801839.png', 'Nature自然系列 | Pro系列', '品质升级，花量翻倍', '169.00');

-- --------------------------------------------------------

--
-- 表的结构 `hl_image`
--

CREATE TABLE `hl_image` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hl_image`
--

INSERT INTO `hl_image` (`id`, `img_url`) VALUES
(1, 'http://127.0.0.1:3000/img/hl-01.jpg'),
(2, 'http://127.0.0.1:3000/img/hl-02.jpg'),
(3, 'http://127.0.0.1:3000/img/detail-02.jpg'),
(4, 'http://127.0.0.1:3000/img/detail-03.jpg'),
(5, 'http://127.0.0.1:3000/img/detail-04.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `jx_image`
--

CREATE TABLE `jx_image` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jx_image`
--

INSERT INTO `jx_image` (`id`, `img_url`) VALUES
(1, 'http://127.0.0.1:3000/img/jx-01.jpg'),
(2, 'http://127.0.0.1:3000/img/jx-02.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `kj_image`
--

CREATE TABLE `kj_image` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `kj_image`
--

INSERT INTO `kj_image` (`id`, `img_url`, `title`, `price`) VALUES
(1, 'http://127.0.0.1:3000/img/banner-06.jpg', '示例数据1', '99.00'),
(2, 'http://127.0.0.1:3000/img/banner-06.jpg', '示例数据1', '99.00'),
(3, 'http://127.0.0.1:3000/img/banner-05.jpg', '大型植物盆栽北欧家居装饰', '66.00'),
(4, 'http://127.0.0.1:3000/img/banner-05.jpg', '大型植物盆栽北欧家居装饰', '66.00');

-- --------------------------------------------------------

--
-- 表的结构 `lunbo_image`
--

CREATE TABLE `lunbo_image` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lunbo_image`
--

INSERT INTO `lunbo_image` (`id`, `img_url`, `title`) VALUES
(1, 'http://127.0.0.1:3000/img/banner-01.png', '图片1'),
(2, 'http://127.0.0.1:3000/img/banner-02.png', '图片2'),
(3, 'http://127.0.0.1:3000/img/banner-03.png', '图片3'),
(4, 'http://127.0.0.1:3000/img/banner-04.png', '图片4');

-- --------------------------------------------------------

--
-- 表的结构 `nav_image`
--

CREATE TABLE `nav_image` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `info` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `nav_image`
--

INSERT INTO `nav_image` (`id`, `img_url`, `info`) VALUES
(1, 'http://127.0.0.1:3000/img/grid-01.png', '永生花'),
(2, 'http://127.0.0.1:3000/img/grid-02.png', '花束'),
(3, 'http://127.0.0.1:3000/img/grid-03.png', '干花'),
(4, 'http://127.0.0.1:3000/img/grid-04.png', '绿萝'),
(5, 'http://127.0.0.1:3000/img/grid-05.png', '微观'),
(6, 'http://127.0.0.1:3000/img/grid-06.png', '多肉'),
(7, 'http://127.0.0.1:3000/img/grid-07.png', '盆栽'),
(8, 'http://127.0.0.1:3000/img/grid-08.png', '工具');

-- --------------------------------------------------------

--
-- 表的结构 `pay`
--

CREATE TABLE `pay` (
  `id` int(11) NOT NULL,
  `lid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pay`
--

INSERT INTO `pay` (`id`, `lid`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- 表的结构 `rd_image`
--

CREATE TABLE `rd_image` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `rd_image`
--

INSERT INTO `rd_image` (`id`, `img_url`) VALUES
(1, 'http://127.0.0.1:3000/img/jx-03.jpg'),
(2, 'http://127.0.0.1:3000/img/jx-04.jpg'),
(3, 'http://127.0.0.1:3000/img/jx-05.jpg'),
(4, 'http://127.0.0.1:3000/img/jx-06.jpg'),
(5, 'http://127.0.0.1:3000/img/jx-07.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `shop`
--

CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `lid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `shop`
--

INSERT INTO `shop` (`id`, `lid`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16);

-- --------------------------------------------------------

--
-- 表的结构 `sl_image`
--

CREATE TABLE `sl_image` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sl_image`
--

INSERT INTO `sl_image` (`id`, `img_url`, `title`, `price`) VALUES
(1, 'http://127.0.0.1:3000/img/product-01.jpg', '简单鲜花单束体验节日礼物送长辈', '109.00'),
(2, 'http://127.0.0.1:3000/img/product-02.jpg', '繁华混合鲜花单束体验', '129.00');

-- --------------------------------------------------------

--
-- 表的结构 `sy_image`
--

CREATE TABLE `sy_image` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sy_image`
--

INSERT INTO `sy_image` (`id`, `img_url`) VALUES
(2, 'http://127.0.0.1:3000/img/banner-06.jpg'),
(3, 'http://127.0.0.1:3000/img/banner-07.jpg'),
(4, 'http://127.0.0.1:3000/img/banner-05.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `sz_image`
--

CREATE TABLE `sz_image` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `info` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sz_image`
--

INSERT INTO `sz_image` (`id`, `img_url`, `info`) VALUES
(1, 'http://127.0.0.1:3000/img/banner-08.png', '仿真花艺装饰绣花客 厅装饰花卉摆件');

-- --------------------------------------------------------

--
-- 表的结构 `xq`
--

CREATE TABLE `xq` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xq`
--

INSERT INTO `xq` (`id`, `img_url`, `title`, `price`) VALUES
(1, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(2, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(3, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(4, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(5, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(6, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(7, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(8, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(9, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(10, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(11, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(12, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(13, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(14, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(15, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(16, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(17, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(18, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(19, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(20, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(21, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(22, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(23, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(24, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(25, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(26, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(27, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(28, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(29, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(30, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(31, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(32, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(33, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(34, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(35, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(36, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(37, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(38, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(39, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(40, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(41, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(42, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(43, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(44, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(45, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(46, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(47, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(48, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(49, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(50, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(51, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(52, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(53, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(54, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(55, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(56, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(57, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(58, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(59, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(60, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(61, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(62, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(63, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(64, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(65, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(66, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(67, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(68, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(69, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(70, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(71, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(72, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(73, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(74, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(75, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(76, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(77, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(78, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(79, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(80, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(81, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(82, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(83, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(84, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(85, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(86, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(87, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(88, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(89, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(90, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(91, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(92, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(93, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(94, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(95, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(96, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(97, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(98, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(99, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(100, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(101, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(102, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(103, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(104, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(105, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(106, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(107, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(108, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(109, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(110, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(111, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(112, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(113, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(114, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(115, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(116, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(117, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(118, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(119, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(120, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(121, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(122, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(123, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(124, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(125, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(126, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(127, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00'),
(128, 'http://127.0.0.1:3000/img/detail-01.jpg', '大型植物盆栽北欧家具装饰', '80.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_image`
--
ALTER TABLE `detail_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hd_comment`
--
ALTER TABLE `hd_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hd_fx`
--
ALTER TABLE `hd_fx`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hd_image`
--
ALTER TABLE `hd_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hd_login`
--
ALTER TABLE `hd_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hd_lztp`
--
ALTER TABLE `hd_lztp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hd_news`
--
ALTER TABLE `hd_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hd_shoppingcart_item`
--
ALTER TABLE `hd_shoppingcart_item`
  ADD PRIMARY KEY (`iid`);

--
-- Indexes for table `hd_sztp`
--
ALTER TABLE `hd_sztp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hl_image`
--
ALTER TABLE `hl_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jx_image`
--
ALTER TABLE `jx_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kj_image`
--
ALTER TABLE `kj_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lunbo_image`
--
ALTER TABLE `lunbo_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nav_image`
--
ALTER TABLE `nav_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay`
--
ALTER TABLE `pay`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lid` (`lid`);

--
-- Indexes for table `rd_image`
--
ALTER TABLE `rd_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lid` (`lid`);

--
-- Indexes for table `sl_image`
--
ALTER TABLE `sl_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sy_image`
--
ALTER TABLE `sy_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sz_image`
--
ALTER TABLE `sz_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xq`
--
ALTER TABLE `xq`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `detail_image`
--
ALTER TABLE `detail_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `hd_comment`
--
ALTER TABLE `hd_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `hd_fx`
--
ALTER TABLE `hd_fx`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用表AUTO_INCREMENT `hd_image`
--
ALTER TABLE `hd_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- 使用表AUTO_INCREMENT `hd_login`
--
ALTER TABLE `hd_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用表AUTO_INCREMENT `hd_lztp`
--
ALTER TABLE `hd_lztp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `hd_news`
--
ALTER TABLE `hd_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- 使用表AUTO_INCREMENT `hd_shoppingcart_item`
--
ALTER TABLE `hd_shoppingcart_item`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用表AUTO_INCREMENT `hd_sztp`
--
ALTER TABLE `hd_sztp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `hl_image`
--
ALTER TABLE `hl_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `jx_image`
--
ALTER TABLE `jx_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `kj_image`
--
ALTER TABLE `kj_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `lunbo_image`
--
ALTER TABLE `lunbo_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `nav_image`
--
ALTER TABLE `nav_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `pay`
--
ALTER TABLE `pay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `rd_image`
--
ALTER TABLE `rd_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用表AUTO_INCREMENT `sl_image`
--
ALTER TABLE `sl_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `sy_image`
--
ALTER TABLE `sy_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `sz_image`
--
ALTER TABLE `sz_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `xq`
--
ALTER TABLE `xq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- 限制导出的表
--

--
-- 限制表 `pay`
--
ALTER TABLE `pay`
  ADD CONSTRAINT `pay_ibfk_1` FOREIGN KEY (`lid`) REFERENCES `hd_image` (`id`);

--
-- 限制表 `shop`
--
ALTER TABLE `shop`
  ADD CONSTRAINT `shop_ibfk_1` FOREIGN KEY (`lid`) REFERENCES `hd_image` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
