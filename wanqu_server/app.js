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



//攻略
app.post("/file/upload",(req,res)=>{     //设置路由
	// console.log("req")           //
	// console.log(req)           //
	var form = new formidable.IncomingForm();    //实例对象
	var targetFile = './public/upload';         //设置文件上传地址，文件需要自己提前创建好
	form.keepExtensions = true;//保留后缀
	form.uploadDir=targetFile;    //设置文件路由地址
	form.parse(req,function(err,fields,files){ //解析req请求主体
		if(err) throw err;       //抛出错误
		console.log(fields)//以post方式提交的表单域数据都放在fields这个对象当中
		console.log(files)//以post方式上传的文件、图片等文件域数据都放在files这个对象当中。
		var oldpath=files.file.path;    //获取旧路径（用户的文路路径）         中间的file是自己定义的变量名
		console.log(oldpath)            //
		var newpath = path.join(path.dirname(oldpath),files.file.name);        //设置新路径（存入服务器下的路径）
		console.log(newpath)            //
		fs.rename(oldpath,newpath,(err)=>{       //修改文件名
			if(err) throw err;           
		})
		res.send({code:1,data:newpath});
	})

})
//上传图片2
app.post("/upload",(req,res)=>{     //设置路由
	// console.log("req")           //
	// console.log(req)           //
	var form = new formidable.IncomingForm();    //实例对象
	var targetFile = './public/upload';         //设置文件上传地址，文件需要自己提前创建好
	form.keepExtensions = true;//保留后缀
	form.uploadDir=targetFile;    //设置文件路由地址
	form.parse(req,function(err,fields,files){ //解析req请求主体
		if(err) throw err;       //抛出错误
		console.log(fields)//以post方式提交的表单域数据都放在fields这个对象当中
		console.log(files)//以post方式上传的文件、图片等文件域数据都放在files这个对象当中。
		var oldpath=files.file.path;    //获取旧路径（用户的文路路径）         中间的file是自己定义的变量名
		console.log(oldpath)            //
		var newpath = path.join(path.dirname(oldpath),files.file.name);        //设置新路径（存入服务器下的路径）
		fs.rename(oldpath,newpath,(err)=>{       //修改文件名
			if(err) throw err;           
		})
		res.send({code:1,data:newpath});
	})

})




app.get("/getbg",(req,res)=>{
	console.log("getbg"+1)
	//默认uid=1
	var sql="SELECT * FROM `commena` WHERE uid=1";
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		if(result.length>0)
		res.send({code:1,data:result})
	})   
})
app.get("/getcontent",(req,res)=>{
	console.log("getcontent"+2)
	//默认uid=1 cid 是1  后续需要进行修改
	var sql=`SELECT topic_small,img,city,details FROM commentb WHERE uid=1 and cid=1`;
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			console.log(result)
		res.send({code:1,data:result})}
	})    
})
app.get("/getImages",(req,res)=>{
  //首页轮播的地址是写死的   因为这些就是服务器里面public下的资源
  fs.readdir('./public/img/',(err,files)=>{
    if(err) throw err;
    for(var key in files){
      files[key]="http://127.0.0.1:3000/img/"+files[key];
      
    }
    console.log(files)
    res.send(files);
  });

})
