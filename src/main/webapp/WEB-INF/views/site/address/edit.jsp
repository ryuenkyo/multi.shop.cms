<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<script type="text/javascript" src="${siteTempletDir}/js/jquery.js"></script>
<link rel="stylesheet" href="${siteTempletDir}/css/list.css" />
<div class="list">
<form action="#"  method="POST">
<input type="hidden" name="id" value="${form.id}" />
<div class="list">
	<div class="l_top">
		<p>修改地址<span style="color:#ccc;">
			<a href="${appPath}/site/address/list.do">返回地址列表</a>  		
		</span></p>        
	</div>
</div>
	<div class="l_bottom">
	    <div class="b_list">	    
	    	<p>收货人：<span style="color:#ccc;">
	    		<input id="contacts" type="text" value="${form.contacts}" name="contacts">
	    		</span>
	    	</p>
	    	<p >省、直辖市：<input id="province" type="text" value="${form.province}" name="province"></p>	    	
	        <p >收货地址：<input id="street" type="text" value="${form.street}" name="street"></p>
	        <p>联系电话：<input id="phone" type="text" value="${form.phone}" name="phone"></p>
	    </div>
	</div>
	<div class="button">
		<input type="submit" value="保存" />
	</div>
</form>	
</div>
