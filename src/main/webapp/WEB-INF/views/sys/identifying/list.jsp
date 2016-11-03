<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<div id="page-content" class="page-content tab-content overflow-y">
<div id="TabTop1" class="tab-pane padding-bottom30 active fade in">
<section>
<div class="row-fluid margin-bottom16">
    <div class="span12">
        <div class="widget widget-simple widget-table">
            <table id="exampleDTA" class="table boo-table table-striped table-hover">
                <thead>
                    <tr>
                        <th scope="col">ID <span class="column-sorter"></span></th>
                        <th scope="col">编码 <span class="column-sorter"></span></th>
                        <th scope="col">名称<span class="column-sorter"></span></th>
                        <th scope="col">手机号 <span class="column-sorter"></span></th>
                        <th scope="col">状态<span class="column-sorter"></span></th>
                        <th scope="col">创建时间 <span class="column-sorter"></span></th>
                        <th scope="col">修改时间 <span class="column-sorter"></span></th>
                        <th scope="col">操作 <span class="column-sorter"></span></th>
                    </tr>
                </thead>
                <tbody>
                	<c:forEach items="${resLst.content}" var="obj" varStatus="status">
	                    <tr>
	                        <td>${status.index+1}</td>
                        	<td>${obj.code}</td>
                        	<td>${obj.name}</td>
	                        <td>${obj.phone}</td>
	                        <td>${obj.status.title}</td>
	                        <td>${obj.createdDate}</td>
	                        <td>${obj.lastModifiedDate}</td>
	                        <td>
	                        	<a href="${appPath}/sys/identifying/del.do?id=${obj.id}">删除<a>
	                        </td>
	                    </tr>
                    </c:forEach>                    
                </tbody>
            </table>
            <!-- // DATATABLE - DTA -->
            
        </div>
        <!-- // Column -->
         
    </div>
    <!-- // Column -->
    
</div>
<!-- // Example row --> 

</section>
</div>
</div>