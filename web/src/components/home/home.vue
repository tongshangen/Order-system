<template>
	<div class="home">
		<div class="toolbar">
			<div class="home_header">xx餐厅 12号桌</div>
			<ul class="home_body">
				<li><i class="iconfont icon-menguo"></i><router-link to="/menu">推荐菜</router-link></li>
				<li><i class="iconfont icon-huiyuan"></i><router-link to="/floor1">会员</router-link></li>
				<li><i class="iconfont icon-diancanguanli"></i><router-link to="/menu">点餐</router-link></li>
				<li><i class="iconfont icon-hujiao"></i><a @click="call" type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">呼叫服务</a></li>
				<li><i class="iconfont icon-diancan"></i><router-link to="/order_page">已点菜</router-link></li>
				<li><i class="iconfont icon-gouwuche"></i><router-link to="/floor1">购物车</router-link></li>
			</ul>
			<div class="home_footer"></div>
		</div>
		
		<div>
			<router-view></router-view>
		</div>

		<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
		  <div class="modal-dialog modal-lg" role="document">
		    <div class="modal-content">
		     	<p class="help_title">请问有什么能帮助您？</p>
		     	<input type="text" name="help" id="help"  placeholder="请输入需求" />
		     	<button id="help_btn" @click="pull">提交</button>
		    </div>
		  </div>
		</div>
	</div>
</template>

<script type="text/javascript">
	import './home.scss'
	//$children
	export default {
		methods: {
			call: function(){
				$('#myModal').modal();
			},
			pull:function(e){
				$(e.target).parent().html(`<p>请稍后,服务员正在加速赶来..</p>`)
			}
		}
	}
</script>
