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
	                <h4 class="title"><i class="fontello-icon-window"></i> 菜单 <small>
	                	<a href="${appPath}/admin/menu_permit/list.do?menuId=${menu.id}" class="btn btn-blue">${menu.name}</a>
	                </small></h4>
	            </div>
	        </div>
	        <!-- // navbar -->
	        <div class="section-content item">
	            <p>Boo extends display the data in the tables combination of other classes aplikovanch the table element or a wrapper table.</p>
	        </div>
        </c:if>
        <c:if test="${!empty permit}">
		  	<div class="navbar">
	            <div class="navbar-inner no-bg">
	                <h4 class="title"><i class="fontello-icon-window"></i> 权限 <small>
	                	<a href="${appPath}/admin/menu_permit/list.do?permitId=${permit.id}" class="btn btn-blue">${permit.name}</a>
	                	</small></h4>
	            </div>
	        </div>
	        <!-- // navbar -->
	        <div class="section-content item">
	            <p></p>
	        </div>
        </c:if>
        <div class="widget widget-simple widget-table">
             <c:if test="${!empty menu}">
             <table id="exampleDTA" class="table boo-table table-striped table-hover">
                <thead>
                    <tr>
                    	<th scope="col">选择 <span class="column-sorter"></span></th>
                        <th scope="col">ID <span class="column-sorter"></span></th>
                        <th scope="col">编码 <span class="column-sorter"></span></th>
                        <th scope="col">角色名<span class="column-sorter"></span></th>
                    </tr>
                </thead>
                <tbody>               
                   <c:forEach items="${unPostFixs}" var="obj" varStatus="status">
	                    <tr>
	                    	<td><input type="checkbox" id="inlineCheckbox${status.index+1}" value="${form.id}" class="styled" />选择</td>
	                        <td>${status.index+1}</td>
                        	<td>${form.code}</td>
                        	<td>${form.name}</td>
	                    </tr>
                    </c:forEach>
                </tbody>
            </table>
            </c:if>
            <c:if test="${!empty permit}">
             <table id="exampleDTA" class="table boo-table table-striped table-hover">
                <thead>
                    <tr>
                    	<th scope="col">选择 <span class="column-sorter"></span></th>
                        <th scope="col">ID <span class="column-sorter"></span></th>
                        <th scope="col">菜单名<span class="column-sorter"></span></th>
                        <th scope="col">level<span class="column-sorter"></span></th>
                        <th scope="col">父菜单<span class="column-sorter"></span></th>
                    </tr>
                </thead>
                <tbody>               
                   <c:forEach items="${unPreFixs}" var="obj" varStatus="status">
	                    <tr>
	                    	<td><input type="checkbox" id="inlineCheckbox${status.index+1}" value="${form.id}" class="styled" /> 选择</td>
	                        <td>${status.index+1}</td>
                        	<td>${form.name}</td>
                        	<td>${form.level}</td>
                        	<td><c:if test="${!empty form.parent}">${form.parent.name}</c:if></td>
	                    </tr>
                    </c:forEach>
                </tbody>
            </table>
            </c:if>
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
<script type="text/javascript">
    $(document).ready(function(){
    	$(":checkbox").click(function(){
    		if($(this).attr('checked')=='checked'){
    			<c:if test="${!empty menu}">
    				var url="${appPath}/admin/menu_permit/set_related.do?preFixId=${menu.id}&postFixId="+$(this).val();
    			</c:if>
    			<c:if test="${!empty permit}">
    				var url="${appPath}/admin/menu_permit/set_related.do?postFixId=${permit.id}&preFixId="+$(this).val();			
    			</c:if>
    			$.get(url,function(data,status){
    			    <!--alert("Data: " + data + "\nStatus: " + status);-->
    			});
    		}else{
    			<c:if test="${!empty menu}">
    				var url="${appPath}/admin/menu_permit/remove_related.do?preFixId=${menu.id}&postFixId="+$(this).val();
    			</c:if>
    			<c:if test="${!empty permit}">
    				var url="${appPath}/admin/menu_permit/remove_related.do?postFixId=${permit.id}&preFixId="+$(this).val();			
    			</c:if>
    			$.get(url,function(data,status){
    			   
    			});  			
    		}
    	  });
    	});
    </script>