
<template>
  <div class="demo">
   <x-header :right-options="{showMore: true}" @on-click-more="showMenus = true">{{bookName}}</x-header>
 
	   
			    <ul >
			   	
			   	
			   	<div class="item.id" v-for="item in List1" v-bind:key="item.bookName"  v-on:click="tiaozhuan1(item.id,item.bookName)">
			   		
			   		 <img class="p1" src="../assets/wjj123.png">
			   		 
			   			<a class="wjjtitle"  >{{item.bookName}}</a>
			   			
			   	</div>
			   		
			   </ul>
			   <ul >
			  	
			  	
			  	<div class="bjb" v-for="item in List2" v-bind:key="item.title" v-on:click="tiaozhuan2(item.id)">
			  		
			  		 <img class="p1" src="../assets/bjb.png">
			  		 
			  			<a class="bjbtitle"  >{{item.title}}</a>
			  			
			  	</div>
			  		
			  </ul>
			 
		<div xialakuang>
      <actionsheet :menus="menus" v-model="showMenus" @on-click-menu="click" @on-click-menu-menu1="onaddwenjianjia" @on-click-menu-menu2="onaddbiji" show-cancel></actionsheet>
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


<i18n>
	Confirm deleting the item:
  zh-CN: 操作提示
	</i18n>
<script>
	import { XHeader} from 'vux'
	import { Search } from 'vux'
	import { Tabbar, TabbarItem } from 'vux'
	import { Group } from 'vux'
	import { Cell } from 'vux'
	import { Actionsheet } from 'vux'
	import { Confirm } from 'vux'
	export default {
  components: {
  XHeader,
  Search,
  Tabbar,
  TabbarItem,
  Group,
  Cell,
  Actionsheet,
  Confirm
  },
  data () {
    return {
		fatherid:this.$route.query.id,
		bookName:this.$route.query.bookName,
		List1:null,
				List2:null,
      menus: {
        menu1: '新建文件夹',
        menu2: '新建笔记'
      },
      showMenus: false
    }
  },
	methods:{
		tiaozhuan1(id,bookName){
			 this.$router.push({path: '/wenjianjia2' ,query:{id:id,bookName:bookName}})
			 this.$router.go(0)
		},
		tiaozhuan2(id){
			 this.$router.push({path: '/biji1',query:{id:id}})
		},
		onaddbiji(){
			
			
		
						
								let self=this;
								let data ='http://47.103.17.177:80/note/create'+'?'+'fatherID'+'='+this.fatherid
								this.$axios.post(data)
					.then(function(response){
								  //  if(response.data.code ==0){
								   		
								  //  self.$router.push({path: '/wenjianjia'})
								   		  console.log(data);		
								   console.log(response);
								   alert(  "笔记创建成功");
								  // self.$router.push({path: '/bianji'})
								 self.$router.go(0)
								  // }
								   
					})
									
								.catch(function(error){
									console.log(error);
								})
		    //alert(  "笔记"+result+"创建成功");
						 //this.$router.push({path: '/bianji'})
						
		
				
		},
		onaddwenjianjia(){
			var result1 = prompt("新建文件夹","123"); 
				if (result1 == null){
					 // this.$router.push({path: '/wenjianjia'})
					  self.$router.go(0)
					 }
			else if (result1 == ""){
					  alert(  "请注意文件夹名不能为空");
					 }
		    else if (result1 !== "") {
				
							
							let _bookName=result1
							let self=this;
							let data ='http://47.103.17.177:80/notebook/create'+'?'+'fatherID'+'='+this.fatherid+'&'+'bookName'+'='+result1
							this.$axios.post(data)
				.then(function(response){
							  //  if(response.data.code ==0){
							   		
							  //  self.$router.push({path: '/wenjianjia'})
							   		if(response.data.code==-1){
										alert(  "文件夹名字重复，请勿重新创建");
									}		
									else if(response.data.code==0){
										alert( "文件夹"+result1+"创建成功");
										 self.$router.go(0)
									}
							   
							  
							   
							
							  // }
							   
				})
								
							.catch(function(error){
								console.log(error);
							})
							}
					//let data ='http://47.103.17.177:80/notebook/create'+'?'+'fatherID'+'='+'123'+'&'+'bookName'+'='+result1
					 
				
					// this.$http.post(data).then((res)=>{
					
					   //  console.log(res)
				//}) 
				//this.cell1=true
				//this.titles1=result1
				// Vue.set(this.items,0,{cell1:true})
			//	this.$set(this.cell1,true)
		       // alert(  "文件夹"+result1+"创建成功");
						// self.$router.push({path: '/wenjianjia'})
						
		//    }
				
		},
		getwjj(){
			
			var self=this;
			
			let data ='http://47.103.17.177:80/notebook/list'+'?'+'fatherID'+'='+this.fatherid
			this.$axios.get(data)
			.then(function(response){
						  //  if(response.data.code ==0){
						   		
						  //  self.$router.push({path: '/wenjianjia'})
						  
						for (var i = 0; i < response.data.data.bookList.length; i++) {
						   			self.List1=response.data.data.bookList
										}
										//console.log( response.data.data.bookList[1].bookName)
									  console.log(response);	
										
						  //for(var j = 0; j < response.data.data.bookList.length; j++){
							 // console.log(List[j]);
						 // }
						    
						  // }
						   
			})
		},
			
		getbjb(){
				var self=this;
			
			let data ='http://47.103.17.177:80/notebook/list'+'?'+'fatherID'+'='+this.fatherid
			this.$axios.get(data)
			.then(function(response){
						  //  if(response.data.code ==0){
						   		
						  //  self.$router.push({path: '/wenjianjia'})
						  
						for (var i = 0; i < response.data.data.noteList.length; i++) {
									self.List2=response.data.data.noteList
									}
										//console.log( response.data.data.bookList[1].bookName)
									  console.log(self.List2);	
										
						  //for(var j = 0; j < response.data.data.bookList.length; j++){
							 // console.log(List[j]);
						 // }
						    
						  // }
						   
			})
		}
	},
	mounted:function(){
		//this.loading();
	this.getwjj();
	this.getbjb();
	}
}



</script>


<style >
.p1{width:39px;height: auto;max-height: 90px;max-width: 50px; min-width:39px}
</style>
