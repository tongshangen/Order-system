<template>
	<div class="cook">
		<div class="cook_page clear">
			
			<div class="cook_title">
				<p>
					xx餐厅后厨系统
				</p>
				<span class="call_out" @click="out">退出</span>
			</div>
			
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
	import router from '../../router/'
	var socket = io.connect('ws://localhost:777');
	var arr;
	//$children
	export default {
		methods: {
			
			make: function(event){
				if($(event.target).html() == "上菜"){
					console.log($(event.target).parent().parent().children());
					var tr = $(event.target).parent().parent().children();
					var taihao = tr[1].innerHTML;
					var caiming = tr[2].innerHTML;
					arr = [];
					arr.push(taihao);
					arr.push(caiming);					
					socket.emit('serving', arr);
					$(event.target).parent().parent().remove();
					return;
				}
				$(event.target).html('上菜');
				$(event.target).removeClass('btn-info');
				$(event.target).addClass('btn-success');
				$(event.target).parent().prev().html('正在制作');
			},
			out:function(){
				router.push({name: 'login'});
			}
		}
	}
	
	
</script>

