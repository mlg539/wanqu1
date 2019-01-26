<template>
  <div>
    <el-container>
  <el-header>Header</el-header>
  <el-main>
    <el-row class="space">
      <el-col :span="4"><div class="grid-content"></div></el-col>
      <el-col :span="20"><div class="grid-content"><h2>当季热玩</h2></div></el-col>
    </el-row>
    <el-row>
      <el-col :span="4"><div class="grid-content"></div></el-col>
      <el-col :span="4" v-for="item of list.slice(0,4)" :key="item.jingdian_id">
        <div class="grid-content">
          <img class="pic_size" :src="'http://127.0.0.1:3000/'+item.pic" alt="">
          <span class="title">{{item.title}}</span>
          <span></span><span class="color">￥{{item.price}}</span>
        </div>
      </el-col>
      <el-col :span="4"><div class="grid-content"></div></el-col>
    </el-row>
    <el-row>
      <el-col :span="4"><div class="grid-content"></div></el-col>
      <el-col :span="4" v-for="item of list.slice(4,8)" :key="item.jingdian_id">
        <div class="grid-content">
          <img class="pic_size" :src="'http://127.0.0.1:3000/'+item.pic" alt="">
          <span class="title">{{item.title}}</span>
          <span></span><span class="color">￥{{item.price}}</span>
        </div>
      </el-col>
      <el-col :span="4"><div class="grid-content"></div></el-col>
    </el-row>
    <el-row class="space">
      <el-col :span="4"><div class="grid-content"></div></el-col>
      <el-col :span="20"><div class="grid-content"><h2>周边游</h2></div></el-col>
    </el-row>
    <el-row>
      <el-col :span="4"><div class="grid-content"></div></el-col>
      <el-col :span="4" v-for="item of list.slice(12,16)" :key="item.jingdian_id">
        <div class="grid-content">
          <img class="pic_size" :src="'http://127.0.0.1:3000/'+item.pic" alt="">
          <span class="title">{{item.title}}</span>
          <span></span><span class="color">￥{{item.price}}</span>
        </div>
      </el-col>
      <el-col :span="4"><div class="grid-content"></div></el-col>
    </el-row>
    <el-row>
      <el-col :span="4"><div class="grid-content"></div></el-col>
      <el-col :span="4" v-for="item of list.slice(16,20)" :key="item.jingdian_id">
        <div class="grid-content">
          <img class="pic_size" :src="'http://127.0.0.1:3000/'+item.pic" alt="">
          <span class="title">{{item.title}}</span>
          <span></span><span class="color">￥{{item.price}}</span>
        </div>
      </el-col>
      <el-col :span="4"><div class="grid-content"></div></el-col>
    </el-row>
    <el-row class="space">
      <el-col :span="4"><div class="grid-content"></div></el-col>
      <el-col :span="20"><div class="grid-content"><h2>国内游</h2></div></el-col>
    </el-row>
    <el-row>
      <el-col :span="4"><div class="grid-content"></div></el-col>
      <el-col :span="4" v-for="item of list.slice(20,24)" :key="item.jingdian_id">
        <div class="grid-content">
          <img class="pic_size" :src="'http://127.0.0.1:3000/'+item.pic" alt="">
          <span class="title">{{item.title}}</span>
          <span></span><span class="color">￥{{item.price}}</span>
        </div>
      </el-col>
      <el-col :span="4"><div class="grid-content"></div></el-col>
    </el-row>
    <el-row>
      <el-col :span="4"><div class="grid-content"></div></el-col>
      <el-col :span="4" v-for="item of list.slice(24,28)" :key="item.jingdian_id">
        <div class="grid-content">
          <img class="pic_size" :src="'http://127.0.0.1:3000/'+item.pic" alt="">
          <span class="title">{{item.title}}</span>
          <span></span><span class="color">￥{{item.price}}</span>
        </div>
      </el-col>
      <el-col :span="4"><div class="grid-content"></div></el-col>
    </el-row>
  </el-main>
  <el-footer>Footer</el-footer>
</el-container>
    
  </div>
</template>
<script>
export default {
  data() {
    return {
      list:[]      
    }
  },
  created() {
    this.djrw1();
  },
  methods: {
    djrw1(){
      var url = 'http://127.0.0.1:3000/djrw1';
      this.axios.get(url).then(result=>{
        this.list = result.data;
        //console.log(result.data);
      })
    }
  },
};
</script>
<style>
  .grid-content {
    border-radius: 4px;
    min-height: 36px;
  }
  .color {
    color: #ff6633;
    font-weight: 800;
  }
  h2{
    margin: 0;
  }
  .pic_size{
    width: 100%;
    height: 80%;
  }
  .space{
    margin: 0.5rem 0;
  }
</style>
