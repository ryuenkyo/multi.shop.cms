<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
 <div class="navbar">
    <div class="navbar-inner no-bg">
        <h4 class="title"><i class="fontello-icon-window"></i>店铺管理 
        	<small>        	
        		<a href="${appPath}/shop/product/add.do" class="btn btn-blue">店铺新增</a>
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
            <th scope="col">编码 <span class="column-sorter"></span></th>
            <th scope="col">简称 <span class="column-sorter"></span></th>
            <th scope="col">名称<span class="column-sorter"></span></th>
            <th scope="col">商品 <span class="column-sorter"></span></th>
            <th scope="col">订单 <span class="column-sorter"></span></th>
            <th scope="col">状态 <span class="column-sorter"></span></th>
            <th scope="col">操作 <span class="column-sorter"></span></th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${resLst.content}" var="obj" varStatus="status">
            <tr>
                <td>${status.index+1}</td>
                <td>${obj.code}</td>
            	<td>${obj.shortName}</td>
                <td>${obj.name}</td>
                <td><a href="${appPath}/shop/product/list.do?shopId=${obj.id}">查看<a></td>
                <td><a href="">查看<a></td>
                <td><a href="">正常<a></td>
                <td><a href="${appPath}/shop/shop/item.do?id=${obj.id}">查看<a></td>
            </tr>
        </c:forEach>	
    </tbody>
</table>
            <!-- // DATATABLE - DTA -->
           