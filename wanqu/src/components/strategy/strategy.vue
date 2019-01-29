<template>
  <div class="container p-0">
    <!--推荐攻略-->
    <h3 class="text-center">推荐攻略</h3>
    <hr class="mb-1">
    <span class="huan m-0 p-0">
      <a href="#">换一换</a>
    </span>
    <div class="d-flex flex-row clearfix p-0 m-0">
      <!--左侧图片区 -->
      <div class="d-flex flex-column" style="width: 280px;height: 500px" v-if="list1.length">
        <a href="#" class="mb-3" v-for="item of list1" :key="item.id">
          <img :src="item.img_url" class="img-fluid" >
        </a>
      </div>
      <!--右侧轮播区-->
      <div class="slider ml-4 clearfix">
        <ul class="list-unstyled clearfix" v-if="list2.length">
          <li>
            <div class="d-flex flex-column">
              <div class="d-flex flex-row clearfix">
                <div class="demo p-0 mr-2 mb-3">
                <router-link :to="'/details?cid='+list[0].cid">      
                  <div class="contain p-0">
                    <div class="box">                  
                        <img  :src="'http://127.0.0.1:3000/'+list[0].bg" alt class="img-fluid ig">         
                      <div class="box-content">
                        <div class="content">
                          <span class="post">{{list[0].topic}}</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  </router-link>
                  <span>{{list[0].tags}}</span>
                  <br>
                  <a href="#">
                    <img :src="'http://127.0.0.1:3000/'+list[0].photo" class="img-fluid img-small">
                  </a>
                  <a href="#" class="text-info">
                    <span class="font_name  "  >{{list[0].uname}}</span>
                  </a>
                  <a href="#" class="small_a s-0">{{list[0].point}}浏览</a>
                </div>
                <div class="demo p-0 mr-2 mb-3">
                 <router-link :to="'/details?cid='+list[1].cid">                     
                  <div class="contain p-0">
                    <div class="box">
                      <a href="#">
                        <img :src="'http://127.0.0.1:3000/'+list[1].bg" alt class="img-fluid ig">
                      </a>
                      <div class="box-content">
                        <div class="content">
                          <span class="post">{{list[1].topic}}</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  </router-link>
                  <span>{{list[1].tags}}</span>
                  <br>
                  <a href="#">
                    <img :src="'http://127.0.0.1:3000/'+list[1].photo" class="img-fluid img-small">
                  </a>
                  <a href="#" class="text-info">
                    <span class="font_name">{{list[1].uname}}</span>
                  </a>
                  <a href="#" class="small_a s-1">{{list[1].point}}浏览</a>
                </div>
                <div class="demo p-0 mb-3">
                 <router-link :to="'/details?cid='+list[2].cid">    
                  <div class="contain p-0">
                    <div class="box">
                      <a href="#">
                        <img :src="'http://127.0.0.1:3000/'+list[2].bg" alt class="img-fluid ig">
                      </a>
                      <div class="box-content">
                        <div class="content">
                          <span class="post">{{list[2].topic}}</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  </router-link>
                  <span>{{list[2].tags}}</span>
                  <br>
                  <a href="#">
                    <img :src="'http://127.0.0.1:3000/'+list[2].photo" class="img-fluid img-small">
                  </a>
                  <a href="#" class="text-info">
                    <span class="font_name">{{list[2].uname}}</span>
                  </a>
                  <a href="#" class="small_a s-2">{{list[2].point}}浏览</a>
                </div>
              </div>
              <div class="d-flex flex-row">
                <div class="demo p-0 mr-2 mb-3">
                 <router-link :to="'/details?cid='+list[3].cid">    
                  <div class="contain p-0">
                    <div class="box">
                      <a href="#">
                        <img :src="'http://127.0.0.1:3000/'+list[3].bg" alt class="img-fluid ig">
                      </a>

                      <div class="box-content">
                        <div class="content">
                          <a href="#">
                            <span class="post">{{list[3].topic}}</span>
                          </a>
                        </div>
                      </div>
                    </div>
                  </div>
                  </router-link>
                  <span>{{list[3].tags}}</span>
                  <br>
                  <a href="#">
                    <img :src="'http://127.0.0.1:3000/'+list[3].photo" class="img-fluid img-small">
                  </a>
                  <a href="#" class="text-info">
                    <span class="font_name">{{list[3].uname}}</span>
                  </a>
                  <a href="#" class="small_a s-3">{{list[3].point}}浏览</a>
                </div>
                <div class="demo p-0 mr-2 mb-3">
                 <router-link :to="'/details?cid='+list[4].cid">   
                  <div class="contain p-0">
                    <div class="box">
                      <a href="#">
                        <img :src="'http://127.0.0.1:3000/'+list[4].bg" alt class="img-fluid ig">
                      </a>
                      <div class="box-content">
                        <div class="content">
                          <span class="post">{{list[4].topic}}</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  </router-link>                 
                  <span>{{list[4].tags}}</span>
                  <br>
                  <a href="#">
                    <img :src="'http://127.0.0.1:3000/'+list[4].photo" class="img-fluid img-small">
                  </a>
                  <a href="#" class="text-info">
                    <span class="font_name">{{list[4].uname}}</span>
                  </a>
                  <a href="#" class="small_a s-4">{{list[4].point}}浏览</a>
                </div>
                <div class="demo p-0 mb-3">
                 <router-link :to="'/details?cid='+list[5].cid">                     
                  <div class="contain p-0">
                    <div class="box">
                      <a href="#">
                        <img :src="'http://127.0.0.1:3000/'+list[5].bg" alt class="img-fluid ig">
                      </a>
                      <div class="box-content">
                        <div class="content">
                          <span class="post">{{list[5].topic}}</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  </router-link>                      
                  <span>{{list[5].tags}}</span>
                  <br>
                  <a href="#">
                    <img :src="'http://127.0.0.1:3000/'+list[5].photo" class="img-fluid img-small">
                  </a>
                  <a href="#" class="text-info">
                    <span class="font_name">{{list[5].uname}}</span>
                  </a>
                  <a href="#" class="small_a s-5">{{list[5].point}}浏览</a>
                </div>
              </div>
            </div>
          </li>
          <li>
            <div class="d-flex flex-column">
              <div class="d-flex flex-row">
                <div class="demo p-0 mr-2 mb-3">
                  <div class="contain p-0">
                    <div class="box">
                      <a href="#">
                        <img :src="list2[6].img_url" alt class="img-fluid">
                      </a>

                      <div class="box-content">
                        <div class="content">
                          <span class="post">{{list2[6].stitle}}</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <span>{{list2[6].stype}}</span>
                  <br>
                  <a href="#">
                    <img :src="list2[6].simg_url" class="img-fluid img-small">
                  </a>
                  <a href="#" class="text-info">
                    <span class="font_name">{{list2[6].sname}}</span>
                  </a>
                  <a href="#" class="small_a">{{list2[6].sclick}}浏览</a>
                </div>

                <div class="demo p-0 mr-2 mb-3">
                  <div class="contain p-0">
                    <div class="box">
                      <a href="#">
                        <img :src="list2[7].img_url" alt class="img-fluid">
                      </a>

                      <div class="box-content">
                        <div class="content">
                          <span class="post">{{list2[7].stitle}}</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <span>{{list2[7].stype}}</span>
                  <br>
                  <a href="#">
                    <img :src="list2[7].simg_url" class="img-fluid img-small">
                  </a>
                  <a href="#" class="text-info">
                    <span class="font_name">{{list2[7].sname}}</span>
                  </a>
                  <a href="#" class="small_a">{{list2[7].sclick}}浏览</a>
                </div>
                <div class="demo p-0 mb-3">
                  <div class="contain p-0">
                    <div class="box">
                      <a href="#">
                        <img :src="list2[8].img_url" alt class="img-fluid">
                      </a>

                      <div class="box-content">
                        <div class="content">
                          <span class="post">{{list2[8].stitle}}</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <span>{{list2[8].stype}}</span>
                  <br>
                  <a href="#">
                    <img :src="list2[8].simg_url" class="img-fluid img-small">
                  </a>
                  <a href="#" class="text-info">
                    <span class="font_name">{{list2[8].sname}}</span>
                  </a>
                  <a href="#" class="small_a">{{list2[8].sclick}}浏览</a>
                </div>
              </div>
              <div class="d-flex flex-row">
                <div class="demo p-0 mr-2 mb-3">
                  <div class="contain p-0">
                    <div class="box">
                      <a href="#">
                        <img :src="list2[9].img_url" alt class="img-fluid">
                      </a>

                      <div class="box-content">
                        <div class="content">
                          <a href="#">
                            <span class="post">{{list2[9].stitle}}</span>
                          </a>
                        </div>
                      </div>
                    </div>
                  </div>
                  <span>{{list2[9].stype}}</span>
                  <br>
                  <a href="#">
                    <img :src="list2[9].simg_url" class="img-fluid img-small">
                  </a>
                  <a href="#" class="text-info">
                    <span class="font_name">{{list2[9].sname}}</span>
                  </a>
                  <a href="#" class="small_a">{{list2[9].sclick}}浏览</a>
                </div>
                <div class="demo p-0 mr-2 mb-3">
                  <div class="contain p-0">
                    <div class="box">
                      <a href="#">
                        <img :src="list2[10].img_url" alt class="img-fluid">
                      </a>

                      <div class="box-content">
                        <div class="content">
                          <span class="post">{{list2[10].stitle}}</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <span>{{list2[10].stype}}</span>
                  <br>
                  <a href="#">
                    <img :src="list2[10].simg_url" class="img-fluid img-small">
                  </a>
                  <a href="#" class="text-info">
                    <span class="font_name">{{list2[10].sname}}</span>
                  </a>
                  <a href="#" class="small_a">{{list2[10].sclick}}浏览</a>
                </div>
                <div class="demo p-0 mb-3">
                  <div class="contain p-0">
                    <div class="box">
                      <a href="#">
                        <img :src="list2[11].img_url" alt class="img-fluid">
                      </a>

                      <div class="box-content">
                        <div class="content">
                          <span class="post">{{list2[11].stitle}}</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <span>{{list2[11].stype}}</span>
                  <br>
                  <a href="#">
                    <img :src="list2[11].simg_url" class="img-fluid img-small">
                  </a>
                  <a href="#" class="text-info">
                    <span class="font_name">{{list2[11].sname}}</span>
                  </a>
                  <a href="#" class="small_a">{{list2[11].sclick}}浏览</a>
                </div>
              </div>
            </div>
          </li>
          <li>
            <div class="d-flex flex-column">
              <div class="d-flex flex-row">
                <div class="demo p-0 mr-2 mb-3">
                  <div class="contain p-0">
                    <div class="box">
                      <a href="#">
                        <img :src="list2[12].img_url" alt class="img-fluid">
                      </a>

                      <div class="box-content">
                        <div class="content">
                          <span class="post">{{list2[12].stitle}}</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <span>{{list2[12].stype}}</span>
                  <br>
                  <a href="#">
                    <img :src="list2[12].simg_url" class="img-fluid img-small">
                  </a>
                  <a href="#" class="text-info">
                    <span class="font_name">{{list2[12].sname}}</span>
                  </a>
                  <a href="#" class="small_a">{{list2[12].sclick}}浏览</a>
                </div>

                <div class="demo p-0 mr-2 mb-3">
                  <div class="contain p-0">
                    <div class="box">
                      <a href="#">
                        <img :src="list2[13].img_url" alt class="img-fluid">
                      </a>

                      <div class="box-content">
                        <div class="content">
                          <span class="post">{{list2[13].stitle}}</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <span>{{list2[13].stype}}</span>
                  <br>
                  <a href="#">
                    <img :src="list2[13].simg_url" class="img-fluid img-small">
                  </a>
                  <a href="#" class="text-info">
                    <span class="font_name">{{list2[13].sname}}</span>
                  </a>
                  <a href="#" class="small_a">{{list2[13].sclick}}浏览</a>
                </div>
                <div class="demo p-0 mb-3">
                  <div class="container p-0">
                    <div class="box">
                      <a href="#">
                        <img :src="list2[14].img_url" alt class="img-fluid">
                      </a>
                      <div class="box-content">
                        <div class="content">
                          <span class="post">{{list2[14].stitle}}</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <span>{{list2[14].stype}}</span>
                  <br>
                  <a href="#">
                    <img :src="list2[14].simg_url" class="img-fluid img-small">
                  </a>
                  <a href="#" class="text-info">
                    <span class="font_name">{{list2[14].sname}}</span>
                  </a>
                  <a href="#" class="small_a">{{list2[14].sclick}}浏览</a>
                </div>
              </div>
            </div>
            <div class="d-flex flex-row">
              <div class="demo p-0 mr-2 mb-3">
                <div class="contain p-0">
                  <div class="box">
                    <a href="#">
                      <img :src="list2[15].img_url" alt class="img-fluid">
                    </a>

                    <div class="box-content">
                      <div class="content">
                        <span class="post">{{list2[15].stitle}}</span>
                      </div>
                    </div>
                  </div>
                </div>
                <span>{{list2[15].stype}}</span>
                <br>
                <a href="#">
                  <img :src="list2[15].img_url" class="img-fluid img-small">
                </a>
                <a href="#" class="text-info">
                  <span class="font_name">{{list2[15].sname}}</span>
                </a>
                <a href="#" class="small_a">{{list2[15].sclick}}浏览</a>
              </div>
              <div class="demo p-0 mr-2 mb-3">
                <div class="contain p-0">
                  <div class="box">
                    <a href="#">
                      <img :src="list2[16].img_url" alt class="img-fluid">
                    </a>

                    <div class="box-content">
                      <div class="content">
                        <span class="post">{{list2[16].stitle}}</span>
                      </div>
                    </div>
                  </div>
                </div>
                <span>{{list2[16].stype}}</span>
                <br>
                <a href="#">
                  <img :src="list2[16].simg_url" class="img-fluid img-small">
                </a>
                <a href="#" class="text-info">
                  <span class="font_name">{{list2[16].sname}}</span>
                </a>
                <a href="#" class="small_a">{{list2[16].sclick}}浏览</a>
              </div>
              <div class="demo p-0 mb-3">
                <div class="contain p-0">
                  <div class="box">
                    <a href="#">
                      <img :src="list2[17].img_url" alt class="img-fluid">
                    </a>

                    <div class="box-content">
                      <div class="content">
                        <span class="post">{{list2[17].stitle}}</span>
                      </div>
                    </div>
                  </div>
                </div>
                <span>{{list2[17].stype}}</span>
                <br>
                <a href="#">
                  <img :src="list2[17].simg_url" class="img-fluid img-small">
                </a>
                <a href="#" class="text-info">
                  <span class="font_name">{{list2[17].sname}}</span>
                </a>
                <a href="#" class="small_a">{{list2[17].sclick}}浏览</a>
              </div>
            </div>
          </li>
        </ul>
      </div>
    </div>

    <!-- 达人玩法 -->
    <h3 class="mt-4 text-center">达人玩法</h3>
    <hr class="bg-light">
    <div class="slip clearfix bordr border-info" id="hover">
      <ul class="d-flex flex-row list-unstyled clearfix" v-if="list3.length">
        <li>
          <a href="#">
            <img
              :src="list3[0].img_url"
              class="img-fluid"
              title="<h4>从密云到承德间的旅行</h4>
                         <hr class='qww'>
                       <button style:'color:red'>查看玩法套餐</button>"
              style="width: 1294px;height: 340px; "
            >
          </a>
        </li>
        <li>
          <a href="#">
            <img
              :src="list3[1].img_url"
              class="img-fluid"
              title="<h4>从东到西游甘肃</h4>
                    <hr class='qww'>
                    <button >查看玩法套餐</button>
                    "
              style="width: 660px;height: 340px"
            >
          </a>
        </li>
        <li>
          <a href="#">
            <img
              :src="list3[2].img_url"
              class="img-fluid"
              title="<h4>蓬莱海市带你两日游遍</h4>
                    <hr class='qww'>
                    <button >查看玩法套餐</button>
                    "
              style="width: 660px;height: 340px"
            >
          </a>
        </li>
      </ul>
    </div>
    <br>

    <!-- //游记榜单 -->
    <h3 class="text-center mt-5">游记榜单</h3>
    <hr class="bg-light mb-1">
    <span class="huan2 m-0 p-0">
      <a href="javascript:" class="p-0 mb-0">换一换</a>
    </span>
    <!-- 轮播区域 -->
    <div class="slider2 clearfix m-0">
      <ul class="list-unstyled clearfix m-0" v-if="list4.length">
        <li class="d-flex flex-column clearfix">
          <div class="d-flex flex-row">
            <div class="mr-3" style="width:370px">
              <a href="#">
                <img :src="list4[0].img_url" alt class="img-fluid">
              </a>
              <h6>{{list4[0].title}}</h6>

              <p>{{list4[0].brief}}</p>
            </div>
            <div class="mr-3" style="width:370px">
              <a href="#">
                <img :src="list4[1].img_url" alt class="img-fluid">
              </a>
              <h6>{{list4[1].title}}</h6>

              <p>{{list4[1].brief}}</p>
            </div>
            <div style="width:370px">
              <a href="#">
                <img :src="list4[2].img_url" alt class="img-fluid">
              </a>
              <h6>{{list4[2].title}}</h6>

              <p>{{list4[2].brief}}</p>
            </div>
          </div>
          <div class="d-flex flex-row">
            <div class="mr-3" style="width:370px">
              <a href="#">
                <img :src="list4[3].img_url" alt class="img-fluid">
              </a>
              <h6>{{list4[3].title}}</h6>

              <p>{{list4[3].brief}}</p>
            </div>
            <div class="mr-3" style="width:370px">
              <a href="#">
                <img :src="list4[4].img_url" alt class="img-fluid">
              </a>
              <h6>{{list4[4].title}}</h6>

              <p>{{list4[4].brief}}</p>
            </div>
            <div style="width:370px">
              <a href="#">
                <img :src="list4[5].img_url" alt class="img-fluid">
              </a>
              <h6>{{list4[5].title}}</h6>

              <p>{{list4[5].brief}}</p>
            </div>
          </div>
        </li>
        <li class="clearfix">
          <div class="d-flex flex-row">
            <div class="mr-3" style="width:370px">
              <a href="#">
                <img :src="list4[6].img_url" alt class="img-fluid">
              </a>
              <h6>{{list4[6].title}}</h6>

              <p>{{list4[6].brief}}</p>
            </div>
            <div class="mr-3" style="width:370px">
              <a href="#">
                <img :src="list4[7].img_url" alt class="img-fluid">
              </a>
              <h6>{{list4[7].title}}</h6>

              <p>{{list4[7].brief}}</p>
            </div>
            <div style="width:370px">
              <a href="#">
                <img :src="list4[8].img_url" alt class="img-fluid">
              </a>
              <h6>{{list4[8].title}}</h6>

              <p>{{list4[8].brief}}</p>
            </div>
          </div>
          <div class="d-flex flex-row">
            <div class="mr-3" style="width:370px">
              <a href="#">
                <img :src="list4[9].img_url" alt class="img-fluid">
              </a>
              <h6>{{list4[9].title}}</h6>

              <p>{{list4[9].brief}}</p>
            </div>
            <div class="mr-3" style="width:370px">
              <a href="#">
                <img :src="list4[10].img_url" alt class="img-fluid">
              </a>
              <h6>{{list4[10].title}}</h6>

              <p>{{list4[10].brief}}</p>
            </div>
            <div style="width:370px">
              <a href="#">
                <img :src="list4[11].img_url" alt class="img-fluid">
              </a>
              <h6>{{list4[11].title}}</h6>

              <p>{{list4[11].brief}}</p>
            </div>
          </div>
        </li>
        <li class="clearfix">
          <div class="d-flex flex-row">
            <div class="mr-3" style="width:370px">
              <a href="#">
                <img :src="list4[12].img_url" alt class="img-fluid">
              </a>
              <h6>{{list4[12].title}}</h6>

              <p>{{list4[12].brief}}</p>
            </div>
            <div class="mr-3" style="width:370px">
              <a href="#">
                <img :src="list4[13].img_url" alt class="img-fluid">
              </a>
              <h6>{{list4[13].title}}</h6>

              <p>{{list4[13].brief}}</p>
            </div>
            <div style="width:370px">
              <a href="#">
                <img :src="list4[14].img_url" alt class="img-fluid">
              </a>
              <h6>{{list4[14].title}}</h6>

              <p>{{list4[14].brief}}</p>
            </div>
          </div>
          <div class="d-flex flex-row">
            <div class="mr-3" style="width:370px">
              <a href="#">
                <img :src="list4[15].img_url" alt class="img-fluid">
              </a>
              <h6>{{list4[15].title}}</h6>

              <p>{{list4[15].brief}}</p>
            </div>
            <div class="mr-3" style="width:370px">
              <a href="#">
                <img :src="list4[16].img_url" alt class="img-fluid">
              </a>
              <h6>{{list4[16].title}}</h6>

              <p>{{list4[16].brief}}</p>
            </div>
            <div style="width:370px">
              <a href="#">
                <img :src="list4[17].img_url" alt class="img-fluid">
              </a>
              <h6>{{list4[17].title}}</h6>

              <p>{{list4[17].brief}}</p>
            </div>
          </div>
        </li>
      </ul>
    </div>

    <!-- 热门目的地 -->
    <h3 class="text-center" style="margin-top: 800px">热门目的地</h3>
    <div class="containor" style="position: absolute">
      <!--上方导航-->
      <div class="nav_left">
        <ul class="d-flex flex-row list-unstyled nav_ul">
          <li data-id="1" id="asd">
            <span class>国内目的地</span>
          </li>
          <li data-id="2">
            <span>日本</span>
          </li>
          <li data-id="3">
            <span>东南亚</span>
          </li>
          <li data-id="4">
            <span>西亚 南亚</span>
          </li>
          <li data-id="5">
            <span>欧洲</span>
          </li>
          <li data-id="6">
            <span>澳洲</span>
          </li>
          <li data-id="7">
            <span>美洲</span>
          </li>
          <li data-id="8">
            <span>非洲</span>
          </li>
        </ul>
        <hr class="hr_g text-cente" id="hr_g" >
      </div>

      <!--下方内容-->
      <div class="nav_right">
        <div class="sub" data-id="1">
          <dl class>
            <dt>
              <a href="javascript:;">直辖市</a>
            </dt>
            <dd>
              <a href="javascript:;">北京</a>
              <a href="javascript:;">上海</a>
              <a href="javascript:;">重庆</a>
              <a href="javascript:;">天津</a>
            </dd>
          </dl>
          <dl>
            <dt>
              <a href="javascript:;">四川</a>
            </dt>
            <dd>
              <a href="javascript:;">成都</a>
              <a href="javascript:;">九寨沟</a>
              <a href="javascript:;">色达县</a>
              <a href="javascript:;">峨眉山</a>
              <a href="javascript:;">阿坝</a>
              <a href="javascript:;">都江堰</a>
              <a href="javascript:;">若尔盖草原</a>
              <a href="javascript:;">稻城亚丁</a>
            </dd>
          </dl>
          <dl>
            <dt>
              <a href="javascript:;">四川</a>
            </dt>
            <dd>
              <a href="javascript:;">成都</a>
              <a href="javascript:;">九寨沟</a>
              <a href="javascript:;">色达县</a>
              <a href="javascript:;">峨眉山</a>
              <a href="javascript:;">阿坝</a>
              <a href="javascript:;">都江堰</a>
              <a href="javascript:;">若尔盖草原</a>
              <a href="javascript:;">稻城亚丁</a>
            </dd>
          </dl>
          <dl>
            <dt>
              <a href="javascript:;">四川</a>
            </dt>
            <dd>
              <a href="javascript:;">成都</a>
              <a href="javascript:;">九寨沟</a>
              <a href="javascript:;">色达县</a>
              <a href="javascript:;">峨眉山</a>
              <a href="javascript:;">阿坝</a>
              <a href="javascript:;">都江堰</a>
              <a href="javascript:;">若尔盖草原</a>
              <a href="javascript:;">稻城亚丁</a>
            </dd>
          </dl>
          <dl>
            <dt>
              <a href="javascript:;">四川</a>
            </dt>
            <dd>
              <a href="javascript:;">成都</a>
              <a href="javascript:;">九寨沟</a>
              <a href="javascript:;">色达县</a>
              <a href="javascript:;">峨眉山</a>
              <a href="javascript:;">阿坝</a>
              <a href="javascript:;">都江堰</a>
              <a href="javascript:;">若尔盖草原</a>
              <a href="javascript:;">稻城亚丁</a>
            </dd>
          </dl>
          <dl>
            <dt>
              <a href="javascript:;">四川</a>
            </dt>
            <dd>
              <a href="javascript:;">成都</a>
              <a href="javascript:;">九寨沟</a>
              <a href="javascript:;">色达县</a>
              <a href="javascript:;">峨眉山</a>
              <a href="javascript:;">阿坝</a>
              <a href="javascript:;">都江堰</a>
              <a href="javascript:;">若尔盖草原</a>
              <a href="javascript:;">稻城亚丁</a>
            </dd>
          </dl>
          <dl>
            <dt>
              <a href="javascript:;">四川</a>
            </dt>
            <dd>
              <a href="javascript:;">成都</a>
              <a href="javascript:;">九寨沟</a>
              <a href="javascript:;">色达县</a>
              <a href="javascript:;">峨眉山</a>
              <a href="javascript:;">阿坝</a>
              <a href="javascript:;">都江堰</a>
              <a href="javascript:;">若尔盖草原</a>
              <a href="javascript:;">稻城亚丁</a>
            </dd>
          </dl>
          <dl>
            <dt>
              <a href="javascript:;">四川</a>
            </dt>
            <dd>
              <a href="javascript:;">成都</a>
              <a href="javascript:;">九寨沟</a>
              <a href="javascript:;">色达县</a>
              <a href="javascript:;">峨眉山</a>
              <a href="javascript:;">阿坝</a>
              <a href="javascript:;">都江堰</a>
              <a href="javascript:;">若尔盖草原</a>
              <a href="javascript:;">稻城亚丁</a>
            </dd>
          </dl>
        </div>

        <div class="sub hide" data-id="2">
          <dl>
            <dt>
              <a href="javascript:;">日本</a>
            </dt>
            <dd>
              <a href="javascript:;">东京</a>
              <a href="javascript:;">大阪</a>
              <a href="javascript:;">京都</a>
              <a href="javascript:;">冲绳</a>
              <a href="javascript:;">北海道</a>
              <a href="javascript:;">奈良县</a>
            </dd>
          </dl>
        </div>

        <div class="sub hide" data-id="3">
          <dl>
            <dt>
              <a href="javascript:;">泰国</a>
            </dt>
            <dd>
              <a href="javascript:;">清迈</a>
              <a href="javascript:;">曼谷</a>
              <a href="javascript:;">芭提雅</a>
              <a href="javascript:;">甲米</a>
              <a href="javascript:;">普吉</a>
            </dd>
          </dl>
          <dl>
            <dt>
              <a href="javascript:;">泰国</a>
            </dt>
            <dd>
              <a href="javascript:;">清迈</a>
              <a href="javascript:;">曼谷</a>
              <a href="javascript:;">芭提雅</a>
              <a href="javascript:;">甲米</a>
              <a href="javascript:;">普吉</a>
            </dd>
          </dl>
          <dl>
            <dt>
              <a href="javascript:;">泰国</a>
            </dt>
            <dd>
              <a href="javascript:;">清迈</a>
              <a href="javascript:;">曼谷</a>
              <a href="javascript:;">芭提雅</a>
              <a href="javascript:;">甲米</a>
              <a href="javascript:;">普吉</a>
            </dd>
          </dl>
          <dl>
            <dt>
              <a href="javascript:;">泰国</a>
            </dt>
            <dd>
              <a href="javascript:;">清迈</a>
              <a href="javascript:;">曼谷</a>
              <a href="javascript:;">芭提雅</a>
              <a href="javascript:;">甲米</a>
              <a href="javascript:;">普吉</a>
            </dd>
          </dl>
        </div>
        <div class="sub hide" data-id="4">
          <dl>
            <dt>
              <a href="javascript:;">马尔代夫</a>
            </dt>
            <dd>
              <a href="javascript:;">薇拉瓦鲁岛</a>
              <a href="javascript:;">中央格兰德岛</a>
              <a href="javascript:;">阿雅达岛</a>
              <a href="javascript:;">满月岛</a>
              <a href="javascript:;">伊露岛</a>
            </dd>
          </dl>
          <dl>
            <dt>
              <a href="javascript:;">马尔代夫</a>
            </dt>
            <dd>
              <a href="javascript:;">薇拉瓦鲁岛</a>
              <a href="javascript:;">中央格兰德岛</a>
              <a href="javascript:;">阿雅达岛</a>
              <a href="javascript:;">满月岛</a>
              <a href="javascript:;">伊露岛</a>
            </dd>
          </dl>
          <dl>
            <dt>
              <a href="javascript:;">马尔代夫</a>
            </dt>
            <dd>
              <a href="javascript:;">薇拉瓦鲁岛</a>
              <a href="javascript:;">中央格兰德岛</a>
              <a href="javascript:;">阿雅达岛</a>
              <a href="javascript:;">满月岛</a>
              <a href="javascript:;">伊露岛</a>
            </dd>
          </dl>
          <dl>
            <dt>
              <a href="javascript:;">马尔代夫</a>
            </dt>
            <dd>
              <a href="javascript:;">薇拉瓦鲁岛</a>
              <a href="javascript:;">中央格兰德岛</a>
              <a href="javascript:;">阿雅达岛</a>
              <a href="javascript:;">满月岛</a>
              <a href="javascript:;">伊露岛</a>
            </dd>
          </dl>
        </div>
        <div class="sub hide" data-id="5">
          <dl>
            <dt>
              <a href="javascript:;">意大利</a>
            </dt>
            <dd>
              <a href="javascript:;">罗马</a>
              <a href="javascript:;">威尼斯</a>
              <a href="javascript:;">佛罗伦萨</a>
              <a href="javascript:;">米兰</a>
            </dd>
          </dl>
          <dl>
            <dt>
              <a href="javascript:;">意大利</a>
            </dt>
            <dd>
              <a href="javascript:;">罗马</a>
              <a href="javascript:;">威尼斯</a>
              <a href="javascript:;">佛罗伦萨</a>
              <a href="javascript:;">米兰</a>
            </dd>
          </dl>
          <dl>
            <dt>
              <a href="javascript:;">意大利</a>
            </dt>
            <dd>
              <a href="javascript:;">罗马</a>
              <a href="javascript:;">威尼斯</a>
              <a href="javascript:;">佛罗伦萨</a>
              <a href="javascript:;">米兰</a>
            </dd>
          </dl>
          <dl>
            <dt>
              <a href="javascript:;">意大利</a>
            </dt>
            <dd>
              <a href="javascript:;">罗马</a>
              <a href="javascript:;">威尼斯</a>
              <a href="javascript:;">佛罗伦萨</a>
              <a href="javascript:;">米兰</a>
            </dd>
          </dl>
        </div>
        <div class="sub hide" data-id="6">
          <dl>
            <dt>
              <a href="javascript:;">马尔代夫</a>
            </dt>
            <dd>
              <a href="javascript:;">薇拉瓦鲁岛</a>
              <a href="javascript:;">中央格兰德岛</a>
              <a href="javascript:;">阿雅达岛</a>
              <a href="javascript:;">满月岛</a>
              <a href="javascript:;">伊露岛</a>
            </dd>
          </dl>
        </div>
        <div class="sub hide" data-id="7">
          <dl>
            <dt>
              <a href="javascript:;">
                美国
                <i>&gt;</i>
              </a>
            </dt>
            <dd>
              <a href="javascript:;">纽约</a>
              <a href="javascript:;">洛杉矶</a>
              <a href="javascript:;">夏威夷</a>
              <a href="javascript:;">西雅图</a>
              <a href="javascript:;">旧金山</a>
              <a href="javascript:;">波士顿</a>
              <a href="javascript:;">奥兰多</a>
              <a href="javascript:;">迈阿密</a>
            </dd>
          </dl>
          <dl>
            <dt>
              <a href="javascript:;">
                美国
                <i>&gt;</i>
              </a>
            </dt>
            <dd>
              <a href="javascript:;">纽约</a>
              <a href="javascript:;">洛杉矶</a>
              <a href="javascript:;">夏威夷</a>
              <a href="javascript:;">西雅图</a>
              <a href="javascript:;">旧金山</a>
              <a href="javascript:;">波士顿</a>
              <a href="javascript:;">奥兰多</a>
              <a href="javascript:;">迈阿密</a>
            </dd>
          </dl>
          <dl>
            <dt>
              <a href="javascript:;">
                美国
                <i>&gt;</i>
              </a>
            </dt>
            <dd>
              <a href="javascript:;">纽约</a>
              <a href="javascript:;">洛杉矶</a>
              <a href="javascript:;">夏威夷</a>
              <a href="javascript:;">西雅图</a>
              <a href="javascript:;">旧金山</a>
              <a href="javascript:;">波士顿</a>
              <a href="javascript:;">奥兰多</a>
              <a href="javascript:;">迈阿密</a>
            </dd>
          </dl>
        </div>
        <div class="sub hide" data-id="8">
          <dl>
            <dt>
              <a href="javascript:;">非洲其它</a>
            </dt>
            <dd>
              <a href="javascript:;">毛里求斯</a>
              <a href="javascript:;">塞舌尔</a>
              <a href="javascript:;">肯尼亚</a>
              <a href="javascript:;">马达加斯加</a>
            </dd>
          </dl>
          <dl>
            <dt>
              <a href="javascript:;">非洲其它</a>
            </dt>
            <dd>
              <a href="javascript:;">毛里求斯</a>
              <a href="javascript:;">塞舌尔</a>
              <a href="javascript:;">肯尼亚</a>
              <a href="javascript:;">马达加斯加</a>
            </dd>
          </dl>
          <dl>
            <dt>
              <a href="javascript:;">非洲其它</a>
            </dt>
            <dd>
              <a href="javascript:;">毛里求斯</a>
              <a href="javascript:;">塞舌尔</a>
              <a href="javascript:;">肯尼亚</a>
              <a href="javascript:;">马达加斯加</a>
            </dd>
          </dl>
        </div>
      </div>
    </div>
  </div>
