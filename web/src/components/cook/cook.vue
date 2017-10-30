<template>
	<div class="cook">
		<div class="cook_page clear">
			<p class="cook_title">xx餐厅后厨系统</p>
			<table class="table table-striped table-bordered">
				<thead>
					<tr>
						<th>订单序号</th>
						<th>台号</th>
						<th>菜名</th>
						<th>备注</th>
						<th>制作状态</th>
						<th>上菜</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>10301040</td>
						<td>001</td>
						<td>黄焖鸡</td>
						<td>加辣</td>
						<td>正在制作</td>
						<td><button class="btn btn-success" @click="make">上菜</button></td>
					</tr>
					<tr>
						<td>10301040</td>
						<td>001</td>
						<td>黄焖鸡</td>
						<td>加辣</td>
						<td>正在制作</td>
						<td><button class="btn btn-success" @click="make">上菜</button></td>
					</tr>
					<tr>
						<td>10301040</td>
						<td>001</td>
						<td>黄焖鸡</td>
						<td>加辣</td>
						<td>正在制作</td>
						<td><button class="btn btn-success" @click="make">上菜</button></td>
					</tr>
					<tr>
						<td>10301041</td>
						<td>002</td>
						<td>酸菜鱼</td>
						<td>少辣</td>
						<td>未制作</td>
						<td><button class="btn btn-info" @click="make">制作</button></td>
					</tr>
					<tr>
						<td>10301041</td>
						<td>002</td>
						<td>酸菜鱼</td>
						<td>少辣</td>
						<td>未制作</td>
						<td><button class="btn btn-info" @click="make">制作</button></td>
					</tr>
					<tr>
						<td>10301041</td>
						<td>002</td>
						<td>酸菜鱼</td>
						<td>少辣</td>
						<td>未制作</td>
						<td><button class="btn btn-info" @click="make">制作</button></td>
					</tr>
					<tr>
						<td>10301041</td>
						<td>002</td>
						<td>酸菜鱼</td>
						<td>少辣</td>
						<td>未制作</td>
						<td><button class="btn btn-info" @click="make">制作</button></td>
					</tr>
					
				</tbody>
			</table>
		</div>	
		<div>
			<router-view></router-view>
		</div>
		
	</div>
</template>

<script type="text/javascript">
	import './cook.scss'
	
	//$children
	export default {

		
		methods: {
			
			make: function(event){
				if($(event.target).html() == "上菜"){
					$(event.target).parent().parent().remove();
				}
<<<<<<< HEAD
=======
				console.log($(event.target).html())
>>>>>>> 3cc5265d10ebb1a0c1138a1c2b4534a5d2a2fe74
				$(event.target).html('上菜');
				$(event.target).removeClass('btn-info');
				$(event.target).addClass('btn-success');
				$(event.target).parent().prev().html('正在制作');
			}
		}
	}
	
	
</script>

