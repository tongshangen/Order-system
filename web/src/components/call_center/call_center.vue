<template>
	<div class="call_center">
		<p class="call_title">呼叫中心</p>
		<ul class="Customer_call">
			<li>客户呼叫</li>
			<!--<li><span>1号桌呼叫</span><span>客户要求：一包纸巾</span><button type="button" class="btn btn-warning" @click="handle">点击处理</button></li>
			<li><span>2号桌呼叫</span><span>客户要求：一包纸巾</span><button type="button" class="btn btn-warning" @click="handle">点击处理</button></li>
			<li><span>3号桌呼叫</span><span>客户要求：一包纸巾</span><button type="button" class="btn btn-warning" @click="handle">点击处理</button></li>-->
			<!--<li><span>4号桌呼叫</span><span>客户要求：一包纸巾</span><button type="button" class="btn btn-warning" @click="handle">点击处理</button></li>
			<li><span>5号桌呼叫</span><span>客户要求：一包纸巾</span><button type="button" class="btn btn-warning" @click="handle">点击处理</button></li>
			<li><span>6号桌呼叫</span><span>客户要求：一包纸巾</span><button type="button" class="btn btn-warning" @click="handle">点击处理</button></li>
			<li><span>7号桌呼叫</span><span>客户要求：一包纸巾</span><button type="button" class="btn btn-warning" @click="handle">点击处理</button></li>
			<li><span>8号桌呼叫</span><span>客户要求：一包纸巾</span><button type="button" class="btn btn-warning" @click="handle">点击处理</button></li>-->
		</ul>
		<ul class="Serving_call">
			<li>上菜呼叫</li>
			<li><span>桌号：001</span><span>黄焖鸡</span><button type="button" class="btn btn-info" @click="handle">点击处理</button></li>
			<li><span>桌号：002</span><span>黄焖鸡</span><button type="button" class="btn btn-info" @click="handle">点击处理</button></li>
			<li><span>桌号：003</span><span>黄焖鸡</span><button type="button" class="btn btn-info" @click="handle">点击处理</button></li>
			<li><span>桌号：004</span><span>黄焖鸡</span><button type="button" class="btn btn-info" @click="handle">点击处理</button></li>	
			<li><span>桌号：005</span><span>黄焖鸡</span><button type="button" class="btn btn-info" @click="handle">点击处理</button></li>
		</ul>
	</div>
	
</template>

<script>
	import './call_center.scss'
	var socket = io.connect('ws://localhost:777');
	console.log(66);
	socket.on('clientTips',function(data){
		console.log(data);
		var Customer_call = $('.Customer_call');
		console.log(Customer_call);
		Customer_call.append(`<li><span>1号桌呼叫</span><span>客户要求：${data}</span><button type="button" class="btn btn-warning btn_del">点击处理</button></li>`)
		$('.btn_del').click(function(){
			$(this).parent().remove();
		})
	})
	export default {	
		methods: {
			handle:function(e){
				$(e.target).parent().remove();
			}
		}
	}
</script>
