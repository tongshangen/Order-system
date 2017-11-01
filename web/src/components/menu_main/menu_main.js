import './menu_main.scss'
import http from '../../utils/httpClient.js'


export default {
    data: function(){
        return {
            datagrid: [],
            ALalert: {
                src: '',
                h3: '',
                p: ''
            }
        }
    },
    methods: {
        // 加号按钮
        on: function(e){
            // 阻止浏览器默认行为index
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
                        // 数字加一
                        var numB = $('.cart .cart_span').html();
                        $('.cart .cart_span').html(Number(numB)+1);

                        //点击加号按钮，复制当前信息到购物车
                        var li = $(e.target).parent().parent().parent();
                        var copy_li=li.clone();
                        var ul = $('.foodlist_ul');         
                        ul.append(copy_li);
                        $('.foodlist_ul .glyphicon').remove();
                    })
                })


            )
        },
        // 弹窗出现
        li_alert: function(e){
            $('.AL').fadeIn()
            // 获取弹窗信息
            var arr = this.datagrid[$(e.target).closest('.gai').index()];
            this.ALalert.src = arr.src;
            this.ALalert.h3 = arr.name;
            this.ALalert.p = arr.detailedness;
        },
        // 加入菜单弹窗关闭
        addMenu: function(){
            $('.AL').fadeOut();

        },
        // 点击遮罩退出
        assmoMenu: function(){
            $('.AL').fadeOut()
        },
        // 点击nav变色
        menu_leftNav: function(ev){
           $('#menu_left li i').css('color','#EFBC0F')
           $('#menu_left li a').css('color','#EFBC0F')
           $(ev.target).closest('li').find('i').css('color','#fff')
           $(ev.target).closest('li').find('a').css('color','#fff')
        }
    },
    mounted: function(){
        $('#menu_left li').eq(0).find('i').css('color','#fff')
        $('#menu_left li').eq(0).find('a').css('color','#fff')

        var self = this;
        http.post({
            url: "select"
        }).then(res => {
            self.datagrid = res.data;
            console.log(res.data)
        })
    }
}