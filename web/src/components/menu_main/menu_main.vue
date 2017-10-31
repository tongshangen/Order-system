<template>
    <div class="cont">
    <!-- nav -->
    <div id="menu_left" >
        <ul>
            <li>
                <i class="iconfont icon-yinliao"></i><a href="#0">热销</a>
            </li>
            <li>
                <i class="iconfont icon-yinliao"></i><a href="#5">优惠</a>
            </li>
            <li>
                <i class="iconfont icon-iconyuanquanzhuanqu13"></i>
                <a href="#10">中餐</a>
            </li>
            <li>
                <i class="iconfont icon-xican"></i><a href="#15">西餐</a>
            </li>
            <li>
                <i class="iconfont icon-shaokao"></i><a href="#20">烧烤</a>
            </li>
            <li>
                <i class="iconfont icon-xiaochi"></i><a href="#25">小吃</a>
            </li>
            <li>
                <i class="iconfont icon-tiandian"></i><a href="#30">甜品</a>
            </li>
            <li>
                <i class="iconfont icon-yinliao"></i><a href="#35">饮料</a>
            </li>
        </ul>
    </div>
    <!-- 内容 -->
    <div id="menu_datagrid">
        <div class="gai" v-for="(value, index) in datagrid" >
            
        <div class="page"  v-if="index%5 == 0" :id="index">
            <i></i>
            <p>{{value.intro}}</p>
        </div>
        <ul>
            <li>
                <div class="img" >
                <img :src="value.src"  alt="" />
                </div>

                <div class="centent">
                    <h2>{{value.name}}</h2>
                    <p class="des">{{value.datails}}</p>
                    <div>
                    <p class="dex">￥<span>{{value.price}}</span></p>
                    <i class="glyphicon glyphicon-plus-sign" @click="on"></i>
                    </div>
                </div>
            </li>
        </ul>
        </div>
    </div>
    </div>
</template>

<script type="text/javascript">

    import './menu_main.scss'
    import http from '../../utils/httpClient.js'

    export default {
        data: function(){
            return {
                datagrid: []
            }
        },
        methods: {
            on: function(e){
                // 加入购物车效果
                // $(e.target).
                // 数字加一
                var numB = $('.cart .cart_span').html();
                $('.cart .cart_span').html(Number(numB)+1);
            }
        },
        mounted: function(){
            var self = this;
            http.post({
                url: "select"
            }).then(res => {
                self.datagrid = res.data;
                console.log(res.data)
            })
        }
    }
</script>