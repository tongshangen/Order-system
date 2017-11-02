<template>
	
    <div id="menu-footer">
        <div class="cart">
            <span class="cart_span" @click="foodlist_append">0</span>
        </div>
        <div class="money">
        <p>￥0</p> 
        </div>
        <div class="r_cart" @click="rc_cart">
        <p>确认菜单</p>
        </div>

        <!--列表-->
        <div class="foodlist">
            <p class="verify">已选菜单</p>
            <ul class="foodlist_ul">
            <!-- ............ -->
                <li v-if="datagoods.length>0">
                    <div class="img" >
                    <img :src="value.src"  alt="" />
                    </div>

                    <div class="centent">
                        <h2>{{value.name}} <span style="opacity: 0"></span> </h2>
                        <p class="des">{{value.datails}}</p>
                        <div class="boxx">
                        <p class="dex">￥<span>{{value.price}}</span>
                            <span> X <b style="font-weight: 200">1</b></span>
                            <p style="display: none">197</p>
                        </p>
                        <div class="butBox">
                        </div>
                        </div>
                    </div>
                </li>
            <!-- ............. -->
            </ul>
        </div>
        
    </div>
   
</template>

<script type="text/javascript">
    import './menu_footer.scss'
    import http from '../../utils/httpClient.js'

    var socket = io.connect('ws://localhost:777');
    
    export default{
        data: function(){
            return {
                datagoods: [],
                idx: []
            }
        },
        methods:{
            foodlist_append: function(){
                
                var foodlist = $('.foodlist');
                if(foodlist.height() == 0){
                    foodlist.css('height','9.3333rem');
                    foodlist.css('top','-9.3333rem');
                   	$('#zhezhao').show();
                   
                }
                else{
                   foodlist.css('height','0rem');
                    foodlist.css('top','0rem');
                  	$('#zhezhao').hide();
                }
            },
            // 点击确认菜单传输数据保存到数据库
            rc_cart: function(){
                var idx = '88桌';
                var name = [];
                var price = [];
                var number = [];
                var allprice = [];
                var url = [];

                console.log($('.foodlist_ul li'))
                $('.foodlist_ul li').map(function(idx,item){

                    name.push($(item).find('h2').text().match(/\D*/));
                    price.push($(item).find('.dex span').eq(0).text());
                    number.push($(item).find('.dex span b').text());
                    allprice.push($(item).find('.dex p').text());
                    url.push($(item).find('.img img').attr('src'));

                })
                
                http.post({
                    url: "menuadd", vm: this, params: {'idx': idx, 'name': name, 'price': price , 'number': number, 'allprice': allprice, 'url': url }}).then(res => {
                    self.datagrid = res.data;
                    console.log(res.data)
                })
                    // 
                // var arrs = [];
                // console.log(66)
                // for(var i=0; i<$('.foodlist ul li').length; i++){
                //     var idx = $('.foodlist ul li').eq(i).find('h2 span').html();
                //     this.idx.push(idx);
                // }
                // socket.emit('menu_cd',this.idx);
                
                // 存入购物车
                // console.log(this.$parent.$el)
                // console.log(this.$parent.$children[2].idx)
                
            }
        },
        mounted: function(){
            // var self = this;
            // http.post({
            //     url: "select"
            // ,vm:this}).then(res => {
            //     self.datagrid = res.data;
            //     console.log(res.data)
            // })

            // 点击加入菜单重新价格计算addnum
                // var foot_money = 0;
                // for(var i=0; i<$('.foodlist_ul li').length ; i++){
                //     var foodlist_money = $('.foodlist_ul li').eq(i);
                //     foodlist_money.find('.dex p').html(foodlist_money.find('.dex span').eq(0).html()*foodlist_money.find('.dex span').eq(1).find('b').html())
                //     foot_money += Number(foodlist_money.find('.dex p').html());
                // }
                // $('#menu-footer .money p').html('￥'+foot_money)

            
        }
        
    }
</script>