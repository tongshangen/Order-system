<template>
	<div class="order">
		<div class="order_header">

			<router-link to="/"><span class="glyphicon glyphicon-chevron-left" @click="back"></span></router-link><span class="header_center">订单页</span>

		</div>
		<div class="order_center">
			<div class="order_mid_top"><span>订单:</span><span>数量:</span><span>总计：元</span></div><br>
			<ul class="order_all" v-for="(value, index) in dataform">
				<li>
					<table>
						<tr>
							<td>{{value.id}}</td>
							<td>{{value.name}}</td>
							<td>{{value.price}}</td>
							<td>{{value.number}}</td>
						</tr>
						<tr>
							<td colspan="2"><img :src="value.src"  alt=""></td>
							<td><button type="button" class="btn btn-default btn-lg active" @click="urge">催菜</button></td>
							<td><button type="button" class="btn btn-default btn-lg active" @click="quit">退菜</button></td>
						</tr>
					</table>
				</li>
				<!-- <li>
					<table>
						<tr>
							<td>{{value.id}}</td>
							<td>{{value.name}}</td>
							<td>{{value.price}}</td>
							<td>{{value.number}}</td>
						</tr>
						<tr>
							<td colspan="2"><img src="../../img/002.jpg"></td>
							<td><button type="button" class="btn btn-default btn-lg active" @click="urge">催菜</button></td>
							<td><button type="button" class="btn btn-default btn-lg active" @click="quit">退菜</button></td>
						</tr>
					</table>
				</li>
				<li>
					<table>
						<tr>
							<td>{{value.id}}</td>
							<td>{{value.name}}</td>
							<td>{{value.price}}</td>
							<td>{{value.number}}</td>
						</tr>
						<tr>
							<td colspan="2"><img src="../../img/003.jpg"></td>
							<td><button type="button" class="btn btn-default btn-lg active" @click="urge">催菜</button></td>
							<td><button type="button" class="btn btn-default btn-lg active" @click="quit">退菜</button></td>
						</tr>
					</table>
				</li> -->
				
			</ul>


		</div>
		<div class="order_footer"><button type="button" class="btn btn-default btn-lg active" data-toggle="modal" data-target=".bs-example-modal-lg" @click="allurge">整单催菜</button><router-link to="/menu"><button type="button" class="btn btn-default btn-lg active" @click="goon">继续点菜</button></router-link><router-link to="/pay" ><button type="button" class="btn btn-default btn-lg active last" @click="pay">结算</button></router-link></div>


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

	export default{

		data: function(){
			return{
				dataform: [],
			}
		},

		methods:{
			urge: function(){
				// console.log(666)
			},
			quit: function(){
				// console.log(777)
			},
			back: function(){
				// console.log(333)
				
			},
			allurge: function(){
				console.log(333)
				$('#myModal').modal();
			},
			goon: function(){
				
			},
			pay: function(){
				// console.log(555)
			}
		},
		mounted:function(){
			console.log(this.$parent.$parent)
		}
	}
</script>