<template>
    <div>
      <el-upload
          action="http://127.0.0.1:3000/upload"
          list-type="picture-card"
          :on-preview="handlePictureCardPreview"
          :on-success="handleAvatarSuccess"
          :on-remove="handleRemove">
          <i class="el-icon-plus"></i>
        </el-upload>
        <el-dialog :visible.sync="dialogVisible">
          <img width="100%" :src="dialogImageUrl" alt="">
      </el-dialog>  
    </div>
</template>

<script>
  export default {
    data() {
      return {
        dialogImageUrl: '',
        dialogVisible: false
      };
    },
    methods: {
      handleRemove(file, fileList) {
        console.log(file, fileList);
      },
        handleAvatarSuccess(res, file) {
      
        console.log(res,file.raw)
      },
      handlePictureCardPreview(file) {
        this.dialogImageUrl = file.url;
        this.dialogVisible = true;
      }
    }
  }
</script>