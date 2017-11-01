<template>
    <div class="cont">
    <!-- nav -->
    <div id="menu_left" >
        <ul @click="menu_leftNav">
            <li>
                <a href="#0">
                <i class="iconfont icon-yinliao"></i><a>热销</a>
                </a>
            </li>
            <li>
                <a href="#5">
                <i class="iconfont icon-yinliao"></i><a>优惠</a>
                </a>
            </li>
            <li>
                <a href="#10">
                <i class="iconfont icon-iconyuanquanzhuanqu13"></i>
                <a>中餐</a></a>
            </li>
            <li>
                <a href="#15">
                <i class="iconfont icon-xican"></i><a>西餐</a></a>
            </li>
            <li>
                <a href="#20">
                <i class="iconfont icon-shaokao"></i><a href="#20">烧烤</a></a>
            </li>
            <li>
                <a href="#25">
                <i class="iconfont icon-xiaochi"></i><a href="#25">小吃</a></a>
            </li>
            <li>
                <a href="#30">
                <i class="iconfont icon-tiandian"></i><a href="#30">甜品</a></a>
            </li>
            <li>
                <a href="#35">
                <i class="iconfont icon-yinliao"></i><a href="#35">饮料</a></a>
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
            <li @click="li_alert">
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
    <!-- 弹窗 -->
    <div class="AL" >
    <div class="shade" @click="assmoMenu"></div>
    <div class="alert">
        <img src="../../img/022.jpg" height="640" width="1024" alt="" />
        <div class="cctext">
            <h3>富士山慕斯</h3>
            <p>由奶油，巧克力，加融合卡融合而成,经过魔法加持，服用后血量回复百分之80%</p>
            <div class="cctext_bottom">
            <input type="text" placeholder="用餐备注"/>
            <span @click="addMenu">加入菜单</span>
            </div>
        </div>
    </div>
    </div>
    </div>
</template>
<!-- 
<script type="text/javascript">

    import './menu_main.scss'
    import './menu_main.js'
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
                var h = parseInt($(e.target).closest('li').innerHeight());
                var setW = parseInt($(e.target).innerWidth());
                // w10%
                var x = e.clientX-innerWidth/10-setW*2;
                var y = innerHeight-e.clientY-h/2;
                // 购物车速度
                var speed = 1000;

                $(e.target).after(
                    $(e.target).clone().css({'left': setW, 'z-index': 9}).animate({top:-h/2, left:-setW*3}, speed/2, function(){
                        $(this).animate({top: y, left: -x}, speed, function(){
                            $(this).remove()
                        })
                    })
                )
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
</script> -->
<script type="text/javascript" src="./menu_main.js"></script>