<template>
    <div class="cont">
    
    <!-- nav -->
    <div id="menu_left" >
        <ul @click="menu_leftNav">
            <li>
                <a @click="tiaozhuan" >
                <i class="iconfont icon-yinliao"></i><a>热销</a>
                </a>
            </li>
            <li>
                <a @click="tiaozhuan" >
                <i class="iconfont icon-yinliao"></i><a>优惠</a>
                </a>
            </li>
            <li>
                <a @click="tiaozhuan" >
                <i class="iconfont icon-iconyuanquanzhuanqu13"></i>
                <a>中餐</a></a>
            </li>
            <li>
                <a @click="tiaozhuan" >
                <i class="iconfont icon-xican"></i><a>西餐</a></a>
            </li>
            <li>
                <a @click="tiaozhuan" >
                <i class="iconfont icon-shaokao"></i><a>烧烤</a></a>
            </li>
            <li>
                <a @click="tiaozhuan" >
                <i class="iconfont icon-xiaochi"></i><a>小吃</a></a>
            </li>
            <li>
                <a @click="tiaozhuan" >
                <i class="iconfont icon-tiandian"></i><a>甜品</a></a>
            </li>
            <li>
                <a @click="tiaozhuan" >
                <i class="iconfont icon-yinliao"></i><a>饮料</a></a>
            </li>
        </ul>
    </div>
    <!-- 内容 -->
    <div id="menu_datagrid">

        <div class="gai" v-for="(value, index) in datagrid" >
            
        <div class="page"  v-if="index%5 == 0" :id="index">
            <i></i>
            <p class="type">{{value.intro}}</p>
        </div>
        <ul>
            <li @click="li_alert">
                <div class="img" >
                <img :src="value.src"  alt="" />
                </div>

                <div class="centent">
                    <h2 class="food_name">{{value.name}}</h2>
                    <p class="des">{{value.datails}}</p>
                    <div class="boxx">
                    <p class="dex">￥<span>{{value.price}}</span></p>
                    <div class="butBox">
                    <i class="glyphicon glyphicon-plus-sign" @click="on"></i>
                    <input type="text" name="food_num" id="food_num" value="0" />
                    <i class="glyphicon glyphicon-minus-sign" @click="on"></i>
                    </div>
                    </div>
                </div>
            </li>
        </ul>
        </div>
        <div id="zhezhao"></div>
        <loading v-show="loadingShow"></loading>
    </div>
    <!-- 弹窗 -->
    <div class="AL" >
        <div class="shade" @click="assmoMenu"></div>
            <div class="alert">
                <img :src="ALalert.src" height="640" width="1024" alt="" />
                <div class="cctext">
                    <h3>{{ALalert.h3}}</h3>
                    <p>{{ALalert.p}}</p>
                    <div class="cctext_bottom">
                    <input type="text" placeholder="用餐备注"/>
                    <span @click="addMenu">加入菜单</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</template>
<script type="text/javascript" src="./menu_main.js"></script>
