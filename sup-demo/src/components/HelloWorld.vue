<template>
  <div class="hello">
   
		
 <div id="doc1">
        <div id="doc1-hd">
            <img class="logo-bg" src="../assets/bg-login@3x-c8e6df37b6.png"  >
            <div class="header">
                <img src="../assets/icon-ynote@3x-798c2d2749.png"  alt="Sup笔记" class="logo"/>
                <p class="open-note"></p>
            </div>
        </div>
        <div id="doc1-bd">
            <a href="javascript:;" class="btn-weixin-login btn-login" id="weixin" title="wechat">
                <img src="img/icWechatBlue48@2x-782ba37504.png" srcset="img/icWechatBlue48-f4f53dceff.png 1x, img/icWechatBlue48@3x-a8a01f3322.png 3x" class="img-login img-weixin" />
                <div class="text-login">微信登录</div>
            </a>
            <a href="javascript:;" class="btn-qq-login btn-login" id="qq" title="qq">
                <img src="img/icQqBlue48@2x-d9b6d6232f.png" srcset="img/icQqBlue48-3613c1d3df.png 1x, img/icQqBlue48@3x-ea306bcb10.png 3x" class="img-login img-qq" />
                <div class="text-login">QQ登录</div>
            </a>
            <a href="javascript:;" class="btn-urs-login btn-login" id="urs-login" title="urs">
                <img src="img/icPhoneBlue48@2x-cd1911c61e.png" srcset="img/icPhoneBlue48-0dba3867bb.png 1x, img/icPhoneBlue48@3x-9db893a1ee.png 3x" class="img-login img-phone" />
                <div class="text-login">手机号登录</div>
            </a>
            <a href="javascript:;" class="btn-netease-login btn-login" id="netease-login" title="netease">
                <img src="img/icNeteaseBlue48@2x-239074a945.png" srcset="img/icNeteaseBlue48-34a9f98733.png 1x, img/icNeteaseBlue48@3x-daba512fce.png 3x" class="img-login img-netease" />
                <div class="text-login">邮箱登录</div>
            </a>
 			 <a href="wenjianjia" class="btn-netease-login1 btn-login" id="netease-login1" title="netease1">
 			     <img src="img/icNeteaseBlue48@2x-239074a945.png" srcset="img/icNeteaseBlue48-34a9f98733.png 1x, img/ic-refresh-48@3x-096838503f.png 3x" class="img-login img-netease1sxsz" />
 			     <div class="text-login">跳转编辑</div>
 			 </a>
 </div>
        </div>
				<div id="doc1-ft">
				        <div class="ft-hd">
				            <div class="fd-hd-line"></div>
				            <div class="text-fd-hd">使用其他方式登录</div>
				            <div class="fd-hd-line-right"></div>
				        </div>
				        <div class="ft-bd">
				            <div class="other-login-container" id="sina">
				                <img src="img/weibo50@2x-e5066030fe.png" srcset="img/weibo50-2ae61f826b.png 1x, img/weibo50@3x-87895faa0c.png 3x" class="image-other-login" />
				                <span class="login-content">微博</span>
				            </div>
				            <div class="other-login-container" id="email">
				                <img src="img/email50@2x-3bafce9fdb.png" srcset="img/email50-87288727ca.png 1x, img/email50@3x-b42935eb13.png 3x" class="image-other-login" />
				                <span class="login-content">企业邮箱</span>
				            </div>
				            <div class="other-login-container" id="dingding">
				                <img src="img/ding50@2x-d7f0760ab0.png" srcset="img/ding50-92d0a66971.png 1x, img/ding50@3x-140e762e50.png 3x" class="image-other-login" />
				                <span class="login-content">钉钉</span>
				            </div>
				        </div>
				    </div>
				</div>
 
 
</div>
    
   
  </div>
</template>

