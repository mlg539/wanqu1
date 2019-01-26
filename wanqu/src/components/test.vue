<template>
  <div>
    <div :key="item.jingdian_id" v-for="item of list">
      <img :src="'http://127.0.0.1:3000/'+item.pic" :data-id="item.id">
    </div>
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
    this.test();
  },
  methods: {
    test(){
      var id = 211;
      var url = 'http://127.0.0.1:3000/test?id='+id;
      this.axios.get(url).then(result=>{
        this.list=result.data;
        console.log(this.list);
      })
    }
  },
}
</script>
<style>

</style>
