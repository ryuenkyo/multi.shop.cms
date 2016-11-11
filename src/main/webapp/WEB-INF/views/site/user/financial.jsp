<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<form action="#"  method="POST">
<input type="hidden" name="id" value="${currInfo.id}" />
<div class="tittle">个人基本信息</div>
<div class="i_list">
	<a class="one">
    	<p class="img1">账户总金额：<span>1000.0</span>
    	</p>
    </a>
    <a class="one" href="${appPath}/site/product/list.do">
	    	<p class="img3">资金记录<i></i></p>
	</a>
	<a class="one" href="${appPath}/site/product/list.do">
	    	<p class="img3">充值<i></i></p>
	</a>
	<a class="one" href="${appPath}/site/product/list.do">
	    	<p class="img3">提现<i></i></p>
	</a>

</div>
<div class="button">
	<input type="submit" value="保存" />
</div>
</form>
<div class="margin_bottom"></div>

