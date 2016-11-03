<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
 <div class="navbar">
    <div class="navbar-inner no-bg">
        <h4 class="title"><i class="fontello-icon-window"></i>商品管理 
        	<small>        	
        		<a href="${appPath}/admin/product/add.do" class="btn btn-blue">商品新增</a>
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
            <th scope="col">商品名称<span class="column-sorter"></span></th>
			<th scope="col">价格<span class="column-sorter"></span></th>
            <th scope="col">分类<span class="column-sorter"></span></th>
         <!--     <th scope="col">是否团购<span class="column-sorter"></span></th>-->
            <th scope="col">数量 <span class="column-sorter"></span></th>
            <th scope="col">状态 <span class="column-sorter"></span></th>
            <!--<th scope="col">修改时间<span class="column-sorter"></span></th>-->
            
            <th scope="col">操作 <span class="column-sorter"></span></th>
        </tr>
    </thead>
    <tbody>
    <c:forEach items="${resLst.content}" var="obj" varStatus="status">
        <tr>
        	<td>${resLst.number*resLst.size+status.index+1}</td>                        
            <td>[${obj.id}]<lineTag:show content="${obj.name}" length="10"/></td>
            <td>${obj.price/100}元</td>
            <td>
            	<c:if test="${!empty obj.parentCat}">
            		<a href="${appPath}/admin/product/list.do?catId=${obj.parentCat.id}">${obj.parentCat.name}</a>
            	</c:if>
            	<c:if test="${!empty obj.category}">
            		/<a href="${appPath}/admin/product/list.do?catId=${obj.category.id}">${obj.category.name}</a>
            	</c:if>
            </td>
           <%-- <td><c:if test="${obj.tuan}">
            	<a href="${appPath}/admin/product/prices.do?id=${obj.id}">团[${obj.tuanNum}]</a>
            	</c:if>
            	<c:if test="${!obj.tuan}">否</c:if>
            </td>--%>
            <td>${obj.count}</td>
            <td>[${obj.status.title}]
            	<c:if test="${obj.status=='edit'}">
            		<a href="${appPath}/admin/product/onsell.do?id=${obj.id}">上架</a>
            	</c:if>
            	<c:if test="${obj.status=='onsell'}">
            		<a href="${appPath}/admin/product/undercarriage.do?id=${obj.id}">下架</a>
            		<a href="${appPath}/admin/product/stock.do?id=${obj.id}"></a>
            	</c:if>
            	<c:if test="${obj.count==0}">
            		<a href="${appPath}/admin/product/stock.do?id=${obj.id}"></a>
                </c:if>
            </td>
            
            <td> 
            	<a href="${appPath}/biz/image_file/relation_list.do?fkId=${obj.id}&imageType=product" class="btn">图片</a>
            	<a href="${appPath}/admin/product/stock.do?id=${obj.id}" class="btn">库存</a>             	
            	<a href="${appPath}/admin/mess/list.do?fkId=${obj.id}&type=product" class="btn">消息</a>
            	<a href="${appPath}/admin/product/edit.do?id=${obj.id}" class="btn">修改<a>
			</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
