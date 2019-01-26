import Vue from 'vue'
import Router from 'vue-router'
import test from '@/components/test'
import index from '@/components/index'
import comment from '@/components/strategy/comment'
import details from '@/components/strategy/details'
import strategy from '@/components/strategy/strategy'
import comment1 from '@/components/strategy/comment1'
import comment2 from '@/components/strategy/comment2'

Vue.use(Router)

export default new Router({
  routes: [
	  {path: '/',redirect:'/details'},
    {path: '/test',component: test},
    {path: '/index',component: index},
    {path: '/comment',component: comment},
    {path: '/details',component: details},
    {path: '/strategy',component: strategy},
    {path: '/comment1',component: comment1},
    {path: '/comment2',component: comment2}

  ]
})
