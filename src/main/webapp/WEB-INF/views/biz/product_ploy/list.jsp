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
                        <th scope="col">活动编码 <span class="column-sorter"></span></th>
                        <th scope="col">活动名称<span class="column-sorter"></span></th>
                        <th scope="col">活动开始时间 <span class="column-sorter"></span></th>
                        <th scope="col">活动结束时间 <span class="column-sorter"></span></th>
                        <th scope="col">活动发布时间 <span class="column-sorter"></span></th>
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
	                        <td>${obj.startTime}</td>
	                        <td>${obj.endTime}</td>
	                        <td>${obj.pubTime}</td>
	                        <td>${obj.status}</td>
	                        <td><a href="${appPath}/biz/ploy/edit.do?id=${obj.id}">修改<a>
	                        	<a href="${appPath}/biz/ploy/del.do?id=${obj.id}">删除<a>
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