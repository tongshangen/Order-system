<template>
    <div class="hear_cont">
        <div id="menu_header">
            <router-link to="/"><i class="glyphicon glyphicon-chevron-left"></i></router-link>
            <h1>1986西餐厅</h1>
            <b class="glyphicon glyphicon-menu-hamburger"></b>
            <input type="text" placeholder="搜索菜品" @blur="search" class="search_msg"/>
        </div>
    </div>
</template>


<script type="text/javascript">
    import './menu_header.scss'
    export default{
    	methods:{
    		search:function(){
    			var menu_datagrid = $('#menu_datagrid');
    			var menu_top = menu_datagrid.offset().top;
    			
    			var search_msg = $('.search_msg').val();
    			var food_name = $('.food_name');
    			var arr = [];
    			food_name.map(function(idx,item){
    				
    				if(item.innerHTML==search_msg){
    					arr.push(item); 					
    				}
    			})
    			var top = $(arr[0]).offset().top-menu_top;
    			$('#menu_datagrid').animate({scrollTop:top},1000);
    		}
    	}
    }
</script>