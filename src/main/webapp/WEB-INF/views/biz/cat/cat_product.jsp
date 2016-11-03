<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<div id="page-content" class="page-content tab-content overflow-y">
<div id="TabTop1" class="tab-pane padding-bottom30 active fade in">
<section>
<div class="row-fluid margin-bottom16">
    <div class="span12">
       
		  	<div class="navbar">
	            <div class="navbar-inner no-bg">
	                <h4 class="title"><i class="fontello-icon-window"></i>分类[${product_type.title}] </h4>
	                <a href="${appPath}/biz/cat/product_list.do?id=${form.id}">返回 </a>
	            </div>
				
	        </div>
	        <!-- // navbar -->
	        <div class="section-content item">
	            <p>
	           </p>
	        </div>
    	
      
        <div class="widget widget-simple widget-table">
            <table id="exampleDTA" class="table boo-table table-striped table-hover">
                <thead>
                    <tr>
                    	<th scope="col">选择<span class="column-sorter"></span></th>                        
                        <th scope="col">商品名称<span class="column-sorter"></span></th>
                        <th scope="col">商品ID <span class="column-sorter"></span></th>
                        <th scope="col">商品数量<span class="column-sorter"></span></th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${products}" var="obj" varStatus="status">
                    <tr>
                    	<td><input type="radio" id="radio${status.index+1}" value="${form.id}" class="styled" /> 选择</td>                        
                        <td>${form.name}</td>
                        <td>${form.id}</td>
                        <td>${form.count}</td>                       
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
    			<c:if test="${product_type =='main'}">
    				var url="${appPath}/biz/cat/set_cat_product.do?id=${form.id}&type=main&productId="+$(this).val();
    			</c:if>
    			<c:if test="${product_type =='subs'}">
    				<c:if test="${subProdcut =='subProductA'}">
    					var url="${appPath}/biz/cat/set_cat_product.do?id=${form.id}&type=subs&subProduct=subProductA&productId="+$(this).val();			
    				</c:if>
    				<c:if test="${subProdcut =='subProductB'}">
	    				var url="${appPath}/biz/cat/set_cat_product.do?id=${form.id}&type=subs&subProduct=subProductB&productId="+$(this).val();			
	    			</c:if>    							
    			</c:if>
    			$.get(url,function(data,status){
    			    <!--alert("Data: " + data + "\nStatus: " + status);-->
    			});
    		}else{
    			<c:if test="${!empty preFix}">
    				var url="${appPath}/admin/userrole/remove_related.do?preFixId=${preFix.id}&postFixId="+$(this).val();
    			</c:if>
    			<c:if test="${!empty postFix}">
    				var url="${appPath}/admin/userrole/remove_related.do?postFixId=${postFix.id}&preFixId="+$(this).val();			
    			</c:if>
    			$.get(url,function(data,status){
    			   
    			});  			
    		}
    	  });
    	});
    </script>