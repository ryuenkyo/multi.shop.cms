<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<link rel="stylesheet" href="${siteTempletDir}/css/list.css" />
<div class="list">
	<c:if test="${!empty shop}">
	<c:if test="${empty products}">
		<div class="l_top">
	    	<p>没有分类<span style="color:#ccc;">
	    			<a href="${appPath}/site/shop/edit.do?id=${shop.id}">[${shop.shortName}]</a>|
	    			<a href="${appPath}/site/cat/add.do?shopId=${shop.id}">新增分类</a>
	    		</span></p>        
	    </div>
    </c:if>
    <c:if test="${!empty products}">
    	<div class="l_top">
	    	<p>分类数量<span style="color:#ccc;">
	    			<a href="${appPath}/site/shop/edit.do?id=${shop.id}">[${shop.shortName}]</a>|
	    			<a href="${appPath}/site/cat/add.do?shopId=${shop.id}">新增分类</a>
			</span></p>        
	    </div>
    	<c:forEach items="${products}" var="obj" varStatus="status">
    		 <c:if test="${!obj.select}">
    	<div class="l_top">
	    	<p>${obj.name}<span style="color:#ccc;"></span></p>        
	    </div>
		<div class="l_bottom">
	    	<div class="b_img">
	        	<img src="${nginxUrl}${obj.logo}" alt="" />
	        </div>
	        <div class="b_list">
	            <p>分类标题：${obj.name}</p>
	            <p>
	            	<a href="${appPath}/site/product/shop_add_product.do?shopId=${shop.id}&id=${obj.id}">选择</a></p>
	        </div>
	    </div>
	     </c:if>
	    </c:forEach>
    </c:if>
    </c:if>
</div>

