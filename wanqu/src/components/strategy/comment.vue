<template>
    <div class="strategy">
        <header class="strategy-header">
            <div class="strategy-photo" v-if="imgs.length>=1 ? false : true">
                <label class="lable" for="inputfile" > 
                  <!-- <img src="../../img/strategy/2.jpg"> -->
                  <input type="file" class="input-file" id="inputfile" style="display:none" @change="show" ><!--选取上传的文件-->
                
                </label>
            </div>
            <div class="strategy-p">
                 <img :src="imgs[0]" class="w-100" > 
                 <p>设置封面：图片建议选择宽度大于1680px，高度大于520px的高清大图</p>
                 <el-input
                   placeholder="请输入封面标题10字以内"
                   v-model="input10"
                   clearable>
                 </el-input>
            </div>
        </header>
        <section class="strategy-section">
            <div class="strategy-left">
                <nav class="strategy-nav" >
                    <el-tooltip content="Top center" placement="top" v-for="(item,i) of nav" :key="i">
                      <el-button type="transparent" @click.prevent="input">{{item}}</el-button>
                    </el-tooltip>
                    <input type="file" id="fileElem" multiple accept="image/*" style="display:none">  
                </nav>  
                <div>    
                <ul class="strategy-details-list">
                    <li class="strategy-details-list-item" v-show="a" v-for="(value,i) of files" :key="i">  
                        <el-input type="textarea" :autosize="{ minRows: 5}" >
                        </el-input>
                        <div  class="strategy-details-list-item-div">            
                            <img src="" alt="">
                            <span class="strategy-delete" @click="display(i)">删除</span>
                            <el-input
                              type="textarea"
                              autosize
                              placeholder="请输入图片描述">
                            </el-input>
                        </div>
                    </li>
                </ul>
                <el-input type="textarea" :autosize="{ minRows: 5}" >
                </el-input>
                </div>  
                <div class="strategy-tabs-list">
                   时节
                    <div>
                       <el-checkbox-group >
                         <el-checkbox-button v-for="city in cities" :label="city" :key="city">{{city}}              </el-checkbox-button>
                       </el-checkbox-group>
                    </div>
                </div>
            </div>
            <div class="strategy-right"></div>
        </section>
    </div>
</template>

