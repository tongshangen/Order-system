<template>
	<div class="order">
		<div class="order_header">

			<router-link to="/"><span class="glyphicon glyphicon-chevron-left"></span></router-link><span class="header_center">订单页</span>

		</div>
		<div class="order_center">
			<div class="order_mid_top"><span>订单:{{dingdan}}</span><span>数量:{{length}}</span><span>总计：{{total}}元</span></div><br>
			<ul class="order_all">
				<li v-for="idxs in length">
					<table>
						<tr>
							<!-- <td>{{value.id}}</td> -->
							<td>{{name[idxs-1]}}</td>
							<td>{{price[idxs-1]}}元</td>
							<td>{{number[idxs-1]}}份</td>
						</tr>
						<tr>
							<td colspan="2"><img :src="url[idxs-1]"  alt=""></td>
							<td></td>
							<td><button type="button" class="btn btn-default btn-lg active" @click="quit">退菜</button></td>
						</tr>
					</table>
				</li>
			</ul>
		</div>
		<div class="order_footer"><button type="button" class="btn btn-default btn-lg active" data-toggle="modal" data-target=".bs-example-modal-lg">整单催菜</button><router-link to="/menu"><button type="button" class="btn btn-default btn-lg active" >继续点菜</button></router-link><router-link to="/pay" ><button type="button" class="btn btn-default btn-lg active last" >结算</button></router-link></div>


		<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
		  <div class="modal-dialog modal-lg" role="document">
		    <div class="modal-content">
		     	<p>请稍等，我们正在为您努力加快速度...</p>
		    </div>
		  </div>
		</div>
	</div>
</template>
<script type="text/javascript">
	import './order_page.scss'
	import http from '../../utils/httpClient.js'
	var socket = io.connect('ws://localhost:777');
	socket.on('menu_over',function(data){
	    console.log(data)
	})
	
	var dingdan = document.querySelectorAll('.dingdan');	
	var now = new Date().getTime();
	// console.log(dingdan);
	dingdan.innerHTML = now;



	export default{

		data: function(){
			return {
				datagrid: [],
				dingdan: now,
				length: 0,
				name: [],
				price: [],
				number: [],
				url: [],
				allprice: [],
				total:0,
				// obj:{
				// 	id: [1,2,3],
				// 	idx: 5,
				// 	name: '',
				// 	price: 99,
				// 	number: 6,
				// 	allprice: 288,
				// },
			}
		},

		methods:{
			urge: function(){
				// console.log(666)
			},
			quit: function(){
				// console.log(11)
			},
			
			allurge: function(){
				$('#myModal').modal();
			},
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
			    // console.log(self.length)
			    // console.log(self.allprice[0])
			     // var num = Number(self.allprice[0])
			     // console.log(num)
			     
			     var arr = self.allprice;
		     	console.log("1111s",arr[0])
			     for (var i = 0; i < arr.length; i++) {
			     	self.total += arr[i]*1;	
			     }
			})

		}
	}
</script>