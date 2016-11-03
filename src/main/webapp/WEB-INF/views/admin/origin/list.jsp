<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<div id="page-content" class="page-content tab-content overflow-y">
<div id="TabTop1" class="tab-pane padding-bottom30 active fade in">
<section>
<div class="row-fluid margin-bottom16">
	<div class="navbar">
            <div class="navbar-inner no-bg">
                <h4 class="title"><i class="fontello-icon-window"></i> 产地信息</a>
                	<small>
                	<c:if test="${!empty product}">	    				
                		<a href="${appPath}/shop/product/edit.do?id=${product.id}" class="btn btn-blue">${product.name}</a>                			                		
                	</c:if>
                		<a href="${appPath}/shop/origin/add_logo.do" class="btn btn-blue">新增</a>                			                		
                	</small>
                </h4>                
            </div>
    </div>
    <div class="span12">
        <div class="widget widget-simple widget-table">
            <table id="exampleDTA" class="table boo-table table-striped table-hover">
                <thead>
                    <tr>
                        <th scope="col">ID <span class="column-sorter"></span></th>
                        <th scope="col">产地 <span class="column-sorter"></span></th>
                        <th scope="col">产地logo<span class="column-sorter"></span></th>
                        <th scope="col">产地商品<span class="column-sorter"></span></th>
                        <th scope="col">操作 <span class="column-sorter"></span></th>
                    </tr>
                </thead>
                <tbody>
                 	<c:forEach items="${resLst.content}" var="obj" varStatus="status">
	                    <tr>
	                        <td>${status.index+1}</td>
                        	<td>${obj.name}</td>
	                        <td><img src="${obj.logo}" class="thumbnail" width="96" height="96"></td>
	                        <td><a href="${appPath}/shop/origin/product.do?brandId=${obj.id}">查看<a></td>
	                        <td><a href="${appPath}/shop/origin/edit_logo.do?id=${obj.id}">修改<a></td>
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