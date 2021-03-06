import Vue from 'vue'
import VueRouter from 'vue-router'
import HomeComponent from '../components/home/home.vue'
import GoodsListComponent from '../components/goodslist/goodslist.vue'

import Order_pageComponent from '../components/order_page/order_page.vue'
import cookComponent from '../components/cook/cook.vue'


import callCenterComponent from '../components/call_center/call_center.vue'


// csx
import Menu_header from '../components/menu_header/menu_header.vue'
// import Menu_left from '../components/menu_left/menu_left.vue'
import Menu_main from '../components/menu_main/menu_main.vue'
import Menu_footer from '../components/menu_footer/menu_footer.vue'

import PayComponent from '../components/pay/pay.vue'
import Login from '../components/login/login.vue'

Vue.use(VueRouter)

var router = new VueRouter({
	routes: [
		{
			path: '/',
			name: 'home',
			component: HomeComponent
		},
		{
			path: '/menu',
			name: 'menu',
			components:{
				// default: MenuComponent,
				header: Menu_header,
				// left: Menu_left,
				datagrid: Menu_main,
				footer: Menu_footer
			}

		},
		{
			path: '/order_page',
			name: 'order_page',
			component: Order_pageComponent
		},
		{
			path: '/cook',
			name: 'cook',
			component: cookComponent
		},
		{
			path: '/call_center',
			name: 'call_center',
			component: callCenterComponent
		},
		{
			path: '/login',
			name: 'login',
			component: Login
		},
		{
			path: '/pay',
			name: 'pay',
			component: PayComponent
		}
	]
})

export default router