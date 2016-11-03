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
                    	<th scope="col">流水号<span class="column-sorter"></span></th>                        
                        <th scope="col">商品名称<span class="column-sorter"></span></th>
                        <th scope="col">商品ID <span class="column-sorter"></span></th>
                        <th scope="col">商品数量<span class="column-sorter"></span></th>
                        <th scope="col">分类<span class="column-sorter"></span></th>
                        <th scope="col">商品图片<span class="column-sorter"></span></th>
                        <th scope="col">状态 <span class="column-sorter"></span></th>
                        <th scope="col">操作 <span class="column-sorter"></span></th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${products}" var="obj" varStatus="status">
                    <tr>
                    	<td>${status.index+1}</td>                        
                        <td>${form.name}</td>
                        <td>${form.id}</td>
                        <td>${form.count}</td>
                        <td><c:if test="${!empty form.category}">
                        	<a href="${appPath}/shop/product/list.do?catId=${form.category.id}">${form.category.name} <a></c:if></td>
                        <td><a href="${appPath}/shop/product/product_imgage_list.do?productId=${form.id}">查看</td>
                        <td><a href="">${form.status.title}<a></td>
                        <td><a href="${appPath}/biz/ad/del_products.do?productId=${form.id}&adId=${ad.id}">删除<a></td>
                    </tr>
                </c:forEach>
                <c:if test="${!empty product}">  
	                <tr>
	                    	<td></td>                        
	                        <td>${product.name}</td>
	                        <td>${product.id}</td>
	                        <td>${product.count}</td>
	                        <td><c:if test="${!empty product.category}">
	                        	<a href="${appPath}/shop/product/list.do?catId=${product.category.id}">${product.category.name} <a></c:if></td>	                     
	                        <td><a href="${appPath}/shop/product/product_imgage_list.do?productId=${product.id}">查看</td>
	                        <td><a href="">${form.status.title}<a></td>
	                        <td><a href="${appPath}/biz/ad/del_product.do?productId=${form.id}&adId=${ad.id}">删除<a></td>
	                    </tr> 
                </c:if>   
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