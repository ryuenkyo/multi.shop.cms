<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<div class="navbar">
    <div class="navbar-inner no-bg">
        <h4 class="title"><i class="fontello-icon-window"></i>广告管理 
        	<small>        	
				<a href="${appPath}/biz/ad/add.do?singleImage=true" class="btn btn-blue">添加单图广告</a>
				<a href="${appPath}/biz/ad/add.do" class="btn btn-blue">添加多图广告</a>		
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
            <th scope="col">标题<span class="column-sorter"></span></th>

            <th scope="col">状态 <span class="column-sorter"></span></th>
            <th scope="col">操作 <span class="column-sorter"></span></th>
        </tr>
    </thead>
    <tbody>
       <c:forEach items="${resLst.content}" var="obj" varStatus="status">
            <tr>
                <td>${status.index+1}</td>
            	<td>${obj.code}</td>
                <td>${obj.title}</td>
                <td>${obj.status.title}</td>
                <td><a href="${appPath}/biz/ad/edit.do?id=${obj.id}">修改<a>
                	<a href="${appPath}/biz/ad/del.do?id=${obj.id}">删除<a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
            <!-- // DATATABLE - DTA -->
       