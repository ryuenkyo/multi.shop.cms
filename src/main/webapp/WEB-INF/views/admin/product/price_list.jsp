<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<div id="page-content" class="page-content tab-content overflow-y">
<div id="TabTop1" class="tab-pane padding-bottom30 active fade in">
<section>
<div class="row-fluid margin-bottom16">
    <div class="span12">
	  	<div class="navbar">
            <div class="navbar-inner no-bg">
                <h4 class="title"><i class="fontello-icon-window"></i> 产品信息 
                	<a href="${appPath}/shop/product/edit.do?id=${product.id}" class="btn btn-blue">${product.name}</a>
                	<small>                		
                		<a href="${appPath}/shop/price/add_by_productId.do?productId=${product.id}" class="btn btn-blue">价格新增</a>                		
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
                        <th scope="col"><span class="column-sorter"></span></th>
                        <th scope="col">PRICE ID <span class="column-sorter"></span></th>
                        <th scope="col">标题<span class="column-sorter"></span></th>
                        <th scope="col">购买数量<span class="column-sorter"></span></th>
                        <th scope="col">价格 <span class="column-sorter"></span></th>
                        <th scope="col">类型<span class="column-sorter"></span></th>
                        <th scope="col">操作<span class="column-sorter"></span></th>
                    </tr>
                </thead>
                <tbody>
                   <c:forEach items="${prices}" var="obj" varStatus="status">
	                    <tr>
	                        <td>${status.index+1}</td>
	                        <td>${form.id}</td>
                        	<td>${form.title}</td>
                        	<td>${form.num}</td>
	                        <td>${form.price/100}</td>
	                        <td>${form.type.title}<c:if test="${form.type=='tuan'}">
						    	[${form.tuanNum}人团]</c:if>
						    </td>
	                        <td><a href="${appPath}/shop/price/edit.do?id=${form.id}&productId=${product.id}">修改<a>
	                        	<a href="${appPath}/shop/product/price_del.do?id=${form.id}&productId=${product.id}">删除<a></td>
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
    			var url="${appPath}/shop/product/set_brand.do?id=${form.id}&brandId="+$(this).val();    			
    			$.get(url,function(data,status){
    			    <!--alert("Data: " + data + "\nStatus: " + status);-->
    			});
    		}
    	  });
    	});
    </script>