<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<c:if test="${!empty parent}">
  	<div class="navbar">
        <div class="navbar-inner no-bg">
            <h4 class="title"><i class="fontello-icon-window"></i>菜单名称 </h4><small>(${parent.name})
            	<a href="${appPath}/admin/menu/parent/add.do?parentId=${parent.id}">添加菜单</a>
            	返回<c:if test="${!empty parent.parent}"><a href="${appPath}/admin/menu/parent.do?parentId=${parent.parent.id}">${parent.parent.name}<a></c:if>
				<c:if test="${empty parent.parent}"><a href="${appPath}/admin/menu/parent.do">父菜单<a></c:if></small>
        </div>
		
    </div>
    <!-- // navbar -->
    <div class="section-content item">
        <p></p>
    </div>
</c:if>