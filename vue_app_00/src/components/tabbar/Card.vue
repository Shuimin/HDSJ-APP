<template>
    <div class="mui-card">
        <div class="mui-card-header">购买商品</div>
            <div class="mui-card-content">
                <div class="mui-card-content-inner" style="display:flex;">
                    <ul class="mui-table-view"> 
                        <li class="mui-table-view-cell mui-media" v-for="(item , i) in list5" :key="item.iid">
                            <img class="mui-media-object mui-pull-left" :src="item.img_url">
                            <div class="mui-media-body" >
                                    {{item.title}}
                                <p class='mui-ellipsis'>
                                    <span>{{item.price}}.00</span>
                                    <span>
                                        <div class="mui-numbox">
                                            <button class="mui-btn mui-btn-numbox-minus" type="button" @click="cartSub" :data-iid="item.iid">-</button>
                                            <input class="mui-input-numbox" type="number" :value="item.count"/>
                                            <button class="mui-btn mui-btn-numbox-plus" type="button" @click="cartAdd"  :data-iid="item.iid">+</button>
                                        </div>
                                    </span>
                                    <span class="blue" @click="remove(item.user_id , item.iid, i)">删除</span>
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>   
        <div class="mui-card-footer">合计 : {{getSubTotal}}.00</div>
    </div>
</template>
<script>
    import {Toast} from "mint-ui"
    export default {
        created(){
            this.getMore();
        },
        data(){
            return{
                list5:[],
                
            }
        },
        // mounted(){
        // var url = "http://127.0.0.1:3000/isLogin"
        //     this.axios.get(url).then(result=>{
        //         if(result.data.code==1){
        //             this.isLogin = true;
        //             this.uid = result.data.msg[0].id
        //         }else{
        //             this.isLogin = false;
        //         }
        //     })
        // },
        methods:{
            updateCart(iid,count){
                var url = "http://127.0.0.1:3000/";
                url +="updateCart?iid="+iid;
                url +="&count="+count;
                this.axios.get(url).then(result=>{
                    if(result.data.code == 1){
                        // Toast(result.data.msg);
                    }else{
                        Toast(result.data.msg);
                    }
                })
            },
        cartSub(e){
            var iid = e.target.dataset.iid;
            //修改当前购物车项数量
            //1:创建循环list
            for(var item of this.list5){
                //2:判断当前元素iid是否是iid
                if(item.iid == iid && item.count > 0){
                //3:当前数据减1
                item.count--;
                this.updateCart(iid,item.count);
                this.$store.commit("increment",-1);
                //4:跳出循环
                break;
                }
            }
        },
        cartAdd(e){
            var iid = e.target.dataset.iid;
            console.log(iid);
            for(var item of this.list5){
                if(item.iid == iid && item.count < 999){
                    item.count++;
                      this.updateCart(iid,item.count);
                     this.$store.commit("increment",1);
                    break;
                }
            }
        },
        getMore(){
            var url = "http://127.0.0.1:3000/getCarts";
            this.axios.get(url).then(result=>{
                if(result.data.code==1){
                    Toast("请登录哦!")
                }else{
                 var counts = 0 
                    this.list5 = result.data.data;
                 result.data.data.forEach(item => {
                  counts += parseInt(item.count)  
                  });
                 this.$store.commit("increments",counts);
                 console.log(this.list5);
                 
                }
            })
        },
        remove(user_id ,iid, i) {
            console.log( user_id ,iid , i);
            this.list5.splice(i , 1 )        //删除面板上的
            var url = `http://127.0.0.1:3000/delectList?user_id=${user_id}&iid=${iid}`;
           this.axios.get(url).then(res=>{
                Toast(res.data.msg);
                this.getMore();
            })
        }
      },
      computed:{
          getSubTotal:function(){
              var sum = 0;
              for(var item of this.list5){
                  sum += item.price * item.count;
              }
              return sum;
          },
          cartDate(){
              return this.$store.state.carPanelData;
          }
      }
    }
</script>
<style>
    .mui-card{
        width:100%;
        margin:0;
        padding:0;
    }
    .mui-card .mui-table-view {
        width: 100%;
    }
    .blue {
        color: blue;
        float: right;
    }

</style>
