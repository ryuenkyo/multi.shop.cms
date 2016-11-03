<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<div id="page-content" class="page-content tab-content overflow-y">
<div id="TabTop1" class="tab-pane padding-bottom30 active fade in">
<section>
<div class="row-fluid margin-bottom16">
    <div class="span12">
       
		  	<div class="navbar">
	            <div class="navbar-inner no-bg">
	                <h4 class="title"><i class="fontello-icon-window"></i>分类商品 (${form.name})</h4>
	                <small>
	                	<a href="${appPath}/biz/cat/edit.do?id=${form.id}">分类修改 </a>
	                	<c:if test="${empty product}">
	                		<a href="${appPath}/biz/cat/cat_product.do?id=${form.id}&type=main">添加主商品 </a>
	                	</c:if>                	
					</small>
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
                    	<th scope="col">流水号<span class="column-sorter"></span></th>                        
                        <th scope="col">商品名称<span class="column-sorter"></span></th>
                        <th scope="col">商品ID <span class="column-sorter"></span></th>
                        <th scope="col">商品数量<span class="column-sorter"></span></th>
                        <th scope="col">商品图片<span class="column-sorter"></span></th>
                        <th scope="col">操作 <span class="column-sorter"></span></th>
                    </tr>
                </thead>
                <tbody>
                <c:if test="${!empty product}">
                    <tr>
                    	<td>${status.index+1}</td>                        
                        <td>${product.name}</td>
                        <td>${product.id}</td>
                        <td>${product.count}</td>                        
                        <td><a href="${appPath}/shop/product/product_imgage_list.do?productId=${product.id}">查看</td>
                        <td><a href="${appPath}/biz/cat/cat_product.do?id=${product.category.id}&type=main">更换<a></td>
                    </tr>
                </c:if>
                </tbody>
            </table>
            <!-- // DATATABLE - DTA -->
            
        </div>
        <!-- // navbar -->
        <div class="section-content item">
            <p>	分类子商品
            	<small>
                	<c:if test="${empty subProductA}">
                		<a href="${appPath}/biz/cat/cat_product.do?id=${form.id}&type=subs&subProduct=subProductA">添加子商品A</a>
                	</c:if>
                	<c:if test="${empty subProductB}">
                		<a href="${appPath}/biz/cat/cat_product.do?id=${form.id}&type=subssubProductB">添加子商品B</a>
                	</c:if>                 	
				</small>
			</p>
        </div>
        <div class="widget widget-simple widget-table">
            <table id="exampleDTA" class="table boo-table table-striped table-hover">
                <thead>
                    <tr>
                    	<th scope="col">流水号<span class="column-sorter"></span></th>                        
                        <th scope="col">商品名称<span class="column-sorter"></span></th>
                        <th scope="col">商品ID <span class="column-sorter"></span></th>
                        <th scope="col">商品数量<span class="column-sorter"></span></th>
                        <th scope="col">状态 <span class="column-sorter"></span></th>
                        <th scope="col">操作 <span class="column-sorter"></span></th>
                    </tr>
                </thead>
                <tbody>
                <c:if test="${!empty subProductA}">
                	<tr>
                    	<td>1</td>                        
                        <td>${subProductA.name}</td>
                        <td>${subProductA.id}</td>
                        <td>${subProductA.count}</td>
                        <td><a href="">${subProductA.status.title}<a></td>
                        <td><a href="${appPath}/biz/cat/cat_product.do?id=${subProductA.category.id}&type=subs&subProduct=subProductA">更换<a></td>
                    </tr>
                </c:if>
                <c:if test="${!empty subProductB}">
                	<tr>
                    	<td>2</td>                        
                        <td>${subProductB.name}</td>
                        <td>${subProductB.id}</td>
                        <td>${subProductB.count}</td>
                      	<td><a href="">${subProductB.status.title}<a></td>
                        <td><a href="${appPath}/biz/cat/cat_product.do?id=${subProductB.category.id}&type=subs&subProduct=subProductA">更换<a></td>
                    </tr>
                </c:if>                
                </tbody>
            </table>
            <!-- // DATATABLE - DTA -->
            
        </div>
        <!-- // Column -->
        <!-- // navbar -->
        <div class="section-content item">
            <p>	分类商品
            	<small>
                	<a href="${appPath}/biz/cat/product_set.do?id=${form.id}">管理分类商品 </a>                	               	
				</small>
			</p>
        </div>
        <div class="widget widget-simple widget-table">
            <table id="exampleDTA" class="table boo-table table-striped table-hover">
                <thead>
                    <tr>
                    	<th scope="col">流水号<span class="column-sorter"></span></th>                        
                        <th scope="col">商品名称<span class="column-sorter"></span></th>
                        <th scope="col">商品ID <span class="column-sorter"></span></th>
                        <th scope="col">商品数量<span class="column-sorter"></span></th>
                        <th scope="col">团购 <span class="column-sorter"></span></th>
                        <th scope="col">商品图片<span class="column-sorter"></span></th>
                        <th scope="col">状态 <span class="column-sorter"></span></th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${products}" var="productItem" varStatus="status">
                    <tr>
                    	<td>${status.index+1}</td>                        
                        <td>${productItem.name}</td>
                        <td>${productItem.id}</td>
                        <td>${productItem.count}</td>
                        <td><a href="${appPath}/shop/group_purchase/list_by_product.do?productId=${productItem.id}">查看</td>
                        <td><a href="${appPath}/shop/product/product_imgage_list.do?productId=${productItem.id}">查看</td>
                        <td><a href="">${productItem.status.title}<a></td>
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