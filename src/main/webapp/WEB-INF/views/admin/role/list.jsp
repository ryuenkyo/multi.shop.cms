<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
 <div class="navbar">
    <div class="navbar-inner no-bg">
        <h4 class="title"><i class="fontello-icon-window"></i>角色管理 
        	<small>        	
				<a href="${appPath}/admin/role/add.do" class="btn btn-blue">添加角色</a>			
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
            <th scope="col">ID <span class="column-sorter"></span></th>
            <th scope="col">编码 <span class="column-sorter"></span></th>
            <th scope="col">名称<span class="column-sorter"></span></th>
            <th scope="col">所属用户 <span class="column-sorter"></span></th>
            <th scope="col">所属菜单 <span class="column-sorter"></span></th>
            <th scope="col">权限 <span class="column-sorter"></span></th>
            <th scope="col">操作 <span class="column-sorter"></span></th>
        </tr>
    </thead>
    <tbody>
       <c:forEach items="${resLst.content}" var="obj" varStatus="status">
            <tr>
                <td>${status.index+1}</td>
            	<td>${obj.code}</td>
                <td>${obj.name}</td>
                <td><a href="${appPath}/admin/user_role/list.do?roleId=${obj.id}">查看<a></td>
                <td><a href="${appPath}/admin/role_menu/list.do?roleId=${obj.id}">查看<a></td>
                <td><a href="${appPath}/admin/role_permit/list.do?roleId=${obj.id}">查看<a></td>
                <td><a href="${appPath}/admin/role/edit.do?id=${obj.id}">修改<a>
                	<a href="${appPath}/admin/role/del.do?id=${obj.id}">删除<a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
            <!-- // DATATABLE - DTA -->
      