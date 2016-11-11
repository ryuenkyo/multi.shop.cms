<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<link rel="stylesheet" href="${siteTempletDir}/css/goods.css"></head>
<div class="footer">
	<c:if test="${empty shop}">
		<a href="${appPath}/site/index.do" class="f_button margin">
	    	<img src="${siteTempletDir}/images/splb1.png" alt="" />
	        <span >首页</span>
	    </a>
		<a href="${appPath}/site/product.do" class="f_button margin">
	    	<img src="${siteTempletDir}/images/spfb.png" alt="" />
	        <span >商品列表</span>
	    </a>
		<a href="${appPath}/site/cat.do" class="f_button margin">
	    	<img src="${siteTempletDir}/images/ddlb.png" alt="" />
	        <span >商品分类</span>
	    </a>
	</c:if>	
	<c:if test="${!empty shop}">
		<a href="${appPath}/site/index.do?shopId=${shop.id}" class="f_button margin">
	    	<img src="${siteTempletDir}/images/splb1.png" alt="" />
	        <span >首页</span>
	    </a>
		<a href="${appPath}/site/product.do?shopId=${shop.id}" class="f_button margin">
	    	<img src="${siteTempletDir}/images/spfb.png" alt="" />
	        <span >商品列表</span>
	    </a>
		<a href="${appPath}/site/cat.do?shopId=${shop.id}" class="f_button margin">
	    	<img src="${siteTempletDir}/images/ddlb.png" alt="" />
	        <span >商品分类</span>
	    </a>
	</c:if>	    
    <a href="${appPath}/site/user/index.do" class="f_button">
    	<img src="${siteTempletDir}/images/jbxx.png" alt="" />
        <span >我的</span>
    </a>    
</div>