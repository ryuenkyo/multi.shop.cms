<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<div class="navbar">
    <div class="navbar-inner no-bg">
        <h4 class="title"><i class="fontello-icon-window"></i>文章管理 
        	<small>        	
			<c:if test="${!empty parent}">
            	<a href="${appPath}/biz/article/parent/add.do?parentId=${parent.id}" class="btn btn-blue">添加</a>
            	<c:if test="${!empty parent.parent}"><a href="${appPath}/biz/cat/parent.do?parentId=${parent.parent.id}" class="btn btn-blue">${parent.name}<a></c:if>
				<a href="${appPath}/biz/article/parent.do" class="btn btn-blue">顶层<a>
			</c:if>
			<c:if test="${empty parent}">
				<a href="${appPath}/biz/article/add.do" class="btn btn-blue">添加</a>
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
            <th scope="col">标题 <span class="column-sorter"></span></th>
            <th scope="col">logo <span class="column-sorter"></span></th>
            <th scope="col">状态 <span class="column-sorter"></span></th>
            <th scope="col">操作 <span class="column-sorter"></span></th>
        </tr>
    </thead>
    <tbody>
       <c:forEach items="${resLst.content}" var="obj" varStatus="status">
            <tr>
                <td>${status.index+1}</td>
            	<td>${obj.title}</td>
            	<td>${obj.logo}</td>
                <td>${obj.status.title}</td>
                <td><a href="${appPath}/biz/article/edit.do?id=${obj.id}">修改<a>
                	<a href="${appPath}/biz/article/del.do?id=${obj.id}">删除<a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
            <!-- // DATATABLE - DTA -->
         