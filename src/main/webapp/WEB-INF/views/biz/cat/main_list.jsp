<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<div id="page-content" class="page-content tab-content overflow-y">
<div id="TabTop1" class="tab-pane padding-bottom30 active fade in">
<section>
<div class="row-fluid margin-bottom16">
    <div class="span12">
    	<c:if test="${!empty parent}">
		  	<div class="navbar">
	            <div class="navbar-inner no-bg">
	                <h4 class="title"><i class="fontello-icon-window"></i>分类名称 </h4>
	                <small>(${parent.name})
	                	<a href="${appPath}/biz/cat/parent/add.do?parentId=${parent.id}">添加分类</a>
	                	返回<c:if test="${!empty parent.parent}"><a href="${appPath}/biz/cat/parent.do?parentId=${parent.parent.id}">${parent.parent.name}<a></c:if>
						<c:if test="${empty parent.parent}"><a href="${appPath}/biz/cat/parent.do">父分类<a></c:if>
					</small>
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
                        <th scope="col">分类编码 <span class="column-sorter"></span></th>
                        <th scope="col">分类名称<span class="column-sorter"></span></th> 
                        <th scope="col">子分类<span class="column-sorter"></span></th>                      
                        <th scope="col">状态 <span class="column-sorter"></span></th>
                        <th scope="col">商品 <span class="column-sorter"></span></th>
                    </tr>
                </thead>
                <tbody>
                   <c:forEach items="${resLst}" var="obj" varStatus="status">
	                    <tr>
	                        <td>${status.index+1}</td>
                        	<td>${form.categoryId}</td>
                        	<td><a href="${appPath}/biz/cat/edit.do?id=${form.categoryId}">${form.categoryName}<a></td>
	                        <td><img src="${form.categoryLogo}" class="thumbnail" width="96" height="96"></td>	                        
	                        <td><img src="${form.categoryHeaderImage}" class="thumbnail" width="96" height="96"></td>
	                        <td><img src="${form.categoryFooterImage}" class="thumbnail" width="96" height="96"></td>
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