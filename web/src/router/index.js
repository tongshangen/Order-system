import Vue from 'vue'
import VueRouter from 'vue-router'
import HomeComponent from '../components/home/home.vue'
import GoodsListComponent from '../components/goodslist/goodslist.vue'

import Order_pageComponent from '../components/order_page/order_page.vue'
import cookComponent from '../components/cook/cook.vue'
<<<<<<< HEAD

=======
>>>>>>> 046cc54e4d3f644d5e059430bfc3c0e72c56425d

// csx
import Menu_header from '../components/menu_header/menu_header.vue'
import Menu_left from '../components/menu_left/menu_left.vue'
import Menu_datagrid from '../components/menu_datagrid/menu_datagrid.vue'
import Menu_footer from '../components/menu_footer/menu_footer.vue'

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
			// children: [{
			// 	path: 'menu',
			// 	name: 'menu',
			// 	component: MenuComponent
			// }]
		},
		{
			path: '/menu',
			name: 'menu',
			components:{
				// default: MenuComponent,
				header: Menu_header,
				left: Menu_left,
				datagrid: Menu_datagrid,
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
		}
	]
})

export default router