</template>



<script>
export default {
  data() {
    return {
      list:  [],
      list1: [],
      list2: [],
      list3: [],
      list4: []
    };
  },
  created() {
    this.getMore();
    this.getMore1();
    this.getMore2();
    this.getMore3();
    this.getMore4();
  },
  methods: {
    getMore(){
      var url = "http://127.0.0.1:3000/gonglue-x";
      this.axios.get(url).then(res => {
        this.list = res.data;
        console.log(this.list)
      });
    },
    getMore1() {
      // 发送ajax请求
      var url = "http://127.0.0.1:3000/gonglue_tuijian_left";
      this.axios.get(url).then(res => {
        this.list1 = res.data;
      });
    },
    getMore2() {
      // 发送ajax请求
      var url = "http://127.0.0.1:3000/gonglue_tuijian_right";
      this.axios.get(url).then(res => {
        this.list2 = res.data;
      });
    },
    getMore3() {
      // 发送ajax请求
      var url = "http://127.0.0.1:3000/gonglue_daren";
      this.axios.get(url).then(res => {
        this.list3 = res.data;

      });
    },
    getMore4() {
      // 发送ajax请求
      var url = "http://127.0.0.1:3000/gonglue_youji";
      this.axios.get(url).then(res => {
        this.list4 = res.data;
      });
    }
  }
};


