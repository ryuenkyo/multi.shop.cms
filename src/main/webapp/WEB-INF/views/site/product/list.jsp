<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<link rel="stylesheet" href="${siteTempletDir}/css/list.css" />
<div class="list">
	<c:if test="${empty products}">
		<div class="l_top">
	    	<p>没有商品<span style="color:#ccc;">
	    		<c:if test="${empty shop}">
	    			<a href="${appPath}/site/product/add.do<c:if test='${!empty cat}'>?catId=${cat.id}</c:if>">新增</a>
	    		</c:if>
	    		<c:if test="${!empty shop}">
	    			<a href="${appPath}/site/shop/edit.do?id=${shop.id}">[${shop.shortName}]</a>|
	    			<a href="${appPath}/site/product/choice.do?shopId=${shop.id}">选择商品</a>|
	    			<a href="${appPath}/site/product/add.do?shopId=${shop.id}<c:if test='${!empty cat}'>&catId=${cat.id}</c:if>">新增商品</a>
	    		</c:if>
	    		</span></p>        
	    </div>
    </c:if>
    <c:if test="${!empty products}">
    	<div class="l_top">
	    	<p>商品数量<span style="color:#ccc;">
				<c:if test="${empty shop}">
	    			<a href="${appPath}/site/product/add.do<c:if test='${!empty cat}'>?catId=${cat.id}</c:if>">新增</a>
	    		</c:if>
	    		<c:if test="${!empty shop}">
	    			<a href="${appPath}/site/shop/edit.do?id=${shop.id}">[${shop.shortName}]</a>|
	    			<a href="${appPath}/site/product/choice.do?shopId=${shop.id}">选择商品</a>|
	    			<a href="${appPath}/site/product/add.do?shopId=${shop.id}<c:if test='${!empty cat}'>&catId=${cat.id}</c:if>">[${shop.shortName}]新增商品</a>
	    		</c:if>
			</span></p>        
	    </div>
    	<c:forEach items="${products}" var="obj" varStatus="status">    	
		<div class="l_bottom">
	    	<div class="b_img">
	        	<img src="${obj.logo}" alt="" />
	        </div>
	        <div class="b_list">	        	
	            <p>商品名称：${obj.name}</p>
	            <p>创建时间：${obj.createdDate} </p>
	            <p>商品分类：${obj.parentCat.name}</p>
	            <p>商品数量：${obj.count}件</p>
	            <p>状态：${obj.status.title}</p>
	            <p>价格：${obj.price}元	            
	            	<a href="${appPath}/site/product/del.do?id=${obj.id}">删除</a>
	            	<a href="${appPath}/site/product/edit.do?id=${obj.id}">修改</a>
	            	<c:if test="${obj.status=='onsell'}">
		    			<a href="${appPath}/site/product/undercar.do?id=${obj.id}">下架</a>
		    		</c:if>
		    		<c:if test="${obj.status=='edit'}">
		    			<a href="${appPath}/site/product/pub.do?id=${obj.id}">上架</a>
		    		</c:if>
	            	
	            	
	        </div>
	    </div>
	     </c:forEach>
    </c:if>
</div>

