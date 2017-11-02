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
			    	<h2>订单详情</h2>
			    	<div class="indent"><span>订单号:{{dingdan}}</span></div>
			    	<div class="indent"><span>时间:{{time}}</span></div>
			    	<ul>
			    		<li>
			    			<table class="table">
						      <thead>
						        <tr>
						          <th>菜名</th>
						          <th>数量</th>
						          <th>金额</th>
						        </tr>
						      </thead>
						      <tbody>
						        <tr  v-for="idxs in length" class="active">
						          <td>{{name[idxs-1]}}</td>
						          <td>{{number[idxs-1]}}</td>
						          <td>{{price[idxs-1]}}</td>
						        </tr>
						      </tbody>
						    </table>
			    		</li>
			    	</ul>
			    		
				    <div class="total"><span>总价:{{total}}</span></div>
			     	<div class="er"><img src="../../img/wechat.jpg"></div>
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
	import http from '../../utils/httpClient.js'
	var socket = io.connect('ws://localhost:777');
	socket.on('menu_over',function(data){
	    console.log(data)
	})
	
	var dingdan = document.querySelectorAll('.dingdan');	
	var now = new Date().getTime();
	var nowtime = new Date().toLocaleString();


	export default{

		data: function(){
			return {
				datagrid: [],
				dingdan: now,
				time: nowtime,
				length: 0,
				name: [],
				price: [],
				number: [],
				url: [],
				allprice: [],
				total:0,
			}
		},
		methods: {
			wechat: function(){
				$('#myModal').modal();
			},
			alipay: function(){
				$('#myModal').modal();
				
			}
		},
		mounted: function(){
			console.log(this)
			var self = this;
			http.post({
			    url: "menuSelect"
			}).then(res => {
			    self.datagrid = res.data;
			    console.log(res.data)
			   	self.price = res.data[0].price.split(",");
			    self.name = res.data[0].name.split(",");
			   	self.number = res.data[0].number.split(",");
			   	self.url = res.data[0].url.split(",");
			   	self.allprice = res.data[0].allprice.split(",");
			    self.length = res.data[0].name.split(",").length;
			     
			    var arr = self.allprice;
			    
			    for (var i = 0; i < arr.length; i++) {
			    	self.total += arr[i]*1;	
			    }
			})
		}
	}
</script>