//推荐轮播
$(function() {
  var count = 0;
  //推荐轮播
  $(".huan a").click(function() {
    console.log("haun");
    count++;
    if (count == $(".slider li").length) {
      count = 0;
    }
    //让count渐渐的显示，其他兄弟渐渐的隐藏
    $(".slider  li")
      .eq(count)
      .fadeIn()
      .siblings("li")
      .fadeOut();
  });
});

//达人玩法
$(function() {
  !(function(e, t) {
    function i(t, i) {
      (this.element = t),
        (this.settings = e.extend({}, r, i)),
        (this._defaults = r),
        (this._name = o),
        (this.version = "v2.0.5"),
        this.init();
    }

    var o = "sliphover",
      r = {
        target: "img",
        caption: "title",
        duration: "fast",
        fontColor: "white",
        textAlign: "center",
        verticalMiddle: !0,
        backgroundColor: "rgba(0,0,0,.7)",
        backgroundColorAttr: null,
        reverse: !1,
        height: "100%",
        withLink: !0
      };
    (i.prototype = {
      init: function() {
        if (
          !/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(
            navigator.userAgent
          )
        ) {
          var t = this,
            i = this.settings.target;
          e(this.element)
            .off("mouseenter.sliphover", i)
            .on("mouseenter.sliphover", i, function() {
              var i = e(this),
                o = t.createContainer(i);
              o.off("mouseenter.sliphover mouseleave.sliphover").on(
                "mouseenter.sliphover mouseleave.sliphover",
                function(r) {
                  var n = t.getDirection(e(this), r);
                  if (
                    ((n = t.settings.reverse ? (n = (n + 2) % 4) : n),
                    "mouseenter" === r.type)
                  ) {
                    var s = o.find(".sliphover-overlay");
                    s.length ||
                      ((s = t.createOverlay(t, n, i)), e(this).html(s)),
                      t.slideIn(t, s);
                  } else t.removeOverlay(t, e(this), n);
                }
              );
            });
        }
      },
      createContainer: function(t) {
        var i = t.offset().top,
          o = t.offset().left,
          r = t.outerWidth(),
          n = t.outerHeight();
        var zIndex = t.css("z-index");
        var s = e("<div>", { class: "sliphover-container" }).css({
          width: r,
          height: n,
          position: "absolute",
          overflow: "hidden",
          top: i,
          left: o,
          borderRadius: t.css("border-radius"),
          zIndex: zIndex == +zIndex ? zIndex + 1 : 999
        });
        return e("body").append(s), s;
      },
      createOverlay: function(i, o, r) {
        var n, s, a, l, h, c;
        switch (o) {
          case 0:
            (s = 0), (n = "100%");
            break;
          case 1:
            (s = "100%"), (n = 0);
            break;
          case 2:
            (s = 0), (n = "-100%");
            break;
          case 3:
            (s = "-100%"), (n = 0);
            break;
          default:
            t.console.error("error when get direction of the mouse");
        }
        if (
          ((h = i.settings.verticalMiddle
            ? e("<div>")
                .css({
                  display: "table-cell",
                  verticalAlign: "middle"
                })
                .html(r.attr(i.settings.caption))
            : r.attr(i.settings.caption)),
          (c = r.parent("a")),
          c.length && i.settings.withLink)
        ) {
          var d = c.attr("href"),
            f = c.attr("target");
          a = e("<a>", {
            class: "sliphover-overlay",
            href: d || "#",
            target: f || "_self"
          }).css({ textDecoration: "none" });
        } else a = e("<div>", { class: "sliphover-overlay" });
        return (
          (l = i.settings.backgroundColorAttr
            ? r.attr(i.settings.backgroundColorAttr)
            : i.settings.backgroundColor),
          a
            .css({
              width: "100%",
              height: i.settings.height,
              position: "absolute",
              left: s,
              bottom: n,
              display: i.settings.verticalMiddle ? "table" : "inline",
              textAlign: i.settings.textAlign,
              color: i.settings.fontColor,
              backgroundColor: l
            })
            .html(h),
          a
        );
      },
      slideIn: function(e, t) {
        t.stop().animate({ left: 0, bottom: 0 }, e.settings.duration);
      },
      removeOverlay: function(e, i, o) {
        var r,
          n = i.find(".sliphover-overlay");
        switch (o) {
          case 0:
            r = { bottom: "100%", left: 0 };
            break;
          case 1:
            r = { bottom: 0, left: "100%" };
            break;
          case 2:
            r = { bottom: "-100%", left: 0 };
            break;
          case 3:
            r = { bottom: 0, left: "-100%" };
            break;
          default:
            t.console.error("error when get direction of the mouse");
        }
        n.stop().animate(r, e.settings.duration, function() {
          i.remove();
        });
      },
      getDirection: function(e, t) {
        var i = e.width(),
          o = e.height(),
          r = (t.pageX - e.offset().left - i / 2) * (i > o ? o / i : 1),
          n = (t.pageY - e.offset().top - o / 2) * (o > i ? i / o : 1),
          s =
            Math.round((Math.atan2(n, r) * (180 / Math.PI) + 180) / 90 + 3) % 4;
        return s;
      }
    }),
      (e.fn[o] = function(t) {
        return (
          this.each(function() {
            e.data(this, "plugin_" + o) ||
              e.data(this, "plugin_" + o, new i(this, t));
          }),
          this
        );
      });
  })(jQuery, window, document);

  $(document).ready(function(e) {
    $("#hover").sliphover({
      backgroundColor: "rgba(10,0,14,0.7)"
    });
  });
});
//游记轮播
$(function() {
  var count = 0;
  $(".huan2").click(function() {
    count++;
    if (count == $(".slider2 li").length) {
      count = 0;
    }
    //让count渐渐的显示，其他兄弟渐渐的隐藏
    $(".slider2 li")
      .eq(count)
      .slideUp()
      .siblings("li")
      .slideDown();
  });
});
// 热门目的地
$(function() {
  $(".nav_ul>li").mouseenter(function() {
    $(".hr_g").css("display", "");
  });
  $(".containor").mouseleave(function() {
  
  });

  $(".containor")
    .on("mouseenter", function() {
      $(".nav_right").removeClass("hide");
    })
    .on("mouseleave", function() {
      //  $(".nav_right").addClass('hide');
      //  $(".sub").addClass('hide');
    })
    .on("mouseenter", "li", function(e) {
      var li_data = $(this).attr("data-id");
      $(".sub").addClass("hide");
      $('.sub[data-id="' + li_data + '"]').removeClass("hide");
    });
});
</script>
<style scoped>
/*清除塌缩*/
.clearfix:after {
  content: "";
  display: block;
  visibility: hidden;
  height: 0;
  clear: both;
  
}

