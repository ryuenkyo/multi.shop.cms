<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<form action="#"  method="POST">
<input type="hidden" name="id" value="${currInfo.id}" />
<div class="tittle">我的业务</div>
<div class="i_list">
	<a class="one" href="${appPath}/site/user/recommend.do">
	    	<p class="img3">我的推荐码<i></i></p>
	</a>
    <a class="one" href="${appPath}/site/shop/list.do">
	    	<p class="img3">我的店铺<i></i></p>
	</a>
	<a class="one" href="${appPath}/site/product/list.do">
	    	<p class="img3">我的商品<i></i></p>
	</a>
	<a class="one" href="${appPath}/site/user/agent.do">
	    	<p class="img3">我的代理<i></i></p>
	</a>
    <a class="one" href="${appPath}/site/shop/info.do">
	    	<p class="img3">信息设置<i></i></p>
	</a>	

</div>
<div class="button">
	<input type="submit" value="保存" />
</div>
</form>
<div class="margin_bottom"></div>

