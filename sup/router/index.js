import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import demo from'@/components/demo'
import wenjianjia from'@/components/wenjianjia'
import login from'@/components/login'
import bianji from'@/components/bianji'
import test from'@/components/test'
import wenjianjia2 from'@/components/wenjianjia2'
import wenjianjia3 from'@/components/wenjianjia3'
import biji1 from'@/components/biji1'
import biji2 from'@/components/biji2'
import biji3 from'@/components/biji3'
import biji4 from'@/components/biji4'
import biji5 from'@/components/biji5'
import biji6 from'@/components/biji6'
import zhuce from'@/components/zhuce'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'test',
      component: test
    } ,
		{
	    path: '/demo',
	    name: 'demo',
	    component: demo
	  },
	  {
	    path: '/helloworld',
	    name: 'HelloWorld',
	    component: HelloWorld
	  },
		{
		  path: '/login',
		  name: 'login',
		  component: login
		},
		{
		  path: '/zhuce',
		  name: 'zhuce',
		  component: zhuce
		},
			{
		  path: '/bianji',
		  name: 'bianji',
		  component: bianji
		},
		{
		  path: '/biji1',
		  name: 'biji1',
		  component: biji1,
		
		},
		{
		  path: '/biji2',
		  name: 'biji2',
		  component: biji2,
		
		},
		{
		  path: '/biji3',
		  name: 'biji3',
		  component: biji3,
		
		},
		{
		  path: '/biji4',
		  name: 'biji4',
		  component: biji4,
		
		},
		{
		  path: '/biji5',
		  name: 'biji5',
		  component: biji5,
		
		},
		{
		  path: '/biji6',
		  name: 'biji6',
		  component: biji6,
		
		},
			{
		  path: '/wenjianjia3',
		  name: 'wenjianjia3',
		  component: wenjianjia3
		},
		
		{
		  path: '/wenjianjia2',
		  name: 'wenjianjia2',
		  component: wenjianjia2
		},
		
	  {
	    path: '/wenjianjia',
	    name: 'wenjianjia',
	    component: wenjianjia
	  }
  ],
	
	 
	
})
