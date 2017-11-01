import './menu_main.scss'
import http from '../../utils/httpClient.js'

export default {
    data: function(){
        return {
            datagrid: []
        }
    },
    methods: {
        // 加号按钮
        on: function(e){
            // 阻止浏览器默认行为
            e.stopPropagation();
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
        },
        // 弹窗出现
        li_alert: function(){
            $('.AL').fadeIn()
        },
        // 弹窗关闭
        addMenu: function(){
            $('.AL').fadeOut()
        },
        // 点击遮罩退出
        assmoMenu: function(){
            $('.AL').fadeOut()
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