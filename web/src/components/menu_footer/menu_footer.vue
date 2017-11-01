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
        	<ul class="foodlist_ul">
        		
        	</ul>
        </div>
        
    </div>
</template>

<script type="text/javascript">
    import './menu_footer.scss'
    export default{
    }
</script>