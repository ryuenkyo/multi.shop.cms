<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<div class="navbar">
    <div class="navbar-inner no-bg">
        <h4 class="title"><i class="fontello-icon-window"></i>菜单权限 [${menu.name}] 
        	<small>
            	<a href="${appPath}/admin/menu/permit/add.do?menuId=${menu.id}" class="btn btn-blue">添加权限</a>
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
            <th scope="col">操作 <span class="column-sorter"></span></th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${resLst.content}" var="obj" varStatus="status">
            <tr>
                <td>${status.index+1}</td>
            	<td>${form.code}</td>
                <td>${form.name}</td>
                <td>${form.serNo}</td>
                <td><a href="${appPath}/admin/menu/del.do?id=${form.id}">删除<a>
                </td>
            </tr>
        </c:forEach>
        
    </tbody>
</table>
  