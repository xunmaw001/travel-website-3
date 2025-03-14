import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import menpiaoyuding from '@/views/modules/menpiaoyuding/list'
    import news from '@/views/modules/news/list'
    import tesemeishi from '@/views/modules/tesemeishi/list'
    import jingdianxinxi from '@/views/modules/jingdianxinxi/list'
    import jingdianpingjia from '@/views/modules/jingdianpingjia/list'
    import storeup from '@/views/modules/storeup/list'
    import discusslvyouzhoubian from '@/views/modules/discusslvyouzhoubian/list'
    import users from '@/views/modules/users/list'
    import discusstesemeishi from '@/views/modules/discusstesemeishi/list'
    import jingdianfenlei from '@/views/modules/jingdianfenlei/list'
    import yonghu from '@/views/modules/yonghu/list'
    import chat from '@/views/modules/chat/list'
    import discussjingdianxinxi from '@/views/modules/discussjingdianxinxi/list'
    import lvyouzhoubian from '@/views/modules/lvyouzhoubian/list'
    import config from '@/views/modules/config/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
          ,{
	path: '/menpiaoyuding',
        name: '门票预订',
        component: menpiaoyuding
      }
          ,{
	path: '/news',
        name: '旅游资讯',
        component: news
      }
          ,{
	path: '/tesemeishi',
        name: '特色美食',
        component: tesemeishi
      }
          ,{
	path: '/jingdianxinxi',
        name: '景点信息',
        component: jingdianxinxi
      }
          ,{
	path: '/jingdianpingjia',
        name: '景点评价',
        component: jingdianpingjia
      }
          ,{
	path: '/storeup',
        name: '我的收藏管理',
        component: storeup
      }
          ,{
	path: '/discusslvyouzhoubian',
        name: '旅游周边评论',
        component: discusslvyouzhoubian
      }
          ,{
	path: '/users',
        name: '管理员',
        component: users
      }
          ,{
	path: '/discusstesemeishi',
        name: '特色美食评论',
        component: discusstesemeishi
      }
          ,{
	path: '/jingdianfenlei',
        name: '景点分类',
        component: jingdianfenlei
      }
          ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
          ,{
	path: '/chat',
        name: '客服中心',
        component: chat
      }
          ,{
	path: '/discussjingdianxinxi',
        name: '景点信息评论',
        component: discussjingdianxinxi
      }
          ,{
	path: '/lvyouzhoubian',
        name: '旅游周边',
        component: lvyouzhoubian
      }
          ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
        ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
