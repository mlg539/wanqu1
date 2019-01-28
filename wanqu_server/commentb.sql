-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-01-27 08:45:20
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
-- 表的结构 `commentb`
--

CREATE TABLE `commentb` (
  `uid` int(11) DEFAULT NULL,
  `commentid` int(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `topic_small` varchar(132) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `city` varchar(36) DEFAULT NULL,
  `details` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `commentb`
--

INSERT INTO `commentb` (`uid`, `commentid`, `cid`, `topic_small`, `img`, `city`, `details`) VALUES
(1, 1, 1, '踩在脚下，雪嘎吱嘎吱的声音', 'images/strategy/one/1.jpg', NULL, '我在2019年的开始圆了一场雪季梦，2018年的冬天刚过去一半，这个冬天我还没有踩过雪见过满眼的白，本以为12月底在欧洲的冬天会遇到漫天的雪花，然而半个月的时间，只见过初到欧洲时零散雪花的飘落，还有后来半个月的阴天，唯独没有见到雪花。'),
(1, 2, 1, NULL, 'images/strategy/one/2.jpg', NULL, '回国之后，冬天的南方还没有雪花，作为一个土生土长的北方人，已经按嫩不住心中对雪的渴望，一场说走就走的巧遇旅行开始了。来到北京之后，本想着之前已经去过东北的雪乡，而听到朋友介绍北京的“七环”也有个雪乡，不用再去到那么远的地方了，北京就有一个“梦幻雪乡”。'),
(1, 3, 1, NULL, 'images/strategy/one/3.jpg', NULL, '一场对雪的渴望，说走就走的旅行开始了。距离丰宁坝上自驾不到4个小时的车程，在哪里，我感受过说话冻嘴巴的快感，雪地战车、雪滑梯的爽快，更不能忘记的是我把雪花踩在脚下嘎吱嘎吱的声音，作为一个北方人，从小就感觉到只有把雪花踩在脚下，我听到咯吱咯吱的声音，这才是冬天。'),
(1, 4, 1, NULL, 'images/strategy/one/4.jpg', NULL, NULL),
(1, 5, 1, '关于梦幻雪乡，我有一些tips分享给你', NULL, NULL, '关于景区：'),
(1, 6, 1, NULL, 'images/strategy/one/5.jpg', NULL, '神仙谷·七彩森林景区，位于河北省承德市丰宁县大滩镇，是坝上草原一个5A级风景区，占地2万亩。景区是以发展休闲旅游为主要方向，以自然资源为依托，以满族文化为内涵，建设具有观光游览、参与体验、娱乐、休闲等内容于一体的自然文化景区，景区主体分为满族文化园区和生态休闲区两部分。'),
(1, 7, 1, NULL, NULL, NULL, '在这里白天，你可以拿出一上午的时间来徒步这个原始森林，看雾凇看树挂，从天镜湖到五彩池到蘑菇街再到树屋地带、森林部落、白桦林…… 一直走下去，走过厚重的雪，一路听着雪花嘎吱嘎吱的声音，走到'),
(1, 8, 1, NULL, NULL, NULL, '景区门票：120元/人 （包含景区内22项娱乐项目）\r\n电瓶车车票（单程）：40元/人（准乘人数13人）\r\n观光小火车（单程）：50元/人（准乘人数50人）\r\n酒店+景区新年优惠体验价398/人（周末加50元，初一到初六加200元）\r\n关于交通：\r\n飞机/火车：\r\n我们是飞到北京（火车到北京），然后自驾4个小时左右到达景区。\r\n或者还可以飞到承德（火车到承德），到景区差不多自驾两个小时的时间。\r\n自驾：\r\n北京——八达岭高速——赤诚怀来出口——赤城——沽源——大滩——北梁村\r\n北京到丰宁坝上草原自驾游路线详细内容：从马甸出发，走八达岭高速，出四五六环，经居庸关，过八达岭出口(58.6公里)，继续顺高速往张家口延庆方向行进，过康庄市界收费站（67.1公里）继续前行。赤城/怀来出口(105.7公里)出高速，看路标左拐，赤城方向。途中经头炮等处。看路标，一直往赤城开。到赤城时，见左手一加油站，路标显示左拐是赤城，此处不左拐（城里不好走），继续直行750米到一丁字路口，路口左手一加油站（现废弃），直行是去丰宁，咱们应左拐，然后顺路一直往沽源开,6公里后是新修的路，非常好走，顺主路途经猫域大桥，独石村等处，小厂收费10元。到沽源时，右拐上双向四幅车道的路进城，第一个红绿灯右拐，然后一直顺路走约40公里就能到大滩，（来源网络，仅供参考）'),
(2, 9, 1, '', 'images/strategy/two/1.jpg', NULL, '倆个人'),
(2, 10, 1, NULL, 'images/strategy/two/2.jpg', NULL, '海棠湾\r\n掰着手指头数一数，好像也就去过 三亚 三次，却总是对这个地方异 常熟 悉。飞飞却好像对 三亚 更有一丝偏爱，他总说这里是梦开始的地方。去年十月我同他第一次一起去了 三亚 ，遇上了天气预报里的台风，行程几经更改。那时候的我们还有些客套的生疏，我也从不肯在公共场合承认是他的女朋友。今年五月底我又一次同他来到了 三亚 ，这里空气里都是夏日的味道。时隔半年，我同他，我终于愿意大 大方 方走在人前，而这一段旅程也算是我们故事里的一部分。三亚 ，许久不见，别来无恙。\r\n手牵手'),
(2, 11, 1, '一步两步三步四步望着天', 'images/strategy/two/3.jpg', '海棠湾', '海棠湾 的海边，我和你的夏天。'),
(2, 12, 1, NULL, 'images/strategy/two/4.jpg', '海棠湾', '直升机看 海棠湾 景色，水质也很棒。'),
(2, 13, 1, NULL, 'images/strategy/two/6.jpg', '大东海', '在游艇上，被风吹乱的发梢。'),
(2, 14, 1, NULL, 'images/strategy/two/7.jpg', '亚龙湾 ', '说起 三亚 的海水，最让我欢喜的还是 亚龙湾 。\r\n'),
(2, 15, 1, NULL, 'images/strategy/two/8.jpg', '三亚亚龙湾万豪度假酒店', '我所喜欢的夏日记忆，这里都有。'),
(2, 16, 1, NULL, 'images/strategy/two/9.jpg', '亚龙湾 ', '凤凰花开的季节，有你陪着我'),
(2, 17, 1, NULL, 'images/strategy/two/10.jpg', '亚龙湾 ', '在海边教堂前带起头纱，或许哪天就嫁了。'),
(10, 40, 10, 'ghg', 'images/strategy/ten/15484965393608966.jpeg', 'ggh', 'hghg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `commentb`
--
ALTER TABLE `commentb`
  ADD PRIMARY KEY (`commentid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `commentb`
--
ALTER TABLE `commentb`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
