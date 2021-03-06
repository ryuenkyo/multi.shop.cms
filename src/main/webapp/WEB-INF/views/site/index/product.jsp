<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<link rel="stylesheet" href="${siteTempletDir}/css/list.css" />
<div class="list">
	<c:if test="${empty products}">
		<div class="l_top">
	    	<p>没有商品<span style="color:#ccc;">
	    		<c:if test="${empty shop}">
	    			<a href="${appPath}/site/product/add.do">新增</a>
	    		</c:if>
	    		<c:if test="${!empty shop}">
	    			<a href="${appPath}/site/shop/edit.do?id=${shop.id}">[${shop.shortName}]</a>|
	    			<a href="${appPath}/site/product/choice.do?shopId=${shop.id}">选择商品</a>|
	    			<a href="${appPath}/site/product/add.do?shopId=${shop.id}">新增[${shop.shortName}]商品</a>
	    		</c:if>
	    		</span></p>        
	    </div>
    </c:if>
    <c:if test="${!empty products}">
    	<div class="l_top">
	    	<p>商品列表<span style="color:#ccc;">
				<a href="${appPath}/site/shop_cart/list.do">我的购物车</a>
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
	            <p>商品分类：${obj.parentCat.name}	            </p>
	            <p>商品数量：${obj.count}件</p>
	            <p>价格：${obj.price}元   </p>
	            <p>购买：1	            	
	            	<a href="${appPath}/site/shop_cart/decrease.do?productId=${obj.id}">-</a>
	            	<a href="${appPath}/site/shop_cart/increment.do?productId=${obj.id}">+</a>
	            </p>
	        </div>
	    </div>
	     </c:forEach>
    </c:if>
</div>

