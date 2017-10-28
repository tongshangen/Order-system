<template>
	<div>
		<div class="toolbar">
			<div class="home_header">xx餐厅 12号桌</div>
			<ul class="home_body">
				<li><i class="iconfont icon-menguo"></i><router-link to="/floor1">推荐菜</router-link></li>
				<li><i class="iconfont icon-huiyuan"></i><router-link to="/floor1">会员</router-link></li>
				<li><i class="iconfont icon-diancanguanli"></i><router-link to="/floor1">点餐</router-link></li>
				<li><i class="iconfont icon-hujiao"></i><router-link to="/floor1">呼叫服务</router-link></li>
				<li><i class="iconfont icon-diancan"></i><router-link to="/floor1">已点菜</router-link></li>
				<li><i class="iconfont icon-gouwuche"></i><router-link to="/floor1">购物车</router-link></li>
			</ul>
			<div class="home_footer"></div>
		</div>
		
		<div>
			<router-view></router-view>
		</div>
		
	</div>
</template>

<script type="text/javascript">
	import './home.scss'
	//$children
	export default {
		methods: {
			generateToolBar: function(obj){
				//动态生成按钮
			}
		}
	}
</script>
