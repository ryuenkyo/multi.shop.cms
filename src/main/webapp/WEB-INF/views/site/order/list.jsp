<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<link rel="stylesheet" href="${siteTempletDir}/css/list.css" />
<div class="list">
	<c:if test="${empty orders}">
		<div class="l_top">
	    	<p>没有订单<span style="color:#ccc;"><a href="${appPath}/site/shop/index.do?shopId=1">去购买</a></span></p>        
	    </div>
    </c:if>   
    <c:if test="${empty orders}">
    	<c:forEach items="${orders}" var="obj" varStatus="status">
    	<div class="l_top">
	    	<p>订单名称<span style="color:#ccc;">修改</span></p>        
	    </div>
		<div class="l_bottom">
	    	<div class="b_img">
	        	<img src="${siteTempletDir}/images/1.jpg" alt="" />
	        </div>
	        <div class="b_list">
	        	<p>商品名称：2016-11-11 15:20 <input type="button" value=""/></p>
	            <p>商品数量：3个</p>
	            <p>单价：2</p>
	            <p>总价：6元
	            	<a href="${appPath}/site/product/list.do?shopId=1">商品订单</a>
	            	<a href="${appPath}/site/shop/pub.do?id=1">发布</a></p>
	        </div>
	    </div>
	     </c:forEach>
    </c:if>
</div>

