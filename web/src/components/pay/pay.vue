<template>
	<div class="pay">
		<div class="pay_header">

			<router-link to="/order_page"><span class="glyphicon glyphicon-chevron-left"></span></router-link><span class="header_center">结算</span>

		</div>

		<div class="pay_center">
			<div class="pay_main">
				<button type="button" class="btn btn-info" data-toggle="modal" data-target=".bs-example-modal-lg" @click="wechat">微信支付</button>
				<button type="button" class="btn btn-info" data-toggle="modal" data-target=".bs-example-modal-lg" @click="alipay">支付宝支付</button>
				<button type="button" class="btn btn-info">银联支付</button>
				<button type="button" class="btn btn-info">现金支付</button>
			</div>

			


			<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
			  <div class="modal-dialog modal-lg" role="document">
			    <div class="modal-content">
			     	<img src="../../img/wechat.jpg">
			    </div>
			  </div>
			</div>
			

		</div>

		<div class="pay_footer">
			
		</div>
	</div>
</template>

<script type="text/javascript">
	import './pay.scss'

	export default{
		methods: {
			wechat: function(){
				$('#myModal').modal();
			},
			alipay: function(){
				$('#myModal').modal();
				
			}
		}
	}
</script>