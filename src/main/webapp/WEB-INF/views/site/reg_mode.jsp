<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="gb2312">
<meta http-equiv="X-UA-Compatible" content="IE=8">
<meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0'/> 
<title>商铺信息</title>
<link rel="stylesheet" href="${siteTempletDir}/css/info.css" />
</head>

<body>
<div class="state">
	
</div>
<div class="tittle">注册方式选择</div>
<div class="i_list">
	<a class="one" href="${appPath}/site/register.do">
    	<p class="img1">普通注册：<span></span>	</p>
    </a>
	<a class="one" href="${appPath}/site/register.do">
    	<p class="img2">手机号注册：<span></span>	</p>
    </a>
	<a class="one" href="${appPath}/site/wx_register.do">
    	<p class="img3">微信注册<i></i></p>
    </a>
</div>
<div class="margin_bottom"></div>

</body>
</html>
