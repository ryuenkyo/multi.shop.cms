<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<div id="page-content" class="page-content tab-content overflow-y">
<div id="TabTop1" class="tab-pane padding-bottom30 active fade in">
<section>
<div class="row-fluid margin-bottom16">
    <div class="span12">
    	<c:if test="${!empty menu}">
		  	<div class="navbar">
	            <div class="navbar-inner no-bg">
	                <h4 class="title"><i class="fontello-icon-window"></i> 菜单用户 <small>
	                <a href="${appPath}/admin/menu/edit.do?id=${menu.id}" class="btn btn-blue">${menu.name}</a>
	                	<a href="${appPath}/admin/menu_permit/edit.do?menuId=${menu.id}" class="btn btn-blue">添加权限</a></small></h4>
	            </div>
	        </div>
	        <!-- // navbar -->
	        <div class="section-content item">
	            <p></p>
	        </div>
        </c:if>
        <c:if test="${!empty permit}">
		  	<div class="navbar">
	            <div class="navbar-inner no-bg">
	                <h4 class="title"><i class="fontello-icon-window"></i> 权限 <small>(${permit.name})
	                	<a href="${appPath}/admin/menu_permit/edit.do?permitId=${permit.id}" class="btn btn-blue">添加菜单</a>
	                	</small>
	                </h4>
	            </div>
	        </div>
	        <!-- // navbar -->
	        <div class="section-content item">
	            <p></p>
	        </div>
        </c:if>
        <div class="widget widget-simple widget-table">
            <table id="exampleDTA" class="table boo-table table-striped table-hover">
                <thead>
                    <tr>
                        <th scope="col">ID <span class="column-sorter"></span></th>
                        <th scope="col">菜单编码<span class="column-sorter"></span></th>
                        <th scope="col">菜单名<span class="column-sorter"></span></th>
                        <th scope="col">角色编码 <span class="column-sorter"></span></th>
                        <th scope="col">角色 <span class="column-sorter"></span></th>                       
                        <th scope="col">权限编码<span class="column-sorter"></span></th>                           
                        <th scope="col">操作 <span class="column-sorter"></span></th>
                    </tr>
                </thead>
                <tbody>
                   <c:forEach items="${menuPermit}" var="obj" varStatus="status">
	                    <tr>
	                        <td>${status.index+1}</td>
	                        <td>${obj.menu.code}</td>
                        	<td>${obj.menu.name}</td>
	                        <td>${obj.permit.code}</td>
	                        <td>${obj.permit.name}</td>
							<td>${obj.code}</td>
	                        <td>
	                        	<a href="${appPath}/admin/menu_permit/remove_related.do?id=${obj.id}<c:if test="${!empty permit}">&permitId=${permit.id}</c:if><c:if test="${!empty menu}">&menuId=${menu.id}</c:if>">删除<a>
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