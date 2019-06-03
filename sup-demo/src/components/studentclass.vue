<template>
	<div>
		<x-header class="hd" id="header" :left-options="{backText: ''}">
			<span style="float: left;">学生小颖的课表</span>
			<a slot="right">
				<el-dropdown  @command="handleCommand" trigger="click">
      <span class="el-dropdown-link" style="color: white; font-size: 10px;" >{{week}}</span>
      <el-dropdown-menu slot="dropdown" >
        <el-dropdown-item command="2016,第一学期">2016,第一学期</el-dropdown-item>
        <el-dropdown-item command="2016,第二学期">2016,第二学期</el-dropdown-item>
        <el-dropdown-item command="2017,第一学期">2017,第一学期</el-dropdown-item>
        <el-dropdown-item command="2017,第二学期">2017,第二学期</el-dropdown-item>
        <el-dropdown-item command="2018,第一学期">2018,第一学期</el-dropdown-item>
		<el-dropdown-item command="2018,第二学期" style="color: green;" >2018,第二学期</el-dropdown-item>

      </el-dropdown-menu>
    </el-dropdown>
			</a>

		</x-header>


		<div id="box">
			<div class="search" style="width: 96%;margin-left: 5px;">
				<x-input title="搜索" type="text" placeholder="  输入课程名" class="searchBox" v-model="searchVal" style="background-color:#EDEDED;padding-top: 10px;margin-top: 10px; "></x-input>
			</div>
			<div style="padding:15px;">
				<load-more tip="老师信息列表" :show-loading="false" background-color="#fbf9fe" style=" margin-top: 5px; margin-bottom: 5px;"></load-more>
				<x-table full-bordered style="background-color:#fff;">
					<thead>
						<tr>
							<th>课程名</th>
							<th>老师</th>
							<th>听课评分</th>
						</tr>
					</thead>
					<tbody>
						<tr v-for='(item, key) in list'>
							<td style=" color: #000000;"><el-button type="text" style=" color: #000000;" v-on:click="nameto" >{{item.name}}</el-button></td>
							<td>{{item.teacher}}</td>
							<td>{{item.state}}</td>
						</tr>
					</tbody>
				</x-table>
			</div>
			<br />
			<br />
			<br />
			<br />
		</div>
	</div>
</template>

<script>
	import {
		XTable,
		Cell,
		LoadMore,
		XInput,
		Popover,
		XHeader
	} from 'vux'

	export default {
		data() {
			return {
				week: "2018,第二学期",
				goodsList: [
					//假数据
					{
						teacher: "章老师",
						name: "计算机组成原理",
						state:9.5
					},
					{
						teacher: "谢老师",
						name: "大学物理（下）",
						state:6.0
					},
					{
						teacher: "吴老师",
						name: "线性代数",
						state:8.5
					},
					{
						teacher: "T老师",
						name: "高级英语（下）",
						state:8.5
					},
					{
						teacher: "陆老师",
						name: "法医学",
						state:9.0
					},
					{
						teacher: "陈老师",
						name: "软件工程需求",
						state:9.1
					},
					{
						teacher: "王老师",
						name: "马克思主义基本原理概论",
						state:7.9
					},
					{
						teacher: "谢老师",
						name: "企业经营",
						state:8.9
					}
				],
				goodsList5: [
					//假数据
					{
						teacher: "潘老师",
						name: "大学物理实验",
						state:9.9
					},
					{
						teacher: "杨老师",
						name: "数据结构",
						state:7.7
					},
					{
						teacher: "陈老师",
						name: "Python程序设计",
						state:6.5
					},
					{
						teacher: "厉老师",
						name: "计算机历史与思想",
						state:8.9
					},
					{
						teacher: "陆老师",
						name: "中国近现代史纲要",
						state:8.5
					},
					{
						teacher: "陈老师",
						name: "创新与创业管理",
						state:8.3
					},
					{
						teacher: "王老师",
						name: "大学生职业生涯",
						state:7.9
					},
					{
						teacher: "谢老师",
						name: "Java程序设计",
						state:6.9
					}
				],
				searchVal: '', //默认输入为空
			}
		},
		methods: {
			orderFn(letter, original) {
				this.letter = letter; //排序字段 price or sales
				this.original = original; //排序方式 up or down
			},
			handleCommand(command) {
        this.week=command;
      },
			nameto(){
				this.$router.push('/classtotal')
			}
		},
		//通过计算属性过滤数据
		computed: {
			list: function() {
				var _this = this;
				//逻辑-->根据input的value值筛选goodsList中的数据
				var arrByZM = []; //声明一个空数组来存放数据
				if (this.week == "2018,第二学期") {
					for (var i = 0; i < this.goodsList.length; i++) {
						//for循环数据中的每一项（根据name值）
						if (this.goodsList[i].name.search(this.searchVal) != -1) {
							//判断输入框中的值是否可以匹配到数据，如果匹配成功
							arrByZM.push(this.goodsList[i]);
							//向空数组中添加数据
						}
					}
				} else {
					for (var i = 0; i < this.goodsList5.length; i++) {
						//for循环数据中的每一项（根据name值）
						if (this.goodsList5[i].name.search(this.searchVal) != -1) {
							//判断输入框中的值是否可以匹配到数据，如果匹配成功
							arrByZM.push(this.goodsList5[i]);
							//向空数组中添加数据
						}
					}
				}
				//逻辑-->升序降序排列 false: 默认从小到大 true：默认从大到小
				//判断，如果要letter不为空，说明要进行排序
				if (this.letter != '') {
					arrByZM.sort(function(a, b) {
						if (_this.original) {
							return b[_this.letter] - a[_this.letter];
						} else {
							return a[_this.letter] - b[_this.letter];
						}
					});
				}
				//一定要记得返回筛选后的数据
				return arrByZM;
			}
		},
		components: {
			XTable,
			LoadMore,
			XInput,
			Popover,
			Cell,
			XHeader
		}
	};
</script>

<style>
	
	.hd {
			position: relative;
			background-color: #306162 !important; 
			height: 50px;
			line-height: 50px !important;
			font-size: 25px !important;
		}
	
	body {
		display: block;
		margin: 0px;
	}

	.header {
		float: right;
	}

	

	.app-container {
		padding-top: 0px;
	}

	.popover-demo-content {
		padding: 5px 10px;
	}

	.vux-popover .v-transfer-dom {
		top: 40px;
		left: 70%;
		right: 5px;
		margin-left: 330px;

	}

	.vux-popover-arrow-up {
		width: 70%;
	}
</style>
