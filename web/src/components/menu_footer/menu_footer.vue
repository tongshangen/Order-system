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
            <p class="Cdata"></p>
            <p class="verify">已选菜单<span>0</span></p>
            <ul class="foodlist_ul">
            <!-- ............ -->
                <li v-if="datagoods.name.length>0" v-for="index in idx">
                    <div class="img" >
                    <img :src="datagoods.url.split(',')[index-1]"  alt="" />
                    </div>

                    <div class="centent">
                        <h2>{{datagoods.name.split(',')[index-1]}} <span style="opacity: 0">{{datagoods.h2id.split(',')[index-1]}}</span> </h2>
                        <p class="des">由米其林五星大厨出品
                        </p>
                        <div class="boxx">
                        <p class="dex">
                            ￥<span>
                            {{datagoods.price.split(',')[index-1]}}
                            </span>
                            <span> X
                            <b style="font-weight: 200">{{datagoods.number.split(',')[index-1]}}
                            </b>
                            </span>
                            <p style="display: none" class="ALLmoney">{{datagoods.allprice.split(',')[index-1]}}
                            </p>
                        </p>
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
                idx: [],

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
                var idx = '88';
                var name = [];
                var price = [];
                var number = [];
                var allprice = [];
                var url = [];
                var h2id = [];

                if($('.verify span').html() == '0'){
                    $('.verify span').html('1')
                }else{

                }
                $('.foodlist_ul li').map(function(idx,item){

                    name.push($(item).find('h2').text().match(/\D*/));
                    price.push($(item).find('.dex span').eq(0).text());
                    number.push($(item).find('.dex span b').text());
                    allprice.push($(item).find('.dex p').text());
                    url.push($(item).find('.img img').attr('src'));
                    h2id.push($(item).find('h2 span').html())
                })

                http.post({
                    url: "menuadd", vm: this, params: {'idx': idx, 'name': name, 'price': price , 'number': number, 'allprice': allprice, 'url': url , 'h2id': h2id}}).then(res => {
                    self.datagrid = res.data;
                    console.log(res.data)
                })
                    // socketio
				var order_obj = {'idx': idx, 'name': name, 'price': price , 'number': number, 'allprice': allprice, 'url': url }
				 console.log(order_obj);

               
                socket.emit('menu_cd',order_obj);
                
                
            }
        },
        mounted: function(){
            var self = this;
            console.log(this)
            http.post({
                url: "menuSelect"
            ,vm:this}).then(res => {
                self.datagoods = res.data[0];
                console.log(self.datagoods)
                self.idx = res.data[0].name.split(',').length;
            })

            
        },
        updated: function(){
            // 点击加减直接重新价格计算addnum
            var foot_money = 0;
            var Num = 0;
            for(var i=0; i<$('.foodlist_ul li').length ; i++){
                foot_money += Number($('.foodlist_ul li .dex').eq(i).next().html());
            }
            this.datagoods.number.split(',').map(item=>{
                Num += Number(item)
            })
            $('#menu-footer .cart_span').html(Num)
            $('#menu-footer .money p').html('￥'+foot_money)
        }
        
    }
</script>