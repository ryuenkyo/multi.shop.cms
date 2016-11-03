<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
 <div class="navbar">
    <div class="navbar-inner no-bg">
        <h4 class="title"><i class="fontello-icon-window"></i>消息管理 
        	<small>  
        		<c:if test="${!empty type}">	    				
                	<a href="${appPath}/shop/mess/add.do?type=${type}&fkId=${obj.id}" class="btn btn-blue">消息新增</a>                			                		
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
            <th scope="col">标题<span class="column-sorter"></span></th>
            <th scope="col">状态<span class="column-sorter"></span></th>
            <th scope="col">类型<span class="column-sorter"></span></th>
            <th scope="col">查看<span class="column-sorter"></span></th>
            <th scope="col">操作 <span class="column-sorter"></span></th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${resLst.content}" var="obj" varStatus="status">
            <tr>
                <td>${status.index+1}</td>
                <td>${obj.title}</td>
            	<td>${obj.status.title}</td>
                <td>${obj.type.title}</td>
                <td><a href="${appPath}/shop/product/list.do?shopId=${obj.id}">准备就绪<a></td>
                <td><a href="${appPath}/shop/mess/push_mess.do?id=${obj.id}">立即发送<a>
                	<a href="${appPath}/shop/mess/edit.do?id=${obj.id}">修改<a></td>
            </tr>
        </c:forEach>	
    </tbody>
</table>
            <!-- // DATATABLE - DTA -->
           