/*推荐轮播*/
.slider {
  height: 370px;
  width: 1000px;

  position: relative;
}

.slider li {
  position: absolute;
  display: none;
}

.slider li:first-child {
  display: block;
}
.huan > a {
  right: 20%;
  top: 4%;
  color: coral;
  margin-left: 1090px;
}
/* 换一换按钮 */
.huan > a:hover {
  color: green;
}

.huan2 > a {
  margin-left: 1090px;
  color: coral;
}
.huan2 > a:hover {
  color: green;
}
b {
  font-style: normal;
}

/*推荐攻略*/
.demo {
  padding: 2em 0;
  border: 1px solid lightgray;;
  position: relative;
}
.ig{
  width: 283.3px !important;
  height: 159.34px !important;
}
a {
  text-decoration: none !important;
  color: black;
}
.small_a {
  font-size: 12px !important;
  text-align: right !important;
  margin-left: 46%;
  color: gray;
   position: absolute;
   right: 0;
   bottom: 0
}


.font_name {
  font-size: 14px;
 
}
.box {
  text-align: center;
  position: relative;
  overflow: hidden;

}
.box:before,
.box:after,
.box-content:before,
.box-content:after {
  content: "";
  background: linear-gradient(transparent, black);
  opacity: 0.2 c;
  height: 100%;
  width: 25%;
  transform: translateY(-100%);
  position: absolute;
  left: 0;
  top: 0;
  z-index: 1;
  transition: all 0.3s;
}
.box:hover:before,
.box:hover:after,
.box:hover .box-content:before,
.box:hover .box-content:after {
  transform: translateY(0);
}
.box:after {
  left: 25%;
}
.box .box-content:before {
  left: 50%;
}
.box .box-content:after {
  left: 75%;
}
.box:hover:before {
  transition-delay: 0.225s;
}
.box:hover:after {
  transition-delay: 0.075s;
}
.box:hover .box-content:before {
  transition-delay: 0.15s;
}
.box:hover .box-content:after {
  transition-delay: 0s;
}
.box img {
  width: 100%;
  height: auto;
  transition: all 0.3s ease 0s;
}
.box:hover img {
  filter: grayscale(100%);
}
.box .box-content {
  width: 100%;
  height: 100%;
  position: absolute;
  bottom: 0;
  left: 0;
  transition: all 0.2s;
}
.content {
  width: 100%;
  padding: 7px 0;
  opacity: 0;
  position: absolute;
  left: 0;
  bottom: -30px;
  z-index: 2;
  transition: all 0.3s ease 0.1s;
}
.box:hover .content {
  opacity: 1;
  bottom: 5px;
}