<script>
export default {
  data() {
    return {
        a:false,
        nav:["B","设置标题","插入图片","插入视频"],
        input10: '',
        files:[""],
        imgs: [],
        imgData: {
            accept: 'image/gif, image/jpeg, image/png, image/jpg',
        },
        cities:['上海', '北京', '广州', '深圳'],
    }
  },
   methods: {
     input(){
         var spans=document.querySelectorAll(".strategy-nav>button span");
         var fileElem=document.getElementById("fileElem");
         for(var key of spans){                  
             if(key.innerText=="插入图片"){
                 console.log(key)
                 key.addEventListener("click", function (e) {
                  if (fileElem) {
                    fileElem.click();
                  }
                }, false);
                fileElem.onchange=(e)=>{
		        var files=e.target.files,file;
                this.files=Array.from(files);
                console.log(this.files)
                this.a=true;
                this.$nextTick( () =>{
                    var imgs=document.querySelectorAll(".strategy-details-list .strategy-details-list-item div img");

                for(var i=0;i<files.length;i++){
		        	if(files&&files.length>0){
		        	file=files[i];
		        	console.log(file);//显示第一张图片是什么样子的
		        	//检验图片的大小
		        	if(file.size>1024*1024*2){
		        	alert("图片大小不能超过2Mb")
		        	return false;
		        }                              
	            var url=window.URL||Window.webkitURL;
		        console.log(url);
    //第 二步  通过file生成目标url
		        var imgurl=url.createObjectURL(file);
		        console.log(imgurl)
    //第三步   将其展示出来
		        imgs[i].setAttribute("src",imgurl);                                       
      }
    }

     })
	}
    }
     }
     },
     display(i){
         this.files.splice(i,1)
      console.log(i);
     },
    //  ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
     show(event){  
            let reader =new FileReader();              //实例。。。。。。
            console.log(event.target)
            let img1=event.target.files[0];            //获取上传的img
            console.log(img1)                      
            let type=img1.type;//文件的类型，判断是否是图片
            let size=img1.size;//文件的大小，判断图片的大小
            if(this.imgData.accept.indexOf(type) == -1){       //如果没找到
                alert('请选择我们支持的图片格式！');
                return false;
            }
            if(size>3145728){                             //如果尺寸过大
                alert('请选择3M以内的图片！');
                return false;
            }
            var uri = ''                                  //url制空
            let form = new FormData(); 
            form.append('file',img1,img1.name);           //使用form data对象追加fill
            console.log(form.get("file"))
            this.axios.post('http://127.0.0.1:3000/file/upload',form,{
                headers:{'Content-Type':'multipart/form-data'}
            }).then(response => {
                var data=response.data;
                console.log(data);
                var str=data.data.split("\\").join("/").slice(6);           //改路径
  
                uri ="http://127.0.0.1:3000"+ str;           //获得完整路径
                reader.readAsDataURL(img1);                  //
                var that=this;
                reader.onloadend=function(){                 //reader加载结束
                    that.imgs.push(uri);                     //把url放进img数组里
                    console.log(that.imgs)                    
                }
            }).catch(error => {                              
                alert('上传图片出错！'+error);               
            })    
            },
 
         },  
      //  ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑
}
</script>
<style>

        *{margin:0;padding:0}
        .strategy-header{
            height: 600px;
            border: 1px solid red;
            overflow:hidden;
            text-align:center;
            background:red;
        }
        .strategy-p{
            position:relative;
        }
        .strategy-p .el-input{
            position:absolute;
            top:400px;
            left:10%;
            width:80%;
          
        }
        .strategy-p .el-input__inner{
            border-radius:30px;
            height:60px;
            line-height:60px;
            font-size:18px;
            font-weight:800;
            padding-left:50px;
        }
        .el-input__suffix{
            right:30px;
            width:30px;
        }
        .strategy-photo{
            width: 300px;
            height: 300px;
            margin: 60px auto 0;
            text-align: center;
        }
        .strategy-photo input{
            border: none;
            z-index: 1;
        }
        .w-100{
            width:100%;
        }
        .lable{
            width: 300px;
            height: 300px;
            display: block;
            background: rgb(112, 110, 96);
            position: relative;


        }
        .lable img{
            position: absolute;
            top: 30%;
            left: 30%;
            z-index: 3;
        }
        .lable input{
            position: absolute;
            top: 55%;
            left: 34%;
            color: transparent;
            z-index: 0;
            width: 0px;
        }
        .strategy-section{
            width: 70%;
            margin: 0 auto;
            border: 1px solid red;
            height: 1000px;
            display: flex;
            justify-content: space-around;
        }
        .strategy-left{
            width:65% ;
            height: 500px;
            border: 1px solid red;
            position: relative;
        }
        .strategy-right{
            width:20% ;
            height: 500px;
            border: 1px solid red;
        }
        .strategy-nav{
            width: 100%;
            height: 80px;
            box-sizing:border-box;
            margin-top:20px;
            padding:20px 20px;
         
        }
        .strategy-details-list img{
            width: 100%;
        }
        .strategy-delete{
            width: 60px;
            height: 30px;
            position: absolute;
            background: rgba(250,250,250,.9);
            right:0;
            top:0;
            text-align:center;
        }
        .strategy-details-list{
            list-style: none;
        }
        .strategy-details-list-item{
            position: relative;
        }
        .strategy-details-list-item-div{
            position:relative;
        }
        .strategy-tabs-list-ul{
            list-style: none;
        }
</style>