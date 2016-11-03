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
                <th scope="col">主订单号<span class="column-sorter"></span></th>
                <th scope="col">订单时间<span class="column-sorter"></span></th>
                <th scope="col">订单状态<span class="column-sorter"></span></th>
                <th scope="col">支付类型<span class="column-sorter"></span></th>
                <th scope="col">支付状态<span class="column-sorter"></span></th>
                <th scope="col">金额<span class="column-sorter"></span></th>
                <th scope="col">购买数量<span class="column-sorter"></span></th>
                <th scope="col">收货人<span class="column-sorter"></span></th>
                <th scope="col">收货电话<span class="column-sorter"></span></th>
                <th scope="col">收货地址<span class="column-sorter"></span></th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${resLst.content}" var="obj" varStatus="status">
            <tr>
                <td>${obj.id}</td>
                <td>${obj.order.tradeNo}</td>                
                <td>${obj.orderDate}</td>
                <td>${obj.status.title}</td>
                <td>${obj.payTypeTitle}</td>
                <td>${obj.payTitle}</td>
                <td>${obj.amount}</td>
                <td>${obj.num}</td>
                <td>${obj.customerName}</td>
                <td>${obj.phone}</td>
                <td>${obj.address}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
   