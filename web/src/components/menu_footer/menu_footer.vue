<template>
	
    <div id="menu-footer">
        <div class="cart">
            <span class="cart_span" @click="foodlist_append">0</span>
        </div>
        <div class="money">
        <p>￥0</p> 
        </div>
        <div class="r_cart">
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
            }
        },
        methods:{
            foodlist_append: function(){
                
                var foodlist = $('.foodlist');
                if(foodlist.height() == 0){
                    foodlist.css('height','9.3333rem');
                    foodlist.css('top','-9.3333rem');
                   	$('#zhezhao').show();
                   	console.log($('#zhezhao'))
                   
                }
                else{
                   foodlist.css('height','0rem');
                    foodlist.css('top','0rem');
                  	$('#zhezhao').hide();
                }
            }
        }
    }
</script>