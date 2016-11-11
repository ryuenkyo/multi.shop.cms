<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<form action="#"  method="POST">
<input type="hidden" name="id" value="${currInfo.id}" />
<div class="tittle">个人信息</div>
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
	<a class="one" href="${appPath}/site/user/financial.do">
	    	<p class="img3">我的财务<i></i></p>
	</a>

</div>
<div class="button">
	<input type="submit" value="保存" />
</div>
</form>
<div class="margin_bottom"></div>

