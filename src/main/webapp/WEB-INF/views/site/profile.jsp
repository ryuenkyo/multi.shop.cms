<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<form action="#"  method="POST">
<input type="hidden" name="id" value="${currInfo.id}" />
<div class="tittle">个人基本信息</div>
<div class="i_list">
	<a class="one">
    	<p class="img1">姓名：<span>
    		<input id="realname" type="text" value="${currInfo.realname}" name="realname">
    		</span>
    	</p>
    </a>
	<a class="one">
    	<p class="img2">电话：<span>
			<input id="phone" type="text" value="${currInfo.phone}" name="phone">
			</span>
		</p>
    </a>
    <a class="one">
    	<p class="img3">我的邀请码：<span>${currInfo.phone}</span>
		</p>
    </a>
    <a class="one" href="${appPath}/site/address/list.do">
	    	<p class="img3">个人信息<i></i></p>
	</a>
	<%--<a class="one" href="${appPath}/site/user/agent.do">
	    	<p class="img3">我的代理<i></i></p>
	</a>--%>
    <a class="one" href="${appPath}/site/shop/list.do">
	    	<p class="img3">我的店铺<i></i></p>
	</a>
	<a class="one" href="${appPath}/site/cat/list.do">
	    	<p class="img3">我的分类<i></i></p>
	</a>
	<a class="one" href="${appPath}/site/product/list.do">
	    	<p class="img3">我的商品<i></i></p>
	</a>

</div>
<div class="button">
	<input type="submit" value="保存" />
</div>
</form>
<div class="margin_bottom"></div>

