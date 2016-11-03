<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
 <div class="navbar">
    <div class="navbar-inner no-bg">
        <h4 class="title"><i class="fontello-icon-window"></i>字典管理 
        	<small>        	
			<c:if test="${!empty parent}">
            	<a href="${appPath}/admin/dict/parent/add.do?parentId=${parent.id}" class="btn btn-blue">添加</a>
            	<c:if test="${!empty parent.parent}"><a href="${appPath}/admin/dict/parent.do?parentId=${parent.parent.id}" class="btn btn-blue">${parent.name}<a></c:if>
				<a href="${appPath}/admin/dict/parent.do" class="btn btn-blue">顶层<a>
			</c:if>
			<c:if test="${empty parent}">
				<a href="${appPath}/admin/dict/add.do" class="btn btn-blue">添加</a>
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
            <th scope="col">ID <span class="column-sorter"></span></th>
            <th scope="col">编码 <span class="column-sorter"></span></th>
            <th scope="col">名称<span class="column-sorter"></span></th>
            <th scope="col">value<span class="column-sorter"></span></th>
            <th scope="col">子菜单 <span class="column-sorter"></span></th>                        
            <th scope="col">操作 <span class="column-sorter"></span></th>
        </tr>
    </thead>
    <tbody>
       <c:forEach items="${resLst.content}" var="obj" varStatus="status">
            <tr>
                <td>${status.index+1}</td>
            	<td>${obj.code}</td>
                <td>${obj.name}</td>
                <td>${obj.value}</td>
                <td><a href="${appPath}/admin/dict/parent.do?parentId=${obj.id}">查看<a></td>
                <td><a href="${appPath}/admin/dict/item.do?id=${obj.id}">查看<a>
                	<a href="${appPath}/admin/dict/edit.do?id=${obj.id}">修改<a></td>
            </tr>
        </c:forEach>
       
    </tbody>
</table>
            <!-- // DATATABLE - DTA -->
         