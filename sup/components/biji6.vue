<template>
	<div class="demo"> 
	<x-header :right-options="{showMore: true}" @on-click-more="showMenus = true">Java笔记</x-header>
	<group>
    <x-textarea  max="300"  name="description"  @on-focus="onEvent('focus')" @on-blur="onEvent('blur')"  title="" v-model="value"></x-textarea>
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
      menus: {
        menu1: '保存',
        menu2: '重命名',
		delete: '<span style="color:red">删除</span>'
      },
      showMenus: false
    }
  },
  methods:{
	  onbaocun(){
		  alert( "保存成功");  
	  },
	  onupdate(){
		  var result = prompt("重命名笔记","demo"); 
		  if (result == null){
		  		  this.$router.push({path: '/bianji'})
		  		 }
		  else	if (result == ""){
		  		  alert(  "请注意笔记名不能为空");
		  		 }
		    else if(result !== "") {
		        alert(  "修改成功");
		  			 this.$router.push({path: '/bianji'})
		  			
		    }
		  
  },
  ondelete () {
      this.showSuccess = true
    }
  
  }
}

    
       
    
</script>

<style>
</style>