.box .post {
  font-size: 16px;
  color: white;
  text-transform: capitalize;
  letter-spacing: 1px;
  margin-bottom: 16%;
  display: block;
}
.img-small {
  width: 26px;
  height: 26px;
  border-radius: 50%;
}
.img-small:first-child {
  color: yellow;
}
b {
  font-weight: normal;
  font-size: 10px;
}

/*达人玩法*/
.daren_span {
  bottom: 2px;
}
button {
  background-color: rgba(10, 0, 14, 0.7);
  border-radius: 10%;
  color: white;
}
.qww {
  background-color: white;
  margin-bottom: 60px;
}
h4 {
  margin-bottom: 10px;
}

/* 游记榜单 */
.slider2 {
  position: relative;
}

.slider2 li {
  position: absolute;
  display: none;
}

.slider2 li:first-child {
  display: block;
}

/*热门目的地*/
.nav_left {
  margin-left: 100px;
}
.nav_left ul li span {
  margin: 0;
  text-align: center;
  width: 120px;
  padding-right: 10px;
  padding-left: 10px;
  height: 40px;
  line-height: 50px;
  display: block;
  font-size: 18px;
  font-weight: 600;
}
.nav_left ul li span:hover {
  color: green;
}
.hr_g {
  background-color: green;
  width: 100%;
  margin-right: 110px;
  padding-top: 1px;
}
/*下方内容*/
.nav_right {
  width: 1000px;
  height: 500px;
  position: absolute;
  left: 9%;

  /*top: 1166px;*/
}

.sub {
  position: relative;
  overflow: hidden;
  width: 100%;
  height: 480px;
  background: #ffffff;
  padding: 10px 0px;
}

.sub dl {
  overflow: hidden;
  padding: 0px 0px 10px 0px;
}

.sub dt {
  width: 100px;
  float: left;
  display: block;
  position: relative;
  clear: left;
}

.sub dt a {
  font-size: 18px;
  color: #000;
  font-weight: bold;
  text-align: center;
  padding-left: 20px;
  text-decoration: none;
  cursor: pointer;
  font-weight: 600;
}

.sub dd {
  width: 680px;
  float: left;
  display: block;
  position: relative;
  overflow: hidden;
  padding-right: 20px;
  border-bottom: 1px dashed #e3e3e3;
}

.sub dd a {
  font-size: 14px;
  float: left;
  color: #666;
  padding: 0 6px;

  text-decoration: none;
  cursor: pointer;
  border-left: 1px solid #e3e3e3;
}

.sub dd a:hover {
  color: #ff0036;
}

.hide {
  display: none;
}

.show {
  display: block;
}
</style>