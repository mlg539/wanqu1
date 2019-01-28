-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-01-27 08:45:08
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
-- Database: `wanqu`
--

-- --------------------------------------------------------

--
-- 表的结构 `commenta`
--

CREATE TABLE `commenta` (
  `uid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `times` datetime DEFAULT NULL,
  `topic` varchar(32) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `tags` varchar(32) DEFAULT NULL,
  `bg` varchar(64) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `point` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `commenta`
--

INSERT INTO `commenta` (`uid`, `cid`, `times`, `topic`, `photo`, `tags`, `bg`, `uname`, `point`) VALUES
(1, 1, '2019-01-15 20:01:03', '圆一场踩雪梦，丰宁坝上梦幻雪乡的声音送给你们', 'images/strategy/one/0.jpg', '#自然奇观 #滑雪', 'images/strategy/one/bg.jpg', '圆圆', 1856),
(2, 2, '2019-01-18 20:01:03', '【左左的旅程】手绘海南，记录十项我们在三亚的初夏瞬间', 'images/strategy/two/0.jpg', '#美食#情侣游#海岛', 'images/strategy/two/bg.jpg', '左左的旅程', 1826),
(3, 3, '2019-01-26 20:01:03', '【首发】用一个周末的时间消耗掉一整周的疲乏|重庆', 'images/strategy/three/0.jpg', '#特色表演#美食#人文游#主题乐园#摄影', 'images/strategy/three/bg.jpg', '拿相机的尤', 466),
(4, 4, '2019-01-26 20:01:03', '#9是这样牛#跟着《爸爸去哪儿》一路向北穿越雪乡', 'images/strategy/three/0.jpg', '#人文游#跟团游#雪景', 'images/strategy/three/bg.jpg', 'in老板', 8986),
(5, 5, '2019-01-26 20:01:03', '【首发】#玩美畅游#走向世界第一站，在泰国幸福的流浪', 'images/strategy/five/0.jpg', '#美食#人文游#摄影#精品酒店', 'images/strategy/five/bg.jpg', '被遗弃的时光...', 11211),
(6, 6, '2019-01-26 20:01:03', '第九次泰国之旅，终于去了大城和芭提雅', 'images/strategy/six/0.jpg', '#美食#人文游#摄影', 'images/strategy/six/bg.jpg', '迷途的小柒', 31627);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `commenta`
--
ALTER TABLE `commenta`
  ADD PRIMARY KEY (`cid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `commenta`
--
ALTER TABLE `commenta`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
