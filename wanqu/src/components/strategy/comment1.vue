<template>
    <div>
      <el-upload
          class="avatar-uploader"
          action="http://127.0.0.1:3000/upload"
          :show-file-list="false"
          :on-success="handleAvatarSuccess"
          :on-remove="handleRemove"
          :before-upload="beforeAvatarUpload">
          <img v-if="imageUrl" :src="imageUrl" class="avatar">
          <i v-else class="el-icon-plus avatar-uploader-icon"></i>
      </el-upload>  
    </div>
</template>
<script>
  export default {
    data() {
      return {
        imageUrl: ''
      };
    },
    methods: {
        handleRemove(file, fileList) {
        console.log(file, fileList);
      },
      handleAvatarSuccess(res, file) {
       this.imageUrl = URL.createObjectURL(file.raw);
        console.log(res,file.raw)
      },
      beforeAvatarUpload(file) {
        const isJPG = file.type === 'image/jpeg';
        const isLt2M = file.size / 1024 / 1024 < 2;

        if (!isJPG) {
          this.$message.error('上传头像图片只能是 JPG 格式!');
        }
        if (!isLt2M) {
          this.$message.error('上传头像图片大小不能超过 2MB!');
        }
        return isJPG && isLt2M;
      }
    }
  }
</script>

<style>
  .avatar-uploader .el-upload {
    cursor: pointer;
    width: 100%;
    height: 600px;
    position: relative;
    overflow: hidden;
  }
  .avatar-uploader .el-upload:hover {
    border-color: #409EFF;
  }
  .avatar-uploader-icon {
    font-size: 28px;
    color: #8c939d;
    background: gainsboro;
    width: 178px;
    height: 178px;
    line-height: 178px;
    text-align: center;
   
    margin: 10% auto 0;
  }
  .avatar {
    width: 100%;  
    object-fit: cover;
    display: block;
  }
</style>