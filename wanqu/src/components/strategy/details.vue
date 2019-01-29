<template>
    <div class="strategy-details">
        <div class="strategy-header" :style="{background:'url('+bg+')  no-repeat'}"></div>
        <div class="strategy-title">
                 <el-row :gutter="24">
                   <el-col :span="3"><div class="grid-content bg-purple"><img :src="list.photo" alt=""></div></el-col>
                   <el-col :span="21">
                       <div class="grid-content bg-purple">
                            <h1 style="margin-top:-5px">{{list.topic}}</h1>
                            <el-row class="c-black">
                              <el-col :span="12"><div class="grid-content bg-purple ">{{list.uname}}&nbsp;&nbsp;&nbsp;发表于{{list.times|datatimefilter}} &nbsp;&nbsp;&nbsp;浏览数：{{list.point}}</div></el-col>
                              <el-col :span="12"><div class="grid-content bg-purple-light">点赞:{{list.great}}</div></el-col>
                            </el-row>
                       </div></el-col>
                 </el-row>
        </div>   
        <hr> 
        <div class="strategy-content">
            <el-row :gutter="20">
              <el-col :span="16">
                  <div class="grid-content bg-purple">
                      <p style="font-size:12px;" class="m">{{list.tags}}</p>
                      <ul>
                          <li class="li" v-for="(content ,i) of contents" :key="i">
                              <h2  v-if="content.topic_small" class="m">{{content.topic_small}}</h2>
                              <img v-if="content.img.indexOf('images')>0?true:false" :src="content.img" alt="" class="w-100 m">
                              <p   v-if="content.city" class="m">{{content.city}}</p>
                              <p   v-if="content.details" class="m">{{content.details}}</p>
                          </li>
                      </ul>
                  </div>
              </el-col>
              <el-col :span="8"><div class="grid-content bg-purple"></div></el-col>
            </el-row>
        </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            list:[],
            bg:"",
            contents:[],
            cid:this.$route.query.cid,
        }
    },
    created() {
        this.getbg();
        this.getcontent();
    },
    methods: {
        getbg(){
            console.log(this.cid)
            var url="http://127.0.0.1:3000/getbg?cid="+this.cid;
            console.log(url)
            this.axios.get(url).then(res=>{
                console.log("bg:"+1)
                if(res.data.code>0){
                this.list=res.data.data[0]
                this.bg="http://127.0.0.1:3000/"+this.list.bg
                this.list.photo="http://127.0.0.1:3000/"+this.list.photo
                console.log(this.list.tags)
                }
                else
                document.write("出错啦！")

            })
        },
        getcontent(){
            var url="http://127.0.0.1:3000/getcontent?cid="+this.cid
            this.axios.get(url).then(res=>{
                console.log("content:"+2)
                if(res.data.code>0){
               
                for(var key of res.data.data){
                    key.img="http://127.0.0.1:3000/"+key.img;
                }
           
                this.contents=res.data.data
                console.log(this.contents)
                }
                else
                document.write("出错啦！")

            })
        }
    },

    
    
}
</script>
<style>
    *{
        margin:0;padding:0;
    }
    body{
        min-width: 1920px;
    }
    .w-100{
        width: 100%;
    }
    ul{
        list-style: none;
    }
    .c-black{
        color: black;
        margin-top: 50px;
    }
    .strategy-details{
          position: relative;
    }
    .strategy-header{
        width: 100%;
        height: 800px;
        background-size:100% !important;
    }
    .strategy-content{
        width: 80%;
        margin:0 auto;
        height: 1120px;  
    }
    .strategy-title{
        position: absolute;
        top: 37%;
        height: 150px;
        width: 80%;
        left: 10%;
        color: white;

    }
    hr{
        margin-top:80px;
    }
   .m{
        margin-bottom: 20px !important;
    }
    
</style>