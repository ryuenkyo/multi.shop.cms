<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
 <div class="navbar">
    <div class="navbar-inner no-bg">
        <h4 class="title"><i class="fontello-icon-window"></i>商品管理 
        	<small>        	
        		<a href="${appPath}/shop/product/add.do" class="btn btn-blue">商品新增</a>
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
        	<th scope="col">流水号<span class="column-sorter"></span></th>                        
            <th scope="col">商品ID<span class="column-sorter"></span></th>
            <th scope="col">订单ID<span class="column-sorter"></span></th>

            <th scope="col">状态 <span class="column-sorter"></span></th>
            <th scope="col">操作 <span class="column-sorter"></span></th>
        </tr>
    </thead>
    <tbody>
    <c:forEach items="${resLst.content}" var="obj" varStatus="status">
        <tr>
        	<td>${resLst.number*resLst.size+status.index+1}</td>                        
            <td><lineTag:show content="${obj.name}" length="20"/></td>
            <td>${obj.price/100}/${obj.priceSrc/100}</td>
            <td><c:if test="${!empty obj.category}">
            	<a href="${appPath}/shop/product/list.do?catId=${obj.category.id}">${obj.category.name}</a>
            	</c:if>
            </td>
            <td><c:if test="${obj.tuan}">
            	<a href="${appPath}/shop/product/prices.do?id=${obj.id}">${obj.tuanNum}人团[价:${obj.priceTuan/100}元]</a>
            	</c:if>
            	<c:if test="${!obj.tuan}">否</c:if>
            </td>
            <td><a href="${appPath}/shop/product/product_image_list.do?productId=${obj.id}">查看</td>
            <td><a href="${appPath}/shop/product/product_notice_list.do?productId=${obj.id}">查看</td>
            <td><a href="">${obj.status.title}<a>
            	<c:if test="${obj.status=='stockout'}">
            		<a href="${appPath}/shop/product/stock.do?id=${obj.id}">进货</a>
                </c:if>
            </td>
            <td><a href="${appPath}/shop/product/stock.do?id=${obj.id}">进货</a>
            	<a href="${appPath}/shop/product/edit.do?id=${obj.id}">修改<a>
            	<a href="${appPath}/shop/product/del.do?id=${obj.id}">删除<a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
