<template>
	
	
    <div>
       
	   <div>
		   <img src="../assets/bjlogo.png" width="150" height="150" style="position:absolute;left:110px;top:100px;">
		   </div>
        
        <div class="login" style="position:absolute;left:90px;top:300px;">
          账号 <input type="text" placeholder="请输入用户名" v-model="name"></br>
          密码 <input type="password" placeholder="请输入密码" v-model="password"></br>
           
            
        </div>
		<div class="button" >

        
		<x-button :gradients="['#1D62F0', '#19D5FD']" @click.native="login" style="position:absolute;left:0px;top:400px;">注册</x-button>
		<x-button :gradients="['#1D62F0', '#19D5FD']" link="/login" style="position:absolute;left:0px;top:450px;" >已有账号，返回登录</x-button>
		</div>
    </div>
	
</template>


<script>
	import { XHeader} from 'vux'
	import { Search } from 'vux'
	import { Tabbar, TabbarItem } from 'vux'
	import { Group } from 'vux'
	import { Cell } from 'vux'
	import { Actionsheet } from 'vux'
	import { Confirm } from 'vux'
	import { Icon } from 'vux'
	import { XButton } from 'vux'

	
	
	export default{
		components:{
	XHeader,
	Search,
	Tabbar,
	TabbarItem,
	Group,
	Cell,
	Actionsheet,
	Confirm,
	Icon,
	XButton
	},
		
		

  methods:{
	  
    login(){
        if(this.name == "" || this.password == ""){
            alert("请输入用户名或密码")
        }else{
			var _name=this.name
			var _password=this.password
			let self=this;
			this.$axios.post('http://47.103.17.177:80/register',{
				
					'name':_name,
					'password':_password,
				
			},{},
			
			{withCredentials:true}
			)
           .then(function(response){
			    if(response.data.code ==0){
			   		alert("注册成功！"
					)
			    self.$router.push({path: '/login'})
			   				
			   console.log(response);
			   }
			   
		   })
				
			.catch(function(error){
				console.log(error);
			})
      
 
            
				 //if(res.data.code ==0){
		
                 // this.$router.push({path: '/wenjianjia'})
				
				  
				
             // }
         // })
      }
    },
	
		
  }
}
	
</script>

<style>
   
</style>
