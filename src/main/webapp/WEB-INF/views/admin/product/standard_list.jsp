<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<div id="page-content" class="page-content tab-content overflow-y">
<div id="TabTop1" class="tab-pane padding-bottom30 active fade in">
<section>
<div class="row-fluid margin-bottom16">
    <div class="span12">
	  	<div class="navbar">
            <div class="navbar-inner no-bg">
                <h4 class="title"><i class="fontello-icon-window"></i> 产品信息 <small>(${form.name}) 
                	<a href="${appPath}/shop/standard/add.do?productId=${form.id}">规格新增</a></small>
                	>>>><a href="${appPath}/shop/product/edit.do?id=${form.id}">返回产品信息</a>
                </h4>
            </div>
        </div>
        <!-- // navbar -->
        <div class="section-content item">
            <p></p>
        </div>
        <div class="widget widget-simple widget-table">
            <table id="exampleDTA" class="table boo-table table-striped table-hover">
                <thead>
                    <tr>
                        <th scope="col">ID <span class="column-sorter"></span></th>
                        <th scope="col">编码<span class="column-sorter"></span></th>
                        <th scope="col">名称 <span class="column-sorter"></span></th>
                    </tr>
                </thead>
                <tbody>
                   <c:forEach items="${standards}" var="obj" varStatus="status">
	                    <tr>
	                        <td>${status.index+1}</td>
                        	<td>${form.code}</td>
	                        <td>${form.name}</td>
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