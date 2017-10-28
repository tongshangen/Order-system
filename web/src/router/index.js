import Vue from 'vue'
import VueRouter from 'vue-router'
import HomeComponent from '../components/home/home.vue'
import GoodsListComponent from '../components/goodslist/goodslist.vue'
import MenuComponent from '../components/menu/menu.vue'
import Order_pageComponent from '../components/order_page/order_page.vue'

Vue.use(VueRouter)

var router = new VueRouter({
	routes: [
		{
			path: '/',
			name: 'home',
			component: HomeComponent,
			children: [{
				path: 'menu',
				name: 'menu',
				component: MenuComponent
			}]
		},
		{
			path: '/order_page',
			name: 'order_page',
			component: Order_pageComponent
		}
	]
})

export default router