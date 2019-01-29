//wanqu_server 服务器
const express = require("express");

//引入form模块
const formidable = require("formidable");
const path= require("path"); //路径模块
const fs= require("fs");      //文件模块
const http= require("http");   



var app = express();
app.use(express.static("public"));
app.listen(3000);
const pool = require("./pool");

//express mysql 参数 request;response
//跨域访问配置
//1:加载模块cors
const cors = require("cors");
//2:配置cors
app.use(cors({
	origin: ["http://127.0.0.1:8080",
		"http://localhost:8080"],//允许列表
	credentials: true   //是否验证
}))
//3:加载第三方模块express-session
const session = require("express-session");
//4:配置模块
app.use(session({
	secret: "128位随机字符串", //安全令牌--计算sessionID
	resave: false,   //请求保存  无需每次重新设置
	saveUninitialized: true, //初始化
	cookie: {
		maxAge: 1000 * 60 * 60 * 24  //session保存时间  1天
	}
}))
//功能零：测试获取图片
app.get('/test',(req,res)=>{
	var id = req.query.id;
	var sql = 'select * from jingdian_pic where id = ?'
	pool.query(sql,[id],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send(result);
		}else{
			res.send({code:1,msg:'错误'})
		}
	})
})
//主页功能一：获取主页内容当季热玩信息
app.get('/djrw1',(req,res)=>{
	//1:获取查找景点的id
	//var id = req.query.id;
  //2:创建sql
  var sql = "SELECT jingdian_id,title,price,pic FROM jingdian";
  pool.query(sql,(err,result)=>{
			if(err)throw err;
      res.send(result);
  });
})



//######攻略   陈焕武   莫岭红
//功能一  获取头部背景  标题
app.get("/getbg",(req,res)=>{	
	var cid=req.query.cid*1
	//默认uid=1
	if(!cid){
		cid=1
	}
	var sql="SELECT * FROM `commenta` WHERE cid=?";
	pool.query(sql,[cid],(err,result)=>{
		if(err) throw err;
		if(result.length>0)
		res.send({code:1,data:result})
	})   
})
//功能二  获取主体内容
app.get("/getcontent",(req,res)=>{
	var cid=req.query.cid*1;
	if(!cid){
		cid=1
	}
	//默认uid=1 cid 是1  后续需要进行修改
	var sql=`SELECT topic_small,img,city,details FROM commentb WHERE cid=?`;
	pool.query(sql,[cid],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			console.log(result)
		res.send({code:1,data:result})}
	})    
})
//攻略详情页左侧
app.get("/gonglue_tuijian_left",(req,res)=>{
	//创建sql
	var sql="SELECT * ";
	sql+="FROM gonglue_tuijian_left";
	pool.query(sql,(err,result)=>{
		if(err)throw err;
		var rows=result
		res.send(rows)
	}) 
	
})
//攻略-详情
app.get("/gonglue-x",(req,res)=>{
	//创建sql查询
	var sql = "SELECT * ";
	sql += "FROM commenta"; 
	pool.query(sql, (err, result) => {
		if (err) throw err;
		var rows = result
		res.send(rows)
	}) 
})
//攻略推荐轮播
app.get("/gonglue_tuijian_right",(req,res)=>{
	//创建sql
	var sql = "SELECT * ";
	sql += "FROM gonglue_tuijian_right";
	pool.query(sql, (err, result) => {
		if (err) throw err;
		var rows = result
		res.send(rows)
	}) 
})
//攻略达人
app.get("/gonglue_daren", (req, res) => {
	//创建sql
	var sql = "SELECT * ";
	sql += "FROM gonglue_daren";
	pool.query(sql, (err, result) => {
		if (err) throw err;
		var rows = result
		res.send(rows)
	})
})
//攻略游记
app.get("/gonglue_youji", (req, res) => {
  //创建sql
  var sql = "SELECT * ";
  sql += "FROM gonglue_youji";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    var rows = result;
    res.send(rows);
  });
});