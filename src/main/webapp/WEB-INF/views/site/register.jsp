<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<script type="text/javascript" src="${siteTempletDir}/js/jquery.js"></script>
<!doctype html>
<html>
<head>
<meta charset="gb2312">
<meta http-equiv="X-UA-Compatible" content="IE=8">
<meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0'/> 
<title>用户注册</title>
<style>
*{padding:0;margin:0; border:none;font-weight:normal;font-family:"微软雅黑";}
html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, del, dfn, em, img, ins, kbd, q, samp, small, strong, b, i, dl, dt, dd, ol, ul, li, fieldset, form, label, table, tbody, tfoot, thead, tr, th, td, article, aside, footer, header, nav, section {
  margin:0;
  padding:0;
  border:0;
  outline:0;
  font-size:100%;
  vertical-align:baseline;
  background:transparent;
}
a{text-decoration:none;}

html.body{width:100%;height:100%;overflow:hidden;}
body{width:100%;height:100%;background:url(${siteTempletDir}/images/bld.jpg) no-repeat;background-size:cover;background-color:#1f93dc;}
.tittle{width:94%;margin:140px auto 0;text-align:center;overflow:hidden;line-height:48px;font-size:24px;color:#fff;margin-top:box-shadow: 0px -1px 3px 0px rgb( 179, 179, 179 );font-weight:600;border-bottom:1px solid #f0f0f0;}
.box{width:100%;height:60%;padding:10px 0;margin:20px auto;background:url(${siteTempletDir}/images/bg1.png) repeat;background-size:cover;overflow:hidden;border-radius:5px;}

.box .name{width:90%;margin:40px auto 20px;overflow:hidden;}
.name span{width:30%;float:left;display:block;line-height:28px;font-size:16px;padding:5px 0;color:#fff;}
.name input{width:70%;text-align:center;float:left;display:block;line-height:28px;font-size:14px;padding:5px 0;color:#ccc;border-radius:5px;}

.box .code{width:90%;margin:40px auto 20px;overflow:hidden;}
.code span{width:30%;float:left;display:block;line-height:28px;font-size:16px;padding:5px 0;color:#fff;}
.code input{width:70%;text-align:center;float:left;display:block;line-height:28px;font-size:14px;padding:5px 0;color:#ccc;border-radius:5px;}

.box .passward{width:90%;margin:40px auto 20px;overflow:hidden;}
.passward span{width:30%;float:left;display:block;line-height:28px;font-size:16px;padding:5px 0;color:#fff;}
.passward input{width:70%;text-align:center;float:left;display:block;line-height:28px;font-size:14px;padding:5px 0;color:#ccc;border-radius:5px;}

.box .login{width:90%;margin:40px auto 20px;overflow:hidden;}
.login input{width:40%;text-align:center;float:left;display:block;line-height:28px;font-size:14px;padding:5px 0;color:#ccc;border-radius:5px;}

</style>
</head>

<body>
	<form method="post" action="#" name="login_form">
		<div class="tittle">注册页<form:errors path="result.code" cssClass="error" /></div>
	    <div class="box">
		    <div class="name"><span>手机：</span><input type="text" name="username" value=""/></div>
		    <div class="passward"><span>密码：</span><input type="password" name="password" value=""/></div>
		    <div class="login">
		    	<input style="float:right;background-color:#eb4f38;color:#fff;" type="submit" value="注册" />
		    	<input id="toLogin" style="float:right;margin-right:32px;background-color:transparent;border:1px solid #fff;color:#fff;" type="button" value="我有账号"/>
		    </div>
	    </div>
     </form>
</body>
</html>
<script type="text/javascript">
     $(document).ready(function(){
		$("#toLogin").click(function(){
			window.location.href="${appPath}/site/login.do"; 
		});
    });
</script>