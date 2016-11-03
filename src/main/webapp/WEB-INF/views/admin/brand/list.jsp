<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
 <div class="navbar">
    <div class="navbar-inner no-bg">
        <h4 class="title"><i class="fontello-icon-window"></i>品牌管理 
        	<small>
				<a href="${appPath}/shop/brand/add_logo.do?productId=${product.id}" class="btn btn-blue">添加品牌</a>	
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
            <th scope="col">ID <span class="column-sorter"></span></th>
            <th scope="col">品牌名 <span class="column-sorter"></span></th>
            <th scope="col">品牌logo<span class="column-sorter"></span></th>                        
            <th scope="col">操作 <span class="column-sorter"></span></th>
        </tr>
    </thead>
    <tbody>
     	<c:forEach items="${resLst.content}" var="obj" varStatus="status">
            <tr>
                <td>${status.index+1}</td>
            	<td>${obj.name}</td>
                <td><img src="${obj.logo}" class="thumbnail" width="96" height="96"></td>
                <td><a href="${appPath}/shop/brand/edit_logo.do?id=${obj.id}" target="_blank">修改<a>
                	<a href="${appPath}/shop/brand/del.do?id=${obj.id}">删除<a></td>
            </tr>
        </c:forEach>	
       
    </tbody>
</table>
            <!-- // DATATABLE - DTA -->
         