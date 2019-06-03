<template>
	<div class="demo"> 
	<x-header :right-options="{showMore: true}" @on-click-more="showMenus = true">{{this.title}}</x-header>
	<group>
	  <x-textarea  max="300"  name="description"  @on-focus="onEvent('focus')" @on-blur="onEvent('blur')"  title="" v-model="content"><p>{{ content}}</p></x-textarea>
	</group>
	
  <div xialakuang>
    <actionsheet :menus="menus" v-model="showMenus" @on-click-menu="click" @on-click-menu-menu1="onbaocun" @on-click-menu-menu2="onupdate" @on-click-menu-menu3="ondelete" show-cancel></actionsheet>
  </div>	
 <tabbar >
   <tabbar-item  selected  link="/wenjianjia">
     <img slot="icon" src="../assets/wjj.png">
     <span slot="label">文件夹</span>
   </tabbar-item>
   <tabbar-item show-dot link="/bianji">
      <img slot="icon" src="../assets/bj.png">
     <span slot="label">编辑笔记</span>
   </tabbar-item>
   <tabbar-item badge="3" link="/wenjianjia">
 			 <img slot="icon" src="../assets/grzx1.png">
     <span slot="label">我的</span>
   </tabbar-item>
  
 </tabbar>
	</div>
	
	
</template>


<script>
	import { XHeader} from 'vux'
	import { XTextarea } from 'vux'
	import { Group } from 'vux'
	import { Tabbar, TabbarItem } from 'vux'
	import { Actionsheet } from 'vux'
	
	export default {
  components: {
	XHeader,
	Group,
    XTextarea,
	Tabbar,
	TabbarItem,
	Actionsheet
	
  },
  data () {
    return {
		title:"无标题笔记",
		content:null,
		id:this.$route.query.id,
      menus: {
        menu1: '保存',
        menu2: '重命名',
		menu3: '删除'
      },
      showMenus: false
    }
  },
  methods:{
	  onbaocun(){
		  
		   
		  var result1 = prompt("笔记标题","demo"); 
		  	if (result1 == null){
		  		  this.$router.go(0)
		  		 }
		  else if (result1 == ""){
		  		  alert(  "请注意笔记标题不能为空");
		  		 }
		  else if (result1 !== "") {
		
		  	let _bjbName=result1
		  			let self=this;
					
		  			let data ='http://47.103.17.177:80/note/update'+'?'+'noteID'+'='+this.id+'&'+'title'+'='+result1+'&'+'content'+'='+this.content
		  			this.$axios.put(data)
		  .then(function(response){
		  			  //  if(response.data.code ==0){
		  			   		
		  			  //  self.$router.push({path: '/wenjianjia'})
		  			   				
		  			   console.log(response);
		  			   alert(  "保存成功");
		  			   self.title=self.result1;
		  			  self.$router.go(0)
		  			  // }
		  			   
		  })
		  				
		  			.catch(function(error){
		  				console.log(error);
		  			})
		  
		  		
					}
	  },
	 onupdate(){
	 		  var result = prompt("重命名笔记","demo"); 
	 		  if (result == null){
	 		  		    self.$router.go(0)
	 		  		 }
	 		  else	if (result == ""){
	 		  		  alert(  "请注意笔记名不能为空");
	 		  		 }
	 		    else if(result !== "") {
	 		        alert(  "修改成功");
	 				this.title=result;
	 		  			 self.$router.go(0)
	 		  			
	 		    }
	 		  
	 },
  ondelete(){
	  var self=this;
	   	let data ='http://47.103.17.177:80/note/delete'+'?'+'id'+'='+this.id	   		
			this.$axios.delete(data)
	   .then(function(response){
	   			   if(response.data.code ==0){
	   			   		
	   			  
	   			   				
	   			  alert("删除成功")
				   self.$router.push({path: '/wenjianjia'})
	   			   }
	   			   
	  })
	   				
	   			.catch(function(error){
	   				console.log(error);
	   			})
	  },
		  
	  onview(){
		  var self=this;
		   	let data ='http://47.103.17.177:80/note/detail'+'?'+'noteID'+'='+this.id
		  this.$axios.get(data)
		   .then(function(response){
		   			   //if(response.data.code ==0){
		   			   		
		   			  
		   			   			self.content=response.data.data.content	
							//	$('.text').val()
		   			  //alert("删除成功")
		  				 //  self.$router.push({path: '/wenjianjia'})
		   			  // }
		   			   console.log(response);
					   console.log(response.data.data.content);
					   console.log(self.content);
		  })
		   				
		   			.catch(function(error){
		   				console.log(error);
		   			})
	  }
  
 
  },

  created(){
  this.onview();
  
  }
  
}

    
       
    
</script>

<style>
</style>

