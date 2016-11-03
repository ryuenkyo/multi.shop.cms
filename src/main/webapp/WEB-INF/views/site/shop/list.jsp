<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<link rel="stylesheet" href="${siteTempletDir}/css/list.css" />
<div class="list">
	<c:if test="${empty shop}">
		<c:if test="${empty shops}">
		<div class="l_top">
	    	<p>没有店铺<span style="color:#ccc;">
	    		<a href="${appPath}/site/shop/add.do">创建</a></span></p>        
	    </div>
    	</c:if>
    </c:if>
    <c:if test="${!empty shops}">
    	<div class="l_top">
	    	<p>我的店铺
	    		<span style="color:#ccc;">
	    			<a href="${appPath}/site/shop/add.do">新增</a>
	    		</span>
	    	</p>        
	    </div>
    	<c:forEach items="${shops}" var="obj" varStatus="status">    	
		<div class="l_bottom">
	    	<div class="b_img">
	        	<img src="${nginxUrl}${shop.logo}" alt="" />
	        </div>
	        <div class="b_list">
	        	<p>店铺名称：${obj.shortName}</p>
	        	<p>创建时间：${obj.createdDate} </p>
	            <p >店铺地址：${obj.address}</p>
	            <p>联系电话：${obj.telephone}	  </p>
	            <p>
	            	<a href="${appPath}/site/shop/edit.do?id=${obj.id}">修改</a>
	            	<a href="${appPath}/site/order/list.do?shopId=${obj.id}">订单</a>
	            	<a href="${appPath}/site/product/list.do?shopId=${obj.id}">店铺商品</a>
	            	<a href="${appPath}/site/cat/list.do?shopId=${obj.id}">分类</a>
	            	<a href="${appPath}/site/ad/list.do?shopId=${obj.id}">店铺广告</a></p> 
	        </div>
	    </div>
	    </c:forEach>
    </c:if>
</div>
