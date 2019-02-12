<template>
 <div class="app-container">
    <mt-header fixed title="花点心思" style="background-color:pink;">
            <span  @click="goback" slot="left">
                <mt-button icon="back"></mt-button>
            </span>
            <mt-button icon="more" slot="right"></mt-button>
        </mt-header>
<!-- 增加页面切换的半场动画 -->

<transition name="tabbar">
    <router-view></router-view>
</transition>
   

 <nav class="mui-bar mui-bar-tab">
			<router-link class="mui-tab-item"  to="/Home">
				<span class="mui-icon mui-icon-home" ></span>
				<span class="mui-tab-label" >首页</span>
			</router-link>			
			<router-link class="mui-tab-item" to="/Find" >
				<span class="mui-icon mui-icon-paperplane"></span>
				<span class="mui-tab-label">发现</span>
			</router-link>
            <router-link class="mui-tab-item" to="/Card" >
				<span class="mui-icon mui-icon-extra mui-icon-extra-cart">
                    <span class="mui-badge">
					 {{$store.getters.optCartCount}}
					</span>
                </span>
				<span class="mui-tab-label">购物车</span>
			</router-link>
			<router-link class="mui-tab-item" to="/Login" v-if="!this.$store.state.isLogin">
				<span class="mui-icon mui-icon-person"></span>
				<span class="mui-tab-label">登录注册</span>
			</router-link>
            <router-link class="mui-tab-item" to="/Person" v-else>
				<span class="mui-icon mui-icon-person"></span>
				<span class="mui-tab-label">个人中心</span>
			</router-link>
		</nav>
 </div>
</template>
<script>
export default {
    data() {
        return {
            isLogin:false,
        }
    },
    //头部的返回键
    methods: {
        goback(){
            this.$router.go(-1)  //返回上一级 
        },
        getMore(){  
             //在登录之后立马获取到改用户数据库中的购物车的总件数 ，放到store中渲染 ， 
            //  本来是想在在store中渲染的，奈何无法进行axios ，所以改到这里 ，如有能在store中渲染 ，请指教 。
            var url = "http://127.0.0.1:3000/getCarts";
            this.axios.get(url).then(result=>{
                var counts = 0 
                  result.data.data.forEach(item => {
                        counts += parseInt(item.count)  
                  });
                 this.$store.commit("increments",counts);
            })
        }, 
        getLogin(){
                var url = "http://127.0.0.1:3000/isLogin";
                this.axios.get(url).then((result)=>{
                    if(result.data.code==1){
                        this.$store.commit("signout");
                    }else{
                        this.$store.commit("signin");
                    }
                })
            },
    },
    created(){
        this.getMore()
        this.getLogin()
    }
}
</script>

<style>
   .app-container{
     padding-top:40px;
     padding-bottom:50px;
     overflow-x:hidden;
   }

 .mui-bar-tab .mui-tab-item-tao.mui-active {
    color: #007aff;
 }
.mui-bar-tab .mui-tab-item-tao {
    display: table-cell;
    overflow: hidden;
    width: 1%;
    height: 50px;
    text-align: center;
    vertical-align: middle;
    white-space: nowrap;
    text-overflow: ellipsis;
    color: #929292;
}
.mui-bar-tab .mui-tab-item-tao .mui-icon {
    top: 3px;
    width: 24px;
    height: 24px;
    padding-top: 0;
    padding-bottom: 0;
}

.mui-bar-tab .mui-tab-item-tao .mui-icon~.mui-tab-label {
   font-size:11px;
   display:block;
   overflow:hidden;
   text-overflow:ellipsis;

}
/* 添加半场动画 */

.tabbar-enter{
    opacity: 0;
    transform: translateX(100%) ;
}
.tabbar-leave-to{
    opacity: 0;
    transform: translateX(-100%);
    position: fixed ; 
}
.tabbar-enter-active , 
.tabbar-leave-active {
    transition: all 0.8s ease
}
</style>
