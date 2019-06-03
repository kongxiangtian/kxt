
<template>
  <div class="demo">
   <x-header :right-options="{showMore: true}" @on-click-more="showMenus = true">我的文件夹/文件夹2</x-header>
 <search
      @result-click="resultClick"
      @on-change="getResult"
      :results="results"
      v-model="value"
      position="absolute"
      auto-scroll-to-top
      top="75px"
      @on-focus="onFocus"
      @on-cancel="onCancel"
      @on-submit="onSubmit"
      ref="search"></search>
	   <group label-width="4.5em" label-margin-right="2em" label-align="right">
		 
			 </group>
			 
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
      menus: {
        menu1: '新建文件夹',
        menu2: '新建笔记'
      },
      showMenus: false
    }
  },
	methods:{
		onaddbiji(){
			var result = prompt("新建笔记","demo"); 
			if (result == null){
					  this.$router.push({path: '/wenjianjia'})
					 }
		  else	if (result == ""){
					  alert(  "请注意笔记名不能为空");
					 }
        else if(result !== "") {
            alert(  "笔记"+result+"创建成功");
						 this.$router.push({path: '/bianji'})
						
        }
				
		},
		onaddwenjianjia(){
			var result1 = prompt("新建文件夹","demo"); 
				if (result1 == null){
					  this.$router.push({path: '/wenjianjia'})
					 }
			else if (result1 == ""){
					  alert(  "请注意文件夹名不能为空");
					 }
		    else if (result1 !== "") {
		        alert(  "文件夹"+result1+"创建成功");
						 this.$router.push({path: '/wenjianjia'})
						
		    }
				
		}
	}
}



</script>


<style >

</style>
