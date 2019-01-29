import Vue from 'vue'
import Router from 'vue-router'
import details from '@/components/strategy/details'
import strategy from '@/components/strategy/strategy'


Vue.use(Router)

export default new Router({
  routes: [
	  {path: '/',redirect:'/strategy'},
    {path: '/details',component: details},
    {path: '/strategy',component: strategy}


  ]
})
