
<template>
  <div class="demo">
    <h1>{{ msg }}</h1>
		<div class="login-wrap" v-show="showLogin">
		    <h3>登录</h3>
		    <p v-if="showTishi">{{tishi}}</p>
		    <input type="text"  v-model="username">
		    <input type="password"  v-model="password">
		    <button v-on:click="login">登录</button>
		    <span v-on:click="ToRegister">没有账号？马上注册</span>
		</div>
   
<icon type="success"></icon>
   <icon type="info"></icon>
  </div>
</template>

<script>
	import { Icon } from 'vux'


export default {
components: {
     Icon
  },	
  name: 'demo',
  data () {
    return {
      msg: '321首页'
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1, h2 {
  font-weight: normal;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
