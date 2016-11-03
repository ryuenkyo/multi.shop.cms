<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<div id="page-content" class="page-content tab-content overflow-y">
<div id="TabTop1" class="tab-pane padding-bottom30 active fade in">
<section>
<div class="row-fluid margin-bottom16">
    <div class="span12">
	  	<div class="navbar">
            <div class="navbar-inner no-bg">
                <h4 class="title"><i class="fontello-icon-window"></i> 产地信息 
                	<a href="${appPath}/shop/product/edit.do?id=${form.id}" class="btn btn-blue">${form.name}</a>
                	<small>
                		<a href="${appPath}/shop/origin/list.do?productId=${form.id}" class="btn btn-blue">产地列表</a>
                		<a href="${appPath}/shop/origin/add_logo.do?productId=${form.id}" class="btn btn-blue">产地新增</a>                		
                	</small>
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
                        <th scope="col">产地<span class="column-sorter"></span></th>
                        <th scope="col">产地logo <span class="column-sorter"></span></th>
                    </tr>
                </thead>
                <tbody>
                   <c:forEach items="${origins}" var="obj" varStatus="status">
	                    <tr>
	                        <td><input type="radio" id="radio${status.index+1}" value="${form.id}" class="styled" /> 选择</td>
                        	<td>${form.name}</td>
	                        <td><img src="${form.logo}" class="thumbnail" width="96" height="96"></td>
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
<script type="text/javascript">
    $(document).ready(function(){
    	$(":radio").click(function(){
    		if($(this).attr('checked')=='checked'){
    			var url="${appPath}/shop/product/set_origin.do?id=${form.id}&originId="+$(this).val();    			
    			$.get(url,function(data,status){
    			    <!--alert("Data: " + data + "\nStatus: " + status);-->
    			});
    		}
    	  });
    	});
    </script>