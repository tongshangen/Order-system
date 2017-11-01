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
                
            </ul>
        </div>
    </div>
</template>

<script type="text/javascript">
    import './menu_footer.scss'
    export default{
        data: function(){
            return {
                idx: []
            }
        },
        methods:{
            foodlist_append: function(){
                
                var foodlist = $('.foodlist');
                if(foodlist.css('opacity') == 0){
                    foodlist.css('opacity','1');
                }
                else{
                    foodlist.css('opacity','0');
                }
            },
            // 点击确认菜单传输数据
            rc_cart: function(){
                var arrs = [];
                console.log(66)
                for(var i=0; i<$('.foodlist ul li').length; i++){
                    var idx = $('.foodlist ul li').eq(i).find('h2 span').html();
                    this.idx.push(idx);
                }
                // 存入购物车
                console.log(this.idx)
                console.log(this.$parent.$children[2].idx)
                
            }
        }
    }
</script>