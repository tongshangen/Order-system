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
    import './menu_footer.scss';
    import http from '../../utils/httpClient.js';
    import router from '../../router/';
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
                if($('.foodlist_ul li').length < 0){
                    return false;
                }
                var idx = '88';
                var name = [];
                var price = [];
                var number = [];
                var allprice = [];
                var url = [];
                var h2id = [];
                var order_obj ={};
                
                if($('.verify span').html() == '0'){
                    order_obj = {'idx': idx, 'name': name , 'number': number}
                    $('.verify span').html('1')
                    socket.emit('menu_cd',order_obj);
                    
                }else{
                    if($('.Cdata').html() != ''){
                        var Cdataarr = $('.Cdata').html().slice(0,-1).split(',')
                        var dsa = [];
                        var nb = [];
                        var nm = [];
                        for(var i=0; i<Cdataarr.length; i++){
                            if(dsa.indexOf(Cdataarr[i].split('-')[0]) <0){
                                dsa.push(Cdataarr[i].split('-')[0]);
                                nb.push('1')
                                nm.push(Cdataarr[i].split('-')[1])
                            }else{
                                var start = dsa.indexOf(Cdataarr[i].split('-')[0])
                                nb.splice(start,1,(Number(nb[start])+1))
                            }
                        }

                        order_obj = {'idx': idx, 'name': nm , 'number': nb}
                        // 删除原有数据
                        http.post({
                            url: "del", vm: this, params: {'idx': idx}}).then(res => {

                        })
                        $('.Cdata').html('')
                        socket.emit('menu_cd',order_obj);
                    }else {
                        router.push({name:'home'})
                        return false;
                    }
                }
                $('.foodlist_ul li').map(function(idx,item){

                    name.push($(item).find('h2').text().match(/\D*/));
                    price.push($(item).find('.dex span').eq(0).text());
                    number.push($(item).find('.dex span b').text());
                    allprice.push($(item).find('.ALLmoney').text());
                    url.push($(item).find('.img img').attr('src'));
                    h2id.push($(item).find('h2 span').html())
                })


                http.post({
                    url: "menuadd", vm: this, params: {'idx': idx, 'name': name, 'price': price , 'number': number, 'allprice': allprice, 'url': url , 'h2id': h2id}}).then(res => {
                    self.datagrid = res.data;
                })
               router.push({name:'home'})
                
            }
        },
        mounted: function(){
            var self = this;
            console.log(this)
            http.post({
                url: "menuSelect"
            ,vm:this}).then(res => {
                self.datagoods = res.data[0];
                if(res.data[0] != undefined){
                    self.idx = res.data[0].name.split(',').length;
                    $('.verify span').html('1');
                }
            })

            
        },
        updated: function(){
            // 点击加减直接重新价格计算addnum
            var foot_money = 0;
            var Num = 0;
            for(var i=0; i<$('.foodlist_ul li').length ; i++){
                foot_money += Number($('.foodlist_ul li').eq(i).find('.ALLmoney').html());
            }
            this.datagoods.number.split(',').map(item=>{
                Num += Number(item)
            })
            $('#menu-footer .cart_span').html(Num)
            $('#menu-footer .money p').html('￥'+foot_money)
        }
        
    }
</script>