//引入vue 
import Vue from 'vue'
//0.1:引入Vuex
import Vuex from "vuex"
//0.2:注册Vuex组件
Vue.use(Vuex)
//0.3:创建Vuex实例对象
var store = new Vuex.Store({
  state:{
    isLogin:false,//判断是否登录
    carPanelDate:[],
    cartCount:0   //购物车中商品数量
  },
  mutations:{     // 修改共享数据方法
    signin(state){
      state.isLogin=true
    },
    signout(state){
      state.isLogin=false
    },
    // 添加数量  
    increment(state,count){
       state.cartCount+= parseInt(count) 
    },
    //迫不得与获取数量  ；
    increments(state,count){
      state.cartCount= parseInt(count) 
   },

    substract(state){ state.cartCount--},
    clear(state){state.cartCount = 0},
    addCartpanelDate(state,data){
      //判断购物车是否增加过
      var cart = true
      state.carPanelDate.forEach(result=>{
        if(result.id===data.id){
          result.count++
          cart=false
        }
      })
      if(cart){
        var goodsData = data
        Vue.set(goodsData,'count',1)
        state.carPanelDate.unshift(goodsData)
      }
    }
  },
  getters:{      //获取共享数据方法
     optCartCount:function(state){
       return state.cartCount;
     }
  }
})
                                                         

//暴露路由对象
export default store 