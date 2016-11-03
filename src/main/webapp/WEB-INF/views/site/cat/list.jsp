<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<link rel="stylesheet" href="${siteTempletDir}/css/list.css" />
<div class="list">
	<c:if test="${empty cats}">
		<div class="l_top">
	    	<p>没有分类<span style="color:#ccc;">
	    		<c:if test="${empty shop}">
	    			<a href="${appPath}/site/shop/list.do">我的店铺</a>
	    			<a href="${appPath}/site/cat/add.do">新增</a>
	    		</c:if>
	    		<c:if test="${!empty shop}">
	    			<a href="${appPath}/site/shop/edit.do?id=${shop.id}">[${shop.shortName}]</a>|
	    			<a href="${appPath}/site/cat/choice.do?shopId=${shop.id}">选择分类</a>|
	    			<a href="${appPath}/site/cat/add.do?shopId=${shop.id}">新增分类</a>
	    		</c:if>
	    		</span></p>        
	    </div>
    </c:if>
    <c:if test="${!empty cats}">
    	<div class="l_top">
	    	<p><a href="${appPath}/site/cat/list.do">全部分类</a><span style="color:#ccc;">
				<c:if test="${empty shop}">
	    			<a href="${appPath}/site/cat/add.do">新增</a>
	    		</c:if>
	    		<c:if test="${!empty shop}">
	    			<a href="${appPath}/site/shop/edit.do?id=${shop.id}">[${shop.shortName}]</a>|
	    			<a href="${appPath}/site/cat/choice.do?shopId=${shop.id}">选择分类</a>|
	    			<a href="${appPath}/site/cat/add.do?shopId=${shop.id}">新增分类</a>
	    		</c:if>
			</span></p>        
	    </div>
    	<c:forEach items="${cats}" var="obj" varStatus="status">
		<div class="l_bottom">
	    	<div class="b_img">
	        	<img src="${nginxUrl}${obj.logo}" alt="" />
	        </div>
	        <div class="b_list">
	            <p>分类名称：${obj.name}</p>
	            <p>
	            	    			
		            <c:if test="${empty shop}">		            	
		    			<a href="${appPath}/site/cat/del.do?id=${obj.id}">删除</a>
		    			<a href="${appPath}/site/cat/edit.do?id=${obj.id}">修改</a>
		    			<a href="${appPath}/site/product/list.do?catId=${obj.id}">商品</a>
		    		</c:if>
		    		<c:if test="${!empty shop}">
		    			<a href="${appPath}/site/cat/shop_del_cat.do?id=${obj.id}&shopId=${shop.id}">删除</a>    			
		    			<a href="${appPath}/site/cat/edit.do?id=${obj.id}&shopId=${shop.id}">修改</a>
		    			<a href="${appPath}/site/product/list.do?catId=${obj.id}&shopId=${shop.id}">商品</a>
		    		</c:if>
		    	</p> 
	        </div>
	    </div>
	     </c:forEach>
    </c:if>
</div>

