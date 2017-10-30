<template>
	<div>
		<div class="order">
			<div class="order_header">
				<span class="glyphicon glyphicon-arrow-left"></span><span class="header_center">订单页</span>
			</div>
			<div class="order_center">
				<div class="order_mid_top"><span>订单:10001</span><span>数量:3</span><span>总计：189元</span></div><br>
				<ul>
					<li>
						<table>
							<tr>
								<td>1</td>
								<td>白切鸡</td>
								<td>36.0</td>
								<td>2</td>
							</tr>
							<tr>
								<td colspan="2"><img src="../../img/1.jpg"></td>
								<td><button type="button" class="btn btn-default btn-lg active">催菜</button></td>
								<td><button type="button" class="btn btn-default btn-lg active">退菜</button></td>
							</tr>
						</table>
					</li>
					<li>
						<table>
							<tr>
								<td>2</td>
								<td>白切鸡</td>
								<td>36.0</td>
								<td>2</td>
							</tr>
							<tr>
								<td colspan="2"><img src="../../img/1.jpg"></td>
								<td><button type="button" class="btn btn-default btn-lg active">催菜</button></td>
								<td><button type="button" class="btn btn-default btn-lg active">退菜</button></td>
							</tr>
						</table>
					</li>
					<!-- <li>
						<table>
							<tr>
								<td>3</td>
								<td>白切鸡</td>
								<td>36.0</td>
								<td>2</td>
							</tr>
							<tr>
								<td colspan="2"><img src="../../img/1.jpg"></td>
								<td><button type="button" class="btn btn-default btn-lg active">催菜</button></td>
								<td><button type="button" class="btn btn-default btn-lg active">退菜</button></td>
							</tr>
						</table>
					</li> -->
				</ul>


			</div>
			<div class="order_footer"><span>整单催菜</span><span>继续点菜</span><span class="last">结算</span></div>
		</div>
	</div>
</template>
<script type="text/javascript">
	import './order_page.scss'

	export default{
		methods:{

		}
	}
</script>