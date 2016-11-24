<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<div class="tittle">用户中心</div>
<form action="${appPath}/logout.do"  method="POST">
<div class="i_list">
    <a class="one" href="${appPath}/site/user/profile.do">
	    	<p class="img3">个人信息<i></i></p>
	</a>
	<a class="one" href="${appPath}/site/user/main.do">
	    	<p class="img3">我的业务<i></i></p>
	</a>
	<a class="one" href="${appPath}/site/user/bi.do">
	    	<p class="img3">商务管理<i></i></p>
	</a>

</div>
<div class="button">
	<input type="submit" value="退出" />
</div>
</form>
<div class="margin_bottom"></div>

