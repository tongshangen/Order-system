<template>
	<div class="call_center">
		<p class="call_title">呼叫中心</p>
		<ul>
			<li>客户呼叫</li>
			<li><span>1号桌呼叫</span><span>客户要求：一包纸巾</span><button type="button" class="btn btn-warning" @click="handle">点击处理</button></li>
			<li><span>2号桌呼叫</span><span>客户要求：一包纸巾</span><button type="button" class="btn btn-warning" @click="handle">点击处理</button></li>
			<li><span>3号桌呼叫</span><span>客户要求：一包纸巾</span><button type="button" class="btn btn-warning" @click="handle">点击处理</button></li>
			<li><span>4号桌呼叫</span><span>客户要求：一包纸巾</span><button type="button" class="btn btn-warning" @click="handle">点击处理</button></li>
			<li><span>5号桌呼叫</span><span>客户要求：一包纸巾</span><button type="button" class="btn btn-warning" @click="handle">点击处理</button></li>
			<li><span>6号桌呼叫</span><span>客户要求：一包纸巾</span><button type="button" class="btn btn-warning" @click="handle">点击处理</button></li>
			<li><span>7号桌呼叫</span><span>客户要求：一包纸巾</span><button type="button" class="btn btn-warning" @click="handle">点击处理</button></li>
			<li><span>8号桌呼叫</span><span>客户要求：一包纸巾</span><button type="button" class="btn btn-warning" @click="handle">点击处理</button></li>
		</ul>
		<ul>
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
	export default {	
		methods: {
			
			handle: function(event){
				$(event.target).parent().remove();			
			}
		}
	}
</script>
