<template>
    <div id="menu_left" >
        <ul @mousemove="on">
            <li>
                <i class="iconfont icon-iconyuanquanzhuanqu13"></i>
                <a href="#">中餐</a>
            </li>
            <li>
                <i class="iconfont icon-xican"></i><a href="#">西餐</a>
            </li>
            <li>
                <i class="iconfont icon-shaokao"></i><a href="#">烧烤</a>
            </li>
            <li>
                <i class="iconfont icon-xiaochi"></i><a href="#">小吃</a>
            </li>
            <li>
                <i class="iconfont icon-tiandian"></i><a href="#">甜品</a>
            </li>
            <li>
                <i class="iconfont icon-yinliao"></i><a href="#">饮料</a>
            </li>
            <li>
                <i class="iconfont icon-yinliao"></i><a href="#">饮料2</a>
            </li>
            <li>
                <i class="iconfont icon-yinliao"></i><a href="#">饮料3</a>
            </li>
            <li>
                <i class="iconfont icon-yinliao"></i><a href="#">饮料4</a>
            </li>
        </ul>
    </div>

</template>

<script type="text/javascript">
    import './menu_left.scss'

    $(window).mousemove(function(){
        var tp = $('#menu_left').outerHeight()-$('body').outerHeight()
        // if( $('#menu_left').outerHeight()  )
        console.log(tp)
        // if($('#menu_left').css('top') >= tp ){
        //     $('#menu_left').css('top':tp)
        // }
    })

    export default{
        methods: {
            on: function(e){
                console.log(e.clientY)

            }
        }
    }
</script>