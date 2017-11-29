<template>
	<div class="home">
		<div class="toolbar">
			<div class="home_header">1986餐厅 88号桌</div>
			<ul class="home_body">
				<li><i class="iconfont icon-menguo"></i><router-link to="/menu">推荐菜</router-link></li>
				<li><i class="iconfont icon-huiyuan"></i><router-link to="/floor1">会员</router-link></li>
				<li><i class="iconfont icon-diancanguanli"></i><router-link to="/menu">点餐</router-link></li>
				<li><i class="iconfont icon-hujiao"></i><a @click="call" type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">呼叫服务</a></li>
				<li><i class="iconfont icon-diancan"></i><router-link to="/order_page">已点菜</router-link></li>
				<li><i class="iconfont icon-gouwuche"></i><router-link to="/pay">结算</router-link></li>
			</ul>
			<div class="home_footer"></div>
		</div>
		
		<div>
			<router-view></router-view>
		</div>

		<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" id="aa">
		  <div class="modal-dialog modal-lg" role="document" id="bb">
		    <div class="modal-content">
		     	
		    </div>
		  </div>
		</div>
	</div>
</template>

<script type="text/javascript">
	import './home.scss'
	var socket = io.connect('ws://localhost:777');
	export default {
		methods: {
			call: function(){
				$('.modal-content').show();
				$('.modal-backdrop').show();
			
				$('#myModal').modal();
				
				
				var modal_content = $('.modal-content');
				
				var html = `<p class="help_title">请问有什么能帮助您？</p>
		     	<input type="text" name="help" id="help"  placeholder="请输入需求" />
		     	<button id="help_btn">提交</button>`;
		     	modal_content.html(html);
		     	$('#help_btn').click(function(){
		     		var help_msg = $(this).prev().val();
					socket.emit('help', help_msg);
					$(this).parent().html(`<p>服务员很快就来..</p>`);
					setTimeout(function(){
						$('.modal-content').hide();
						$('.modal-backdrop').hide();
					},2000);
		     	})
			}
		}
	}
</script>
