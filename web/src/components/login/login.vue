<template>
		<div id="login_main">
	        <p></p>
	        <h1>后台管理登录 <span class="x">&times</span></h1>
	        <form class="form-horizontal">
			  <div class="form-group">
			    <label for="username" class="col-sm-3 control-label">用户名:</label>
			    <div class="col-sm-7">
			      <input type="text" class="form-control" v-model="username" id="username" placeholder="请输入用户名">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="password" class="col-sm-3 control-label">密 码:</label>
			    <div class="col-sm-7">
			      <input type="password" class="form-control" v-model="password" id="password" placeholder="请输入密码">
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-3 col-sm-7">
			      <button type="submit" class="btn btn-default" @click="loginHandler">登录</button>
			    </div>
			  </div>
			</form>

			<loading v-show="loadingShow"></loading>
	    </div>
	
</template>

<script type="text/javascript">
	import './login.scss'
	import loading from '../loading/loading.vue'
	import http from '../../utils/httpClient.js'
	import router from '../../router/';

	export default {
		data(){
			return {
				username: '',
				password: '',
				loadingShow: false
			}
		},
		methods: {
			loginHandler: function(){
				http.post({url:'/login', params:{username: this.username, password: this.password},vm:this}).then(res => {
					router.push({name: 'home'});
				})
			}
		},
		components: {
			loading
		}
	}
</script>