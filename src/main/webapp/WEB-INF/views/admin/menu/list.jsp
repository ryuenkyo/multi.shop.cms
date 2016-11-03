<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<div class="navbar">
    <div class="navbar-inner no-bg">
        <h4 class="title"><i class="fontello-icon-window"></i>菜单名称 
        	<small>
        	
        	<c:if test="${!empty parent}">
            	<a href="${appPath}/admin/menu/parent/add.do?parentId=${parent.id}" class="btn btn-blue">添加菜单</a>
            	<c:if test="${!empty parent.parent}"><a href="${appPath}/admin/menu/parent.do?parentId=${parent.parent.id}" class="btn btn-blue">${parent.name}<a></c:if>
				<a href="${appPath}/admin/menu/parent.do" class="btn btn-blue">顶层菜单<a>
			</c:if>
			<c:if test="${empty parent}">
				<a href="${appPath}/admin/menu/add.do" class="btn btn-blue">添加菜单</a>
			</c:if>
			</small>
		</h4>
    </div>		
</div>
<!-- // navbar -->
<div class="section-content item">
    <p></p>
</div>
<table id="exampleDTA" class="table boo-table table-striped table-hover">
    <thead>
        <tr>
            <th scope="col">ID<span class="column-sorter"></span></th>
            <th scope="col">编码 <span class="column-sorter"></span></th>
            <th scope="col">名称<span class="column-sorter"></span></th>
            <th scope="col">序号<span class="column-sorter"></span></th>
            <th scope="col">菜单地址 <span class="column-sorter"></span></th>
            <th scope="col">子菜单 <span class="column-sorter"></span></th>
            <th scope="col">权限<span class="column-sorter"></span></th>
            <th scope="col">状态 <span class="column-sorter"></span></th>
            <th scope="col">操作 <span class="column-sorter"></span></th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${resLst.content}" var="obj" varStatus="status">
            <tr>
                <td>${status.index+1}</td>
            	<td>${obj.code}</td>
                <td>${obj.name}</td>
                <td>${obj.serNo}</td>
                <td>${obj.menuUrl}</td>
                <td><a href="${appPath}/admin/menu/parent.do?parentId=${obj.id}">子菜单<a></td>
                <td><a href="${appPath}/admin/menu_permit/list.do?menuId=${obj.id}">管理<a></td>
                <td>${obj.status.title}</td>
                <td><a href="${appPath}/admin/menu/edit.do?id=${obj.id}">修改<a>
                	<a href="${appPath}/admin/menu/del.do?id=${obj.id}">删除<a>
                </td>
            </tr>
        </c:forEach>
        
    </tbody>
</table>
  