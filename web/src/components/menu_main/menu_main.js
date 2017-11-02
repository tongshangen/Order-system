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
            val: 0,
            CdataName: [],
            jisuan: function(){
                var foot_money = 0;
                
                for(var i=0; i<$('.foodlist_ul li').length ; i++){
                    var foodlist_money = $('.foodlist_ul li').eq(i);
                    foodlist_money.find('.dex p').html(foodlist_money.find('.dex span').eq(0).html()*foodlist_money.find('.dex span').eq(1).find('b').html())
                    foot_money += Number(foodlist_money.find('.ALLmoney').html());
                }
                $('#menu-footer .money p').html('￥'+Number(foot_money))
            },
            htmlST: function(){
                //点击加号按钮，复制当前信息到购物车
                var car_idx = this.val;
                var li = $('.gai').eq(car_idx).find('li');
                var copy_li=li.clone();
                var ul = $('.foodlist_ul');
                ul.append(copy_li);
                // 购物车已有li数量 元素生成
                this.ids.push(car_idx)
                var lis = ul.find('li').length;
                ul.find('h2').eq(lis-1).append($(`<span style="opacity: 0">${car_idx}</span>`));
                // x1
                ul.find('.dex').eq(lis-1).append($(`<span class="num${car_idx}"> X <b style="font-weight: 200">1</b></span><p style="display: none" class="ALLmoney"></p>`))
                
                // 删除不需要元素
                $('.foodlist_ul .glyphicon').remove();
                $('.foodlist_ul #food_num').remove();
            }
        }
    },
    methods: {
        // 加号按钮
        on: function(e){
            // 阻止浏览器默认行为index
            e.stopPropagation();
            // id
            var car_idx = $(e.target).closest('.gai').index();
            this.val = $(e.target).closest('.gai').index();
            // 是否已有数据存在-存在
            if($('.verify span').html() == '1' && $(e.target)[0] == $(e.target).parent().find('i').eq(0)[0] ){
                this.CdataName.push(this.val+'-'+$(e.target).closest('.centent').find('h2').text())
                $('.Cdata').html(this.CdataName+',')
                console.log($('.Cdata').html())
            }
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
                this.htmlST();
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
            this.jisuan();
            
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
            // input加一
            var iput = $('#menu_datagrid .gai').eq(this.val).find('input');
            iput.val(Number(iput.val())+1);
            if(panduan > -1){
                $(`.foodlist_ul .num${car_idx} b`).html(Number($(`.foodlist_ul .num${car_idx} b`).html())+1)
                
            }else{
                this.htmlST();
            }
            this.jisuan();
        },
        // 点击遮罩退出
        assmoMenu: function(){
            $('.AL').fadeOut()
        },
        // 点击nav变色
        menu_leftNav: function(ev){
            console.log($(ev.target).closest('li').index())
           $('#menu_left li i').css('color','#EFBC0F')
           $('#menu_left li a').css('color','#EFBC0F')
           $(ev.target).closest('li').find('i').css('color','#fff')
           $(ev.target).closest('li').find('a').css('color','#fff')
        },
        tiaozhuan:function(e){
            var index = $(e.target).parent().parent().index();
            var type = $('.type');      
            var menu_datagrid = $('#menu_datagrid');
            var menu_top = menu_datagrid.offset().top;
            var type_top = $(type[index]).offset().top - menu_top;
            console.log(type_top);
            menu_datagrid.animate({scrollTop:type_top},500);
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
            console.log(res.data)
        })
    },
    components: {
		loading
	}

}