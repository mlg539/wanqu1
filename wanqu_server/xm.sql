/** 玩去网数据库2.0**/
SET NAMES UTF8;
DROP DATABASE IF EXISTS wanqu;
CREATE DATABASE wanqu CHARSET=UTF8;
USE wanqu;
/**用户表**/
CREATE TABLE user(
	uid INT PRIMARY KEY AUTO_INCREMENT,		#用户id（自增）
	uname VARCHAR(16),				#用户名
	password VARCHAR(32),				#用户密码
	gender BOOL,						#用户性别(1-->男 0-->女)
	email VARCHAR(16),				#用户邮箱
	phone CHAR(11),					#联系电话
	user_name VARCHAR(50)	,			#用户真实姓名
	avatar VARCHAR(50),				#用户头像
	level BOOL						#用户级别  1->管理员   0->普通用户  
);

CREATE TABLE message(
	mid INT PRIMARY KEY AUTO_INCREMENT,	#留言id(自增)
	level INT,								#评价等级1-5	
	time DATETIME,						#留言时间
	content VARCHAR(10000),				#留言内容
	aid INT,								#订单编号
	img1 VARCHAR(255),					#留言图片 
	img2 VARCHAR(255),					#留言图片 
	img3 VARCHAR(255),					#留言图片 
	img4 VARCHAR(255),					#留言图片 
	img5 VARCHAR(255),					#留言图片 
	img6 VARCHAR(255),					#留言图片 
	img7 VARCHAR(255),					#留言图片 
	img8 VARCHAR(255)					#留言图片 
);



CREATE TABLE commena(
	uid int,	#用户id
	cid INT PRIMARY KEY AUTO_INCREMENT,#用户评论cid  自增								
	time DATETIME,						#留言时间
	topic VARCHAR(32),	#游玩主题文字
	photo VARCHAR(255),#用户头像
	tags VARCHAR(32)#热门标签
);

CREATE TABLE commentb(
	uid int,	#用户id
	commentid INT PRIMARY KEY AUTO_INCREMENT,#用户评论内容的id项  自增
	cid INT ,	#用户评论cid								
	topic_small VARCHAR(132),	#游玩目录标题
	img VARCHAR(255),#配置图片地址
	city VARCHAR(36),#图片拍摄地址
	details VARCHAR(2000)#内容描述
);
INSERT INTO commena VALUES
(1,null,now(),'圆一场踩雪梦，丰宁坝上梦幻雪乡的声音送给你们',null,"#自然奇观 #滑雪")
INSERT INTO commentb VALUES
(1,null,1,'踩在脚下，雪嘎吱嘎吱的声音',null,null,"我在2019年的开始圆了一场雪季梦，2018年的冬天刚过去一半，这个冬天我还没有踩过雪见过满眼的白，本以为12月底在欧洲的冬天会遇到漫天的雪花，然而半个月的时间，只见过初到欧洲时零散雪花的飘落，还有后来半个月的阴天，唯独没有见到雪花。")


INSERT INTO commentb VALUES
(1,null,1,null,"images/strategy/one/2.jpg",null,"回国之后，冬天的南方还没有雪花，作为一个土生土长的北方人，已经按嫩不住心中对雪的渴望，一场说走就走的巧遇旅行开始了。来到北京之后，本想着之前已经去过东北的雪乡，而听到朋友介绍北京的“七环”也有个雪乡，不用再去到那么远的地方了，北京就有一个“梦幻雪乡”。")