<script>
export default {
  name: 'HelloWorld',
  data () {
    return {
     
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
	html,body,div,span,ul,li,img,p,form{margin:0;padding:0;-webkit-tap-highlight-color: rgba(0,0,0,0);}
	html,body {
	    font-family: 'PingFang SC', Helvetica Neue, Hiragino Sans GB, '微软雅黑','Microsoft Yahei', '宋体', 'simsun', '黑体', Arial, sans-serif;
	    -webkit-text-size-adjust: none;
	    width: 100%;
	    background: white;
	    margin: 0;
	}
	#doc1 {
	    background: #FFFFFF;
	}
	a {text-decoration: none;}
	#doc1-hd {
	    text-align: center;
	    position: relative;
	    height: 2rem;
	}
	.logo-bg {
	    position: relative;
	    top: -0.55rem;
	    width: 100%;
	}
	#doc1-hd .header {
	    width: 100%;
	    top: 0.3rem;
	    position: absolute;
	}
	#doc1-hd .logo {
	    width: 1.2rem;
	    text-align: center;
	}
	#doc1-hd .open-note {
	    font-size: 0.14rem;
	    color: #999999;
	    line-height: 0.2rem;
	    text-align: center;
	}
	#doc1-hd .hd-text {
	    font-size: 0.24rem;
	    color:#333333;
	    font-weight: 600;
	}
	#doc1-bd {
	    margin: 0.13rem 0.24rem 0.57rem;
	}
	#doc1-bd .btn-login {
	    display: block;
	    width: 100%;
	    height: 0.48rem;
	    position: relative;
	    border: 1px solid #e6e6e6;
	    border-radius: 0.04rem;
	    box-sizing: border-box;
	    margin-top: 0.16rem;
	}
	#doc1-bd .img-login {
	    width: 0.24rem;
	    height: 0.24rem;
	    position: absolute;
	    top: 0.12rem;
	    left: 0.93rem;
	}
	#doc1-bd .text-login {
	    position: absolute;
	    top: 0.13rem;
	    left: 1.25rem;
	    color: #333333;
	    font-size: 0.16rem;
	    line-height: 0.225rem;
	}
	#doc1-ft {
	    margin-bottom: 0.2rem;
	}
	#doc1-ft .ft-hd {
	    text-align: center;
	    position: relative;
	    margin-bottom: 0.24rem;
	}
	#doc1-ft .fd-hd-line {
	    width: 0.32rem;
	    height: 1px;
	    border-top: 1px solid #CCCCCC;
	    box-sizing: border-box;
	    display: inline-block;
	    position: absolute;
	    top: 0.07rem;
	    left: 1rem;
	}
	#doc1-ft .fd-hd-line-right {
	    width: 0.32rem;
	    height: 1px;
	    border-top: 1px solid #CCCCCC;
	    box-sizing: border-box;
	    display: inline-block;
	    position: absolute;
	    top: 0.07rem;
	    right: 1rem;
	}
	#doc1-ft .text-fd-hd {
	    color: #B8B8B8;
	    font-size: 0.12rem;
	    line-height: 1;
	}
	#doc1-ft .ft-bd {
	    font-size: 0;
	    text-align: center;
	}
	#doc1-ft .other-login-container {
	    display: inline-block;
	    width: 0.8rem;
	    height: 0.5rem;
	    position: relative;
	    margin-left:0.3rem;
	}
	#doc1-ft .other-login-container:first-child {
	    margin-left: 0;
	    width: 0.7rem;
	}
	#doc1-ft .other-login-container:last-child {
	    margin-left: 0.3rem;
	    width: 0.7rem;
	}
	#doc1-ft .image-other-login {
	    position: absolute;
	    width: 0.25rem;
	    height: 0.25rem;
	    left: 15%;
	    top: 50%;
	    margin-left: -0.125rem;
	    margin-top: -0.125rem;
	}
	#doc1-ft .other-login-container:first-child .image-other-login {
	    left: 25%;
	}
	#doc1-ft .login-content {
	    text-align: left;
	    font-size: 0.14rem;
	    position: absolute;
	    height: 0.25rem;
	    left: 55%;
	    top: 50%;
	    margin-left: -0.125rem;
	    margin-top: -0.1rem;
	    color: #666666;
	}
	#doc1-ft .other-login-container:first-child .login-content {
	    left: 75%;
	}
	#doc1-ft .other-login-container:last-child .login-content {
	    left: 60%;
	}
	#netease {
	    display: none;
	}
	#netease .netease-hd {
	    position: relative;
	    font-size: 0.28rem;
	    color: #333333;
	    margin-top: 0.225rem;
	    height: 0.28rem;
	    line-height: 0.28rem;
	}
	#netease .netease-hd-text {
	    text-align: center;
	    font-weight: 550;
	    font-size: 0.24rem;
	}
	.icon-return {
	    position: absolute;
	    top: 0;
	    left: 0.24rem;
	    height: 0.28rem;
	    line-height: 0.28rem;
	    font-size: 0;
	}
	.icon-return .icon-back {
	    width: 0.2rem;
	    height: 0.2rem;
	    position: relative;
	    top: 0.04rem;
	}
	.icon-return .text-return {
	    font-size: 0.16rem;
	}
	#netease #login {
	    margin: 0.415rem 0.24rem 0;
	    font-size: 0;
	}
	#netease #login .container {
	    width: 100%;
	    height: 0.56rem;
	    border-bottom: 1px solid #E6E6E6;
	    box-sizing: border-box;
	}
	#netease .container input {
	    width: 100%;
	    height: 0.52rem;
	    line-height: 0.52rem;
	    padding-left: 0.08rem;
	    border: none;
	    font-size: 0.16rem;
	    box-sizing: border-box;
	}
	#netease .write-area {
	    font-size: 0.12rem;
	}
	#netease .login {
	    display: block;
	    text-align: center;
	    width: 100%;
	    height: 0.48rem;
	    line-height: 0.48rem;
	    background: #5698ff;
	    border-radius: 0.04rem;
	    margin-top: 0.24rem;
	}
	#netease .login-bind {
	    color: white;
	    font-size: 0.16rem;
	}
	#netease .error {
	    height: 0.24rem;
	    line-height: 0.24rem;
	    color: #d93041;
	}
	#netease .other {
	    margin-top: 0.13rem;
	    font-size: 0.14rem;
	}
	#netease .other a {
	    color: #999999;
	}
	#netease .reg {
	    float: right;
	}
	/*verify code container*/
	.verify-container {
	    position: relative;
	    height: 0.56rem;
	    width: 100%;
	    border-bottom: 1px solid #E6E6E6;
	    box-sizing: border-box;
	    display: none;
	}
	.verify-container .content {
	    width: 100%;
	}
	.verify-container .img-container {
	    width: 0.72rem;
	    float: right;
	    height: 0.4rem;
	    margin-left: 0;
	    position: relative;
	    top: 0.08rem;
	    right: 0.4rem;
	}
	.verify-container .verify-code-img {
	    width: 100%;
	    height: 100%;
	}
	.verify-container .vcode-input-container {
	    height: 0.54rem;
	    border: none;
	    overflow-x: auto;
	    overflow-y: hidden;
	    padding-left: 0.08rem;
	    background: white;
	    box-sizing: border-box;
	}
	.verify-container .verify-code-input {
	    border: none;
	    height: 100%;
	    width: 100%;
	    line-height: normal;
	    outline: none;
	    background: white;
	    font-size: 0.16rem;
	}
	.verify-container .verify-reload {
	    width: 0.24rem;
	    height: 0.24rem;
	    position: absolute;
	    top: 0.16rem;
	    right: 0;
	    display: block;
	}
	::-webkit-input-placeholder { /* WebKit browsers */
	    color: rgba(153, 153, 153);
	}
	:-moz-placeholder { /* Mozilla Firefox 4 to 18 */
	    color: rgba(153, 153, 153);
	}
	::-moz-placeholder { /* Mozilla Firefox 19+ */
	    color: rgba(153, 153, 153);
	}
	:-ms-input-placeholder { /* Internet Explorer 10+ */
	    color: rgba(153, 153, 153);
	}
	
	#urs {
	    display: none;
	}
	#urs .urs-hd {
	    position: relative;
	    font-size: 0.28rem;
	    color: #333333;
	    margin-top: 0.225rem;
	    height: 0.28rem;
	    line-height: 0.28rem;
	}
	#urs .urs-hd-text {
	    text-align: center;
	    font-weight: 550;
	    font-size: 0.24rem;
	}
	#urs .urs-login {
	    margin: 0 auto;
	    width: 100%;
	    height: 700px;
	}
	#urs .bind-error {
	    position: absolute;
	    font-size: 0.14rem;
	    width: 100%;
	    text-align: center;
	    top: 3rem;
	    display: none;
	}
	#urs .text-error {
	    width: 3rem;
	    margin: 0 auto;
	    height: 0.48rem;
	    line-height: 0.48rem;
	    background-color: rgba(0,0,0,0.8);
	    color: white;
	}
	

</style>
