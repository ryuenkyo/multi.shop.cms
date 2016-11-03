<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<link rel="stylesheet" href="${siteTempletDir}/css/list.css" />
<div class="list">
	<c:if test="${empty address}">
		<div class="l_top">
	    	<p>没有收货地址<span style="color:#ccc;">
				<a href="${appPath}/site/address/add.do">新建</a>
				</span></p>        
	    </div>
    </c:if>    
    <c:if test="${!empty address}">
    	<c:forEach items="${address}" var="obj" varStatus="status">
    	<div class="l_top">
	    	<p>${obj.contacts}
	    		<span style="color:#ccc;">
	    			<a href="${appPath}/site/address/del.do?id=${obj.id}">删除</a>
	    			<a href="${appPath}/site/address/edit.do?id=${obj.id}">修改</a>
	    		</span>
	    	</p>        
	    </div>
		<div class="l_bottom">
	    	<div class="b_img">
	        	<img src="${siteTempletDir}/images/1.jpg" alt="" />
	        </div>
	        <div class="b_list">
	        	<p>省、直辖市：${obj.province} <input type="button" value=""/></p>
	            <p>街道：${obj.street}</p>
	            <p>地址：${obj.address}
	            	<a href="${appPath}/site/product/list.do?shopId=1">店铺商品</a>
	            	<a href="${appPath}/site/shop/pub.do?id=1">发布</a>
	            	<a href="${appPath}/site/order/list.do?shopId=1">订单</a></p>
	        </div>
	    </div>
	    </c:forEach>
    </c:if>
</div>
