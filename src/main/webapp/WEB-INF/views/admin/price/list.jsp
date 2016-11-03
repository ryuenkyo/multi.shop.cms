<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
 <div class="navbar">
    <div class="navbar-inner no-bg">
        <h4 class="title"><i class="fontello-icon-window"></i>价格管理 
        	<small>        	
        		<a href="${appPath}/shop/price/add_by_productId.do?productId=${product.id}" class="btn btn-blue">价格新增</a>
				<c:if test="${!empty product}">
                	<a href="${appPath}/shop/product/edit.do?id=${product.id}" class="btn btn-blue">${product.name}</a>               			                		
                </c:if>		
			</small>
		</h4>
    </div>		
</div>
<!-- // navbar -->
<div class="section-content item">
    <p></p>
</div>

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
       <c:forEach items="${resLst.content}" var="obj" varStatus="status">
            <tr>
                <td>${status.index+1}</td>
                <td>${obj.id}</td>
            	<td>${obj.title}</td>
            	<td>${obj.num}</td>
                <td>${obj.price}</td>
                <td>${obj.type.title}[${obj.tuanNum}]</td>
                <td><a href="${appPath}/shop/price/edit.do?id=${obj.id}&productId=${product.id}">修改<a>
                	<a href="${appPath}/shop/product/price_del.do?id=${obj.id}&productId=${product.id}">删除<a></td>
            </tr>
        </c:forEach>
    </tbody>
</table>
            <!-- // DATATABLE - DTA -->
            
<script type="text/javascript">
    $(document).ready(function(){
    	$(":radio").click(function(){
    		if($(this).attr('checked')=='checked'){
    			var url="${appPath}/shop/product/set_brand.do?id=${obj.id}&brandId="+$(this).val();    			
    			$.get(url,function(data,status){
    			    <!--alert("Data: " + data + "\nStatus: " + status);-->
    			});
    		}
    	  });
    	});
    </script>