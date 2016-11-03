<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<link rel="stylesheet" href="${siteTempletDir}/css/list.css" />
<div class="list">
	<c:if test="${empty ads}">
		<div class="l_top">
	    	<p>没有广告<span style="color:#ccc;">
	    		<c:if test="${empty shop}">
	    			<a href="${appPath}/site/ad/add.do">新增</a>
	    		</c:if>
	    		<c:if test="${!empty shop}">
	    			<a href="${appPath}/site/shop/edit.do?id=${shop.id}">[${shop.shortName}]</a>|
	    			<a href="${appPath}/site/ad/choice.do?shopId=${shop.id}">选择广告</a>|
	    			<a href="${appPath}/site/ad/add.do?shopId=${shop.id}">[${shop.shortName}]新增广告</a>
	    		</c:if>
	    		</span></p>        
	    </div>
    </c:if>
    <c:if test="${!empty ads}">
    	<div class="l_top">
	    	<p> 广告数量<span style="color:#ccc;">
				<c:if test="${empty shop}">
	    			<a href="${appPath}/site/ad/add.do">新增</a>
	    		</c:if>
	    		<c:if test="${!empty shop}">
	    			<a href="${appPath}/site/shop/edit.do?id=${shop.id}">[${shop.shortName}]</a>|
	    			<a href="${appPath}/site/ad/choice.do?shopId=${shop.id}">选择广告</a>|
	    			<a href="${appPath}/site/ad/add.do?shopId=${shop.id}">[${shop.shortName}]新增广告</a>
	    		</c:if>
			</span></p>        
	    </div>
    	<c:forEach items="${ads}" var="obj" varStatus="status">
    	<div class="l_top">
	    	<p>${obj.title}<span style="color:#ccc;">
	    		<c:if test="${empty shop}">
	    			<a href="${appPath}/site/ad/del.do?id=${obj.id}">删除</a>
	    			<a href="${appPath}/site/ad/edit.do?id=${obj.id}">修改</a>
	    		</c:if>
	    		<c:if test="${!empty shop}">
	    			<a href="${appPath}/site/ad/del.do?id=${obj.id}&shopId=${shop.id}">删除</a>
	    			<a href="${appPath}/site/ad/edit.do?id=${obj.id}&shopId=${shop.id}">修改</a>
	    		</c:if>
				
			</span></p>        
	    </div>
		<div class="l_bottom">
	    	<div class="b_img">
	        	<img src="${nginxUrl}${obj.logo}" alt="" />
	        </div>
	        <div class="b_list">
	            <p>广告标题：${obj.title}</p>
	            <p>广告地址：${obj.httpUrl}</p>
	            <p>广告内容：${obj.content}
	            	</p>
	        </div>
	    </div>
	     </c:forEach>
    </c:if>
</div>

