<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<div class="navbar">
    <div class="navbar-inner no-bg">
        <h4 class="title"><i class="fontello-icon-window"></i>订单管理 
        	<small>        	
        		
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
                <th scope="col">订单号<span class="column-sorter"></span></th>
                <th scope="col">订单类型<span class="column-sorter"></span></th>
                <th scope="col">标题<span class="column-sorter"></span></th>
                <th scope="col">订单状态<span class="column-sorter"></span></th>
                <th scope="col">购买人<span class="column-sorter"></span></th>
                <th scope="col">订单时间<span class="column-sorter"></span></th>
                <th scope="col">订单金额<span class="column-sorter"></span></th>
                <th scope="col">支付状态<span class="column-sorter"></span></th>
                <th scope="col">订单信息<span class="column-sorter"></span></th>
                <th scope="col">操作<span class="column-sorter"></span></th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${resLst.content}" var="obj" varStatus="status">
            <tr>
                <td>${obj.id}</td>
                <td>${obj.tradeNo}</td>
                <td>
                	<c:if test="${obj.orderType == 'tuan'}">
	            		<a href="${appPath}/user/tuan/list.do?id=${obj.id}">
	            			${obj.orderType.title}
	            		</a>
	            	</c:if>
	            	<c:if test="${obj.orderType != 'tuan'}">${obj.orderType.title}
	            	</c:if>
            	</td>
                <td><lineTag:show content="${obj.title}" length="20"/></td>
                <td>${obj.status.title}
                	<c:if test="${obj.status=='pending'}"><a href="${appPath}/user/order/dispatch.do?id=${obj.id}">发货</a>
                	</c:if>
                </td>
                <td><a href="${appPath}/user/user_info/by_userid.do?userId=${obj.customer.id}">${obj.customerName}</a></td>
                <td>${obj.amount/100}</td>
                <td>${obj.orderTime}</td>
                <td>${obj.pay.title}</td>
                <td><a href="${appPath}/user/order_info/list.do?orderId=${obj.id}">查看</a></td>	                    
                <td><a href="${appPath}/user/order/edit.do?id=${obj.id}">修改</a>
                	<a href="${appPath}/user/order/del.do?id=${obj.id}">删除</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
   