<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<div class="navbar">
    <div class="navbar-inner no-bg">
        <h4 class="title"><i class="fontello-icon-window"></i>银行管理 
        	<small>        
				<a href="${appPath}/finance/bank/add.do" class="btn btn-blue">银行新增</a>
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
            <th scope="col">名称<span class="column-sorter"></span></th>
            <th scope="col">服务电话<span class="column-sorter"></span></th>           
            <th scope="col">操作 <span class="column-sorter"></span></th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${resLst.content}" var="obj" varStatus="status">
            <tr>
                <td>${status.index+1}</td>
                <td>${obj.name}</td>
                <td>${obj.serverPhone}</td>                          
                <td><a href="${appPath}/finance/customer/edit.do?id=${obj.id}">修改</a>
                	<a href="${appPath}/finance/customer/del.do?id=${obj.id}">删除</a>
                </td>
            </tr>
        </c:forEach>
        
    </tbody>
</table>
  