import './menu_main.scss'
import http from '../../utils/httpClient.js'
import loading from '../loading/loading.vue'

// 点击确认菜单
$('#menu_footer .r_cart').mousedown(function(){
    $(this).css('background', '#26c472')
    console.log(54)
})
$('#menu_footer .r_cart').mouseup(function(){
    $(this).css('background', '#fff')

})

export default {
    data: function(){
        return {
            datagrid: [],
            ALalert: {
                src: '',
                h3: '',
                p: ''   
            },
            loadingShow: false,
            ids: [],
            val: 0
            // addMenu: {
            //     name: '',
            //     src: '',
            //     count: '',
            //     price: '',
            //     Znumber: '08'
            // }
        }
    },
    methods: {
        // 加号按钮
        on: function(e){
            // 阻止浏览器默认行为index
            e.stopPropagation();
            // id
            var car_idx = $(e.target).closest('.gai').index();
            // 判断加减
            if($(e.target).index() > 0){
                // 购物车相同物品减一
                // 减
                if($(e.target).prev().val() == 1){
                    $(`.foodlist_ul .num${car_idx}`).closest('li').remove();
                }
                if($(e.target).prev().val() > 0){
                $(e.target).prev().val(Number($(e.target).prev().val())-1)
                // 数字减一
                var numB = $('.cart .cart_span').html();
                $('.cart .cart_span').html(Number(numB)-1);
                $(`.foodlist_ul .num${car_idx} b`).html(Number($(`.foodlist_ul .num${car_idx} b`).html())-1)
                }
            }else{
                
                var panduan = this.ids.indexOf(car_idx);
                //点击加号按钮，复制当前信息到购物车
                var li = $(e.target).closest('li');
                var copy_li=li.clone();
                var ul = $('.foodlist_ul');
                ul.append(copy_li);
                // 购物车已有li数量 元素生成
                this.ids.push(car_idx)
                var lis = ul.find('li').length;
                ul.find('h2').eq(lis-1).append($(`<span style="opacity: 0">${car_idx}</span>`));
                // x1
                ul.find('.dex').eq(lis-1).append($(`<span class="num${car_idx}"> X <b style="font-weight: 200">1</b></span><p style="display: none" class="addnum${car_idx}"></p>`))
                
                // 删除不需要元素
                $('.foodlist_ul .glyphicon').remove();
                $('.foodlist_ul #food_num').remove();
                // 相同物品加1并删除最后生成的li
                if(panduan > -1){
                    // 已存在删除最后生成元素
                    $('.foodlist_ul li').last().remove();
                    // 物品数量加一
                    // var ulnum =  $(`.foodlist_ul .num${car_idx}`)
                    $(`.foodlist_ul .num${car_idx} b`).html(Number($(`.foodlist_ul .num${car_idx} b`).html())+1)
                }
                // 加
                $(e.target).next().val(Number($(e.target).next().val())+1)
                // 加入购物车效果
                var h = parseInt($(e.target).closest('li').innerHeight());
                var setW = parseInt($(e.target).innerWidth());
                // w10%
                var x = e.clientX-innerWidth/10-setW*2;
                var y = innerHeight-e.clientY-h/2;
                // 购物车速度
                var speed = 1000;

                $(e.target).append(
                    $(e.target).clone().css({'z-index': 9})
                    .animate({top:-h/2, left:-setW*3}, speed/2, function(){
                        $(this).animate({top: y, left: -x}, speed, function(){
                            $(this).remove()
                            // 数字加一
                            var numB = $('.cart .cart_span').html();
                            $('.cart .cart_span').html(Number(numB)+1);
                            
                        })
                    })
                )

            }

            // 点击加减直接重新价格计算addnum
            var foot_money = 0;
            for(var i=0; i<$('.foodlist_ul li').length ; i++){
                var foodlist_money = $('.foodlist_ul li').eq(i);
                foodlist_money.find('.dex p').html(foodlist_money.find('.dex span').eq(0).html()*foodlist_money.find('.dex span').eq(1).find('b').html())
                foot_money += Number(foodlist_money.find('.dex p').html());
            }
            $('#menu-footer .money p').html('￥'+foot_money)
        },
        // 弹窗出现
        li_alert: function(e){
            $('.AL').fadeIn()
            // 获取弹窗信息
            var arr = this.datagrid[$(e.target).closest('.gai').index()];
            this.val = $(e.target).closest('.gai').index();
            this.ALalert.src = arr.src;
            this.ALalert.h3 = arr.name;
            this.ALalert.p = arr.detailedness;
        },
        // 加入菜单弹窗关闭
        addMenu: function(){
            $('.AL').fadeOut();
            // 数字加一
            var numB = $('.cart .cart_span').html();
            $('.cart .cart_span').html(Number(numB)+1);
            var car_idx = this.val;
            var panduan = this.ids.indexOf(car_idx);
            if(panduan > -1){
                $(`.foodlist_ul .num${car_idx} b`).html(Number($(`.foodlist_ul .num${car_idx} b`).html())+1)
            }else{
                //点击加号按钮，复制当前信息到购物车
                var li = $('.gai').eq(car_idx).find('li');
                var copy_li=li.clone();
                var ul = $('.foodlist_ul');
                ul.append(copy_li);
                // 购物车已有li数量 元素生成
                this.ids.push(car_idx)
                var lis = ul.find('li').length;
                ul.find('h2').eq(lis-1).append($(`<span style="opacity: 0">${car_idx}</span>`));
                // x1
                ul.find('.dex').eq(lis-1).append($(`<span class="num${car_idx}"> X <b style="font-weight: 200">1</b></span><p style="display: none" class="addnum${car_idx}"></p>`))
                
                // 删除不需要元素
                $('.foodlist_ul .glyphicon').remove();
                $('.foodlist_ul #food_num').remove();
            }
            // 点击加入菜单重新价格计算addnum
            var foot_money = 0;
            for(var i=0; i<$('.foodlist_ul li').length ; i++){
                var foodlist_money = $('.foodlist_ul li').eq(i);
                foodlist_money.find('.dex p').html(foodlist_money.find('.dex span').eq(0).html()*foodlist_money.find('.dex span').eq(1).find('b').html())
                foot_money += Number(foodlist_money.find('.dex p').html());
            }
            $('#menu-footer .money p').html('￥'+foot_money)
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
        ,vm:this}).then(res => {
            self.datagrid = res.data;
        })
    },
    components: {
		loading
	}

}